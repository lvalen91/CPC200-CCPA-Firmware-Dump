.class public Landroidx/appcompat/widget/r0;
.super Landroid/content/ContextWrapper;
.source "SourceFile"

.field private final static c:Ljava/lang/Object;

.field private static d:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Ljava/lang/ref/WeakReference<",
      "Landroidx/appcompat/widget/r0;",
      ">;>;"
    }
  .end annotation
.end field

.field private final a:Landroid/content/res/Resources;

.field private final b:Landroid/content/res/Resources$Theme;

.method static constructor <clinit>()V
  .registers 1
  .line 1
    new-instance v0, Ljava/lang/Object;
    invoke-direct { v0 }, Ljava/lang/Object;-><init>()V
    sput-object v0, Landroidx/appcompat/widget/r0;->c:Ljava/lang/Object;
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
  .registers 4
  .line 1
    invoke-direct { p0, p1 }, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V
  .line 2
    invoke-static { }, Landroidx/appcompat/widget/z0;->c()Z
    move-result v0
    if-eqz v0, :L0
  .line 3
    new-instance v0, Landroidx/appcompat/widget/z0;
    invoke-virtual { p1 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v1
    invoke-direct { v0, p0, v1 }, Landroidx/appcompat/widget/z0;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    iput-object v0, p0, Landroidx/appcompat/widget/r0;->a:Landroid/content/res/Resources;
  .line 4
    invoke-virtual { v0 }, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;
    move-result-object v0
    iput-object v0, p0, Landroidx/appcompat/widget/r0;->b:Landroid/content/res/Resources$Theme;
  .line 5
    invoke-virtual { p1 }, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;
    move-result-object p1
    invoke-virtual { v0, p1 }, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V
    goto :L1
  :L0
  .line 6
    new-instance v0, Landroidx/appcompat/widget/t0;
    invoke-virtual { p1 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object p1
    invoke-direct { v0, p0, p1 }, Landroidx/appcompat/widget/t0;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    iput-object v0, p0, Landroidx/appcompat/widget/r0;->a:Landroid/content/res/Resources;
    const/4 p1, 0
  .line 7
    iput-object p1, p0, Landroidx/appcompat/widget/r0;->b:Landroid/content/res/Resources$Theme;
  :L1
    return-void
.end method

.method private static a(Landroid/content/Context;)Z
  .registers 3
  .line 1
    instance-of v0, p0, Landroidx/appcompat/widget/r0;
    const/4 v1, 0
    if-nez v0, :L2
  .line 2
    invoke-virtual { p0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    instance-of v0, v0, Landroidx/appcompat/widget/t0;
    if-nez v0, :L2
  .line 3
    invoke-virtual { p0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object p0
    instance-of p0, p0, Landroidx/appcompat/widget/z0;
    if-eqz p0, :L0
    goto :L2
  :L0
  .line 4
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v0, 21
    if-lt p0, v0, :L1
    invoke-static { }, Landroidx/appcompat/widget/z0;->c()Z
    move-result p0
    if-eqz p0, :L2
  :L1
    const/4 v1, 1
  :L2
    return v1
.end method

.method public static b(Landroid/content/Context;)Landroid/content/Context;
  .catchall { :L0 .. :L12 } :L11
  .registers 5
  .line 1
    invoke-static { p0 }, Landroidx/appcompat/widget/r0;->a(Landroid/content/Context;)Z
    move-result v0
    if-eqz v0, :L13
  .line 2
    sget-object v0, Landroidx/appcompat/widget/r0;->c:Ljava/lang/Object;
    monitor-enter v0
  :L0
  .line 3
    sget-object v1, Landroidx/appcompat/widget/r0;->d:Ljava/util/ArrayList;
    if-nez v1, :L1
  .line 4
    new-instance v1, Ljava/util/ArrayList;
    invoke-direct { v1 }, Ljava/util/ArrayList;-><init>()V
    sput-object v1, Landroidx/appcompat/widget/r0;->d:Ljava/util/ArrayList;
    goto :L10
  :L1
  .line 5
    sget-object v1, Landroidx/appcompat/widget/r0;->d:Ljava/util/ArrayList;
    invoke-virtual { v1 }, Ljava/util/ArrayList;->size()I
    move-result v1
    add-int/lit8 v1, v1, -1
  :L2
    if-ltz v1, :L5
  .line 6
    sget-object v2, Landroidx/appcompat/widget/r0;->d:Ljava/util/ArrayList;
    invoke-virtual { v2, v1 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/ref/WeakReference;
    if-eqz v2, :L3
  .line 7
    invoke-virtual { v2 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v2
    if-nez v2, :L4
  :L3
  .line 8
    sget-object v2, Landroidx/appcompat/widget/r0;->d:Ljava/util/ArrayList;
    invoke-virtual { v2, v1 }, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
  :L4
    add-int/lit8 v1, v1, -1
    goto :L2
  :L5
  .line 9
    sget-object v1, Landroidx/appcompat/widget/r0;->d:Ljava/util/ArrayList;
    invoke-virtual { v1 }, Ljava/util/ArrayList;->size()I
    move-result v1
    add-int/lit8 v1, v1, -1
  :L6
    if-ltz v1, :L10
  .line 10
    sget-object v2, Landroidx/appcompat/widget/r0;->d:Ljava/util/ArrayList;
    invoke-virtual { v2, v1 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/ref/WeakReference;
    if-eqz v2, :L7
  .line 11
    invoke-virtual { v2 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroidx/appcompat/widget/r0;
    goto :L8
  :L7
    const/4 v2, 0
  :L8
    if-eqz v2, :L9
  .line 12
    invoke-virtual { v2 }, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;
    move-result-object v3
    if-ne v3, p0, :L9
  .line 13
    monitor-exit v0
    return-object v2
  :L9
    add-int/lit8 v1, v1, -1
    goto :L6
  :L10
  .line 14
    new-instance v1, Landroidx/appcompat/widget/r0;
    invoke-direct { v1, p0 }, Landroidx/appcompat/widget/r0;-><init>(Landroid/content/Context;)V
  .line 15
    sget-object p0, Landroidx/appcompat/widget/r0;->d:Ljava/util/ArrayList;
    new-instance v2, Ljava/lang/ref/WeakReference;
    invoke-direct { v2, v1 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    invoke-virtual { p0, v2 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  .line 16
    monitor-exit v0
    return-object v1
  :L11
    move-exception p0
  .line 17
    monitor-exit v0
  :L12
    throw p0
  :L13
    return-object p0
.end method

.method public getAssets()Landroid/content/res/AssetManager;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/r0;->a:Landroid/content/res/Resources;
    invoke-virtual { v0 }, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;
    move-result-object v0
    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/r0;->a:Landroid/content/res/Resources;
    return-object v0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/r0;->b:Landroid/content/res/Resources$Theme;
    if-nez v0, :L0
    invoke-super { p0 }, Landroid/content/ContextWrapper;->getTheme()Landroid/content/res/Resources$Theme;
    move-result-object v0
  :L0
    return-object v0
.end method

.method public setTheme(I)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/r0;->b:Landroid/content/res/Resources$Theme;
    if-nez v0, :L0
  .line 2
    invoke-super { p0, p1 }, Landroid/content/ContextWrapper;->setTheme(I)V
    goto :L1
  :L0
    const/4 v1, 1
  .line 3
    invoke-virtual { v0, p1, v1 }, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V
  :L1
    return-void
.end method
