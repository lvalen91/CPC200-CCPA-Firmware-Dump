package cn.manstep.phonemirrorBox.customview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.C0242a;
import cn.manstep.phonemirrorBox.C1016y;
import cn.manstep.phonemirrorBox.util.C0980q;
import com.yalantis.ucrop.BuildConfig;
import java.util.Locale;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class SelectTextSettingsItem extends LinearLayout implements View.OnTouchListener, C0980q.d {

    /* JADX INFO: renamed from: b */
    private TextView f4790b;

    /* JADX INFO: renamed from: c */
    private int f4791c;

    /* JADX INFO: renamed from: d */
    public float f4792d;

    /* JADX INFO: renamed from: e */
    private C0980q f4793e;

    /* JADX INFO: renamed from: f */
    private Drawable f4794f;

    /* JADX INFO: renamed from: g */
    private Drawable f4795g;

    /* JADX INFO: renamed from: h */
    private int f4796h;

    /* JADX INFO: renamed from: i */
    private int f4797i;

    public SelectTextSettingsItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4794f = null;
        this.f4795g = null;
        m6144c(context, attributeSet);
    }

    /* JADX INFO: renamed from: c */
    private void m6144c(Context context, AttributeSet attributeSet) {
        Drawable drawableM1699d;
        LayoutInflater.from(context).inflate(2131493019, this);
        TextView textView = (TextView) findViewById(2131296871);
        this.f4790b = (TextView) findViewById(2131296429);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1016y.SelectTextSettingsItem);
        textView.setTextColor(typedArrayObtainStyledAttributes.getColor(7, -16777216));
        textView.setTextSize(0, typedArrayObtainStyledAttributes.getDimensionPixelSize(9, 12));
        textView.setText(typedArrayObtainStyledAttributes.getString(10));
        textView.setGravity(typedArrayObtainStyledAttributes.getInt(8, 16));
        this.f4790b.setTextColor(typedArrayObtainStyledAttributes.getColor(0, -16777216));
        float dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(5, 12);
        this.f4790b.setTextSize(0, dimensionPixelSize);
        this.f4790b.setText(typedArrayObtainStyledAttributes.getString(6));
        this.f4790b.setGravity(typedArrayObtainStyledAttributes.getInt(4, 8388629));
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(1, 0);
        if (resourceId != 0 && (drawableM1699d = C0242a.m1699d(getContext(), resourceId)) != null) {
            int intrinsicWidth = drawableM1699d.getIntrinsicWidth();
            int intrinsicHeight = drawableM1699d.getIntrinsicHeight();
            int dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(3, intrinsicWidth);
            int dimensionPixelSize3 = typedArrayObtainStyledAttributes.getDimensionPixelSize(2, intrinsicHeight);
            if (Build.VERSION.SDK_INT >= 21) {
                this.f4794f = drawableM1699d;
                this.f4795g = m6149b(drawableM1699d, 90.0f, getContext());
                this.f4796h = dimensionPixelSize2;
                this.f4797i = dimensionPixelSize3;
            }
            m6146e(drawableM1699d, dimensionPixelSize2, dimensionPixelSize3);
            this.f4790b.setCompoundDrawablePadding((int) (dimensionPixelSize * 0.85f));
        }
        typedArrayObtainStyledAttributes.recycle();
        setOnTouchListener(this);
    }

    /* JADX INFO: renamed from: d */
    private boolean m6145d(Locale locale) {
        if (Build.VERSION.SDK_INT >= 17) {
            return TextUtils.getLayoutDirectionFromLocale(locale) == 1;
        }
        String language = locale.getLanguage();
        return language.equals("ar") || language.equals("he") || language.equals("fa") || language.equals("ur") || language.equals("sy") || language.equals("yi") || language.equals("iw");
    }

    /* JADX INFO: renamed from: e */
    private void m6146e(Drawable drawable, int i, int i2) {
        drawable.setBounds(0, 0, i, i2);
        if (Build.VERSION.SDK_INT >= 17) {
            this.f4790b.setCompoundDrawablesRelative(null, null, drawable, null);
        } else {
            this.f4790b.setCompoundDrawables(null, null, drawable, null);
        }
    }

    /* JADX INFO: renamed from: f */
    public static void m6147f(SelectTextSettingsItem selectTextSettingsItem, String str) {
        if (selectTextSettingsItem != null) {
            String string = selectTextSettingsItem.f4790b.getText() == null ? BuildConfig.FLAVOR : selectTextSettingsItem.f4790b.getText().toString();
            if (str == null) {
                str = BuildConfig.FLAVOR;
            }
            if (string.equalsIgnoreCase(str)) {
                return;
            }
            selectTextSettingsItem.setText(str);
        }
    }

    @Override // cn.manstep.phonemirrorBox.util.C0980q.d
    /* JADX INFO: renamed from: a */
    public void mo6148a(boolean z) {
        if (!z) {
            if (this.f4795g != null) {
                m6146e(this.f4794f, this.f4796h, this.f4797i);
            }
        } else {
            Drawable drawable = this.f4795g;
            if (drawable != null) {
                m6146e(drawable, this.f4797i, this.f4796h);
            }
        }
    }

    /* JADX INFO: renamed from: b */
    public Drawable m6149b(Drawable drawable, float f, Context context) {
        if (drawable == null) {
            return null;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        if ((drawable instanceof VectorDrawable) || (drawable instanceof BitmapDrawable)) {
            drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
            drawable.draw(canvas);
        }
        Matrix matrix = new Matrix();
        matrix.postRotate(f);
        return new BitmapDrawable(context.getResources(), Bitmap.createBitmap(bitmapCreateBitmap, 0, 0, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight(), matrix, true));
    }

    public int getCurIndex() {
        return this.f4791c;
    }

    public C0980q getListPopupWindowUtil() {
        return this.f4793e;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() != 0) {
            return false;
        }
        boolean zM6145d = m6145d(getResources().getConfiguration().locale);
        if (motionEvent.getX() < getWidth() / 2.0f && !zM6145d) {
            return true;
        }
        if (motionEvent.getX() > getWidth() / 2.0f && zM6145d) {
            return true;
        }
        this.f4792d = this.f4790b.getX();
        return false;
    }

    public void setCurIndex(int i) {
        this.f4791c = i;
    }

    public void setListPopupWindowUtil(C0980q c0980q) {
        this.f4793e = c0980q;
        c0980q.m7346c(this);
    }

    public void setText(String str) {
        this.f4790b.setText(str);
    }

    public void setText(int i) {
        this.f4790b.setText(i);
    }
}
