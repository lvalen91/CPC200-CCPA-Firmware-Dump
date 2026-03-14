package cn.manstep.phonemirrorBox.l0;

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
import cn.manstep.phonemirrorBox.b0;
import cn.manstep.phonemirrorBox.j0.a;
import cn.manstep.phonemirrorBox.k0.c;
import cn.manstep.phonemirrorBox.util.c0;
import cn.manstep.phonemirrorBox.widget.WaveformView;
import cn.manstep.phonemirrorBox.x0.a;
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

/* JADX INFO: loaded from: /tmp/autokit_analysis/dumped_dex/dex_47.dex */
public class l extends cn.manstep.phonemirrorBox.l0.m implements SeekBar.OnSeekBarChangeListener {
    private d.b.a.b c0;
    private d.b.a.b d0;
    private WaveformView f0;
    private TextView g0;
    private TextView h0;
    private SeekBar i0;
    private AudioManager j0;
    private cn.manstep.phonemirrorBox.i0.g l0;
    private cn.manstep.phonemirrorBox.x0.a m0;
    private cn.manstep.phonemirrorBox.x0.e n0;
    private cn.manstep.phonemirrorBox.util.u o0;
    private p t0;
    private boolean e0 = false;
    private int k0 = 0;
    private ThreadPoolExecutor p0 = null;
    private boolean q0 = false;
    private String r0 = BuildConfig.FLAVOR;
    private a.C0087a s0 = new a.C0087a();
    private final Semaphore u0 = new Semaphore(1);
    private final CountDownTimer v0 = new a(10000, 500);

    class a extends CountDownTimer {

        /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l0.l$a$a, reason: collision with other inner class name */
        class RunnableC0089a implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ int f1737b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ int f1738c;

            RunnableC0089a(int i, int i2) {
                this.f1737b = i;
                this.f1738c = i2;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (this.f1737b < 22) {
                    l.this.v0.start();
                    l.this.m0.b0(true);
                    l.this.m0.a0(this.f1738c);
                    l.this.e0 = true;
                    int i = this.f1738c;
                    if (i == 1) {
                        l.this.m0.C().k(Integer.valueOf(this.f1737b));
                        cn.manstep.phonemirrorBox.f0.e eVarJ = cn.manstep.phonemirrorBox.f0.e.j();
                        l lVar = l.this;
                        boolean zP2 = lVar.P2(lVar.m0.z().e());
                        l lVar2 = l.this;
                        int iO2 = lVar2.O2(lVar2.m0.C().e());
                        l lVar3 = l.this;
                        AudioAttributes audioAttributesN2 = lVar2.N2(iO2, lVar3.O2(lVar3.m0.B().e()));
                        l lVar4 = l.this;
                        eVarJ.n(zP2, audioAttributesN2, lVar4.O2(lVar4.m0.C().e()));
                    } else if (i == 2) {
                        l.this.m0.x().k(Integer.valueOf(this.f1737b));
                        cn.manstep.phonemirrorBox.f0.b bVarJ = cn.manstep.phonemirrorBox.f0.b.j();
                        l lVar5 = l.this;
                        boolean zP22 = lVar5.P2(lVar5.m0.z().e());
                        l lVar6 = l.this;
                        int iO22 = lVar6.O2(lVar6.m0.x().e());
                        l lVar7 = l.this;
                        AudioAttributes audioAttributesN22 = lVar6.N2(iO22, lVar7.O2(lVar7.m0.w().e()));
                        l lVar8 = l.this;
                        bVarJ.n(zP22, audioAttributesN22, lVar8.O2(lVar8.m0.x().e()));
                    } else if (i == 3) {
                        l.this.m0.O().k(Integer.valueOf(this.f1737b));
                        cn.manstep.phonemirrorBox.f0.g gVarJ = cn.manstep.phonemirrorBox.f0.g.j();
                        l lVar9 = l.this;
                        boolean zP23 = lVar9.P2(lVar9.m0.z().e());
                        l lVar10 = l.this;
                        int iO23 = lVar10.O2(lVar10.m0.O().e());
                        l lVar11 = l.this;
                        AudioAttributes audioAttributesN23 = lVar10.N2(iO23, lVar11.O2(lVar11.m0.N().e()));
                        l lVar12 = l.this;
                        gVarJ.n(zP23, audioAttributesN23, lVar12.O2(lVar12.m0.O().e()));
                    } else if (i == 4) {
                        l.this.m0.J().k(Integer.valueOf(this.f1737b));
                        cn.manstep.phonemirrorBox.f0.f fVarJ = cn.manstep.phonemirrorBox.f0.f.j();
                        l lVar13 = l.this;
                        boolean zP24 = lVar13.P2(lVar13.m0.z().e());
                        l lVar14 = l.this;
                        int iO24 = lVar14.O2(lVar14.m0.J().e());
                        l lVar15 = l.this;
                        AudioAttributes audioAttributesN24 = lVar14.N2(iO24, lVar15.O2(lVar15.m0.I().e()));
                        l lVar16 = l.this;
                        fVarJ.n(zP24, audioAttributesN24, lVar16.O2(lVar16.m0.J().e()));
                    }
                    l.this.Y2(this.f1738c);
                }
            }
        }

        a(long j, long j2) {
            super(j, j2);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            int iIntValue = 0;
            l.this.e0 = false;
            int iIntValue2 = l.this.m0.D().e().intValue();
            if (iIntValue2 == 1) {
                cn.manstep.phonemirrorBox.f0.e.j().g();
                iIntValue = l.this.m0.C().e().intValue();
                l.this.m0.B().k(0);
            } else if (iIntValue2 == 2) {
                cn.manstep.phonemirrorBox.f0.b.j().g();
                iIntValue = l.this.m0.x().e().intValue();
                l.this.m0.w().k(0);
            } else if (iIntValue2 == 3) {
                cn.manstep.phonemirrorBox.f0.g.j().g();
                iIntValue = l.this.m0.O().e().intValue();
                l.this.m0.N().k(0);
            } else if (iIntValue2 == 4) {
                cn.manstep.phonemirrorBox.f0.f.j().g();
                iIntValue = l.this.m0.J().e().intValue();
                l.this.m0.I().k(0);
            }
            new Handler().postDelayed(new RunnableC0089a(iIntValue + 1, iIntValue2), 8000L);
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j) {
        }
    }

    class b implements CompoundButton.OnCheckedChangeListener {
        final /* synthetic */ CheckBox a;

        b(CheckBox checkBox) {
            this.a = checkBox;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            l.this.m0.b0(z);
            if (!z) {
                l.this.v0.cancel();
                l.this.m0.a0(0);
                l.this.e0 = false;
                cn.manstep.phonemirrorBox.f0.f.j().g();
                l.this.c0.i();
                this.a.setChecked(false);
                return;
            }
            if (l.this.l0.w.isChecked()) {
                l.this.v0.start();
            }
            l.this.m0.a0(4);
            l.this.e0 = true;
            cn.manstep.phonemirrorBox.f0.f fVarJ = cn.manstep.phonemirrorBox.f0.f.j();
            l lVar = l.this;
            boolean zP2 = lVar.P2(lVar.m0.z().e());
            l lVar2 = l.this;
            int iO2 = lVar2.O2(lVar2.m0.J().e());
            l lVar3 = l.this;
            AudioAttributes audioAttributesN2 = lVar2.N2(iO2, lVar3.O2(lVar3.m0.I().e()));
            l lVar4 = l.this;
            fVarJ.n(zP2, audioAttributesN2, lVar4.O2(lVar4.m0.J().e()));
            l.this.Y2(4);
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f1741b;

        c(int i) {
            this.f1741b = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f1741b == 5) {
                l.this.V2();
            } else {
                l.this.U2();
            }
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Semaphore semaphore;
            try {
                l.this.u0.acquire();
                int iA = l.this.c0.A();
                byte[] bArr = new byte[iA];
                try {
                    try {
                        InputStream inputStreamOpen = l.this.K1().getAssets().open("DTMF-14809414327.pcm");
                        float fAvailable = (inputStreamOpen.available() / 32000.0f) * 1500.0f;
                        while (l.this.e0 && l.this.c0.z() != null) {
                            int i = inputStreamOpen.read(bArr, 0, iA);
                            if (i > 0) {
                                l.this.c0.f(bArr, 0, i);
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
                        semaphore = l.this.u0;
                    } catch (IOException e2) {
                        e2.printStackTrace();
                        semaphore = l.this.u0;
                    }
                    semaphore.release();
                } catch (Throwable th) {
                    l.this.u0.release();
                    throw th;
                }
            } catch (InterruptedException e3) {
                e3.printStackTrace();
            }
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CheckBox f1744b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ CheckBox f1745c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ CheckBox f1746d;
        final /* synthetic */ CheckBox e;

        class a implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ File f1747b;

            a(File file) {
                this.f1747b = file;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (!this.f1747b.isFile()) {
                    cn.manstep.phonemirrorBox.widget.a.makeText(l.this.K1(), "播放失败：录音文件不存在！", 0).show();
                }
                l.this.t0.sendEmptyMessage(0);
            }
        }

        e(CheckBox checkBox, CheckBox checkBox2, CheckBox checkBox3, CheckBox checkBox4) {
            this.f1744b = checkBox;
            this.f1745c = checkBox2;
            this.f1746d = checkBox3;
            this.e = checkBox4;
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x0114  */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() {
            FileInputStream fileInputStream;
            File file = new File(cn.manstep.phonemirrorBox.util.n.k(l.this.K()), l.this.r0);
            if (!file.exists() || !file.isFile() || l.this.d0.z() == null) {
                cn.manstep.phonemirrorBox.util.j.d(new a(file));
                return;
            }
            l lVar = l.this;
            double dM2 = lVar.M2(file, lVar.d0.z().getSampleRate(), l.this.d0.z().getChannelCount(), 16);
            double dElapsedRealtime = SystemClock.elapsedRealtime();
            int iA = l.this.d0.A() * 2;
            byte[] bArr = new byte[iA];
            try {
                fileInputStream = new FileInputStream(file);
                cn.manstep.phonemirrorBox.util.s.d("AudioDebug", "playRecord->run: size=" + fileInputStream.available() + ", len=" + iA + ", ChannelCount=" + l.this.d0.z().getChannelCount());
            } catch (IOException e) {
                cn.manstep.phonemirrorBox.util.s.f("AudioDebug", "playRecord->run: " + cn.manstep.phonemirrorBox.util.s.g(e));
            }
            while (true) {
                int i = fileInputStream.read(bArr, 0, iA);
                float channelCount = (i / ((l.this.s0.a * 2.0f) * l.this.d0.z().getChannelCount())) * 1000.0f;
                cn.manstep.phonemirrorBox.util.s.d("AudioDebug", "playRecord->run: " + channelCount);
                if (i <= 0) {
                    break;
                }
                l.this.d0.f(bArr, 0, i);
                try {
                    Thread.sleep((long) channelCount);
                } catch (InterruptedException unused) {
                }
                while (l.this.c0.z() == null) {
                    Double.isNaN(dElapsedRealtime);
                    if ((1000.0d * dM2) + dElapsedRealtime < SystemClock.elapsedRealtime() || l.this.d0.z() == null) {
                        if (l.this.d0.z() != null && l.this.e0) {
                            l.this.t0.sendEmptyMessageDelayed(0, 100L);
                        }
                        HashMap map = new HashMap();
                        map.put(this.f1744b, 5);
                        map.put(this.f1745c, 4);
                        map.put(this.f1746d, 2);
                        map.put(this.e, 3);
                        for (Map.Entry entry : map.entrySet()) {
                            if (((CheckBox) entry.getKey()).isChecked()) {
                                l.this.t0.sendEmptyMessageDelayed(((Integer) entry.getValue()).intValue(), 100L);
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
            while (l.this.c0.z() == null) {
            }
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l.this.s0 = new a.C0087a();
            l.this.s0.a = l.this.m0.K().e().intValue();
            l.this.s0.f1674b = l.this.m0.F().e().intValue();
            l.this.s0.f1675c = l.this.m0.L().e().intValue();
            if (l.this.s0.f1674b != 3) {
                l.this.s0.f1675c = 0;
            }
            cn.manstep.phonemirrorBox.j0.a aVar = new cn.manstep.phonemirrorBox.j0.a(b0.i().m("RecordSource", 1), l.this.s0);
            aVar.h(new d.b.a.a(l.this.s0.a, l.this.s0.f1674b == 1 ? 16 : 12, 2));
            aVar.i();
            l.this.s0.f1676d = String.format(Locale.getDefault(), "src_%d_%d.pcm", Integer.valueOf(l.this.s0.a), Integer.valueOf(aVar.n()));
            cn.manstep.phonemirrorBox.util.s.i("AudioDebug", "record->run: " + l.this.s0);
            l lVar = l.this;
            lVar.r0 = lVar.s0.f1676d;
            cn.manstep.phonemirrorBox.util.n.d(l.this.K(), l.this.r0);
            aVar.y(l.this.s0);
            if (aVar.x()) {
                l.this.t0.sendEmptyMessage(1);
                return;
            }
            int iC = aVar.c();
            byte[] bArr = new byte[iC];
            while (aVar.o() && l.this.q0) {
                if (aVar.f(bArr, 0, iC)) {
                    if (l.this.f0 == null) {
                        break;
                    } else {
                        l.this.f0.e(bArr, iC, aVar.n());
                    }
                }
            }
            if (aVar.q() == 3) {
                aVar.k();
            }
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l.this.m0.b0(true);
            l.this.e0 = true;
            int iIntValue = l.this.m0.D().e().intValue();
            if (iIntValue == 1) {
                cn.manstep.phonemirrorBox.f0.e eVarJ = cn.manstep.phonemirrorBox.f0.e.j();
                l lVar = l.this;
                boolean zP2 = lVar.P2(lVar.m0.z().e());
                l lVar2 = l.this;
                int iO2 = lVar2.O2(lVar2.m0.C().e());
                l lVar3 = l.this;
                AudioAttributes audioAttributesN2 = lVar2.N2(iO2, lVar3.O2(lVar3.m0.B().e()));
                l lVar4 = l.this;
                eVarJ.n(zP2, audioAttributesN2, lVar4.O2(lVar4.m0.C().e()));
            } else if (iIntValue == 2) {
                cn.manstep.phonemirrorBox.f0.b bVarJ = cn.manstep.phonemirrorBox.f0.b.j();
                l lVar5 = l.this;
                boolean zP22 = lVar5.P2(lVar5.m0.z().e());
                l lVar6 = l.this;
                int iO22 = lVar6.O2(lVar6.m0.x().e());
                l lVar7 = l.this;
                AudioAttributes audioAttributesN22 = lVar6.N2(iO22, lVar7.O2(lVar7.m0.w().e()));
                l lVar8 = l.this;
                bVarJ.n(zP22, audioAttributesN22, lVar8.O2(lVar8.m0.x().e()));
            } else if (iIntValue == 3) {
                cn.manstep.phonemirrorBox.f0.g gVarJ = cn.manstep.phonemirrorBox.f0.g.j();
                l lVar9 = l.this;
                boolean zP23 = lVar9.P2(lVar9.m0.z().e());
                l lVar10 = l.this;
                int iO23 = lVar10.O2(lVar10.m0.O().e());
                l lVar11 = l.this;
                AudioAttributes audioAttributesN23 = lVar10.N2(iO23, lVar11.O2(lVar11.m0.N().e()));
                l lVar12 = l.this;
                gVarJ.n(zP23, audioAttributesN23, lVar12.O2(lVar12.m0.O().e()));
            } else if (iIntValue == 4) {
                cn.manstep.phonemirrorBox.f0.f fVarJ = cn.manstep.phonemirrorBox.f0.f.j();
                l lVar13 = l.this;
                boolean zP24 = lVar13.P2(lVar13.m0.z().e());
                l lVar14 = l.this;
                int iO24 = lVar14.O2(lVar14.m0.J().e());
                l lVar15 = l.this;
                AudioAttributes audioAttributesN24 = lVar14.N2(iO24, lVar15.O2(lVar15.m0.I().e()));
                l lVar16 = l.this;
                fVarJ.n(zP24, audioAttributesN24, lVar16.O2(lVar16.m0.J().e()));
            }
            l.this.Y2(iIntValue);
        }
    }

    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            l.this.e0 = false;
            cn.manstep.phonemirrorBox.f0.b.j().g();
            cn.manstep.phonemirrorBox.f0.c.n().s();
            cn.manstep.phonemirrorBox.f0.g.j().g();
            cn.manstep.phonemirrorBox.f0.e.j().g();
            cn.manstep.phonemirrorBox.f0.f.j().g();
            l.this.g2();
        }
    }

    class i implements View.OnClickListener {

        class a implements c.b {
            a() {
            }

            @Override // cn.manstep.phonemirrorBox.k0.c.b
            public void a(int i) {
                l.this.k0 = i;
                l.this.R2(i);
            }
        }

        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            cn.manstep.phonemirrorBox.k0.c.B2(l.this.X(), "音量类型", 10, l.this.k0, new a());
        }
    }

    class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            l.this.T2();
        }
    }

    class k implements CompoundButton.OnCheckedChangeListener {

        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                l.this.W2();
            }
        }

        k() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            l.this.q0 = z;
            l.this.m0.e0(z);
            if (z) {
                l.this.o0.a(new a());
            } else if (l.this.m0.D().e().intValue() != 2) {
                l.this.n0.E(cn.manstep.phonemirrorBox.util.n.u(l.this.K()));
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l0.l$l, reason: collision with other inner class name */
    class C0090l implements CompoundButton.OnCheckedChangeListener {
        final /* synthetic */ CheckBox a;

        C0090l(CheckBox checkBox) {
            this.a = checkBox;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            l.this.m0.b0(z);
            if (z) {
                l.this.m0.a0(3);
                l.this.e0 = true;
                cn.manstep.phonemirrorBox.f0.c.n().u();
                l.this.Y2(5);
                return;
            }
            l.this.e0 = false;
            l.this.m0.a0(0);
            cn.manstep.phonemirrorBox.f0.c.n().g();
            if (l.this.d0 != null) {
                l.this.d0.i();
            } else {
                l.this.c0.i();
            }
            this.a.setChecked(false);
        }
    }

    class m implements CompoundButton.OnCheckedChangeListener {
        m() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            l.this.m0.b0(z);
            if (!z) {
                l.this.v0.cancel();
                l.this.m0.a0(0);
                cn.manstep.phonemirrorBox.f0.e.j().g();
                l.this.e0 = false;
                l.this.c0.i();
                return;
            }
            if (l.this.l0.w.isChecked()) {
                l.this.v0.start();
            }
            l.this.m0.a0(1);
            l.this.e0 = true;
            cn.manstep.phonemirrorBox.f0.e eVarJ = cn.manstep.phonemirrorBox.f0.e.j();
            l lVar = l.this;
            boolean zP2 = lVar.P2(lVar.m0.z().e());
            l lVar2 = l.this;
            int iO2 = lVar2.O2(lVar2.m0.C().e());
            l lVar3 = l.this;
            AudioAttributes audioAttributesN2 = lVar2.N2(iO2, lVar3.O2(lVar3.m0.B().e()));
            l lVar4 = l.this;
            eVarJ.n(zP2, audioAttributesN2, lVar4.O2(lVar4.m0.C().e()));
            l.this.Y2(1);
        }
    }

    class n implements CompoundButton.OnCheckedChangeListener {
        final /* synthetic */ CheckBox a;

        n(CheckBox checkBox) {
            this.a = checkBox;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            l.this.m0.b0(z);
            if (!z) {
                l.this.v0.cancel();
                l.this.m0.a0(0);
                if (l.this.m0.y().e() != null && l.this.m0.y().e().booleanValue()) {
                    l.this.j0.setMode(0);
                }
                if (l.this.m0.M().e() != null && l.this.m0.M().e().booleanValue()) {
                    l.this.j0.setSpeakerphoneOn(false);
                }
                l.this.e0 = false;
                cn.manstep.phonemirrorBox.f0.b.j().g();
                l.this.c0.i();
                this.a.setChecked(false);
                return;
            }
            if (l.this.l0.w.isChecked()) {
                l.this.v0.start();
            }
            l.this.m0.a0(2);
            if (l.this.m0.y().e() != null && l.this.m0.y().e().booleanValue()) {
                l.this.j0.setMode(3);
            }
            if (l.this.m0.M().e() != null && l.this.m0.M().e().booleanValue()) {
                l.this.j0.setSpeakerphoneOn(true);
            }
            l.this.e0 = true;
            cn.manstep.phonemirrorBox.f0.b bVarJ = cn.manstep.phonemirrorBox.f0.b.j();
            l lVar = l.this;
            boolean zP2 = lVar.P2(lVar.m0.z().e());
            l lVar2 = l.this;
            int iO2 = lVar2.O2(lVar2.m0.x().e());
            l lVar3 = l.this;
            AudioAttributes audioAttributesN2 = lVar2.N2(iO2, lVar3.O2(lVar3.m0.w().e()));
            l lVar4 = l.this;
            bVarJ.n(zP2, audioAttributesN2, lVar4.O2(lVar4.m0.x().e()));
            l.this.Y2(2);
        }
    }

    class o implements CompoundButton.OnCheckedChangeListener {
        final /* synthetic */ CheckBox a;

        o(CheckBox checkBox) {
            this.a = checkBox;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            l.this.m0.b0(z);
            if (!z) {
                l.this.v0.cancel();
                l.this.m0.a0(0);
                l.this.e0 = false;
                cn.manstep.phonemirrorBox.f0.g.j().g();
                l.this.c0.i();
                this.a.setChecked(false);
                return;
            }
            if (l.this.l0.w.isChecked()) {
                l.this.v0.start();
            }
            l.this.m0.a0(3);
            l.this.e0 = true;
            cn.manstep.phonemirrorBox.f0.g gVarJ = cn.manstep.phonemirrorBox.f0.g.j();
            l lVar = l.this;
            boolean zP2 = lVar.P2(lVar.m0.z().e());
            l lVar2 = l.this;
            int iO2 = lVar2.O2(lVar2.m0.O().e());
            l lVar3 = l.this;
            AudioAttributes audioAttributesN2 = lVar2.N2(iO2, lVar3.O2(lVar3.m0.N().e()));
            l lVar4 = l.this;
            gVarJ.n(zP2, audioAttributesN2, lVar4.O2(lVar4.m0.O().e()));
            l.this.Y2(3);
        }
    }

    private static class p extends Handler {
        private final WeakReference<l> a;

        public p(l lVar) {
            this.a = new WeakReference<>(lVar);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            if (this.a.get() == null || this.a.get().l0 == null) {
                return;
            }
            int i = message.what;
            if (i == 0) {
                this.a.get().l0.z.performClick();
                return;
            }
            if (i == 1) {
                this.a.get().l0.C.performClick();
                cn.manstep.phonemirrorBox.widget.a.makeText(this.a.get().K1(), "录音创建失败", 0).show();
                return;
            }
            if (i == 2) {
                this.a.get().l0.A.performClick();
                return;
            }
            if (i == 3) {
                this.a.get().l0.y.performClick();
            } else if (i == 4) {
                this.a.get().l0.x.performClick();
            } else {
                if (i != 5) {
                    return;
                }
                this.a.get().l0.B.performClick();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public double M2(File file, int i2, int i3, int i4) {
        double length = file.length();
        double d2 = i2 * i3 * (i4 / 8);
        Double.isNaN(length);
        Double.isNaN(d2);
        return length / d2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AudioAttributes N2(int i2, int i3) {
        if (Build.VERSION.SDK_INT >= 26) {
            try {
                return new AudioAttributes.Builder().setUsage(i2).setContentType(i3).build();
            } catch (Exception unused) {
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int O2(Integer num) {
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean P2(Boolean bool) {
        if (bool == null) {
            return false;
        }
        return bool.booleanValue();
    }

    private void Q2() {
        cn.manstep.phonemirrorBox.f0.c.n().p(StubApp.getOrigApplicationContext(K1().getApplicationContext()));
        cn.manstep.phonemirrorBox.f0.e.j().l(StubApp.getOrigApplicationContext(K1().getApplicationContext()));
        cn.manstep.phonemirrorBox.f0.b.j().l(StubApp.getOrigApplicationContext(K1().getApplicationContext()));
        cn.manstep.phonemirrorBox.f0.g.j().l(StubApp.getOrigApplicationContext(K1().getApplicationContext()));
        cn.manstep.phonemirrorBox.f0.f.j().l(StubApp.getOrigApplicationContext(K1().getApplicationContext()));
        d.b.a.b bVarI = new cn.manstep.phonemirrorBox.BoxInterface.a(5, 1, K1()).i();
        this.c0 = bVarI;
        bVarI.n(1.0f);
        d.b.a.b bVarI2 = new cn.manstep.phonemirrorBox.BoxInterface.a(5, 1, K1()).i();
        this.d0 = bVarI2;
        bVarI2.n(1.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void R2(int i2) {
        try {
            int streamVolume = this.j0.getStreamVolume(i2);
            int streamMaxVolume = this.j0.getStreamMaxVolume(i2);
            this.k0 = i2;
            this.g0.setText("音量(类型: " + i2 + ")");
            this.i0.setMax(streamMaxVolume);
            this.i0.setProgress(streamVolume);
            this.h0.setText(String.valueOf(streamVolume));
            this.i0.setOnSeekBarChangeListener(this);
        } catch (Exception unused) {
            if (i2 != 0) {
                R2(0);
            }
        }
    }

    private void S2(int i2) {
        int iM = i2 == 4 ? b0.i().m("RingAudioVol", 0) : i2 == 3 ? b0.i().m("VAAudioVol", 0) : i2 == 2 ? b0.i().m("CallAudioVol", 0) : i2 == 1 ? b0.i().m("NVAudioVol", 0) : 0;
        if (iM <= 0) {
            R2(0);
            return;
        }
        int[] iArrV = c0.v(iM);
        this.j0.setStreamVolume(iArrV[1], iArrV[0], 0);
        R2(iArrV[1]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T2() {
        cn.manstep.phonemirrorBox.x0.a aVar = this.m0;
        if (aVar == null || aVar.D() == null || this.m0.D().e() == null) {
            return;
        }
        int iIntValue = this.m0.D().e().intValue();
        int i2 = this.k0;
        int iR = c0.r(i2, this.j0.getStreamVolume(i2));
        cn.manstep.phonemirrorBox.util.s.d("AudioDebug", "okVolume: " + iR);
        if (iIntValue == 4) {
            b0.i().F("RingAudioVol", Integer.valueOf(iR));
        } else if (iIntValue == 3) {
            b0.i().F("VAAudioVol", Integer.valueOf(iR));
        } else if (iIntValue == 2) {
            b0.i().F("CallAudioVol", Integer.valueOf(iR));
        } else if (iIntValue == 1) {
            b0.i().F("NVAudioVol", Integer.valueOf(iR));
        }
        cn.manstep.phonemirrorBox.widget.a.makeText(K1(), "保存成功", 0).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void U2() {
        CheckBox checkBox = (CheckBox) l0().findViewById(2131296719);
        if (this.d0.z() != null) {
            this.d0.i();
        }
        if (checkBox.isChecked()) {
            checkBox.setBackgroundResource(2131230935);
        }
        this.p0.execute(new d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void V2() {
        AudioFormat audioFormatBuild;
        if (this.c0.z() != null) {
            this.c0.i();
        }
        CheckBox checkBox = (CheckBox) l0().findViewById(2131296719);
        CheckBox checkBox2 = (CheckBox) l0().findViewById(2131296718);
        CheckBox checkBox3 = (CheckBox) l0().findViewById(2131296716);
        CheckBox checkBox4 = (CheckBox) l0().findViewById(2131296715);
        if (checkBox.isChecked()) {
            checkBox.setBackgroundResource(2131230934);
        }
        cn.manstep.phonemirrorBox.util.s.i("AudioDebug", "playRecord: recordDebugParams=" + this.s0);
        a.C0087a c0087a = this.s0;
        d.b.a.a aVar = new d.b.a.a(c0087a.a, c0087a.f1674b == 1 ? 4 : 12, 2);
        if (Build.VERSION.SDK_INT >= 23) {
            if (this.s0.f1674b != 3) {
                audioFormatBuild = new AudioFormat.Builder().setSampleRate(this.s0.a).setChannelMask(this.s0.f1674b != 1 ? 12 : 4).setEncoding(2).build();
            } else {
                audioFormatBuild = new AudioFormat.Builder().setSampleRate(this.s0.a).setChannelIndexMask(this.s0.f1675c).setEncoding(2).build();
            }
            cn.manstep.phonemirrorBox.util.s.d("AudioDebug", "playRecord: ChannelCount=" + audioFormatBuild.getChannelCount());
            this.d0.b(new AudioAttributes.Builder().setUsage(1).setContentType(2).build(), aVar, audioFormatBuild);
        } else {
            this.d0.d(aVar, 3);
        }
        cn.manstep.phonemirrorBox.util.s.d("AudioDebug", "playRecord: recordName=" + this.r0);
        this.p0.execute(new e(checkBox, checkBox4, checkBox2, checkBox3));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void W2() {
        this.p0.execute(new f());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y2(int i2) {
        S2(i2);
        if (i2 == 1) {
            if (P2(this.m0.z().e()) || Build.VERSION.SDK_INT < 26) {
                this.c0.d(new d.b.a.a(16000, 4, 2), O2(this.m0.C().e()));
            } else {
                this.c0.a(N2(O2(this.m0.C().e()), O2(this.m0.B().e())), new d.b.a.a(16000, 4, 2));
            }
        } else if (i2 == 2) {
            if (P2(this.m0.z().e()) || Build.VERSION.SDK_INT < 26) {
                this.c0.d(new d.b.a.a(16000, 4, 2), O2(this.m0.x().e()));
            } else {
                this.c0.a(N2(O2(this.m0.x().e()), O2(this.m0.w().e())), new d.b.a.a(16000, 4, 2));
            }
        } else if (i2 == 3) {
            if (P2(this.m0.z().e()) || Build.VERSION.SDK_INT < 26) {
                this.c0.d(new d.b.a.a(16000, 4, 2), O2(this.m0.O().e()));
            } else {
                this.c0.a(N2(O2(this.m0.O().e()), O2(this.m0.N().e())), new d.b.a.a(16000, 4, 2));
            }
        } else if (i2 == 4) {
            if (P2(this.m0.z().e()) || Build.VERSION.SDK_INT < 26) {
                this.c0.d(new d.b.a.a(16000, 4, 2), O2(this.m0.J().e()));
            } else {
                this.c0.a(N2(O2(this.m0.J().e()), O2(this.m0.I().e())), new d.b.a.a(16000, 4, 2));
            }
        } else if (i2 != 5) {
            if (Build.VERSION.SDK_INT >= 26) {
                this.c0.a(N2(1, 2), new d.b.a.a(16000, 4, 2));
            } else {
                this.c0.d(new d.b.a.a(16000, 4, 2), 3);
            }
        }
        R2(this.c0.C());
        this.o0.b(new c(i2), 300L);
    }

    public static l newInstance() {
        return new l();
    }

    @Override // androidx.fragment.app.Fragment
    public void H0(Bundle bundle) {
        super.H0(bundle);
        this.o0 = new cn.manstep.phonemirrorBox.util.u();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        cn.manstep.phonemirrorBox.h0.b bVar = new cn.manstep.phonemirrorBox.h0.b();
        bVar.f("AudioDebug-%d");
        this.p0 = new ThreadPoolExecutor(4, 6, 0L, timeUnit, linkedBlockingQueue, bVar.b(), new ThreadPoolExecutor.AbortPolicy());
        Q2();
        this.t0 = new p(this);
    }

    @Override // androidx.fragment.app.Fragment
    public View L0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        cn.manstep.phonemirrorBox.i0.g gVar = (cn.manstep.phonemirrorBox.i0.g) androidx.databinding.f.e(layoutInflater, 2131492932, viewGroup, false);
        this.l0 = gVar;
        gVar.G(this);
        this.m0 = new cn.manstep.phonemirrorBox.x0.a(J1().getApplication(), X());
        cn.manstep.phonemirrorBox.x0.e eVar = new cn.manstep.phonemirrorBox.x0.e(J1().getApplication(), X());
        this.n0 = eVar;
        this.l0.L(eVar);
        this.l0.M(this.m0);
        this.m0.V(new a.k() { // from class: cn.manstep.phonemirrorBox.l0.j
            @Override // cn.manstep.phonemirrorBox.x0.a.k
            public final void a() {
                this.a.X2();
            }
        });
        return this.l0.t();
    }

    @Override // androidx.fragment.app.Fragment
    public void M0() {
        super.M0();
    }

    @Override // androidx.fragment.app.Fragment
    public void O0() {
        super.O0();
        this.l0 = null;
        this.q0 = false;
        this.f0 = null;
        this.e0 = false;
        this.v0.cancel();
        ThreadPoolExecutor threadPoolExecutor = this.p0;
        if (threadPoolExecutor != null) {
            threadPoolExecutor.shutdownNow();
            this.p0 = null;
        }
    }

    public void X2() {
        if (this.e0) {
            this.v0.cancel();
            this.e0 = false;
            this.c0.i();
            cn.manstep.phonemirrorBox.f0.b.j().g();
            cn.manstep.phonemirrorBox.f0.g.j().g();
            cn.manstep.phonemirrorBox.f0.e.j().g();
            cn.manstep.phonemirrorBox.f0.f.j().g();
            new Handler().postDelayed(new g(), 2000L);
        }
    }

    @Override // cn.manstep.phonemirrorBox.l0.m, androidx.fragment.app.Fragment
    public void g1(View view, Bundle bundle) {
        super.g1(view, bundle);
        view.findViewById(2131296370).setOnClickListener(new h());
        this.f0 = (WaveformView) view.findViewById(2131296955);
        this.h0 = (TextView) view.findViewById(2131296951);
        this.i0 = (SeekBar) view.findViewById(2131296949);
        TextView textView = (TextView) view.findViewById(2131296950);
        this.g0 = textView;
        textView.setOnClickListener(new i());
        this.j0 = (AudioManager) K1().getSystemService("audio");
        View viewFindViewById = view.findViewById(2131296563);
        cn.manstep.phonemirrorBox.widget.b.b(viewFindViewById);
        viewFindViewById.setOnClickListener(new j());
        CheckBox checkBox = (CheckBox) view.findViewById(2131296735);
        checkBox.setOnCheckedChangeListener(new k());
        CheckBox checkBox2 = (CheckBox) view.findViewById(2131296717);
        checkBox2.setOnCheckedChangeListener(new C0090l(checkBox2));
        ((CheckBox) view.findViewById(2131296716)).setOnCheckedChangeListener(new m());
        ((CheckBox) view.findViewById(2131296715)).setOnCheckedChangeListener(new n(checkBox));
        ((CheckBox) view.findViewById(2131296719)).setOnCheckedChangeListener(new o(checkBox));
        ((CheckBox) view.findViewById(2131296718)).setOnCheckedChangeListener(new b(checkBox));
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i2, boolean z) {
        this.h0.setText(String.valueOf(i2));
        this.j0.setStreamVolume(this.k0, i2, 5);
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
    }
}
