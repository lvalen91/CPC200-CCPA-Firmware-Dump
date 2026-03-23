package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import androidx.appcompat.widget.k0;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final PorterDuff.Mode f338b = PorterDuff.Mode.SRC_IN;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static i f339c;
    private k0 a;

    class a implements k0.f {
        private final int[] a = {c.a.e.abc_textfield_search_default_mtrl_alpha, c.a.e.abc_textfield_default_mtrl_alpha, c.a.e.abc_ab_share_pack_mtrl_alpha};

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int[] f340b = {c.a.e.abc_ic_commit_search_api_mtrl_alpha, c.a.e.abc_seekbar_tick_mark_material, c.a.e.abc_ic_menu_share_mtrl_alpha, c.a.e.abc_ic_menu_copy_mtrl_am_alpha, c.a.e.abc_ic_menu_cut_mtrl_alpha, c.a.e.abc_ic_menu_selectall_mtrl_alpha, c.a.e.abc_ic_menu_paste_mtrl_am_alpha};

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int[] f341c = {c.a.e.abc_textfield_activated_mtrl_alpha, c.a.e.abc_textfield_search_activated_mtrl_alpha, c.a.e.abc_cab_background_top_mtrl_alpha, c.a.e.abc_text_cursor_material, c.a.e.abc_text_select_handle_left_mtrl, c.a.e.abc_text_select_handle_middle_mtrl, c.a.e.abc_text_select_handle_right_mtrl};

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int[] f342d = {c.a.e.abc_popup_background_mtrl_mult, c.a.e.abc_cab_background_internal_bg, c.a.e.abc_menu_hardkey_panel_mtrl_mult};
        private final int[] e = {c.a.e.abc_tab_indicator_material, c.a.e.abc_textfield_search_material};
        private final int[] f = {c.a.e.abc_btn_check_material, c.a.e.abc_btn_radio_material, c.a.e.abc_btn_check_material_anim, c.a.e.abc_btn_radio_material_anim};

        a() {
        }

        private boolean f(int[] iArr, int i) {
            for (int i2 : iArr) {
                if (i2 == i) {
                    return true;
                }
            }
            return false;
        }

        private ColorStateList g(Context context) {
            return h(context, 0);
        }

        private ColorStateList h(Context context, int i) {
            int iC = p0.c(context, c.a.a.colorControlHighlight);
            return new ColorStateList(new int[][]{p0.f376b, p0.f378d, p0.f377c, p0.f}, new int[]{p0.b(context, c.a.a.colorButtonNormal), c.g.d.a.b(iC, i), c.g.d.a.b(iC, i), i});
        }

        private ColorStateList i(Context context) {
            return h(context, p0.c(context, c.a.a.colorAccent));
        }

        private ColorStateList j(Context context) {
            return h(context, p0.c(context, c.a.a.colorButtonNormal));
        }

        private ColorStateList k(Context context) {
            int[][] iArr = new int[3][];
            int[] iArr2 = new int[3];
            ColorStateList colorStateListE = p0.e(context, c.a.a.colorSwitchThumbNormal);
            if (colorStateListE == null || !colorStateListE.isStateful()) {
                iArr[0] = p0.f376b;
                iArr2[0] = p0.b(context, c.a.a.colorSwitchThumbNormal);
                iArr[1] = p0.e;
                iArr2[1] = p0.c(context, c.a.a.colorControlActivated);
                iArr[2] = p0.f;
                iArr2[2] = p0.c(context, c.a.a.colorSwitchThumbNormal);
            } else {
                iArr[0] = p0.f376b;
                iArr2[0] = colorStateListE.getColorForState(iArr[0], 0);
                iArr[1] = p0.e;
                iArr2[1] = p0.c(context, c.a.a.colorControlActivated);
                iArr[2] = p0.f;
                iArr2[2] = colorStateListE.getDefaultColor();
            }
            return new ColorStateList(iArr, iArr2);
        }

        private LayerDrawable l(k0 k0Var, Context context, int i) {
            BitmapDrawable bitmapDrawable;
            BitmapDrawable bitmapDrawable2;
            BitmapDrawable bitmapDrawable3;
            int dimensionPixelSize = context.getResources().getDimensionPixelSize(i);
            Drawable drawableJ = k0Var.j(context, c.a.e.abc_star_black_48dp);
            Drawable drawableJ2 = k0Var.j(context, c.a.e.abc_star_half_black_48dp);
            if ((drawableJ instanceof BitmapDrawable) && drawableJ.getIntrinsicWidth() == dimensionPixelSize && drawableJ.getIntrinsicHeight() == dimensionPixelSize) {
                bitmapDrawable = (BitmapDrawable) drawableJ;
                bitmapDrawable2 = new BitmapDrawable(bitmapDrawable.getBitmap());
            } else {
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(bitmapCreateBitmap);
                drawableJ.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
                drawableJ.draw(canvas);
                bitmapDrawable = new BitmapDrawable(bitmapCreateBitmap);
                bitmapDrawable2 = new BitmapDrawable(bitmapCreateBitmap);
            }
            bitmapDrawable2.setTileModeX(Shader.TileMode.REPEAT);
            if ((drawableJ2 instanceof BitmapDrawable) && drawableJ2.getIntrinsicWidth() == dimensionPixelSize && drawableJ2.getIntrinsicHeight() == dimensionPixelSize) {
                bitmapDrawable3 = (BitmapDrawable) drawableJ2;
            } else {
                Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
                Canvas canvas2 = new Canvas(bitmapCreateBitmap2);
                drawableJ2.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
                drawableJ2.draw(canvas2);
                bitmapDrawable3 = new BitmapDrawable(bitmapCreateBitmap2);
            }
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{bitmapDrawable, bitmapDrawable3, bitmapDrawable2});
            layerDrawable.setId(0, R.id.background);
            layerDrawable.setId(1, R.id.secondaryProgress);
            layerDrawable.setId(2, R.id.progress);
            return layerDrawable;
        }

        private void m(Drawable drawable, int i, PorterDuff.Mode mode) {
            if (c0.a(drawable)) {
                drawable = drawable.mutate();
            }
            if (mode == null) {
                mode = i.f338b;
            }
            drawable.setColorFilter(i.e(i, mode));
        }

        @Override // androidx.appcompat.widget.k0.f
        public Drawable a(k0 k0Var, Context context, int i) {
            if (i == c.a.e.abc_cab_background_top_material) {
                return new LayerDrawable(new Drawable[]{k0Var.j(context, c.a.e.abc_cab_background_internal_bg), k0Var.j(context, c.a.e.abc_cab_background_top_mtrl_alpha)});
            }
            if (i == c.a.e.abc_ratingbar_material) {
                return l(k0Var, context, c.a.d.abc_star_big);
            }
            if (i == c.a.e.abc_ratingbar_indicator_material) {
                return l(k0Var, context, c.a.d.abc_star_medium);
            }
            if (i == c.a.e.abc_ratingbar_small_material) {
                return l(k0Var, context, c.a.d.abc_star_small);
            }
            return null;
        }

        /* JADX WARN: Removed duplicated region for block: B:21:0x0046  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x0061 A[RETURN] */
        @Override // androidx.appcompat.widget.k0.f
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public boolean b(Context context, int i, Drawable drawable) {
            int iRound;
            boolean z;
            PorterDuff.Mode mode = i.f338b;
            boolean zF = f(this.a, i);
            int i2 = R.attr.colorBackground;
            if (zF) {
                i2 = c.a.a.colorControlNormal;
            } else if (f(this.f341c, i)) {
                i2 = c.a.a.colorControlActivated;
            } else if (f(this.f342d, i)) {
                mode = PorterDuff.Mode.MULTIPLY;
            } else {
                if (i == c.a.e.abc_list_divider_mtrl_alpha) {
                    i2 = R.attr.colorForeground;
                    iRound = Math.round(40.8f);
                    z = true;
                    if (!z) {
                        return false;
                    }
                    if (c0.a(drawable)) {
                        drawable = drawable.mutate();
                    }
                    drawable.setColorFilter(i.e(p0.c(context, i2), mode));
                    if (iRound != -1) {
                        drawable.setAlpha(iRound);
                    }
                    return true;
                }
                if (i != c.a.e.abc_dialog_material_background) {
                    iRound = -1;
                    z = false;
                    i2 = 0;
                    if (!z) {
                    }
                }
            }
            iRound = -1;
            z = true;
            if (!z) {
            }
        }

        @Override // androidx.appcompat.widget.k0.f
        public ColorStateList c(Context context, int i) {
            if (i == c.a.e.abc_edit_text_material) {
                return c.a.k.a.a.c(context, c.a.c.abc_tint_edittext);
            }
            if (i == c.a.e.abc_switch_track_mtrl_alpha) {
                return c.a.k.a.a.c(context, c.a.c.abc_tint_switch_track);
            }
            if (i == c.a.e.abc_switch_thumb_material) {
                return k(context);
            }
            if (i == c.a.e.abc_btn_default_mtrl_shape) {
                return j(context);
            }
            if (i == c.a.e.abc_btn_borderless_material) {
                return g(context);
            }
            if (i == c.a.e.abc_btn_colored_material) {
                return i(context);
            }
            if (i == c.a.e.abc_spinner_mtrl_am_alpha || i == c.a.e.abc_spinner_textfield_background_material) {
                return c.a.k.a.a.c(context, c.a.c.abc_tint_spinner);
            }
            if (f(this.f340b, i)) {
                return p0.e(context, c.a.a.colorControlNormal);
            }
            if (f(this.e, i)) {
                return c.a.k.a.a.c(context, c.a.c.abc_tint_default);
            }
            if (f(this.f, i)) {
                return c.a.k.a.a.c(context, c.a.c.abc_tint_btn_checkable);
            }
            if (i == c.a.e.abc_seekbar_thumb_material) {
                return c.a.k.a.a.c(context, c.a.c.abc_tint_seek_thumb);
            }
            return null;
        }

        @Override // androidx.appcompat.widget.k0.f
        public boolean d(Context context, int i, Drawable drawable) {
            if (i == c.a.e.abc_seekbar_track_material) {
                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                m(layerDrawable.findDrawableByLayerId(R.id.background), p0.c(context, c.a.a.colorControlNormal), i.f338b);
                m(layerDrawable.findDrawableByLayerId(R.id.secondaryProgress), p0.c(context, c.a.a.colorControlNormal), i.f338b);
                m(layerDrawable.findDrawableByLayerId(R.id.progress), p0.c(context, c.a.a.colorControlActivated), i.f338b);
                return true;
            }
            if (i != c.a.e.abc_ratingbar_material && i != c.a.e.abc_ratingbar_indicator_material && i != c.a.e.abc_ratingbar_small_material) {
                return false;
            }
            LayerDrawable layerDrawable2 = (LayerDrawable) drawable;
            m(layerDrawable2.findDrawableByLayerId(R.id.background), p0.b(context, c.a.a.colorControlNormal), i.f338b);
            m(layerDrawable2.findDrawableByLayerId(R.id.secondaryProgress), p0.c(context, c.a.a.colorControlActivated), i.f338b);
            m(layerDrawable2.findDrawableByLayerId(R.id.progress), p0.c(context, c.a.a.colorControlActivated), i.f338b);
            return true;
        }

        @Override // androidx.appcompat.widget.k0.f
        public PorterDuff.Mode e(int i) {
            if (i == c.a.e.abc_switch_thumb_material) {
                return PorterDuff.Mode.MULTIPLY;
            }
            return null;
        }
    }

    public static synchronized i b() {
        if (f339c == null) {
            h();
        }
        return f339c;
    }

    public static synchronized PorterDuffColorFilter e(int i, PorterDuff.Mode mode) {
        return k0.l(i, mode);
    }

    public static synchronized void h() {
        if (f339c == null) {
            i iVar = new i();
            f339c = iVar;
            iVar.a = k0.h();
            f339c.a.u(new a());
        }
    }

    static void i(Drawable drawable, s0 s0Var, int[] iArr) {
        k0.w(drawable, s0Var, iArr);
    }

    public synchronized Drawable c(Context context, int i) {
        return this.a.j(context, i);
    }

    synchronized Drawable d(Context context, int i, boolean z) {
        return this.a.k(context, i, z);
    }

    synchronized ColorStateList f(Context context, int i) {
        return this.a.m(context, i);
    }

    public synchronized void g(Context context) {
        this.a.s(context);
    }
}
