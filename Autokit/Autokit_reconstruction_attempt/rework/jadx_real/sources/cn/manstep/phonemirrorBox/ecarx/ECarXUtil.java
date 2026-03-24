package cn.manstep.phonemirrorBox.ecarx;

import android.content.Context;
import android.media.AudioAttributes;
import android.os.Build;
import android.os.Handler;
import cn.manstep.phonemirrorBox.b0;
import cn.manstep.phonemirrorBox.u;
import cn.manstep.phonemirrorBox.util.h;
import cn.manstep.phonemirrorBox.util.s;
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

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class ECarXUtil {
    private static final String TAG = "ECarXUtil";
    private static volatile ECarXUtil instance;
    private AudioAttributes mCallAudioAttributes;
    private cn.manstep.phonemirrorBox.ecarx.a mDayNightChangeCallBack;
    private IDayNightMode mDayNightMode;
    private cn.manstep.phonemirrorBox.ecarx.b mECarXLog;
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

    class a implements ECarXApiClient.Callback {
        a() {
        }

        public void onAPIReady(boolean z) {
            s.e("ECarXUtil,initPolicyAPI: onAPIReady " + z);
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

    class b implements ECarXApiClient.Callback {

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

        b() {
        }

        public void onAPIReady(boolean z) {
            ECarXUtil.this.bMediaCenterAPIReady = z;
            s.c("ECarXUtil,initMediaCenter: onAPIReady " + z);
            new Handler().postDelayed(new a(), 5000L);
        }
    }

    class c extends MediaListInfo {
        c(ECarXUtil eCarXUtil) {
        }

        public int getMediaListType() {
            return 0;
        }
    }

    private class d extends TimerTask {
        private d() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            s.c("ECarXUtil,TimerTask:--------");
            if (cn.manstep.phonemirrorBox.BoxInterface.d.G()) {
                if (cn.manstep.phonemirrorBox.v0.a.t().y() || cn.manstep.phonemirrorBox.v0.e.C()) {
                    ECarXUtil.this.registerMusic();
                }
            }
        }

        /* synthetic */ d(ECarXUtil eCarXUtil, a aVar) {
            this();
        }
    }

    private ECarXUtil() {
        try {
            this.mECarXLog = new cn.manstep.phonemirrorBox.ecarx.b();
        } catch (Error | Exception unused) {
            this.mECarXLog = null;
        }
        try {
            this.mMusicClient = new cn.manstep.phonemirrorBox.ecarx.c();
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
        s.c("ECarXUtil,initMediaCenter: mMediaCenterAPI = " + this.mMediaCenterAPI);
        MediaCenterAPI mediaCenterAPI = this.mMediaCenterAPI;
        if (mediaCenterAPI == null) {
            s.e("ECarXUtil,initMediaCenter: mMediaCenterAPI = null");
            return;
        }
        try {
            mediaCenterAPI.init(context, new b());
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
                policyAPI.init(context, new a());
            }
        } catch (Error | Exception unused) {
        }
    }

    private void startRegisterMusicFuture() {
        if (this.mRegisterMusicFuture == null) {
            if (this.mThreadPoolExecutor == null) {
                this.mThreadPoolExecutor = new ScheduledThreadPoolExecutor(1, new h("RegisterMusic"));
            }
            this.mRegisterMusicFuture = this.mThreadPoolExecutor.scheduleAtFixedRate(new d(this, null), 0L, 15000L, TimeUnit.MILLISECONDS);
        }
    }

    public String getAPIReady() {
        return this.bMediaCenterAPIReady + " " + this.bPolicyAPIReady + " " + this.bDeviceAPIReady + " " + this.mToken;
    }

    public AudioAttributes getCallAudioAttributes() {
        if (this.mCallAudioAttributes == null) {
            int i = 2;
            int i2 = 1;
            if (b0.i().m("CallAudioAttr", u.z().e()) == 1) {
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
            if (b0.i().m("CallAudioAttr", u.z().e()) == 1) {
                i = 6;
                i2 = 0;
            }
            this.mSiriAudioAttributes = new AudioAttributes.Builder().setUsage(i).setContentType(i2).build();
        }
        return this.mSiriAudioAttributes;
    }

    public void init(Context context) {
        s.c("ECarXUtil,init: " + context);
        this.mWeakContext = new WeakReference<>(context);
    }

    public void onAudioFocusChange(boolean z) {
        s.c("ECarXUtil,onAudioFocusChange: " + z + ", " + this.bMediaCenterAPIReady);
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
            s.c("ECarXUtil,registerMusic: bMediaCenterAPIReady = false");
            return;
        }
        Context context = this.mWeakContext.get();
        if (context == null) {
            s.e("ECarXUtil,registerMusic: context = null");
            return;
        }
        if (this.mMediaCenterAPI != null) {
            s.c("ECarXUtil,registerMusic: " + context.getPackageName());
            try {
                VrMusicCtrlAPI vrMusicApi = this.mMediaCenterAPI.getVrMusicApi();
                cn.manstep.phonemirrorBox.ecarx.d dVar = new cn.manstep.phonemirrorBox.ecarx.d();
                vrMusicApi.declareMusicCtrlCapability(new int[]{1}, dVar);
                vrMusicApi.declareVrCtrlPriority(context.getPackageName(), 1, dVar);
            } catch (Error unused) {
            }
            try {
                this.mToken = this.mMediaCenterAPI.registerMusic(context.getPackageName(), this.mMusicClient);
            } catch (Error | Exception unused2) {
            }
            s.c("ECarXUtil,registerMusic: mToken = " + this.mToken);
            requestPlay(true);
        }
    }

    public void release() {
        s.c("ECarXUtil,release");
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
            s.c("ECarXUtil,requestPlay: bMediaCenterAPIReady = false");
            return;
        }
        Context context = this.mWeakContext.get();
        if (context == null || (mediaCenterAPI = this.mMediaCenterAPI) == null || (obj = this.mToken) == null) {
            return;
        }
        s.c("ECarXUtil,requestPlay: bRequestPlay = " + mediaCenterAPI.requestPlay(obj));
        this.mMediaCenterAPI.updateCurrentSourceType(this.mToken, 1);
        s.c("ECarXUtil,requestPlay: updateMusicPlaybackState: " + this.mMediaCenterAPI.updateMusicPlaybackState(this.mToken, new e(context, z)));
        this.mMediaCenterAPI.updateMediaList(this.mToken, new c(this));
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
