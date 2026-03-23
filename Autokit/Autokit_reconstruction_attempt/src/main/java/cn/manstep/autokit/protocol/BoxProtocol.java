/**
 * BoxProtocol.java
 *
 * Core USB protocol handler for AutoKit box communication (~2613 lines originally).
 * Manages the full protocol lifecycle:
 *   - USB packet framing (16-byte header + variable payload)
 *   - Read thread for continuous USB polling
 *   - Command dispatch (CMD_OPEN, CMD_PLUG, CMD_PHASE, CMD_PLUGOUT, CMD_VIDEO_FRAME, etc.)
 *   - Audio subsystem initialization and mic recording thread
 *   - File upload/download to/from the box
 *   - AES encryption for data transfer (AES/CFB/NoPadding)
 *   - Heartbeat mechanism (every 2 seconds)
 *   - CarPlay/AndroidAuto/HiCar mode negotiation
 *   - Bluetooth pairing and WiFi configuration
 *
 * Packet header format (class PacketHeader / inner class 'i'):
 *   bytes 0-3:   magic (0x55AA5A5B = normal, 0x55AA5A5A = legacy)
 *   bytes 4-7:   data length (int)
 *   bytes 8-11:  command type (int)
 *   bytes 12-15: checksum (command ^ 0xFFFFFFFF)
 *
 * Command types (CMD_*):
 *   1  = CMD_OPEN (negotiate video params)
 *   2  = CMD_PLUG (phone connected)
 *   3  = CMD_PHASE (connection phase change)
 *   4  = CMD_PLUGOUT (phone disconnected)
 *   5  = CMD_TOUCH (touch event)
 *   6  = CMD_VIDEO_FRAME (H.264 video data)
 *   7  = CMD_AUDIO_FRAME (audio PCM data)
 *   8  = CMD_CARPLAY_CMD (CarPlay control command)
 *   9  = CMD_CARPLAY_LOGO_TYPE
 *   10 = CMD_BLUETOOTH_ADDR
 *   11 = CMD_CARPLAY_MODE_CHANGE
 *   13 = CMD_BOX_BLUETOOTH_NAME
 *   14 = CMD_BOX_WIFI_NAME
 *   15 = CMD_MANUAL_DISCONNECT
 *   17 = CMD_AUTO_CONN_BY_BT
 *   18 = CMD_BLUETOOTH_PAIR_LIST
 *   19 = CMD_BLUETOOTH_ONLINE_LIST
 *   20 = CMD_CAR_MANUFACTURER_INFO
 *   22 = CMD_CAMERA_DATA
 *   23 = CMD_MULTI_TOUCH
 *   24 = CMD_CONNECTION_URL
 *   25 = CMD_BOX_INFO / CMD_SEND_INFO
 *   42 = CMD_DASHBOARD_DATA
 *   43 = CMD_CONNECTION_PIN_CODE
 *   119 = CMD_DEBUG_CMD
 *   136 = CMD_DEBUG_TEST
 *   153 = CMD_FILE_TRANSFER
 *   160 = CMD_APP_INFO
 *   161 = CMD_APP_LOG_GET
 *   162 = CMD_SET_BOX_CONFIG
 *   170 = CMD_HEARTBEAT
 *   177 = CMD_UPDATE_PROGRESS
 *   187 = CMD_UPDATE_STATUS
 *   204 = CMD_BOX_SOFTWARE_VERSION
 *   206 = CMD_BOX_REBOOT
 *   240 = CMD_ENABLE_CRYPT
 *
 * Original: BoxInterface/f.java
 */
package cn.manstep.autokit.protocol;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import cn.manstep.phonemirrorBox.MainActivity;
import cn.manstep.phonemirrorBox.b0;
import cn.manstep.phonemirrorBox.m;
import cn.manstep.phonemirrorBox.p;
import cn.manstep.phonemirrorBox.u;
import cn.manstep.phonemirrorBox.util.c0;
import cn.manstep.phonemirrorBox.util.n;
import cn.manstep.phonemirrorBox.util.s;
import cn.manstep.phonemirrorBox.util.z;
import cn.manstep.phonemirrorBox.x;
import com.yalantis.ucrop.BuildConfig;
import com.yalantis.ucrop.view.CropImageView;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.TimerTask;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.json.JSONException;
import org.json.JSONObject;

public class BoxProtocol {

    /* ==================== Static fields ==================== */

    /** Phone type code. was: 'N' */
    private static int phoneType /* was: 'N' */ = 2;

    /** Whether a phone is currently connected. was: 'O' */
    public static boolean isPhoneConnected /* was: 'O' */;

    /** WiFi support advertised by box. was: 'P' */
    public static boolean isWifiSupported /* was: 'P' */;

    /** Auto-connect support advertised by box. was: 'Q' */
    public static boolean isAutoConnectSupported /* was: 'Q' */;

    /** Whether the connected device is a WiFi device. was: 'R' */
    public static boolean isWifiDevice /* was: 'R' */;

    /* ==================== Instance fields ==================== */

    /** Audio frame queue. was: 'A' */
    private AudioFrameQueue audioQueue /* was: 'A' */;

    /** List of audio callback listeners. was: 'B' */
    private List<cn.manstep.phonemirrorBox.BoxInterface.a> audioListeners /* was: 'B' */;

    /** Thread exit flag. was: 'C' */
    private boolean threadExit /* was: 'C' */;

    /** Bound width for video. was: 'D' */
    private int boundWidth /* was: 'D' */;

    /** Bound height for video. was: 'E' */
    private int boundHeight /* was: 'E' */;

    /** DPI value. was: 'F' */
    private int dpi /* was: 'F' */;

    /** Video width. was: 'f1450d' (renamed from 'd') */
    private int videoWidth /* was: 'f1450d' */;

    /** Video height. was: 'e' */
    private int videoHeight /* was: 'e' */;

    /** Phone mode strategy. was: 'o' */
    private cn.manstep.phonemirrorBox.q0.g phoneModeStrategy /* was: 'o' */;

    /** Open parameters for video negotiation. was: 'q' */
    private OpenParams openParams /* was: 'q' */;

    /** "Opened" state flag. was: 'r' */
    private z<Boolean> openedFlag /* was: 'r' */;

    /** Read thread. was: 's' */
    private Thread readThread /* was: 's' */;

    /** Check-open thread. was: 't' */
    private Thread checkOpenThread /* was: 't' */;

    /** iOS audio thread. was: 'u' */
    private Thread iosAudioThread /* was: 'u' */;

    /** Heartbeat scheduler. was: 'v' */
    private ScheduledExecutorService heartbeatScheduler /* was: 'v' */;

    /** Audio record thread. was: 'w' */
    private Thread audioRecordThread /* was: 'w' */;

    /** Is mic recording. was: 'x' */
    private boolean isMicRecording /* was: 'x' */;

    /** Context reference. was: 'y' */
    public WeakReference<Context> contextRef /* was: 'y' */;

    /** Video decoder. was: 'z' */
    public cn.manstep.phonemirrorBox.BoxInterface.b videoDecoder /* was: 'z' */;

    /* --- Additional state fields --- */
    private boolean enableVideo /* was: 'a' */ = true;
    private int encoderType /* was: 'f1448b' */ = 2;
    private int offScreen /* was: 'f1449c' */ = 0;
    public boolean boxMicDetected /* was: 'f' */ = false;
    public boolean canAutoConnect /* was: 'g' */ = true;
    private boolean bluetoothConnected /* was: 'h' */ = false;
    private String connectionUrl /* was: 'i' */ = BuildConfig.FLAVOR;
    private String btOnlineList /* was: 'j' */ = BuildConfig.FLAVOR;
    private String btName /* was: 'k' */ = BuildConfig.FLAVOR;
    private String wifiName /* was: 'l' */ = BuildConfig.FLAVOR;
    private boolean encryptionEnabled /* was: 'm' */ = false;
    private int aesKey /* was: 'n' */ = 0;
    private boolean assetsUploaded /* was: 'p' */ = false;
    private int callAudioPlayerIndex /* was: 'G' */ = -1;
    private boolean muteAudioDuringCall /* was: 'H' */ = false;
    private final AtomicBoolean sendingOpen /* was: 'I' */ = new AtomicBoolean(false);
    private boolean isUnauthorized /* was: 'J' */ = false;
    private byte[] cameraPreviewData /* was: 'K' */ = new byte[20];
    private int btPairedCount /* was: 'L' */ = 0;
    private boolean firstPlugEvent /* was: 'M' */ = true;

    /* ==================== Inner class: ReadThreadRunnable ==================== */

    /** USB read thread. was: inner class 'a' (Runnable) */
    class ReadThreadRunnable implements Runnable {
        ReadThreadRunnable() {
        }

        @Override
        public void run() {
            BoxProtocol.this.readThreadRun(); /* was: a0() */
        }
    }

    /* ==================== Inner class: IosAudioRunnable ==================== */

    /** iOS audio dispatch thread. was: inner class 'b' (Runnable) */
    class IosAudioRunnable implements Runnable {
        IosAudioRunnable() {
        }

        @Override
        public void run() {
            s.e("iosAudioThread_ id=" + Thread.currentThread().getId());
            Process.setThreadPriority(-19);
            while (!BoxProtocol.this.threadExit) {
                try {
                    Packet packet /* was: lVarA */ = BoxProtocol.this.audioQueue.dequeue(); /* was: A.a() */
                    if (packet != null) {
                        Iterator it = BoxProtocol.this.audioListeners.iterator();
                        while (it.hasNext()) {
                            ((cn.manstep.phonemirrorBox.BoxInterface.a) it.next()).t(packet);
                        }
                    }
                } catch (InterruptedException e) {
                    s.e(Log.getStackTraceString(e));
                    return;
                }
            }
        }
    }

    /* ==================== Inner class: AudioRecordRunnable ==================== */

    /** Audio recording thread. was: inner class 'c' (Runnable) */
    class AudioRecordRunnable implements Runnable {
        AudioRecordRunnable() {
        }

        @Override
        public void run() {
            s.e("audioRecordThread_ id=" + Thread.currentThread().getId());
            Process.setThreadPriority(-19);
            while (!BoxProtocol.this.threadExit) {
                synchronized (cn.manstep.phonemirrorBox.BoxInterface.a.h) {
                    if (!BoxProtocol.this.isMicRecording) {
                        try {
                            cn.manstep.phonemirrorBox.BoxInterface.a.h.wait();
                            Thread.sleep(p.G);
                        } catch (InterruptedException e) {
                            s.e(Log.getStackTraceString(e));
                        }
                    }
                }
                if (BoxProtocol.this.threadExit) {
                    break;
                }
                if (BoxProtocol.this.isMicRecording && cn.manstep.phonemirrorBox.BoxInterface.a.h.c() != 0) {
                    cn.manstep.phonemirrorBox.BoxInterface.a.h.i();
                    Packet packet /* was: lVar */ = BoxProtocol.this.new Packet(cn.manstep.phonemirrorBox.BoxInterface.a.h.c() + 12);
                    packet.header.commandType /* was: a.f1463c */ = 7;
                    packet.ensureCapacity(); /* was: c() */
                    ByteBuffer buf /* was: byteBufferD */ = packet.getDataBuffer(); /* was: d() */
                    buf.putInt(0, cn.manstep.phonemirrorBox.BoxInterface.a.i);
                    buf.putFloat(4, CropImageView.DEFAULT_ASPECT_RATIO);
                    buf.putInt(8, 3);
                    while (!BoxProtocol.this.threadExit && BoxProtocol.this.isMicRecording) {
                        if (cn.manstep.phonemirrorBox.BoxInterface.a.h.f(packet.getDataArray() /* was: e() */, 12, packet.getDataLength() /* was: f() */ - 12)) {
                            BoxProtocol.this.writePacket(packet); /* was: R0(lVar) */
                        } else {
                            try {
                                Thread.sleep(10L);
                            } catch (InterruptedException e2) {
                                s.e(Log.getStackTraceString(e2));
                            }
                        }
                    }
                    cn.manstep.phonemirrorBox.BoxInterface.a.h.k();
                }
            }
            s.e("audioRecordThread_ Exit");
        }
    }

    /* ==================== Inner class: CheckOpenRunnable ==================== */

    /** Check-open thread. was: inner class 'd' (Runnable) */
    class CheckOpenRunnable implements Runnable {

        /** Timer task for periodic open check. was: inner class 'd.a' */
        class CheckOpenTimerTask extends TimerTask {

            final /* synthetic */ ScheduledExecutorService scheduler /* was: 'f1455b' */;

            CheckOpenTimerTask(ScheduledExecutorService scheduledExecutorService) {
                this.scheduler = scheduledExecutorService;
            }

            @Override
            public void run() {
                if (BoxProtocol.this.threadExit) {
                    s.c("checkOpenThread_ bThreadExit ");
                    this.scheduler.shutdown();
                    return;
                }
                if (((Boolean) BoxProtocol.this.openedFlag.a()).booleanValue()) {
                    s.c("bOpened_ = true , cancel timer");
                    BoxProtocol.this.sendConfig(); /* was: y0() */
                    this.scheduler.shutdown();
                    BoxProtocol.this.checkOpenThread = null;
                    return;
                }
                s.c("bOpened_ = false");
                boolean result /* was: zX0 */ = BoxProtocol.this.sendOpen(); /* was: X0() */
                try {
                    Thread.sleep(1000L);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                s.c("Send g_Open  = " + result + " !!!");
            }
        }

        CheckOpenRunnable() {
        }

        @Override
        public void run() {
            cn.manstep.phonemirrorBox.h0.b threadFactory /* was: bVar */ = new cn.manstep.phonemirrorBox.h0.b();
            threadFactory.f("send_g_open");
            ScheduledThreadPoolExecutor executor /* was: scheduledThreadPoolExecutor */ = new ScheduledThreadPoolExecutor(1, threadFactory.b());
            executor.scheduleAtFixedRate(new CheckOpenTimerTask(executor), 0L, 1000L, TimeUnit.MILLISECONDS);
        }
    }

    /* ==================== Inner class: HeartbeatTask ==================== */

    /** Heartbeat timer task. was: inner class 'e' (TimerTask) */
    class HeartbeatTask extends TimerTask {
        HeartbeatTask() {
        }

        @Override
        public void run() {
            if (BoxProtocol.this.threadExit) {
                s.c("bThreadExit ");
                BoxProtocol.this.heartbeatScheduler.shutdown();
                BoxProtocol.this.heartbeatScheduler = null;
            } else if (BoxProtocol.this.sendCommand(170)) { /* was: v0(170) */
                s.h("send heart beat Start");
            } else {
                s.e("send heart beat err");
            }
        }
    }

    /* ==================== Inner class: SendOpenAsyncRunnable ==================== */

    /** Async send-open runnable. was: inner class 'RunnableC0078f' (renamed from f$f) */
    class SendOpenAsyncRunnable implements Runnable {
        SendOpenAsyncRunnable() {
        }

        @Override
        public void run() {
            if (!BoxProtocol.this.sendingOpen.compareAndSet(false, true)) {
                s.p("BoxProtocol", "send_g_open_async->run: send_g_open() is already running. Ignoring this call.");
                return;
            }
            try {
                BoxProtocol.this.sendOpen(); /* was: X0() */
            } finally {
                BoxProtocol.this.sendingOpen.set(false);
            }
        }
    }

    /* ==================== Inner class: SendInvalidModeRunnable ==================== */

    /** Send invalid mode runnable. was: inner class 'g' (Runnable) */
    class SendInvalidModeRunnable implements Runnable {
        SendInvalidModeRunnable() {
        }

        @Override
        public void run() {
            BoxProtocol.this.sendInvalidIphoneMode(); /* was: Z0() */
        }
    }

    /* ==================== Inner class: AudioFrameQueue ==================== */

    /**
     * Audio frame queue (synchronized producer-consumer with wait/notify).
     * was: inner class 'h'
     */
    class AudioFrameQueue {
        private Packet cachedPacket /* was: 'a' */;
        private cn.manstep.phonemirrorBox.util.i dataQueue /* was: 'f1460b' */ = new cn.manstep.phonemirrorBox.util.i();

        public AudioFrameQueue() {
            this.cachedPacket = BoxProtocol.this.new Packet();
        }

        /** Dequeue a frame (blocking). was: method 'a()' */
        public synchronized Packet dequeue() throws InterruptedException {
            Packet result /* was: lVar */ = null;
            while (this.dataQueue.g() > 10) {
                s.e("dataVec_.size = " + this.dataQueue.g());
                this.dataQueue.f(0);
            }
            if (this.dataQueue.e()) {
                wait(100L);
            } else {
                this.cachedPacket.header.dataLength /* was: a.f1462b */ = this.dataQueue.c().length;
                this.cachedPacket.dataBuf.rewind();
                this.cachedPacket.dataBuf.put(this.dataQueue.c());
                this.dataQueue.f(0);
                result = this.cachedPacket;
            }
            return result;
        }

        /** Wake up waiting consumer. was: method 'b()' */
        public synchronized void wakeUp() {
            notify();
        }
    }

    /* ==================== Inner class: PacketHeader ==================== */

    /**
     * Packet header (16 bytes).
     * was: inner class 'i'
     *
     * Magic values: 0x55AA5A5A = 1437226410, 0x55AA5A5B = 1438340539
     */
    class PacketHeader {
        private int magic /* was: 'a' */ = 0;
        private int dataLength /* was: 'f1462b' */ = 0;
        private int commandType /* was: 'f1463c' */ = 0;
        private int checksum /* was: 'f1464d' */ = 0;

        public PacketHeader(BoxProtocol outer) {
        }

        /** Mark as encrypted packet. was: method 'a()' */
        public void markEncrypted() {
            this.magic = 1438340539; /* 0x55AA5A5B */
        }

        /** Check if packet is encrypted. was: method 'b()' */
        public boolean isEncrypted() {
            return 1438340539 == this.magic;
        }

        /** Validate the header. was: method 'c()' */
        public boolean isValid() {
            int m = this.magic;
            return (1437226410 == m || 1438340539 == m) && this.checksum == (this.commandType ^ (-1));
        }

        /** Compute checksum. was: method 'd()' */
        public void computeChecksum() {
            this.checksum = this.commandType ^ (-1);
            this.magic = isEncrypted() ? 1438340539 : 1437226410;
        }

        /** Header size in bytes (16). was: method 'm()' */
        public int getSize() {
            return 16;
        }
    }

    /* ==================== Inner class: VideoModeChangeInfo ==================== */

    /**
     * Video mode change info (28 bytes).
     * was: inner class 'j' (static)
     */
    public static class VideoModeChangeInfo {
        public int field0 /* was: 'a' */ = 0;
        public int field1 /* was: 'f1465b' */ = 0;
        public int field2 /* was: 'f1466c' */ = 1;
        public int field3 /* was: 'f1467d' */ = 2;
        public int field4 /* was: 'e' */ = 0;
        public int field5 /* was: 'f' */ = 0;
        public int field6 /* was: 'g' */ = 0;
        private ByteBuffer buffer /* was: 'h' */;

        public VideoModeChangeInfo() {
            ByteBuffer buf = ByteBuffer.allocate(getSize());
            this.buffer = buf;
            buf.order(ByteOrder.LITTLE_ENDIAN);
        }

        /** Get serialized size (28 bytes). was: method 'a()' (static) */
        public static int getSize() {
            return 28;
        }

        /** Deserialize from ByteBuffer. was: method 'b(ByteBuffer)' */
        public void fromByteBuffer(ByteBuffer byteBuffer) {
            this.field0 = byteBuffer.getInt(0);
            this.field1 = byteBuffer.getInt(4);
            this.field2 = byteBuffer.getInt(8);
            this.field3 = byteBuffer.getInt(12);
            this.field4 = byteBuffer.getInt(16);
            this.field5 = byteBuffer.getInt(20);
            this.field6 = byteBuffer.getInt(24);
        }
    }

    /* ==================== Inner class: OpenParams ==================== */

    /**
     * OpenParams -- video negotiation parameters (StOpen struct).
     * Sent as CMD_OPEN payload (28 bytes).
     *
     * was: inner class 'k' (static)
     */
    public static class OpenParams {
        static int iphoneWorkMode /* was: 'h' (static) */ = 2;
        static int androidWorkMode /* was: 'i' (static) */ = 1;
        int width /* was: 'a' */;
        int height /* was: 'f1468b' */;
        int frameRate /* was: 'f1469c' */;
        int compressMethod /* was: 'f1470d' */;
        int bufferSize /* was: 'e' */;
        int boxVersion /* was: 'f' */;
        private ByteBuffer buffer /* was: 'g' */;

        public OpenParams() {
            if (p.g) { /* soft decode */
                s.e("use soft-decode, framerate = 25 !!!!!!!!!!!!!!!");
                p.C = 25;
            }
            this.width = 0;
            this.height = 0;
            this.frameRate = p.C;
            s.d("BoxProtocol", "videoFrameRate = " + this.frameRate);
            this.compressMethod = 5; /* H264 */
            this.bufferSize = 16384;
            this.boxVersion = 0;
            ByteBuffer buf = ByteBuffer.allocate(getSize());
            this.buffer = buf;
            buf.order(ByteOrder.LITTLE_ENDIAN);
        }

        /** Get Android work mode name. was: method 'a(int)' */
        public static String getAndroidWorkModeName(int mode /* was: 'i2' */) {
            if (mode == 0) {
                return "AndroidInvalid(" + mode + ")";
            }
            if (mode == 1) {
                return "AndroidAuto(" + mode + ")";
            }
            if (mode == 2) {
                return "CarLife(" + mode + ")";
            }
            if (mode == 3) {
                return "AndroidMirror(" + mode + ")";
            }
            if (mode == 4) {
                return "HiCar(" + mode + ")";
            }
            if (mode != 5) {
                return "AndroidUnknown(" + mode + ")";
            }
            return "ICCOA(" + mode + ")";
        }

        /** Change Android work mode. was: method 'b(int)' */
        public static void setAndroidWorkMode(int mode /* was: 'i2' */) {
            androidWorkMode = mode;
            s.c("BoxProtocol,changeAndroidWorkMode: " + mode);
        }

        /** Change iPhone work mode. was: method 'c(int)' */
        public static void setIphoneWorkMode(int mode /* was: 'i2' */) {
            if (mode < 0) {
                return;
            }
            if (mode == 1) {
                mode = 2;
            }
            iphoneWorkMode = mode;
            s.c("BoxProtocol,changeIphoneWorkMode: " + mode);
        }

        /** Get current Android work mode. was: method 'd()' */
        public static int getAndroidWorkMode() {
            return androidWorkMode;
        }

        /** Get current iPhone work mode. was: method 'f()' */
        public static int getIphoneWorkMode() {
            return iphoneWorkMode;
        }

        /** Get serialized size in bytes (28). was: method 'g()' (static) */
        public static int getSize() {
            return 28;
        }

        /** Get iPhone work mode name. was: method 'h(int)' */
        public static String getIphoneWorkModeName(int mode /* was: 'i2' */) {
            if (mode == 0) {
                return "iPhoneInvalid(" + mode + ")";
            }
            if (mode == 1) {
                return "AirPlay(" + mode + ")";
            }
            if (mode == 2) {
                return "CarPlay(" + mode + ")";
            }
            if (mode == 3) {
                return "NonAirPlay(" + mode + ")";
            }
            if (mode != 4) {
                return "iPhoneUnknown(" + mode + ")";
            }
            return "iPhoneCharge(" + mode + ")";
        }

        /** Check if HiCar mode. was: method 'i()' */
        public static boolean isHiCar() {
            return androidWorkMode == 4;
        }

        /** Serialize to byte array. was: method 'e()' */
        public byte[] toByteArray() {
            this.buffer.putInt(0, this.width);
            this.buffer.putInt(4, this.height);
            this.buffer.putInt(8, this.frameRate);
            this.buffer.putInt(12, this.compressMethod);
            this.buffer.putInt(16, this.bufferSize);
            this.buffer.putInt(20, this.boxVersion);
            this.buffer.putInt(24, iphoneWorkMode);
            s.e("BoxProtocol,StOpen,getBytes: phoneWorkMode=" + iphoneWorkMode);
            return this.buffer.array();
        }

        /** Deserialize from ByteBuffer. was: method 'j(ByteBuffer)' */
        public void fromByteBuffer(ByteBuffer byteBuffer) {
            this.width = byteBuffer.getInt(0);
            this.height = byteBuffer.getInt(4);
            this.frameRate = byteBuffer.getInt(8);
            this.compressMethod = byteBuffer.getInt(12);
            this.bufferSize = byteBuffer.getInt(16);
            this.boxVersion = byteBuffer.getInt(20);
            iphoneWorkMode = byteBuffer.getInt(24);
        }
    }

    /* ==================== Inner class: Packet ==================== */

    /**
     * Packet -- combines header + data buffer.
     * was: inner class 'l'
     */
    class Packet {
        PacketHeader header /* was: 'a' */;
        ByteBuffer headerBuf /* was: 'f1471b' */;
        ByteBuffer dataBuf /* was: 'f1472c' */;

        /** Default constructor (1MB data buffer). was: l() */
        public Packet() {
            PacketHeader hdr = new PacketHeader(BoxProtocol.this);
            this.header = hdr;
            ByteBuffer hb = ByteBuffer.allocate(hdr.getSize());
            this.headerBuf = hb;
            hb.order(ByteOrder.LITTLE_ENDIAN);
            ByteBuffer db = ByteBuffer.allocate(1048576); /* 1MB */
            this.dataBuf = db;
            db.order(ByteOrder.LITTLE_ENDIAN);
        }

        /** Constructor with specific data size. was: l(int) */
        public Packet(int dataSize) {
            PacketHeader hdr = new PacketHeader(BoxProtocol.this);
            this.header = hdr;
            ByteBuffer hb = ByteBuffer.allocate(hdr.getSize());
            this.headerBuf = hb;
            hb.order(ByteOrder.LITTLE_ENDIAN);
            ByteBuffer db = ByteBuffer.allocate(dataSize);
            this.dataBuf = db;
            db.order(ByteOrder.LITTLE_ENDIAN);
            this.header.dataLength = dataSize;
        }

        /**
         * Handle AES encryption/decryption of data payload.
         * was: method 'i(boolean)' -- encrypt if true, decrypt if false
         */
        private void handleCryptData(boolean encrypt /* was: 'z' */) {
            int dataLen /* was: 'i' */ = this.header.dataLength;
            if (!BoxProtocol.this.encryptionEnabled || this.header.dataLength == 0) {
                return;
            }
            int cmdType /* was: 'i2' */ = this.header.commandType;
            if (encrypt && cmdType != 6 && cmdType != 7) {
                this.header.markEncrypted(); /* was: a() */
            }
            if (this.header.isEncrypted()) { /* was: b() */
                try {
                    byte[] key /* was: bArr */ = new byte[16];
                    for (int idx /* was: i3 */ = 0; idx < 16; idx++) {
                        key[idx] = (byte) "SkBRDy3gmrw1ieH0".charAt((BoxProtocol.this.aesKey + idx) % 16);
                    }
                    byte[] iv /* was: bArr2 */ = new byte[16];
                    iv[1] = (byte) (BoxProtocol.this.aesKey & 255);
                    iv[4] = (byte) ((BoxProtocol.this.aesKey >> 8) & 255);
                    iv[9] = (byte) ((BoxProtocol.this.aesKey >> 16) & 255);
                    iv[12] = (byte) ((BoxProtocol.this.aesKey >> 24) & 255);
                    byte[] data /* was: bArrE */ = getDataArray(); /* was: e() */
                    if (!encrypt) {
                        data = new byte[getDataLength()]; /* was: f() */
                        System.arraycopy(getDataArray(), 0, data, 0, dataLen);
                    }
                    SecretKeySpec secretKeySpec = new SecretKeySpec(key, "AES");
                    IvParameterSpec ivParameterSpec = new IvParameterSpec(iv);
                    Cipher cipher = Cipher.getInstance("AES/CFB/NoPadding");
                    if (encrypt) {
                        cipher.init(1, secretKeySpec, ivParameterSpec);
                    } else {
                        cipher.init(2, secretKeySpec, ivParameterSpec);
                    }
                    System.arraycopy(cipher.doFinal(data), 0, getDataArray(), 0, dataLen);
                } catch (Exception e) {
                    s.d("BoxProtocol", "handleCryptData: " + s.g(e));
                }
            }
        }

        /** Ensure data buffer capacity. was: method 'c()' */
        public void ensureCapacity() {
            if (this.header.dataLength > this.dataBuf.capacity()) {
                s.e("Out of dataBuffer.capacity");
                ByteBuffer db = ByteBuffer.allocate(this.header.dataLength);
                this.dataBuf = db;
                db.order(ByteOrder.LITTLE_ENDIAN);
            }
        }

        /** Get data ByteBuffer. was: method 'd()' */
        public ByteBuffer getDataBuffer() {
            return this.dataBuf;
        }

        /** Get data byte array. was: method 'e()' */
        public byte[] getDataArray() {
            return this.dataBuf.array();
        }

        /** Get data length. was: method 'f()' */
        public int getDataLength() {
            return this.header.dataLength;
        }

        /** Get header byte array. was: method 'g()' */
        public byte[] getHeaderArray() {
            return this.headerBuf.array();
        }

        /** Get header length (16). was: method 'h()' */
        public int getHeaderLength() {
            return this.header.getSize();
        }

        /**
         * Serialize header to headerBuf (with optional AES encryption of data).
         * was: method 'j()' -- calls handleCryptData(true) internally for encryption
         */
        public void serializeHeader() {
            handleCryptData(true); /* was: i(true) */
            this.header.computeChecksum(); /* was: d() */
            this.headerBuf.putInt(0, this.header.magic);
            this.headerBuf.putInt(4, this.header.dataLength);
            this.headerBuf.putInt(8, this.header.commandType);
            this.headerBuf.putInt(12, this.header.checksum);
        }

        /** Decrypt data after receiving. was: method 'k()' -- calls handleCryptData(false) */
        public void decryptData() {
            handleCryptData(false); /* was: i(false) */
        }

        /** Deserialize header from headerBuf. was: method 'l()' */
        public void deserializeHeader() {
            this.header.magic = this.headerBuf.getInt(0);
            this.header.dataLength = this.headerBuf.getInt(4);
            this.header.commandType = this.headerBuf.getInt(8);
            this.header.checksum = this.headerBuf.getInt(12);
        }
    }

    /* ==================== Constructor ==================== */

    /** was: f(Context) */
    public BoxProtocol(Context context) {
        this.videoWidth = 0;
        this.videoHeight = 0;
        s.c("BoxProtocol,BoxProtocol: ===***===");
        resetConnectionState(); /* was: O() */
        initAudioPlayers(context); /* was: P(context) */
        this.threadExit = false;
        this.videoWidth = 0;
        this.videoHeight = 0;
        this.openParams = new OpenParams(); /* was: new k() */
        z<Boolean> flag = new z<>();
        this.openedFlag = flag;
        flag.b(Boolean.FALSE);
        this.contextRef = new WeakReference<>(context);
        this.audioQueue = new AudioFrameQueue(); /* was: new h() */
        initBoundSize(); /* was: Q() */
        initCheckOpenThread(); /* was: u1() */
        startHeartbeat(); /* was: v1() */
        if (this.readThread == null) {
            this.readThread = new Thread(new ReadThreadRunnable(), "readUsb"); /* was: new a() */
        }
        if (this.iosAudioThread == null) {
            this.iosAudioThread = new Thread(new IosAudioRunnable(), "iosAudio"); /* was: new b() */
        }
        if (this.audioRecordThread == null) {
            this.audioRecordThread = new Thread(new AudioRecordRunnable(), "audioRecord"); /* was: new c() */
            this.isMicRecording = false;
        }
        this.videoDecoder = new cn.manstep.phonemirrorBox.BoxInterface.b(context);
        this.checkOpenThread.start();
        s.c("checkOpenThread_ started");
        this.readThread.start();
        s.c("readThread_ started");
        this.audioRecordThread.start();
    }

    /* ==================== Private send helpers ==================== */

    /**
     * Send a string as device info with optional open-check.
     * was: method 'A0(int, String, boolean)'
     */
    private boolean sendDeviceInfoString(int cmdType /* was: 'i2' */, String str, boolean requireOpen /* was: 'z' */) {
        byte[] bytes = str.getBytes();
        return sendDeviceInfoFull(cmdType, bytes, bytes.length, requireOpen); /* was: C0() */
    }

    /**
     * Send device info (requires open). was: method 'B0(int, byte[], int)'
     */
    private boolean sendDeviceInfo(int cmdType /* was: 'i2' */, byte[] data /* was: 'bArr' */, int length /* was: 'i3' */) {
        return sendDeviceInfoFull(cmdType, data, length, true); /* was: C0() */
    }

    /**
     * Core device info send with open-check option.
     * was: method 'C0(int, byte[], int, boolean)'
     */
    private boolean sendDeviceInfoFull(int cmdType /* was: 'i2' */, byte[] data /* was: 'bArr' */, int length /* was: 'i3' */, boolean requireOpen /* was: 'z' */) {
        s.c("BoxProtocol,sendDevInfo: " + data.length + " " + length + " " + this.openedFlag.a());
        if (!this.openedFlag.a().booleanValue() && requireOpen) {
            return false;
        }
        s.c("BoxProtocol,sendDevInfo: cmd=" + cmdType);
        Packet packet /* was: lVar */ = new Packet(length);
        packet.header.commandType = cmdType; /* was: a.f1463c = i2 */
        packet.header.dataLength = length; /* was: a.f1462b = i3 */
        packet.ensureCapacity(); /* was: c() */
        System.arraycopy(data, 0, packet.getDataArray(), 0, length); /* was: e() */
        packet.serializeHeader(); /* was: j() */
        synchronized (this) {
            if (!cn.manstep.phonemirrorBox.BoxInterface.d.d0(packet.getHeaderArray(), packet.getHeaderLength())) { /* was: g(), h() */
                s.e("BoxProtocol,sendDevInfo: Write device info head err");
                return false;
            }
            if (cn.manstep.phonemirrorBox.BoxInterface.d.d0(packet.getDataArray(), packet.getDataLength())) { /* was: e(), f() */
                s.e("BoxProtocol,sendDevInfo: sendDevInfo() success ");
                return true;
            }
            s.e("BoxProtocol,sendDevInfo: Write device info data err");
            return false;
        }
    }

    /* ==================== Command handlers ==================== */

    /**
     * Handle camera data command. was: method 'M(l)'
     */
    private void handleCameraData(Packet packet /* was: 'lVar' */) {
        if (packet.getDataLength() >= 4) { /* was: f() */
            int subCmd /* was: 'i2' */ = packet.getDataBuffer().getInt(0); /* was: d().getInt(0) */
            if (subCmd == 2) {
                if (packet.getDataLength() - 4 == this.cameraPreviewData.length) {
                    copyCameraPreviewData(packet.getDataArray(), 4); /* was: k1(lVar.e(), 4) */
                    cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 29);
                    return;
                }
                return;
            }
            if (subCmd == 3) {
                s.c("Open camera");
                cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 30);
            } else {
                if (subCmd != 4) {
                    return;
                }
                s.c("Close camera");
                cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 31);
            }
        }
    }

    /**
     * Handle dashboard data command. was: method 'N(l)'
     */
    private void handleDashboardData(Packet packet /* was: 'lVar' */) {
        if (packet.getDataLength() >= 4) { /* was: f() */
            int subCmd /* was: 'i2' */ = packet.getDataBuffer().getInt(0); /* was: d().getInt(0) */
            try {
                if (subCmd == 1) {
                    cn.manstep.phonemirrorBox.BoxInterface.d.P(1, 216, new String(packet.getDataArray(), 4, (packet.getDataLength() - 4) - 1, "UTF-8"));
                } else if (subCmd == 2 || subCmd == 3) {
                    byte[] coverData /* was: bArr */ = new byte[(packet.getDataLength() - 4) - 1];
                    System.arraycopy(packet.getDataArray(), 4, coverData, 0, (packet.getDataLength() - 4) - 1);
                    Bundle bundle = new Bundle();
                    bundle.putByteArray("COVER", coverData);
                    cn.manstep.phonemirrorBox.BoxInterface.d.P(1, 218, bundle);
                } else if (subCmd == 100) {
                    cn.manstep.phonemirrorBox.BoxInterface.d.P(1, 217, new String(packet.getDataArray(), 4, (packet.getDataLength() - 4) - 1, "UTF-8"));
                } else if (subCmd == 200) {
                    cn.manstep.phonemirrorBox.BoxInterface.d.P(1, 219, new String(packet.getDataArray(), 4, (packet.getDataLength() - 4) - 1, "UTF-8"));
                }
            } catch (UnsupportedEncodingException e2) {
                s.f("BoxProtocol", "handleDashboardData: " + s.g(e2));
            }
        }
    }

    /** Reset connection state. was: method 'O()' */
    private void resetConnectionState() {
        isPhoneConnected = false;
        phoneType = -2;
    }

    /** Initialize audio players. was: method 'P(Context)' */
    private void initAudioPlayers(Context context) {
        this.audioListeners = new ArrayList();
        cn.manstep.phonemirrorBox.BoxInterface.a.l(context);
        cn.manstep.phonemirrorBox.BoxInterface.a player0 /* was: aVar */ = new cn.manstep.phonemirrorBox.BoxInterface.a(2, 1, context);
        player0.J(0);
        this.audioListeners.add(player0);
        cn.manstep.phonemirrorBox.BoxInterface.a player1 /* was: aVar2 */ = new cn.manstep.phonemirrorBox.BoxInterface.a(2, 2, context);
        player1.J(1);
        this.audioListeners.add(player1);
        cn.manstep.phonemirrorBox.BoxInterface.a player2 /* was: aVar3 */ = new cn.manstep.phonemirrorBox.BoxInterface.a(3, 1, context);
        player2.J(2);
        this.audioListeners.add(player2);
        cn.manstep.phonemirrorBox.BoxInterface.a player3 /* was: aVar4 */ = new cn.manstep.phonemirrorBox.BoxInterface.a(4, 1, context);
        player3.J(3);
        this.audioListeners.add(player3);
        if (p.u) {
            cn.manstep.phonemirrorBox.BoxInterface.a player4 /* was: aVar5 */ = new cn.manstep.phonemirrorBox.BoxInterface.a(7, 1, context);
            player4.J(4);
            this.audioListeners.add(player4);
        } else {
            cn.manstep.phonemirrorBox.BoxInterface.a player4alt /* was: aVar6 */ = new cn.manstep.phonemirrorBox.BoxInterface.a(5, 1, context);
            player4alt.J(4);
            this.audioListeners.add(player4alt);
        }
        cn.manstep.phonemirrorBox.BoxInterface.a player5 /* was: aVar7 */ = new cn.manstep.phonemirrorBox.BoxInterface.a(6, 1, context);
        player5.J(5);
        this.audioListeners.add(player5);
        cn.manstep.phonemirrorBox.BoxInterface.a player6 /* was: aVar8 */ = new cn.manstep.phonemirrorBox.BoxInterface.a(5, 2, context);
        player6.J(6);
        this.audioListeners.add(player6);
        cn.manstep.phonemirrorBox.BoxInterface.a player7 /* was: aVar9 */ = new cn.manstep.phonemirrorBox.BoxInterface.a(4, 2, context);
        player7.J(7);
        this.audioListeners.add(player7);
    }

    /**
     * Set phone mode strategy based on phone type.
     * was: method 'R(int)'
     */
    private void setPhoneModeStrategy(int type /* was: 'i2' */) {
        if (type == 1) {
            this.phoneModeStrategy = new cn.manstep.phonemirrorBox.q0.b(type);
            cn.manstep.phonemirrorBox.v0.a.t().c("AndroidMirror", isWifiDevice);
            return;
        }
        if (type == 3) {
            p.F = 1;
            this.phoneModeStrategy = new cn.manstep.phonemirrorBox.q0.c(type);
            cn.manstep.phonemirrorBox.v0.a.t().c("CarPlay", isWifiDevice);
            return;
        }
        if (type == 4) {
            this.phoneModeStrategy = new cn.manstep.phonemirrorBox.q0.f(type);
            cn.manstep.phonemirrorBox.v0.a.t().c("iPhoneMirror", isWifiDevice);
            return;
        }
        if (type == 5) {
            this.phoneModeStrategy = new cn.manstep.phonemirrorBox.q0.a(type);
            cn.manstep.phonemirrorBox.v0.a.t().c("AndroidAuto", isWifiDevice);
            return;
        }
        if (type == 6) {
            p.F = 1;
            this.phoneModeStrategy = new cn.manstep.phonemirrorBox.q0.e(type);
            cn.manstep.phonemirrorBox.v0.a.t().c("HiCar", isWifiDevice);
        } else if (type != 7) {
            p.F = 1;
            this.phoneModeStrategy = new cn.manstep.phonemirrorBox.q0.d(type);
            cn.manstep.phonemirrorBox.v0.a.t().c("Unknown", isWifiDevice);
        } else {
            p.F = 1;
            this.phoneModeStrategy = new cn.manstep.phonemirrorBox.q0.e(type);
            cn.manstep.phonemirrorBox.v0.a.t().c("Carlink", isWifiDevice);
        }
    }

    /**
     * Dispatch update status event. was: method 'X(int)'
     */
    private void handleUpdateStatus(int status /* was: 'i2' */) {
        if (status == 1) {
            cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 120);
            return;
        }
        if (status == 2) {
            cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 121);
            return;
        }
        if (status == 3) {
            cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 122);
            return;
        }
        if (status == 5) {
            cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 125);
        } else if (status == 6) {
            cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 126);
        } else {
            if (status != 7) {
                return;
            }
            cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 127);
        }
    }

    /**
     * Command dispatcher -- handles all incoming commands from the box.
     * was: method 'Y(l)' = handleCommand
     */
    private void handleCommand(Packet packet /* was: 'lVar' */) {
        cn.manstep.phonemirrorBox.BoxInterface.b decoder; /* was: bVar */
        cn.manstep.phonemirrorBox.BoxInterface.b decoder2; /* was: bVar2 */
        cn.manstep.phonemirrorBox.BoxInterface.b decoder3; /* was: bVar3 */
        String str;
        String str2;
        int cmdType /* was: 'i2' */ = packet.header.commandType; /* was: lVar.a.f1463c */
        if (cmdType == 1) { /* CMD_OPEN */
            if (OpenParams.getSize() != packet.getDataLength()) { /* was: k.g() != lVar.f() */
                if (packet.getDataLength() != 0) {
                    s.c("NULL!!!!!!");
                    return;
                } else {
                    sendOpen(); /* was: X0() */
                    s.f("BoxProtocol", "onCmd: Resend g_Open!! #####################");
                    return;
                }
            }
            this.openedFlag.b(Boolean.TRUE);
            cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 36);
            this.openParams.fromByteBuffer(packet.getDataBuffer()); /* was: q.j(lVar.d()) */
            OpenParams params /* was: kVar */ = this.openParams;
            int w /* was: i3 */ = params.width;
            int h /* was: i4 */ = params.height;
            s.e("BoxProtocol,onCmd: Recv CMD_OPEN:  " + packet.getDataLength() + " " + this.openParams.width + "x" + this.openParams.height + "@" + this.openParams.frameRate + "fps " + this.openParams.compressMethod + " " + this.openParams.bufferSize + " " + OpenParams.iphoneWorkMode);
            OpenParams params2 /* was: kVar2 */ = this.openParams;
            if (params2.width > 4000 || params2.height > 4000 || params2.frameRate > 60) {
                s.e("BoxProtocol,onCmd: Recv CMD_OPEN: data exception!!!");
                return;
            }
            if (params2.boxVersion == 0) {
                setUnauthorized(true); /* was: n1(true) */
                cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 123);
            } else if (cn.manstep.phonemirrorBox.BoxInterface.c.e().t(0, m.a)) {
                s.f("BoxProtocol", "onCmd: PID ERROR");
                setUnauthorized(true);
                cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 123);
            } else if (this.encryptionEnabled) {
                setUnauthorized(false); /* was: n1(false) */
                sendAndroidWorkModeAssets(); /* was: h0() */
            } else {
                s.e("BoxProtocol,box not support crypt!!!" + cn.manstep.phonemirrorBox.BoxInterface.c.e().p());
                if ("2024.07.08.0000".compareTo(cn.manstep.phonemirrorBox.BoxInterface.c.e().p()) < 0) {
                    setUnauthorized(true);
                    cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 123);
                }
            }
            if (this.boxMicDetected && cn.manstep.phonemirrorBox.BoxInterface.a.g) {
                sendMicType(b0.i().m("MicType", 0)); /* was: F0() */
            }
            s.e("BoxProtocol,onCmd: Recv CMD_OPEN: g_Open.iBoxversion = " + this.openParams.boxVersion);
            return;
        }
        if (cmdType == 2) { /* CMD_PLUG */
            if (this.isUnauthorized) {
                sendManualDisconnect(); /* was: b1() */
                return;
            }
            this.offScreen = 0;
            this.encoderType = 2;
            this.videoWidth = 0;
            this.videoHeight = 0;
            if (packet.getDataLength() == 4) {
                int type /* was: i5 */ = packet.getDataBuffer().getInt(0);
                phoneType = type;
                isWifiDevice = false;
                setPhoneModeStrategy(type); /* was: R(i5) */
            } else if (packet.getDataLength() == 8) {
                phoneType = packet.getDataBuffer().getInt(0);
                isWifiDevice = packet.getDataBuffer().getInt(4) == 1;
                s.c("BoxProtocol,onCmd: Recv bWifiDeviceConected: " + isWifiDevice);
                setPhoneModeStrategy(phoneType); /* was: R(N) */
            }
            s.c("BoxProtocol,onCmd: Recv CMD_PLUG, Phone Type: " + phoneType + ",WorkMode:" + cn.manstep.phonemirrorBox.v0.a.t().u());
            cn.manstep.phonemirrorBox.q0.g strategy /* was: gVar */ = this.phoneModeStrategy;
            if (strategy != null) {
                p.G = strategy.j();
            }
            onPhonePluggedIn(); /* was: Z() */
            return;
        }
        if (cmdType == 3) { /* CMD_PHASE */
            if (4 == packet.getDataLength()) {
                int phase /* was: i6 */ = packet.getDataBuffer().getInt(0);
                s.c("BoxProtocol,onCmd: Recv CMD_PHASE iPhase = " + phase);
                if (this.isUnauthorized) {
                    sendManualDisconnect(); /* was: b1() */
                    return;
                }
                if (phase != 3) {
                    if (phase == 4) {
                        cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 5);
                        return;
                    }
                    if (phase == 5) {
                        cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 6);
                        return;
                    }
                    if (phase != 6) {
                        if (phase != 8) {
                            if (phase == 13) {
                                s.f("BoxProtocol", "onCmd: PHASE_LinkFailed phoneType=" + phoneType + ",bPhoneConnected=" + isPhoneConnected);
                                if (phoneType != -2 || isPhoneConnected) {
                                    return;
                                }
                                cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 204);
                                return;
                            }
                            if (phase != 10) {
                                if (phase == 11) {
                                    cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 16);
                                    return;
                                }
                                switch (phase) {
                                    case 1001:
                                        cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 50);
                                        s.e("BoxProtocol,onCmd: Hardware Error: Bluetooth");
                                        return;
                                    case 1002:
                                        cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 51);
                                        s.e("BoxProtocol,onCmd: Hardware Error: Wifi");
                                        return;
                                    case 1003:
                                        cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 52);
                                        return;
                                    case 1004:
                                        cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 53);
                                        return;
                                    default:
                                        return;
                                }
                            }
                        }
                        cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 9);
                        cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 15);
                        this.videoDecoder.g(2, this.videoWidth, this.videoHeight, null, 0);
                        isPhoneConnected = true;
                        s.f("BoxProtocol", "onCmd: #PHASE_CARPLAY_WORING/PHASE_NonAIRPLAY_WORING");
                        return;
                    }
                }
                cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 15);
                isPhoneConnected = true;
                s.f("BoxProtocol", "onCmd: #PHASE_IOS_WORING/PHASE_ANDROID_WORKING");
                return;
            }
            return;
        }
        if (cmdType == 4) { /* CMD_PLUGOUT */
            s.f("BoxProtocol", "onCmd: #CMD_PLUGOUT.");
            if (packet.getDataLength() == 4 && packet.getDataBuffer().getInt(0) == 1) {
                s.c("BoxProtocol,onCmd: CMD_PLUGOUT: Manually disconnected by the user on the phone end.");
                if (this.contextRef.get().getResources().getBoolean(2131034126)) {
                    cn.manstep.phonemirrorBox.BoxInterface.d.O(4, 0);
                }
                cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 25);
            }
            if (phoneType != -1 && (decoder = this.videoDecoder) != null) {
                decoder.g(0, this.videoWidth, this.videoHeight, null, 0);
            }
            isPhoneConnected = false;
            isWifiDevice = false;
            s.f("BoxProtocol", "onCmd: #CMD_PLUGOUT Phone Disconnected.");
            cn.manstep.phonemirrorBox.BoxInterface.d.O(1, phoneType != -1 ? 2 : 0);
            stopAllAudio(); /* was: t1() */
            cn.manstep.phonemirrorBox.BoxInterface.c.e().v();
            phoneType = -2;
            return;
        }
        if (cmdType == 6) { /* CMD_VIDEO_FRAME */
            if (this.openedFlag.a().booleanValue()) {
                int frameWidth /* was: i7 */ = packet.getDataBuffer().getInt(0);
                int frameHeight /* was: i8 */ = packet.getDataBuffer().getInt(4);
                int flags /* was: i9 */ = packet.getDataBuffer().getInt(8);
                long timestamp /* was: j2 */ = cn.manstep.phonemirrorBox.BoxInterface.c.e().p().compareTo("2024.12.13.1130") >= 0 ? packet.getDataBuffer().getInt(12) : 0L;
                int isOffScreen /* was: i10 */ = flags & 1;
                int encType /* was: i11 */ = (flags >> 2) & 3;
                if (encType == 0) {
                    encType = 2;
                } else if (encType == 1) {
                    encType = 1;
                } else if (encType == 2) {
                    encType = 4;
                }
                if (encType != this.encoderType) {
                    this.encoderType = encType;
                    if (1 == encType || 4 == encType) {
                        cn.manstep.phonemirrorBox.BoxInterface.d.O(2, 0);
                    } else {
                        cn.manstep.phonemirrorBox.BoxInterface.d.O(2, 1);
                    }
                }
                if (this.offScreen != isOffScreen) {
                    this.offScreen = isOffScreen;
                    if (this.openParams.compressMethod == 5) {
                        if (isOffScreen == 0) {
                            if (phoneType != -1 && (decoder3 = this.videoDecoder) != null) {
                                decoder3.g(3, frameWidth, frameHeight, null, 0);
                            }
                        } else if (phoneType != -1 && (decoder2 = this.videoDecoder) != null) {
                            decoder2.g(4, frameWidth, frameHeight, null, 0);
                        }
                        s.c("COMPRESS_METHORD_H264  boffscreen= " + this.offScreen);
                    }
                    cn.manstep.phonemirrorBox.BoxInterface.d.O(1, this.offScreen == 1 ? 10 : 11);
                }
                if (frameWidth != this.videoWidth || frameHeight != this.videoHeight) {
                    this.videoWidth = frameWidth;
                    this.videoHeight = frameHeight;
                    cn.manstep.phonemirrorBox.BoxInterface.d.O(3, 0);
                    if (this.openParams.compressMethod == 5 && phoneType != -1 && this.videoDecoder != null) {
                        s.e("new w h " + frameWidth + "x" + frameHeight);
                        this.videoDecoder.g(7, frameWidth, frameHeight, null, 0);
                    }
                }
                if (packet.getDataLength() > 20 && this.enableVideo) {
                    int compress /* was: i12 */ = this.openParams.compressMethod;
                    if (compress == 3) {
                        if (phoneType == -1) {
                            int dataLen /* was: iF */ = packet.getDataLength() - 20;
                            byte[] wrapped /* was: bArr */ = new byte[dataLen + 32];
                            ByteBuffer wrappedBuf /* was: byteBufferWrap */ = ByteBuffer.wrap(wrapped);
                            wrappedBuf.order(ByteOrder.LITTLE_ENDIAN);
                            wrappedBuf.putInt(4, dataLen + 36);
                            wrappedBuf.putInt(8, frameWidth);
                            wrappedBuf.putInt(12, frameHeight);
                            wrappedBuf.putInt(24, 131072);
                            System.arraycopy(packet.getDataArray(), 20, wrapped, 32, dataLen);
                            cn.manstep.phonemirrorBox.BoxInterface.d.F(wrapped);
                            return;
                        }
                        return;
                    }
                    if (compress != 5) {
                        return;
                    }
                    int currentPhoneType /* was: i13 */ = phoneType;
                    if (currentPhoneType != -1) {
                        int dataLen2 /* was: iF2 */ = packet.getDataLength() - 20;
                        cn.manstep.phonemirrorBox.BoxInterface.b dec /* was: bVar4 */ = this.videoDecoder;
                        if (dec != null) {
                            dec.h(8, frameWidth, frameHeight, packet.getDataArray(), dataLen2, timestamp);
                            return;
                        }
                        return;
                    }
                    if (currentPhoneType == -1) {
                        int dataLen3 /* was: iF3 */ = packet.getDataLength() - 20;
                        byte[] wrapped2 /* was: bArr2 */ = new byte[dataLen3 + 32];
                        ByteBuffer wrappedBuf2 /* was: byteBufferWrap2 */ = ByteBuffer.wrap(wrapped2);
                        wrappedBuf2.order(ByteOrder.LITTLE_ENDIAN);
                        wrappedBuf2.putInt(4, dataLen3 + 36);
                        wrappedBuf2.putInt(8, frameWidth);
                        wrappedBuf2.putInt(12, frameHeight);
                        wrappedBuf2.putInt(24, 65536);
                        System.arraycopy(packet.getDataArray(), 20, wrapped2, 32, dataLen3);
                        cn.manstep.phonemirrorBox.BoxInterface.d.F(wrapped2);
                        return;
                    }
                    return;
                }
                return;
            }
            return;
        }
        if (cmdType != 7) { /* not CMD_AUDIO_FRAME (handled in read loop) */
            if (cmdType == 8) { /* CMD_CARPLAY_CMD */
                int carplayCmd /* was: i14 */ = packet.getDataBuffer().getInt(0);
                s.e("BoxProtocol,onCmd: Recv CarPlay_CMD: " + carplayCmd);
                if (carplayCmd == 1) {
                    if (cn.manstep.phonemirrorBox.BoxInterface.a.g) {
                        this.isMicRecording = true;
                        synchronized (cn.manstep.phonemirrorBox.BoxInterface.a.h) {
                            cn.manstep.phonemirrorBox.BoxInterface.a.h.notify();
                            s.f("BoxProtocol", "onCmd: Start record audio========");
                        }
                        return;
                    }
                    return;
                }
                if (carplayCmd == 2) {
                    if (cn.manstep.phonemirrorBox.BoxInterface.a.g) {
                        this.isMicRecording = false;
                        s.f("BoxProtocol", "onCmd: Stop record audio========");
                        return;
                    }
                    return;
                }
                if (carplayCmd == 3) {
                    s.c("recv  CarPlay_RequestHostUI...");
                    cn.manstep.phonemirrorBox.v0.a.t().n();
                    if (!new File("/sdcard/carplay.png").exists()) {
                        cn.manstep.phonemirrorBox.BoxInterface.d.O(4, 0);
                    }
                    if (phoneType != 5 || cn.manstep.phonemirrorBox.BoxInterface.c.e().p().compareTo("2022") >= 0) {
                        return;
                    }
                    cn.manstep.phonemirrorBox.v0.e.H(200);
                    return;
                }
                if (carplayCmd == 15) {
                    s.e("Config.bUseBoxMic: " + p.s);
                    s.c("BoxProtocol,onCmd: ======Box Mic======");
                    this.boxMicDetected = true;
                    cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 116);
                    cn.manstep.phonemirrorBox.BoxInterface.a.g = !p.s;
                    return;
                }
                if (carplayCmd == 500) {
                    cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 212);
                    return;
                }
                if (carplayCmd == 501) {
                    cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 213);
                    return;
                }
                if (carplayCmd == 1000) {
                    s.c("BoxProtocol,onCmd: Recv CarPlay_SupportWifi");
                    isWifiSupported = true;
                    cn.manstep.phonemirrorBox.BoxInterface.c.e().A(true);
                    return;
                }
                if (carplayCmd == 1001) {
                    isAutoConnectSupported = true;
                    this.canAutoConnect = true;
                    cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 200);
                    return;
                }
                switch (carplayCmd) {
                    case 7:
                        cn.manstep.phonemirrorBox.BoxInterface.a.g = true;
                        s.c("BoxProtocol,onCmd: ======Car Mic======");
                        cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 116);
                        return;
                    case 8:
                        cn.manstep.phonemirrorBox.BoxInterface.a.g = false;
                        cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 117);
                        return;
                    case 9:
                        cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 118);
                        return;
                    case 10:
                        cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 119);
                        sendCarPlayCommand(11); /* was: T0(11) */
                        return;
                    default:
                        switch (carplayCmd) {
                            case 1003:
                                cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 201);
                                return;
                            case 1004:
                                cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 202);
                                return;
                            case 1005:
                                cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 203);
                                return;
                            case 1006:
                                cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 204);
                                return;
                            case 1007:
                                this.bluetoothConnected = true;
                                cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 205);
                                return;
                            case 1008:
                                this.bluetoothConnected = false;
                                cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 206);
                                return;
                            case 1009:
                                this.canAutoConnect = true;
                                isWifiDevice = true;
                                cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 207);
                                return;
                            case 1010:
                                isWifiDevice = false;
                                cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 208);
                                return;
                            case 1011:
                                cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 209);
                                return;
                            case 1012:
                                s.c("BoxProtocol,onCmd: Recv CarPlay_SupportWifiNeedKo=======================");
                                return;
                            default:
                                return;
                        }
                }
            }
            if (cmdType == 13) { /* CMD_BOX_BLUETOOTH_NAME */
                if (packet.getDataLength() <= 16) {
                    String btNameStr /* was: str3 */ = BuildConfig.FLAVOR;
                    try {
                        str = new String(packet.getDataArray(), 0, packet.getDataLength() - 1, "UTF-8");
                    } catch (Exception e) {
                        s.e(Log.getStackTraceString(e));
                        str = btNameStr;
                    }
                    try {
                        this.btName = str;
                        cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 215);
                    } catch (Exception e3) {
                        s.e(Log.getStackTraceString(e3));
                    }
                    s.e("BoxProtocol,onCmd: Recv CMD_BOX_BLUETOOTH_NAME: " + str + ", len=" + (packet.getDataLength() - 1));
                    return;
                }
                return;
            }
            if (cmdType == 14) { /* CMD_BOX_WIFI_NAME */
                if (packet.getDataLength() <= 16) {
                    String wifiNameStr /* was: str4 */ = BuildConfig.FLAVOR;
                    try {
                        str2 = new String(packet.getDataArray(), 0, packet.getDataLength() - 1, "UTF-8");
                    } catch (Exception e4) {
                        s.e(Log.getStackTraceString(e4));
                        str2 = wifiNameStr;
                    }
                    try {
                        this.wifiName = str2;
                    } catch (Exception e5) {
                        s.e(Log.getStackTraceString(e5));
                    }
                    s.e("BoxProtocol,onCmd: Recv CMD_BOX_WIFI_NAME: " + str2 + ", len=" + (packet.getDataLength() - 1));
                    return;
                }
                return;
            }
            if (cmdType == 18) { /* CMD_BLUETOOTH_PAIR_LIST */
                if (this.isUnauthorized) {
                    sendManualDisconnect(); /* was: b1() */
                    return;
                } else {
                    saveBluetoothPairList(packet); /* was: e0(lVar) */
                    return;
                }
            }
            if (cmdType == 19) { /* CMD_BLUETOOTH_ONLINE_LIST */
                try {
                    this.btOnlineList = new String(packet.getDataArray(), 0, packet.getDataLength() - 1, "UTF-8");
                    s.e("BoxProtocol,onCmd: Recv CMD_BLUETOOTH_ONLINE_LIST: " + this.btOnlineList);
                    cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 211);
                    return;
                } catch (Exception e6) {
                    s.e(Log.getStackTraceString(e6));
                    return;
                }
            }
            if (cmdType == 24) { /* CMD_CONNECTION_URL */
                handleConnectionUrl(packet); /* was: s1(lVar) */
                return;
            }
            if (cmdType == 25) { /* CMD_BOX_INFO */
                if (packet.getDataLength() >= 4) {
                    try {
                        String infoStr /* was: str5 */ = new String(packet.getDataArray(), 0, packet.getDataLength(), "UTF-8");
                        s.c("BoxProtocol,onCmd->BoxInfo: " + infoStr);
                        cn.manstep.phonemirrorBox.BoxInterface.c.e().w(infoStr);
                        cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 35);
                        return;
                    } catch (Exception e7) {
                        s.f("BoxProtocol", "onCmd: " + s.g(e7));
                        return;
                    }
                }
                return;
            }
            if (cmdType == 42) { /* CMD_DASHBOARD_DATA */
                handleDashboardData(packet); /* was: N(lVar) */
                return;
            }
            if (cmdType == 43) { /* CMD_CONNECTION_PIN_CODE */
                handleConnectionPinCode(packet); /* was: r1(lVar) */
                return;
            }
            switch (cmdType) {
                case 11: /* CMD_CARPLAY_MODE_CHANGE */
                    if (VideoModeChangeInfo.getSize() == packet.getDataLength()) {
                        VideoModeChangeInfo modeChangeInfo /* was: jVar */ = new VideoModeChangeInfo();
                        modeChangeInfo.fromByteBuffer(packet.getDataBuffer());
                        s.e("BoxProtocol,onCmd: Recv CMD_CARPLAY_MODE_CHANGE:  " + packet.getDataLength() + " " + modeChangeInfo.field0 + " " + modeChangeInfo.field1 + " " + modeChangeInfo.field2 + " " + modeChangeInfo.field3 + " " + modeChangeInfo.field4 + " " + modeChangeInfo.field5 + " " + modeChangeInfo.field6);
                        return;
                    }
                    return;
                case 22: /* CMD_CAMERA_DATA */
                    handleCameraData(packet); /* was: M(lVar) */
                    return;
                case 119: /* CMD_DEBUG_CMD */
                    cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 34);
                    return;
                case 136: /* CMD_DEBUG_TEST */
                    s.e("BoxProtocol,onCmd: recv  CMD_DEBUG_TEST: " + packet.getDataBuffer().getInt(0));
                    return;
                case 153: /* CMD_FILE_TRANSFER */
                    saveFileFromBox(packet); /* was: f0(lVar) */
                    return;
                case 161: /* CMD_APP_LOG_GET */
                    cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 32);
                    return;
                case 177: /* CMD_UPDATE_PROGRESS */
                    if (4 == packet.getDataLength()) {
                        int progress /* was: i15 */ = packet.getDataBuffer().getInt(0);
                        s.e("BoxProtocol,onCmd: CMD_UPDATE_PROGRESS progress: " + progress);
                        cn.manstep.phonemirrorBox.BoxInterface.d.P(1, 120, Integer.valueOf(progress));
                        return;
                    }
                    return;
                case 187: /* CMD_UPDATE_STATUS */
                    if (4 == packet.getDataLength()) {
                        int updateStatus /* was: i16 */ = packet.getDataBuffer().getInt(0);
                        s.e("BoxProtocol,onCmd: CMD_UPDATE iStatus: " + updateStatus);
                        handleUpdateStatus(updateStatus); /* was: X(i16) */
                        return;
                    }
                    return;
                case 204: /* CMD_BOX_SOFTWARE_VERSION */
                    if (32 == packet.getDataLength()) {
                        String version /* was: str6 */ = "unknown";
                        try {
                            version = new String(packet.getDataArray(), 0, 18, "ISO-8859-1");
                        } catch (UnsupportedEncodingException e8) {
                            s.e(Log.getStackTraceString(e8));
                        }
                        s.e("BoxProtocol,onCmd: Recv CMD_BOX_SOFTWARE_VERSION: " + version);
                        checkBoxVersion(version); /* was: t(str6) */
                        p.f1804b = "BOX:" + version;
                        cn.manstep.phonemirrorBox.BoxInterface.c.e().x(version);
                        if (isWifiSupported) {
                            p.f1804b += "W";
                        }
                        cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 124);
                        return;
                    }
                    return;
                case 240: /* CMD_ENABLE_CRYPT */
                    s.e("BoxProtocol,onCmd: recv  CMD_ENABLE_CRYPT");
                    this.encryptionEnabled = true;
                    return;
                case 255:
                    return;
                default:
                    s.c("BoxProtocol,onCmd: Unknown cmd = " + packet.header.commandType);
                    return;
            }
        }
    }

    /**
     * Handle phone plug-in event. was: method 'Z()'
     */
    private void onPhonePluggedIn() {
        cn.manstep.phonemirrorBox.BoxInterface.b dec; /* was: bVar */
        cn.manstep.phonemirrorBox.BoxInterface.a.A(this.contextRef.get(), true);
        cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 4);
        for (int i2 = 0; i2 < 10 && !MainActivity.b0; i2++) {
            try {
                Thread.sleep(200L);
            } catch (InterruptedException e2) {
                s.f("BoxProtocol", "phonePlugIn: " + s.g(e2));
            }
        }
        if (phoneType == -1) {
            cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 1);
        } else if (this.firstPlugEvent) {
            cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 3);
            this.firstPlugEvent = true;
        } else {
            this.firstPlugEvent = false;
        }
        if (phoneType == -1 || (dec = this.videoDecoder) == null) {
            return;
        }
        dec.g(1, this.videoWidth, this.videoHeight, null, 0);
    }

    /**
     * Main read loop -- reads packets from USB and dispatches commands.
     * was: method 'a0()' = readThreadRun
     */
    private void readThreadRun() {
        s.d("BoxProtocol", "readThreadRun: start " + this);
        Packet packet /* was: lVar */ = new Packet();
        long frameCount /* was: j2 */ = 0;
        long readHeadTime /* was: jElapsedRealtime */ = 0;
        long readDataTime /* was: jElapsedRealtime2 */ = 0;
        while (true) {
            if (!this.threadExit) {
                if (frameCount < 10) {
                    readHeadTime = SystemClock.elapsedRealtime();
                    s.i("BoxProtocol", "readThreadRun: time1=" + readHeadTime);
                }
                if (!cn.manstep.phonemirrorBox.BoxInterface.d.H(packet.getHeaderArray(), packet.getHeaderLength())) {
                    s.f("BoxProtocol", "readThreadRun: readThread err 1");
                    break;
                }
                packet.deserializeHeader(); /* was: l() */
                if (packet.header.isValid()) { /* was: a.c() */
                    packet.ensureCapacity(); /* was: c() */
                    if (frameCount < 10) {
                        readDataTime = SystemClock.elapsedRealtime();
                        s.i("BoxProtocol", "readThreadRun: time2=" + readDataTime);
                    }
                    if (!cn.manstep.phonemirrorBox.BoxInterface.d.H(packet.getDataArray(), packet.getDataLength())) {
                        s.f("BoxProtocol", "readThreadRun: readThread err 2");
                        break;
                    }
                    packet.decryptData(); /* was: k() */
                    if (7 == packet.header.commandType) { /* CMD_AUDIO_FRAME */
                        if (phoneType == -2) {
                            s.f("BoxProtocol", "readThreadRun: (phoneType == PHONE_TYPE_UNKNOWN), CMD_AUDIO_FRAME decode_type=" + packet.getDataBuffer().getInt(0));
                        }
                        if (!this.muteAudioDuringCall && phoneType != -2) {
                            Iterator<cn.manstep.phonemirrorBox.BoxInterface.a> it = this.audioListeners.iterator();
                            while (it.hasNext()) {
                                it.next().t(packet);
                            }
                        }
                    } else {
                        handleCommand(packet); /* was: Y(lVar) */
                    }
                    if (6 == packet.header.commandType) {
                        frameCount++;
                    } else if (4 == packet.header.commandType || 2 == packet.header.commandType) {
                        frameCount = 0;
                    }
                    if (frameCount < 10) {
                        s.i("BoxProtocol", "readThreadRun: readHead=" + (readDataTime - readHeadTime) + ",readData=" + (SystemClock.elapsedRealtime() - readDataTime));
                    }
                } else {
                    s.f("BoxProtocol", "readThreadRun: receive error head!!!");
                    this.openedFlag.b(Boolean.FALSE);
                    sendReboot(); /* was: c1() */
                    readHeadTime = 0;
                }
            } else {
                break;
            }
        }
        this.openedFlag.b(Boolean.FALSE);
        s.d("BoxProtocol", "readThreadRun: end readThread------:" + this);
    }

    /** Save bluetooth pair list from box to file. was: method 'e0(l)' */
    private void saveBluetoothPairList(Packet packet /* was: 'lVar' */) {
        s.d("BoxProtocol", "saveBluetoothPairList: ###");
        Context context = this.contextRef.get();
        if (context == null) {
            return;
        }
        File filesDir = context.getFilesDir();
        if (filesDir.exists() && filesDir.isDirectory()) {
            try {
                int dataLen /* was: iF */ = packet.getDataLength() - 1;
                String data /* was: str */ = new String(packet.getDataArray(), 0, dataLen, "UTF-8");
                if (dataLen > 0) {
                    setBtPairedCount(data.split("\n").length); /* was: j1() */
                } else {
                    setBtPairedCount(0);
                }
                s.c("BoxProtocol,saveBluetoothPairList: " + data);
                s.c("BoxProtocol,saveBluetoothPairList: " + dataLen);
                FileOutputStream fos = new FileOutputStream(filesDir.getAbsolutePath() + "/bluetooth_pair_list");
                fos.write(data.getBytes(), 0, dataLen);
                fos.close();
                cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 210);
            } catch (Exception e2) {
                s.f("BoxProtocol", "saveBluetoothPairList: " + s.g(e2));
            }
        }
    }

    /** Save file received from box to local storage. was: method 'f0(l)' */
    private void saveFileFromBox(Packet packet /* was: 'lVar' */) {
        Context context = this.contextRef.get();
        if (context == null) {
            return;
        }
        String storagePath /* was: strR */ = n.r(context);
        try {
            boolean isApk /* was: z */ = false;
            int nameLen /* was: i2 */ = packet.getDataBuffer().getInt(0);
            String filePath /* was: str */ = new String(packet.getDataArray(), 4, nameLen - 1, "ISO-8859-1");
            int dataOffset /* was: i3 */ = nameLen + 4;
            int contentLen /* was: i4 */ = packet.getDataBuffer().getInt(dataOffset);
            int contentStart /* was: i5 */ = dataOffset + 4;
            String fileName /* was: strSubstring */ = filePath.substring(filePath.lastIndexOf("/") + 1);
            String savePath /* was: strF */ = storagePath + "/" + fileName;
            if (fileName.toLowerCase().contains("log")) {
                savePath = storagePath + "/hwbox.log";
                p.e = savePath;
            } else if (fileName.toLowerCase().contains("apk")) {
                savePath = c0.f(this.contextRef.get());
                isApk = true;
            }
            s.m("BoxProtocol,saveFileFromBox: Recv file " + fileName + " from Box, file content " + contentLen + " byte");
            n.f(savePath);
            n.x(packet.getDataArray(), contentStart, contentLen, savePath);
            if (isApk) {
                cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 33);
            }
        } catch (Exception e2) {
            s.e("BoxProtocol, saveFileFromBox: \n" + Log.getStackTraceString(e2));
        }
    }

    /** Send box config JSON. was: method 'g1(byte[])' */
    private boolean sendBoxConfig(byte[] data /* was: 'bArr' */) {
        return sendDeviceInfo(162, data, data.length); /* was: B0(162, bArr, bArr.length) */
    }

    /** Copy camera preview data. was: method 'k1(byte[], int)' */
    private void copyCameraPreviewData(byte[] data /* was: 'bArr' */, int offset /* was: 'i2' */) {
        byte[] preview /* was: bArr2 */ = this.cameraPreviewData;
        System.arraycopy(data, offset, preview, 0, preview.length);
    }

    /** Handle connection pin code. was: method 'r1(l)' */
    private void handleConnectionPinCode(Packet packet /* was: 'lVar' */) {
        if (isUnauthorized()) {
            return;
        }
        if (packet.getDataLength() >= 4) {
            try {
                int type /* was: i2 */ = packet.getDataBuffer().getInt(0);
                String pinCode /* was: str */ = new String(packet.getDataArray(), 4, (packet.getDataLength() - 4) - 1, "ISO-8859-1");
                s.c("BoxProtocol,showConnectionPinCode: phoneType=" + type + ", Pincode: " + pinCode);
                if (type == 6 || type == 7) {
                    onConnectionPinCode(pinCode); /* was: p1(str) */
                }
            } catch (Exception e2) {
                s.f("BoxProtocol", "showConnectionPinCode: " + s.g(e2));
            }
        }
        cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 230);
    }

    /** Handle connection URL. was: method 's1(l)' */
    private void handleConnectionUrl(Packet packet /* was: 'lVar' */) {
        if (isUnauthorized()) {
            return;
        }
        if (packet.getDataLength() >= 4) {
            try {
                int type /* was: i2 */ = packet.getDataBuffer().getInt(0);
                String url /* was: str */ = new String(packet.getDataArray(), 4, (packet.getDataLength() - 4) - 1, "ISO-8859-1");
                if (!OpenParams.isHiCar()) { /* was: k.i() */
                    url = BuildConfig.FLAVOR;
                }
                s.c("BoxProtocol,showConnectionUrl: phoneType=" + type + ", HiCarURL: " + url);
                if (type == 6) {
                    onConnectionUrl(url); /* was: q1(str) */
                }
            } catch (Exception e2) {
                s.f("BoxProtocol", "showConnectionUrl: " + s.g(e2));
            }
        }
        cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 214);
    }

    /** Check box version string and set unauthorized if invalid. was: method 't(String)' */
    private void checkBoxVersion(String version /* was: 'str' */) {
        if (TextUtils.isEmpty(version) || "unknown".equalsIgnoreCase(version)) {
            return;
        }
        s.c("BoxProtocol,checkBoxVersion: " + version);
        if (version.length() != 18) {
            setUnauthorized(true); /* was: n1(true) */
        } else {
            setUnauthorized(!"Y".equals(version.substring(17, 18)));
        }
    }

    /** Stop all audio playback. was: method 't1()' */
    private void stopAllAudio() {
        if (cn.manstep.phonemirrorBox.BoxInterface.a.g) {
            this.isMicRecording = false;
        }
        s.d("BoxProtocol", "stopAllAudio: AudioPlayerCount=" + this.audioListeners.size());
        Iterator<cn.manstep.phonemirrorBox.BoxInterface.a> it = this.audioListeners.iterator();
        while (it.hasNext()) {
            it.next().K();
        }
    }

    /** Copy asset file to box. was: method 'u(Context, String)' */
    private boolean copyAssetFileToBox(Context context, String assetName /* was: 'str' */) {
        return copyAssetFileToBoxWithPath(context, assetName, "/tmp/" + assetName + "\u0000");
    }

    /** Copy asset file to box with custom path. was: method 'v(Context, String, String)' */
    private boolean copyAssetFileToBoxWithPath(Context context, String assetName /* was: 'str' */, String boxPath /* was: 'str2' */) {
        boolean success;
        try {
            InputStream is = context.getAssets().open(assetName);
            int available = is.available();
            byte[] data = new byte[available];
            int readCount = is.read(data);
            if (readCount != available) {
                s.e("filename = " + assetName + " readCount = " + readCount + ", length = " + available);
                success = false;
            } else {
                success = true;
            }
            uploadFileToBox(boxPath, data); /* was: w1() */
            is.close();
            return success;
        } catch (Exception e2) {
            s.e("BoxProtocol,copyAssetFiletoBox: \n" + Log.getStackTraceString(e2));
            return false;
        }
    }

    /** Send a command with no data. was: method 'v0(int)' */
    private boolean sendCommand(int cmdType /* was: 'i2' */) {
        boolean opened = this.openedFlag.a().booleanValue();
        if (opened) {
            Packet packet = new Packet(0);
            packet.header.commandType = cmdType;
            packet.header.dataLength = 0;
            packet.ensureCapacity();
            packet.serializeHeader();
            synchronized (this) {
                if (!cn.manstep.phonemirrorBox.BoxInterface.d.d0(packet.getHeaderArray(), packet.getHeaderLength())) {
                    s.c("BoxProtocol,sendCmd: cmd = " + cmdType + ", ret = false");
                    opened = false;
                }
            }
        } else {
            s.e("BoxProtocol,sendCmd: bOpened_ = false, cmd = " + cmdType);
        }
        return opened;
    }

    /** Copy local file to box. was: method 'w(String, String)' */
    private boolean copyLocalFileToBox(String localPath /* was: 'str' */, String boxPath /* was: 'str2' */) {
        File file = new File(localPath);
        if (file.exists() && file.isFile()) {
            int length = (int) file.length();
            s.c("BoxProtocol,copyLocalFileToBox: " + localPath + ", length = " + length);
            if (length > 102400) {
                s.c("BoxProtocol,copyLocalFileToBox: The local file that needs to be sent to the box is larger than 100kb!!! ");
                return false;
            }
            try {
                byte[] data = new byte[length];
                FileInputStream fis = new FileInputStream(file);
                fis.read(data);
                fis.close();
                return uploadFileToBox(boxPath, data); /* was: w1() */
            } catch (Exception e2) {
                s.e("BoxProtocol,copyLocalFileToBox: " + Log.getStackTraceString(e2));
            }
        }
        return false;
    }

    /** Send a command with an int parameter. was: method 'w0(int, int)' */
    private boolean sendCommandWithInt(int cmdType /* was: 'i2' */, int param /* was: 'i3' */) {
        boolean opened = this.openedFlag.a().booleanValue();
        if (opened) {
            Packet packet = new Packet(4);
            packet.header.commandType = cmdType;
            packet.header.dataLength = 4;
            packet.ensureCapacity();
            packet.getDataBuffer().putInt(0, param);
            packet.serializeHeader();
            synchronized (this) {
                opened = cn.manstep.phonemirrorBox.BoxInterface.d.d0(packet.getHeaderArray(), packet.getHeaderLength()) ? cn.manstep.phonemirrorBox.BoxInterface.d.d0(packet.getDataArray(), packet.getDataLength()) : false;
                s.c("BoxProtocol,sendCmd: " + cmdType + " " + param + " " + opened);
            }
        } else {
            s.e("BoxProtocol,sendCmd: bOpened_ = false, cmd = " + cmdType + "," + param);
        }
        return opened;
    }

    /** Get CarPlay command name. was: method 'x(int)' */
    private String getCarPlayCommandName(int cmd /* was: 'i2' */) {
        if (cmd == 16) return "CarPlay_StartNightMode";
        if (cmd == 17) return "CarPlay_StopNightMode";
        if (cmd == 30) return "CarPlay_StartBleAdv";
        if (cmd == 31) return "CarPlay_StopBleAdv";
        return BuildConfig.FLAVOR + cmd;
    }

    /** Write an int value to a box file. was: method 'z0(String, int)' */
    private boolean writeIntToBoxFile(String path /* was: 'str' */, int value /* was: 'i2' */) {
        try {
            return uploadFileToBox(path + "\u0000", new byte[]{(byte) (value & 255), (byte) ((value >> 8) & 255), (byte) ((value >> 16) & 255), (byte) ((value >> 24) & 255)});
        } catch (Exception e2) {
            s.e(Log.getStackTraceString(e2));
            return false;
        }
    }

    /* ==================== Public API methods ==================== */

    /** Get bluetooth online list. was: method 'A()' */
    public boolean getBluetoothOnlineList() {
        s.c("BoxProtocol,getBluetoothOnlineList: 1013");
        return sendCarPlayCommand(1013);
    }

    /** Get BT name (package-private). was: method 'B()' */
    String getBluetoothName() {
        return this.btName;
    }

    /** Get display BT name. was: method 'C()' */
    public String getDisplayBluetoothName() {
        return !BuildConfig.FLAVOR.equals(this.btName) ? this.btName : "Auto Box";
    }

    /** Get WiFi name. was: method 'D()' */
    public String getWifiName() {
        return this.wifiName;
    }

    /** Send a key-value info pair. was: method 'D0(String, Object)' */
    public boolean sendInfo(String key, Object value) {
        JSONObject json = new JSONObject();
        try {
            json.put(key, value);
            String jsonStr = json.toString();
            s.d("BoxProtocol", "sendInfo: " + jsonStr);
            return sendBoxInfo(jsonStr.getBytes());
        } catch (JSONException unused) {
            return false;
        }
    }

    /** Get BT online list string. was: method 'E()' */
    public String getBtOnlineListString() {
        return this.btOnlineList;
    }

    /** Send manual disconnect (temporary). was: method 'E0()' */
    public boolean sendManualDisconnectTemp() {
        s.d("BoxProtocol", "sendManualDisconnectTemp: isUnauthorized=" + this.isUnauthorized);
        return sendCommand(15);
    }

    /** Get BT paired count. was: method 'F()' */
    public int getBtPairedCount() {
        return this.btPairedCount;
    }

    /** Send mic type. was: method 'F0(int)' */
    public boolean sendMicType(int micType /* was: 'i2' */) {
        return micType == 1 ? sendCarPlayCommand(15) : micType == 2 ? sendCarPlayCommand(21) : sendCarPlayCommand(7);
    }

    /** Get camera preview data. was: method 'G()' */
    public byte[] getCameraPreviewData() {
        return this.cameraPreviewData;
    }

    /** Send multi-touch event to box. was: method 'G0(e)' = sendMultiTouch() */
    public void sendMultiTouch(cn.manstep.phonemirrorBox.BoxInterface.e touchEvent /* was: 'eVar' */) {
        if (this.openedFlag.a().booleanValue()) {
            Packet packet = new Packet(touchEvent.a());
            packet.header.commandType = 23; /* CMD_MULTI_TOUCH */
            packet.ensureCapacity();
            touchEvent.c(packet.getDataBuffer(), 0);
            packet.serializeHeader();
            synchronized (this) {
                if (!cn.manstep.phonemirrorBox.BoxInterface.d.d0(packet.getHeaderArray(), packet.getHeaderLength())) {
                    s.e("Send multi touch head err");
                } else if (!cn.manstep.phonemirrorBox.BoxInterface.d.d0(packet.getDataArray(), packet.getDataLength())) {
                    s.e("Send multi touch data err");
                }
            }
        }
    }

    /** Get call audio player. was: method 'H()' */
    public cn.manstep.phonemirrorBox.BoxInterface.a getCallAudioPlayer() {
        int idx = this.callAudioPlayerIndex;
        if (idx == -1) {
            return null;
        }
        return getAudioListener(idx);
    }

    /** Send PID info. was: method 'H0()' */
    public void sendPid() {
        JSONObject json = new JSONObject();
        try {
            json.put("pid", Process.myPid());
        } catch (JSONException e2) {
            s.d("BoxProtocol", "sendPid: " + s.g(e2));
        }
        String jsonStr = json.toString();
        s.d("BoxProtocol", "sendPid: " + jsonStr);
        sendDeviceInfoString(160, jsonStr, false);
    }

    /** Get HiCar connect mode. was: method 'I()' */
    public int getHiCarConnectMode() {
        return 0;
    }

    /** Send single touch event. was: method 'I0(int, int, int, int)' */
    public void sendSingleTouch(int action /* was: 'i2' */, int pointer /* was: 'i3' */, int x /* was: 'i4' */, int y /* was: 'i5' */) {
        if (this.openedFlag.a().booleanValue()) {
            Packet packet = new Packet(16);
            packet.header.commandType = 5; /* CMD_TOUCH */
            packet.ensureCapacity();
            if (action == 0) {
                packet.getDataBuffer().putInt(0, 14);
            } else if (action == 1) {
                packet.getDataBuffer().putInt(0, 15);
            } else if (action == 2) {
                packet.getDataBuffer().putInt(0, 16);
            }
            packet.getDataBuffer().putInt(0, (pointer << 8) | packet.getDataBuffer().getInt(0));
            packet.getDataBuffer().putInt(4, x);
            packet.getDataBuffer().putInt(8, y);
            packet.getDataBuffer().putInt(12, this.encoderType | (this.offScreen << 16));
            packet.serializeHeader();
            synchronized (this) {
                if (!cn.manstep.phonemirrorBox.BoxInterface.d.d0(packet.getHeaderArray(), packet.getHeaderLength())) {
                    s.e("Send touch head err");
                } else if (!cn.manstep.phonemirrorBox.BoxInterface.d.d0(packet.getDataArray(), packet.getDataLength())) {
                    s.e("Send touch data err");
                }
            }
        }
    }

    /** Get phone mode strategy. was: method 'J()' */
    public cn.manstep.phonemirrorBox.q0.g getPhoneModeStrategy() {
        return this.phoneModeStrategy;
    }

    /** Send info with int value (if positive). was: method 'J0(String, int)' */
    public boolean sendInfoInt(String key, int value) {
        if (value > 0) {
            return sendInfo(key, Integer.valueOf(value));
        }
        return false;
    }

    /** Get phone type. was: method 'K()' */
    public int getPhoneType() {
        return phoneType;
    }

    /** Send WiFi type. was: method 'K0(int)' */
    public boolean sendWifiType(int type /* was: 'i2' */) {
        return type == 5 ? sendCarPlayCommand(25) : sendCarPlayCommand(24);
    }

    /** Get connection URL. was: method 'L()' */
    public String getConnectionUrl() {
        return this.connectionUrl;
    }

    /** Send Android work mode. was: method 'L0(int)' */
    public boolean sendAndroidWorkMode(int mode /* was: 'i2' */) {
        s.e("BoxProtocol,send_AndroidWorkMode: mode = " + mode);
        return writeIntToBoxFile("/etc/android_work_mode", mode);
    }

    /** Send CarPlay logo type. was: method 'M0(int)' */
    public boolean sendCarPlayLogoType(int type /* was: 'i2' */) {
        s.d("BoxProtocol", "send_CarplayLogoType: type=" + type);
        return sendCommandWithInt(9, type);
    }

    /** Send night mode. was: method 'N0(int)' */
    public boolean sendNightMode(int mode /* was: 'i2' */) {
        s.c("BoxProtocol,send_NightMode: " + mode + " (0:day 1:night)");
        if (mode == 0) {
            sendCarPlayCommand(17);
        } else if (1 == mode) {
            sendCarPlayCommand(16);
        } else {
            setBoxConfigInt("DayNightMode", 2);
        }
        return writeIntToBoxFile("/tmp/night_mode", mode);
    }

    /** Send screen DPI (auto-detect). was: method 'O0()' */
    public boolean sendScreenDpiAuto() {
        return sendScreenDpi(cn.manstep.phonemirrorBox.BoxInterface.d.A() ? cn.manstep.phonemirrorBox.c0.i().h() : cn.manstep.phonemirrorBox.c0.i().f());
    }

    /** Send screen DPI. was: method 'P0(int)' */
    public boolean sendScreenDpi(int dpiValue /* was: 'i2' */) {
        s.c("BoxProtocol,send_ScreenDPI: " + dpiValue);
        return writeIntToBoxFile("/tmp/screen_dpi", dpiValue);
    }

    /** Initialize bound size from config. was: method 'Q()' */
    public void initBoundSize() {
        this.boundWidth = cn.manstep.phonemirrorBox.c0.t().f1934b;
        this.boundHeight = cn.manstep.phonemirrorBox.c0.t().f1935c;
        s.c("BoxProtocol,initBoundSize: " + this.boundWidth + "x" + this.boundHeight);
    }

    /** Send request (cmd 21). was: method 'Q0()' */
    public boolean sendRequest21() {
        return sendCommand(21);
    }

    /** Write a complete packet to USB (header + data). was: method 'R0(l)' = writePacket() */
    public boolean writePacket(Packet packet /* was: 'lVar' */) {
        packet.serializeHeader();
        synchronized (this) {
            if (!cn.manstep.phonemirrorBox.BoxInterface.d.d0(packet.getHeaderArray(), packet.getHeaderLength())) {
                s.e("BoxProtocol,send_audio_record: Write audioRecord head err");
                return false;
            }
            if (cn.manstep.phonemirrorBox.BoxInterface.d.d0(packet.getDataArray(), packet.getDataLength())) {
                return true;
            }
            s.e("BoxProtocol,send_audio_record: Write audioRecord data err");
            return false;
        }
    }

    /** Check if phone is AndroidAuto type. was: method 'S()' */
    public boolean isAndroidAutoPhone() {
        return phoneType == 5;
    }

    /** Send camera info. was: method 'S0(byte[])' */
    public boolean sendCameraInfo(byte[] data /* was: 'bArr' */) {
        if (data == null) {
            return false;
        }
        Packet packet = new Packet(0);
        packet.header.commandType = 22; /* CMD_CAMERA_DATA */
        packet.header.dataLength = data.length + 4;
        packet.ensureCapacity();
        packet.getDataBuffer().putInt(0, 1);
        System.arraycopy(data, 0, packet.getDataArray(), 4, data.length);
        packet.serializeHeader();
        synchronized (this) {
            if (!cn.manstep.phonemirrorBox.BoxInterface.d.d0(packet.getHeaderArray(), packet.getHeaderLength())) {
                s.e("BoxProtocol,send_camera_info: Write head err");
                return false;
            }
            if (cn.manstep.phonemirrorBox.BoxInterface.d.d0(packet.getDataArray(), packet.getDataLength())) {
                return true;
            }
            s.e("BoxProtocol,send_camera_info: Write data err");
            return false;
        }
    }

    /** Check if phone is CarPlay type. was: method 'T()' */
    public boolean isCarPlayPhone() {
        return phoneType == 3;
    }

    /** Send CarPlay command. was: method 'T0(int)' */
    public boolean sendCarPlayCommand(int cmd /* was: 'i2' */) {
        s.d("BoxProtocol", "send_carplay_cmd: " + getCarPlayCommandName(cmd));
        return sendCommandWithInt(8, cmd);
    }

    /** Check if phone is HiCar type. was: method 'U()' */
    public boolean isHiCarPhone() {
        return phoneType == 6;
    }

    /** Send debug test. was: method 'U0(int)' */
    public boolean sendDebugTest(int param /* was: 'i2' */) {
        return sendCommandWithInt(136, param);
    }

    /** Check if iPhone work mode is invalid. was: method 'V()' */
    public boolean isIphoneWorkModeInvalid() {
        return OpenParams.iphoneWorkMode == 0;
    }

    /** Send enable crypt. was: method 'V0()' */
    public boolean sendEnableCrypt() {
        boolean result;
        while (this.aesKey <= 0) {
            this.aesKey = new Random().nextInt(Integer.MAX_VALUE);
        }
        Packet packet = new Packet(4);
        packet.header.commandType = 240; /* CMD_ENABLE_CRYPT */
        packet.header.dataLength = 4;
        packet.ensureCapacity();
        packet.getDataBuffer().putInt(0, this.aesKey);
        packet.serializeHeader();
        cn.manstep.phonemirrorBox.BoxInterface.d.W(this.aesKey);
        synchronized (this) {
            result = cn.manstep.phonemirrorBox.BoxInterface.d.d0(packet.getHeaderArray(), packet.getHeaderLength()) ? cn.manstep.phonemirrorBox.BoxInterface.d.d0(packet.getDataArray(), packet.getDataLength()) : false;
            s.c("BoxProtocol,sendCmd CMD_ENABLE_CRYPT: " + this.aesKey + ", ret = " + result);
        }
        return result;
    }

    /** Check if unauthorized. was: method 'W()' */
    public boolean isUnauthorized() {
        return this.isUnauthorized;
    }

    /** Send debug command. was: method 'W0(int)' */
    public boolean sendDebugCmd(int param /* was: 'i2' */) {
        return sendCommandWithInt(119, param);
    }

    /** Send g_Open (video negotiation). was: method 'X0()' = sendOpen() */
    public boolean sendOpen() {
        if (isUnauthorized()) {
            return false;
        }
        sendPid();
        OpenParams params = this.openParams;
        params.frameRate = p.C;
        if (p.g) {
            params.width = this.boundWidth;
            params.height = this.boundHeight;
            this.dpi = 160;
            params.frameRate = 25;
        } else {
            params.width = this.boundWidth;
            params.height = this.boundHeight;
            if (cn.manstep.phonemirrorBox.BoxInterface.d.A()) {
                this.dpi = b0.i().m("DPI", cn.manstep.phonemirrorBox.c0.i().h());
            } else {
                this.dpi = b0.i().m("DPI", cn.manstep.phonemirrorBox.c0.i().f());
            }
        }
        sendEnableCrypt();
        sendScreenDpi(this.dpi);
        s.h("BoxProtocol,send_g_open: AutoPlay Video resolution and frame rate: " + (BuildConfig.FLAVOR + this.openParams.width + "x" + this.openParams.height + "@" + this.openParams.frameRate + "fps, dpi=" + this.dpi) + ", Config.bUseSoftDecode = " + p.g);
        sendAndroidWorkMode(OpenParams.getAndroidWorkMode());
        int currentPhoneType = p.r;
        if (currentPhoneType < 0) {
            this.openParams.boxVersion = p.a();
        } else {
            this.openParams.boxVersion = currentPhoneType;
        }
        s.c("BoxProtocol,send_g_open: g_Open.iBoxversion = " + this.openParams.boxVersion);
        int iphoneMode = OpenParams.iphoneWorkMode;
        if (iphoneMode > 4 || iphoneMode < 0) {
            s.e("BoxProtocol,send_g_open: error phoneWorkMode=" + OpenParams.iphoneWorkMode);
            OpenParams.iphoneWorkMode = 2;
        }
        s.e("BoxProtocol,send_g_open: phoneWorkMode=" + OpenParams.getIphoneWorkModeName(OpenParams.iphoneWorkMode) + ",androidWorkMode=" + OpenParams.getAndroidWorkModeName(OpenParams.androidWorkMode));
        Packet packet = new Packet(OpenParams.getSize());
        packet.header.commandType = 1; /* CMD_OPEN */
        packet.header.dataLength = OpenParams.getSize();
        packet.ensureCapacity();
        byte[] openBytes = this.openParams.toByteArray();
        System.arraycopy(openBytes, 0, packet.getDataArray(), 0, openBytes.length);
        packet.serializeHeader();
        synchronized (this) {
            if (!cn.manstep.phonemirrorBox.BoxInterface.d.d0(packet.getHeaderArray(), packet.getHeaderLength())) {
                s.e("BoxProtocol,send_g_open: Write g_Open head err");
                return false;
            }
            if (cn.manstep.phonemirrorBox.BoxInterface.d.d0(packet.getDataArray(), packet.getDataLength())) {
                s.e("BoxProtocol,send_g_open: success ");
                return true;
            }
            s.e("BoxProtocol,send_g_open: Write g_Open data err");
            return false;
        }
    }

    /** Send open asynchronously. was: method 'Y0()' */
    public void sendOpenAsync() {
        new Thread(new SendOpenAsyncRunnable(), "send_g_open_async").start();
    }

    /** Send invalid iPhone mode. was: method 'Z0()' */
    public boolean sendInvalidIphoneMode() {
        return uploadFileToBox("/tmp/iphone_work_mode\u0000", new byte[]{0});
    }

    /** Upload assets (mirror support files) to box. was: method 'a(Context)' */
    public boolean uploadAssets(Context context) {
        if (context != null) {
            return cn.manstep.phonemirrorBox.BoxInterface.c.e().p().compareTo("2022") > 0 ? copyAssetFileToBox(context, "other_link.hwfs") : copyAssetFileToBox(context, "adb") && copyAssetFileToBox(context, "adb.pub") && copyAssetFileToBox(context, "helloworld0") && copyAssetFileToBox(context, "helloworld1") && copyAssetFileToBox(context, "helloworld2") && copyAssetFileToBox(context, "libby265n.so") && copyAssetFileToBox(context, "libby265n_x86.so") && copyAssetFileToBox(context, "libscreencap40.so") && copyAssetFileToBox(context, "libscreencap41.so") && copyAssetFileToBox(context, "libscreencap43.so") && copyAssetFileToBox(context, "libscreencap50.so") && copyAssetFileToBox(context, "libscreencap50_x86.so") && copyAssetFileToBox(context, "libscreencap442.so") && copyAssetFileToBox(context, "libscreencap422.so") && copyAssetFileToBox(context, "mirrorcoper.apk") && copyAssetFileToBox(context, "libscreencap60.so") && copyAssetFileToBox(context, "libscreencap70.so") && copyAssetFileToBox(context, "libscreencap71.so") && copyAssetFileToBox(context, "libscreencap80.so") && copyAssetFileToBox(context, "libscreencap90.so") && copyAssetFileToBox(context, "libscreencap100.so") && copyAssetFileToBox(context, "HWTouch.dex");
        }
        s.e("BoxProtocol,UploadAssets: context==null");
        return false;
    }

    /** Start send invalid mode thread. was: method 'a1()' */
    public void startSendInvalidMode() {
        new Thread(new SendInvalidModeRunnable(), "send_invalidMode").start();
    }

    /** Placeholder (unused). was: method 'b()' */
    public void b() {
    }

    /** Reset protocol state. was: method 'b0()' */
    public void resetProtocolState() {
        s.d("BoxProtocol", "reset: " + this);
        this.boxMicDetected = false;
        isWifiSupported = false;
        phoneType = -2;
        isAutoConnectSupported = false;
        this.canAutoConnect = true;
        isPhoneConnected = false;
        this.encryptionEnabled = false;
        this.bluetoothConnected = false;
        int unusedMode = OpenParams.iphoneWorkMode;
    }

    /** Send manual disconnect. was: method 'b1()' */
    public boolean sendManualDisconnect() {
        this.canAutoConnect = false;
        isPhoneConnected = false;
        phoneType = -2;
        s.d("BoxProtocol", "send_manualDisconnect: isUnauthorized=" + this.isUnauthorized);
        return sendCommand(15);
    }

    /** Write AirPlay config. was: method 'c(Context)' */
    public void writeAirplayConfig(Context context) {
        if (context == null || b0.i().m("CarPlayLogoType", 1) == 2) {
            return;
        }
        b0 prefs = b0.i();
        String oemLabel = BuildConfig.FLAVOR;
        String oemIconName = prefs.n("CarPlayOEMIconName", BuildConfig.FLAVOR);
        if (!TextUtils.isEmpty(oemIconName) && !oemIconName.toLowerCase().contains("default") && !oemIconName.toLowerCase().contains("custom")) {
            oemLabel = "oemIconLabel = " + oemIconName + "\n";
        }
        uploadFileToBox("/etc/airplay.conf\u0000", ("oemIconVisible = 1\n" + oemLabel + ("name = " + getDisplayBluetoothName() + "\n") + "model = Magic-Car-Link-1.00\noemIconPath = /etc/oem_icon.png\n").getBytes());
    }

    /** Change framerate and resend open. was: method 'c0(int)' */
    public boolean changeFrameRate(int frameRate /* was: 'i2' */) {
        OpenParams params = this.openParams;
        p.C = frameRate;
        params.frameRate = frameRate;
        return sendOpen();
    }

    /** Send reboot command. was: method 'c1()' */
    public boolean sendReboot() {
        boolean success = false;
        Packet packet = new Packet(0);
        packet.header.commandType = 206; /* CMD_BOX_REBOOT */
        packet.ensureCapacity();
        packet.serializeHeader();
        synchronized (this) {
            if (cn.manstep.phonemirrorBox.BoxInterface.d.d0(packet.getHeaderArray(), packet.getHeaderLength())) {
                success = true;
            } else {
                s.e("BoxProtocol,sendCmd: CMD_BOX_REBOOT , ret = false");
            }
        }
        return success;
    }

    /** Placeholder (unused). was: method 'd()' */
    public void d() {
    }

    /** Change bound size and resend open. was: method 'd0(int, int)' */
    public boolean changeBoundSize(int width /* was: 'i2' */, int height /* was: 'i3' */) {
        this.boundWidth = width;
        this.boundHeight = height;
        return sendOpen();
    }

    /** Set speaker muted. was: method 'd1(boolean)' */
    public void setSpeakerMuted(boolean muted /* was: 'z' */) {
        cn.manstep.phonemirrorBox.BoxInterface.a.I(muted);
    }

    /** Upload local logo (entry point). was: method 'e()' */
    public void uploadLocalLogo() {
        uploadLocalLogoPNG(this.contextRef.get());
    }

    /** Set box BT name. was: method 'e1(byte[])' */
    public boolean setBoxBluetoothName(byte[] name /* was: 'bArr' */) {
        s.c("BoxProtocol,setBoxBluetoothName: " + name.length);
        if (name.length <= 15) {
            return sendDeviceInfo(13, name, name.length);
        }
        s.c("BoxProtocol,setBoxBluetoothName: Bluetooth name is too long.");
        return false;
    }

    /** Upload local logo PNG. was: method 'f(Context)' */
    public void uploadLocalLogoPNG(Context context) {
        String filePath;
        int brandId;
        if (context == null) {
            return;
        }
        int logoType = b0.i().m("CarPlayLogoType", 1);
        if (logoType == 2) {
            filePath = "carplay";
            brandId = 0;
        } else {
            filePath = b0.i().n("CarPlayOEMIconPath", BuildConfig.FLAVOR);
            brandId = b0.i().m("CarBrandId", 0);
        }
        sendCarManufacturerInfo(brandId, 0);
        s.c("BoxProtocol,UploadLocalLogoPNGPublic: filePath = " + filePath);
        if (TextUtils.isEmpty(filePath)) {
            sendCarPlayLogoType(1);
            if (copyAssetFileToBoxWithPath(context, "CarLogo/default.png", "/etc/icon_120x120.png\u0000")) {
                copyAssetFileToBoxWithPath(context, "CarLogo/default.png", "/etc/icon_180x180.png\u0000");
                copyAssetFileToBoxWithPath(context, "CarLogo/default.png", "/etc/icon_256x256.png\u0000");
                return;
            }
            return;
        }
        if (filePath.contains("custom")) {
            copyLocalFileToBox(filePath, "/etc/icon_120x120.png\u0000");
            copyLocalFileToBox(filePath, "/etc/icon_180x180.png\u0000");
            copyLocalFileToBox(filePath, "/etc/icon_256x256.png\u0000");
            writeAirplayConfig(this.contextRef.get());
            return;
        }
        copyAssetFileToBoxWithPath(context, filePath, "/etc/icon_120x120.png\u0000");
        copyAssetFileToBoxWithPath(context, filePath, "/etc/icon_180x180.png\u0000");
        copyAssetFileToBoxWithPath(context, filePath, "/etc/icon_256x256.png\u0000");
        if (logoType == 2) {
            sendCarPlayLogoType(2);
        } else {
            sendCarPlayLogoType(1);
            writeAirplayConfig(this.contextRef.get());
        }
    }

    /** Set box config with int value. was: method 'f1(String, int)' */
    public boolean setBoxConfigInt(String key /* was: 'str' */, int value /* was: 'i2' */) {
        JSONObject json = new JSONObject();
        try {
            json.put(key, value);
            String jsonStr = json.toString();
            s.i("BoxProtocol", "setBoxConfig: " + jsonStr);
            return sendBoxConfig(jsonStr.getBytes());
        } catch (JSONException unused) {
            return false;
        }
    }

    /** Send AndroidAuto video size to box. was: method 'g0(int, int)' = sendAndroidAutoSize() */
    public boolean sendAndroidAutoSize(int width /* was: 'i2' */, int height /* was: 'i3' */) {
        JSONObject json = new JSONObject();
        try {
            json.put("androidAutoSizeW", width);
            json.put("androidAutoSizeH", height);
            String jsonStr = json.toString();
            s.c("BoxProtocol,sendAndroidAutoSize: " + jsonStr);
            return sendBoxInfo(jsonStr.getBytes());
        } catch (JSONException e2) {
            s.d("BoxProtocol", "sendAndroidAutoSize: \n" + s.g(e2));
            return false;
        }
    }

    /** Send Android work mode assets if needed. was: method 'h0()' */
    public boolean sendAndroidWorkModeAssets() {
        if ((OpenParams.getAndroidWorkMode() == 3 || OpenParams.getIphoneWorkMode() == 3) && !this.assetsUploaded) {
            if (uploadAssets(this.contextRef.get())) {
                this.assetsUploaded = true;
            } else {
                s.e("BoxProtocol,sendAndroidWorkModeAssets: UploadAssets failed!");
            }
        }
        return this.assetsUploaded;
    }

    /** Send box info JSON. was: method 'h1(byte[])' */
    public boolean sendBoxInfo(byte[] data /* was: 'bArr' */) {
        return sendDeviceInfo(25, data, data.length);
    }

    /** Send app info. was: method 'i0()' */
    public boolean sendAppInfo() {
        JSONObject json = new JSONObject();
        try {
            json.put("version", "2025.03.19.1126");
            json.put("code", 37);
            json.put("lang", BuildConfig.FLAVOR + x.c());
            json.put("uuid", u.z().I());
            json.put("size", BuildConfig.FLAVOR + p.k + "x" + p.l);
            json.put("model", Build.MODEL);
            json.put("platform", p.c("ro.board.platform", BuildConfig.FLAVOR));
            json.put("android", BuildConfig.FLAVOR + Build.VERSION.RELEASE + "(" + Build.VERSION.SDK_INT + ")");
            json.put("huid", u.z().w());
        } catch (JSONException e2) {
            s.d("BoxProtocol", "sendAppInfo: " + s.g(e2));
        }
        return sendAppInfoBytes(json.toString().getBytes());
    }

    /** Set box WiFi name. was: method 'i1(byte[])' */
    public boolean setBoxWifiName(byte[] name /* was: 'bArr' */) {
        s.c("BoxProtocol,setBoxWifiName: " + name.length);
        if (name.length <= 15) {
            return sendDeviceInfo(14, name, name.length);
        }
        s.c("BoxProtocol,setBoxWifiName: Wifi name is too long.");
        return false;
    }

    /** Send app info bytes. was: method 'j0(byte[])' */
    public boolean sendAppInfoBytes(byte[] data /* was: 'bArr' */) {
        return sendDeviceInfo(160, data, data.length);
    }

    /** Set BT paired count. was: method 'j1(int)' */
    public void setBtPairedCount(int count /* was: 'i2' */) {
        s.c("BoxProtocol,setBtPairedCount: count = " + count);
        this.btPairedCount = count;
    }

    /** Set audio transfer mode. was: method 'k0(boolean)' */
    public boolean setAudioTransferMode(boolean mode /* was: 'z' */) {
        this.muteAudioDuringCall = mode;
        return mode ? sendCarPlayCommand(22) : sendCarPlayCommand(23);
    }

    /** Send auto connect by BT address. was: method 'l0(byte[])' */
    public boolean sendAutoConnByBtAddr(byte[] addr /* was: 'bArr' */) {
        s.c("BoxProtocol,sendAutoConnByBtAddr: " + addr.length);
        if (addr.length != 17) {
            return false;
        }
        return sendDeviceInfo(17, addr, 17);
    }

    /** Set call audio player index. was: method 'l1(int)' */
    public void setCallAudioPlayerIndex(int index /* was: 'i2' */) {
        this.callAudioPlayerIndex = index;
    }

    /** Send auto connect. was: method 'm0()' */
    public boolean sendAutoConnect() {
        s.c("BoxProtocol,sendAutoConnect: cmd=1002," + this.canAutoConnect + ", bOpened_=" + this.openedFlag.a());
        if (isUnauthorized() || !this.canAutoConnect) {
            return false;
        }
        if (!this.bluetoothConnected) {
            return sendCarPlayCommand(1002);
        }
        s.f("BoxProtocol", "sendAutoConnect: bBluetoothConnected=true");
        return false;
    }

    /** Placeholder (unused). was: method 'm1(int)' */
    public void m1(int i2) {
    }

    /** Send BT address. was: method 'n0(byte[])' */
    public boolean sendBluetoothAddr(byte[] addr /* was: 'bArr' */) {
        s.c("BoxProtocol,sendBluetoothAddr: " + addr.length);
        if (addr.length != 17) {
            return false;
        }
        return sendDeviceInfo(10, addr, 17);
    }

    /** Set unauthorized flag. was: method 'n1(boolean)' */
    public void setUnauthorized(boolean unauthorized /* was: 'z' */) {
        this.isUnauthorized = unauthorized;
        if (unauthorized) {
            s.e("BoxProtocol,setUnauthorized: " + unauthorized);
            cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 123);
        }
    }

    /** Send BT paired list. was: method 'o0(byte[], int)' */
    public boolean sendBluetoothPairedList(byte[] data /* was: 'bArr' */, int length /* was: 'i2' */) {
        s.d("BoxProtocol", "sendBluetoothPairedList: " + length);
        return sendDeviceInfo(18, data, length);
    }

    /** Set WiFi channel. was: method 'o1(int)' */
    public boolean setWifiChannel(int channel /* was: 'i2' */) {
        return setBoxConfigInt("WiFiChannel", channel);
    }

    /** Send BT pin code. was: method 'p0(byte[])' */
    public boolean sendBluetoothPinCode(byte[] pin /* was: 'bArr' */) {
        s.c("BoxProtocol,sendBluetoothPinCode: " + pin.length);
        if (pin.length != 4) {
            return false;
        }
        return sendDeviceInfo(12, pin, 4);
    }

    /** Connection pin code callback (placeholder). was: method 'p1(String)' */
    public void onConnectionPinCode(String pinCode /* was: 'str' */) {
    }

    /** Send all box settings (media delay, drive position, AA size, etc.). was: method 'q0()' = sendBoxAllSettings() */
    public boolean sendBoxAllSettings() {
        int mediaDelay = b0.i().m("mediaDelay", 300);
        JSONObject json = new JSONObject();
        try {
            json.put("syncTime", TimeUnit.MILLISECONDS.toSeconds(System.currentTimeMillis()));
            json.put("mediaDelay", mediaDelay);
            json.put("drivePosition", b0.i().o("IsLeftDrive", true) ? 0 : 1);
            cn.manstep.phonemirrorBox.util.x aaSize = cn.manstep.phonemirrorBox.c0.b(b0.i().m("vandroidautoh", 720));
            json.put("androidAutoSizeW", aaSize.f1934b);
            json.put("androidAutoSizeH", aaSize.f1935c);
            json.put("HiCarConnectMode", getHiCarConnectMode());
            json.put("GNSSCapability", 7);
            json.put("DashboardInfo", 1);
            if (u.z().b0()) {
                json.put("UseBTPhone", 1);
            } else {
                json.put("UseBTPhone", 0);
            }
            String jsonStr = json.toString();
            s.c("BoxProtocol,sendBoxAllSettings: " + jsonStr);
            return sendBoxInfo(jsonStr.getBytes());
        } catch (JSONException e2) {
            s.f("BoxProtocol", "sendBoxAllSettings: " + s.g(e2));
            return false;
        }
    }

    /** Connection URL callback. was: method 'q1(String)' */
    public void onConnectionUrl(String url /* was: 'str' */) {
        this.connectionUrl = url;
    }

    /** Send box name. was: method 'r0(byte[])' */
    public boolean sendBoxName(byte[] name /* was: 'bArr' */) {
        if (name.length <= 16) {
            return uploadFileToBox("/etc/box_name\u0000", name);
        }
        s.c("BoxProtocol,sendBoxName: Box name is too long.");
        return false;
    }

    /** Send info JSON (alternative). was: method 's0(String, Object)' */
    public boolean sendInfoJson(String key /* was: 'str' */, Object value /* was: 'obj' */) {
        JSONObject json = new JSONObject();
        try {
            json.put(key, value);
            return sendBoxInfo(json.toString().getBytes());
        } catch (JSONException unused) {
            return false;
        }
    }

    /** Send car manufacturer info. was: method 't0(int, int)' */
    public boolean sendCarManufacturerInfo(int brandId /* was: 'i2' */, int param2 /* was: 'i3' */) {
        s.c("BoxProtocol,sendCarManufacturerInfo: " + brandId + ", " + param2);
        ByteBuffer buf = ByteBuffer.allocate(8);
        buf.order(ByteOrder.LITTLE_ENDIAN);
        buf.putInt(0, brandId);
        buf.putInt(4, param2);
        return sendDeviceInfo(20, buf.array(), 8);
    }

    /** Send charge mode. was: method 'u0(int)' */
    public boolean sendChargeMode(int mode /* was: 'i2' */) {
        s.c("BoxProtocol,sendChargeMode: " + mode);
        return writeIntToBoxFile("/tmp/charge_mode", mode);
    }

    /** Initialize check-open thread. was: method 'u1()' */
    public void initCheckOpenThread() {
        if (this.checkOpenThread == null) {
            this.checkOpenThread = new Thread(new CheckOpenRunnable(), "checkOpen");
        }
    }

    /** Start heartbeat timer (every 2 seconds). was: method 'v1()' = startHeartbeat() */
    public void startHeartbeat() {
        if (this.heartbeatScheduler == null) {
            cn.manstep.phonemirrorBox.h0.b threadFactory = new cn.manstep.phonemirrorBox.h0.b();
            threadFactory.f("heartBeat-%d");
            ScheduledThreadPoolExecutor executor = new ScheduledThreadPoolExecutor(1, threadFactory.b());
            this.heartbeatScheduler = executor;
            executor.scheduleAtFixedRate(new HeartbeatTask(), 0L, 2000L, TimeUnit.MILLISECONDS);
        }
    }

    /** Upload file to box via CMD_FILE_TRANSFER (153). was: method 'w1(String, byte[])' */
    public boolean uploadFileToBox(String boxPath /* was: 'str' */, byte[] data /* was: 'bArr' */) {
        if (data.length > 52428800) {
            s.f("BoxProtocol", "upload_file_to_box: The file is too large. size=" + data.length);
            return false;
        }
        byte[] pathBytes = boxPath.getBytes();
        int pathLen = pathBytes.length;
        int dataLen = data.length;
        int totalLen = pathLen + 4 + 4 + dataLen;
        Packet packet = new Packet(totalLen);
        packet.header.commandType = 153; /* CMD_FILE_TRANSFER */
        packet.header.dataLength = totalLen;
        packet.ensureCapacity();
        packet.getDataBuffer().putInt(0, pathLen);
        int offset = 0;
        int writePos = 4;
        while (offset < pathBytes.length) {
            packet.getDataBuffer().put(writePos, pathBytes[offset]);
            offset++;
            writePos++;
        }
        packet.getDataBuffer().putInt(writePos, dataLen);
        System.arraycopy(data, 0, packet.getDataArray(), writePos + 4, dataLen);
        packet.serializeHeader();
        synchronized (this) {
            if (!cn.manstep.phonemirrorBox.BoxInterface.d.d0(packet.getHeaderArray(), packet.getHeaderLength())) {
                s.e("BoxProtocol,upload_file_to_box: Write carplay_cmd head err, boxFileName: " + boxPath);
                return false;
            }
            if (cn.manstep.phonemirrorBox.BoxInterface.d.d0(packet.getDataArray(), packet.getDataLength())) {
                s.e("BoxProtocol,upload_file_to_box: send_carplay_cmd() success , boxFileName: " + boxPath);
                return true;
            }
            s.e("BoxProtocol,upload_file_to_box: Write carplay_cmd data err, boxFileName: " + boxPath);
            return false;
        }
    }

    /** Send key-only touch event (down/up/cancel). was: method 'x0(int)' */
    public void sendKeyTouch(int action /* was: 'i2' */) {
        if (this.openedFlag.a().booleanValue()) {
            Packet packet = new Packet(16);
            packet.header.dataLength = 16;
            packet.header.commandType = 5; /* CMD_TOUCH */
            packet.ensureCapacity();
            if (action == 0) {
                packet.getDataBuffer().putInt(0, 11);
            } else if (action == 1) {
                packet.getDataBuffer().putInt(0, 12);
            } else if (action != 2) {
                return;
            } else {
                packet.getDataBuffer().putInt(0, 13);
            }
            packet.serializeHeader();
            synchronized (this) {
                if (!cn.manstep.phonemirrorBox.BoxInterface.d.d0(packet.getHeaderArray(), packet.getHeaderLength())) {
                    s.e("Send commadn head err");
                } else if (!cn.manstep.phonemirrorBox.BoxInterface.d.d0(packet.getDataArray(), packet.getDataLength())) {
                    s.e("Send command data err");
                }
            }
        }
    }

    /** Shutdown the protocol -- stops all threads and releases resources. was: method 'y()' = shutdown() */
    public void shutdown() {
        this.threadExit = true;
        this.videoWidth = 0;
        this.videoHeight = 0;
        AudioFrameQueue queue = this.audioQueue;
        if (queue != null) {
            queue.wakeUp();
            this.audioQueue = null;
        }
        setUnauthorized(false);
        try {
            try {
                if (this.heartbeatScheduler != null) {
                    this.heartbeatScheduler.shutdown();
                }
                if (this.checkOpenThread != null) {
                    this.checkOpenThread.join(800L);
                }
                if (this.readThread != null) {
                    this.readThread.join(800L);
                }
                if (this.iosAudioThread != null) {
                    this.iosAudioThread.join(800L);
                }
                if (this.audioRecordThread != null) {
                    synchronized (cn.manstep.phonemirrorBox.BoxInterface.a.h) {
                        cn.manstep.phonemirrorBox.BoxInterface.a.h.notify();
                    }
                    this.audioRecordThread.join(800L);
                }
            } catch (InterruptedException e2) {
                s.e(Log.getStackTraceString(e2));
            }
            this.heartbeatScheduler = null;
            this.readThread = null;
            this.checkOpenThread = null;
            this.iosAudioThread = null;
            this.audioRecordThread = null;
            Iterator<cn.manstep.phonemirrorBox.BoxInterface.a> it = this.audioListeners.iterator();
            while (it.hasNext()) {
                it.next().h();
            }
            this.audioListeners.clear();
            cn.manstep.phonemirrorBox.BoxInterface.b dec = this.videoDecoder;
            if (dec != null) {
                dec.e();
            }
            this.videoDecoder = null;
            resetProtocolState();
            s.e("BoxProtocol destroy()");
        } catch (Throwable th) {
            this.heartbeatScheduler = null;
            this.readThread = null;
            this.checkOpenThread = null;
            this.iosAudioThread = null;
            this.audioRecordThread = null;
            throw th;
        }
    }

    /** Send all config after open succeeds. was: method 'y0()' = sendConfig() */
    public void sendConfig() {
        s.c("BoxProtocol,sendConfig: ");
        sendBoxAllSettings();
        sendAppInfo();
        d();
        uploadLocalLogo();
        b();
        sendNightMode(b0.i().m("NightMode", 2));
        sendChargeMode(b0.i().m("ChargeMode", 0));
        if (s.a) {
            sendDebugTest(1);
        }
        String btNamePref = b0.i().n("BtName", BuildConfig.FLAVOR);
        if (!TextUtils.isEmpty(btNamePref)) {
            s.d("BoxProtocol", "sendConfig: btName=" + btNamePref);
            setBoxBluetoothName(btNamePref.getBytes());
        }
        String wifiNamePref = b0.i().n("WifiName", BuildConfig.FLAVOR);
        if (!TextUtils.isEmpty(wifiNamePref)) {
            setBoxWifiName(wifiNamePref.getBytes());
        }
        sendBoxName(getDisplayBluetoothName().getBytes());
        sendMicType(b0.i().m("MicType", 0));
        sendWifiType(b0.i().m("wifi_type", 5));
        setAudioTransferMode(b0.i().o("AudioTransferMode", false));
        if (b0.i().o("MediaPlaying_" + getPhoneType(), false)) {
            sendCarPlayCommand(201);
        }
    }

    /** Get audio listener by index. was: method 'z(int)' */
    public cn.manstep.phonemirrorBox.BoxInterface.a getAudioListener(int index /* was: 'i2' */) {
        List<cn.manstep.phonemirrorBox.BoxInterface.a> list = this.audioListeners;
        if (list == null || list.size() <= 0 || index < 0) {
            return null;
        }
        if (index < this.audioListeners.size()) {
            return this.audioListeners.get(index);
        }
        return this.audioListeners.get(this.audioListeners.size() - 1);
    }
}
