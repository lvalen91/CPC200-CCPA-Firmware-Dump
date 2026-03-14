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
import androidx.appcompat.widget.C0175k0;
import p016c.p017a.C0493a;
import p016c.p017a.C0495c;
import p016c.p017a.C0496d;
import p016c.p017a.C0497e;
import p016c.p017a.p018k.p019a.C0503a;
import p016c.p041g.p042d.C0588a;

/* JADX INFO: renamed from: androidx.appcompat.widget.i */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class C0170i {

    /* JADX INFO: renamed from: b */
    private static final PorterDuff.Mode f1166b = PorterDuff.Mode.SRC_IN;

    /* JADX INFO: renamed from: c */
    private static C0170i f1167c;

    /* JADX INFO: renamed from: a */
    private C0175k0 f1168a;

    /* JADX INFO: renamed from: androidx.appcompat.widget.i$a */
    class a implements C0175k0.f {

        /* JADX INFO: renamed from: a */
        private final int[] f1169a = {C0497e.abc_textfield_search_default_mtrl_alpha, C0497e.abc_textfield_default_mtrl_alpha, C0497e.abc_ab_share_pack_mtrl_alpha};

        /* JADX INFO: renamed from: b */
        private final int[] f1170b = {C0497e.abc_ic_commit_search_api_mtrl_alpha, C0497e.abc_seekbar_tick_mark_material, C0497e.abc_ic_menu_share_mtrl_alpha, C0497e.abc_ic_menu_copy_mtrl_am_alpha, C0497e.abc_ic_menu_cut_mtrl_alpha, C0497e.abc_ic_menu_selectall_mtrl_alpha, C0497e.abc_ic_menu_paste_mtrl_am_alpha};

        /* JADX INFO: renamed from: c */
        private final int[] f1171c = {C0497e.abc_textfield_activated_mtrl_alpha, C0497e.abc_textfield_search_activated_mtrl_alpha, C0497e.abc_cab_background_top_mtrl_alpha, C0497e.abc_text_cursor_material, C0497e.abc_text_select_handle_left_mtrl, C0497e.abc_text_select_handle_middle_mtrl, C0497e.abc_text_select_handle_right_mtrl};

        /* JADX INFO: renamed from: d */
        private final int[] f1172d = {C0497e.abc_popup_background_mtrl_mult, C0497e.abc_cab_background_internal_bg, C0497e.abc_menu_hardkey_panel_mtrl_mult};

        /* JADX INFO: renamed from: e */
        private final int[] f1173e = {C0497e.abc_tab_indicator_material, C0497e.abc_textfield_search_material};

        /* JADX INFO: renamed from: f */
        private final int[] f1174f = {C0497e.abc_btn_check_material, C0497e.abc_btn_radio_material, C0497e.abc_btn_check_material_anim, C0497e.abc_btn_radio_material_anim};

        a() {
        }

        /* JADX INFO: renamed from: f */
        private boolean m1176f(int[] iArr, int i) {
            for (int i2 : iArr) {
                if (i2 == i) {
                    return true;
                }
            }
            return false;
        }

        /* JADX INFO: renamed from: g */
        private ColorStateList m1177g(Context context) {
            return m1178h(context, 0);
        }

        /* JADX INFO: renamed from: h */
        private ColorStateList m1178h(Context context, int i) {
            int iM1281c = C0185p0.m1281c(context, C0493a.colorControlHighlight);
            return new ColorStateList(new int[][]{C0185p0.f1257b, C0185p0.f1259d, C0185p0.f1258c, C0185p0.f1261f}, new int[]{C0185p0.m1280b(context, C0493a.colorButtonNormal), C0588a.m4669b(iM1281c, i), C0588a.m4669b(iM1281c, i), i});
        }

        /* JADX INFO: renamed from: i */
        private ColorStateList m1179i(Context context) {
            return m1178h(context, C0185p0.m1281c(context, C0493a.colorAccent));
        }

        /* JADX INFO: renamed from: j */
        private ColorStateList m1180j(Context context) {
            return m1178h(context, C0185p0.m1281c(context, C0493a.colorButtonNormal));
        }

        /* JADX INFO: renamed from: k */
        private ColorStateList m1181k(Context context) {
            int[][] iArr = new int[3][];
            int[] iArr2 = new int[3];
            ColorStateList colorStateListM1283e = C0185p0.m1283e(context, C0493a.colorSwitchThumbNormal);
            if (colorStateListM1283e == null || !colorStateListM1283e.isStateful()) {
                iArr[0] = C0185p0.f1257b;
                iArr2[0] = C0185p0.m1280b(context, C0493a.colorSwitchThumbNormal);
                iArr[1] = C0185p0.f1260e;
                iArr2[1] = C0185p0.m1281c(context, C0493a.colorControlActivated);
                iArr[2] = C0185p0.f1261f;
                iArr2[2] = C0185p0.m1281c(context, C0493a.colorSwitchThumbNormal);
            } else {
                iArr[0] = C0185p0.f1257b;
                iArr2[0] = colorStateListM1283e.getColorForState(iArr[0], 0);
                iArr[1] = C0185p0.f1260e;
                iArr2[1] = C0185p0.m1281c(context, C0493a.colorControlActivated);
                iArr[2] = C0185p0.f1261f;
                iArr2[2] = colorStateListM1283e.getDefaultColor();
            }
            return new ColorStateList(iArr, iArr2);
        }

        /* JADX INFO: renamed from: l */
        private LayerDrawable m1182l(C0175k0 c0175k0, Context context, int i) {
            BitmapDrawable bitmapDrawable;
            BitmapDrawable bitmapDrawable2;
            BitmapDrawable bitmapDrawable3;
            int dimensionPixelSize = context.getResources().getDimensionPixelSize(i);
            Drawable drawableM1211j = c0175k0.m1211j(context, C0497e.abc_star_black_48dp);
            Drawable drawableM1211j2 = c0175k0.m1211j(context, C0497e.abc_star_half_black_48dp);
            if ((drawableM1211j instanceof BitmapDrawable) && drawableM1211j.getIntrinsicWidth() == dimensionPixelSize && drawableM1211j.getIntrinsicHeight() == dimensionPixelSize) {
                bitmapDrawable = (BitmapDrawable) drawableM1211j;
                bitmapDrawable2 = new BitmapDrawable(bitmapDrawable.getBitmap());
            } else {
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(bitmapCreateBitmap);
                drawableM1211j.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
                drawableM1211j.draw(canvas);
                bitmapDrawable = new BitmapDrawable(bitmapCreateBitmap);
                bitmapDrawable2 = new BitmapDrawable(bitmapCreateBitmap);
            }
            bitmapDrawable2.setTileModeX(Shader.TileMode.REPEAT);
            if ((drawableM1211j2 instanceof BitmapDrawable) && drawableM1211j2.getIntrinsicWidth() == dimensionPixelSize && drawableM1211j2.getIntrinsicHeight() == dimensionPixelSize) {
                bitmapDrawable3 = (BitmapDrawable) drawableM1211j2;
            } else {
                Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
                Canvas canvas2 = new Canvas(bitmapCreateBitmap2);
                drawableM1211j2.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
                drawableM1211j2.draw(canvas2);
                bitmapDrawable3 = new BitmapDrawable(bitmapCreateBitmap2);
            }
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{bitmapDrawable, bitmapDrawable3, bitmapDrawable2});
            layerDrawable.setId(0, R.id.background);
            layerDrawable.setId(1, R.id.secondaryProgress);
            layerDrawable.setId(2, R.id.progress);
            return layerDrawable;
        }

        /* JADX INFO: renamed from: m */
        private void m1183m(Drawable drawable, int i, PorterDuff.Mode mode) {
            if (C0159c0.m1070a(drawable)) {
                drawable = drawable.mutate();
            }
            if (mode == null) {
                mode = C0170i.f1166b;
            }
            drawable.setColorFilter(C0170i.m1169e(i, mode));
        }

        @Override // androidx.appcompat.widget.C0175k0.f
        /* JADX INFO: renamed from: a */
        public Drawable mo1184a(C0175k0 c0175k0, Context context, int i) {
            if (i == C0497e.abc_cab_background_top_material) {
                return new LayerDrawable(new Drawable[]{c0175k0.m1211j(context, C0497e.abc_cab_background_internal_bg), c0175k0.m1211j(context, C0497e.abc_cab_background_top_mtrl_alpha)});
            }
            if (i == C0497e.abc_ratingbar_material) {
                return m1182l(c0175k0, context, C0496d.abc_star_big);
            }
            if (i == C0497e.abc_ratingbar_indicator_material) {
                return m1182l(c0175k0, context, C0496d.abc_star_medium);
            }
            if (i == C0497e.abc_ratingbar_small_material) {
                return m1182l(c0175k0, context, C0496d.abc_star_small);
            }
            return null;
        }

        /* JADX WARN: Removed duplicated region for block: B:21:0x0046  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x0061 A[RETURN] */
        @Override // androidx.appcompat.widget.C0175k0.f
        /* JADX INFO: renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public boolean mo1185b(Context context, int i, Drawable drawable) {
            int iRound;
            boolean z;
            PorterDuff.Mode mode = C0170i.f1166b;
            boolean zM1176f = m1176f(this.f1169a, i);
            int i2 = R.attr.colorBackground;
            if (zM1176f) {
                i2 = C0493a.colorControlNormal;
            } else if (m1176f(this.f1171c, i)) {
                i2 = C0493a.colorControlActivated;
            } else if (m1176f(this.f1172d, i)) {
                mode = PorterDuff.Mode.MULTIPLY;
            } else {
                if (i == C0497e.abc_list_divider_mtrl_alpha) {
                    i2 = R.attr.colorForeground;
                    iRound = Math.round(40.8f);
                    z = true;
                    if (!z) {
                        return false;
                    }
                    if (C0159c0.m1070a(drawable)) {
                        drawable = drawable.mutate();
                    }
                    drawable.setColorFilter(C0170i.m1169e(C0185p0.m1281c(context, i2), mode));
                    if (iRound != -1) {
                        drawable.setAlpha(iRound);
                    }
                    return true;
                }
                if (i != C0497e.abc_dialog_material_background) {
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

        @Override // androidx.appcompat.widget.C0175k0.f
        /* JADX INFO: renamed from: c */
        public ColorStateList mo1186c(Context context, int i) {
            if (i == C0497e.abc_edit_text_material) {
                return C0503a.m4046c(context, C0495c.abc_tint_edittext);
            }
            if (i == C0497e.abc_switch_track_mtrl_alpha) {
                return C0503a.m4046c(context, C0495c.abc_tint_switch_track);
            }
            if (i == C0497e.abc_switch_thumb_material) {
                return m1181k(context);
            }
            if (i == C0497e.abc_btn_default_mtrl_shape) {
                return m1180j(context);
            }
            if (i == C0497e.abc_btn_borderless_material) {
                return m1177g(context);
            }
            if (i == C0497e.abc_btn_colored_material) {
                return m1179i(context);
            }
            if (i == C0497e.abc_spinner_mtrl_am_alpha || i == C0497e.abc_spinner_textfield_background_material) {
                return C0503a.m4046c(context, C0495c.abc_tint_spinner);
            }
            if (m1176f(this.f1170b, i)) {
                return C0185p0.m1283e(context, C0493a.colorControlNormal);
            }
            if (m1176f(this.f1173e, i)) {
                return C0503a.m4046c(context, C0495c.abc_tint_default);
            }
            if (m1176f(this.f1174f, i)) {
                return C0503a.m4046c(context, C0495c.abc_tint_btn_checkable);
            }
            if (i == C0497e.abc_seekbar_thumb_material) {
                return C0503a.m4046c(context, C0495c.abc_tint_seek_thumb);
            }
            return null;
        }

        @Override // androidx.appcompat.widget.C0175k0.f
        /* JADX INFO: renamed from: d */
        public boolean mo1187d(Context context, int i, Drawable drawable) {
            if (i == C0497e.abc_seekbar_track_material) {
                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                m1183m(layerDrawable.findDrawableByLayerId(R.id.background), C0185p0.m1281c(context, C0493a.colorControlNormal), C0170i.f1166b);
                m1183m(layerDrawable.findDrawableByLayerId(R.id.secondaryProgress), C0185p0.m1281c(context, C0493a.colorControlNormal), C0170i.f1166b);
                m1183m(layerDrawable.findDrawableByLayerId(R.id.progress), C0185p0.m1281c(context, C0493a.colorControlActivated), C0170i.f1166b);
                return true;
            }
            if (i != C0497e.abc_ratingbar_material && i != C0497e.abc_ratingbar_indicator_material && i != C0497e.abc_ratingbar_small_material) {
                return false;
            }
            LayerDrawable layerDrawable2 = (LayerDrawable) drawable;
            m1183m(layerDrawable2.findDrawableByLayerId(R.id.background), C0185p0.m1280b(context, C0493a.colorControlNormal), C0170i.f1166b);
            m1183m(layerDrawable2.findDrawableByLayerId(R.id.secondaryProgress), C0185p0.m1281c(context, C0493a.colorControlActivated), C0170i.f1166b);
            m1183m(layerDrawable2.findDrawableByLayerId(R.id.progress), C0185p0.m1281c(context, C0493a.colorControlActivated), C0170i.f1166b);
            return true;
        }

        @Override // androidx.appcompat.widget.C0175k0.f
        /* JADX INFO: renamed from: e */
        public PorterDuff.Mode mo1188e(int i) {
            if (i == C0497e.abc_switch_thumb_material) {
                return PorterDuff.Mode.MULTIPLY;
            }
            return null;
        }
    }

    /* JADX INFO: renamed from: b */
    public static synchronized C0170i m1168b() {
        if (f1167c == null) {
            m1170h();
        }
        return f1167c;
    }

    /* JADX INFO: renamed from: e */
    public static synchronized PorterDuffColorFilter m1169e(int i, PorterDuff.Mode mode) {
        return C0175k0.m1204l(i, mode);
    }

    /* JADX INFO: renamed from: h */
    public static synchronized void m1170h() {
        if (f1167c == null) {
            C0170i c0170i = new C0170i();
            f1167c = c0170i;
            c0170i.f1168a = C0175k0.m1202h();
            f1167c.f1168a.m1217u(new a());
        }
    }

    /* JADX INFO: renamed from: i */
    static void m1171i(Drawable drawable, C0191s0 c0191s0, int[] iArr) {
        C0175k0.m1210w(drawable, c0191s0, iArr);
    }

    /* JADX INFO: renamed from: c */
    public synchronized Drawable m1172c(Context context, int i) {
        return this.f1168a.m1211j(context, i);
    }

    /* JADX INFO: renamed from: d */
    synchronized Drawable m1173d(Context context, int i, boolean z) {
        return this.f1168a.m1212k(context, i, z);
    }

    /* JADX INFO: renamed from: f */
    synchronized ColorStateList m1174f(Context context, int i) {
        return this.f1168a.m1213m(context, i);
    }

    /* JADX INFO: renamed from: g */
    public synchronized void m1175g(Context context) {
        this.f1168a.m1215s(context);
    }
}
