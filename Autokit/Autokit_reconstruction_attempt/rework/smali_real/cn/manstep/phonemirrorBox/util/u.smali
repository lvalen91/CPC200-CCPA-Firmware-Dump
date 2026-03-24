.class public Lcn/manstep/phonemirrorBox/util/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/os/Handler;

.field private b:J

.field private c:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcn/manstep/phonemirrorBox/util/u;->c:J

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/util/u;->a:Landroid/os/Handler;

    const-wide/16 v0, 0x1388

    .line 4
    iput-wide v0, p0, Lcn/manstep/phonemirrorBox/util/u;->b:J

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .registers 9

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lcn/manstep/phonemirrorBox/util/u;->c:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_20

    .line 3
    iget-wide v4, p0, Lcn/manstep/phonemirrorBox/util/u;->b:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_20

    .line 4
    iput-wide v0, p0, Lcn/manstep/phonemirrorBox/util/u;->c:J

    .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/u;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/u;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_20
    return-void
.end method

.method public b(Ljava/lang/Runnable;J)V
    .registers 4

    .line 1
    iput-wide p2, p0, Lcn/manstep/phonemirrorBox/util/u;->b:J

    .line 2
    invoke-virtual {p0, p1}, Lcn/manstep/phonemirrorBox/util/u;->a(Ljava/lang/Runnable;)V

    return-void
.end method
