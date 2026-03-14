package cn.manstep.phonemirrorBox.p078l0;

import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.os.Build;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.databinding.C0328f;
import cn.manstep.phonemirrorBox.BoxInterface.C0730a;
import cn.manstep.phonemirrorBox.C0795b0;
import cn.manstep.phonemirrorBox.p072f0.C0826b;
import cn.manstep.phonemirrorBox.p072f0.C0827c;
import cn.manstep.phonemirrorBox.p072f0.C0829e;
import cn.manstep.phonemirrorBox.p072f0.C0830f;
import cn.manstep.phonemirrorBox.p072f0.C0831g;
import cn.manstep.phonemirrorBox.p074h0.C0853b;
import cn.manstep.phonemirrorBox.p075i0.AbstractC0861g;
import cn.manstep.phonemirrorBox.p076j0.C0880a;
import cn.manstep.phonemirrorBox.p077k0.C0884c;
import cn.manstep.phonemirrorBox.p091x0.C1003a;
import cn.manstep.phonemirrorBox.p091x0.C1007e;
import cn.manstep.phonemirrorBox.util.C0964c0;
import cn.manstep.phonemirrorBox.util.C0973j;
import cn.manstep.phonemirrorBox.util.C0977n;
import cn.manstep.phonemirrorBox.util.C0982s;
import cn.manstep.phonemirrorBox.util.C0984u;
import cn.manstep.phonemirrorBox.widget.C1000a;
import cn.manstep.phonemirrorBox.widget.ViewOnTouchListenerC1001b;
import cn.manstep.phonemirrorBox.widget.WaveformView;
import com.stub.StubApp;
import com.yalantis.ucrop.BuildConfig;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.Semaphore;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import p093d.p097b.p098a.C1198a;
import p093d.p097b.p098a.C1199b;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l0.l */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0905l extends C0906m implements SeekBar.OnSeekBarChangeListener {

    /* JADX INFO: renamed from: c0 */
    private C1199b f5638c0;

    /* JADX INFO: renamed from: d0 */
    private C1199b f5639d0;

    /* JADX INFO: renamed from: f0 */
    private WaveformView f5641f0;

    /* JADX INFO: renamed from: g0 */
    private TextView f5642g0;

    /* JADX INFO: renamed from: h0 */
    private TextView f5643h0;

    /* JADX INFO: renamed from: i0 */
    private SeekBar f5644i0;

    /* JADX INFO: renamed from: j0 */
    private AudioManager f5645j0;

    /* JADX INFO: renamed from: l0 */
    private AbstractC0861g f5647l0;

    /* JADX INFO: renamed from: m0 */
    private C1003a f5648m0;

    /* JADX INFO: renamed from: n0 */
    private C1007e f5649n0;

    /* JADX INFO: renamed from: o0 */
    private C0984u f5650o0;

    /* JADX INFO: renamed from: t0 */
    private p f5655t0;

    /* JADX INFO: renamed from: e0 */
    private boolean f5640e0 = false;

    /* JADX INFO: renamed from: k0 */
    private int f5646k0 = 0;

    /* JADX INFO: renamed from: p0 */
    private ThreadPoolExecutor f5651p0 = null;

    /* JADX INFO: renamed from: q0 */
    private boolean f5652q0 = false;

    /* JADX INFO: renamed from: r0 */
    private String f5653r0 = BuildConfig.FLAVOR;

    /* JADX INFO: renamed from: s0 */
    private C0880a.a f5654s0 = new C0880a.a();

    /* JADX INFO: renamed from: u0 */
    private final Semaphore f5656u0 = new Semaphore(1);

    /* JADX INFO: renamed from: v0 */
    private final CountDownTimer f5657v0 = new a(10000, 500);

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l0.l$a */
    class a extends CountDownTimer {

        /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l0.l$a$a, reason: collision with other inner class name */
        class RunnableC1355a implements Runnable {

            /* JADX INFO: renamed from: b */
            final /* synthetic */ int f5659b;

            /* JADX INFO: renamed from: c */
            final /* synthetic */ int f5660c;

            RunnableC1355a(int i, int i2) {
                this.f5659b = i;
                this.f5660c = i2;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (this.f5659b < 22) {
                    C0905l.this.f5657v0.start();
                    C0905l.this.f5648m0.m7544b0(true);
                    C0905l.this.f5648m0.m7543a0(this.f5660c);
                    C0905l.this.f5640e0 = true;
                    int i = this.f5660c;
                    if (i == 1) {
                        C0905l.this.f5648m0.m7522C().mo2965k(Integer.valueOf(this.f5659b));
                        C0829e c0829eM6240j = C0829e.m6240j();
                        C0905l c0905l = C0905l.this;
                        boolean zM6662P2 = c0905l.m6662P2(c0905l.f5648m0.m7556z().m2959e());
                        C0905l c0905l2 = C0905l.this;
                        int iM6661O2 = c0905l2.m6661O2(c0905l2.f5648m0.m7522C().m2959e());
                        C0905l c0905l3 = C0905l.this;
                        AudioAttributes audioAttributesM6660N2 = c0905l2.m6660N2(iM6661O2, c0905l3.m6661O2(c0905l3.f5648m0.m7521B().m2959e()));
                        C0905l c0905l4 = C0905l.this;
                        c0829eM6240j.m6247n(zM6662P2, audioAttributesM6660N2, c0905l4.m6661O2(c0905l4.f5648m0.m7522C().m2959e()));
                    } else if (i == 2) {
                        C0905l.this.f5648m0.m7554x().mo2965k(Integer.valueOf(this.f5659b));
                        C0826b c0826bM6214j = C0826b.m6214j();
                        C0905l c0905l5 = C0905l.this;
                        boolean zM6662P22 = c0905l5.m6662P2(c0905l5.f5648m0.m7556z().m2959e());
                        C0905l c0905l6 = C0905l.this;
                        int iM6661O22 = c0905l6.m6661O2(c0905l6.f5648m0.m7554x().m2959e());
                        C0905l c0905l7 = C0905l.this;
                        AudioAttributes audioAttributesM6660N22 = c0905l6.m6660N2(iM6661O22, c0905l7.m6661O2(c0905l7.f5648m0.m7553w().m2959e()));
                        C0905l c0905l8 = C0905l.this;
                        c0826bM6214j.m6221n(zM6662P22, audioAttributesM6660N22, c0905l8.m6661O2(c0905l8.f5648m0.m7554x().m2959e()));
                    } else if (i == 3) {
                        C0905l.this.f5648m0.m7534O().mo2965k(Integer.valueOf(this.f5659b));
                        C0831g c0831gM6258j = C0831g.m6258j();
                        C0905l c0905l9 = C0905l.this;
                        boolean zM6662P23 = c0905l9.m6662P2(c0905l9.f5648m0.m7556z().m2959e());
                        C0905l c0905l10 = C0905l.this;
                        int iM6661O23 = c0905l10.m6661O2(c0905l10.f5648m0.m7534O().m2959e());
                        C0905l c0905l11 = C0905l.this;
                        AudioAttributes audioAttributesM6660N23 = c0905l10.m6660N2(iM6661O23, c0905l11.m6661O2(c0905l11.f5648m0.m7533N().m2959e()));
                        C0905l c0905l12 = C0905l.this;
                        c0831gM6258j.m6264n(zM6662P23, audioAttributesM6660N23, c0905l12.m6661O2(c0905l12.f5648m0.m7534O().m2959e()));
                    } else if (i == 4) {
                        C0905l.this.f5648m0.m7529J().mo2965k(Integer.valueOf(this.f5659b));
                        C0830f c0830fM6249j = C0830f.m6249j();
                        C0905l c0905l13 = C0905l.this;
                        boolean zM6662P24 = c0905l13.m6662P2(c0905l13.f5648m0.m7556z().m2959e());
                        C0905l c0905l14 = C0905l.this;
                        int iM6661O24 = c0905l14.m6661O2(c0905l14.f5648m0.m7529J().m2959e());
                        C0905l c0905l15 = C0905l.this;
                        AudioAttributes audioAttributesM6660N24 = c0905l14.m6660N2(iM6661O24, c0905l15.m6661O2(c0905l15.f5648m0.m7528I().m2959e()));
                        C0905l c0905l16 = C0905l.this;
                        c0830fM6249j.m6256n(zM6662P24, audioAttributesM6660N24, c0905l16.m6661O2(c0905l16.f5648m0.m7529J().m2959e()));
                    }
                    C0905l.this.m6670Y2(this.f5660c);
                }
            }
        }

        a(long j, long j2) {
            super(j, j2);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            int iIntValue = 0;
            C0905l.this.f5640e0 = false;
            int iIntValue2 = C0905l.this.f5648m0.m7523D().m2959e().intValue();
            if (iIntValue2 == 1) {
                C0829e.m6240j().m6242g();
                iIntValue = C0905l.this.f5648m0.m7522C().m2959e().intValue();
                C0905l.this.f5648m0.m7521B().mo2965k(0);
            } else if (iIntValue2 == 2) {
                C0826b.m6214j().m6216g();
                iIntValue = C0905l.this.f5648m0.m7554x().m2959e().intValue();
                C0905l.this.f5648m0.m7553w().mo2965k(0);
            } else if (iIntValue2 == 3) {
                C0831g.m6258j().m6259g();
                iIntValue = C0905l.this.f5648m0.m7534O().m2959e().intValue();
                C0905l.this.f5648m0.m7533N().mo2965k(0);
            } else if (iIntValue2 == 4) {
                C0830f.m6249j().m6251g();
                iIntValue = C0905l.this.f5648m0.m7529J().m2959e().intValue();
                C0905l.this.f5648m0.m7528I().mo2965k(0);
            }
            new Handler().postDelayed(new RunnableC1355a(iIntValue + 1, iIntValue2), 8000L);
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j) {
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l0.l$b */
    class b implements CompoundButton.OnCheckedChangeListener {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ CheckBox f5662a;

        b(CheckBox checkBox) {
            this.f5662a = checkBox;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            C0905l.this.f5648m0.m7544b0(z);
            if (!z) {
                C0905l.this.f5657v0.cancel();
                C0905l.this.f5648m0.m7543a0(0);
                C0905l.this.f5640e0 = false;
                C0830f.m6249j().m6251g();
                C0905l.this.f5638c0.m9115i();
                this.f5662a.setChecked(false);
                return;
            }
            if (C0905l.this.f5647l0.f5180w.isChecked()) {
                C0905l.this.f5657v0.start();
            }
            C0905l.this.f5648m0.m7543a0(4);
            C0905l.this.f5640e0 = true;
            C0830f c0830fM6249j = C0830f.m6249j();
            C0905l c0905l = C0905l.this;
            boolean zM6662P2 = c0905l.m6662P2(c0905l.f5648m0.m7556z().m2959e());
            C0905l c0905l2 = C0905l.this;
            int iM6661O2 = c0905l2.m6661O2(c0905l2.f5648m0.m7529J().m2959e());
            C0905l c0905l3 = C0905l.this;
            AudioAttributes audioAttributesM6660N2 = c0905l2.m6660N2(iM6661O2, c0905l3.m6661O2(c0905l3.f5648m0.m7528I().m2959e()));
            C0905l c0905l4 = C0905l.this;
            c0830fM6249j.m6256n(zM6662P2, audioAttributesM6660N2, c0905l4.m6661O2(c0905l4.f5648m0.m7529J().m2959e()));
            C0905l.this.m6670Y2(4);
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l0.l$c */
    class c implements Runnable {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ int f5664b;

        c(int i) {
            this.f5664b = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f5664b == 5) {
                C0905l.this.m6668V2();
            } else {
                C0905l.this.m6667U2();
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l0.l$d */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Semaphore semaphore;
            try {
                C0905l.this.f5656u0.acquire();
                int iM9103A = C0905l.this.f5638c0.m9103A();
                byte[] bArr = new byte[iM9103A];
                try {
                    try {
                        InputStream inputStreamOpen = C0905l.this.m2406K1().getAssets().open("DTMF-14809414327.pcm");
                        float fAvailable = (inputStreamOpen.available() / 32000.0f) * 1500.0f;
                        while (C0905l.this.f5640e0 && C0905l.this.f5638c0.m9119z() != null) {
                            int i = inputStreamOpen.read(bArr, 0, iM9103A);
                            if (i > 0) {
                                C0905l.this.f5638c0.m9112f(bArr, 0, i);
                            } else {
                                try {
                                    Thread.sleep((long) fAvailable);
                                } catch (InterruptedException e) {
                                    e.printStackTrace();
                                }
                                inputStreamOpen.reset();
                            }
                        }
                        inputStreamOpen.close();
                        semaphore = C0905l.this.f5656u0;
                    } catch (IOException e2) {
                        e2.printStackTrace();
                        semaphore = C0905l.this.f5656u0;
                    }
                    semaphore.release();
                } catch (Throwable th) {
                    C0905l.this.f5656u0.release();
                    throw th;
                }
            } catch (InterruptedException e3) {
                e3.printStackTrace();
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l0.l$e */
    class e implements Runnable {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ CheckBox f5667b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ CheckBox f5668c;

        /* JADX INFO: renamed from: d */
        final /* synthetic */ CheckBox f5669d;

        /* JADX INFO: renamed from: e */
        final /* synthetic */ CheckBox f5670e;

        /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l0.l$e$a */
        class a implements Runnable {

            /* JADX INFO: renamed from: b */
            final /* synthetic */ File f5672b;

            a(File file) {
                this.f5672b = file;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (!this.f5672b.isFile()) {
                    C1000a.makeText(C0905l.this.m2406K1(), "播放失败：录音文件不存在！", 0).show();
                }
                C0905l.this.f5655t0.sendEmptyMessage(0);
            }
        }

        e(CheckBox checkBox, CheckBox checkBox2, CheckBox checkBox3, CheckBox checkBox4) {
            this.f5667b = checkBox;
            this.f5668c = checkBox2;
            this.f5669d = checkBox3;
            this.f5670e = checkBox4;
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x0114  */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() {
            FileInputStream fileInputStream;
            File file = new File(C0977n.m7308k(C0905l.this.m2404K()), C0905l.this.f5653r0);
            if (!file.exists() || !file.isFile() || C0905l.this.f5639d0.m9119z() == null) {
                C0973j.m7258d(new a(file));
                return;
            }
            C0905l c0905l = C0905l.this;
            double dM6659M2 = c0905l.m6659M2(file, c0905l.f5639d0.m9119z().getSampleRate(), C0905l.this.f5639d0.m9119z().getChannelCount(), 16);
            double dElapsedRealtime = SystemClock.elapsedRealtime();
            int iM9103A = C0905l.this.f5639d0.m9103A() * 2;
            byte[] bArr = new byte[iM9103A];
            try {
                fileInputStream = new FileInputStream(file);
                C0982s.m7374d("AudioDebug", "playRecord->run: size=" + fileInputStream.available() + ", len=" + iM9103A + ", ChannelCount=" + C0905l.this.f5639d0.m9119z().getChannelCount());
            } catch (IOException e) {
                C0982s.m7376f("AudioDebug", "playRecord->run: " + C0982s.m7377g(e));
            }
            while (true) {
                int i = fileInputStream.read(bArr, 0, iM9103A);
                float channelCount = (i / ((C0905l.this.f5654s0.f5484a * 2.0f) * C0905l.this.f5639d0.m9119z().getChannelCount())) * 1000.0f;
                C0982s.m7374d("AudioDebug", "playRecord->run: " + channelCount);
                if (i <= 0) {
                    break;
                }
                C0905l.this.f5639d0.m9112f(bArr, 0, i);
                try {
                    Thread.sleep((long) channelCount);
                } catch (InterruptedException unused) {
                }
                while (C0905l.this.f5638c0.m9119z() == null) {
                    Double.isNaN(dElapsedRealtime);
                    if ((1000.0d * dM6659M2) + dElapsedRealtime < SystemClock.elapsedRealtime() || C0905l.this.f5639d0.m9119z() == null) {
                        if (C0905l.this.f5639d0.m9119z() != null && C0905l.this.f5640e0) {
                            C0905l.this.f5655t0.sendEmptyMessageDelayed(0, 100L);
                        }
                        HashMap map = new HashMap();
                        map.put(this.f5667b, 5);
                        map.put(this.f5668c, 4);
                        map.put(this.f5669d, 2);
                        map.put(this.f5670e, 3);
                        for (Map.Entry entry : map.entrySet()) {
                            if (((CheckBox) entry.getKey()).isChecked()) {
                                C0905l.this.f5655t0.sendEmptyMessageDelayed(((Integer) entry.getValue()).intValue(), 100L);
                                return;
                            }
                        }
                        return;
                    }
                    try {
                        Thread.sleep(500L);
                    } catch (InterruptedException e2) {
                        e2.printStackTrace();
                    }
                }
            }
            fileInputStream.close();
            while (C0905l.this.f5638c0.m9119z() == null) {
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l0.l$f */
    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C0905l.this.f5654s0 = new C0880a.a();
            C0905l.this.f5654s0.f5484a = C0905l.this.f5648m0.m7530K().m2959e().intValue();
            C0905l.this.f5654s0.f5485b = C0905l.this.f5648m0.m7525F().m2959e().intValue();
            C0905l.this.f5654s0.f5486c = C0905l.this.f5648m0.m7531L().m2959e().intValue();
            if (C0905l.this.f5654s0.f5485b != 3) {
                C0905l.this.f5654s0.f5486c = 0;
            }
            C0880a c0880a = new C0880a(C0795b0.m6071i().m6091m("RecordSource", 1), C0905l.this.f5654s0);
            c0880a.m9128h(new C1198a(C0905l.this.f5654s0.f5484a, C0905l.this.f5654s0.f5485b == 1 ? 16 : 12, 2));
            c0880a.m9129i();
            C0905l.this.f5654s0.f5487d = String.format(Locale.getDefault(), "src_%d_%d.pcm", Integer.valueOf(C0905l.this.f5654s0.f5484a), Integer.valueOf(c0880a.m9133n()));
            C0982s.m7379i("AudioDebug", "record->run: " + C0905l.this.f5654s0);
            C0905l c0905l = C0905l.this;
            c0905l.f5653r0 = c0905l.f5654s0.f5487d;
            C0977n.m7301d(C0905l.this.m2404K(), C0905l.this.f5653r0);
            c0880a.m6490y(C0905l.this.f5654s0);
            if (c0880a.m6489x()) {
                C0905l.this.f5655t0.sendEmptyMessage(1);
                return;
            }
            int iM9126c = c0880a.m9126c();
            byte[] bArr = new byte[iM9126c];
            while (c0880a.m9134o() && C0905l.this.f5652q0) {
                if (c0880a.mo6486f(bArr, 0, iM9126c)) {
                    if (C0905l.this.f5641f0 == null) {
                        break;
                    } else {
                        C0905l.this.f5641f0.m7487e(bArr, iM9126c, c0880a.m9133n());
                    }
                }
            }
            if (c0880a.m9135q() == 3) {
                c0880a.m9131k();
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l0.l$g */
    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C0905l.this.f5648m0.m7544b0(true);
            C0905l.this.f5640e0 = true;
            int iIntValue = C0905l.this.f5648m0.m7523D().m2959e().intValue();
            if (iIntValue == 1) {
                C0829e c0829eM6240j = C0829e.m6240j();
                C0905l c0905l = C0905l.this;
                boolean zM6662P2 = c0905l.m6662P2(c0905l.f5648m0.m7556z().m2959e());
                C0905l c0905l2 = C0905l.this;
                int iM6661O2 = c0905l2.m6661O2(c0905l2.f5648m0.m7522C().m2959e());
                C0905l c0905l3 = C0905l.this;
                AudioAttributes audioAttributesM6660N2 = c0905l2.m6660N2(iM6661O2, c0905l3.m6661O2(c0905l3.f5648m0.m7521B().m2959e()));
                C0905l c0905l4 = C0905l.this;
                c0829eM6240j.m6247n(zM6662P2, audioAttributesM6660N2, c0905l4.m6661O2(c0905l4.f5648m0.m7522C().m2959e()));
            } else if (iIntValue == 2) {
                C0826b c0826bM6214j = C0826b.m6214j();
                C0905l c0905l5 = C0905l.this;
                boolean zM6662P22 = c0905l5.m6662P2(c0905l5.f5648m0.m7556z().m2959e());
                C0905l c0905l6 = C0905l.this;
                int iM6661O22 = c0905l6.m6661O2(c0905l6.f5648m0.m7554x().m2959e());
                C0905l c0905l7 = C0905l.this;
                AudioAttributes audioAttributesM6660N22 = c0905l6.m6660N2(iM6661O22, c0905l7.m6661O2(c0905l7.f5648m0.m7553w().m2959e()));
                C0905l c0905l8 = C0905l.this;
                c0826bM6214j.m6221n(zM6662P22, audioAttributesM6660N22, c0905l8.m6661O2(c0905l8.f5648m0.m7554x().m2959e()));
            } else if (iIntValue == 3) {
                C0831g c0831gM6258j = C0831g.m6258j();
                C0905l c0905l9 = C0905l.this;
                boolean zM6662P23 = c0905l9.m6662P2(c0905l9.f5648m0.m7556z().m2959e());
                C0905l c0905l10 = C0905l.this;
                int iM6661O23 = c0905l10.m6661O2(c0905l10.f5648m0.m7534O().m2959e());
                C0905l c0905l11 = C0905l.this;
                AudioAttributes audioAttributesM6660N23 = c0905l10.m6660N2(iM6661O23, c0905l11.m6661O2(c0905l11.f5648m0.m7533N().m2959e()));
                C0905l c0905l12 = C0905l.this;
                c0831gM6258j.m6264n(zM6662P23, audioAttributesM6660N23, c0905l12.m6661O2(c0905l12.f5648m0.m7534O().m2959e()));
            } else if (iIntValue == 4) {
                C0830f c0830fM6249j = C0830f.m6249j();
                C0905l c0905l13 = C0905l.this;
                boolean zM6662P24 = c0905l13.m6662P2(c0905l13.f5648m0.m7556z().m2959e());
                C0905l c0905l14 = C0905l.this;
                int iM6661O24 = c0905l14.m6661O2(c0905l14.f5648m0.m7529J().m2959e());
                C0905l c0905l15 = C0905l.this;
                AudioAttributes audioAttributesM6660N24 = c0905l14.m6660N2(iM6661O24, c0905l15.m6661O2(c0905l15.f5648m0.m7528I().m2959e()));
                C0905l c0905l16 = C0905l.this;
                c0830fM6249j.m6256n(zM6662P24, audioAttributesM6660N24, c0905l16.m6661O2(c0905l16.f5648m0.m7529J().m2959e()));
            }
            C0905l.this.m6670Y2(iIntValue);
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l0.l$h */
    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C0905l.this.f5640e0 = false;
            C0826b.m6214j().m6216g();
            C0827c.m6227n().m6234s();
            C0831g.m6258j().m6259g();
            C0829e.m6240j().m6242g();
            C0830f.m6249j().m6251g();
            C0905l.this.mo6691g2();
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l0.l$i */
    class i implements View.OnClickListener {

        /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l0.l$i$a */
        class a implements C0884c.b {
            a() {
            }

            @Override // cn.manstep.phonemirrorBox.p077k0.C0884c.b
            /* JADX INFO: renamed from: a */
            public void mo6553a(int i) {
                C0905l.this.f5646k0 = i;
                C0905l.this.m6664R2(i);
            }
        }

        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C0884c.m6547B2(C0905l.this.m2441X(), "音量类型", 10, C0905l.this.f5646k0, new a());
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l0.l$j */
    class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C0905l.this.m6666T2();
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l0.l$k */
    class k implements CompoundButton.OnCheckedChangeListener {

        /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l0.l$k$a */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                C0905l.this.m6669W2();
            }
        }

        k() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            C0905l.this.f5652q0 = z;
            C0905l.this.f5648m0.m7547e0(z);
            if (z) {
                C0905l.this.f5650o0.m7390a(new a());
            } else if (C0905l.this.f5648m0.m7523D().m2959e().intValue() != 2) {
                C0905l.this.f5649n0.m7586E(C0977n.m7318u(C0905l.this.m2404K()));
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l0.l$l */
    class l implements CompoundButton.OnCheckedChangeListener {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ CheckBox f5682a;

        l(CheckBox checkBox) {
            this.f5682a = checkBox;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            C0905l.this.f5648m0.m7544b0(z);
            if (z) {
                C0905l.this.f5648m0.m7543a0(3);
                C0905l.this.f5640e0 = true;
                C0827c.m6227n().m6236u();
                C0905l.this.m6670Y2(5);
                return;
            }
            C0905l.this.f5640e0 = false;
            C0905l.this.f5648m0.m7543a0(0);
            C0827c.m6227n().m6229g();
            if (C0905l.this.f5639d0 != null) {
                C0905l.this.f5639d0.m9115i();
            } else {
                C0905l.this.f5638c0.m9115i();
            }
            this.f5682a.setChecked(false);
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l0.l$m */
    class m implements CompoundButton.OnCheckedChangeListener {
        m() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            C0905l.this.f5648m0.m7544b0(z);
            if (!z) {
                C0905l.this.f5657v0.cancel();
                C0905l.this.f5648m0.m7543a0(0);
                C0829e.m6240j().m6242g();
                C0905l.this.f5640e0 = false;
                C0905l.this.f5638c0.m9115i();
                return;
            }
            if (C0905l.this.f5647l0.f5180w.isChecked()) {
                C0905l.this.f5657v0.start();
            }
            C0905l.this.f5648m0.m7543a0(1);
            C0905l.this.f5640e0 = true;
            C0829e c0829eM6240j = C0829e.m6240j();
            C0905l c0905l = C0905l.this;
            boolean zM6662P2 = c0905l.m6662P2(c0905l.f5648m0.m7556z().m2959e());
            C0905l c0905l2 = C0905l.this;
            int iM6661O2 = c0905l2.m6661O2(c0905l2.f5648m0.m7522C().m2959e());
            C0905l c0905l3 = C0905l.this;
            AudioAttributes audioAttributesM6660N2 = c0905l2.m6660N2(iM6661O2, c0905l3.m6661O2(c0905l3.f5648m0.m7521B().m2959e()));
            C0905l c0905l4 = C0905l.this;
            c0829eM6240j.m6247n(zM6662P2, audioAttributesM6660N2, c0905l4.m6661O2(c0905l4.f5648m0.m7522C().m2959e()));
            C0905l.this.m6670Y2(1);
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l0.l$n */
    class n implements CompoundButton.OnCheckedChangeListener {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ CheckBox f5685a;

        n(CheckBox checkBox) {
            this.f5685a = checkBox;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            C0905l.this.f5648m0.m7544b0(z);
            if (!z) {
                C0905l.this.f5657v0.cancel();
                C0905l.this.f5648m0.m7543a0(0);
                if (C0905l.this.f5648m0.m7555y().m2959e() != null && C0905l.this.f5648m0.m7555y().m2959e().booleanValue()) {
                    C0905l.this.f5645j0.setMode(0);
                }
                if (C0905l.this.f5648m0.m7532M().m2959e() != null && C0905l.this.f5648m0.m7532M().m2959e().booleanValue()) {
                    C0905l.this.f5645j0.setSpeakerphoneOn(false);
                }
                C0905l.this.f5640e0 = false;
                C0826b.m6214j().m6216g();
                C0905l.this.f5638c0.m9115i();
                this.f5685a.setChecked(false);
                return;
            }
            if (C0905l.this.f5647l0.f5180w.isChecked()) {
                C0905l.this.f5657v0.start();
            }
            C0905l.this.f5648m0.m7543a0(2);
            if (C0905l.this.f5648m0.m7555y().m2959e() != null && C0905l.this.f5648m0.m7555y().m2959e().booleanValue()) {
                C0905l.this.f5645j0.setMode(3);
            }
            if (C0905l.this.f5648m0.m7532M().m2959e() != null && C0905l.this.f5648m0.m7532M().m2959e().booleanValue()) {
                C0905l.this.f5645j0.setSpeakerphoneOn(true);
            }
            C0905l.this.f5640e0 = true;
            C0826b c0826bM6214j = C0826b.m6214j();
            C0905l c0905l = C0905l.this;
            boolean zM6662P2 = c0905l.m6662P2(c0905l.f5648m0.m7556z().m2959e());
            C0905l c0905l2 = C0905l.this;
            int iM6661O2 = c0905l2.m6661O2(c0905l2.f5648m0.m7554x().m2959e());
            C0905l c0905l3 = C0905l.this;
            AudioAttributes audioAttributesM6660N2 = c0905l2.m6660N2(iM6661O2, c0905l3.m6661O2(c0905l3.f5648m0.m7553w().m2959e()));
            C0905l c0905l4 = C0905l.this;
            c0826bM6214j.m6221n(zM6662P2, audioAttributesM6660N2, c0905l4.m6661O2(c0905l4.f5648m0.m7554x().m2959e()));
            C0905l.this.m6670Y2(2);
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l0.l$o */
    class o implements CompoundButton.OnCheckedChangeListener {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ CheckBox f5687a;

        o(CheckBox checkBox) {
            this.f5687a = checkBox;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            C0905l.this.f5648m0.m7544b0(z);
            if (!z) {
                C0905l.this.f5657v0.cancel();
                C0905l.this.f5648m0.m7543a0(0);
                C0905l.this.f5640e0 = false;
                C0831g.m6258j().m6259g();
                C0905l.this.f5638c0.m9115i();
                this.f5687a.setChecked(false);
                return;
            }
            if (C0905l.this.f5647l0.f5180w.isChecked()) {
                C0905l.this.f5657v0.start();
            }
            C0905l.this.f5648m0.m7543a0(3);
            C0905l.this.f5640e0 = true;
            C0831g c0831gM6258j = C0831g.m6258j();
            C0905l c0905l = C0905l.this;
            boolean zM6662P2 = c0905l.m6662P2(c0905l.f5648m0.m7556z().m2959e());
            C0905l c0905l2 = C0905l.this;
            int iM6661O2 = c0905l2.m6661O2(c0905l2.f5648m0.m7534O().m2959e());
            C0905l c0905l3 = C0905l.this;
            AudioAttributes audioAttributesM6660N2 = c0905l2.m6660N2(iM6661O2, c0905l3.m6661O2(c0905l3.f5648m0.m7533N().m2959e()));
            C0905l c0905l4 = C0905l.this;
            c0831gM6258j.m6264n(zM6662P2, audioAttributesM6660N2, c0905l4.m6661O2(c0905l4.f5648m0.m7534O().m2959e()));
            C0905l.this.m6670Y2(3);
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l0.l$p */
    private static class p extends Handler {

        /* JADX INFO: renamed from: a */
        private final WeakReference<C0905l> f5689a;

        public p(C0905l c0905l) {
            this.f5689a = new WeakReference<>(c0905l);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            if (this.f5689a.get() == null || this.f5689a.get().f5647l0 == null) {
                return;
            }
            int i = message.what;
            if (i == 0) {
                this.f5689a.get().f5647l0.f5183z.performClick();
                return;
            }
            if (i == 1) {
                this.f5689a.get().f5647l0.f5168C.performClick();
                C1000a.makeText(this.f5689a.get().m2406K1(), "录音创建失败", 0).show();
                return;
            }
            if (i == 2) {
                this.f5689a.get().f5647l0.f5166A.performClick();
                return;
            }
            if (i == 3) {
                this.f5689a.get().f5647l0.f5182y.performClick();
            } else if (i == 4) {
                this.f5689a.get().f5647l0.f5181x.performClick();
            } else {
                if (i != 5) {
                    return;
                }
                this.f5689a.get().f5647l0.f5167B.performClick();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: M2 */
    public double m6659M2(File file, int i2, int i3, int i4) {
        double length = file.length();
        double d2 = i2 * i3 * (i4 / 8);
        Double.isNaN(length);
        Double.isNaN(d2);
        return length / d2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: N2 */
    public AudioAttributes m6660N2(int i2, int i3) {
        if (Build.VERSION.SDK_INT >= 26) {
            try {
                return new AudioAttributes.Builder().setUsage(i2).setContentType(i3).build();
            } catch (Exception unused) {
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: O2 */
    public int m6661O2(Integer num) {
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: P2 */
    public boolean m6662P2(Boolean bool) {
        if (bool == null) {
            return false;
        }
        return bool.booleanValue();
    }

    /* JADX INFO: renamed from: Q2 */
    private void m6663Q2() {
        C0827c.m6227n().m6232p(StubApp.getOrigApplicationContext(m2406K1().getApplicationContext()));
        C0829e.m6240j().m6245l(StubApp.getOrigApplicationContext(m2406K1().getApplicationContext()));
        C0826b.m6214j().m6219l(StubApp.getOrigApplicationContext(m2406K1().getApplicationContext()));
        C0831g.m6258j().m6262l(StubApp.getOrigApplicationContext(m2406K1().getApplicationContext()));
        C0830f.m6249j().m6254l(StubApp.getOrigApplicationContext(m2406K1().getApplicationContext()));
        C1199b c1199bM5453i = new C0730a(5, 1, m2406K1()).m5453i();
        this.f5638c0 = c1199bM5453i;
        c1199bM5453i.m9117n(1.0f);
        C1199b c1199bM5453i2 = new C0730a(5, 1, m2406K1()).m5453i();
        this.f5639d0 = c1199bM5453i2;
        c1199bM5453i2.m9117n(1.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: R2 */
    public void m6664R2(int i2) {
        try {
            int streamVolume = this.f5645j0.getStreamVolume(i2);
            int streamMaxVolume = this.f5645j0.getStreamMaxVolume(i2);
            this.f5646k0 = i2;
            this.f5642g0.setText("音量(类型: " + i2 + ")");
            this.f5644i0.setMax(streamMaxVolume);
            this.f5644i0.setProgress(streamVolume);
            this.f5643h0.setText(String.valueOf(streamVolume));
            this.f5644i0.setOnSeekBarChangeListener(this);
        } catch (Exception unused) {
            if (i2 != 0) {
                m6664R2(0);
            }
        }
    }

    /* JADX INFO: renamed from: S2 */
    private void m6665S2(int i2) {
        int iM6091m = i2 == 4 ? C0795b0.m6071i().m6091m("RingAudioVol", 0) : i2 == 3 ? C0795b0.m6071i().m6091m("VAAudioVol", 0) : i2 == 2 ? C0795b0.m6071i().m6091m("CallAudioVol", 0) : i2 == 1 ? C0795b0.m6071i().m6091m("NVAudioVol", 0) : 0;
        if (iM6091m <= 0) {
            m6664R2(0);
            return;
        }
        int[] iArrM7198v = C0964c0.m7198v(iM6091m);
        this.f5645j0.setStreamVolume(iArrM7198v[1], iArrM7198v[0], 0);
        m6664R2(iArrM7198v[1]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: T2 */
    public void m6666T2() {
        C1003a c1003a = this.f5648m0;
        if (c1003a == null || c1003a.m7523D() == null || this.f5648m0.m7523D().m2959e() == null) {
            return;
        }
        int iIntValue = this.f5648m0.m7523D().m2959e().intValue();
        int i2 = this.f5646k0;
        int iM7194r = C0964c0.m7194r(i2, this.f5645j0.getStreamVolume(i2));
        C0982s.m7374d("AudioDebug", "okVolume: " + iM7194r);
        if (iIntValue == 4) {
            C0795b0.m6071i().m6085F("RingAudioVol", Integer.valueOf(iM7194r));
        } else if (iIntValue == 3) {
            C0795b0.m6071i().m6085F("VAAudioVol", Integer.valueOf(iM7194r));
        } else if (iIntValue == 2) {
            C0795b0.m6071i().m6085F("CallAudioVol", Integer.valueOf(iM7194r));
        } else if (iIntValue == 1) {
            C0795b0.m6071i().m6085F("NVAudioVol", Integer.valueOf(iM7194r));
        }
        C1000a.makeText(m2406K1(), "保存成功", 0).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: U2 */
    public void m6667U2() {
        CheckBox checkBox = (CheckBox) m2478l0().findViewById(2131296719);
        if (this.f5639d0.m9119z() != null) {
            this.f5639d0.m9115i();
        }
        if (checkBox.isChecked()) {
            checkBox.setBackgroundResource(2131230935);
        }
        this.f5651p0.execute(new d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: V2 */
    public void m6668V2() {
        AudioFormat audioFormatBuild;
        if (this.f5638c0.m9119z() != null) {
            this.f5638c0.m9115i();
        }
        CheckBox checkBox = (CheckBox) m2478l0().findViewById(2131296719);
        CheckBox checkBox2 = (CheckBox) m2478l0().findViewById(2131296718);
        CheckBox checkBox3 = (CheckBox) m2478l0().findViewById(2131296716);
        CheckBox checkBox4 = (CheckBox) m2478l0().findViewById(2131296715);
        if (checkBox.isChecked()) {
            checkBox.setBackgroundResource(2131230934);
        }
        C0982s.m7379i("AudioDebug", "playRecord: recordDebugParams=" + this.f5654s0);
        C0880a.a aVar = this.f5654s0;
        C1198a c1198a = new C1198a(aVar.f5484a, aVar.f5485b == 1 ? 4 : 12, 2);
        if (Build.VERSION.SDK_INT >= 23) {
            if (this.f5654s0.f5485b != 3) {
                audioFormatBuild = new AudioFormat.Builder().setSampleRate(this.f5654s0.f5484a).setChannelMask(this.f5654s0.f5485b != 1 ? 12 : 4).setEncoding(2).build();
            } else {
                audioFormatBuild = new AudioFormat.Builder().setSampleRate(this.f5654s0.f5484a).setChannelIndexMask(this.f5654s0.f5486c).setEncoding(2).build();
            }
            C0982s.m7374d("AudioDebug", "playRecord: ChannelCount=" + audioFormatBuild.getChannelCount());
            this.f5639d0.m9108b(new AudioAttributes.Builder().setUsage(1).setContentType(2).build(), c1198a, audioFormatBuild);
        } else {
            this.f5639d0.m9110d(c1198a, 3);
        }
        C0982s.m7374d("AudioDebug", "playRecord: recordName=" + this.f5653r0);
        this.f5651p0.execute(new e(checkBox, checkBox4, checkBox2, checkBox3));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: W2 */
    public void m6669W2() {
        this.f5651p0.execute(new f());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: Y2 */
    public void m6670Y2(int i2) {
        m6665S2(i2);
        if (i2 == 1) {
            if (m6662P2(this.f5648m0.m7556z().m2959e()) || Build.VERSION.SDK_INT < 26) {
                this.f5638c0.m9110d(new C1198a(16000, 4, 2), m6661O2(this.f5648m0.m7522C().m2959e()));
            } else {
                this.f5638c0.m9107a(m6660N2(m6661O2(this.f5648m0.m7522C().m2959e()), m6661O2(this.f5648m0.m7521B().m2959e())), new C1198a(16000, 4, 2));
            }
        } else if (i2 == 2) {
            if (m6662P2(this.f5648m0.m7556z().m2959e()) || Build.VERSION.SDK_INT < 26) {
                this.f5638c0.m9110d(new C1198a(16000, 4, 2), m6661O2(this.f5648m0.m7554x().m2959e()));
            } else {
                this.f5638c0.m9107a(m6660N2(m6661O2(this.f5648m0.m7554x().m2959e()), m6661O2(this.f5648m0.m7553w().m2959e())), new C1198a(16000, 4, 2));
            }
        } else if (i2 == 3) {
            if (m6662P2(this.f5648m0.m7556z().m2959e()) || Build.VERSION.SDK_INT < 26) {
                this.f5638c0.m9110d(new C1198a(16000, 4, 2), m6661O2(this.f5648m0.m7534O().m2959e()));
            } else {
                this.f5638c0.m9107a(m6660N2(m6661O2(this.f5648m0.m7534O().m2959e()), m6661O2(this.f5648m0.m7533N().m2959e())), new C1198a(16000, 4, 2));
            }
        } else if (i2 == 4) {
            if (m6662P2(this.f5648m0.m7556z().m2959e()) || Build.VERSION.SDK_INT < 26) {
                this.f5638c0.m9110d(new C1198a(16000, 4, 2), m6661O2(this.f5648m0.m7529J().m2959e()));
            } else {
                this.f5638c0.m9107a(m6660N2(m6661O2(this.f5648m0.m7529J().m2959e()), m6661O2(this.f5648m0.m7528I().m2959e())), new C1198a(16000, 4, 2));
            }
        } else if (i2 != 5) {
            if (Build.VERSION.SDK_INT >= 26) {
                this.f5638c0.m9107a(m6660N2(1, 2), new C1198a(16000, 4, 2));
            } else {
                this.f5638c0.m9110d(new C1198a(16000, 4, 2), 3);
            }
        }
        m6664R2(this.f5638c0.m9105C());
        this.f5650o0.m7391b(new c(i2), 300L);
    }

    public static C0905l newInstance() {
        return new C0905l();
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: H0 */
    public void mo2397H0(Bundle bundle) {
        super.mo2397H0(bundle);
        this.f5650o0 = new C0984u();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        C0853b c0853b = new C0853b();
        c0853b.m6344f("AudioDebug-%d");
        this.f5651p0 = new ThreadPoolExecutor(4, 6, 0L, timeUnit, linkedBlockingQueue, c0853b.m6343b(), new ThreadPoolExecutor.AbortPolicy());
        m6663Q2();
        this.f5655t0 = new p(this);
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: L0 */
    public View mo2408L0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        AbstractC0861g abstractC0861g = (AbstractC0861g) C0328f.m2359e(layoutInflater, 2131492932, viewGroup, false);
        this.f5647l0 = abstractC0861g;
        abstractC0861g.m2328G(this);
        this.f5648m0 = new C1003a(m2403J1().getApplication(), m2441X());
        C1007e c1007e = new C1007e(m2403J1().getApplication(), m2441X());
        this.f5649n0 = c1007e;
        this.f5647l0.mo6384L(c1007e);
        this.f5647l0.mo6385M(this.f5648m0);
        this.f5648m0.m7538V(new C1003a.k() { // from class: cn.manstep.phonemirrorBox.l0.j
            @Override // cn.manstep.phonemirrorBox.p091x0.C1003a.k
            /* JADX INFO: renamed from: a */
            public final void mo6645a() {
                this.f5630a.m6690X2();
            }
        });
        return this.f5647l0.m2334t();
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: M0 */
    public void mo2411M0() {
        super.mo2411M0();
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: O0 */
    public void mo2416O0() {
        super.mo2416O0();
        this.f5647l0 = null;
        this.f5652q0 = false;
        this.f5641f0 = null;
        this.f5640e0 = false;
        this.f5657v0.cancel();
        ThreadPoolExecutor threadPoolExecutor = this.f5651p0;
        if (threadPoolExecutor != null) {
            threadPoolExecutor.shutdownNow();
            this.f5651p0 = null;
        }
    }

    /* JADX INFO: renamed from: X2 */
    public void m6690X2() {
        if (this.f5640e0) {
            this.f5657v0.cancel();
            this.f5640e0 = false;
            this.f5638c0.m9115i();
            C0826b.m6214j().m6216g();
            C0831g.m6258j().m6259g();
            C0829e.m6240j().m6242g();
            C0830f.m6249j().m6251g();
            new Handler().postDelayed(new g(), 2000L);
        }
    }

    @Override // cn.manstep.phonemirrorBox.p078l0.C0906m, androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: g1 */
    public void mo2469g1(View view, Bundle bundle) {
        super.mo2469g1(view, bundle);
        view.findViewById(2131296370).setOnClickListener(new h());
        this.f5641f0 = (WaveformView) view.findViewById(2131296955);
        this.f5643h0 = (TextView) view.findViewById(2131296951);
        this.f5644i0 = (SeekBar) view.findViewById(2131296949);
        TextView textView = (TextView) view.findViewById(2131296950);
        this.f5642g0 = textView;
        textView.setOnClickListener(new i());
        this.f5645j0 = (AudioManager) m2406K1().getSystemService("audio");
        View viewFindViewById = view.findViewById(2131296563);
        ViewOnTouchListenerC1001b.m7491b(viewFindViewById);
        viewFindViewById.setOnClickListener(new j());
        CheckBox checkBox = (CheckBox) view.findViewById(2131296735);
        checkBox.setOnCheckedChangeListener(new k());
        CheckBox checkBox2 = (CheckBox) view.findViewById(2131296717);
        checkBox2.setOnCheckedChangeListener(new l(checkBox2));
        ((CheckBox) view.findViewById(2131296716)).setOnCheckedChangeListener(new m());
        ((CheckBox) view.findViewById(2131296715)).setOnCheckedChangeListener(new n(checkBox));
        ((CheckBox) view.findViewById(2131296719)).setOnCheckedChangeListener(new o(checkBox));
        ((CheckBox) view.findViewById(2131296718)).setOnCheckedChangeListener(new b(checkBox));
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i2, boolean z) {
        this.f5643h0.setText(String.valueOf(i2));
        this.f5645j0.setStreamVolume(this.f5646k0, i2, 5);
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
    }
}
