.class public final Landroidx/appcompat/widget/i;
.super Ljava/lang/Object;
.source "SourceFile"

.field private final static b:Landroid/graphics/PorterDuff$Mode;

.field private static c:Landroidx/appcompat/widget/i;

.field private a:Landroidx/appcompat/widget/k0;

.method static constructor <clinit>()V
  .registers 1
  .line 1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;
    sput-object v0, Landroidx/appcompat/widget/i;->b:Landroid/graphics/PorterDuff$Mode;
    return-void
.end method

.method public constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method static synthetic a()Landroid/graphics/PorterDuff$Mode;
  .registers 1
  .line 1
    sget-object v0, Landroidx/appcompat/widget/i;->b:Landroid/graphics/PorterDuff$Mode;
    return-object v0
.end method

.method public static declared-synchronized b()Landroidx/appcompat/widget/i;
  .catchall { :L0 .. :L2 } :L3
  .registers 2
    const-class v0, Landroidx/appcompat/widget/i;
    monitor-enter v0
  :L0
  .line 1
    sget-object v1, Landroidx/appcompat/widget/i;->c:Landroidx/appcompat/widget/i;
    if-nez v1, :L1
  .line 2
    invoke-static { }, Landroidx/appcompat/widget/i;->h()V
  :L1
  .line 3
    sget-object v1, Landroidx/appcompat/widget/i;->c:Landroidx/appcompat/widget/i;
  :L2
    monitor-exit v0
    return-object v1
  :L3
    move-exception v1
    monitor-exit v0
    throw v1
.end method

.method public static declared-synchronized e(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
  .catchall { :L0 .. :L1 } :L2
  .registers 3
    const-class v0, Landroidx/appcompat/widget/i;
    monitor-enter v0
  :L0
  .line 1
    invoke-static { p0, p1 }, Landroidx/appcompat/widget/k0;->l(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    move-result-object p0
  :L1
    monitor-exit v0
    return-object p0
  :L2
    move-exception p0
    monitor-exit v0
    throw p0
.end method

.method public static declared-synchronized h()V
  .catchall { :L0 .. :L1 } :L2
  .registers 3
    const-class v0, Landroidx/appcompat/widget/i;
    monitor-enter v0
  :L0
  .line 1
    sget-object v1, Landroidx/appcompat/widget/i;->c:Landroidx/appcompat/widget/i;
    if-nez v1, :L1
  .line 2
    new-instance v1, Landroidx/appcompat/widget/i;
    invoke-direct { v1 }, Landroidx/appcompat/widget/i;-><init>()V
    sput-object v1, Landroidx/appcompat/widget/i;->c:Landroidx/appcompat/widget/i;
  .line 3
    invoke-static { }, Landroidx/appcompat/widget/k0;->h()Landroidx/appcompat/widget/k0;
    move-result-object v2
    iput-object v2, v1, Landroidx/appcompat/widget/i;->a:Landroidx/appcompat/widget/k0;
  .line 4
    sget-object v1, Landroidx/appcompat/widget/i;->c:Landroidx/appcompat/widget/i;
    iget-object v1, v1, Landroidx/appcompat/widget/i;->a:Landroidx/appcompat/widget/k0;
    new-instance v2, Landroidx/appcompat/widget/i$a;
    invoke-direct { v2 }, Landroidx/appcompat/widget/i$a;-><init>()V
    invoke-virtual { v1, v2 }, Landroidx/appcompat/widget/k0;->u(Landroidx/appcompat/widget/k0$f;)V
  :L1
  .line 5
    monitor-exit v0
    return-void
  :L2
    move-exception v1
    monitor-exit v0
    throw v1
.end method

.method static i(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/s0;[I)V
  .registers 3
  .line 1
    invoke-static { p0, p1, p2 }, Landroidx/appcompat/widget/k0;->w(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/s0;[I)V
    return-void
.end method

.method public declared-synchronized c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
  .catchall { :L0 .. :L1 } :L2
  .registers 4
    monitor-enter p0
  :L0
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/i;->a:Landroidx/appcompat/widget/k0;
    invoke-virtual { v0, p1, p2 }, Landroidx/appcompat/widget/k0;->j(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    move-result-object p1
  :L1
    monitor-exit p0
    return-object p1
  :L2
    move-exception p1
    monitor-exit p0
    throw p1
.end method

.method declared-synchronized d(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
  .catchall { :L0 .. :L1 } :L2
  .registers 5
    monitor-enter p0
  :L0
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/i;->a:Landroidx/appcompat/widget/k0;
    invoke-virtual { v0, p1, p2, p3 }, Landroidx/appcompat/widget/k0;->k(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    move-result-object p1
  :L1
    monitor-exit p0
    return-object p1
  :L2
    move-exception p1
    monitor-exit p0
    throw p1
.end method

.method declared-synchronized f(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
  .catchall { :L0 .. :L1 } :L2
  .registers 4
    monitor-enter p0
  :L0
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/i;->a:Landroidx/appcompat/widget/k0;
    invoke-virtual { v0, p1, p2 }, Landroidx/appcompat/widget/k0;->m(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    move-result-object p1
  :L1
    monitor-exit p0
    return-object p1
  :L2
    move-exception p1
    monitor-exit p0
    throw p1
.end method

.method public declared-synchronized g(Landroid/content/Context;)V
  .catchall { :L0 .. :L1 } :L2
  .registers 3
    monitor-enter p0
  :L0
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/i;->a:Landroidx/appcompat/widget/k0;
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/k0;->s(Landroid/content/Context;)V
  :L1
  .line 2
    monitor-exit p0
    return-void
  :L2
    move-exception p1
    monitor-exit p0
    throw p1
.end method
