package cn.manstep.phonemirrorBox.customview;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: /tmp/autokit_analysis/dumped_dex/dex_47.dex */
public class a extends ConstraintLayout {
    private int u;
    private TextView v;
    private TextView w;
    private g x;
    private Map<Integer, f> y;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.customview.a$a, reason: collision with other inner class name */
    class ViewOnClickListenerC0082a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String[] f1580b;

        ViewOnClickListenerC0082a(String[] strArr) {
            this.f1580b = strArr;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (a.this.u >= this.f1580b.length - 1) {
                a.this.u = 0;
            } else {
                a.w(a.this);
            }
            a.this.v.setText(this.f1580b[a.this.u]);
            a.this.E();
        }
    }

    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String[] f1582b;

        b(String[] strArr) {
            this.f1582b = strArr;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (a.this.u <= 0) {
                a.this.u = this.f1582b.length - 1;
            } else {
                a.x(a.this);
            }
            a.this.v.setText(this.f1582b[a.this.u]);
            a.this.E();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (a.this.x != null) {
                a.this.x.a();
            }
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (a.this.x != null) {
                Iterator it = a.this.y.keySet().iterator();
                while (it.hasNext()) {
                    int iIntValue = ((Integer) it.next()).intValue();
                    ((f) a.this.y.get(Integer.valueOf(iIntValue))).a = 50;
                    a.this.x.b(((f) a.this.y.get(Integer.valueOf(iIntValue))).f1587b, 50);
                }
                a.this.w.setText(String.format(Locale.getDefault(), "%d", 50));
                a.this.E();
            }
        }
    }

    class e implements SeekBar.OnSeekBarChangeListener {
        e() {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
            a.this.w.setText(String.format(Locale.getDefault(), "%d", Integer.valueOf(i)));
            if (a.this.x != null) {
                ((f) a.this.y.get(Integer.valueOf(a.this.u))).a = i;
                a.this.x.b(((f) a.this.y.get(Integer.valueOf(a.this.u))).f1587b, i);
            }
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(SeekBar seekBar) {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(SeekBar seekBar) {
        }
    }

    private static class f {
        public int a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f1587b;

        public f(int i, String str, int i2) {
            this.a = i2;
            this.f1587b = str;
        }
    }

    public interface g {
        void a();

        void b(String str, int i);
    }

    public a(Context context) {
        super(context);
        this.u = 0;
        D(context);
    }

    private void D(Context context) {
        cn.manstep.phonemirrorBox.widget.b bVar = new cn.manstep.phonemirrorBox.widget.b();
        LayoutInflater.from(context).inflate(2131492954, this);
        String[] strArr = {"亮度", "曝光度", "对比度", "饱和度"};
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        this.y = concurrentHashMap;
        concurrentHashMap.put(0, new f(0, "brightness", 50));
        this.y.put(1, new f(1, "exposure", 50));
        this.y.put(2, new f(2, "contrast", 50));
        this.y.put(3, new f(3, "saturation", 50));
        TextView textView = (TextView) findViewById(2131296906);
        this.v = textView;
        textView.setText(strArr[this.u]);
        View viewFindViewById = findViewById(2131296561);
        bVar.a(viewFindViewById);
        viewFindViewById.setOnClickListener(new ViewOnClickListenerC0082a(strArr));
        View viewFindViewById2 = findViewById(2131296554);
        bVar.a(viewFindViewById2);
        viewFindViewById2.setOnClickListener(new b(strArr));
        E();
        View viewFindViewById3 = findViewById(2131296425);
        bVar.a(viewFindViewById3);
        viewFindViewById3.setOnClickListener(new c());
        View viewFindViewById4 = findViewById(2131296738);
        bVar.a(viewFindViewById4);
        viewFindViewById4.setOnClickListener(new d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E() {
        TextView textView = (TextView) findViewById(2131296907);
        this.w = textView;
        textView.setText(String.format(Locale.getDefault(), "%d", Integer.valueOf(this.y.get(Integer.valueOf(this.u)).a)));
        SeekBar seekBar = (SeekBar) findViewById(2131296772);
        seekBar.setMax(100);
        seekBar.setProgress(this.y.get(Integer.valueOf(this.u)).a);
        seekBar.setOnSeekBarChangeListener(new e());
    }

    static /* synthetic */ int w(a aVar) {
        int i = aVar.u;
        aVar.u = i + 1;
        return i;
    }

    static /* synthetic */ int x(a aVar) {
        int i = aVar.u;
        aVar.u = i - 1;
        return i;
    }

    public void setCallback(g gVar) {
        this.x = gVar;
    }
}
