.class public Lcn/manstep/phonemirrorBox/e0/b;
.super Landroid/os/Handler;
.source "SourceFile"


# static fields
.field private static volatile b:Lcn/manstep/phonemirrorBox/e0/b;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcn/manstep/phonemirrorBox/MainActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/os/Looper;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public static a()Lcn/manstep/phonemirrorBox/e0/b;
    .registers 4

    .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/e0/b;->b:Lcn/manstep/phonemirrorBox/e0/b;

    if-nez v0, :cond_1b

    .line 2
    const-class v0, Lcn/manstep/phonemirrorBox/e0/b;

    monitor-enter v0

    .line 3
    :try_start_7
    sget-object v1, Lcn/manstep/phonemirrorBox/e0/b;->b:Lcn/manstep/phonemirrorBox/e0/b;

    if-nez v1, :cond_16

    .line 4
    new-instance v1, Lcn/manstep/phonemirrorBox/e0/b;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/manstep/phonemirrorBox/e0/b;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcn/manstep/phonemirrorBox/e0/b;->b:Lcn/manstep/phonemirrorBox/e0/b;

    .line 5
    :cond_16
    monitor-exit v0

    goto :goto_1b

    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw v1

    .line 6
    :cond_1b
    :goto_1b
    sget-object v0, Lcn/manstep/phonemirrorBox/e0/b;->b:Lcn/manstep/phonemirrorBox/e0/b;

    return-object v0
.end method


# virtual methods
.method public b()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0, v0}, Lcn/manstep/phonemirrorBox/e0/b;->d(Lcn/manstep/phonemirrorBox/MainActivity;)V

    return-void
.end method

.method public c(II)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2
    iput p1, v0, Landroid/os/Message;->what:I

    .line 3
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public d(Lcn/manstep/phonemirrorBox/MainActivity;)V
    .registers 3

    if-eqz p1, :cond_a

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/e0/b;->a:Ljava/lang/ref/WeakReference;

    goto :goto_d

    :cond_a
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/e0/b;->a:Ljava/lang/ref/WeakReference;

    :goto_d
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/e0/b;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/manstep/phonemirrorBox/MainActivity;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-eqz v0, :cond_19

    .line 2
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_14

    goto :goto_19

    .line 3
    :cond_14
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    :cond_19
    :goto_19
    return-void
.end method
