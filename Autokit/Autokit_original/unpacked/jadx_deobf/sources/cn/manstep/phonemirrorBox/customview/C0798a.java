package cn.manstep.phonemirrorBox.customview;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import cn.manstep.phonemirrorBox.widget.ViewOnTouchListenerC1001b;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.customview.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0798a extends ConstraintLayout {

    /* JADX INFO: renamed from: u */
    private int f4798u;

    /* JADX INFO: renamed from: v */
    private TextView f4799v;

    /* JADX INFO: renamed from: w */
    private TextView f4800w;

    /* JADX INFO: renamed from: x */
    private g f4801x;

    /* JADX INFO: renamed from: y */
    private Map<Integer, f> f4802y;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.customview.a$a */
    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ String[] f4803b;

        a(String[] strArr) {
            this.f4803b = strArr;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (C0798a.this.f4798u >= this.f4803b.length - 1) {
                C0798a.this.f4798u = 0;
            } else {
                C0798a.m6157w(C0798a.this);
            }
            C0798a.this.f4799v.setText(this.f4803b[C0798a.this.f4798u]);
            C0798a.this.m6154E();
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.customview.a$b */
    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ String[] f4805b;

        b(String[] strArr) {
            this.f4805b = strArr;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (C0798a.this.f4798u <= 0) {
                C0798a.this.f4798u = this.f4805b.length - 1;
            } else {
                C0798a.m6158x(C0798a.this);
            }
            C0798a.this.f4799v.setText(this.f4805b[C0798a.this.f4798u]);
            C0798a.this.m6154E();
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.customview.a$c */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (C0798a.this.f4801x != null) {
                C0798a.this.f4801x.mo5969a();
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.customview.a$d */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (C0798a.this.f4801x != null) {
                Iterator it = C0798a.this.f4802y.keySet().iterator();
                while (it.hasNext()) {
                    int iIntValue = ((Integer) it.next()).intValue();
                    ((f) C0798a.this.f4802y.get(Integer.valueOf(iIntValue))).f4810a = 50;
                    C0798a.this.f4801x.mo5970b(((f) C0798a.this.f4802y.get(Integer.valueOf(iIntValue))).f4811b, 50);
                }
                C0798a.this.f4800w.setText(String.format(Locale.getDefault(), "%d", 50));
                C0798a.this.m6154E();
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.customview.a$e */
    class e implements SeekBar.OnSeekBarChangeListener {
        e() {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
            C0798a.this.f4800w.setText(String.format(Locale.getDefault(), "%d", Integer.valueOf(i)));
            if (C0798a.this.f4801x != null) {
                ((f) C0798a.this.f4802y.get(Integer.valueOf(C0798a.this.f4798u))).f4810a = i;
                C0798a.this.f4801x.mo5970b(((f) C0798a.this.f4802y.get(Integer.valueOf(C0798a.this.f4798u))).f4811b, i);
            }
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(SeekBar seekBar) {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(SeekBar seekBar) {
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.customview.a$f */
    private static class f {

        /* JADX INFO: renamed from: a */
        public int f4810a;

        /* JADX INFO: renamed from: b */
        public String f4811b;

        public f(int i, String str, int i2) {
            this.f4810a = i2;
            this.f4811b = str;
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.customview.a$g */
    public interface g {
        /* JADX INFO: renamed from: a */
        void mo5969a();

        /* JADX INFO: renamed from: b */
        void mo5970b(String str, int i);
    }

    public C0798a(Context context) {
        super(context);
        this.f4798u = 0;
        m6153D(context);
    }

    /* JADX INFO: renamed from: D */
    private void m6153D(Context context) {
        ViewOnTouchListenerC1001b viewOnTouchListenerC1001b = new ViewOnTouchListenerC1001b();
        LayoutInflater.from(context).inflate(2131492954, this);
        String[] strArr = {"亮度", "曝光度", "对比度", "饱和度"};
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        this.f4802y = concurrentHashMap;
        concurrentHashMap.put(0, new f(0, "brightness", 50));
        this.f4802y.put(1, new f(1, "exposure", 50));
        this.f4802y.put(2, new f(2, "contrast", 50));
        this.f4802y.put(3, new f(3, "saturation", 50));
        TextView textView = (TextView) findViewById(2131296906);
        this.f4799v = textView;
        textView.setText(strArr[this.f4798u]);
        View viewFindViewById = findViewById(2131296561);
        viewOnTouchListenerC1001b.m7492a(viewFindViewById);
        viewFindViewById.setOnClickListener(new a(strArr));
        View viewFindViewById2 = findViewById(2131296554);
        viewOnTouchListenerC1001b.m7492a(viewFindViewById2);
        viewFindViewById2.setOnClickListener(new b(strArr));
        m6154E();
        View viewFindViewById3 = findViewById(2131296425);
        viewOnTouchListenerC1001b.m7492a(viewFindViewById3);
        viewFindViewById3.setOnClickListener(new c());
        View viewFindViewById4 = findViewById(2131296738);
        viewOnTouchListenerC1001b.m7492a(viewFindViewById4);
        viewFindViewById4.setOnClickListener(new d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: E */
    public void m6154E() {
        TextView textView = (TextView) findViewById(2131296907);
        this.f4800w = textView;
        textView.setText(String.format(Locale.getDefault(), "%d", Integer.valueOf(this.f4802y.get(Integer.valueOf(this.f4798u)).f4810a)));
        SeekBar seekBar = (SeekBar) findViewById(2131296772);
        seekBar.setMax(100);
        seekBar.setProgress(this.f4802y.get(Integer.valueOf(this.f4798u)).f4810a);
        seekBar.setOnSeekBarChangeListener(new e());
    }

    /* JADX INFO: renamed from: w */
    static /* synthetic */ int m6157w(C0798a c0798a) {
        int i = c0798a.f4798u;
        c0798a.f4798u = i + 1;
        return i;
    }

    /* JADX INFO: renamed from: x */
    static /* synthetic */ int m6158x(C0798a c0798a) {
        int i = c0798a.f4798u;
        c0798a.f4798u = i - 1;
        return i;
    }

    public void setCallback(g gVar) {
        this.f4801x = gVar;
    }
}
