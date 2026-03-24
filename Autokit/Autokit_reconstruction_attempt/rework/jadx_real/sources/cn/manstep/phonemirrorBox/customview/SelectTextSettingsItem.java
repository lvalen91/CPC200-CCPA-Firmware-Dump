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
import cn.manstep.phonemirrorBox.util.q;
import cn.manstep.phonemirrorBox.y;
import com.yalantis.ucrop.BuildConfig;
import java.util.Locale;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class SelectTextSettingsItem extends LinearLayout implements View.OnTouchListener, q.d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TextView f1577b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f1578c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float f1579d;
    private q e;
    private Drawable f;
    private Drawable g;
    private int h;
    private int i;

    public SelectTextSettingsItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f = null;
        this.g = null;
        c(context, attributeSet);
    }

    private void c(Context context, AttributeSet attributeSet) {
        Drawable drawableD;
        LayoutInflater.from(context).inflate(2131493019, this);
        TextView textView = (TextView) findViewById(2131296871);
        this.f1577b = (TextView) findViewById(2131296429);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, y.SelectTextSettingsItem);
        textView.setTextColor(typedArrayObtainStyledAttributes.getColor(7, -16777216));
        textView.setTextSize(0, typedArrayObtainStyledAttributes.getDimensionPixelSize(9, 12));
        textView.setText(typedArrayObtainStyledAttributes.getString(10));
        textView.setGravity(typedArrayObtainStyledAttributes.getInt(8, 16));
        this.f1577b.setTextColor(typedArrayObtainStyledAttributes.getColor(0, -16777216));
        float dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(5, 12);
        this.f1577b.setTextSize(0, dimensionPixelSize);
        this.f1577b.setText(typedArrayObtainStyledAttributes.getString(6));
        this.f1577b.setGravity(typedArrayObtainStyledAttributes.getInt(4, 8388629));
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(1, 0);
        if (resourceId != 0 && (drawableD = androidx.core.content.a.d(getContext(), resourceId)) != null) {
            int intrinsicWidth = drawableD.getIntrinsicWidth();
            int intrinsicHeight = drawableD.getIntrinsicHeight();
            int dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(3, intrinsicWidth);
            int dimensionPixelSize3 = typedArrayObtainStyledAttributes.getDimensionPixelSize(2, intrinsicHeight);
            if (Build.VERSION.SDK_INT >= 21) {
                this.f = drawableD;
                this.g = b(drawableD, 90.0f, getContext());
                this.h = dimensionPixelSize2;
                this.i = dimensionPixelSize3;
            }
            e(drawableD, dimensionPixelSize2, dimensionPixelSize3);
            this.f1577b.setCompoundDrawablePadding((int) (dimensionPixelSize * 0.85f));
        }
        typedArrayObtainStyledAttributes.recycle();
        setOnTouchListener(this);
    }

    private boolean d(Locale locale) {
        if (Build.VERSION.SDK_INT >= 17) {
            return TextUtils.getLayoutDirectionFromLocale(locale) == 1;
        }
        String language = locale.getLanguage();
        return language.equals("ar") || language.equals("he") || language.equals("fa") || language.equals("ur") || language.equals("sy") || language.equals("yi") || language.equals("iw");
    }

    private void e(Drawable drawable, int i, int i2) {
        drawable.setBounds(0, 0, i, i2);
        if (Build.VERSION.SDK_INT >= 17) {
            this.f1577b.setCompoundDrawablesRelative(null, null, drawable, null);
        } else {
            this.f1577b.setCompoundDrawables(null, null, drawable, null);
        }
    }

    public static void f(SelectTextSettingsItem selectTextSettingsItem, String str) {
        if (selectTextSettingsItem != null) {
            String string = selectTextSettingsItem.f1577b.getText() == null ? BuildConfig.FLAVOR : selectTextSettingsItem.f1577b.getText().toString();
            if (str == null) {
                str = BuildConfig.FLAVOR;
            }
            if (string.equalsIgnoreCase(str)) {
                return;
            }
            selectTextSettingsItem.setText(str);
        }
    }

    @Override // cn.manstep.phonemirrorBox.util.q.d
    public void a(boolean z) {
        if (!z) {
            if (this.g != null) {
                e(this.f, this.h, this.i);
            }
        } else {
            Drawable drawable = this.g;
            if (drawable != null) {
                e(drawable, this.i, this.h);
            }
        }
    }

    public Drawable b(Drawable drawable, float f, Context context) {
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
        return this.f1578c;
    }

    public q getListPopupWindowUtil() {
        return this.e;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() != 0) {
            return false;
        }
        boolean zD = d(getResources().getConfiguration().locale);
        if (motionEvent.getX() < getWidth() / 2.0f && !zD) {
            return true;
        }
        if (motionEvent.getX() > getWidth() / 2.0f && zD) {
            return true;
        }
        this.f1579d = this.f1577b.getX();
        return false;
    }

    public void setCurIndex(int i) {
        this.f1578c = i;
    }

    public void setListPopupWindowUtil(q qVar) {
        this.e = qVar;
        qVar.c(this);
    }

    public void setText(String str) {
        this.f1577b.setText(str);
    }

    public void setText(int i) {
        this.f1577b.setText(i);
    }
}
