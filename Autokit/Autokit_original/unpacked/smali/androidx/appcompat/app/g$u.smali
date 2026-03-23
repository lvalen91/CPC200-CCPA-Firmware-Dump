.class public final Landroidx/appcompat/app/g$u;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/app/g;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 28
  name = "u"
.end annotation

.field a:I

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:Landroid/view/ViewGroup;

.field h:Landroid/view/View;

.field i:Landroid/view/View;

.field j:Landroidx/appcompat/view/menu/g;

.field k:Landroidx/appcompat/view/menu/e;

.field l:Landroid/content/Context;

.field m:Z

.field n:Z

.field o:Z

.field public p:Z

.field q:Z

.field r:Z

.field s:Landroid/os/Bundle;

.method constructor <init>(I)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput p1, p0, Landroidx/appcompat/app/g$u;->a:I
    const/4 p1, 0
  .line 3
    iput-boolean p1, p0, Landroidx/appcompat/app/g$u;->q:Z
    return-void
.end method

.method a(Landroidx/appcompat/view/menu/m$a;)Landroidx/appcompat/view/menu/n;
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g$u;->j:Landroidx/appcompat/view/menu/g;
    if-nez v0, :L0
    const/4 p1, 0
    return-object p1
  :L0
  .line 2
    iget-object v0, p0, Landroidx/appcompat/app/g$u;->k:Landroidx/appcompat/view/menu/e;
    if-nez v0, :L1
  .line 3
    new-instance v0, Landroidx/appcompat/view/menu/e;
    iget-object v1, p0, Landroidx/appcompat/app/g$u;->l:Landroid/content/Context;
    sget v2, Lc/a/g;->abc_list_menu_item_layout:I
    invoke-direct { v0, v1, v2 }, Landroidx/appcompat/view/menu/e;-><init>(Landroid/content/Context;I)V
    iput-object v0, p0, Landroidx/appcompat/app/g$u;->k:Landroidx/appcompat/view/menu/e;
  .line 4
    invoke-virtual { v0, p1 }, Landroidx/appcompat/view/menu/e;->h(Landroidx/appcompat/view/menu/m$a;)V
  .line 5
    iget-object p1, p0, Landroidx/appcompat/app/g$u;->j:Landroidx/appcompat/view/menu/g;
    iget-object v0, p0, Landroidx/appcompat/app/g$u;->k:Landroidx/appcompat/view/menu/e;
    invoke-virtual { p1, v0 }, Landroidx/appcompat/view/menu/g;->b(Landroidx/appcompat/view/menu/m;)V
  :L1
  .line 6
    iget-object p1, p0, Landroidx/appcompat/app/g$u;->k:Landroidx/appcompat/view/menu/e;
    iget-object v0, p0, Landroidx/appcompat/app/g$u;->g:Landroid/view/ViewGroup;
    invoke-virtual { p1, v0 }, Landroidx/appcompat/view/menu/e;->g(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/n;
    move-result-object p1
    return-object p1
.end method

.method public b()Z
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g$u;->h:Landroid/view/View;
    const/4 v1, 0
    if-nez v0, :L0
    return v1
  :L0
  .line 2
    iget-object v0, p0, Landroidx/appcompat/app/g$u;->i:Landroid/view/View;
    const/4 v2, 1
    if-eqz v0, :L1
    return v2
  :L1
  .line 3
    iget-object v0, p0, Landroidx/appcompat/app/g$u;->k:Landroidx/appcompat/view/menu/e;
    invoke-virtual { v0 }, Landroidx/appcompat/view/menu/e;->b()Landroid/widget/ListAdapter;
    move-result-object v0
    invoke-interface { v0 }, Landroid/widget/ListAdapter;->getCount()I
    move-result v0
    if-lez v0, :L2
    const/4 v1, 1
  :L2
    return v1
.end method

.method c(Landroidx/appcompat/view/menu/g;)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g$u;->j:Landroidx/appcompat/view/menu/g;
    if-ne p1, v0, :L0
    return-void
  :L0
    if-eqz v0, :L1
  .line 2
    iget-object v1, p0, Landroidx/appcompat/app/g$u;->k:Landroidx/appcompat/view/menu/e;
    invoke-virtual { v0, v1 }, Landroidx/appcompat/view/menu/g;->O(Landroidx/appcompat/view/menu/m;)V
  :L1
  .line 3
    iput-object p1, p0, Landroidx/appcompat/app/g$u;->j:Landroidx/appcompat/view/menu/g;
    if-eqz p1, :L2
  .line 4
    iget-object v0, p0, Landroidx/appcompat/app/g$u;->k:Landroidx/appcompat/view/menu/e;
    if-eqz v0, :L2
    invoke-virtual { p1, v0 }, Landroidx/appcompat/view/menu/g;->b(Landroidx/appcompat/view/menu/m;)V
  :L2
    return-void
.end method

.method d(Landroid/content/Context;)V
  .registers 6
  .line 1
    new-instance v0, Landroid/util/TypedValue;
    invoke-direct { v0 }, Landroid/util/TypedValue;-><init>()V
  .line 2
    invoke-virtual { p1 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v1
    invoke-virtual { v1 }, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;
    move-result-object v1
  .line 3
    invoke-virtual { p1 }, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;
    move-result-object v2
    invoke-virtual { v1, v2 }, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V
  .line 4
    sget v2, Lc/a/a;->actionBarPopupTheme:I
    const/4 v3, 1
    invoke-virtual { v1, v2, v0, v3 }, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z
  .line 5
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I
    if-eqz v2, :L0
  .line 6
    invoke-virtual { v1, v2, v3 }, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V
  :L0
  .line 7
    sget v2, Lc/a/a;->panelMenuListTheme:I
    invoke-virtual { v1, v2, v0, v3 }, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z
  .line 8
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I
    if-eqz v0, :L1
  .line 9
    invoke-virtual { v1, v0, v3 }, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V
    goto :L2
  :L1
  .line 10
    sget v0, Lc/a/i;->Theme_AppCompat_CompactMenu:I
    invoke-virtual { v1, v0, v3 }, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V
  :L2
  .line 11
    new-instance v0, Lc/a/o/d;
    const/4 v2, 0
    invoke-direct { v0, p1, v2 }, Lc/a/o/d;-><init>(Landroid/content/Context;I)V
  .line 12
    invoke-virtual { v0 }, Lc/a/o/d;->getTheme()Landroid/content/res/Resources$Theme;
    move-result-object p1
    invoke-virtual { p1, v1 }, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V
  .line 13
    iput-object v0, p0, Landroidx/appcompat/app/g$u;->l:Landroid/content/Context;
  .line 14
    sget-object p1, Lc/a/j;->AppCompatTheme:[I
    invoke-virtual { v0, p1 }, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;
    move-result-object p1
  .line 15
    sget v0, Lc/a/j;->AppCompatTheme_panelBackground:I
    invoke-virtual { p1, v0, v2 }, Landroid/content/res/TypedArray;->getResourceId(II)I
    move-result v0
    iput v0, p0, Landroidx/appcompat/app/g$u;->b:I
  .line 16
    sget v0, Lc/a/j;->AppCompatTheme_android_windowAnimationStyle:I
    invoke-virtual { p1, v0, v2 }, Landroid/content/res/TypedArray;->getResourceId(II)I
    move-result v0
    iput v0, p0, Landroidx/appcompat/app/g$u;->f:I
  .line 17
    invoke-virtual { p1 }, Landroid/content/res/TypedArray;->recycle()V
    return-void
.end method
