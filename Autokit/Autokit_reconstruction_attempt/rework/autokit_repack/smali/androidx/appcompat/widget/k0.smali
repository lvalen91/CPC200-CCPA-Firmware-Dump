.class public final Landroidx/appcompat/widget/k0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/k0$d;,
        Landroidx/appcompat/widget/k0$a;,
        Landroidx/appcompat/widget/k0$b;,
        Landroidx/appcompat/widget/k0$g;,
        Landroidx/appcompat/widget/k0$c;,
        Landroidx/appcompat/widget/k0$e;,
        Landroidx/appcompat/widget/k0$f;
    }
.end annotation


# static fields
.field private static final h:Landroid/graphics/PorterDuff$Mode;

.field private static i:Landroidx/appcompat/widget/k0;

.field private static final j:Landroidx/appcompat/widget/k0$c;


# instance fields
.field private a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Lc/d/h<",
            "Landroid/content/res/ColorStateList;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Lc/d/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/g<",
            "Ljava/lang/String;",
            "Landroidx/appcompat/widget/k0$e;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lc/d/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/h<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Lc/d/d<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private e:Landroid/util/TypedValue;

.field private f:Z

.field private g:Landroidx/appcompat/widget/k0$f;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroidx/appcompat/widget/k0;->h:Landroid/graphics/PorterDuff$Mode;

    .line 2
    new-instance v0, Landroidx/appcompat/widget/k0$c;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/k0$c;-><init>(I)V

    sput-object v0, Landroidx/appcompat/widget/k0;->j:Landroidx/appcompat/widget/k0$c;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v0, p0, Landroidx/appcompat/widget/k0;->d:Ljava/util/WeakHashMap;

    return-void
.end method

.method private a(Ljava/lang/String;Landroidx/appcompat/widget/k0$e;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->b:Lc/d/g;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Lc/d/g;

    invoke-direct {v0}, Lc/d/g;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/k0;->b:Lc/d/g;

    .line 3
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->b:Lc/d/g;

    invoke-virtual {v0, p1, p2}, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private declared-synchronized b(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z
    .registers 7

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p4

    if-eqz p4, :cond_26

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/d;

    if-nez v0, :cond_1b

    .line 3
    new-instance v0, Lc/d/d;

    invoke-direct {v0}, Lc/d/d;-><init>()V

    .line 4
    iget-object v1, p0, Landroidx/appcompat/widget/k0;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_1b
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p2, p3, p1}, Lc/d/d;->i(JLjava/lang/Object;)V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_29

    const/4 p1, 0x1

    .line 6
    monitor-exit p0

    return p1

    :cond_26
    const/4 p1, 0x0

    .line 7
    monitor-exit p0

    return p1

    :catchall_29
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private c(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->a:Ljava/util/WeakHashMap;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/k0;->a:Ljava/util/WeakHashMap;

    .line 3
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/h;

    if-nez v0, :cond_1f

    .line 4
    new-instance v0, Lc/d/h;

    invoke-direct {v0}, Lc/d/h;-><init>()V

    .line 5
    iget-object v1, p0, Landroidx/appcompat/widget/k0;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_1f
    invoke-virtual {v0, p2, p3}, Lc/d/h;->a(ILjava/lang/Object;)V

    return-void
.end method

.method private d(Landroid/content/Context;)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/k0;->f:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/appcompat/widget/k0;->f:Z

    .line 3
    sget v0, Lc/a/m/a;->abc_vector_test:I

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/k0;->j(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 4
    invoke-static {p1}, Landroidx/appcompat/widget/k0;->q(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_17

    return-void

    :cond_17
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Landroidx/appcompat/widget/k0;->f:Z

    .line 6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static e(Landroid/util/TypedValue;)J
    .registers 5

    .line 1
    iget v0, p0, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget p0, p0, Landroid/util/TypedValue;->data:I

    int-to-long v2, p0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->e:Landroid/util/TypedValue;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/k0;->e:Landroid/util/TypedValue;

    .line 3
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->e:Landroid/util/TypedValue;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 5
    invoke-static {v0}, Landroidx/appcompat/widget/k0;->e(Landroid/util/TypedValue;)J

    move-result-wide v1

    .line 6
    invoke-direct {p0, p1, v1, v2}, Landroidx/appcompat/widget/k0;->i(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_20

    return-object v3

    .line 7
    :cond_20
    iget-object v3, p0, Landroidx/appcompat/widget/k0;->g:Landroidx/appcompat/widget/k0$f;

    if-nez v3, :cond_26

    const/4 p2, 0x0

    goto :goto_2a

    .line 8
    :cond_26
    invoke-interface {v3, p0, p1, p2}, Landroidx/appcompat/widget/k0$f;->a(Landroidx/appcompat/widget/k0;Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :goto_2a
    if-eqz p2, :cond_34

    .line 9
    iget v0, v0, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 10
    invoke-direct {p0, p1, v1, v2, p2}, Landroidx/appcompat/widget/k0;->b(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z

    :cond_34
    return-object p2
.end method

.method private static g(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;[I)Landroid/graphics/PorterDuffColorFilter;
    .registers 4

    if-eqz p0, :cond_f

    if-nez p1, :cond_5

    goto :goto_f

    :cond_5
    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p2, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    .line 2
    invoke-static {p0, p1}, Landroidx/appcompat/widget/k0;->l(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p0

    return-object p0

    :cond_f
    :goto_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static declared-synchronized h()Landroidx/appcompat/widget/k0;
    .registers 2

    const-class v0, Landroidx/appcompat/widget/k0;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Landroidx/appcompat/widget/k0;->i:Landroidx/appcompat/widget/k0;

    if-nez v1, :cond_11

    .line 2
    new-instance v1, Landroidx/appcompat/widget/k0;

    invoke-direct {v1}, Landroidx/appcompat/widget/k0;-><init>()V

    sput-object v1, Landroidx/appcompat/widget/k0;->i:Landroidx/appcompat/widget/k0;

    .line 3
    invoke-static {v1}, Landroidx/appcompat/widget/k0;->p(Landroidx/appcompat/widget/k0;)V

    .line 4
    :cond_11
    sget-object v1, Landroidx/appcompat/widget/k0;->i:Landroidx/appcompat/widget/k0;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    monitor-exit v0

    return-object v1

    :catchall_15
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized i(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;
    .registers 7

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/d;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_2d

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 2
    monitor-exit p0

    return-object v1

    .line 3
    :cond_e
    :try_start_e
    invoke-virtual {v0, p2, p3}, Lc/d/d;->e(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_2b

    .line 4
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v2, :cond_28

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_26
    .catchall {:try_start_e .. :try_end_26} :catchall_2d

    monitor-exit p0

    return-object p1

    .line 6
    :cond_28
    :try_start_28
    invoke-virtual {v0, p2, p3}, Lc/d/d;->j(J)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2d

    .line 7
    :cond_2b
    monitor-exit p0

    return-object v1

    :catchall_2d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static declared-synchronized l(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .registers 5

    const-class v0, Landroidx/appcompat/widget/k0;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Landroidx/appcompat/widget/k0;->j:Landroidx/appcompat/widget/k0$c;

    invoke-virtual {v1, p0, p1}, Landroidx/appcompat/widget/k0$c;->i(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    if-nez v1, :cond_15

    .line 2
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v1, p0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 3
    sget-object v2, Landroidx/appcompat/widget/k0;->j:Landroidx/appcompat/widget/k0$c;

    invoke-virtual {v2, p0, p1, v1}, Landroidx/appcompat/widget/k0$c;->j(ILandroid/graphics/PorterDuff$Mode;Landroid/graphics/PorterDuffColorFilter;)Landroid/graphics/PorterDuffColorFilter;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    .line 4
    :cond_15
    monitor-exit v0

    return-object v1

    :catchall_17
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private n(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->a:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/d/h;

    if-eqz p1, :cond_14

    .line 3
    invoke-virtual {p1, p2}, Lc/d/h;->e(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/content/res/ColorStateList;

    :cond_14
    return-object v1
.end method

.method private static p(Landroidx/appcompat/widget/k0;)V
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_2e

    .line 2
    new-instance v0, Landroidx/appcompat/widget/k0$g;

    invoke-direct {v0}, Landroidx/appcompat/widget/k0$g;-><init>()V

    const-string v1, "vector"

    invoke-direct {p0, v1, v0}, Landroidx/appcompat/widget/k0;->a(Ljava/lang/String;Landroidx/appcompat/widget/k0$e;)V

    .line 3
    new-instance v0, Landroidx/appcompat/widget/k0$b;

    invoke-direct {v0}, Landroidx/appcompat/widget/k0$b;-><init>()V

    const-string v1, "animated-vector"

    invoke-direct {p0, v1, v0}, Landroidx/appcompat/widget/k0;->a(Ljava/lang/String;Landroidx/appcompat/widget/k0$e;)V

    .line 4
    new-instance v0, Landroidx/appcompat/widget/k0$a;

    invoke-direct {v0}, Landroidx/appcompat/widget/k0$a;-><init>()V

    const-string v1, "animated-selector"

    invoke-direct {p0, v1, v0}, Landroidx/appcompat/widget/k0;->a(Ljava/lang/String;Landroidx/appcompat/widget/k0$e;)V

    .line 5
    new-instance v0, Landroidx/appcompat/widget/k0$d;

    invoke-direct {v0}, Landroidx/appcompat/widget/k0$d;-><init>()V

    const-string v1, "drawable"

    invoke-direct {p0, v1, v0}, Landroidx/appcompat/widget/k0;->a(Ljava/lang/String;Landroidx/appcompat/widget/k0$e;)V

    :cond_2e
    return-void
.end method

.method private static q(Landroid/graphics/drawable/Drawable;)Z
    .registers 2

    .line 1
    instance-of v0, p0, Lc/q/a/a/h;

    if-nez v0, :cond_17

    const-string v0, "android.graphics.drawable.VectorDrawable"

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, 0x1

    :goto_18
    return p0
.end method

.method private r(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 13

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->b:Lc/d/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_ab

    invoke-virtual {v0}, Lc/d/g;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_ab

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->c:Lc/d/h;

    const-string v2, "appcompat_skip_skip"

    if-eqz v0, :cond_28

    .line 3
    invoke-virtual {v0, p2}, Lc/d/h;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    if-eqz v0, :cond_2f

    iget-object v3, p0, Landroidx/appcompat/widget/k0;->b:Lc/d/g;

    .line 5
    invoke-virtual {v3, v0}, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2f

    :cond_27
    return-object v1

    .line 6
    :cond_28
    new-instance v0, Lc/d/h;

    invoke-direct {v0}, Lc/d/h;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/k0;->c:Lc/d/h;

    .line 7
    :cond_2f
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->e:Landroid/util/TypedValue;

    if-nez v0, :cond_3a

    .line 8
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/k0;->e:Landroid/util/TypedValue;

    .line 9
    :cond_3a
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->e:Landroid/util/TypedValue;

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v3, 0x1

    .line 11
    invoke-virtual {v1, p2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 12
    invoke-static {v0}, Landroidx/appcompat/widget/k0;->e(Landroid/util/TypedValue;)J

    move-result-wide v4

    .line 13
    invoke-direct {p0, p1, v4, v5}, Landroidx/appcompat/widget/k0;->i(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_4f

    return-object v6

    .line 14
    :cond_4f
    iget-object v7, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v7, :cond_a3

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".xml"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a3

    .line 15
    :try_start_5f
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 16
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v7

    .line 17
    :goto_67
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_71

    if-eq v8, v3, :cond_71

    goto :goto_67

    :cond_71
    if-ne v8, v9, :cond_9a

    .line 18
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 19
    iget-object v8, p0, Landroidx/appcompat/widget/k0;->c:Lc/d/h;

    invoke-virtual {v8, p2, v3}, Lc/d/h;->a(ILjava/lang/Object;)V

    .line 20
    iget-object v8, p0, Landroidx/appcompat/widget/k0;->b:Lc/d/g;

    invoke-virtual {v8, v3}, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/k0$e;

    if-eqz v3, :cond_8f

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    .line 22
    invoke-interface {v3, p1, v1, v7, v8}, Landroidx/appcompat/widget/k0$e;->a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v6, v1

    :cond_8f
    if-eqz v6, :cond_a3

    .line 23
    iget v0, v0, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 24
    invoke-direct {p0, p1, v4, v5, v6}, Landroidx/appcompat/widget/k0;->b(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z

    goto :goto_a3

    .line 25
    :cond_9a
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v0, "No start tag found"

    invoke-direct {p1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_a2} :catch_a2

    :catch_a2
    nop

    :cond_a3
    :goto_a3
    if-nez v6, :cond_aa

    .line 26
    iget-object p1, p0, Landroidx/appcompat/widget/k0;->c:Lc/d/h;

    invoke-virtual {p1, p2, v2}, Lc/d/h;->a(ILjava/lang/Object;)V

    :cond_aa
    return-object v6

    :cond_ab
    return-object v1
.end method

.method private v(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 6

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/k0;->m(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 2
    invoke-static {p4}, Landroidx/appcompat/widget/c0;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 3
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 4
    :cond_10
    invoke-static {p4}, Landroidx/core/graphics/drawable/a;->r(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 5
    invoke-static {p4, v0}, Landroidx/core/graphics/drawable/a;->o(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 6
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/k0;->o(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    if-eqz p1, :cond_35

    .line 7
    invoke-static {p4, p1}, Landroidx/core/graphics/drawable/a;->p(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_35

    .line 8
    :cond_21
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->g:Landroidx/appcompat/widget/k0$f;

    if-eqz v0, :cond_2c

    invoke-interface {v0, p1, p2, p4}, Landroidx/appcompat/widget/k0$f;->d(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_2c

    goto :goto_35

    .line 9
    :cond_2c
    invoke-virtual {p0, p1, p2, p4}, Landroidx/appcompat/widget/k0;->x(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-nez p1, :cond_35

    if-eqz p3, :cond_35

    const/4 p4, 0x0

    :cond_35
    :goto_35
    return-object p4
.end method

.method static w(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/s0;[I)V
    .registers 5

    .line 1
    invoke-static {p0}, Landroidx/appcompat/widget/c0;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p0, :cond_d

    return-void

    .line 3
    :cond_d
    iget-boolean v0, p1, Landroidx/appcompat/widget/s0;->d:Z

    if-nez v0, :cond_1a

    iget-boolean v0, p1, Landroidx/appcompat/widget/s0;->c:Z

    if-eqz v0, :cond_16

    goto :goto_1a

    .line 4
    :cond_16
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_32

    .line 5
    :cond_1a
    :goto_1a
    iget-boolean v0, p1, Landroidx/appcompat/widget/s0;->d:Z

    if-eqz v0, :cond_21

    iget-object v0, p1, Landroidx/appcompat/widget/s0;->a:Landroid/content/res/ColorStateList;

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    .line 6
    :goto_22
    iget-boolean v1, p1, Landroidx/appcompat/widget/s0;->c:Z

    if-eqz v1, :cond_29

    iget-object p1, p1, Landroidx/appcompat/widget/s0;->b:Landroid/graphics/PorterDuff$Mode;

    goto :goto_2b

    :cond_29
    sget-object p1, Landroidx/appcompat/widget/k0;->h:Landroid/graphics/PorterDuff$Mode;

    .line 7
    :goto_2b
    invoke-static {v0, p1, p2}, Landroidx/appcompat/widget/k0;->g(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;[I)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 8
    :goto_32
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-gt p1, p2, :cond_3b

    .line 9
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_3b
    return-void
.end method


# virtual methods
.method public declared-synchronized j(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_2
    invoke-virtual {p0, p1, p2, v0}, Landroidx/appcompat/widget/k0;->k(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object p1

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized k(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .registers 5

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/k0;->d(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/k0;->r(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_e

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/k0;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_e
    if-nez v0, :cond_14

    .line 4
    invoke-static {p1, p2}, Landroidx/core/content/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_14
    if-eqz v0, :cond_1a

    .line 5
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/appcompat/widget/k0;->v(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1a
    if-eqz v0, :cond_1f

    .line 6
    invoke-static {v0}, Landroidx/appcompat/widget/c0;->b(Landroid/graphics/drawable/Drawable;)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    .line 7
    :cond_1f
    monitor-exit p0

    return-object v0

    :catchall_21
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized m(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/k0;->n(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-nez v0, :cond_18

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->g:Landroidx/appcompat/widget/k0$f;

    if-nez v0, :cond_d

    const/4 v0, 0x0

    goto :goto_13

    :cond_d
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->g:Landroidx/appcompat/widget/k0$f;

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/widget/k0$f;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_13
    if-eqz v0, :cond_18

    .line 3
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/k0;->c(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 4
    :cond_18
    monitor-exit p0

    return-object v0

    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method o(I)Landroid/graphics/PorterDuff$Mode;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->g:Landroidx/appcompat/widget/k0$f;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    goto :goto_a

    :cond_6
    invoke-interface {v0, p1}, Landroidx/appcompat/widget/k0$f;->e(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    :goto_a
    return-object p1
.end method

.method public declared-synchronized s(Landroid/content/Context;)V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/d/d;

    if-eqz p1, :cond_e

    .line 2
    invoke-virtual {p1}, Lc/d/d;->b()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 3
    :cond_e
    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized t(Landroid/content/Context;Landroidx/appcompat/widget/z0;I)Landroid/graphics/drawable/Drawable;
    .registers 5

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-direct {p0, p1, p3}, Landroidx/appcompat/widget/k0;->r(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_b

    .line 2
    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/z0;->d(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_b
    if-eqz v0, :cond_14

    const/4 p2, 0x0

    .line 3
    invoke-direct {p0, p1, p3, p2, v0}, Landroidx/appcompat/widget/k0;->v(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_17

    monitor-exit p0

    return-object p1

    :cond_14
    const/4 p1, 0x0

    .line 4
    monitor-exit p0

    return-object p1

    :catchall_17
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized u(Landroidx/appcompat/widget/k0$f;)V
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iput-object p1, p0, Landroidx/appcompat/widget/k0;->g:Landroidx/appcompat/widget/k0$f;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 2
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method x(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->g:Landroidx/appcompat/widget/k0$f;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1, p2, p3}, Landroidx/appcompat/widget/k0$f;->b(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method
