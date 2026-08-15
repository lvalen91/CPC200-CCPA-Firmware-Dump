# C2Air (Allwinner V821 / RISC-V) — Building a barebones custom firmware

**Goal:** a minimal "vanilla" adapter image carrying only what's needed to boot and present
**(a) ADB, (b) a working serial console, and — if a kernel rebuild is on the table — (c) a CDC-NCM
USB-network gadget.** No CarPlay stack, no vendor app, nothing else.

**Enabling premise (confirmed live, see [`c2air_v821_runtime_and_access.md`](c2air_v821_runtime_and_access.md) §7):**
secure boot is **not enforced** — plain `eGON.BT0` boot0, unsigned `ANDROID!` v2 kernel images (SHA1
integrity only, no AVB/RSA), `bootm` with no verification. Every stage is reflashable, and **FEL/xfel
is an unbrickable recovery floor**. Nothing here is signature-blocked.

---

## 0. TL;DR — the one thing that determines everything

There is **no open-source V821 Linux kernel.** AvaotaSBC (the org that makes the AvaotaF1, a V821
SBC) ships only its **rv32 toolchain** and hardware docs — its kernel/U-Boot repos target the *T527
(ARM)*, not the V821, and mainline Linux has **no `sun300iw1` support yet**. The only V821 kernel is
Allwinner's **closed Tina Linux 5.0 SDK (kernel 5.4.220)** — account-gated at `docs.aw-ol.com` or
obtainable as GPL source on request from the vendor (Carlinkit/Liaoyuan).

That splits the goals cleanly:

| Goal | Needs a kernel rebuild? | Blocked on Tina SDK? |
|---|---|---|
| **ADB over USB** | No | No — do it today |
| **Working serial console** (CDC-ACM `ttyGS0` over USB) | No | No — do it today |
| Fix the **physical 3-pad UART** (PL4/PL5) | kernel *patch*, not a rebuild | **No — 4-byte binary patch, located (§5a)** |
| **CDC-NCM** USB-network gadget | Yes | **Yes — the only SDK-gated goal** |

The hardware UART is mis-clocked in the vendor kernel, but the fix is a **4-byte data patch to the
kernel's `baud_set[]` table** (located in the dump — §5a), not a source rebuild, so it does **not**
need the Tina SDK. A working *serial console* is also already available over USB (ACM) without
touching the kernel at all. **NCM is the only goal that genuinely needs the gated SDK.**

**Recommendation:** ship **Tier A** now; the **UART fix is a stopgap-free binary patch** (§5a); only
**NCM** waits on the Tina SDK.

---

## 1. Build tiers

### Tier A — userland only, **no kernel rebuild, no SDK** (immediate)
Reuse the stock kernel + DTB; replace only the rootfs (mtd3 @ `0x680000`). Delivers **root ADB +
root ACM serial console over the one USB-C**. This is the existing `rootfs_acmadb` stripped to the
studs. NCM not available; physical UART stays mis-clocked (irrelevant — the ACM console replaces it).

### Tier B — kernel rebuild, **needs Tina 5.4.220 SDK** (the real "vanilla" build)
Rebuild the kernel + DTB to (1) fix the UART clock and (2) enable `CONFIG_USB_CONFIGFS_NCM`. Repack
the `ANDROID!` boot image (mtd1 @ `0x60000`), FEL-flash. Delivers **fixed physical UART + NCM +
ADB + ACM**, on a minimal rootfs. boot0/U-Boot reused as-is.

### Tier C — fully-open stack (SyterKit SPL + mainline kernel) — **not viable yet**
`YuzukiHD/SyterKit` is an open bare-metal SPL with real V821 support (`board/avaota-f1/`,
`src/drivers/chips/sun300iw1/` — DRAM, CCU, WDT, SID), so boot0 *can* be replaced open-source. But
there is **no open Linux kernel** to pair with it — you'd have to author the CCU/pinctrl/DTS port
yourself. Track the Nov-2025 `SUNXI_ANDES` LKML work; not there today.

---

## 2. Toolchain (confirmed)

- **`riscv32-linux-musl-` GCC 10.4.0** — the exact compiler the vendor kernel was built with
  (`gcc 10.4.0 … nds32le-linux-glibc-v5d`). It is a **32-bit RISC-V, musl** toolchain despite the
  legacy `nds32le` naming (Andes A27L2 + T-Head E907 are both RV32).
- Prebuilt: `AvaotaSBC/toolchains`, release `v821-toolchains`, asset `nds32le-linux-musl-v5d.tar.xz`
  (230 MB). Extracts to `nds32le-linux-musl-v5d/bin/riscv32-linux-musl-gcc`.
- **Do not use riscv64.** All build commands use `ARCH=riscv CROSS_COMPILE=riscv32-linux-musl-`.

Userland needs **no** toolchain — Tier A reuses stock riscv32 binaries (§4).

---

## 3. Boot chain — reuse stock (both tiers)

`boot0` (`eGON.BT0`, DRAM init) and U-Boot 2018.07 are fine and unsigned; leave them in place.
`bootcmd = run setargs_nor boot_normal` → `sunxi_flash read 0x82000000 boot; bootm` loads whatever
`ANDROID!` image sits in the `boot` partition — no verification, so a custom image just boots.
- Keep `bootdelay=0` (a UART adapter on RX makes U-Boot halt at its prompt otherwise — see runtime
  doc §2).
- **Open alternative / reference:** SyterKit's `src/drivers/chips/sun300iw1/sys-clk.c` +
  `include/.../sun300iw1/` is the authoritative open **CCU register map** for the UART fix in §5.

---

## 4. Barebones rootfs (Tier A deliverable)

**Key finding:** the stock rootfs already contains native **riscv32** binaries you can reuse verbatim —
no cross-compile needed for userland:
- `/bin/adbd` (58 KB, riscv32), `/bin/setusbconfig`, `/sbin/adb.sh`, `/bin/adb_shell`
- musl **busybox** (riscv32), musl loader `/lib/ld-musl-riscv32.so.1`

Minimal contents:
```
/init or /etc/inittab            # bring-up
/bin/busybox (+ symlinks)        # shell + coreutils
/bin/adbd, /bin/setusbconfig     # from stock rootfs
/lib/ld-musl-riscv32.so.1, /lib/libc.so
/dev/{console,null,tty,watchdog} # device nodes (see squashfs note)
one init.d hook (below)
```

### The gadget + console + watchdog init (extends stock `setusbconfig`)
```sh
#!/bin/sh
# 0) do NOT start the CarPlay app: pre-set the flag /etc/profile checks
touch /tmp/ly_boot

mount -t configfs none /sys/kernel/config 2>/dev/null
G=/sys/kernel/config/usb_gadget/g1
mkdir -p $G/strings/0x409 $G/configs/c.1/strings/0x409
echo 0x1f3a > $G/idVendor ; echo 0xace2 > $G/idProduct     # ACM+ADB composite
echo Allwinner > $G/strings/0x409/manufacturer ; echo C2Air-barebones > $G/strings/0x409/product
echo 0xEF > $G/bDeviceClass ; echo 0x02 > $G/bDeviceSubClass ; echo 0x01 > $G/bDeviceProtocol

mkdir -p $G/functions/ffs.adb        # adb   (needs CONFIG_USB_CONFIGFS_F_FS  — present)
mkdir -p $G/functions/acm.0          # serial(needs CONFIG_USB_CONFIGFS_ACM   — present)
# mkdir -p $G/functions/ncm.0        # NCM  (needs CONFIG_USB_CONFIGFS_NCM — Tier B only, ENOENT on stock)
ln -s $G/functions/acm.0  $G/configs/c.1/
ln -s $G/functions/ffs.adb $G/configs/c.1/

mkdir -p /dev/usb-ffs/adb
mount -t functionfs adb /dev/usb-ffs/adb
adbd &                               # AFTER functionfs mount, BEFORE UDC bind (ordering matters)
sleep 1
ls /sys/class/udc > $G/UDC           # 44100000.udc-controller → enumerate

setsid sh -c 'exec sh -i <>/dev/ttyGS0 >&0 2>&1' &   # root shell on the ACM console
( while : ; do echo 1 > /dev/watchdog; sleep 20; done ) &  # feed the un-stoppable 300s WDT
```
> **Watchdog:** the SoC watchdog is armed by boot0 and the sunxi-wdt driver **cannot stop it**
> (`watchdog did not stop!`). Any app-off image **must** feed `/dev/watchdog` or it resets every
> 5 min (runtime doc §4).

### Building the squashfs (avoid the macOS trap)
A lossy macOS `mksquashfs` drops `/dev/console` and mangles perms → kernel panic / broken bring-up.
Build **as root on Linux**, or portably declare nodes via a pseudo-file (works even non-root/macOS):
```
# pseudo.txt
/dev/console c 600 0 0 5 1
/dev/null    c 666 0 0 1 3
/dev/tty     c 666 0 0 5 0
/dev/watchdog c 600 0 0 10 130
mksquashfs rootfs rootfs.squashfs -comp xz -noappend -all-root -pf pseudo.txt
unsquashfs -ll rootfs.squashfs | grep console   # verify before flashing
```
Flash: `xfel spinor write 0x680000 rootfs.squashfs` (rootfs partition is `0x480000` long).

---

## 5. Kernel + DTB (Tier B — needs Tina SDK)

**Source:** Allwinner **Tina V821 SDK** (`tina-v821/`), kernel tree `kernel/linux-5.4-ansc/` (Andes
variant of 5.4). Obtain the `repo` manifest + credentials from the aw-ol portal (auth-gated: the
`sdk.aw-ol.com/git_repo/*/manifest.git` endpoints return HTTP 401 without a login) or a GPL request to
the vendor. Confirmed SDK internals (from AW FAQ3621):
- **Build:** `./build.sh autoconfig -o openwrt -i v821 -b perf2b_fastboot -n nor` then `./build.sh`.
  `perf2b_fastboot` + `-n nor` is the reference **NOR-boot V821 board** — the closest match to this
  device (NOR, `boot_type=3` fastboot); confirm by diffing its DTS against the extracted `kernel.dtb`.
- **Kernel defconfig (edit target for NCM, §5b):**
  `device/config/chips/v821/configs/perf2b_fastboot/linux-5.4-ansc/bsp_defconfig`
  (+ `bsp_recovery_defconfig` for recovery).
- **Toolchain:** the SDK's bundled **`riscv32-linux-gcc`** (x86_64-hosted, old glibc). It **needs the
  x86 `vsyscall` page** — under WSL/newer kernels it segfaults (`cc1: Segmentation fault`); fix is
  `vsyscall=emulate` on the host kernel cmdline. **Build in an x86_64 Ubuntu 20.04 environment**
  (native, or an `--arch x86_64` Lima VM on Apple Silicon), *not* aarch64+qemu-user — emulating a
  vsyscall-dependent x86 toolchain is exactly what produces those segfaults.

### 5a. UART fix — root cause settled AND an SDK-free binary patch located
`boot0.dtb` runs `pll_periph` at 3.072 GHz; UART0's parent lands at **192 MHz**
(`base_baud = 12000000` = 192 MHz ÷ 16). **192 MHz is the real hardware design** — SyterKit's
`board/avaota-f1/board.c` sets `.parent_clk = 192000000` for UART0 and divides it fine. The Linux
`sunxi-uart` driver (`sw_uart_check_baudset()`) simply **rejects** any parent outside a per-baud
range whose max is hard-coded to **120 MHz** (`uartclk 192000000 beyond rance[24000000,120000000]`),
so it bails before programming the divisor. The divisor math itself is correct:
`quot = uartclk/16/baud = 192e6/16/115200 = 104` → actual 115384 baud, **0.16 % error** — fine. So the
*only* thing stopping the physical console is the artificial range gate.

**The gate is static data, and it's been located in this unit's kernel.** The extracted kernel
(gunzip of the `boot` partition, 6.0 MB) contains the `baud_set[]` table at **decompressed offset
`0x3fc71c`**, 10 rows of `{baud, uartclk_min, uartclk_max}` LE-u32 triples, every `uartclk_max` =
`120000000` (`0x07270E00`):

```
0x3fc71c: 115200   24000000  120000000     0x3fc758: 1000000  31000000 120000000
0x3fc728: 230400   30000000  120000000     0x3fc764: 1500000  24000000 120000000
0x3fc734: 380400   24000000  120000000     0x3fc770: 1750000  54000000 120000000
0x3fc740: 460800   30000000  120000000     0x3fc77c: 2000000  31000000 120000000
0x3fc74c: 921600   30000000  120000000     0x3fc788: 2500000  40000000 120000000
```

**Patch:** raise the `uartclk_max` field(s) to ≥192 MHz. For a 115200 console, the single edit is at
decompressed offset **`0x3fc724`** (the 115200 row's `+8` field): `00 0E 27 07` → `00 C2 EB 0B`
(`120000000` → `200000000`). Patch all 10 `max` fields (each row `+8`) to cover every baud. This is
`.rodata`, no relocations. Workflow: gunzip the boot kernel → patch the field(s) → `gzip -n9` →
`mkbootimg` repack (§6, recomputes SHA1) → `xfel spinor write 0x060000`. **No SDK, no toolchain, no
source** — just the tools already in hand. (Two source-level alternatives if/when the SDK arrives:
widen the table in `sunxi-uart.c`, or reparent/divide UART0 in the `sun300iw1` CCU using SyterKit's
regmap.)

> **Why this doesn't extend to NCM:** enabling `f_ncm` requires the configfs function to be
> *registered at link time* (a defconfig symbol), not a data tweak — so NCM (§5b) still needs the
> source rebuild.

### 5b. NCM enable — one defconfig symbol
Live-confirmed on the stock kernel: `f_ncm` + `u_ether` **code is already compiled in** (56 symbols:
`ncm_wrap_ntb`, `ncm_bind`, `ncm_function_init`, `eth_start_xmit`, `ueth_change_mtu`…), but creating
`ncm.0` in configfs returns **ENOENT** while `acm.1` succeeds — i.e. `CONFIG_USB_CONFIGFS_NCM` is
**off**, so no `ncm` factory is registered. Enable and rebuild:
```
CONFIG_USB_LIBCOMPOSITE=y
CONFIG_USB_U_ETHER=y
CONFIG_USB_CONFIGFS_NCM=y      # the missing symbol
CONFIG_USB_CONFIGFS_F_FS=y     # adb (already on)
CONFIG_USB_CONFIGFS_ACM=y      # serial (already on)
```
Then the Tier-A init can uncomment the `ncm.0` function and `ln -s` it into `configs/c.1/`. Host side:
macOS/Linux see a CDC-NCM interface; assign IPs and you have USB networking (and SSH-over-USB).

### 5c. Build (Tina flow)
Edit `bsp_defconfig` (§5b) and the UART fix (§5a source route), then use the SDK's own build system
(not a bare `make` — Tina wraps toolchain setup, defconfig, DTB and image packing):
```
# in the x86_64 Ubuntu 20.04 env (see §5 toolchain note)
cd tina-v821
source build/envsetup.sh            # or ./build.sh as below
./build.sh autoconfig -o openwrt -i v821 -b perf2b_fastboot -n nor
./build.sh                          # full build → out/v821/…
#   kernel Image + dtb land under out/v821/kernel/build/ ; Tina also packs the boot image.
# For a barebones trim, pare the rootfs package list and (optionally) drop AIC8800 WiFi/BT, display,
# camera from the defconfig — keep MTD/squashfs, USB gadget (configfs/f_fs/acm/ncm/u_ether),
# sunxi-uart, sunxi-wdt, i2c (MFi), serial-RGB LED.
```
Then either let Tina produce the `boot.img`/`full_img` (flash via PhoenixSuit, §8) or hand the built
`Image`+`dtb` to the manual `mkbootimg` repack (§6) and `xfel`-flash the `boot` partition.

---

## 6. Repack the `ANDROID!` boot image (Tier B)

Header fields **measured from this unit's boot partition** (mtd1 @ `0x60000`):

| field | value |
|---|---|
| magic / header_version / page_size | `ANDROID!` / **2** / **2048** |
| name | `sun300i_riscv32` |
| kernel_addr | **0x80000000** (gzip payload, `1f8b0800`) |
| ramdisk | **none** (size 0) |
| tags_addr | **0x80000100** |
| dtb_addr | **0x80900000** (dtb_size ≈ 0xF5D9) |

```
gzip -n9 arch/riscv/boot/Image > kernel.gz
mkbootimg \
  --kernel kernel.gz \
  --dtb    <board>.dtb \
  --header_version 2 --pagesize 2048 \
  --base 0x80000000 --kernel_offset 0x0 \
  --ramdisk_offset 0x1000000 --tags_offset 0x100 --dtb_offset 0x900000 \
  --board sun300i_riscv32 \
  --cmdline "<copy verbatim from unpack_bootimg --format=info>" \
  -o boot.new.img
```
`mkbootimg` recomputes the SHA1 `id` automatically — it's an integrity hash, not a signature, so the
image boots. **Reuse the exact cmdline** from `unpack_bootimg --format=info boot.img` (it carries
`root=/dev/mtdblock3`, `partitions=…`, `console=ttyS0,115200`, `androidboot.*`, etc.). Keep **gzip**
(the loader expects the original compression).

---

## 7. Flashing & recovery — xfel (V821 confirmed)

xfel supports V821 explicitly (CPUID **`0x00188200`**; Basic/Reset/SID/JTAG/DDR/SPI-NOR all ✅).
Enter FEL: brief press of the hidden button + power-on (physical; can't be forced in software).

```
xfel version                                   # confirm link (usb 1f3a:efe8)
xfel spinor                                    # detect 16 MB NOR
xfel spinor read 0 0x1000000 full_backup.bin   # GOLDEN BACKUP FIRST — always
# write only what changed:
xfel spinor write 0x060000 boot.new.img        # Tier B (boot partition)
xfel spinor write 0x680000 rootfs.squashfs     # Tier A/B (rootfs partition)
# verify:
xfel spinor read 0x680000 <len> back.bin && cmp back.bin rootfs.squashfs
xfel reset
```
Reliability: large writes occasionally abort (`usb bulk send error`) — always **readback-verify and
retry**; use a good USB2 port/cable; re-enter FEL if it dropped. Never touch `0x000000` (boot0/uboot)
unless you mean to — a bad boot0 is the one thing that makes recovery harder (still FEL-recoverable
while BROM is intact).

Partition offsets (from `/proc/mtd`): `uboot 0x0` · `boot 0x60000` · `recovery 0x370000` ·
`rootfs 0x680000` · `customer 0xB00000` · env/`0xEA0000` · env-redund/`0xEB0000` · `private 0xEC0000`
· `logo 0xED0000` · `UDISK 0xF80000`.

---

## 8. Alternative install channel — unsigned `update.img` (no FEL)

The vendor `/sbin/update` accepts `/tmp/update.img` on **magic header + `ly_project_name` (`ly6239`)
match + `md5sum -c md5.txt`** — **no signature** (runtime doc §8). The package is an Allwinner
`IMAGEWTY` container (unpack/repack with **OpenixCard**/`imgRePacker`). Recipe: unpack a stock
`update.img`, swap in `boot.new.img` + `rootfs.squashfs`, regenerate `md5.txt`, repack preserving the
magic + `ly6239`, deliver on-device. Handy for pushing `boot`/`rootfs` without opening the case —
**but keep FEL as the backstop** and don't route boot0/MBR through it (that's your un-brick path).

---

## 9. Constraints that carry into any custom build

- **Watchdog:** un-stoppable 300 s; must be fed (§4).
- **MFi/CarPlay auth:** hardware coprocessor on `/dev/i2c-1` (0x10/0x11) bound to per-unit secrets
  (`carplay.key`, `raa.crt`) — a barebones OS can talk to it but **cannot clone auth** by editing the
  rootfs. Irrelevant if you're not doing CarPlay.
- **RAM:** 64 MB (≈58 MB usable) — keep the image lean.
- **No live RAM dump:** `/dev/mem`, `kcore` are off; use FEL `xfel ddr`+`read` for cold RAM.

## 10. What you still need to obtain
1. **Tina Linux 5.0 SDK / kernel 5.4.220 source** — the sole blocker for Tier B (UART + NCM). Register
   at `open.allwinnertech.com` / `docs.aw-ol.com`, or GPL-source request to Carlinkit/Liaoyuan.
2. **rv32 toolchain** — `AvaotaSBC/toolchains` `v821-toolchains` (have the URL).
3. **`unpack_bootimg`/`mkbootimg`** (osm0sis fork), **xfel** (build from `xboot/xfel`), **OpenixCard**
   — all buildable on macOS/Linux.

_Sources: this repo's dump + live device; `xboot/xfel` (V821 CPUID 0x00188200); `YuzukiHD/SyterKit`
`board/avaota-f1` + `src/drivers/chips/sun300iw1`; `AvaotaSBC/toolchains` `v821-toolchains`; AOSP
boot-image-header v2. Cross-references: [`c2air_v821_runtime_and_access.md`](c2air_v821_runtime_and_access.md)
§§3–8, [`../../hardware/c2air_v821_spec.md`](../../hardware/c2air_v821_spec.md)._
