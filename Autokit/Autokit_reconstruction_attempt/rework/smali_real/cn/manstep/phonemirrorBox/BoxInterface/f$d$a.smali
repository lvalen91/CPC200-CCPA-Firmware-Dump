.class Lcn/manstep/phonemirrorBox/BoxInterface/f$d$a;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/BoxInterface/f$d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/util/concurrent/ScheduledExecutorService;

.field final synthetic c:Lcn/manstep/phonemirrorBox/BoxInterface/f$d;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/BoxInterface/f$d;Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$d$a;->c:Lcn/manstep/phonemirrorBox/BoxInterface/f$d;

    iput-object p2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$d$a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$d$a;->c:Lcn/manstep/phonemirrorBox/BoxInterface/f$d;

    iget-object v0, v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$d;->b:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->s(Lcn/manstep/phonemirrorBox/BoxInterface/f;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "checkOpenThread_ bThreadExit "

    .line 2
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$d$a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    return-void

    .line 4
    :cond_15
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$d$a;->c:Lcn/manstep/phonemirrorBox/BoxInterface/f$d;

    iget-object v0, v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$d;->b:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->j(Lcn/manstep/phonemirrorBox/BoxInterface/f;)Lcn/manstep/phonemirrorBox/util/z;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/util/z;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5a

    const-string v0, "bOpened_ = false"

    .line 5
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$d$a;->c:Lcn/manstep/phonemirrorBox/BoxInterface/f$d;

    iget-object v0, v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$d;->b:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->X0()Z

    move-result v0

    const-wide/16 v1, 0x3e8

    .line 7
    :try_start_38
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3b
    .catch Ljava/lang/InterruptedException; {:try_start_38 .. :try_end_3b} :catch_3c

    goto :goto_40

    :catch_3c
    move-exception v1

    .line 8
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 9
    :goto_40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send g_Open  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " !!!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    goto :goto_73

    :cond_5a
    const-string v0, "bOpened_ = true , cancel timer"

    .line 10
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$d$a;->c:Lcn/manstep/phonemirrorBox/BoxInterface/f$d;

    iget-object v0, v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$d;->b:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->y0()V

    .line 12
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$d$a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 13
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$d$a;->c:Lcn/manstep/phonemirrorBox/BoxInterface/f$d;

    iget-object v0, v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$d;->b:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->k(Lcn/manstep/phonemirrorBox/BoxInterface/f;Ljava/lang/Thread;)Ljava/lang/Thread;

    :goto_73
    return-void
.end method
