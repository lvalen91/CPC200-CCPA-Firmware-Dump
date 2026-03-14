.class public Lc/a/o/a;
.super Ljava/lang/Object;
.source "SourceFile"

.field private a:Landroid/content/Context;

.method private constructor <init>(Landroid/content/Context;)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Lc/a/o/a;->a:Landroid/content/Context;
    return-void
.end method

.method public static b(Landroid/content/Context;)Lc/a/o/a;
  .registers 2
  .line 1
    new-instance v0, Lc/a/o/a;
    invoke-direct { v0, p0 }, Lc/a/o/a;-><init>(Landroid/content/Context;)V
    return-object v0
.end method

.method public a()Z
  .registers 3
  .line 1
    iget-object v0, p0, Lc/a/o/a;->a:Landroid/content/Context;
    invoke-virtual { v0 }, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    move-result-object v0
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    const/16 v1, 14
    if-ge v0, v1, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public c()I
  .registers 2
  .line 1
    iget-object v0, p0, Lc/a/o/a;->a:Landroid/content/Context;
    invoke-virtual { v0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
    move-result-object v0
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I
    div-int/lit8 v0, v0, 2
    return v0
.end method

.method public d()I
  .registers 5
  .line 1
    iget-object v0, p0, Lc/a/o/a;->a:Landroid/content/Context;
    invoke-virtual { v0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
    move-result-object v0
  .line 2
    iget v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I
  .line 3
    iget v2, v0, Landroid/content/res/Configuration;->screenHeightDp:I
  .line 4
    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I
    const/16 v3, 600
    if-gt v0, v3, :L6
    if-gt v1, v3, :L6
    const/16 v0, 720
    const/16 v3, 960
    if-le v1, v3, :L0
    if-gt v2, v0, :L6
  :L0
    if-le v1, v0, :L1
    if-le v2, v3, :L1
    goto :L6
  :L1
    const/16 v0, 500
    if-ge v1, v0, :L5
    const/16 v0, 480
    const/16 v3, 640
    if-le v1, v3, :L2
    if-gt v2, v0, :L5
  :L2
    if-le v1, v0, :L3
    if-le v2, v3, :L3
    goto :L5
  :L3
    const/16 v0, 360
    if-lt v1, v0, :L4
    const/4 v0, 3
    return v0
  :L4
    const/4 v0, 2
    return v0
  :L5
    const/4 v0, 4
    return v0
  :L6
    const/4 v0, 5
    return v0
.end method

.method public e()I
  .registers 3
  .line 1
    iget-object v0, p0, Lc/a/o/a;->a:Landroid/content/Context;
    invoke-virtual { v0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    sget v1, Lc/a/d;->abc_action_bar_stacked_tab_max_width:I
    invoke-virtual { v0, v1 }, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    move-result v0
    return v0
.end method

.method public f()I
  .registers 6
  .line 1
    iget-object v0, p0, Lc/a/o/a;->a:Landroid/content/Context;
    sget-object v1, Lc/a/j;->ActionBar:[I
    sget v2, Lc/a/a;->actionBarStyle:I
    const/4 v3, 0
    const/4 v4, 0
    invoke-virtual { v0, v3, v1, v2, v4 }, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    move-result-object v0
  .line 2
    sget v1, Lc/a/j;->ActionBar_height:I
    invoke-virtual { v0, v1, v4 }, Landroid/content/res/TypedArray;->getLayoutDimension(II)I
    move-result v1
  .line 3
    iget-object v2, p0, Lc/a/o/a;->a:Landroid/content/Context;
    invoke-virtual { v2 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v2
  .line 4
    invoke-virtual { p0 }, Lc/a/o/a;->g()Z
    move-result v3
    if-nez v3, :L0
  .line 5
    sget v3, Lc/a/d;->abc_action_bar_stacked_max_height:I
  .line 6
    invoke-virtual { v2, v3 }, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    move-result v2
  .line 7
    invoke-static { v1, v2 }, Ljava/lang/Math;->min(II)I
    move-result v1
  :L0
  .line 8
    invoke-virtual { v0 }, Landroid/content/res/TypedArray;->recycle()V
    return v1
.end method

.method public g()Z
  .registers 3
  .line 1
    iget-object v0, p0, Lc/a/o/a;->a:Landroid/content/Context;
    invoke-virtual { v0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    sget v1, Lc/a/b;->abc_action_bar_embed_tabs:I
    invoke-virtual { v0, v1 }, Landroid/content/res/Resources;->getBoolean(I)Z
    move-result v0
    return v0
.end method

.method public h()Z
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/4 v1, 1
    const/16 v2, 19
    if-lt v0, v2, :L0
    return v1
  :L0
  .line 2
    iget-object v0, p0, Lc/a/o/a;->a:Landroid/content/Context;
    invoke-static { v0 }, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z
    move-result v0
    xor-int/2addr v0, v1
    return v0
.end method
