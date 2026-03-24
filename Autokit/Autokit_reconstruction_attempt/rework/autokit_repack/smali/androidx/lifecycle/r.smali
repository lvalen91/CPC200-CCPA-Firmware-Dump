.class public Landroidx/lifecycle/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/j;


# static fields
.field private static final j:Landroidx/lifecycle/r;


# instance fields
.field private b:I

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Landroid/os/Handler;

.field private final g:Landroidx/lifecycle/k;

.field private h:Ljava/lang/Runnable;

.field i:Landroidx/lifecycle/s$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroidx/lifecycle/r;

    invoke-direct {v0}, Landroidx/lifecycle/r;-><init>()V

    sput-object v0, Landroidx/lifecycle/r;->j:Landroidx/lifecycle/r;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/lifecycle/r;->b:I

    .line 3
    iput v0, p0, Landroidx/lifecycle/r;->c:I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroidx/lifecycle/r;->d:Z

    .line 5
    iput-boolean v0, p0, Landroidx/lifecycle/r;->e:Z

    .line 6
    new-instance v0, Landroidx/lifecycle/k;

    invoke-direct {v0, p0}, Landroidx/lifecycle/k;-><init>(Landroidx/lifecycle/j;)V

    iput-object v0, p0, Landroidx/lifecycle/r;->g:Landroidx/lifecycle/k;

    .line 7
    new-instance v0, Landroidx/lifecycle/r$a;

    invoke-direct {v0, p0}, Landroidx/lifecycle/r$a;-><init>(Landroidx/lifecycle/r;)V

    iput-object v0, p0, Landroidx/lifecycle/r;->h:Ljava/lang/Runnable;

    .line 8
    new-instance v0, Landroidx/lifecycle/r$b;

    invoke-direct {v0, p0}, Landroidx/lifecycle/r$b;-><init>(Landroidx/lifecycle/r;)V

    iput-object v0, p0, Landroidx/lifecycle/r;->i:Landroidx/lifecycle/s$a;

    return-void
.end method

.method static h(Landroid/content/Context;)V
    .registers 2

    .line 1
    sget-object v0, Landroidx/lifecycle/r;->j:Landroidx/lifecycle/r;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/r;->e(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method a()V
    .registers 5

    .line 1
    iget v0, p0, Landroidx/lifecycle/r;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/lifecycle/r;->c:I

    if-nez v0, :cond_11

    .line 2
    iget-object v0, p0, Landroidx/lifecycle/r;->f:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/lifecycle/r;->h:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_11
    return-void
.end method

.method b()V
    .registers 3

    .line 1
    iget v0, p0, Landroidx/lifecycle/r;->c:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/lifecycle/r;->c:I

    if-ne v0, v1, :cond_1e

    .line 2
    iget-boolean v0, p0, Landroidx/lifecycle/r;->d:Z

    if-eqz v0, :cond_17

    .line 3
    iget-object v0, p0, Landroidx/lifecycle/r;->g:Landroidx/lifecycle/k;

    sget-object v1, Landroidx/lifecycle/f$b;->ON_RESUME:Landroidx/lifecycle/f$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/k;->h(Landroidx/lifecycle/f$b;)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroidx/lifecycle/r;->d:Z

    goto :goto_1e

    .line 5
    :cond_17
    iget-object v0, p0, Landroidx/lifecycle/r;->f:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/lifecycle/r;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1e
    :goto_1e
    return-void
.end method

.method c()V
    .registers 3

    .line 1
    iget v0, p0, Landroidx/lifecycle/r;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/lifecycle/r;->b:I

    if-ne v0, v1, :cond_16

    .line 2
    iget-boolean v0, p0, Landroidx/lifecycle/r;->e:Z

    if-eqz v0, :cond_16

    .line 3
    iget-object v0, p0, Landroidx/lifecycle/r;->g:Landroidx/lifecycle/k;

    sget-object v1, Landroidx/lifecycle/f$b;->ON_START:Landroidx/lifecycle/f$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/k;->h(Landroidx/lifecycle/f$b;)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroidx/lifecycle/r;->e:Z

    :cond_16
    return-void
.end method

.method d()V
    .registers 2

    .line 1
    iget v0, p0, Landroidx/lifecycle/r;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/lifecycle/r;->b:I

    .line 2
    invoke-virtual {p0}, Landroidx/lifecycle/r;->g()V

    return-void
.end method

.method e(Landroid/content/Context;)V
    .registers 4

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/r;->f:Landroid/os/Handler;

    .line 2
    iget-object v0, p0, Landroidx/lifecycle/r;->g:Landroidx/lifecycle/k;

    sget-object v1, Landroidx/lifecycle/f$b;->ON_CREATE:Landroidx/lifecycle/f$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/k;->h(Landroidx/lifecycle/f$b;)V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    .line 4
    new-instance v0, Landroidx/lifecycle/r$c;

    invoke-direct {v0, p0}, Landroidx/lifecycle/r$c;-><init>(Landroidx/lifecycle/r;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method f()V
    .registers 3

    .line 1
    iget v0, p0, Landroidx/lifecycle/r;->c:I

    if-nez v0, :cond_e

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/lifecycle/r;->d:Z

    .line 3
    iget-object v0, p0, Landroidx/lifecycle/r;->g:Landroidx/lifecycle/k;

    sget-object v1, Landroidx/lifecycle/f$b;->ON_PAUSE:Landroidx/lifecycle/f$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/k;->h(Landroidx/lifecycle/f$b;)V

    :cond_e
    return-void
.end method

.method g()V
    .registers 3

    .line 1
    iget v0, p0, Landroidx/lifecycle/r;->b:I

    if-nez v0, :cond_12

    iget-boolean v0, p0, Landroidx/lifecycle/r;->d:Z

    if-eqz v0, :cond_12

    .line 2
    iget-object v0, p0, Landroidx/lifecycle/r;->g:Landroidx/lifecycle/k;

    sget-object v1, Landroidx/lifecycle/f$b;->ON_STOP:Landroidx/lifecycle/f$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/k;->h(Landroidx/lifecycle/f$b;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroidx/lifecycle/r;->e:Z

    :cond_12
    return-void
.end method

.method public getLifecycle()Landroidx/lifecycle/f;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/r;->g:Landroidx/lifecycle/k;

    return-object v0
.end method
