.class Landroidx/appcompat/widget/i$a;
.super Ljava/lang/Object;
.implements Landroidx/appcompat/widget/k0$f;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/appcompat/widget/i;->h()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field private final a:[I

.field private final b:[I

.field private final c:[I

.field private final d:[I

.field private final e:[I

.field private final f:[I

.method constructor <init>()V
  .registers 11
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 3
    new-array v1, v0, [I
  .line 2
    sget v2, Lc/a/e;->abc_textfield_search_default_mtrl_alpha:I
    const/4 v3, 0
    aput v2, v1, v3
    sget v2, Lc/a/e;->abc_textfield_default_mtrl_alpha:I
    const/4 v4, 1
    aput v2, v1, v4
    sget v2, Lc/a/e;->abc_ab_share_pack_mtrl_alpha:I
    const/4 v5, 2
    aput v2, v1, v5
    iput-object v1, p0, Landroidx/appcompat/widget/i$a;->a:[I
    const/4 v1, 7
    new-array v2, v1, [I
  .line 3
    sget v6, Lc/a/e;->abc_ic_commit_search_api_mtrl_alpha:I
    aput v6, v2, v3
    sget v6, Lc/a/e;->abc_seekbar_tick_mark_material:I
    aput v6, v2, v4
    sget v6, Lc/a/e;->abc_ic_menu_share_mtrl_alpha:I
    aput v6, v2, v5
    sget v6, Lc/a/e;->abc_ic_menu_copy_mtrl_am_alpha:I
    aput v6, v2, v0
    sget v6, Lc/a/e;->abc_ic_menu_cut_mtrl_alpha:I
    const/4 v7, 4
    aput v6, v2, v7
    sget v6, Lc/a/e;->abc_ic_menu_selectall_mtrl_alpha:I
    const/4 v8, 5
    aput v6, v2, v8
    sget v6, Lc/a/e;->abc_ic_menu_paste_mtrl_am_alpha:I
    const/4 v9, 6
    aput v6, v2, v9
    iput-object v2, p0, Landroidx/appcompat/widget/i$a;->b:[I
    new-array v1, v1, [I
  .line 4
    sget v2, Lc/a/e;->abc_textfield_activated_mtrl_alpha:I
    aput v2, v1, v3
    sget v2, Lc/a/e;->abc_textfield_search_activated_mtrl_alpha:I
    aput v2, v1, v4
    sget v2, Lc/a/e;->abc_cab_background_top_mtrl_alpha:I
    aput v2, v1, v5
    sget v2, Lc/a/e;->abc_text_cursor_material:I
    aput v2, v1, v0
    sget v2, Lc/a/e;->abc_text_select_handle_left_mtrl:I
    aput v2, v1, v7
    sget v2, Lc/a/e;->abc_text_select_handle_middle_mtrl:I
    aput v2, v1, v8
    sget v2, Lc/a/e;->abc_text_select_handle_right_mtrl:I
    aput v2, v1, v9
    iput-object v1, p0, Landroidx/appcompat/widget/i$a;->c:[I
    new-array v1, v0, [I
  .line 5
    sget v2, Lc/a/e;->abc_popup_background_mtrl_mult:I
    aput v2, v1, v3
    sget v2, Lc/a/e;->abc_cab_background_internal_bg:I
    aput v2, v1, v4
    sget v2, Lc/a/e;->abc_menu_hardkey_panel_mtrl_mult:I
    aput v2, v1, v5
    iput-object v1, p0, Landroidx/appcompat/widget/i$a;->d:[I
    new-array v1, v5, [I
  .line 6
    sget v2, Lc/a/e;->abc_tab_indicator_material:I
    aput v2, v1, v3
    sget v2, Lc/a/e;->abc_textfield_search_material:I
    aput v2, v1, v4
    iput-object v1, p0, Landroidx/appcompat/widget/i$a;->e:[I
    new-array v1, v7, [I
  .line 7
    sget v2, Lc/a/e;->abc_btn_check_material:I
    aput v2, v1, v3
    sget v2, Lc/a/e;->abc_btn_radio_material:I
    aput v2, v1, v4
    sget v2, Lc/a/e;->abc_btn_check_material_anim:I
    aput v2, v1, v5
    sget v2, Lc/a/e;->abc_btn_radio_material_anim:I
    aput v2, v1, v0
    iput-object v1, p0, Landroidx/appcompat/widget/i$a;->f:[I
    return-void
.end method

.method private f([II)Z
  .registers 7
  .line 1
    array-length v0, p1
    const/4 v1, 0
    const/4 v2, 0
  :L0
    if-ge v2, v0, :L2
    aget v3, p1, v2
    if-ne v3, p2, :L1
    const/4 p1, 1
    return p1
  :L1
    add-int/lit8 v2, v2, 1
    goto :L0
  :L2
    return v1
.end method

.method private g(Landroid/content/Context;)Landroid/content/res/ColorStateList;
  .registers 3
    const/4 v0, 0
  .line 1
    invoke-direct { p0, p1, v0 }, Landroidx/appcompat/widget/i$a;->h(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    move-result-object p1
    return-object p1
.end method

.method private h(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
  .registers 8
    const/4 v0, 4
    new-array v1, v0, [[I
    new-array v0, v0, [I
  .line 1
    sget v2, Lc/a/a;->colorControlHighlight:I
    invoke-static { p1, v2 }, Landroidx/appcompat/widget/p0;->c(Landroid/content/Context;I)I
    move-result v2
  .line 2
    sget v3, Lc/a/a;->colorButtonNormal:I
    invoke-static { p1, v3 }, Landroidx/appcompat/widget/p0;->b(Landroid/content/Context;I)I
    move-result p1
  .line 3
    sget-object v3, Landroidx/appcompat/widget/p0;->b:[I
    const/4 v4, 0
    aput-object v3, v1, v4
    aput p1, v0, v4
  .line 4
    sget-object p1, Landroidx/appcompat/widget/p0;->d:[I
    const/4 v3, 1
    aput-object p1, v1, v3
  .line 5
    invoke-static { v2, p2 }, Lc/g/d/a;->b(II)I
    move-result p1
    aput p1, v0, v3
  .line 6
    sget-object p1, Landroidx/appcompat/widget/p0;->c:[I
    const/4 v3, 2
    aput-object p1, v1, v3
  .line 7
    invoke-static { v2, p2 }, Lc/g/d/a;->b(II)I
    move-result p1
    aput p1, v0, v3
  .line 8
    sget-object p1, Landroidx/appcompat/widget/p0;->f:[I
    const/4 v2, 3
    aput-object p1, v1, v2
    aput p2, v0, v2
  .line 9
    new-instance p1, Landroid/content/res/ColorStateList;
    invoke-direct { p1, v1, v0 }, Landroid/content/res/ColorStateList;-><init>([[I[I)V
    return-object p1
.end method

.method private i(Landroid/content/Context;)Landroid/content/res/ColorStateList;
  .registers 3
  .line 1
    sget v0, Lc/a/a;->colorAccent:I
  .line 2
    invoke-static { p1, v0 }, Landroidx/appcompat/widget/p0;->c(Landroid/content/Context;I)I
    move-result v0
  .line 3
    invoke-direct { p0, p1, v0 }, Landroidx/appcompat/widget/i$a;->h(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    move-result-object p1
    return-object p1
.end method

.method private j(Landroid/content/Context;)Landroid/content/res/ColorStateList;
  .registers 3
  .line 1
    sget v0, Lc/a/a;->colorButtonNormal:I
  .line 2
    invoke-static { p1, v0 }, Landroidx/appcompat/widget/p0;->c(Landroid/content/Context;I)I
    move-result v0
  .line 3
    invoke-direct { p0, p1, v0 }, Landroidx/appcompat/widget/i$a;->h(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    move-result-object p1
    return-object p1
.end method

.method private k(Landroid/content/Context;)Landroid/content/res/ColorStateList;
  .registers 9
    const/4 v0, 3
    new-array v1, v0, [[I
    new-array v0, v0, [I
  .line 1
    sget v2, Lc/a/a;->colorSwitchThumbNormal:I
    invoke-static { p1, v2 }, Landroidx/appcompat/widget/p0;->e(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    move-result-object v2
    const/4 v3, 2
    const/4 v4, 1
    const/4 v5, 0
    if-eqz v2, :L0
  .line 2
    invoke-virtual { v2 }, Landroid/content/res/ColorStateList;->isStateful()Z
    move-result v6
    if-eqz v6, :L0
  .line 3
    sget-object v6, Landroidx/appcompat/widget/p0;->b:[I
    aput-object v6, v1, v5
  .line 4
    aget-object v6, v1, v5
    invoke-virtual { v2, v6, v5 }, Landroid/content/res/ColorStateList;->getColorForState([II)I
    move-result v6
    aput v6, v0, v5
  .line 5
    sget-object v5, Landroidx/appcompat/widget/p0;->e:[I
    aput-object v5, v1, v4
  .line 6
    sget v5, Lc/a/a;->colorControlActivated:I
    invoke-static { p1, v5 }, Landroidx/appcompat/widget/p0;->c(Landroid/content/Context;I)I
    move-result p1
    aput p1, v0, v4
  .line 7
    sget-object p1, Landroidx/appcompat/widget/p0;->f:[I
    aput-object p1, v1, v3
  .line 8
    invoke-virtual { v2 }, Landroid/content/res/ColorStateList;->getDefaultColor()I
    move-result p1
    aput p1, v0, v3
    goto :L1
  :L0
  .line 9
    sget-object v2, Landroidx/appcompat/widget/p0;->b:[I
    aput-object v2, v1, v5
  .line 10
    sget v2, Lc/a/a;->colorSwitchThumbNormal:I
    invoke-static { p1, v2 }, Landroidx/appcompat/widget/p0;->b(Landroid/content/Context;I)I
    move-result v2
    aput v2, v0, v5
  .line 11
    sget-object v2, Landroidx/appcompat/widget/p0;->e:[I
    aput-object v2, v1, v4
  .line 12
    sget v2, Lc/a/a;->colorControlActivated:I
    invoke-static { p1, v2 }, Landroidx/appcompat/widget/p0;->c(Landroid/content/Context;I)I
    move-result v2
    aput v2, v0, v4
  .line 13
    sget-object v2, Landroidx/appcompat/widget/p0;->f:[I
    aput-object v2, v1, v3
  .line 14
    sget v2, Lc/a/a;->colorSwitchThumbNormal:I
    invoke-static { p1, v2 }, Landroidx/appcompat/widget/p0;->c(Landroid/content/Context;I)I
    move-result p1
    aput p1, v0, v3
  :L1
  .line 15
    new-instance p1, Landroid/content/res/ColorStateList;
    invoke-direct { p1, v1, v0 }, Landroid/content/res/ColorStateList;-><init>([[I[I)V
    return-object p1
.end method

.method private l(Landroidx/appcompat/widget/k0;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;
  .registers 8
  .line 1
    invoke-virtual { p2 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    invoke-virtual { v0, p3 }, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    move-result p3
  .line 2
    sget v0, Lc/a/e;->abc_star_black_48dp:I
    invoke-virtual { p1, p2, v0 }, Landroidx/appcompat/widget/k0;->j(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    move-result-object v0
  .line 3
    sget v1, Lc/a/e;->abc_star_half_black_48dp:I
    invoke-virtual { p1, p2, v1 }, Landroidx/appcompat/widget/k0;->j(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    move-result-object p1
  .line 4
    instance-of p2, v0, Landroid/graphics/drawable/BitmapDrawable;
    const/4 v1, 0
    if-eqz p2, :L0
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
    move-result p2
    if-ne p2, p3, :L0
  .line 5
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    move-result p2
    if-ne p2, p3, :L0
  .line 6
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;
  .line 7
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;
  .line 8
    invoke-virtual { v0 }, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
    move-result-object v2
    invoke-direct { p2, v2 }, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    goto :L1
  :L0
  .line 9
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
    invoke-static { p3, p3, p2 }, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    move-result-object p2
  .line 10
    new-instance v2, Landroid/graphics/Canvas;
    invoke-direct { v2, p2 }, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
  .line 11
    invoke-virtual { v0, v1, v1, p3, p3 }, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
  .line 12
    invoke-virtual { v0, v2 }, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
  .line 13
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;
    invoke-direct { v0, p2 }, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
  .line 14
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;
    invoke-direct { v2, p2 }, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    move-object p2, v2
  :L1
  .line 15
    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;
    invoke-virtual { p2, v2 }, Landroid/graphics/drawable/BitmapDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)V
  .line 16
    instance-of v2, p1, Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v2, :L2
  .line 17
    invoke-virtual { p1 }, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
    move-result v2
    if-ne v2, p3, :L2
  .line 18
    invoke-virtual { p1 }, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    move-result v2
    if-ne v2, p3, :L2
  .line 19
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;
    goto :L3
  :L2
  .line 20
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
    invoke-static { p3, p3, v2 }, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    move-result-object v2
  .line 21
    new-instance v3, Landroid/graphics/Canvas;
    invoke-direct { v3, v2 }, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
  .line 22
    invoke-virtual { p1, v1, v1, p3, p3 }, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
  .line 23
    invoke-virtual { p1, v3 }, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
  .line 24
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;
    invoke-direct { p1, v2 }, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
  :L3
  .line 25
    new-instance p3, Landroid/graphics/drawable/LayerDrawable;
    const/4 v2, 3
    new-array v2, v2, [Landroid/graphics/drawable/Drawable;
    aput-object v0, v2, v1
    const/4 v0, 1
    aput-object p1, v2, v0
    const/4 p1, 2
    aput-object p2, v2, p1
    invoke-direct { p3, v2 }, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V
    const/high16 p2, 258
  .line 26
    invoke-virtual { p3, v1, p2 }, Landroid/graphics/drawable/LayerDrawable;->setId(II)V
    const p2, 16908303
  .line 27
    invoke-virtual { p3, v0, p2 }, Landroid/graphics/drawable/LayerDrawable;->setId(II)V
    const p2, 16908301
  .line 28
    invoke-virtual { p3, p1, p2 }, Landroid/graphics/drawable/LayerDrawable;->setId(II)V
    return-object p3
.end method

.method private m(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
  .registers 5
  .line 1
    invoke-static { p1 }, Landroidx/appcompat/widget/c0;->a(Landroid/graphics/drawable/Drawable;)Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    invoke-virtual { p1 }, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
    move-result-object p1
  :L0
    if-nez p3, :L1
  .line 3
    invoke-static { }, Landroidx/appcompat/widget/i;->a()Landroid/graphics/PorterDuff$Mode;
    move-result-object p3
  :L1
    invoke-static { p2, p3 }, Landroidx/appcompat/widget/i;->e(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    move-result-object p2
    invoke-virtual { p1, p2 }, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V
    return-void
.end method

.method public a(Landroidx/appcompat/widget/k0;Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
  .registers 7
  .line 1
    sget v0, Lc/a/e;->abc_cab_background_top_material:I
    if-ne p3, v0, :L0
  .line 2
    new-instance p3, Landroid/graphics/drawable/LayerDrawable;
    const/4 v0, 2
    new-array v0, v0, [Landroid/graphics/drawable/Drawable;
    const/4 v1, 0
    sget v2, Lc/a/e;->abc_cab_background_internal_bg:I
  .line 3
    invoke-virtual { p1, p2, v2 }, Landroidx/appcompat/widget/k0;->j(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    move-result-object v2
    aput-object v2, v0, v1
    const/4 v1, 1
    sget v2, Lc/a/e;->abc_cab_background_top_mtrl_alpha:I
  .line 4
    invoke-virtual { p1, p2, v2 }, Landroidx/appcompat/widget/k0;->j(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    move-result-object p1
    aput-object p1, v0, v1
    invoke-direct { p3, v0 }, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V
    return-object p3
  :L0
  .line 5
    sget v0, Lc/a/e;->abc_ratingbar_material:I
    if-ne p3, v0, :L1
  .line 6
    sget p3, Lc/a/d;->abc_star_big:I
    invoke-direct { p0, p1, p2, p3 }, Landroidx/appcompat/widget/i$a;->l(Landroidx/appcompat/widget/k0;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;
    move-result-object p1
    return-object p1
  :L1
  .line 7
    sget v0, Lc/a/e;->abc_ratingbar_indicator_material:I
    if-ne p3, v0, :L2
  .line 8
    sget p3, Lc/a/d;->abc_star_medium:I
    invoke-direct { p0, p1, p2, p3 }, Landroidx/appcompat/widget/i$a;->l(Landroidx/appcompat/widget/k0;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;
    move-result-object p1
    return-object p1
  :L2
  .line 9
    sget v0, Lc/a/e;->abc_ratingbar_small_material:I
    if-ne p3, v0, :L3
  .line 10
    sget p3, Lc/a/d;->abc_star_small:I
    invoke-direct { p0, p1, p2, p3 }, Landroidx/appcompat/widget/i$a;->l(Landroidx/appcompat/widget/k0;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;
    move-result-object p1
    return-object p1
  :L3
    const/4 p1, 0
    return-object p1
.end method

.method public b(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
  .registers 10
  .line 1
    invoke-static { }, Landroidx/appcompat/widget/i;->a()Landroid/graphics/PorterDuff$Mode;
    move-result-object v0
  .line 2
    iget-object v1, p0, Landroidx/appcompat/widget/i$a;->a:[I
    invoke-direct { p0, v1, p2 }, Landroidx/appcompat/widget/i$a;->f([II)Z
    move-result v1
    const v2, 16842801
    const/4 v3, -1
    const/4 v4, 0
    const/4 v5, 1
    if-eqz v1, :L2
  .line 3
    sget v2, Lc/a/a;->colorControlNormal:I
  :L0
    const/4 p2, -1
  :L1
    const/4 v1, 1
    goto :L7
  :L2
  .line 4
    iget-object v1, p0, Landroidx/appcompat/widget/i$a;->c:[I
    invoke-direct { p0, v1, p2 }, Landroidx/appcompat/widget/i$a;->f([II)Z
    move-result v1
    if-eqz v1, :L3
  .line 5
    sget v2, Lc/a/a;->colorControlActivated:I
    goto :L0
  :L3
  .line 6
    iget-object v1, p0, Landroidx/appcompat/widget/i$a;->d:[I
    invoke-direct { p0, v1, p2 }, Landroidx/appcompat/widget/i$a;->f([II)Z
    move-result v1
    if-eqz v1, :L4
  .line 7
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;
    goto :L0
  :L4
  .line 8
    sget v1, Lc/a/e;->abc_list_divider_mtrl_alpha:I
    if-ne p2, v1, :L5
    const v2, 16842800
    const p2, 1109603123
  .line 9
    invoke-static { p2 }, Ljava/lang/Math;->round(F)I
    move-result p2
    goto :L1
  :L5
  .line 10
    sget v1, Lc/a/e;->abc_dialog_material_background:I
    if-ne p2, v1, :L6
    goto :L0
  :L6
    const/4 p2, -1
    const/4 v1, 0
    const/4 v2, 0
  :L7
    if-eqz v1, :L10
  .line 11
    invoke-static { p3 }, Landroidx/appcompat/widget/c0;->a(Landroid/graphics/drawable/Drawable;)Z
    move-result v1
    if-eqz v1, :L8
  .line 12
    invoke-virtual { p3 }, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
    move-result-object p3
  :L8
  .line 13
    invoke-static { p1, v2 }, Landroidx/appcompat/widget/p0;->c(Landroid/content/Context;I)I
    move-result p1
  .line 14
    invoke-static { p1, v0 }, Landroidx/appcompat/widget/i;->e(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    move-result-object p1
    invoke-virtual { p3, p1 }, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V
    if-eq p2, v3, :L9
  .line 15
    invoke-virtual { p3, p2 }, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
  :L9
    return v5
  :L10
    return v4
.end method

.method public c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
  .registers 4
  .line 1
    sget v0, Lc/a/e;->abc_edit_text_material:I
    if-ne p2, v0, :L0
  .line 2
    sget p2, Lc/a/c;->abc_tint_edittext:I
    invoke-static { p1, p2 }, Lc/a/k/a/a;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    move-result-object p1
    return-object p1
  :L0
  .line 3
    sget v0, Lc/a/e;->abc_switch_track_mtrl_alpha:I
    if-ne p2, v0, :L1
  .line 4
    sget p2, Lc/a/c;->abc_tint_switch_track:I
    invoke-static { p1, p2 }, Lc/a/k/a/a;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    move-result-object p1
    return-object p1
  :L1
  .line 5
    sget v0, Lc/a/e;->abc_switch_thumb_material:I
    if-ne p2, v0, :L2
  .line 6
    invoke-direct { p0, p1 }, Landroidx/appcompat/widget/i$a;->k(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    move-result-object p1
    return-object p1
  :L2
  .line 7
    sget v0, Lc/a/e;->abc_btn_default_mtrl_shape:I
    if-ne p2, v0, :L3
  .line 8
    invoke-direct { p0, p1 }, Landroidx/appcompat/widget/i$a;->j(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    move-result-object p1
    return-object p1
  :L3
  .line 9
    sget v0, Lc/a/e;->abc_btn_borderless_material:I
    if-ne p2, v0, :L4
  .line 10
    invoke-direct { p0, p1 }, Landroidx/appcompat/widget/i$a;->g(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    move-result-object p1
    return-object p1
  :L4
  .line 11
    sget v0, Lc/a/e;->abc_btn_colored_material:I
    if-ne p2, v0, :L5
  .line 12
    invoke-direct { p0, p1 }, Landroidx/appcompat/widget/i$a;->i(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    move-result-object p1
    return-object p1
  :L5
  .line 13
    sget v0, Lc/a/e;->abc_spinner_mtrl_am_alpha:I
    if-eq p2, v0, :L11
    sget v0, Lc/a/e;->abc_spinner_textfield_background_material:I
    if-ne p2, v0, :L6
    goto :L11
  :L6
  .line 14
    iget-object v0, p0, Landroidx/appcompat/widget/i$a;->b:[I
    invoke-direct { p0, v0, p2 }, Landroidx/appcompat/widget/i$a;->f([II)Z
    move-result v0
    if-eqz v0, :L7
  .line 15
    sget p2, Lc/a/a;->colorControlNormal:I
    invoke-static { p1, p2 }, Landroidx/appcompat/widget/p0;->e(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    move-result-object p1
    return-object p1
  :L7
  .line 16
    iget-object v0, p0, Landroidx/appcompat/widget/i$a;->e:[I
    invoke-direct { p0, v0, p2 }, Landroidx/appcompat/widget/i$a;->f([II)Z
    move-result v0
    if-eqz v0, :L8
  .line 17
    sget p2, Lc/a/c;->abc_tint_default:I
    invoke-static { p1, p2 }, Lc/a/k/a/a;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    move-result-object p1
    return-object p1
  :L8
  .line 18
    iget-object v0, p0, Landroidx/appcompat/widget/i$a;->f:[I
    invoke-direct { p0, v0, p2 }, Landroidx/appcompat/widget/i$a;->f([II)Z
    move-result v0
    if-eqz v0, :L9
  .line 19
    sget p2, Lc/a/c;->abc_tint_btn_checkable:I
    invoke-static { p1, p2 }, Lc/a/k/a/a;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    move-result-object p1
    return-object p1
  :L9
  .line 20
    sget v0, Lc/a/e;->abc_seekbar_thumb_material:I
    if-ne p2, v0, :L10
  .line 21
    sget p2, Lc/a/c;->abc_tint_seek_thumb:I
    invoke-static { p1, p2 }, Lc/a/k/a/a;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    move-result-object p1
    return-object p1
  :L10
    const/4 p1, 0
    return-object p1
  :L11
  .line 22
    sget p2, Lc/a/c;->abc_tint_spinner:I
    invoke-static { p1, p2 }, Lc/a/k/a/a;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    move-result-object p1
    return-object p1
.end method

.method public d(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
  .registers 9
  .line 1
    sget v0, Lc/a/e;->abc_seekbar_track_material:I
    const/4 v1, 1
    const v2, 16908301
    const v3, 16908303
    const/high16 v4, 258
    if-ne p2, v0, :L0
  .line 2
    check-cast p3, Landroid/graphics/drawable/LayerDrawable;
  .line 3
    invoke-virtual { p3, v4 }, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;
    move-result-object p2
    sget v0, Lc/a/a;->colorControlNormal:I
  .line 4
    invoke-static { p1, v0 }, Landroidx/appcompat/widget/p0;->c(Landroid/content/Context;I)I
    move-result v0
  .line 5
    invoke-static { }, Landroidx/appcompat/widget/i;->a()Landroid/graphics/PorterDuff$Mode;
    move-result-object v4
  .line 6
    invoke-direct { p0, p2, v0, v4 }, Landroidx/appcompat/widget/i$a;->m(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
  .line 7
    invoke-virtual { p3, v3 }, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;
    move-result-object p2
    sget v0, Lc/a/a;->colorControlNormal:I
  .line 8
    invoke-static { p1, v0 }, Landroidx/appcompat/widget/p0;->c(Landroid/content/Context;I)I
    move-result v0
  .line 9
    invoke-static { }, Landroidx/appcompat/widget/i;->a()Landroid/graphics/PorterDuff$Mode;
    move-result-object v3
  .line 10
    invoke-direct { p0, p2, v0, v3 }, Landroidx/appcompat/widget/i$a;->m(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
  .line 11
    invoke-virtual { p3, v2 }, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;
    move-result-object p2
    sget p3, Lc/a/a;->colorControlActivated:I
  .line 12
    invoke-static { p1, p3 }, Landroidx/appcompat/widget/p0;->c(Landroid/content/Context;I)I
    move-result p1
  .line 13
    invoke-static { }, Landroidx/appcompat/widget/i;->a()Landroid/graphics/PorterDuff$Mode;
    move-result-object p3
  .line 14
    invoke-direct { p0, p2, p1, p3 }, Landroidx/appcompat/widget/i$a;->m(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
    return v1
  :L0
  .line 15
    sget v0, Lc/a/e;->abc_ratingbar_material:I
    if-eq p2, v0, :L2
    sget v0, Lc/a/e;->abc_ratingbar_indicator_material:I
    if-eq p2, v0, :L2
    sget v0, Lc/a/e;->abc_ratingbar_small_material:I
    if-ne p2, v0, :L1
    goto :L2
  :L1
    const/4 p1, 0
    return p1
  :L2
  .line 16
    check-cast p3, Landroid/graphics/drawable/LayerDrawable;
  .line 17
    invoke-virtual { p3, v4 }, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;
    move-result-object p2
    sget v0, Lc/a/a;->colorControlNormal:I
  .line 18
    invoke-static { p1, v0 }, Landroidx/appcompat/widget/p0;->b(Landroid/content/Context;I)I
    move-result v0
  .line 19
    invoke-static { }, Landroidx/appcompat/widget/i;->a()Landroid/graphics/PorterDuff$Mode;
    move-result-object v4
  .line 20
    invoke-direct { p0, p2, v0, v4 }, Landroidx/appcompat/widget/i$a;->m(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
  .line 21
    invoke-virtual { p3, v3 }, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;
    move-result-object p2
    sget v0, Lc/a/a;->colorControlActivated:I
  .line 22
    invoke-static { p1, v0 }, Landroidx/appcompat/widget/p0;->c(Landroid/content/Context;I)I
    move-result v0
  .line 23
    invoke-static { }, Landroidx/appcompat/widget/i;->a()Landroid/graphics/PorterDuff$Mode;
    move-result-object v3
  .line 24
    invoke-direct { p0, p2, v0, v3 }, Landroidx/appcompat/widget/i$a;->m(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
  .line 25
    invoke-virtual { p3, v2 }, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;
    move-result-object p2
    sget p3, Lc/a/a;->colorControlActivated:I
  .line 26
    invoke-static { p1, p3 }, Landroidx/appcompat/widget/p0;->c(Landroid/content/Context;I)I
    move-result p1
  .line 27
    invoke-static { }, Landroidx/appcompat/widget/i;->a()Landroid/graphics/PorterDuff$Mode;
    move-result-object p3
  .line 28
    invoke-direct { p0, p2, p1, p3 }, Landroidx/appcompat/widget/i$a;->m(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
    return v1
.end method

.method public e(I)Landroid/graphics/PorterDuff$Mode;
  .registers 3
  .line 1
    sget v0, Lc/a/e;->abc_switch_thumb_material:I
    if-ne p1, v0, :L0
  .line 2
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    return-object p1
.end method
