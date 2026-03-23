package cn.manstep.phonemirrorBox;

import android.content.ComponentName;
import android.content.Context;
import android.graphics.Color;
import android.graphics.Point;
import android.media.AudioManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.text.Html;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import cn.manstep.phonemirrorBox.MediaButtonReceiver;
import cn.manstep.phonemirrorBox.n;
import com.stub.StubApp;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: /tmp/autokit_analysis/dumped_dex/dex_47.dex */
public class KeyLearnActivity extends k implements MediaButtonReceiver.a, n.c {
    private static final AtomicInteger J;
    private n F;
    private cn.manstep.phonemirrorBox.b t;
    private Map<Integer, String> y;
    private String[] u = null;
    private boolean v = false;
    private int w = -1;
    private int[] x = null;
    private int z = 0;
    private int A = 0;
    private AudioManager B = null;
    private final AudioManager.OnAudioFocusChangeListener C = new a();
    private ComponentName D = null;
    private int E = 0;
    private int G = 0;
    private boolean H = false;
    private int I = 0;

    class a implements AudioManager.OnAudioFocusChangeListener {
        a() {
        }

        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(int i) {
            if (i == -3 || i == -2 || i == -1) {
                KeyLearnActivity keyLearnActivity = KeyLearnActivity.this;
                keyLearnActivity.M0(keyLearnActivity);
            }
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ LinearLayout f1489b;

        b(LinearLayout linearLayout) {
            this.f1489b = linearLayout;
        }

        @Override // java.lang.Runnable
        public void run() {
            KeyLearnActivity.this.G0(this.f1489b);
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            KeyLearnActivity.this.finish();
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            KeyLearnActivity.this.N0();
            b0.i().C();
            LinearLayout linearLayout = (LinearLayout) KeyLearnActivity.this.findViewById(2131296577);
            linearLayout.removeAllViews();
            KeyLearnActivity.this.J0(linearLayout);
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            cn.manstep.phonemirrorBox.util.c0.t(KeyLearnActivity.this, true);
            KeyLearnActivity.this.L0();
        }
    }

    class f implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f1494b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Button f1495c;

        f(int i, Button button) {
            this.f1494b = i;
            this.f1495c = button;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            KeyLearnActivity keyLearnActivity = KeyLearnActivity.this;
            keyLearnActivity.A = keyLearnActivity.x[this.f1494b];
            if (Build.VERSION.SDK_INT >= 17) {
                KeyLearnActivity.this.E = View.generateViewId();
            } else {
                KeyLearnActivity.this.E = KeyLearnActivity.E0();
            }
            cn.manstep.phonemirrorBox.util.s.d("KeyLearnActivity", "mBtnId=" + KeyLearnActivity.this.E + ", mControlCmd=" + KeyLearnActivity.this.A);
            this.f1495c.setId(KeyLearnActivity.this.E);
            KeyLearnActivity.this.w = -1;
            KeyLearnActivity.this.v = false;
            KeyLearnActivity keyLearnActivity2 = KeyLearnActivity.this;
            cn.manstep.phonemirrorBox.widget.a.makeText(keyLearnActivity2, Html.fromHtml(keyLearnActivity2.getString(2131689914)).toString(), 0).show();
        }
    }

    class g implements View.OnLongClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f1497b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Button f1498c;

        g(int i, Button button) {
            this.f1497b = i;
            this.f1498c = button;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            KeyLearnActivity.this.A = 0;
            KeyLearnActivity keyLearnActivity = KeyLearnActivity.this;
            int iJ = b0.j(keyLearnActivity, keyLearnActivity.x[this.f1497b]);
            b0.t(KeyLearnActivity.this, iJ, 0);
            b0.u(KeyLearnActivity.this, iJ, 0);
            KeyLearnActivity keyLearnActivity2 = KeyLearnActivity.this;
            b0.v(keyLearnActivity2, keyLearnActivity2.x[this.f1497b], 0);
            KeyLearnActivity keyLearnActivity3 = KeyLearnActivity.this;
            b0.s(keyLearnActivity3, keyLearnActivity3.x[this.f1497b], false);
            KeyLearnActivity.this.t.f(KeyLearnActivity.this, this.f1498c, true, false, false);
            return true;
        }
    }

    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            KeyLearnActivity.this.z = 0;
            KeyLearnActivity.this.A = 0;
        }
    }

    static {
        StubApp.interface11(1485);
        J = new AtomicInteger(1);
    }

    private void B0(LinearLayout linearLayout, int i) {
        if (linearLayout == null || i == this.t.e()) {
            return;
        }
        cn.manstep.phonemirrorBox.util.s.c("KeyLearnActivity, addInvisibleButton: count = " + i);
        for (int i2 = 0; i2 < i; i2++) {
            cn.manstep.phonemirrorBox.b bVar = this.t;
            int iC = bVar.c(this, (bVar.e() - i) + i2);
            int iB = this.t.b(this, this.f1677b);
            if (this.H) {
                iC = this.G;
                int i3 = (iC * 2) / 5;
                iB = this.t.b(this, this.f1677b);
            }
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(iC, iB);
            layoutParams.gravity = 17;
            layoutParams.setMargins(cn.manstep.phonemirrorBox.util.c0.b(this, 10.0f), 0, cn.manstep.phonemirrorBox.util.c0.b(this, 10.0f), 0);
            Button button = new Button(this);
            button.setVisibility(4);
            button.setLayoutParams(layoutParams);
            linearLayout.addView(button);
        }
    }

    private void C0(LinearLayout linearLayout) {
        if (linearLayout != null) {
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.weight = 1.0f;
            View view = new View(this);
            view.setLayoutParams(layoutParams);
            linearLayout.addView(view);
        }
    }

    private void D0(Button button) {
        if (button.getPaddingLeft() + button.getPaddingRight() + button.getPaint().measureText(button.getText().toString()) + button.getPaddingTop() + button.getPaddingBottom() > this.G) {
            button.setTextSize(0, button.getTextSize() - 0.5f);
            D0(button);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int E0() {
        int i;
        int i2;
        do {
            i = J.get();
            i2 = i + 1;
            if (i2 > 16777215) {
                i2 = 1;
            }
        } while (!J.compareAndSet(i, i2));
        cn.manstep.phonemirrorBox.util.s.d("KeyLearnActivity", "generateViewId: result = " + i);
        return i;
    }

    private int F0(LinearLayout linearLayout) {
        int paddingLeft = linearLayout.getPaddingLeft() + linearLayout.getPaddingRight();
        int iB = cn.manstep.phonemirrorBox.util.c0.b(this, 6.0f) * 2;
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) linearLayout.getLayoutParams();
        int i = marginLayoutParams.leftMargin + marginLayoutParams.rightMargin;
        int measuredWidth = linearLayout.getMeasuredWidth();
        if (measuredWidth <= 0) {
            Point point = new Point();
            Point point2 = new Point();
            getWindow().getWindowManager().getDefaultDisplay().getCurrentSizeRange(point, point2);
            if (this.f1677b) {
                int i2 = this.f;
                measuredWidth = i2 > 0 ? i2 : point.x;
            } else {
                measuredWidth = this.e;
                if (measuredWidth <= 0) {
                    measuredWidth = point2.y;
                }
            }
        }
        int iB2 = measuredWidth - cn.manstep.phonemirrorBox.util.c0.b(this, 32.0f);
        int iE = this.t.e();
        if (iE != 0) {
            return ((((iB2 - i) - (cn.manstep.phonemirrorBox.util.c0.b(this, 10.0f) * 3)) - paddingLeft) - (iB * iE)) / iE;
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G0(LinearLayout linearLayout) {
        int height = findViewById(2131296758).getHeight();
        float width = (linearLayout.getWidth() * 1.0f) / height;
        cn.manstep.phonemirrorBox.util.s.d("KeyLearnActivity", "init: layout=" + linearLayout.getWidth() + "x" + height + "," + Float.toString(width));
        boolean z = this.t.c(this, 0) == 0;
        this.H = z;
        if (z) {
            this.G = F0(linearLayout);
            int iB = this.t.b(this, this.f1677b);
            if (height > 0) {
                iB = Math.min((this.G * height) / linearLayout.getWidth(), Math.min(height / 5, iB));
            }
            this.I = iB;
            cn.manstep.phonemirrorBox.util.s.d("KeyLearnActivity", "init: button=" + this.G + "x" + this.I + "," + Float.toString((this.G * 1.0f) / this.I));
            if (this.f1677b) {
                this.I += cn.manstep.phonemirrorBox.util.c0.b(this, 8.0f);
            } else if (width < 2.0f) {
                this.I -= cn.manstep.phonemirrorBox.util.c0.b(this, 8.0f);
            }
            cn.manstep.phonemirrorBox.util.s.i("KeyLearnActivity", "init: button=" + this.G + "x" + this.I + "," + Float.toString((this.G * 1.0f) / this.I));
        }
        J0(linearLayout);
        MediaButtonReceiver.b.a().c(this);
        n nVar = new n(this, this);
        this.F = nVar;
        nVar.m();
    }

    private void H0() {
        View viewFindViewById = findViewById(2131296370);
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(new c());
        }
        ((Button) findViewById(2131296375)).setOnClickListener(new d());
    }

    private void I0(int i, Button button) {
        int i2 = this.x[i];
        int iJ = b0.j(this, i2);
        boolean zE = b0.e(this, i2);
        button.setTextColor(Color.rgb(255, 255, 255));
        if (iJ != 0) {
            this.t.f(this, button, false, b0.g(this, iJ) == i2, zE);
            cn.manstep.phonemirrorBox.util.s.c("KeyLearnActivity,initCmdButton: cmd = " + i2 + ", keyCode = " + iJ + ",btn===" + button + ",bcanback=" + zE);
        } else {
            this.t.f(this, button, true, false, false);
        }
        button.setAllCaps(false);
        button.setGravity(17);
        if (this.H) {
            if (!this.f1677b) {
                button.setTextSize(0, (button.getTextSize() * 2.0f) / 3.0f);
            }
            D0(button);
        } else if (this.f1677b) {
            button.setTextSize(2, 16.0f);
        } else {
            button.setTextSize(2, 14.0f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J0(LinearLayout linearLayout) {
        int iB = cn.manstep.phonemirrorBox.util.c0.b(this, 10.0f);
        CharSequence[] charSequenceArr = this.u;
        int length = charSequenceArr.length;
        LinearLayout linearLayout2 = null;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (i < length) {
            CharSequence charSequence = charSequenceArr[i];
            if (i2 % this.t.e() == 0) {
                C0(linearLayout2);
                linearLayout2 = new LinearLayout(this);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
                int i4 = (int) (iB * 1.5f);
                layoutParams.setMargins(i4, 0, i4, iB);
                linearLayout2.setLayoutParams(layoutParams);
                linearLayout.addView(linearLayout2);
                C0(linearLayout2);
                i3 = 1;
            }
            int i5 = i2 + 1;
            if (!TextUtils.isEmpty(charSequence)) {
                int iC = this.t.c(this, i3);
                int iB2 = this.t.b(this, this.f1677b);
                if (this.H) {
                    iC = this.G;
                    iB2 = this.I;
                }
                i3++;
                LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(iC, iB2);
                layoutParams2.gravity = 17;
                layoutParams2.setMargins(iB, 0, iB, 0);
                Button button = new Button(this);
                int iB3 = cn.manstep.phonemirrorBox.util.c0.b(this, 6.0f);
                button.setPadding(iB3, iB3, iB3, iB3);
                button.setText(charSequence);
                button.setLayoutParams(layoutParams2);
                I0(i2, button);
                if (linearLayout2 != null) {
                    linearLayout2.addView(button);
                    button.setOnClickListener(new f(i2, button));
                    button.setOnLongClickListener(new g(i2, button));
                }
            }
            i++;
            i2 = i5;
        }
        B0(linearLayout2, this.t.e() - (i2 % this.t.e()));
        C0(linearLayout2);
    }

    private boolean K0(int i, boolean z) {
        int iG = z ? b0.g(this, i) : b0.f(this, i);
        cn.manstep.phonemirrorBox.util.s.d("KeyLearnActivity", "checkKeyCodeOccupied: cmd = " + iG + ", keyCode = " + i + ", bLongPress=" + this.v);
        if (iG == 0 || b0.j(this, iG) == 0) {
            return false;
        }
        cn.manstep.phonemirrorBox.widget.a.makeText(this, String.format(getResources().getString(2131689785), this.y.get(Integer.valueOf(iG))), 0).show();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void M0(Context context) {
        if (this.B == null) {
            this.B = (AudioManager) context.getSystemService("audio");
        }
        this.B.requestAudioFocus(this.C, 3, 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N0() {
        int i = 0;
        while (true) {
            int[] iArr = this.x;
            if (i >= iArr.length) {
                return;
            }
            int iJ = b0.j(this, iArr[i]);
            b0.t(this, iJ, 0);
            b0.u(this, iJ, 0);
            b0.v(this, this.x[i], 0);
            b0.s(this, this.x[i], false);
            i++;
        }
    }

    @Override // cn.manstep.phonemirrorBox.MediaButtonReceiver.a
    public void E(int i, boolean z) {
        w(i, z);
    }

    public void L0() {
        ComponentName componentName;
        AudioManager audioManager = this.B;
        if (audioManager == null || (componentName = this.D) == null) {
            return;
        }
        audioManager.unregisterMediaButtonEventReceiver(componentName);
        this.B.registerMediaButtonEventReceiver(this.D);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        cn.manstep.phonemirrorBox.util.s.d("KeyLearnActivity", "onBackPressed");
        super.onBackPressed();
    }

    @Override // cn.manstep.phonemirrorBox.k, androidx.fragment.app.e, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected native void onCreate(Bundle bundle);

    @Override // cn.manstep.phonemirrorBox.k, androidx.appcompat.app.d, androidx.fragment.app.e, android.app.Activity
    protected void onDestroy() {
        AudioManager audioManager = this.B;
        if (audioManager != null) {
            ComponentName componentName = this.D;
            if (componentName != null) {
                audioManager.unregisterMediaButtonEventReceiver(componentName);
            }
            this.B.abandonAudioFocus(this.C);
        }
        MediaButtonReceiver.b.a().c(null);
        this.F.n();
        super.onDestroy();
    }

    @Override // androidx.appcompat.app.d, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        cn.manstep.phonemirrorBox.util.s.d("KeyLearnActivity", "onKeyDown: mControlCmd=" + this.A + ", keyCode=" + i + " " + keyEvent.toString());
        if (this.A == 0) {
            return super.onKeyDown(i, keyEvent);
        }
        L0();
        int repeatCount = keyEvent.getRepeatCount();
        cn.manstep.phonemirrorBox.util.s.d("KeyLearnActivity", "onKeyDown: mControlCmd = " + this.A + ", keyCode = " + i + ", repeatCount = " + repeatCount);
        if (repeatCount > 0) {
            this.v = true;
        } else {
            this.v = false;
        }
        cn.manstep.phonemirrorBox.util.s.d("KeyLearnActivity", keyEvent.toString());
        return true;
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        Button button;
        cn.manstep.phonemirrorBox.util.s.d("KeyLearnActivity", "onKeyUp: mControlCmd=" + this.A + ", keyCode=" + i + " " + keyEvent.toString());
        if (this.A == 0) {
            return super.onKeyUp(i, keyEvent);
        }
        int i2 = this.w;
        if (i2 == -1) {
            if (this.v) {
                this.w = 1;
            } else {
                this.w = 0;
            }
        } else if (this.v) {
            if (i2 == 0) {
                cn.manstep.phonemirrorBox.widget.a.makeText(this, Html.fromHtml(getString(2131689769)).toString(), 0).show();
                return true;
            }
        } else if (i2 == 1) {
            cn.manstep.phonemirrorBox.widget.a.makeText(this, Html.fromHtml(getString(2131689770)).toString(), 0).show();
            return true;
        }
        if (this.v) {
            int iG = b0.g(this, i);
            cn.manstep.phonemirrorBox.util.s.d("KeyLearnActivity", "onKeyUp: cmd = " + iG + ", keyCode = " + i + ", bLongPress=" + this.v);
            if (iG != 0) {
                cn.manstep.phonemirrorBox.widget.a.makeText(this, String.format(getResources().getString(2131689785), this.y.get(Integer.valueOf(iG))), 0).show();
                return true;
            }
        } else {
            int iF = b0.f(this, i);
            cn.manstep.phonemirrorBox.util.s.d("KeyLearnActivity", "onKeyUp: cmd = " + iF + ", keyCode = " + i + ", bLongPress=" + this.v);
            if (iF != 0) {
                cn.manstep.phonemirrorBox.widget.a.makeText(this, String.format(getResources().getString(2131689785), this.y.get(Integer.valueOf(iF))), 0).show();
                return true;
            }
        }
        if (i != this.z) {
            this.z = i;
            cn.manstep.phonemirrorBox.widget.a.makeText(this, Html.fromHtml(getString(2131689915)).toString(), 0).show();
            return true;
        }
        b0.v(this, this.A, i);
        int i3 = this.w;
        if (i3 == 0) {
            b0.t(this, i, this.A);
        } else if (i3 == 1) {
            b0.u(this, i, this.A);
        }
        int i4 = this.E;
        if (i4 != 0 && (button = (Button) findViewById(i4)) != null) {
            this.t.f(this, button, false, this.w == 1, false);
        }
        int i5 = this.A;
        if (i5 < 19 || i5 > 30) {
            new Handler().postDelayed(new h(), 1000L);
            return super.onKeyUp(i, keyEvent);
        }
        this.z = 0;
        this.A = 0;
        return true;
    }

    @Override // cn.manstep.phonemirrorBox.k, androidx.fragment.app.e, android.app.Activity
    protected void onResume() {
        super.onResume();
        L0();
        M0(this);
    }

    @Override // cn.manstep.phonemirrorBox.k, androidx.appcompat.app.d, androidx.fragment.app.e, android.app.Activity
    protected void onStart() {
        super.onStart();
        new Handler().postDelayed(new e(), 800L);
    }

    @Override // cn.manstep.phonemirrorBox.k, androidx.appcompat.app.d, androidx.fragment.app.e, android.app.Activity
    protected void onStop() {
        super.onStop();
        cn.manstep.phonemirrorBox.util.c0.t(this, b0.i().o("BgKeyValid", true));
    }

    @Override // cn.manstep.phonemirrorBox.n.c
    public void w(int i, boolean z) {
        cn.manstep.phonemirrorBox.util.s.c("KeyLearnActivity,onKeyCodeChanged: keyCode=" + i + ", mKeyCode=" + this.z);
        cn.manstep.phonemirrorBox.util.s.c("KeyLearnActivity,onKeyCodeChanged: isLongPress=" + z + ", bLongPress=" + this.v);
        StringBuilder sb = new StringBuilder();
        sb.append("KeyLearnActivity,onKeyCodeChanged: mControlCmd=");
        sb.append(this.A);
        cn.manstep.phonemirrorBox.util.s.c(sb.toString());
        if (this.A == 0 || K0(i, z)) {
            return;
        }
        if (i != this.z || this.v != z) {
            this.z = i;
            this.v = z;
            cn.manstep.phonemirrorBox.widget.a.makeText(this, Html.fromHtml(getString(2131689915)).toString(), 0).show();
            return;
        }
        if (i != 0) {
            b0.v(this, this.A, i);
            if (z) {
                b0.u(this, i, this.A);
            } else {
                b0.t(this, i, this.A);
            }
            b0.s(this, this.A, true);
            int i2 = this.E;
            if (i2 != 0) {
                this.t.f(this, (Button) findViewById(i2), false, z, true);
                cn.manstep.phonemirrorBox.widget.a.makeText(this, Html.fromHtml(getString(2131689767)).toString(), 0).show();
            }
            this.z = 0;
            this.v = false;
            this.A = 0;
        }
    }
}
