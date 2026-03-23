package cn.manstep.phonemirrorBox.ecarx;

import android.content.Context;
import android.media.AudioAttributes;
import android.os.Build;
import android.os.Handler;
import cn.manstep.phonemirrorBox.BoxInterface.C0733d;
import cn.manstep.phonemirrorBox.C0795b0;
import cn.manstep.phonemirrorBox.C0953u;
import cn.manstep.phonemirrorBox.p089v0.C0991a;
import cn.manstep.phonemirrorBox.p089v0.C0995e;
import cn.manstep.phonemirrorBox.util.C0982s;
import cn.manstep.phonemirrorBox.util.ThreadFactoryC0971h;
import com.ecarx.sdk.device.DeviceAPI;
import com.ecarx.sdk.device.daynightmode.IDayNightMode;
import com.ecarx.sdk.mediacenter.MediaCenterAPI;
import com.ecarx.sdk.mediacenter.MediaListInfo;
import com.ecarx.sdk.mediacenter.MusicClient;
import com.ecarx.sdk.openapi.ECarXApiClient;
import com.ecarx.sdk.policy.IAudioAttributes;
import com.ecarx.sdk.policy.PolicyAPI;
import com.ecarx.sdk.vr.music.VrMusicCtrlAPI;
import com.yalantis.ucrop.BuildConfig;
import java.lang.ref.WeakReference;
import java.util.TimerTask;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class ECarXUtil {
    private static final String TAG = "ECarXUtil";
    private static volatile ECarXUtil instance;
    private AudioAttributes mCallAudioAttributes;
    private C0819a mDayNightChangeCallBack;
    private IDayNightMode mDayNightMode;
    private C0820b mECarXLog;
    private AudioAttributes mMediaAudioAttributes;
    private MusicClient mMusicClient;
    private AudioAttributes mNavAudioAttributes;
    private AudioAttributes mSiriAudioAttributes;
    private Object mToken;
    private WeakReference<Context> mWeakContext;
    private MediaCenterAPI mMediaCenterAPI = null;
    private DeviceAPI mDeviceAPI = null;
    private PolicyAPI mPolicyAPI = null;
    private boolean bMediaCenterAPIReady = false;
    private boolean bDeviceAPIReady = false;
    private boolean bPolicyAPIReady = false;
    private ScheduledExecutorService mThreadPoolExecutor = null;
    private ScheduledFuture<?> mRegisterMusicFuture = null;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.ecarx.ECarXUtil$a */
    class C0815a implements ECarXApiClient.Callback {
        C0815a() {
        }

        public void onAPIReady(boolean z) {
            C0982s.m7375e("ECarXUtil,initPolicyAPI: onAPIReady " + z);
            ECarXUtil.this.bPolicyAPIReady = z;
            if (ECarXUtil.this.bPolicyAPIReady) {
                try {
                    IAudioAttributes audioAttributes = ECarXUtil.this.mPolicyAPI.getAudioAttributes();
                    int audioAttributesUsage = audioAttributes.getAudioAttributesUsage("NAVIGATION_GUIDANCE");
                    int audioAttributesContentType = audioAttributes.getAudioAttributesContentType("NAVI_GUIDANCE");
                    int audioAttributesUsage2 = audioAttributes.getAudioAttributesUsage("MEDIA");
                    int audioAttributesContentType2 = audioAttributes.getAudioAttributesContentType("MUSIC");
                    int audioAttributesUsage3 = audioAttributes.getAudioAttributesUsage("MEDIA");
                    audioAttributes.getAudioAttributesContentType("BLUETOOTH_HFP");
                    if (Build.VERSION.SDK_INT >= 26) {
                        ECarXUtil.this.mNavAudioAttributes = new AudioAttributes.Builder().setUsage(audioAttributesUsage).setContentType(audioAttributesContentType).build();
                        ECarXUtil.this.mCallAudioAttributes = new AudioAttributes.Builder().setUsage(audioAttributesUsage3).setContentType(audioAttributesContentType2).build();
                        ECarXUtil.this.mMediaAudioAttributes = new AudioAttributes.Builder().setUsage(audioAttributesUsage2).setContentType(audioAttributesContentType2).build();
                    }
                } catch (Error unused) {
                    ECarXUtil.this.bPolicyAPIReady = false;
                } catch (Exception unused2) {
                    ECarXUtil.this.bPolicyAPIReady = false;
                }
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.ecarx.ECarXUtil$b */
    class C0816b implements ECarXApiClient.Callback {

        /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.ecarx.ECarXUtil$b$a */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (ECarXUtil.this.bMediaCenterAPIReady) {
                    ECarXUtil.this.mMediaCenterAPI.setLogImpl(ECarXUtil.this.mECarXLog);
                    ECarXUtil.this.mMediaCenterAPI.setLogEnable(true);
                    ECarXUtil.this.mMediaCenterAPI.setLogLevel(0);
                }
            }
        }

        C0816b() {
        }

        public void onAPIReady(boolean z) {
            ECarXUtil.this.bMediaCenterAPIReady = z;
            C0982s.m7373c("ECarXUtil,initMediaCenter: onAPIReady " + z);
            new Handler().postDelayed(new a(), 5000L);
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.ecarx.ECarXUtil$c */
    class C0817c extends MediaListInfo {
        C0817c(ECarXUtil eCarXUtil) {
        }

        public int getMediaListType() {
            return 0;
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.ecarx.ECarXUtil$d */
    private class C0818d extends TimerTask {
        private C0818d() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            C0982s.m7373c("ECarXUtil,TimerTask:--------");
            if (C0733d.m5574G()) {
                if (C0991a.m7412t().m7425y() || C0995e.m7430C()) {
                    ECarXUtil.this.registerMusic();
                }
            }
        }

        /* synthetic */ C0818d(ECarXUtil eCarXUtil, C0815a c0815a) {
            this();
        }
    }

    private ECarXUtil() {
        try {
            this.mECarXLog = new C0820b();
        } catch (Error | Exception unused) {
            this.mECarXLog = null;
        }
        try {
            this.mMusicClient = new C0821c();
        } catch (Error | Exception unused2) {
            this.mMusicClient = null;
        }
        this.mNavAudioAttributes = null;
        this.mCallAudioAttributes = null;
        this.mSiriAudioAttributes = null;
        this.mMediaAudioAttributes = null;
    }

    private void cancelRegisterMusicFuture() {
        ScheduledFuture<?> scheduledFuture = this.mRegisterMusicFuture;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
            this.mRegisterMusicFuture = null;
        }
    }

    public static ECarXUtil getInstance() {
        if (instance == null) {
            synchronized (ECarXUtil.class) {
                if (instance == null) {
                    instance = new ECarXUtil();
                }
            }
        }
        return instance;
    }

    private void initMediaCenter(Context context) {
        this.mMediaCenterAPI = MediaCenterAPI.get(context);
        this.bMediaCenterAPIReady = false;
        this.mToken = null;
        C0982s.m7373c("ECarXUtil,initMediaCenter: mMediaCenterAPI = " + this.mMediaCenterAPI);
        MediaCenterAPI mediaCenterAPI = this.mMediaCenterAPI;
        if (mediaCenterAPI == null) {
            C0982s.m7375e("ECarXUtil,initMediaCenter: mMediaCenterAPI = null");
            return;
        }
        try {
            mediaCenterAPI.init(context, new C0816b());
        } catch (Error unused) {
            this.bMediaCenterAPIReady = false;
        } catch (Exception unused2) {
            this.bMediaCenterAPIReady = false;
        }
    }

    private void initPolicyAPI(Context context) {
        try {
            PolicyAPI policyAPI = PolicyAPI.get(context);
            this.mPolicyAPI = policyAPI;
            if (policyAPI != null) {
                policyAPI.init(context, new C0815a());
            }
        } catch (Error | Exception unused) {
        }
    }

    private void startRegisterMusicFuture() {
        if (this.mRegisterMusicFuture == null) {
            if (this.mThreadPoolExecutor == null) {
                this.mThreadPoolExecutor = new ScheduledThreadPoolExecutor(1, new ThreadFactoryC0971h("RegisterMusic"));
            }
            this.mRegisterMusicFuture = this.mThreadPoolExecutor.scheduleAtFixedRate(new C0818d(this, null), 0L, 15000L, TimeUnit.MILLISECONDS);
        }
    }

    public String getAPIReady() {
        return this.bMediaCenterAPIReady + " " + this.bPolicyAPIReady + " " + this.bDeviceAPIReady + " " + this.mToken;
    }

    public AudioAttributes getCallAudioAttributes() {
        if (this.mCallAudioAttributes == null) {
            int i = 2;
            int i2 = 1;
            if (C0795b0.m6071i().m6091m("CallAudioAttr", C0953u.m7001z().m7035e()) == 1) {
                i = 1;
                i2 = 2;
            }
            this.mCallAudioAttributes = new AudioAttributes.Builder().setUsage(i).setContentType(i2).build();
        }
        return this.mCallAudioAttributes;
    }

    public int getDayNight() {
        IDayNightMode iDayNightMode = this.mDayNightMode;
        if (iDayNightMode != null) {
            return iDayNightMode.getDayNight();
        }
        return 0;
    }

    public String getDeviceInfo() {
        return BuildConfig.FLAVOR;
    }

    public AudioAttributes getMediaAudioAttributes() {
        if (this.mMediaAudioAttributes == null) {
            this.mMediaAudioAttributes = new AudioAttributes.Builder().setUsage(1).setContentType(2).build();
        }
        return this.mMediaAudioAttributes;
    }

    public AudioAttributes getNavAudioAttributes() {
        if (this.mNavAudioAttributes == null) {
            this.mNavAudioAttributes = new AudioAttributes.Builder().setUsage(1).setContentType(2).build();
        }
        return this.mNavAudioAttributes;
    }

    public AudioAttributes getSiriAudioAttributes() {
        if (this.mSiriAudioAttributes == null) {
            int i = Build.VERSION.SDK_INT >= 26 ? 16 : 2;
            int i2 = 1;
            if (C0795b0.m6071i().m6091m("CallAudioAttr", C0953u.m7001z().m7035e()) == 1) {
                i = 6;
                i2 = 0;
            }
            this.mSiriAudioAttributes = new AudioAttributes.Builder().setUsage(i).setContentType(i2).build();
        }
        return this.mSiriAudioAttributes;
    }

    public void init(Context context) {
        C0982s.m7373c("ECarXUtil,init: " + context);
        this.mWeakContext = new WeakReference<>(context);
    }

    public void onAudioFocusChange(boolean z) {
        C0982s.m7373c("ECarXUtil,onAudioFocusChange: " + z + ", " + this.bMediaCenterAPIReady);
        if (this.bMediaCenterAPIReady) {
            if (z) {
                startRegisterMusicFuture();
            } else {
                cancelRegisterMusicFuture();
            }
        }
    }

    public void registerMusic() {
        if (!this.bMediaCenterAPIReady) {
            C0982s.m7373c("ECarXUtil,registerMusic: bMediaCenterAPIReady = false");
            return;
        }
        Context context = this.mWeakContext.get();
        if (context == null) {
            C0982s.m7375e("ECarXUtil,registerMusic: context = null");
            return;
        }
        if (this.mMediaCenterAPI != null) {
            C0982s.m7373c("ECarXUtil,registerMusic: " + context.getPackageName());
            try {
                VrMusicCtrlAPI vrMusicApi = this.mMediaCenterAPI.getVrMusicApi();
                C0822d c0822d = new C0822d();
                vrMusicApi.declareMusicCtrlCapability(new int[]{1}, c0822d);
                vrMusicApi.declareVrCtrlPriority(context.getPackageName(), 1, c0822d);
            } catch (Error unused) {
            }
            try {
                this.mToken = this.mMediaCenterAPI.registerMusic(context.getPackageName(), this.mMusicClient);
            } catch (Error | Exception unused2) {
            }
            C0982s.m7373c("ECarXUtil,registerMusic: mToken = " + this.mToken);
            requestPlay(true);
        }
    }

    public void release() {
        C0982s.m7373c("ECarXUtil,release");
        unregisterMusic();
        IDayNightMode iDayNightMode = this.mDayNightMode;
        if (iDayNightMode != null) {
            iDayNightMode.unregisterDayNigntModeCallBack(this.mDayNightChangeCallBack);
        }
        DeviceAPI deviceAPI = this.mDeviceAPI;
        if (deviceAPI != null) {
            try {
                deviceAPI.release();
            } catch (Error | Exception unused) {
            }
        }
        MediaCenterAPI mediaCenterAPI = this.mMediaCenterAPI;
        if (mediaCenterAPI != null) {
            try {
                mediaCenterAPI.release();
            } catch (Error | Exception unused2) {
            }
        }
        cancelRegisterMusicFuture();
        ScheduledExecutorService scheduledExecutorService = this.mThreadPoolExecutor;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdown();
            this.mThreadPoolExecutor = null;
        }
    }

    public void requestPlay(boolean z) {
        MediaCenterAPI mediaCenterAPI;
        Object obj;
        if (!this.bMediaCenterAPIReady) {
            C0982s.m7373c("ECarXUtil,requestPlay: bMediaCenterAPIReady = false");
            return;
        }
        Context context = this.mWeakContext.get();
        if (context == null || (mediaCenterAPI = this.mMediaCenterAPI) == null || (obj = this.mToken) == null) {
            return;
        }
        C0982s.m7373c("ECarXUtil,requestPlay: bRequestPlay = " + mediaCenterAPI.requestPlay(obj));
        this.mMediaCenterAPI.updateCurrentSourceType(this.mToken, 1);
        C0982s.m7373c("ECarXUtil,requestPlay: updateMusicPlaybackState: " + this.mMediaCenterAPI.updateMusicPlaybackState(this.mToken, new C0823e(context, z)));
        this.mMediaCenterAPI.updateMediaList(this.mToken, new C0817c(this));
    }

    public void test() {
    }

    public void unregisterMusic() {
        Object obj;
        MediaCenterAPI mediaCenterAPI;
        if (!this.bMediaCenterAPIReady || (obj = this.mToken) == null || (mediaCenterAPI = this.mMediaCenterAPI) == null) {
            return;
        }
        mediaCenterAPI.unregister(obj);
        this.mToken = null;
    }
}
