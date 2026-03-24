.class public abstract Landroidx/appcompat/app/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:I = -0x64

.field private static final c:Lc/d/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/b<",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/appcompat/app/f;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lc/d/b;

    invoke-direct {v0}, Lc/d/b;-><init>()V

    sput-object v0, Landroidx/appcompat/app/f;->c:Lc/d/b;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/appcompat/app/f;->d:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static A(Landroidx/appcompat/app/f;)V
    .registers 2

    .line 1
    sget-object v0, Landroidx/appcompat/app/f;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    invoke-static {p0}, Landroidx/appcompat/app/f;->B(Landroidx/appcompat/app/f;)V

    .line 3
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method private static B(Landroidx/appcompat/app/f;)V
    .registers 4

    .line 1
    sget-object v0, Landroidx/appcompat/app/f;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    sget-object v1, Landroidx/appcompat/app/f;->c:Lc/d/b;

    invoke-virtual {v1}, Lc/d/b;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3
    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/app/f;

    if-eq v2, p0, :cond_1f

    if-nez v2, :cond_9

    .line 5
    :cond_1f
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_9

    .line 6
    :cond_23
    monitor-exit v0

    return-void

    :catchall_25
    move-exception p0

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    goto :goto_29

    :goto_28
    throw p0

    :goto_29
    goto :goto_28
.end method

.method public static D(Z)V
    .registers 1

    .line 1
    invoke-static {p0}, Landroidx/appcompat/widget/z0;->b(Z)V

    return-void
.end method

.method public static H(I)V
    .registers 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_f

    if-eqz p0, :cond_f

    const/4 v0, 0x1

    if-eq p0, v0, :cond_f

    const/4 v0, 0x2

    if-eq p0, v0, :cond_f

    const/4 v0, 0x3

    if-eq p0, v0, :cond_f

    goto :goto_18

    .line 1
    :cond_f
    sget v0, Landroidx/appcompat/app/f;->b:I

    if-eq v0, p0, :cond_18

    .line 2
    sput p0, Landroidx/appcompat/app/f;->b:I

    .line 3
    invoke-static {}, Landroidx/appcompat/app/f;->f()V

    :cond_18
    :goto_18
    return-void
.end method

.method static c(Landroidx/appcompat/app/f;)V
    .registers 4

    .line 1
    sget-object v0, Landroidx/appcompat/app/f;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    invoke-static {p0}, Landroidx/appcompat/app/f;->B(Landroidx/appcompat/app/f;)V

    .line 3
    sget-object v1, Landroidx/appcompat/app/f;->c:Lc/d/b;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lc/d/b;->add(Ljava/lang/Object;)Z

    .line 4
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method private static f()V
    .registers 3

    .line 1
    sget-object v0, Landroidx/appcompat/app/f;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    sget-object v1, Landroidx/appcompat/app/f;->c:Lc/d/b;

    invoke-virtual {v1}, Lc/d/b;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/app/f;

    if-eqz v2, :cond_9

    .line 4
    invoke-virtual {v2}, Landroidx/appcompat/app/f;->e()Z

    goto :goto_9

    .line 5
    :cond_21
    monitor-exit v0

    return-void

    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    goto :goto_27

    :goto_26
    throw v1

    :goto_27
    goto :goto_26
.end method

.method public static i(Landroid/app/Activity;Landroidx/appcompat/app/e;)Landroidx/appcompat/app/f;
    .registers 3

    .line 1
    new-instance v0, Landroidx/appcompat/app/g;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/app/g;-><init>(Landroid/app/Activity;Landroidx/appcompat/app/e;)V

    return-object v0
.end method

.method public static j(Landroid/app/Dialog;Landroidx/appcompat/app/e;)Landroidx/appcompat/app/f;
    .registers 3

    .line 1
    new-instance v0, Landroidx/appcompat/app/g;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/app/g;-><init>(Landroid/app/Dialog;Landroidx/appcompat/app/e;)V

    return-object v0
.end method

.method public static l()I
    .registers 1

    .line 1
    sget v0, Landroidx/appcompat/app/f;->b:I

    return v0
.end method


# virtual methods
.method public abstract C(I)Z
.end method

.method public abstract E(I)V
.end method

.method public abstract F(Landroid/view/View;)V
.end method

.method public abstract G(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract I(Landroidx/appcompat/widget/Toolbar;)V
.end method

.method public J(I)V
    .registers 2

    return-void
.end method

.method public abstract K(Ljava/lang/CharSequence;)V
.end method

.method public abstract L(Lc/a/o/b$a;)Lc/a/o/b;
.end method

.method public abstract d(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract e()Z
.end method

.method public g(Landroid/content/Context;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public h(Landroid/content/Context;)Landroid/content/Context;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/f;->g(Landroid/content/Context;)V

    return-object p1
.end method

.method public abstract k(I)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation
.end method

.method public abstract m()Landroidx/appcompat/app/b;
.end method

.method public n()I
    .registers 2

    const/16 v0, -0x64

    return v0
.end method

.method public abstract o()Landroid/view/MenuInflater;
.end method

.method public abstract p()Landroidx/appcompat/app/a;
.end method

.method public abstract q()V
.end method

.method public abstract r()V
.end method

.method public abstract s(Landroid/content/res/Configuration;)V
.end method

.method public abstract t(Landroid/os/Bundle;)V
.end method

.method public abstract u()V
.end method

.method public abstract v(Landroid/os/Bundle;)V
.end method

.method public abstract w()V
.end method

.method public abstract x(Landroid/os/Bundle;)V
.end method

.method public abstract y()V
.end method

.method public abstract z()V
.end method
