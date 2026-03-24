.class Lcn/manstep/phonemirrorBox/BoxInterface/f$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/BoxInterface/f;-><init>(Landroid/content/Context;)V
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
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audioRecordThread_ id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    const/16 v0, -0x13

    .line 2
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 3
    :goto_21
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->s(Lcn/manstep/phonemirrorBox/BoxInterface/f;)Z

    move-result v0

    if-nez v0, :cond_da

    .line 4
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->h:Ld/b/a/c;

    monitor-enter v0

    .line 5
    :try_start_2c
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->i(Lcn/manstep/phonemirrorBox/BoxInterface/f;)Z

    move-result v1
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_d7

    if-nez v1, :cond_48

    .line 6
    :try_start_34
    sget-object v1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->h:Ld/b/a/c;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 7
    sget v1, Lcn/manstep/phonemirrorBox/p;->G:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3f
    .catch Ljava/lang/InterruptedException; {:try_start_34 .. :try_end_3f} :catch_40
    .catchall {:try_start_34 .. :try_end_3f} :catchall_d7

    goto :goto_48

    :catch_40
    move-exception v1

    .line 8
    :try_start_41
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 9
    :cond_48
    :goto_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_41 .. :try_end_49} :catchall_d7

    .line 10
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->s(Lcn/manstep/phonemirrorBox/BoxInterface/f;)Z

    move-result v0

    if-eqz v0, :cond_53

    goto/16 :goto_da

    .line 11
    :cond_53
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->i(Lcn/manstep/phonemirrorBox/BoxInterface/f;)Z

    move-result v0

    if-nez v0, :cond_5c

    goto :goto_21

    .line 12
    :cond_5c
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->h:Ld/b/a/c;

    invoke-virtual {v0}, Ld/b/a/c;->c()I

    move-result v0

    if-nez v0, :cond_65

    goto :goto_21

    .line 13
    :cond_65
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->h:Ld/b/a/c;

    invoke-virtual {v0}, Ld/b/a/c;->i()V

    .line 14
    new-instance v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    sget-object v2, Lcn/manstep/phonemirrorBox/BoxInterface/a;->h:Ld/b/a/c;

    invoke-virtual {v2}, Ld/b/a/c;->c()I

    move-result v2

    const/16 v3, 0xc

    add-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/f;I)V

    .line 15
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)Lcn/manstep/phonemirrorBox/BoxInterface/f$i;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v1, v2}, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->j(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;I)I

    .line 16
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->c()V

    .line 17
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    .line 18
    sget v4, Lcn/manstep/phonemirrorBox/BoxInterface/a;->i:I

    invoke-virtual {v1, v2, v4}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    const/4 v2, 0x4

    const/4 v4, 0x0

    .line 19
    invoke-virtual {v1, v2, v4}, Ljava/nio/ByteBuffer;->putFloat(IF)Ljava/nio/ByteBuffer;

    const/16 v2, 0x8

    const/4 v4, 0x3

    .line 20
    invoke-virtual {v1, v2, v4}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 21
    :goto_9a
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->s(Lcn/manstep/phonemirrorBox/BoxInterface/f;)Z

    move-result v1

    if-nez v1, :cond_d0

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->i(Lcn/manstep/phonemirrorBox/BoxInterface/f;)Z

    move-result v1

    if-eqz v1, :cond_d0

    .line 22
    sget-object v1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->h:Ld/b/a/c;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B

    move-result-object v2

    .line 23
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I

    move-result v4

    sub-int/2addr v4, v3

    .line 24
    invoke-virtual {v1, v2, v3, v4}, Ld/b/a/c;->f([BII)Z

    move-result v1

    if-eqz v1, :cond_c1

    .line 25
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    invoke-virtual {v1, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->R0(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)Z

    goto :goto_9a

    :cond_c1
    const-wide/16 v1, 0xa

    .line 26
    :try_start_c3
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c6
    .catch Ljava/lang/InterruptedException; {:try_start_c3 .. :try_end_c6} :catch_c7

    goto :goto_9a

    :catch_c7
    move-exception v1

    .line 27
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    goto :goto_9a

    .line 28
    :cond_d0
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->h:Ld/b/a/c;

    invoke-virtual {v0}, Ld/b/a/c;->k()V

    goto/16 :goto_21

    :catchall_d7
    move-exception v1

    .line 29
    :try_start_d8
    monitor-exit v0
    :try_end_d9
    .catchall {:try_start_d8 .. :try_end_d9} :catchall_d7

    throw v1

    :cond_da
    :goto_da
    const-string v0, "audioRecordThread_ Exit"

    .line 30
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    return-void
.end method
