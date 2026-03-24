.class Lcn/manstep/phonemirrorBox/BoxInterface/b$f$b;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/manstep/phonemirrorBox/BoxInterface/b$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/b;->h:Z

    if-eqz v0, :cond_23

    const-string v0, "Send control cmd for get new frame!!!"

    .line 2
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    const/16 v0, 0x65

    .line 3
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    const-wide/16 v0, 0x64

    .line 4
    :try_start_10
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_13} :catch_14

    goto :goto_1e

    :catch_14
    move-exception v0

    .line 5
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->g(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BoxCarPlay"

    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1e
    const/16 v0, 0x64

    .line 6
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    :cond_23
    return-void
.end method
