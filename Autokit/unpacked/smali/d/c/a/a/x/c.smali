.class public Ld/c/a/a/x/c;
.super Ljava/lang/Object;
.source "SourceFile"

.method public constructor <init>()V
  .registers 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;
  .registers 4
  .line 1
    invoke-virtual { p1, p2 }, Landroid/content/res/TypedArray;->hasValue(I)Z
    move-result v0
    if-eqz v0, :L0
    const/4 v0, 0
  .line 2
    invoke-virtual { p1, p2, v0 }, Landroid/content/res/TypedArray;->getResourceId(II)I
    move-result v0
    if-eqz v0, :L0
  .line 3
    invoke-static { p0, v0 }, Lc/a/k/a/a;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    move-result-object p0
    if-eqz p0, :L0
    return-object p0
  :L0
  .line 4
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v0, 15
    if-gt p0, v0, :L1
    const/4 p0, -1
  .line 5
    invoke-virtual { p1, p2, p0 }, Landroid/content/res/TypedArray;->getColor(II)I
    move-result v0
    if-eq v0, p0, :L1
  .line 6
    invoke-static { v0 }, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;
    move-result-object p0
    return-object p0
  :L1
  .line 7
    invoke-virtual { p1, p2 }, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;
    move-result-object p0
    return-object p0
.end method

.method public static b(Landroid/content/Context;Landroidx/appcompat/widget/u0;I)Landroid/content/res/ColorStateList;
  .registers 4
  .line 1
    invoke-virtual { p1, p2 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result v0
    if-eqz v0, :L0
    const/4 v0, 0
  .line 2
    invoke-virtual { p1, p2, v0 }, Landroidx/appcompat/widget/u0;->n(II)I
    move-result v0
    if-eqz v0, :L0
  .line 3
    invoke-static { p0, v0 }, Lc/a/k/a/a;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    move-result-object p0
    if-eqz p0, :L0
    return-object p0
  :L0
  .line 4
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v0, 15
    if-gt p0, v0, :L1
    const/4 p0, -1
  .line 5
    invoke-virtual { p1, p2, p0 }, Landroidx/appcompat/widget/u0;->b(II)I
    move-result v0
    if-eq v0, p0, :L1
  .line 6
    invoke-static { v0 }, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;
    move-result-object p0
    return-object p0
  :L1
  .line 7
    invoke-virtual { p1, p2 }, Landroidx/appcompat/widget/u0;->c(I)Landroid/content/res/ColorStateList;
    move-result-object p0
    return-object p0
.end method

.method public static c(Landroid/content/Context;Landroid/content/res/TypedArray;II)I
  .registers 7
  .line 1
    new-instance v0, Landroid/util/TypedValue;
    invoke-direct { v0 }, Landroid/util/TypedValue;-><init>()V
  .line 2
    invoke-virtual { p1, p2, v0 }, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z
    move-result v1
    if-eqz v1, :L1
    iget v1, v0, Landroid/util/TypedValue;->type:I
    const/4 v2, 2
    if-eq v1, v2, :L0
    goto :L1
  :L0
  .line 3
    invoke-virtual { p0 }, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;
    move-result-object p0
    const/4 p1, 1
    new-array p1, p1, [I
    iget p2, v0, Landroid/util/TypedValue;->data:I
    const/4 v0, 0
    aput p2, p1, v0
    invoke-virtual { p0, p1 }, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;
    move-result-object p0
  .line 4
    invoke-virtual { p0, v0, p3 }, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
    move-result p1
  .line 5
    invoke-virtual { p0 }, Landroid/content/res/TypedArray;->recycle()V
    return p1
  :L1
  .line 6
    invoke-virtual { p1, p2, p3 }, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
    move-result p0
    return p0
.end method

.method public static d(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;
  .registers 4
  .line 1
    invoke-virtual { p1, p2 }, Landroid/content/res/TypedArray;->hasValue(I)Z
    move-result v0
    if-eqz v0, :L0
    const/4 v0, 0
  .line 2
    invoke-virtual { p1, p2, v0 }, Landroid/content/res/TypedArray;->getResourceId(II)I
    move-result v0
    if-eqz v0, :L0
  .line 3
    invoke-static { p0, v0 }, Lc/a/k/a/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    move-result-object p0
    if-eqz p0, :L0
    return-object p0
  :L0
  .line 4
    invoke-virtual { p1, p2 }, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    move-result-object p0
    return-object p0
.end method

.method static e(Landroid/content/res/TypedArray;II)I
  .registers 3
  .line 1
    invoke-virtual { p0, p1 }, Landroid/content/res/TypedArray;->hasValue(I)Z
    move-result p0
    if-eqz p0, :L0
    return p1
  :L0
    return p2
.end method

.method public static f(Landroid/content/Context;Landroid/content/res/TypedArray;I)Ld/c/a/a/x/d;
  .registers 4
  .line 1
    invoke-virtual { p1, p2 }, Landroid/content/res/TypedArray;->hasValue(I)Z
    move-result v0
    if-eqz v0, :L0
    const/4 v0, 0
  .line 2
    invoke-virtual { p1, p2, v0 }, Landroid/content/res/TypedArray;->getResourceId(II)I
    move-result p1
    if-eqz p1, :L0
  .line 3
    new-instance p2, Ld/c/a/a/x/d;
    invoke-direct { p2, p0, p1 }, Ld/c/a/a/x/d;-><init>(Landroid/content/Context;I)V
    return-object p2
  :L0
    const/4 p0, 0
    return-object p0
.end method

.method public static g(Landroid/content/Context;)Z
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object p0
    invoke-virtual { p0 }, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
    move-result-object p0
    iget p0, p0, Landroid/content/res/Configuration;->fontScale:F
    const v0, 1067869798
    cmpl-float p0, p0, v0
    if-ltz p0, :L0
    const/4 p0, 1
    goto :L1
  :L0
    const/4 p0, 0
  :L1
    return p0
.end method

.method public static h(Landroid/content/Context;)Z
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object p0
    invoke-virtual { p0 }, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
    move-result-object p0
    iget p0, p0, Landroid/content/res/Configuration;->fontScale:F
    const/high16 v0, 16384
    cmpl-float p0, p0, v0
    if-ltz p0, :L0
    const/4 p0, 1
    goto :L1
  :L0
    const/4 p0, 0
  :L1
    return p0
.end method
