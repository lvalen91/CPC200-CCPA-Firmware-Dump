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
import cn.manstep.phonemirrorBox.C0921n;
import cn.manstep.phonemirrorBox.MediaButtonReceiver;
import cn.manstep.phonemirrorBox.util.C0964c0;
import cn.manstep.phonemirrorBox.util.C0982s;
import cn.manstep.phonemirrorBox.widget.C1000a;
import com.stub.StubApp;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class KeyLearnActivity extends ActivityC0881k implements MediaButtonReceiver.InterfaceC0783a, C0921n.c {

    /* JADX INFO: renamed from: J */
    private static final AtomicInteger f4574J;

    /* JADX INFO: renamed from: F */
    private C0921n f4580F;

    /* JADX INFO: renamed from: t */
    private AbstractC0794b f4584t;

    /* JADX INFO: renamed from: y */
    private Map<Integer, String> f4589y;

    /* JADX INFO: renamed from: u */
    private String[] f4585u = null;

    /* JADX INFO: renamed from: v */
    private boolean f4586v = false;

    /* JADX INFO: renamed from: w */
    private int f4587w = -1;

    /* JADX INFO: renamed from: x */
    private int[] f4588x = null;

    /* JADX INFO: renamed from: z */
    private int f4590z = 0;

    /* JADX INFO: renamed from: A */
    private int f4575A = 0;

    /* JADX INFO: renamed from: B */
    private AudioManager f4576B = null;

    /* JADX INFO: renamed from: C */
    private final AudioManager.OnAudioFocusChangeListener f4577C = new C0744a();

    /* JADX INFO: renamed from: D */
    private ComponentName f4578D = null;

    /* JADX INFO: renamed from: E */
    private int f4579E = 0;

    /* JADX INFO: renamed from: G */
    private int f4581G = 0;

    /* JADX INFO: renamed from: H */
    private boolean f4582H = false;

    /* JADX INFO: renamed from: I */
    private int f4583I = 0;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.KeyLearnActivity$a */
    class C0744a implements AudioManager.OnAudioFocusChangeListener {
        C0744a() {
        }

        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(int i) {
            if (i == -3 || i == -2 || i == -1) {
                KeyLearnActivity keyLearnActivity = KeyLearnActivity.this;
                keyLearnActivity.m5854M0(keyLearnActivity);
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.KeyLearnActivity$b */
    class RunnableC0745b implements Runnable {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ LinearLayout f4592b;

        RunnableC0745b(LinearLayout linearLayout) {
            this.f4592b = linearLayout;
        }

        @Override // java.lang.Runnable
        public void run() {
            KeyLearnActivity.this.m5849G0(this.f4592b);
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.KeyLearnActivity$c */
    class ViewOnClickListenerC0746c implements View.OnClickListener {
        ViewOnClickListenerC0746c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            KeyLearnActivity.this.finish();
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.KeyLearnActivity$d */
    class ViewOnClickListenerC0747d implements View.OnClickListener {
        ViewOnClickListenerC0747d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            KeyLearnActivity.this.m5855N0();
            C0795b0.m6071i().m6083C();
            LinearLayout linearLayout = (LinearLayout) KeyLearnActivity.this.findViewById(2131296577);
            linearLayout.removeAllViews();
            KeyLearnActivity.this.m5852J0(linearLayout);
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.KeyLearnActivity$e */
    class RunnableC0748e implements Runnable {
        RunnableC0748e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C0964c0.m7196t(KeyLearnActivity.this, true);
            KeyLearnActivity.this.m5870L0();
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.KeyLearnActivity$f */
    class ViewOnClickListenerC0749f implements View.OnClickListener {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ int f4597b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ Button f4598c;

        ViewOnClickListenerC0749f(int i, Button button) {
            this.f4597b = i;
            this.f4598c = button;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            KeyLearnActivity keyLearnActivity = KeyLearnActivity.this;
            keyLearnActivity.f4575A = keyLearnActivity.f4588x[this.f4597b];
            if (Build.VERSION.SDK_INT >= 17) {
                KeyLearnActivity.this.f4579E = View.generateViewId();
            } else {
                KeyLearnActivity.this.f4579E = KeyLearnActivity.m5847E0();
            }
            C0982s.m7374d("KeyLearnActivity", "mBtnId=" + KeyLearnActivity.this.f4579E + ", mControlCmd=" + KeyLearnActivity.this.f4575A);
            this.f4598c.setId(KeyLearnActivity.this.f4579E);
            KeyLearnActivity.this.f4587w = -1;
            KeyLearnActivity.this.f4586v = false;
            KeyLearnActivity keyLearnActivity2 = KeyLearnActivity.this;
            C1000a.makeText(keyLearnActivity2, Html.fromHtml(keyLearnActivity2.getString(2131689914)).toString(), 0).show();
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.KeyLearnActivity$g */
    class ViewOnLongClickListenerC0750g implements View.OnLongClickListener {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ int f4600b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ Button f4601c;

        ViewOnLongClickListenerC0750g(int i, Button button) {
            this.f4600b = i;
            this.f4601c = button;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            KeyLearnActivity.this.f4575A = 0;
            KeyLearnActivity keyLearnActivity = KeyLearnActivity.this;
            int iM6072j = C0795b0.m6072j(keyLearnActivity, keyLearnActivity.f4588x[this.f4600b]);
            C0795b0.m6075t(KeyLearnActivity.this, iM6072j, 0);
            C0795b0.m6076u(KeyLearnActivity.this, iM6072j, 0);
            KeyLearnActivity keyLearnActivity2 = KeyLearnActivity.this;
            C0795b0.m6077v(keyLearnActivity2, keyLearnActivity2.f4588x[this.f4600b], 0);
            KeyLearnActivity keyLearnActivity3 = KeyLearnActivity.this;
            C0795b0.m6074s(keyLearnActivity3, keyLearnActivity3.f4588x[this.f4600b], false);
            KeyLearnActivity.this.f4584t.mo6064f(KeyLearnActivity.this, this.f4601c, true, false, false);
            return true;
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.KeyLearnActivity$h */
    class RunnableC0751h implements Runnable {
        RunnableC0751h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            KeyLearnActivity.this.f4590z = 0;
            KeyLearnActivity.this.f4575A = 0;
        }
    }

    static {
        StubApp.interface11(1485);
        f4574J = new AtomicInteger(1);
    }

    /* JADX INFO: renamed from: B0 */
    private void m5844B0(LinearLayout linearLayout, int i) {
        if (linearLayout == null || i == this.f4584t.mo6063e()) {
            return;
        }
        C0982s.m7373c("KeyLearnActivity, addInvisibleButton: count = " + i);
        for (int i2 = 0; i2 < i; i2++) {
            AbstractC0794b abstractC0794b = this.f4584t;
            int iMo6061c = abstractC0794b.mo6061c(this, (abstractC0794b.mo6063e() - i) + i2);
            int iM6060b = this.f4584t.m6060b(this, this.f5488b);
            if (this.f4582H) {
                iMo6061c = this.f4581G;
                int i3 = (iMo6061c * 2) / 5;
                iM6060b = this.f4584t.m6060b(this, this.f5488b);
            }
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(iMo6061c, iM6060b);
            layoutParams.gravity = 17;
            layoutParams.setMargins(C0964c0.m7178b(this, 10.0f), 0, C0964c0.m7178b(this, 10.0f), 0);
            Button button = new Button(this);
            button.setVisibility(4);
            button.setLayoutParams(layoutParams);
            linearLayout.addView(button);
        }
    }

    /* JADX INFO: renamed from: C0 */
    private void m5845C0(LinearLayout linearLayout) {
        if (linearLayout != null) {
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.weight = 1.0f;
            View view = new View(this);
            view.setLayoutParams(layoutParams);
            linearLayout.addView(view);
        }
    }

    /* JADX INFO: renamed from: D0 */
    private void m5846D0(Button button) {
        if (button.getPaddingLeft() + button.getPaddingRight() + button.getPaint().measureText(button.getText().toString()) + button.getPaddingTop() + button.getPaddingBottom() > this.f4581G) {
            button.setTextSize(0, button.getTextSize() - 0.5f);
            m5846D0(button);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: E0 */
    public static int m5847E0() {
        int i;
        int i2;
        do {
            i = f4574J.get();
            i2 = i + 1;
            if (i2 > 16777215) {
                i2 = 1;
            }
        } while (!f4574J.compareAndSet(i, i2));
        C0982s.m7374d("KeyLearnActivity", "generateViewId: result = " + i);
        return i;
    }

    /* JADX INFO: renamed from: F0 */
    private int m5848F0(LinearLayout linearLayout) {
        int paddingLeft = linearLayout.getPaddingLeft() + linearLayout.getPaddingRight();
        int iM7178b = C0964c0.m7178b(this, 6.0f) * 2;
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) linearLayout.getLayoutParams();
        int i = marginLayoutParams.leftMargin + marginLayoutParams.rightMargin;
        int measuredWidth = linearLayout.getMeasuredWidth();
        if (measuredWidth <= 0) {
            Point point = new Point();
            Point point2 = new Point();
            getWindow().getWindowManager().getDefaultDisplay().getCurrentSizeRange(point, point2);
            if (this.f5488b) {
                int i2 = this.f5492f;
                measuredWidth = i2 > 0 ? i2 : point.x;
            } else {
                measuredWidth = this.f5491e;
                if (measuredWidth <= 0) {
                    measuredWidth = point2.y;
                }
            }
        }
        int iM7178b2 = measuredWidth - C0964c0.m7178b(this, 32.0f);
        int iMo6063e = this.f4584t.mo6063e();
        if (iMo6063e != 0) {
            return ((((iM7178b2 - i) - (C0964c0.m7178b(this, 10.0f) * 3)) - paddingLeft) - (iM7178b * iMo6063e)) / iMo6063e;
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: G0 */
    public void m5849G0(LinearLayout linearLayout) {
        int height = findViewById(2131296758).getHeight();
        float width = (linearLayout.getWidth() * 1.0f) / height;
        C0982s.m7374d("KeyLearnActivity", "init: layout=" + linearLayout.getWidth() + "x" + height + "," + Float.toString(width));
        boolean z = this.f4584t.mo6061c(this, 0) == 0;
        this.f4582H = z;
        if (z) {
            this.f4581G = m5848F0(linearLayout);
            int iM6060b = this.f4584t.m6060b(this, this.f5488b);
            if (height > 0) {
                iM6060b = Math.min((this.f4581G * height) / linearLayout.getWidth(), Math.min(height / 5, iM6060b));
            }
            this.f4583I = iM6060b;
            C0982s.m7374d("KeyLearnActivity", "init: button=" + this.f4581G + "x" + this.f4583I + "," + Float.toString((this.f4581G * 1.0f) / this.f4583I));
            if (this.f5488b) {
                this.f4583I += C0964c0.m7178b(this, 8.0f);
            } else if (width < 2.0f) {
                this.f4583I -= C0964c0.m7178b(this, 8.0f);
            }
            C0982s.m7379i("KeyLearnActivity", "init: button=" + this.f4581G + "x" + this.f4583I + "," + Float.toString((this.f4581G * 1.0f) / this.f4583I));
        }
        m5852J0(linearLayout);
        MediaButtonReceiver.C0784b.m5977a().m5979c(this);
        C0921n c0921n = new C0921n(this, this);
        this.f4580F = c0921n;
        c0921n.m6784m();
    }

    /* JADX INFO: renamed from: H0 */
    private void m5850H0() {
        View viewFindViewById = findViewById(2131296370);
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(new ViewOnClickListenerC0746c());
        }
        ((Button) findViewById(2131296375)).setOnClickListener(new ViewOnClickListenerC0747d());
    }

    /* JADX INFO: renamed from: I0 */
    private void m5851I0(int i, Button button) {
        int i2 = this.f4588x[i];
        int iM6072j = C0795b0.m6072j(this, i2);
        boolean zM6067e = C0795b0.m6067e(this, i2);
        button.setTextColor(Color.rgb(255, 255, 255));
        if (iM6072j != 0) {
            this.f4584t.mo6064f(this, button, false, C0795b0.m6069g(this, iM6072j) == i2, zM6067e);
            C0982s.m7373c("KeyLearnActivity,initCmdButton: cmd = " + i2 + ", keyCode = " + iM6072j + ",btn===" + button + ",bcanback=" + zM6067e);
        } else {
            this.f4584t.mo6064f(this, button, true, false, false);
        }
        button.setAllCaps(false);
        button.setGravity(17);
        if (this.f4582H) {
            if (!this.f5488b) {
                button.setTextSize(0, (button.getTextSize() * 2.0f) / 3.0f);
            }
            m5846D0(button);
        } else if (this.f5488b) {
            button.setTextSize(2, 16.0f);
        } else {
            button.setTextSize(2, 14.0f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: J0 */
    public void m5852J0(LinearLayout linearLayout) {
        int iM7178b = C0964c0.m7178b(this, 10.0f);
        CharSequence[] charSequenceArr = this.f4585u;
        int length = charSequenceArr.length;
        LinearLayout linearLayout2 = null;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (i < length) {
            CharSequence charSequence = charSequenceArr[i];
            if (i2 % this.f4584t.mo6063e() == 0) {
                m5845C0(linearLayout2);
                linearLayout2 = new LinearLayout(this);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
                int i4 = (int) (iM7178b * 1.5f);
                layoutParams.setMargins(i4, 0, i4, iM7178b);
                linearLayout2.setLayoutParams(layoutParams);
                linearLayout.addView(linearLayout2);
                m5845C0(linearLayout2);
                i3 = 1;
            }
            int i5 = i2 + 1;
            if (!TextUtils.isEmpty(charSequence)) {
                int iMo6061c = this.f4584t.mo6061c(this, i3);
                int iM6060b = this.f4584t.m6060b(this, this.f5488b);
                if (this.f4582H) {
                    iMo6061c = this.f4581G;
                    iM6060b = this.f4583I;
                }
                i3++;
                LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(iMo6061c, iM6060b);
                layoutParams2.gravity = 17;
                layoutParams2.setMargins(iM7178b, 0, iM7178b, 0);
                Button button = new Button(this);
                int iM7178b2 = C0964c0.m7178b(this, 6.0f);
                button.setPadding(iM7178b2, iM7178b2, iM7178b2, iM7178b2);
                button.setText(charSequence);
                button.setLayoutParams(layoutParams2);
                m5851I0(i2, button);
                if (linearLayout2 != null) {
                    linearLayout2.addView(button);
                    button.setOnClickListener(new ViewOnClickListenerC0749f(i2, button));
                    button.setOnLongClickListener(new ViewOnLongClickListenerC0750g(i2, button));
                }
            }
            i++;
            i2 = i5;
        }
        m5844B0(linearLayout2, this.f4584t.mo6063e() - (i2 % this.f4584t.mo6063e()));
        m5845C0(linearLayout2);
    }

    /* JADX INFO: renamed from: K0 */
    private boolean m5853K0(int i, boolean z) {
        int iM6069g = z ? C0795b0.m6069g(this, i) : C0795b0.m6068f(this, i);
        C0982s.m7374d("KeyLearnActivity", "checkKeyCodeOccupied: cmd = " + iM6069g + ", keyCode = " + i + ", bLongPress=" + this.f4586v);
        if (iM6069g == 0 || C0795b0.m6072j(this, iM6069g) == 0) {
            return false;
        }
        C1000a.makeText(this, String.format(getResources().getString(2131689785), this.f4589y.get(Integer.valueOf(iM6069g))), 0).show();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: M0 */
    public void m5854M0(Context context) {
        if (this.f4576B == null) {
            this.f4576B = (AudioManager) context.getSystemService("audio");
        }
        this.f4576B.requestAudioFocus(this.f4577C, 3, 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: N0 */
    public void m5855N0() {
        int i = 0;
        while (true) {
            int[] iArr = this.f4588x;
            if (i >= iArr.length) {
                return;
            }
            int iM6072j = C0795b0.m6072j(this, iArr[i]);
            C0795b0.m6075t(this, iM6072j, 0);
            C0795b0.m6076u(this, iM6072j, 0);
            C0795b0.m6077v(this, this.f4588x[i], 0);
            C0795b0.m6074s(this, this.f4588x[i], false);
            i++;
        }
    }

    @Override // cn.manstep.phonemirrorBox.MediaButtonReceiver.InterfaceC0783a
    /* JADX INFO: renamed from: E */
    public void mo5869E(int i, boolean z) {
        mo5871w(i, z);
    }

    /* JADX INFO: renamed from: L0 */
    public void m5870L0() {
        ComponentName componentName;
        AudioManager audioManager = this.f4576B;
        if (audioManager == null || (componentName = this.f4578D) == null) {
            return;
        }
        audioManager.unregisterMediaButtonEventReceiver(componentName);
        this.f4576B.registerMediaButtonEventReceiver(this.f4578D);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        C0982s.m7374d("KeyLearnActivity", "onBackPressed");
        super.onBackPressed();
    }

    @Override // cn.manstep.phonemirrorBox.ActivityC0881k, androidx.fragment.app.ActivityC0356e, androidx.activity.ComponentActivity, androidx.core.app.ActivityC0236f, android.app.Activity
    protected native void onCreate(Bundle bundle);

    @Override // cn.manstep.phonemirrorBox.ActivityC0881k, androidx.appcompat.app.ActivityC0081d, androidx.fragment.app.ActivityC0356e, android.app.Activity
    protected void onDestroy() {
        AudioManager audioManager = this.f4576B;
        if (audioManager != null) {
            ComponentName componentName = this.f4578D;
            if (componentName != null) {
                audioManager.unregisterMediaButtonEventReceiver(componentName);
            }
            this.f4576B.abandonAudioFocus(this.f4577C);
        }
        MediaButtonReceiver.C0784b.m5977a().m5979c(null);
        this.f4580F.m6785n();
        super.onDestroy();
    }

    @Override // androidx.appcompat.app.ActivityC0081d, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        C0982s.m7374d("KeyLearnActivity", "onKeyDown: mControlCmd=" + this.f4575A + ", keyCode=" + i + " " + keyEvent.toString());
        if (this.f4575A == 0) {
            return super.onKeyDown(i, keyEvent);
        }
        m5870L0();
        int repeatCount = keyEvent.getRepeatCount();
        C0982s.m7374d("KeyLearnActivity", "onKeyDown: mControlCmd = " + this.f4575A + ", keyCode = " + i + ", repeatCount = " + repeatCount);
        if (repeatCount > 0) {
            this.f4586v = true;
        } else {
            this.f4586v = false;
        }
        C0982s.m7374d("KeyLearnActivity", keyEvent.toString());
        return true;
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        Button button;
        C0982s.m7374d("KeyLearnActivity", "onKeyUp: mControlCmd=" + this.f4575A + ", keyCode=" + i + " " + keyEvent.toString());
        if (this.f4575A == 0) {
            return super.onKeyUp(i, keyEvent);
        }
        int i2 = this.f4587w;
        if (i2 == -1) {
            if (this.f4586v) {
                this.f4587w = 1;
            } else {
                this.f4587w = 0;
            }
        } else if (this.f4586v) {
            if (i2 == 0) {
                C1000a.makeText(this, Html.fromHtml(getString(2131689769)).toString(), 0).show();
                return true;
            }
        } else if (i2 == 1) {
            C1000a.makeText(this, Html.fromHtml(getString(2131689770)).toString(), 0).show();
            return true;
        }
        if (this.f4586v) {
            int iM6069g = C0795b0.m6069g(this, i);
            C0982s.m7374d("KeyLearnActivity", "onKeyUp: cmd = " + iM6069g + ", keyCode = " + i + ", bLongPress=" + this.f4586v);
            if (iM6069g != 0) {
                C1000a.makeText(this, String.format(getResources().getString(2131689785), this.f4589y.get(Integer.valueOf(iM6069g))), 0).show();
                return true;
            }
        } else {
            int iM6068f = C0795b0.m6068f(this, i);
            C0982s.m7374d("KeyLearnActivity", "onKeyUp: cmd = " + iM6068f + ", keyCode = " + i + ", bLongPress=" + this.f4586v);
            if (iM6068f != 0) {
                C1000a.makeText(this, String.format(getResources().getString(2131689785), this.f4589y.get(Integer.valueOf(iM6068f))), 0).show();
                return true;
            }
        }
        if (i != this.f4590z) {
            this.f4590z = i;
            C1000a.makeText(this, Html.fromHtml(getString(2131689915)).toString(), 0).show();
            return true;
        }
        C0795b0.m6077v(this, this.f4575A, i);
        int i3 = this.f4587w;
        if (i3 == 0) {
            C0795b0.m6075t(this, i, this.f4575A);
        } else if (i3 == 1) {
            C0795b0.m6076u(this, i, this.f4575A);
        }
        int i4 = this.f4579E;
        if (i4 != 0 && (button = (Button) findViewById(i4)) != null) {
            this.f4584t.mo6064f(this, button, false, this.f4587w == 1, false);
        }
        int i5 = this.f4575A;
        if (i5 < 19 || i5 > 30) {
            new Handler().postDelayed(new RunnableC0751h(), 1000L);
            return super.onKeyUp(i, keyEvent);
        }
        this.f4590z = 0;
        this.f4575A = 0;
        return true;
    }

    @Override // cn.manstep.phonemirrorBox.ActivityC0881k, androidx.fragment.app.ActivityC0356e, android.app.Activity
    protected void onResume() {
        super.onResume();
        m5870L0();
        m5854M0(this);
    }

    @Override // cn.manstep.phonemirrorBox.ActivityC0881k, androidx.appcompat.app.ActivityC0081d, androidx.fragment.app.ActivityC0356e, android.app.Activity
    protected void onStart() {
        super.onStart();
        new Handler().postDelayed(new RunnableC0748e(), 800L);
    }

    @Override // cn.manstep.phonemirrorBox.ActivityC0881k, androidx.appcompat.app.ActivityC0081d, androidx.fragment.app.ActivityC0356e, android.app.Activity
    protected void onStop() {
        super.onStop();
        C0964c0.m7196t(this, C0795b0.m6071i().m6093o("BgKeyValid", true));
    }

    @Override // cn.manstep.phonemirrorBox.C0921n.c
    /* JADX INFO: renamed from: w */
    public void mo5871w(int i, boolean z) {
        C0982s.m7373c("KeyLearnActivity,onKeyCodeChanged: keyCode=" + i + ", mKeyCode=" + this.f4590z);
        C0982s.m7373c("KeyLearnActivity,onKeyCodeChanged: isLongPress=" + z + ", bLongPress=" + this.f4586v);
        StringBuilder sb = new StringBuilder();
        sb.append("KeyLearnActivity,onKeyCodeChanged: mControlCmd=");
        sb.append(this.f4575A);
        C0982s.m7373c(sb.toString());
        if (this.f4575A == 0 || m5853K0(i, z)) {
            return;
        }
        if (i != this.f4590z || this.f4586v != z) {
            this.f4590z = i;
            this.f4586v = z;
            C1000a.makeText(this, Html.fromHtml(getString(2131689915)).toString(), 0).show();
            return;
        }
        if (i != 0) {
            C0795b0.m6077v(this, this.f4575A, i);
            if (z) {
                C0795b0.m6076u(this, i, this.f4575A);
            } else {
                C0795b0.m6075t(this, i, this.f4575A);
            }
            C0795b0.m6074s(this, this.f4575A, true);
            int i2 = this.f4579E;
            if (i2 != 0) {
                this.f4584t.mo6064f(this, (Button) findViewById(i2), false, z, true);
                C1000a.makeText(this, Html.fromHtml(getString(2131689767)).toString(), 0).show();
            }
            this.f4590z = 0;
            this.f4586v = false;
            this.f4575A = 0;
        }
    }
}
