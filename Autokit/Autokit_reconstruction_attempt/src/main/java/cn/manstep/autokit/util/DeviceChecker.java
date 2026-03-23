/**
 * DeviceChecker.java
 * Deobfuscated from: cn.manstep.phonemirrorBox.util.l
 *
 * /* UNVERIFIED: purpose inferred from code analysis */
 * Comprehensive device compatibility checker. Checks USB device connectivity
 * and permissions, microphone availability, media codec capabilities, and
 * performs DTMF-based acoustic echo cancellation testing. Manages scheduled
 * polling for USB devices and microphone state via a ScheduledExecutorService.
 */
package cn.manstep.autokit.util;

import android.app.PendingIntent;
import android.content.Context;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbInterface;
import android.hardware.usb.UsbManager;
import android.media.AudioRecord;
import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import cn.manstep.phonemirrorBox.Dtmf;
import cn.manstep.phonemirrorBox.ecarx.ECarXUtil;
import com.stub.StubApp;
import com.yalantis.ucrop.BuildConfig;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.TimerTask;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class DeviceChecker /* was: 'util.l' */ {

    /** Callback interface for device check results. /* was: inner interface 'd' */ */
    public interface DeviceCheckCallback /* was: 'd' */ {
        /** USB device check complete. /* was: 'd' */ */
        void onUsbCheckComplete(/* was: 'd' */ boolean hasPermission, int vendorId);
        /** Microphone state update. /* was: 'f' */ */
        void onMicStateUpdate(/* was: 'f' */ int micState);
        /** Raw audio data callback for AEC testing. /* was: 'j' */ */
        void onAudioData(/* was: 'j' */ byte[] data, int length);
        /** Codec capability check result. /* was: 'p' */ */
        void onCodecCheckComplete(/* was: 'p' */ boolean supported, int maxWidth, int maxHeight);
        /** USB device scan complete. /* was: 'q' */ */
        void onUsbScanComplete(/* was: 'q' */ boolean found, String vendorIds);
    }

    private final DeviceCheckCallback callback /* was: 'a' */;
    private PendingIntent usbPermissionIntent /* was: 'e' */;
    private UsbManager usbManager /* was: 'f' */;
    private WeakReference<androidx.fragment.app.n> fragmentRef /* was: 'g' */;
    private int lastVendorId /* was: 'i' */;
    private WeakReference<Context> contextRef /* was: 'n' */;
    private Thread playThread /* was: 'o' */;
    private Thread recordThread /* was: 'p' */;
    private int aecResult /* was: 'j' */ = -1;
    private boolean playStarted /* was: 'k' */ = false;
    private boolean recording /* was: 'l' */ = false;
    private boolean stopRequested /* was: 'm' */ = false;
    private final Handler messageHandler /* was: 'f1890b' */;
    private ScheduledExecutorService executor /* was: 'f1891c' */ = new ScheduledThreadPoolExecutor(2);
    private final ConcurrentHashMap<Integer, Future> scheduledTasks /* was: 'f1892d' */ = new ConcurrentHashMap<>();
    private final ArrayList<String> vendorIds /* was: 'h' */ = new ArrayList<>();

    public DeviceChecker(DeviceCheckCallback callback, androidx.fragment.app.n fragment) {
        this.callback = callback;
        this.fragmentRef = new WeakReference<>(fragment);
        this.messageHandler = new DeviceCheckHandler(this);
    }

    /**
     * Initialize device checking with USB manager and start USB polling.
     * /* was: 'm' */
     */
    public void initialize(/* was: 'm' */ Context context) {
        this.usbManager = (UsbManager) context.getSystemService("usb");
        checkMicrophoneState();
        checkCodecCapabilities();
        startUsbPolling(context);
    }

    /**
     * Check microphone availability and return state code.
     * /* was: 'p' (private) */
     * @return 0 = OK, 1 = uninitialized, 2 = busy
     */
    /* package */ int getMicrophoneState(/* was: 'p' */) {
        int state = 1;
        AudioRecord recorder = new AudioRecord(1, 44100, 16, 1, 44100);
        if (recorder.getState() != 0) {
            if (recorder.getRecordingState() != 1) {
                state = 2;
                recorder.release();
            } else {
                recorder.startRecording();
                if (recorder.getRecordingState() == 3) {
                    recorder.stop();
                    state = 0;
                }
                recorder.release();
            }
        }
        return state;
    }

    /** Check mic and send result via handler. /* was: 'o' */ */
    public void checkMicrophoneState(/* was: 'o' */) {
        this.callback.onMicStateUpdate(getMicrophoneState());
    }

    /** Start periodic mic checking. /* was: 'B' */ */
    public void startMicPolling(/* was: 'B' */) {
        if (this.executor == null || this.executor.isShutdown()) {
            this.executor = new ScheduledThreadPoolExecutor(2);
        }
        if (this.scheduledTasks.get(1) == null) {
            this.scheduledTasks.put(1, this.executor.scheduleAtFixedRate(
                    new MicCheckTask(), 0L, 1L, TimeUnit.SECONDS));
        }
    }

    /** Stop mic polling. /* was: 'C' */ */
    public void stopMicPolling(/* was: 'C' */) {
        Future task = this.scheduledTasks.remove(1);
        if (task != null) { task.cancel(true); }
    }

    /** Request stop of AEC test. /* was: 'D' */ */
    public void stopAecTest(/* was: 'D' */) {
        this.stopRequested = true;
    }

    /** Shut down all scheduled tasks. /* was: 't' */ */
    public void destroy(/* was: 't' */) {
        Logger.logError("DeviceCheck,destroy");
        if (this.executor != null && !this.executor.isShutdown()) {
            this.executor.shutdown();
            this.executor = null;
        }
        if (this.scheduledTasks != null) {
            this.scheduledTasks.clear();
        }
    }

    /** Check codec capabilities. /* was: 'n' */ */
    public void checkCodecCapabilities(/* was: 'n' */) {
        int codecCount = MediaCodecList.getCodecCount();
        String decoderName = BuildConfig.FLAVOR;
        for (int i = 0; i < codecCount; i++) {
            MediaCodecInfo info = MediaCodecList.getCodecInfoAt(i);
            if (!info.isEncoder()) {
                for (String type : info.getSupportedTypes()) {
                    if ("video/avc".equals(type)
                            && (BuildConfig.FLAVOR.equalsIgnoreCase(decoderName)
                            || "OMX.google.h264.decoder".equalsIgnoreCase(decoderName))) {
                        decoderName = info.getName();
                    }
                }
            }
        }
        Logger.logError("DeviceCheck,checkCodec: " + decoderName);
        if (TextUtils.isEmpty(decoderName)) {
            this.callback.onCodecCheckComplete(false, 0, 0);
            return;
        }
        if (Build.VERSION.SDK_INT < 21) {
            this.callback.onCodecCheckComplete(true, 0, 0);
            return;
        }
        MediaCodec codec = null;
        try {
            try {
                codec = MediaCodec.createByCodecName(decoderName);
                MediaCodecInfo.VideoCapabilities caps =
                        codec.getCodecInfo().getCapabilitiesForType("video/avc").getVideoCapabilities();
                this.callback.onCodecCheckComplete(true,
                        ((Integer) caps.getSupportedWidths().getUpper()).intValue(),
                        ((Integer) caps.getSupportedHeights().getUpper()).intValue());
            } catch (IOException e) {
                e.printStackTrace();
                this.callback.onCodecCheckComplete(true, 0, 0);
            }
        } finally {
            if (codec != null) codec.release();
        }
    }

    /** Start USB device polling. /* was: 's' */ */
    public void startUsbPolling(/* was: 's' */ Context context) {
        if (this.executor == null || this.executor.isShutdown()) {
            this.executor = new ScheduledThreadPoolExecutor(2);
        }
        if (this.scheduledTasks.get(0) == null) {
            this.scheduledTasks.put(0, this.executor.scheduleAtFixedRate(
                    new UsbCheckTask(this, this.usbManager), 0L, 10L, TimeUnit.SECONDS));
        }
    }

    /** Set the PendingIntent for USB permission requests. /* was: 'z' */ */
    public void setUsbPermissionIntent(/* was: 'z' */ PendingIntent intent) {
        this.usbPermissionIntent = intent;
    }

    /** Handle USB device found event. /* was: 'u' */ */
    public void onUsbDeviceFound(/* was: 'u' */ UsbDevice device, boolean hasPermission) {
        Logger.log("DeviceCheck,findUsbDevice: " + hasPermission + ", " + device.toString());
        if (hasPermission) {
            sendMessage(0, Boolean.TRUE);
        }
    }

    /* Package-private helpers */
    void sendMessage(int what, Object obj) {
        Message msg = new Message();
        msg.what = what;
        msg.obj = obj;
        this.messageHandler.sendMessage(msg);
    }

    void requestUsbPermission(UsbDevice device) {
        if (this.usbManager != null && device != null) {
            this.usbManager.requestPermission(device, this.usbPermissionIntent);
        }
    }

    /* Inner TimerTask for mic checking */
    class MicCheckTask extends TimerTask {
        @Override public void run() {
            Logger.log("DeviceCheck,startMicCheckTimer: " + Thread.currentThread().getName());
            sendMessage(1, Integer.valueOf(getMicrophoneState()));
        }
    }

    /* Handler for dispatching results back to main thread */
    private static class DeviceCheckHandler extends Handler {
        private final WeakReference<DeviceChecker> ref;
        DeviceCheckHandler(DeviceChecker checker) { this.ref = new WeakReference<>(checker); }
        @Override
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            DeviceChecker checker = this.ref.get();
            if (checker == null) return;
            switch (msg.what) {
                case 0:
                    Future f = checker.scheduledTasks.remove(0);
                    if (f != null) f.cancel(true);
                    checker.callback.onUsbScanComplete(
                            ((Boolean) msg.obj).booleanValue(),
                            cn.manstep.phonemirrorBox.o0.a.c(checker.vendorIds, ","));
                    break;
                case 1:
                    checker.callback.onMicStateUpdate(((Integer) msg.obj).intValue());
                    break;
                case 2:
                    checker.requestUsbPermission((UsbDevice) msg.obj);
                    break;
                case 3:
                    checker.callback.onUsbCheckComplete(
                            ((Boolean) msg.obj).booleanValue(), checker.aecResult);
                    break;
            }
        }
    }

    /* USB check TimerTask */
    private static class UsbCheckTask extends TimerTask {
        private final UsbManager usbManager;
        private int retryCount = 0;
        private final WeakReference<DeviceChecker> ref;

        UsbCheckTask(DeviceChecker checker, UsbManager mgr) {
            this.usbManager = mgr;
            this.ref = new WeakReference<>(checker);
        }

        @Override
        public void run() {
            Logger.log("DeviceCheck,UsbCheckTask: check usb " + this.retryCount);
            HashMap<String, UsbDevice> deviceList = this.usbManager.getDeviceList();
            this.ref.get().vendorIds.clear();
            Logger.log("DeviceCheck,UsbCheckTask: " + deviceList.size());
            boolean found = false;
            for (UsbDevice device : deviceList.values()) {
                int vid = device.getVendorId();
                int pid = device.getProductId();
                this.ref.get().vendorIds.add(String.format("0x%X", Integer.valueOf(vid)));
                boolean hasPermission = this.usbManager.hasPermission(device);
                Logger.log("DeviceCheck,UsbCheckTask: " + vid + "," + pid + "," + hasPermission
                        + "," + device.getDeviceName());
                boolean isMassStorage = false;
                for (int i = 0; i < device.getInterfaceCount(); i++) {
                    UsbInterface iface = device.getInterface(i);
                    isMassStorage = iface.getInterfaceClass() == 8 && iface.getInterfaceSubclass() == 6;
                }
                if (!isMassStorage) {
                    this.ref.get().lastVendorId = vid;
                    if (hasPermission) {
                        this.ref.get().sendMessage(0, Boolean.TRUE);
                        found = true;
                    } else {
                        this.ref.get().sendMessage(0, Boolean.FALSE);
                        this.ref.get().sendMessage(2, device);
                    }
                }
            }
            if (this.retryCount < 2) {
                this.retryCount++;
            } else if (!found) {
                this.ref.get().sendMessage(0, Boolean.FALSE);
            }
        }
    }
}
