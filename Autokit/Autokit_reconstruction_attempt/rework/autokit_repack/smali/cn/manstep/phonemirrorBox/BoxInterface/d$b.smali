.class Lcn/manstep/phonemirrorBox/BoxInterface/d$b;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/BoxInterface/d;->Z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/BoxInterface/d;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    :goto_0
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    if-eqz v0, :cond_4e

    .line 2
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->b()Ljava/util/Vector;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_9
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->b()Ljava/util/Vector;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_12} :catch_15
    .catchall {:try_start_9 .. :try_end_12} :catchall_13

    goto :goto_19

    :catchall_13
    move-exception v1

    goto :goto_4c

    :catch_15
    move-exception v1

    .line 4
    :try_start_16
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 5
    :goto_19
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->b()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_13

    if-nez v1, :cond_4a

    .line 6
    :try_start_23
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->c()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 7
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->b()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/manstep/phonemirrorBox/BoxInterface/d$e;

    .line 8
    iget-object v3, v2, Lcn/manstep/phonemirrorBox/BoxInterface/d$e;->b:[B

    iget v2, v2, Lcn/manstep/phonemirrorBox/BoxInterface/d$e;->a:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 9
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->b()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_44} :catch_45
    .catchall {:try_start_23 .. :try_end_44} :catchall_13

    goto :goto_19

    :catch_45
    move-exception v1

    .line 10
    :try_start_46
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_19

    .line 11
    :cond_4a
    monitor-exit v0

    goto :goto_0

    :goto_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_46 .. :try_end_4d} :catchall_13

    throw v1

    :cond_4e
    return-void
.end method
