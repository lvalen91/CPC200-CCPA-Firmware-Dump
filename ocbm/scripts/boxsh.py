#!/usr/bin/env python3
"""boxsh.py — run a command on the adapter over its busybox telnetd, non-interactively.

WHY NOT SSH: the box's dropbear is old (SHA-1 kex, ssh-rsa host key) and the root password is
blank. Modern OpenSSH refuses the algorithms by default and cannot be fed an empty password
without sshpass, so every call turns into a prompt. `busybox telnetd -l /bin/sh -p 23` hands
out a root shell with no login at all, over plain TCP — which is the one channel that works
identically on a stock unit, a half-stripped unit, and the finished NCM base.

WHY NOT `nc`: telnetd still speaks IAC option negotiation on connect and echoes the pty. This
client answers the negotiation, turns the echo off, and brackets the command with markers
assembled at runtime (`__BE""GIN__`) so the shell's echo of the command line can never be
mistaken for the marker itself.

Usage:
    boxsh.py [--host H] [--port 23] [--timeout S] run 'shell command'
    boxsh.py [--host H] put LOCAL REMOTE [--mode 755]      # base64 over the shell, md5-verified
    boxsh.py [--host H] get REMOTE LOCAL                   # base64 back, md5-verified
    boxsh.py [--host H] probe                              # 0 if a shell answers

Exit status is the remote command's status (run), or 1 on transport failure.
"""
import argparse
import base64
import hashlib
import os
import re
import socket
import sys
import time

IAC, DONT, DO, WONT, WILL, SB, SE = 255, 254, 253, 252, 251, 250, 240


class Box:
    def __init__(self, host, port=23, timeout=20.0):
        self.host, self.port, self.timeout = host, port, timeout
        self.sock = None
        self.buf = b""

    # -- transport ----------------------------------------------------------------
    def connect(self):
        self.sock = socket.create_connection((self.host, self.port), timeout=self.timeout)
        self.sock.settimeout(self.timeout)
        # Refuse every option; busybox does not need any of them for a raw shell.
        self._pump(0.6)
        # PS2 matters as much as PS1: without it every continuation line of a multi-line
        # command comes back prefixed with "> " and lands in the captured output.
        self.send("stty -echo 2>/dev/null; export PS1=; export PS2=; unset PROMPT_COMMAND\n")
        self._pump(0.4)
        return self

    def close(self):
        if self.sock:
            try:
                self.send("exit\n")
            except OSError:
                pass
            self.sock.close()
            self.sock = None

    def send(self, s):
        self.sock.sendall(s.encode() if isinstance(s, str) else s)

    def _pump(self, seconds):
        """Read whatever is pending, answering IAC negotiation, for `seconds`."""
        end = time.monotonic() + seconds
        self.sock.settimeout(0.2)
        try:
            while time.monotonic() < end:
                try:
                    chunk = self.sock.recv(65536)
                except socket.timeout:
                    continue
                if not chunk:
                    break
                self.buf += self._negotiate(chunk)
        finally:
            self.sock.settimeout(self.timeout)

    def _negotiate(self, data):
        """Strip IAC sequences, replying WONT/DONT to every WILL/DO."""
        out, i, reply = bytearray(), 0, bytearray()
        while i < len(data):
            b = data[i]
            if b != IAC:
                out.append(b); i += 1; continue
            if i + 1 >= len(data):
                break
            cmd = data[i + 1]
            if cmd in (DO, DONT, WILL, WONT):
                if i + 2 >= len(data):
                    break
                opt = data[i + 2]
                reply += bytes([IAC, WONT if cmd in (DO, DONT) else DONT, opt])
                i += 3
            elif cmd == SB:                      # skip subnegotiation up to IAC SE
                j = data.find(bytes([IAC, SE]), i)
                i = len(data) if j < 0 else j + 2
            elif cmd == IAC:
                out.append(IAC); i += 2
            else:
                i += 2
        if reply:
            self.sock.sendall(bytes(reply))
        return bytes(out)

    # -- command execution --------------------------------------------------------
    def run(self, cmd, timeout=None):
        """Return (rc, output). Markers are split so the pty echo cannot match them."""
        timeout = timeout or self.timeout
        tok = "%06x" % (os.getpid() & 0xFFFFFF)
        begin, end = "B%sB" % tok, "E%sE" % tok
        self.buf = b""
        # The ""-splits below are literal in what we SEND, so an echoed command line reads
        # `echo B12"" 34B` while the real output reads `B1234B`.
        script = (
            'echo "%s""%s"\n' % (begin[:4], begin[4:])
            + cmd.rstrip("\n") + "\n"
            + '__rc=$?; echo "%s""%s"$__rc\n' % (end[:4], end[4:])
        )
        self.send(script)
        pat = re.compile(re.escape(end).encode() + rb"(-?\d+)")
        deadline = time.monotonic() + timeout
        while time.monotonic() < deadline:
            m = pat.search(self.buf)
            if m:
                rc = int(m.group(1))
                body = self.buf[: m.start()]
                k = body.find(begin.encode())
                body = body[k + len(begin):] if k >= 0 else body
                text = body.decode("utf-8", "replace")
                # drop the newline that follows the begin marker and any trailing prompt junk
                return rc, text.lstrip("\r\n")
            self._pump(0.25)
        raise TimeoutError("no end marker after %ss; partial: %r" % (timeout, self.buf[-400:]))

    # -- file transfer ------------------------------------------------------------
    def put(self, local, remote, mode="755", chunk=2048):
        data = open(local, "rb").read()
        md5 = hashlib.md5(data).hexdigest()
        b64 = base64.b64encode(data).decode()
        self.run("rm -f %s.b64 %s.new" % (remote, remote))
        for i in range(0, len(b64), chunk):
            rc, out = self.run("printf %%s '%s' >> %s.b64" % (b64[i:i + chunk], remote))
            if rc != 0:
                raise IOError("chunk %d failed: %s" % (i // chunk, out))
        rc, out = self.run(
            "base64 -d %s.b64 > %s.new 2>/dev/null || uudecode -o %s.new %s.b64; "
            "rm -f %s.b64; md5sum %s.new" % (remote, remote, remote, remote, remote, remote))
        if md5 not in out:
            raise IOError("md5 mismatch for %s: local %s, box said %r" % (remote, md5, out))
        rc, out = self.run("chmod %s %s.new && mv %s.new %s && echo OK" % (mode, remote, remote, remote))
        if "OK" not in out:
            raise IOError("install of %s failed: %s" % (remote, out))
        return md5

    def get(self, remote, local, chunk_kb=64):
        """Pull a file as base64 over the shell.

        dd is driven BLOCK-aligned (`bs=<chunk> skip=<index> count=1`), never `bs=1`: on this
        i.MX6UL a byte-at-a-time dd of a multi-megabyte file takes minutes per chunk. For the
        16 MB NOR images prefer the `nc` path in ncm_base_install.sh; this is the fallback.
        """
        rc, out = self.run("md5sum %s | cut -d' ' -f1; wc -c < %s" % (remote, remote))
        lines = [l.strip() for l in out.split("\n") if l.strip()]
        md5, size = lines[0], int(lines[1])
        step = chunk_kb * 1024
        nblocks = (size + step - 1) // step
        got = bytearray()
        for i in range(nblocks):
            rc, out = self.run(
                "dd if=%s bs=%d skip=%d count=1 2>/dev/null | base64" % (remote, step, i),
                timeout=max(self.timeout, 120))
            got += base64.b64decode("".join(out.split()))
        got = bytes(got[:size])
        if hashlib.md5(got).hexdigest() != md5:
            raise IOError("md5 mismatch pulling %s (got %d of %d bytes)" % (remote, len(got), size))
        open(local, "wb").write(got)
        return md5


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--host", default=os.environ.get("BOX_HOST", "192.168.50.2"))
    ap.add_argument("--port", type=int, default=23)
    ap.add_argument("--timeout", type=float, default=20.0)
    ap.add_argument("--mode", default="755")
    ap.add_argument("action", choices=["run", "put", "get", "probe"])
    ap.add_argument("args", nargs="*")
    a = ap.parse_args()

    try:
        box = Box(a.host, a.port, a.timeout).connect()
    except OSError as e:
        print("boxsh: cannot connect to %s:%d — %s" % (a.host, a.port, e), file=sys.stderr)
        return 1
    try:
        if a.action == "probe":
            rc, out = box.run("echo alive; uname -srm")
            sys.stdout.write(out)
            return rc
        if a.action == "run":
            rc, out = box.run(" ".join(a.args))
            sys.stdout.write(out)
            return rc
        if a.action == "put":
            print(box.put(a.args[0], a.args[1], a.mode))
            return 0
        if a.action == "get":
            print(box.get(a.args[0], a.args[1]))
            return 0
    except (OSError, TimeoutError) as e:
        print("boxsh: %s" % e, file=sys.stderr)
        return 1
    finally:
        box.close()
    return 1


if __name__ == "__main__":
    sys.exit(main())
