#!/bin/sh
# Cross-build busybox + mtd-utils for the C2Air (Allwinner V821, riscv32, musl).
#
# Build host: Lima VM `ccpa-build` — Alpine Linux v3.23, aarch64.
#   macOS is not usable directly: busybox's Kbuild and mtd-utils' autotools both
#   want a Linux userland. The *compiler* is fine on macOS (zig cross-compiles
#   riscv32-musl there), it's the build systems that are not.
#
# Every workaround below was found the hard way; none of it is optional.
set -e

# ---------------------------------------------------------------------------
# 0. Toolchain
# ---------------------------------------------------------------------------
# The VM had zig 0.13.0 preinstalled at /usr/local/bin/zig. It CANNOT build the
# musl CRT for riscv32:
#     error: unable to build musl CRT file: SubCompilationFailed
#     note: stat file '.../musl/crt/riscv32/crti.s' failed: FileNotFound
# Alpine 3.23 packages 0.15.2, which works. Note /usr/local/bin/zig shadows the
# packaged one on PATH, so the wrapper must call /usr/bin/zig by absolute path.
#
#   sudo apk add zig autoconf automake libtool pkgconf bison flex linux-headers llvm20
#
# llvm20 is needed only for llvm-strip: neither Alpine's native `strip` nor
# `zig objcopy --strip-all` can handle a riscv32 ELF (the latter reports
# "error: unimplemented").

ZIG=/usr/bin/zig
STRIP=/usr/lib/llvm20/bin/llvm-strip
JOBS=$(nproc)

cat > "$HOME/zigcc-rv32" <<'EOF'
#!/bin/sh
# zig cc wrapper for riscv32-linux-musl.
#  - busybox compiles with -Wp,-MD,<file> (depfile via the preprocessor), which
#    zig mishandles: "applets/applets.c:1:1: error: FileNotFound". Translate it
#    into zig's own -MD -MF <file>.
#  - busybox's scripts/trylink probes a set of GNU ld options that zig's linker
#    rejects outright ("error: unsupported linker arg: --warn-common", then
#    "-Map"). They are cosmetic (link map / section sorting), so drop them.
n=$#; i=0
while [ $i -lt $n ]; do
  a=$1; shift
  case "$a" in
    -Wp,-MD,*)        set -- "$@" -MD -MF "${a#-Wp,-MD,}" ;;
    -Wl,--warn-common|-Wl,-Map,*|-Wl,--verbose|-Wl,--sort-common|-Wl,--sort-section,*) : ;;
    -finline-limit=*|-falign-jumps=*|-falign-labels=*|-static-libgcc) : ;;
    *)                set -- "$@" "$a" ;;
  esac
  i=$((i+1))
done
exec /usr/bin/zig cc -target riscv32-linux-musl \
     -Wno-unused-command-line-argument -Wno-ignored-optimization-argument "$@"
EOF
chmod +x "$HOME/zigcc-rv32"
CC="$HOME/zigcc-rv32"     # MUST be absolute: scripts/trylink does not expand ~

# ---------------------------------------------------------------------------
# 1. busybox 1.37.0  (device had 1.33.2, Sept 2021)
# ---------------------------------------------------------------------------
cd "$HOME/busybox-1.37.0" 2>/dev/null || { echo "fetch busybox-1.37.0 first"; exit 1; }
cd "$HOME" && rm -rf busybox-rv32 && cp -a busybox-1.37.0 busybox-rv32 && cd busybox-rv32
make distclean >/dev/null
make defconfig >/dev/null

# Enable the applets the vendor build omitted. Several of these cost real
# debugging time on the box: no stty (had to write a C tool to read the UART
# termios), no timeout (silently invalidated a test), no stat (-c%s returned 0
# for every file), no xxd, no microcom.
for s in CONFIG_STATIC CONFIG_STTY CONFIG_TIMEOUT CONFIG_XXD CONFIG_STAT CONFIG_NC \
         CONFIG_WGET CONFIG_TAR CONFIG_XARGS CONFIG_BASE64 CONFIG_MICROCOM CONFIG_IP \
         CONFIG_ROUTE CONFIG_OD CONFIG_PKILL CONFIG_TELNET CONFIG_TELNETD CONFIG_TFTP \
         CONFIG_FEATURE_STAT_FORMAT; do
  sed -i "s|^# $s is not set|$s=y|" .config
  grep -q "^$s=y" .config || echo "$s=y" >> .config
done

# defconfig turns on x86 SHA-NI acceleration unconditionally; on riscv32 this is
#   libbb/hash_md5_sha.c:1316: use of undeclared identifier 'sha1_process_block64_shaNI'
sed -i 's|^CONFIG_SHA1_HWACCEL=y|# CONFIG_SHA1_HWACCEL is not set|'     .config
sed -i 's|^CONFIG_SHA256_HWACCEL=y|# CONFIG_SHA256_HWACCEL is not set|' .config

# hwclock uses SYS_settimeofday, which riscv32 does not define (new ports only
# have clock_settime):  util-linux/hwclock.c:143: undeclared 'SYS_settimeofday'
sed -i 's|^CONFIG_HWCLOCK=y|# CONFIG_HWCLOCK is not set|' .config

# tc(8) does not build against modern kernel headers
sed -i 's|^CONFIG_TC=y|# CONFIG_TC is not set|' .config

yes "" | make oldconfig >/dev/null
make -j"$JOBS" CC="$CC" HOSTCC=gcc SKIP_STRIP=y
mkdir -p "$HOME/out"
cp busybox_unstripped "$HOME/out/busybox"
"$STRIP" --strip-all "$HOME/out/busybox"
echo "busybox: $(stat -c%s "$HOME/out/busybox") B, $( ./busybox --list 2>/dev/null | wc -l ) applets configured"

# ---------------------------------------------------------------------------
# 2. mtd-utils 2.2.1 — for flashcp/flash_erase/mtdinfo/mtd_debug
# ---------------------------------------------------------------------------
# The point of this is on-device flashing: `flashcp` erases + writes + verifies
# an MTD partition from Linux, which removes an FEL cycle (physical hidden-button
# power-on) from every rootfs iteration.
#
# jffs2/ubifs support is disabled so we don't need target zlib/lzo/uuid. The box
# already has a working mkfs.jffs2 anyway.
cd "$HOME" && rm -rf mtd-utils-build && mkdir mtd-utils-build && cd mtd-utils-build
wget -q https://infraroot.at/pub/mtd/mtd-utils-2.2.1.tar.bz2
tar xjf mtd-utils-2.2.1.tar.bz2 && cd mtd-utils-2.2.1
./configure --host=riscv32-unknown-linux-musl CC="$CC" \
            --without-jffs --without-ubifs --without-xattr --disable-unit-tests \
            LDFLAGS="-static"
make -j"$JOBS"
for t in flashcp flash_erase mtdinfo mtd_debug; do
  cp "$t" "$HOME/out/$t"
  "$STRIP" --strip-all "$HOME/out/$t"
  printf '%-12s %8d B\n' "$t" "$(stat -c%s "$HOME/out/$t")"
done

# ---------------------------------------------------------------------------
# 3. Verification on the device (from the macOS host)
# ---------------------------------------------------------------------------
# busybox is a multi-call binary: invoking it under any other name gives
# "<name>: applet not found". Push it AS busybox, or call `busybox <applet>`.
#
#   adb push out/busybox /tmp/busybox && adb shell chmod 755 /tmp/busybox
#   adb shell /tmp/busybox --list | wc -l          -> 401
#   adb shell /tmp/busybox stty -F /dev/ttyS0 -a   -> speed 115200 baud
#   adb shell /tmp/busybox stat -c%s /bin/busybox  -> 267671
#
# flashcp was proven against /dev/mtd6 (logo, 704 K, unused and holding only a
# bare jffs2 header — the safe target on this box). NEVER flashcp the rootfs you
# are currently executing from: squashfs pages are read on demand.
#
#   adb shell /tmp/flashcp -v /tmp/payload.bin /dev/mtd6
#     Erasing blocks: 1/1 (100%) / Writing data: 32k/32k / Verifying data: 32k/32k
#   -> readback md5 matched exactly
