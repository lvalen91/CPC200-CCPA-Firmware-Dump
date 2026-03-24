.class Lcn/manstep/phonemirrorBox/BoxInterface/f$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/BoxInterface/f;->u1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/BoxInterface/f;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/BoxInterface/f;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$d;->b:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 1
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lcn/manstep/phonemirrorBox/h0/b;

    invoke-direct {v1}, Lcn/manstep/phonemirrorBox/h0/b;-><init>()V

    const-string v2, "send_g_open"

    invoke-virtual {v1, v2}, Lcn/manstep/phonemirrorBox/h0/b;->f(Ljava/lang/String;)Lcn/manstep/phonemirrorBox/h0/b;

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/h0/b;->b()Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 2
    new-instance v1, Lcn/manstep/phonemirrorBox/BoxInterface/f$d$a;

    invoke-direct {v1, p0, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$d$a;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/f$d;Ljava/util/concurrent/ScheduledExecutorService;)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
