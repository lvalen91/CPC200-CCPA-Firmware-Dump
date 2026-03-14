.class public Ld/c/a/a/o/a;
.super Landroidx/appcompat/widget/f;
.source "SourceFile"

.field private final static g:I

.field private final static h:[[I

.field private e:Landroid/content/res/ColorStateList;

.field private f:Z

.method static constructor <clinit>()V
  .registers 5
  .line 1
    sget v0, Ld/c/a/a/j;->Widget_MaterialComponents_CompoundButton_CheckBox:I
    sput v0, Ld/c/a/a/o/a;->g:I
    const/4 v0, 4
    new-array v0, v0, [[I
    const/4 v1, 2
    new-array v2, v1, [I
  .line 2
    fill-array-data v2, :L0
    const/4 v3, 0
    aput-object v2, v0, v3
    new-array v2, v1, [I
    fill-array-data v2, :L1
    const/4 v3, 1
    aput-object v2, v0, v3
    new-array v2, v1, [I
    fill-array-data v2, :L2
    aput-object v2, v0, v1
    new-array v1, v1, [I
    fill-array-data v1, :L3
    const/4 v2, 3
    aput-object v1, v0, v2
    sput-object v0, Ld/c/a/a/o/a;->h:[[I
    return-void
  :L0
  .array-data 4
    -98t 0t 1t 1t
    -96t 0t 1t 1t
  .end array-data
  :L1
  .array-data 4
    -98t 0t 1t 1t
    96t -1t -2t -2t
  .end array-data
  :L2
  .array-data 4
    98t -1t -2t -2t
    -96t 0t 1t 1t
  .end array-data
  :L3
  .array-data 4
    98t -1t -2t -2t
    96t -1t -2t -2t
  .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 4
  .line 1
    sget v0, Ld/c/a/a/b;->checkboxStyle:I
    invoke-direct { p0, p1, p2, v0 }, Ld/c/a/a/o/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .registers 11
  .line 2
    sget v0, Ld/c/a/a/o/a;->g:I
    invoke-static { p1, p2, p3, v0 }, Lcom/google/android/material/theme/a/a;->c(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;
    move-result-object p1
    invoke-direct { p0, p1, p2, p3 }, Landroidx/appcompat/widget/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .line 3
    invoke-virtual { p0 }, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;
    move-result-object p1
  .line 4
    sget-object v2, Ld/c/a/a/k;->MaterialCheckBox:[I
    sget v4, Ld/c/a/a/o/a;->g:I
    const/4 v6, 0
    new-array v5, v6, [I
    move-object v0, p1
    move-object v1, p2
    move v3, p3
  .line 5
    invoke-static/range { v0 .. v5 }, Lcom/google/android/material/internal/j;->h(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;
    move-result-object p2
  .line 6
    sget p3, Ld/c/a/a/k;->MaterialCheckBox_buttonTint:I
    invoke-virtual { p2, p3 }, Landroid/content/res/TypedArray;->hasValue(I)Z
    move-result p3
    if-eqz p3, :L0
  .line 7
    sget p3, Ld/c/a/a/k;->MaterialCheckBox_buttonTint:I
  .line 8
    invoke-static { p1, p2, p3 }, Ld/c/a/a/x/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;
    move-result-object p1
  .line 9
    invoke-static { p0, p1 }, Landroidx/core/widget/c;->c(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V
  :L0
  .line 10
    sget p1, Ld/c/a/a/k;->MaterialCheckBox_useMaterialThemeColors:I
  .line 11
    invoke-virtual { p2, p1, v6 }, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    move-result p1
    iput-boolean p1, p0, Ld/c/a/a/o/a;->f:Z
  .line 12
    invoke-virtual { p2 }, Landroid/content/res/TypedArray;->recycle()V
    return-void
.end method

.method private getMaterialThemeColorsTintList()Landroid/content/res/ColorStateList;
  .registers 7
  .line 1
    iget-object v0, p0, Ld/c/a/a/o/a;->e:Landroid/content/res/ColorStateList;
    if-nez v0, :L0
  .line 2
    sget-object v0, Ld/c/a/a/o/a;->h:[[I
    array-length v0, v0
    new-array v0, v0, [I
  .line 3
    sget v1, Ld/c/a/a/b;->colorControlActivated:I
    invoke-static { p0, v1 }, Ld/c/a/a/q/a;->c(Landroid/view/View;I)I
    move-result v1
  .line 4
    sget v2, Ld/c/a/a/b;->colorSurface:I
    invoke-static { p0, v2 }, Ld/c/a/a/q/a;->c(Landroid/view/View;I)I
    move-result v2
  .line 5
    sget v3, Ld/c/a/a/b;->colorOnSurface:I
    invoke-static { p0, v3 }, Ld/c/a/a/q/a;->c(Landroid/view/View;I)I
    move-result v3
    const/4 v4, 0
    const/high16 v5, 16256
  .line 6
    invoke-static { v2, v1, v5 }, Ld/c/a/a/q/a;->f(IIF)I
    move-result v1
    aput v1, v0, v4
    const/4 v1, 1
    const v4, 1057635697
  .line 7
    invoke-static { v2, v3, v4 }, Ld/c/a/a/q/a;->f(IIF)I
    move-result v4
    aput v4, v0, v1
    const/4 v1, 2
    const v4, 1052938076
  .line 8
    invoke-static { v2, v3, v4 }, Ld/c/a/a/q/a;->f(IIF)I
    move-result v5
    aput v5, v0, v1
    const/4 v1, 3
  .line 9
    invoke-static { v2, v3, v4 }, Ld/c/a/a/q/a;->f(IIF)I
    move-result v2
    aput v2, v0, v1
  .line 10
    new-instance v1, Landroid/content/res/ColorStateList;
    sget-object v2, Ld/c/a/a/o/a;->h:[[I
    invoke-direct { v1, v2, v0 }, Landroid/content/res/ColorStateList;-><init>([[I[I)V
    iput-object v1, p0, Ld/c/a/a/o/a;->e:Landroid/content/res/ColorStateList;
  :L0
  .line 11
    iget-object v0, p0, Ld/c/a/a/o/a;->e:Landroid/content/res/ColorStateList;
    return-object v0
.end method

.method protected onAttachedToWindow()V
  .registers 2
  .line 1
    invoke-super { p0 }, Landroid/widget/CheckBox;->onAttachedToWindow()V
  .line 2
    iget-boolean v0, p0, Ld/c/a/a/o/a;->f:Z
    if-eqz v0, :L0
    invoke-static { p0 }, Landroidx/core/widget/c;->b(Landroid/widget/CompoundButton;)Landroid/content/res/ColorStateList;
    move-result-object v0
    if-nez v0, :L0
    const/4 v0, 1
  .line 3
    invoke-virtual { p0, v0 }, Ld/c/a/a/o/a;->setUseMaterialThemeColors(Z)V
  :L0
    return-void
.end method

.method public setUseMaterialThemeColors(Z)V
  .registers 2
  .line 1
    iput-boolean p1, p0, Ld/c/a/a/o/a;->f:Z
    if-eqz p1, :L0
  .line 2
    invoke-direct { p0 }, Ld/c/a/a/o/a;->getMaterialThemeColorsTintList()Landroid/content/res/ColorStateList;
    move-result-object p1
    invoke-static { p0, p1 }, Landroidx/core/widget/c;->c(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V
    goto :L1
  :L0
    const/4 p1, 0
  .line 3
    invoke-static { p0, p1 }, Landroidx/core/widget/c;->c(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V
  :L1
    return-void
.end method
