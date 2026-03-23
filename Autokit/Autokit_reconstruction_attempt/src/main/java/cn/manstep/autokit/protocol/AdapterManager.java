/**
 * AdapterManager.java
 *
 * USB connection manager and high-level adapter for the AutoKit box protocol.
 * Manages the lifecycle of USB detection, BoxProtocol creation/destruction,
 * listener dispatch, and touch event forwarding.
 *
 * Key responsibilities:
 *   - Periodic USB device polling via ScheduledExecutorService (every 2 seconds)
 *   - USB permission handling via BroadcastReceiver
 *   - Forwarding connection phase events to registered AdapterListeners
 *   - Creating/destroying BoxProtocol instances on OTG plug/unplug
 *   - Querying connection state (isConnected, isAndroidAuto, isCarPlay, isHiCar, etc.)
 *
 * Mode values: 1=AndroidAuto, 2=CarPlay, 4=HiCar
 *
 * Original: BoxInterface/d.java
 */
package cn.manstep.autokit.protocol;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Log;
import android.view.SurfaceHolder;
import cn.manstep.phonemirrorBox.BoxInterface.f; /* BoxProtocol */
import cn.manstep.phonemirrorBox.MyApplication;
import cn.manstep.phonemirrorBox.b0;
import cn.manstep.phonemirrorBox.p;
import cn.manstep.phonemirrorBox.util.a0;
import cn.manstep.phonemirrorBox.util.s;
import com.yalantis.ucrop.BuildConfig;
import java.io.OutputStream;
import java.lang.ref.WeakReference;
import java.net.Socket;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.TimerTask;
import java.util.Vector;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class AdapterManager {
    private static Handler handler;                              /* was: field 'k' */
    public static cn.manstep.phonemirrorBox.BoxInterface.f boxProtocol; /* was: field 'l' -- static ref to BoxProtocol */
    private static UsbDetector usbDetector;                     /* was: field 'p' -- renamed from j.java */
    public WeakReference<Context> contextRef;                   /* was: field 'a' */
    private BroadcastReceiver usbPermissionReceiver;            /* was: field 'f1438c' (renamed from 'c') */
    private PendingIntent usbPermissionIntent;                  /* was: field 'f1439d' (renamed from 'd') */
    private a0 debouncer;                                       /* was: field 'i' */

    private static List<AdapterListener> listeners = new ArrayList(); /* was: field 'm' */
    private static Socket touchSocket = null;                   /* was: field 'n' */
    private static final Vector<TouchPacket> touchQueue = new Vector<>(); /* was: field 'o' */
    private static boolean resetSent = false;                   /* was: field 'q' */

    private boolean receiverRegistered = false;                 /* was: field 'f1437b' (renamed from 'b') */
    private Boolean permissionDialogShown = Boolean.FALSE;      /* was: field 'e' */
    private ScheduledExecutorService detectScheduler = new ScheduledThreadPoolExecutor(1); /* was: field 'f' */
    private TimerTask detectTask = null;                        /* was: field 'g' */
    private Thread touchThread = null;                          /* was: field 'h' */
    private boolean detectionEnabled = true;                    /* was: field 'j' */

    /* ==================== Inner Classes ==================== */

    /**
     * Main handler for dispatching phase events to UI thread.
     * Message types: 1=MSG_PHASE, 2=MSG_VIDEO_SIZE, 6=MSG_PHASE_WITH_DATA
     * was: inner class 'a' (extends Handler)
     */
    class PhaseHandler extends Handler {
        PhaseHandler() {
        }

        @Override
        public void handleMessage(Message message) {
            int what = message.what;
            if (1 != what) {
                if (2 == what) {
                    /* MSG_VIDEO_SIZE_CHANGED */
                    Iterator it = AdapterManager.listeners.iterator();
                    while (it.hasNext()) {
                        ((AdapterListener) it.next()).onVideoSizeChanged(message.arg1);  /* was: c(arg1) */
                    }
                    return;
                }
                if (3 == what) {
                    return;
                }
                if (4 == what) {
                    Intent intent = new Intent("cn.manstep.phonemirror.MirrorService.INTENT_MSG_OUT");
                    intent.putExtra("WPARAM", 3);
                    intent.putExtra("LPARAM", message.arg1);
                    AdapterManager.this.contextRef.get().sendBroadcast(intent);
                    return;
                }
                if (6 == what) {
                    /* MSG_PHASE_WITH_DATA */
                    Iterator it2 = AdapterManager.listeners.iterator();
                    while (it2.hasNext()) {
                        ((AdapterListener) it2.next()).onPhaseWithData(message.arg1, message.obj);  /* was: a(arg1, obj) */
                    }
                    return;
                }
                return;
            }
            /* MSG_PHASE */
            int phase = message.arg1;
            if (phase == 0) {
                s.e("EVT_ANDROID_PLUG_OUT");
            } else if (phase == 2) {
                s.e("EVT_IPHONE_PLUG_OUT");
            } else if (phase == 12) {
                s.e("EVT_OTG_PLUG_OUT: stopMirror");
                AdapterManager.this.stopMirror();  /* was: b0() */
            } else if (phase == 13) {
                s.e("EVT_OTG_PLUG_IN: startMirror");
                AdapterManager.this.startMirror();  /* was: Z() */
            }
            if (AdapterManager.listeners.size() <= 0) {
                s.e("BoxInterface,handleMessage: MSG_PHASE mlisteners.size()=" + AdapterManager.listeners.size());
            }
            for (AdapterListener listener : AdapterManager.listeners) {
                Object obj = message.obj;
                if (obj == null) {
                    listener.onPhase(message.arg1);   /* was: o(arg1) */
                } else {
                    listener.onPhaseWithData(message.arg1, obj);  /* was: a(arg1, obj) */
                }
            }
        }
    }

    /**
     * Thread that sends touch events over a TCP socket to the box.
     * was: inner class 'b' (extends Thread)
     */
    class TouchSenderThread extends Thread {
        TouchSenderThread(AdapterManager mgr) {
        }

        @Override
        public void run() {
            while (AdapterManager.boxProtocol != null) {
                synchronized (AdapterManager.touchQueue) {
                    try {
                        AdapterManager.touchQueue.wait(1000L);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                    while (!AdapterManager.touchQueue.isEmpty()) {
                        try {
                            OutputStream out = AdapterManager.touchSocket.getOutputStream();
                            TouchPacket pkt = AdapterManager.touchQueue.firstElement();
                            out.write(pkt.data, 0, pkt.length);  /* was: f1441b, a */
                            AdapterManager.touchQueue.remove(0);
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                    }
                }
            }
        }
    }

    /** USB permission broadcast receiver. was: inner class 'c' */
    class UsbPermissionReceiver extends BroadcastReceiver {
        UsbPermissionReceiver() {
        }

        @Override
        public void onReceive(Context context, Intent intent) {
            if ("cn.manstep.phonemirror.USB_PERMISSION".equals(intent.getAction())) {
                s.e("User have clicked USB_PERMISSION dialog");
                AdapterManager.this.permissionDialogShown = Boolean.FALSE;
            }
        }
    }

    /** Runnable for debounced car control command sending. was: inner class RunnableC0077d */
    class CarControlRunnable implements Runnable {
        final int command;  /* was: field 'f1440b' */

        CarControlRunnable(AdapterManager mgr, int cmd) {
            this.command = cmd;
        }

        @Override
        public void run() {
            s.d("BoxInterface", "sendCarControl: cmd=" + this.command
                    + ", " + AdapterManager.boxProtocol.T0(this.command));
        }
    }

    /** Touch packet data holder. was: inner class 'e' */
    private static class TouchPacket {
        public int length;     /* was: field 'a' */
        public byte[] data;    /* was: field 'f1441b' (renamed from 'b') */
    }

    /**
     * USB detection timer task. Polls UsbDetector every 2 seconds.
     * was: inner class 'f' (extends TimerTask)
     */
    class DetectUsbTask extends TimerTask {
        private boolean lastConnected = false;  /* was: field 'f1442b' */
        private int retryCount = 0;             /* was: field 'f1443c' */

        DetectUsbTask() {
        }

        @Override
        public void run() {
            boolean connected = AdapterManager.usbDetector.isConnected();  /* was: p.l() */
            if (connected == this.lastConnected) {
                if (connected) {
                    this.retryCount = 0;
                } else {
                    if (cn.manstep.phonemirrorBox.util.f.c(AdapterManager.this.contextRef.get())) {
                        return;
                    }
                    int count = this.retryCount + 1;
                    this.retryCount = count;
                    AdapterManager.this.checkUsbConnected(count);  /* was: n(count) */
                }
                if (connected != this.lastConnected) {
                    this.lastConnected = connected;
                    AdapterManager.handler.sendMessage(
                            AdapterManager.handler.obtainMessage(1, connected ? 13 : 12, 0));
                    return;
                }
                return;
            }
            s.e("BoxInterface,DetectUsbTask sendMsg  usbConnected=" + connected);
            this.lastConnected = connected;
            AdapterManager.handler.sendMessage(
                    AdapterManager.handler.obtainMessage(1, connected ? 13 : 12, 0));
            if (connected) {
                return;
            }
            p.r = -1;
            cn.manstep.phonemirrorBox.BoxInterface.f proto = AdapterManager.boxProtocol;
            if (proto != null) {
                proto.b0();  /* reset */
            }
        }
    }

    /**
     * AdapterListener interface -- callback for connection phase events.
     * was: inner interface 'd.g'
     */
    public interface AdapterListener {
        /** Phase event with attached data object. was: method 'a(int, Object)' = onPhaseWithData */
        void onPhaseWithData(int phase, Object data);

        /** Video size changed. was: method 'c(int)' = onVideoSizeChanged */
        void onVideoSizeChanged(int phase);

        /** Adapter bound to this listener. was: method 'n(d)' = onAdapterBound */
        void onAdapterBound(AdapterManager adapter);

        /** Phase event (no data). was: method 'o(int)' = onPhase */
        void onPhase(int phase);

        /** Raw data callback. was: method 'v(byte[])' = onRawData */
        void onRawData(byte[] data);
    }

    /* ==================== Constructor ==================== */

    public AdapterManager(Context context) {
        this.contextRef = new WeakReference<>(null);
        s.d("BoxInterface", "new BoxInterface()");
        this.contextRef = new WeakReference<>(context);
        usbDetector = new UsbDetector(context);  /* was: p = new j(context) */
        handler = new PhaseHandler();
        this.debouncer = new a0(500L, new Handler(Looper.myLooper()));
        startDetect();  /* was: Y() */
    }

    /* ==================== Static query methods ==================== */

    /** Check if current mode is HiCar. was: method 'A()' = isHiCarMode() -- delegates to isHiCarWithWorkMode */
    public static boolean isHiCarMode() {
        return isHiCarWithWorkMode(f.k.d());  /* was: B(f.k.d()) */
    }

    /** Check if given work mode is HiCar (mode==4). was: method 'B(int)' */
    public static boolean isHiCarWithWorkMode(int mode) {
        return mode == 4;  /* HiCar mode value */
    }

    /** Check if iPhone work mode is "invalid" (meaning no iPhone connected). was: method 'C()' */
    public static boolean isIphoneInvalid() {
        return f.k.f() == 0;
    }

    /** Check if video decoder is NOT receiving frames. was: method 'E()' */
    public static boolean isNotReceivingVideo() {
        if (isConnected()) {
            return !cn.manstep.phonemirrorBox.BoxInterface.b.h;  /* !VideoDecoder.isReceivingFrames */
        }
        return false;
    }

    /** Forward raw data to all listeners. was: method 'F(byte[])' */
    public static void dispatchRawData(byte[] data) {
        Iterator<AdapterListener> it = listeners.iterator();
        while (it.hasNext()) {
            it.next().onRawData(data);  /* was: v(data) */
        }
    }

    /**
     * Check if protocol is open (connected + phone linked).
     * was: method 'G()' = isProtocolOpen()
     */
    public static boolean isProtocolOpen() {
        if (isConnected()) {
            return cn.manstep.phonemirrorBox.BoxInterface.f.O;  /* BoxProtocol.isPhoneConnected */
        }
        return false;
    }

    /** Read USB data (delegates to UsbDetector). was: method 'H(byte[], int)' */
    public static boolean readUsb(byte[] data, int length) {
        return usbDetector.readUsb(data, length);  /* was: p.p(data, length) */
    }

    /**
     * Check if USB is connected (UsbDetector reports connected AND boxProtocol is not null).
     * was: method 'i()' = isConnected()
     */
    public static boolean isConnected() {
        if (boxProtocol == null) {
            return false;
        }
        return usbDetector.isConnected();  /* was: p.l() */
    }

    /** Send message to handler. was: method 'O(int, int)' */
    public static boolean sendPhaseMessage(int what, int phase) {
        Handler h = handler;
        if (h != null) {
            return h.sendMessage(h.obtainMessage(what, phase, 0));
        }
        return false;
    }

    /** Send message with object payload. was: method 'P(int, int, Object)' */
    public static boolean sendPhaseMessageWithData(int what, int phase, Object data) {
        Handler h = handler;
        if (h != null) {
            return h.sendMessage(h.obtainMessage(what, phase, 0, data));
        }
        return false;
    }

    /**
     * Reset the video decoder once (guard flag prevents repeated resets).
     * was: method 'R()' = sendResetOnceDecoder()
     */
    public static void sendResetOnceDecoder() {
        cn.manstep.phonemirrorBox.BoxInterface.f proto;
        s.c("BoxInterface,sendResetOnceDecoder");
        if (resetSent || (proto = boxProtocol) == null) {
            return;
        }
        proto.z.i();  /* was: fVar.z.i() -- videoDecoder.sendDecoderReset() */
        resetSent = true;
    }

    /** Write USB data (delegates to UsbDetector). was: method 'd0(byte[], int)' */
    public static boolean writeUsb(byte[] data, int length) {
        return usbDetector.writeUsb(data, length);  /* was: p.u(data, length) */
    }

    /**
     * Check if current mode is AndroidAuto (checks work mode).
     * was: method 'v()' = isAndroidAutoMode() (alternate)
     */
    public static boolean isAndroidAutoModeAlt() {
        return isAndroidAutoWorkMode(f.k.d());
    }

    /** Check if androidWorkMode == 1 (AndroidAuto). was: method 'w(int)' */
    public static boolean isAndroidAutoWorkMode(int mode) {
        return mode == 1;
    }

    /** Check if current mode is CarPlay. was: method 'x()' = isCarPlayMode() */
    public static boolean isCarPlayMode() {
        return isCarPlayWorkMode(f.k.f());
    }

    /** Check if iphoneWorkMode == 2 (CarPlay). was: method 'y(int)' */
    public static boolean isCarPlayWorkMode(int mode) {
        return mode == 2;
    }

    /**
     * Check if AndroidAuto with firmware version check.
     * was: method 'u()' = isAndroidAutoWithVersionCheck()
     */
    public static boolean isAndroidAutoWithVersionCheck() {
        if ("2022.06.02.1010".compareTo(BoxInfo.getInstance().getFirmwareVersion()) > 0) {
            return false;
        }
        return isAndroidAutoConnected();  /* was: t() */
    }

    /**
     * Check if AndroidAuto is connected (mode check + protocol open + phone type is AA).
     * was: method 't()' = isAndroidAutoConnected()
     */
    public static boolean isAndroidAutoConnected() {
        if (isAndroidAutoModeAlt() && isProtocolOpen()) {
            return boxProtocol.S();
        }
        return false;
    }

    /**
     * Maps a phase integer to its EVT_* event name string.
     * was: method 'q(int)' = getPhaseName()
     */
    public static String getPhaseName(int phase) {
        if (phase == 27) return "EVT_MIC_RECORDING";
        if (phase == 230) return "EVT_UPDATE_CONNECTION_PIN_CODE";
        if (phase == 52) return "EVT_WIFI_TRANS_ABNORMAL";
        if (phase == 53) return "EVT_WIFI_TRANS_NORMAL";
        switch (phase) {
            case 0: return "EVT_ANDROID_PLUG_OUT";
            case 1: return "EVT_ANDROID_PLUG_IN";
            case 2: return "EVT_IPHONE_PLUG_OUT";
            case 3: return "EVT_IPHONE_PLUG_IN";
            case 4: return "EVT_PHONE_PLUG_IN";
            case 5: return "EVT_WAIT_HOTPOT";
            case 6: return "EVT_WAIT_AIRPLAY";
            case 7: return "EVT_PERMMISION_ASKING";
            case 8: return "EVT_NOT_REGIST";
            case 9: return "EVT_REG";
            case 10: return "EVT_SCREEN_ON";
            case 11: return "EVT_SCREEN_OFF";
            case 12: return "EVT_OTG_PLUG_OUT";
            case 13: return "EVT_OTG_PLUG_IN";
            case 14: return "EVT_ANDROID_WORKING";
            case 15: return "EVT_IPHONE_WORKING";
            case 16: return "EVT_CARLIFE_DOWNLOAD";
            case 17: return "EVT_SET_PERMISSION";
            case 18: return "EVT_DECODE_CONFIGURE_ERR";
            case 19: return "EVT_DECODE_OUTPUT_ERR";
            case 20: return "EVT_SETTINGS_PAGE_ENTER";
            case 21: return "EVT_SETTINGS_PAGE_BACK";
            case 22: return "EVT_FAKE_OTG_PLUG_IN";
            case 23: return "EVT_FAKE_OTG_PLUG_OUT";
            case 24: return "EVT_BOX_ENTER_U_MODE";
            case 25: return "EVT_MANUAL_DISCONNECT_PHONE";
            default:
                switch (phase) {
                    case 32: return "EVT_APP_LOG_GET";
                    case 33: return "EVT_APP_UPDATE";
                    case 34: return "EVT_APP_RESET";
                    case 35: return "EVT_BOX_INFO";
                    default:
                        switch (phase) {
                            case 116: return "EVT_BOX_READY";
                            case 117: return "EVT_BOXMIC_DETECTED";
                            case 118: return "EVT_BOXMIC_CONNECTED";
                            case 119: return "EVT_BOXMIC_DISCONNECTED";
                            case 120: return "EVT_BOX_UPDATE";
                            case 121: return "EVT_BOX_UPDATE_SUCCESS";
                            case 122: return "EVT_BOX_UPDATE_FAILED";
                            case 123: return "EVT_BOX_VERSION_ERROR";
                            case 124: return "EVT_BOX_VERSION_SHOW";
                            case 125: return "EVT_BOX_OTA_UPDATE";
                            case 126: return "EVT_BOX_OTA_UPDATE_SUCCESS";
                            case 127: return "EVT_BOX_OTA_UPDATE_FAILED";
                            default:
                                switch (phase) {
                                    case 200: return "EVT_BOX_SUPPORT_AUTO_CONNECT";
                                    case 201: return "EVT_BOX_SCANING_DEVICES";
                                    case 202: return "EVT_BOX_DEVICE_FOUND";
                                    case 203: return "EVT_BOX_DEVICE_NOT_FOUND";
                                    case 204: return "EVT_BOX_CONNECT_DEVICE_FAILED";
                                    case 205: return "EVT_BOX_BLUETOOTH_CONNECTED";
                                    case 206: return "EVT_BOX_BLUETOOTH_DISCONNECTED";
                                    case 207: return "EVT_BOX_WIFI_CONNECTED";
                                    case 208: return "EVT_BOX_WIFI_DISCONNECTED";
                                    case 209: return "EVT_BOX_BLUETOOTH_PAIR_START";
                                    case 210: return "EVT_UPDATE_BLUETOOTH_PAIRED_LIST";
                                    case 211: return "EVT_UPDATE_BLUETOOTH_ONLINE_LIST";
                                    case 212: return "EVT_BOX_REQUEST_VIDEO_FOCUS";
                                    case 213: return "EVT_BOX_RELEASE_VIDEO_FOCUS";
                                    case 214: return "EVT_UPDATE_CONNECTION_URL";
                                    case 215: return "EVT_UPDATE_BOX_BLUETOOTH_NAME";
                                    default: return "Unknown: " + phase;
                                }
                        }
                }
        }
    }

    /* ==================== Instance methods ==================== */

    /** Enable/disable USB detection. was: method 'X(boolean)' */
    public void setDetectionEnabled(boolean enabled) {
        this.detectionEnabled = enabled;
    }

    /** Send car control command (debounced). was: method 'K(int)' */
    public void sendCarControl(int cmd) {
        if (boxProtocol != null) {
            this.debouncer.c(cmd, new CarControlRunnable(this, cmd));
        }
    }

    /** Send multi-touch event. was: method 'Q(e)' -- delegates to BoxProtocol.sendMultiTouch() */
    public void sendMultiTouch(cn.manstep.phonemirrorBox.BoxInterface.e touchEvent) {
        cn.manstep.phonemirrorBox.BoxInterface.f proto = boxProtocol;
        if (proto != null) {
            proto.G0(touchEvent);  /* was: fVar.G0(eVar) = sendMultiTouch() */
        }
    }

    /** Set surface for video rendering. was: method 'S(SurfaceHolder, boolean)' */
    public void setSurface(SurfaceHolder holder, boolean flag) {
        cn.manstep.phonemirrorBox.BoxInterface.f proto = boxProtocol;
        if (proto != null) {
            proto.z.j(holder, flag);  /* was: fVar.z.j(holder, flag) = videoDecoder.setSurface() */
        }
    }

    /** Surface format changed. was: method 'T(int, int, int)' */
    public void surfaceChanged(int format, int width, int height) {
        cn.manstep.phonemirrorBox.BoxInterface.b decoder;
        cn.manstep.phonemirrorBox.BoxInterface.f proto = boxProtocol;
        if (proto == null || (decoder = proto.z) == null) {
            return;
        }
        decoder.k(format, width, height);  /* was: bVar.k(i, i2, i3) = surfaceChanged() */
    }

    /** Stop the video decoder. was: method 'U()' */
    public void stopDecoder() {
        cn.manstep.phonemirrorBox.BoxInterface.f proto = boxProtocol;
        if (proto != null) {
            proto.z.l();  /* was: fVar.z.l() = stopDecoder() */
        }
    }

    /**
     * Start USB detection polling.
     * was: method 'Y()' -- called from constructor and after context changes
     */
    public void startDetect() {
        Context context = this.contextRef.get();
        if (context == null || this.detectTask != null) {
            return;
        }
        this.detectTask = new DetectUsbTask();
        s.c("BoxInterface,startDetect: Start schedule detect usb");
        if (this.detectScheduler == null) {
            this.detectScheduler = new ScheduledThreadPoolExecutor(1);
        }
        int delay = SystemClock.elapsedRealtime() - MyApplication.b().f1543b < 300000
                ? b0.i().m("BootDelay", 0) * 1000 : 8000;
        s.p("BoxInterface", "startDetect: delay=" + delay);
        this.detectScheduler.scheduleAtFixedRate(this.detectTask, (long) delay, 2000L, TimeUnit.MILLISECONDS);
        this.usbPermissionReceiver = new UsbPermissionReceiver();
        this.usbPermissionIntent = PendingIntent.getBroadcast(context, 0,
                new Intent("cn.manstep.phonemirror.USB_PERMISSION"), 0);
        IntentFilter filter = new IntentFilter("cn.manstep.phonemirror.USB_PERMISSION");
        for (int i = 0; i < 5; i++) {
            try {
                context.registerReceiver(this.usbPermissionReceiver, filter);
                this.receiverRegistered = true;
                return;
            } catch (Exception e2) {
                s.e(Log.getStackTraceString(e2));
            }
        }
    }

    /**
     * Create BoxProtocol and start mirroring.
     * was: method 'Z()' = startMirror()
     */
    public void startMirror() {
        s.c("BoxInterfacestartMirror: ####");
        Context context = this.contextRef.get();
        if (context != null) {
            if (boxProtocol == null) {
                boxProtocol = new cn.manstep.phonemirrorBox.BoxInterface.f(context);
            } else {
                s.e("startMirror: boxProtol not null  " + boxProtocol);
            }
            if (this.touchThread == null) {
                TouchSenderThread thread = new TouchSenderThread(this);
                this.touchThread = thread;
                thread.setName("touch");
                this.touchThread.start();
            }
        }
    }

    /**
     * Stop mirroring and destroy BoxProtocol.
     * was: method 'b0()' = stopMirror()
     */
    public void stopMirror() {
        s.c("BoxInterface,stopMirror: boxProtocol=" + boxProtocol);
        usbDetector.closeUsb();  /* was: p.b() */
        cn.manstep.phonemirrorBox.BoxInterface.f proto = boxProtocol;
        if (proto != null) {
            proto.y();  /* was: fVar.y() = shutdown() */
            boxProtocol = null;
        }
    }

    /** Register a listener. was: method 'g(g)' */
    public AdapterManager addListener(AdapterListener listener) {
        if (!listeners.contains(listener)) {
            listeners.add(listener);
            listener.onAdapterBound(this);  /* was: gVar.n(this) */
        }
        return this;
    }

    /** Unregister a listener. was: method 'c0(g)' */
    public void removeListener(AdapterListener listener) {
        listeners.remove(listener);
    }

    /** Check USB connection status and handle result. was: method 'n(int)' */
    public void checkUsbConnected(int retryCount) {
        UsbDetector det;
        if (this.detectionEnabled && (det = usbDetector) != null) {
            int result = det.detectDevices();  /* was: jVar.a() */
            s.d("BoxInterface", "checkUsbConnected: checkUsbConnected=" + result);
            switch (result) {
                case 1:
                    sendPhaseMessage(1, 123); /* EVT_BOX_VERSION_ERROR */
                    break;
                case 2:
                    if (cn.manstep.phonemirrorBox.v0.e.C()) {
                        if (retryCount % 5 == 0) {
                            this.permissionDialogShown = Boolean.FALSE;
                        }
                        if (!this.permissionDialogShown.booleanValue()) {
                            usbDetector.requestPermission(this.usbPermissionIntent);
                            this.permissionDialogShown = Boolean.TRUE;
                        }
                    }
                    break;
                case 3:
                    sendPhaseMessage(1, 22); /* EVT_FAKE_OTG_PLUG_IN */
                    break;
                case 4:
                    sendPhaseMessage(1, 23); /* EVT_FAKE_OTG_PLUG_OUT */
                    break;
                case 5:
                    sendPhaseMessage(1, 24); /* EVT_BOX_ENTER_U_MODE */
                    break;
                case 6:
                    sendPhaseMessage(1, 12); /* EVT_OTG_PLUG_OUT */
                    break;
            }
        }
    }

    /** Destroy the adapter, stop detection, and clean up. was: method 'p()' */
    public void destroy() {
        s.c("BoxInterface,destroy: mlisteners.size=" + listeners.size());
        resetSent = false;
        listeners.clear();
        stopDetect();  /* was: a0() */
        stopMirror();  /* was: b0() */
    }

    /** Stop USB detection polling. was: method 'a0()' */
    public void stopDetect() {
        BroadcastReceiver receiver;
        s.p("BoxInterface", "stopDetect: ");
        TimerTask task = this.detectTask;
        if (task != null) {
            task.cancel();
            this.detectTask = null;
            Context context = this.contextRef.get();
            if (context != null && (receiver = this.usbPermissionReceiver) != null) {
                try {
                    context.unregisterReceiver(receiver);
                } catch (Exception e2) {
                    e2.printStackTrace();
                    s.e(Log.getStackTraceString(e2));
                }
                this.usbPermissionReceiver = null;
            }
            this.usbPermissionIntent = null;
        }
        ScheduledExecutorService scheduler = this.detectScheduler;
        if (scheduler != null) {
            scheduler.shutdown();
            this.detectScheduler = null;
        }
        usbDetector.closeUsb();
    }
}
