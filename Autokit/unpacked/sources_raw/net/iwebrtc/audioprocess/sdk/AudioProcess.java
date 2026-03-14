package net.iwebrtc.audioprocess.sdk;

import android.util.Log;
import cn.manstep.phonemirrorBox.p;
import cn.manstep.phonemirrorBox.util.s;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class AudioProcess {
    public static final int MicGain = 6;
    public static final int PhoneCallGain = 12;
    public static int RecordDelay = p.b();
    private static final String TAG = "AudioProcess";
    private long nativeAudioAgcHandle;
    private long nativeAudioProcess;

    static {
        if (p.H) {
            try {
                System.loadLibrary("htlog");
            } catch (UnsatisfiedLinkError e) {
                p.H = false;
                s.f(TAG, "1 Couldn't load lib: " + e.getMessage());
            } catch (Error e2) {
                p.H = false;
                s.f(TAG, "2 Couldn't load lib: " + e2.getMessage());
            } catch (Exception e3) {
                p.H = false;
                s.f(TAG, "3 Couldn't load lib: " + e3.getMessage());
            }
        }
    }

    public static int calculateBufferSize(int i, int i2, int i3) {
        return ((i * i3) * i2) / 100;
    }

    private native int create();

    public void Destroy() {
        if (p.H) {
            destroy();
        }
    }

    public void DestroyAgc() {
        if (p.H) {
            destroyAgc(this.nativeAudioAgcHandle);
        }
    }

    public void Init(int i) {
        if (p.H) {
            try {
                this.nativeAudioProcess = create();
                set_config(i, 100);
                init();
                s.c("AudioProcess,Init: !!!");
            } catch (Error e) {
                s.f(TAG, "Init:" + Log.getStackTraceString(e));
                p.H = false;
            } catch (Exception e2) {
                s.f(TAG, "Init:" + Log.getStackTraceString(e2));
                p.H = false;
            }
        }
        s.d(TAG, "Init: Config.bEableAudioAEC=" + p.H);
    }

    public void InitAgc(int i, int i2) {
        if (p.H) {
            this.nativeAudioAgcHandle = initAgc(i, i2);
        }
    }

    public void ProcessData(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        if (p.H) {
            processData(bArr, bArr.length, bArr2, bArr2.length, bArr3);
        } else {
            System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
        }
    }

    public void ProcessDataAgc(byte[] bArr) {
        if (p.H) {
            processDataAgc(this.nativeAudioAgcHandle, bArr, bArr.length);
        }
    }

    public native boolean destroy();

    public native boolean destroyAgc(long j);

    public native int init();

    public native long initAgc(int i, int i2);

    public native boolean processData(byte[] bArr, int i, byte[] bArr2, int i2, byte[] bArr3);

    public native boolean processDataAgc(long j, byte[] bArr, int i);

    public native int set_config(int i, int i2);
}
