package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ImageView;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class AppCompatImageView extends ImageView implements androidx.core.view.u, androidx.core.widget.m {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final e f250b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final m f251c;

    public AppCompatImageView(Context context) {
        this(context, null);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        e eVar = this.f250b;
        if (eVar != null) {
            eVar.b();
        }
        m mVar = this.f251c;
        if (mVar != null) {
            mVar.b();
        }
    }

    @Override // androidx.core.view.u
    public ColorStateList getSupportBackgroundTintList() {
        e eVar = this.f250b;
        if (eVar != null) {
            return eVar.c();
        }
        return null;
    }

    @Override // androidx.core.view.u
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        e eVar = this.f250b;
        if (eVar != null) {
            return eVar.d();
        }
        return null;
    }

    @Override // androidx.core.widget.m
    public ColorStateList getSupportImageTintList() {
        m mVar = this.f251c;
        if (mVar != null) {
            return mVar.c();
        }
        return null;
    }

    @Override // androidx.core.widget.m
    public PorterDuff.Mode getSupportImageTintMode() {
        m mVar = this.f251c;
        if (mVar != null) {
            return mVar.d();
        }
        return null;
    }

    @Override // android.widget.ImageView, android.view.View
    public boolean hasOverlappingRendering() {
        return this.f251c.e() && super.hasOverlappingRendering();
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        e eVar = this.f250b;
        if (eVar != null) {
            eVar.f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        e eVar = this.f250b;
        if (eVar != null) {
            eVar.g(i);
        }
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        m mVar = this.f251c;
        if (mVar != null) {
            mVar.b();
        }
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        m mVar = this.f251c;
        if (mVar != null) {
            mVar.b();
        }
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        m mVar = this.f251c;
        if (mVar != null) {
            mVar.g(i);
        }
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        m mVar = this.f251c;
        if (mVar != null) {
            mVar.b();
        }
    }

    @Override // androidx.core.view.u
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        e eVar = this.f250b;
        if (eVar != null) {
            eVar.i(colorStateList);
        }
    }

    @Override // androidx.core.view.u
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        e eVar = this.f250b;
        if (eVar != null) {
            eVar.j(mode);
        }
    }

    @Override // androidx.core.widget.m
    public void setSupportImageTintList(ColorStateList colorStateList) {
        m mVar = this.f251c;
        if (mVar != null) {
            mVar.h(colorStateList);
        }
    }

    @Override // androidx.core.widget.m
    public void setSupportImageTintMode(PorterDuff.Mode mode) {
        m mVar = this.f251c;
        if (mVar != null) {
            mVar.i(mode);
        }
    }

    public AppCompatImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AppCompatImageView(Context context, AttributeSet attributeSet, int i) {
        super(r0.b(context), attributeSet, i);
        p0.a(this, getContext());
        e eVar = new e(this);
        this.f250b = eVar;
        eVar.e(attributeSet, i);
        m mVar = new m(this);
        this.f251c = mVar;
        mVar.f(attributeSet, i);
    }
}
