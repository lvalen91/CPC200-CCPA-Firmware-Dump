package androidx.appcompat.view.menu;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import androidx.appcompat.view.menu.InterfaceC0108n;
import androidx.appcompat.widget.C0195u0;
import androidx.core.view.C0292v;
import p016c.p017a.C0493a;
import p016c.p017a.C0498f;
import p016c.p017a.C0499g;
import p016c.p017a.C0502j;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class ListMenuItemView extends LinearLayout implements InterfaceC0108n.a, AbsListView.SelectionBoundsAdjuster {

    /* JADX INFO: renamed from: b */
    private C0103i f536b;

    /* JADX INFO: renamed from: c */
    private ImageView f537c;

    /* JADX INFO: renamed from: d */
    private RadioButton f538d;

    /* JADX INFO: renamed from: e */
    private TextView f539e;

    /* JADX INFO: renamed from: f */
    private CheckBox f540f;

    /* JADX INFO: renamed from: g */
    private TextView f541g;

    /* JADX INFO: renamed from: h */
    private ImageView f542h;

    /* JADX INFO: renamed from: i */
    private ImageView f543i;

    /* JADX INFO: renamed from: j */
    private LinearLayout f544j;

    /* JADX INFO: renamed from: k */
    private Drawable f545k;

    /* JADX INFO: renamed from: l */
    private int f546l;

    /* JADX INFO: renamed from: m */
    private Context f547m;

    /* JADX INFO: renamed from: n */
    private boolean f548n;

    /* JADX INFO: renamed from: o */
    private Drawable f549o;

    /* JADX INFO: renamed from: p */
    private boolean f550p;

    /* JADX INFO: renamed from: q */
    private LayoutInflater f551q;

    /* JADX INFO: renamed from: r */
    private boolean f552r;

    public ListMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0493a.listMenuViewStyle);
    }

    /* JADX INFO: renamed from: a */
    private void m654a(View view) {
        m655b(view, -1);
    }

    /* JADX INFO: renamed from: b */
    private void m655b(View view, int i) {
        LinearLayout linearLayout = this.f544j;
        if (linearLayout != null) {
            linearLayout.addView(view, i);
        } else {
            addView(view, i);
        }
    }

    /* JADX INFO: renamed from: c */
    private void m656c() {
        CheckBox checkBox = (CheckBox) getInflater().inflate(C0499g.abc_list_menu_item_checkbox, (ViewGroup) this, false);
        this.f540f = checkBox;
        m654a(checkBox);
    }

    /* JADX INFO: renamed from: d */
    private void m657d() {
        ImageView imageView = (ImageView) getInflater().inflate(C0499g.abc_list_menu_item_icon, (ViewGroup) this, false);
        this.f537c = imageView;
        m655b(imageView, 0);
    }

    /* JADX INFO: renamed from: g */
    private void m658g() {
        RadioButton radioButton = (RadioButton) getInflater().inflate(C0499g.abc_list_menu_item_radio, (ViewGroup) this, false);
        this.f538d = radioButton;
        m654a(radioButton);
    }

    private LayoutInflater getInflater() {
        if (this.f551q == null) {
            this.f551q = LayoutInflater.from(getContext());
        }
        return this.f551q;
    }

    private void setSubMenuArrowVisible(boolean z) {
        ImageView imageView = this.f542h;
        if (imageView != null) {
            imageView.setVisibility(z ? 0 : 8);
        }
    }

    @Override // android.widget.AbsListView.SelectionBoundsAdjuster
    public void adjustListItemSelectionBounds(Rect rect) {
        ImageView imageView = this.f543i;
        if (imageView == null || imageView.getVisibility() != 0) {
            return;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f543i.getLayoutParams();
        rect.top += this.f543i.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0108n.a
    /* JADX INFO: renamed from: e */
    public boolean mo646e() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0108n.a
    /* JADX INFO: renamed from: f */
    public void mo647f(C0103i c0103i, int i) {
        this.f536b = c0103i;
        setVisibility(c0103i.isVisible() ? 0 : 8);
        setTitle(c0103i.m784i(this));
        setCheckable(c0103i.isCheckable());
        m659h(c0103i.m778A(), c0103i.m782g());
        setIcon(c0103i.getIcon());
        setEnabled(c0103i.isEnabled());
        setSubMenuArrowVisible(c0103i.hasSubMenu());
        setContentDescription(c0103i.getContentDescription());
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0108n.a
    public C0103i getItemData() {
        return this.f536b;
    }

    /* JADX INFO: renamed from: h */
    public void m659h(boolean z, char c2) {
        int i = (z && this.f536b.m778A()) ? 0 : 8;
        if (i == 0) {
            this.f541g.setText(this.f536b.m783h());
        }
        if (this.f541g.getVisibility() != i) {
            this.f541g.setVisibility(i);
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        C0292v.m2111r0(this, this.f545k);
        TextView textView = (TextView) findViewById(C0498f.title);
        this.f539e = textView;
        int i = this.f546l;
        if (i != -1) {
            textView.setTextAppearance(this.f547m, i);
        }
        this.f541g = (TextView) findViewById(C0498f.shortcut);
        ImageView imageView = (ImageView) findViewById(C0498f.submenuarrow);
        this.f542h = imageView;
        if (imageView != null) {
            imageView.setImageDrawable(this.f549o);
        }
        this.f543i = (ImageView) findViewById(C0498f.group_divider);
        this.f544j = (LinearLayout) findViewById(C0498f.content);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.f537c != null && this.f548n) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.f537c.getLayoutParams();
            int i3 = layoutParams.height;
            if (i3 > 0 && layoutParams2.width <= 0) {
                layoutParams2.width = i3;
            }
        }
        super.onMeasure(i, i2);
    }

    public void setCheckable(boolean z) {
        CompoundButton compoundButton;
        CompoundButton compoundButton2;
        if (!z && this.f538d == null && this.f540f == null) {
            return;
        }
        if (this.f536b.m788m()) {
            if (this.f538d == null) {
                m658g();
            }
            compoundButton = this.f538d;
            compoundButton2 = this.f540f;
        } else {
            if (this.f540f == null) {
                m656c();
            }
            compoundButton = this.f540f;
            compoundButton2 = this.f538d;
        }
        if (z) {
            compoundButton.setChecked(this.f536b.isChecked());
            if (compoundButton.getVisibility() != 0) {
                compoundButton.setVisibility(0);
            }
            if (compoundButton2 == null || compoundButton2.getVisibility() == 8) {
                return;
            }
            compoundButton2.setVisibility(8);
            return;
        }
        CheckBox checkBox = this.f540f;
        if (checkBox != null) {
            checkBox.setVisibility(8);
        }
        RadioButton radioButton = this.f538d;
        if (radioButton != null) {
            radioButton.setVisibility(8);
        }
    }

    public void setChecked(boolean z) {
        CompoundButton compoundButton;
        if (this.f536b.m788m()) {
            if (this.f538d == null) {
                m658g();
            }
            compoundButton = this.f538d;
        } else {
            if (this.f540f == null) {
                m656c();
            }
            compoundButton = this.f540f;
        }
        compoundButton.setChecked(z);
    }

    public void setForceShowIcon(boolean z) {
        this.f552r = z;
        this.f548n = z;
    }

    public void setGroupDividerEnabled(boolean z) {
        ImageView imageView = this.f543i;
        if (imageView != null) {
            imageView.setVisibility((this.f550p || !z) ? 8 : 0);
        }
    }

    public void setIcon(Drawable drawable) {
        boolean z = this.f536b.m801z() || this.f552r;
        if (z || this.f548n) {
            if (this.f537c == null && drawable == null && !this.f548n) {
                return;
            }
            if (this.f537c == null) {
                m657d();
            }
            if (drawable == null && !this.f548n) {
                this.f537c.setVisibility(8);
                return;
            }
            ImageView imageView = this.f537c;
            if (!z) {
                drawable = null;
            }
            imageView.setImageDrawable(drawable);
            if (this.f537c.getVisibility() != 0) {
                this.f537c.setVisibility(0);
            }
        }
    }

    public void setTitle(CharSequence charSequence) {
        if (charSequence == null) {
            if (this.f539e.getVisibility() != 8) {
                this.f539e.setVisibility(8);
            }
        } else {
            this.f539e.setText(charSequence);
            if (this.f539e.getVisibility() != 0) {
                this.f539e.setVisibility(0);
            }
        }
    }

    public ListMenuItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        C0195u0 c0195u0M1321v = C0195u0.m1321v(getContext(), attributeSet, C0502j.MenuView, i, 0);
        this.f545k = c0195u0M1321v.m1328g(C0502j.MenuView_android_itemBackground);
        this.f546l = c0195u0M1321v.m1335n(C0502j.MenuView_android_itemTextAppearance, -1);
        this.f548n = c0195u0M1321v.m1322a(C0502j.MenuView_preserveIconSpacing, false);
        this.f547m = context;
        this.f549o = c0195u0M1321v.m1328g(C0502j.MenuView_subMenuArrow);
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, new int[]{R.attr.divider}, C0493a.dropDownListViewStyle, 0);
        this.f550p = typedArrayObtainStyledAttributes.hasValue(0);
        c0195u0M1321v.m1341w();
        typedArrayObtainStyledAttributes.recycle();
    }
}
