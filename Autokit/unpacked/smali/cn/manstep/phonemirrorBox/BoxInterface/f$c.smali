.class Lcn/manstep/phonemirrorBox/BoxInterface/f$c;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/BoxInterface/f;-><init>(Landroid/content/Context;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/BoxInterface/f;

.method constructor <init>(Lcn/manstep/phonemirrorBox/BoxInterface/f;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .catchall { :L1 .. :L2 } :L18
  .catch Ljava/lang/InterruptedException; { :L3 .. :L4 } :L5
  .catchall { :L3 .. :L4 } :L18
  .catchall { :L6 .. :L8 } :L18
  .catch Ljava/lang/InterruptedException; { :L14 .. :L15 } :L16
  .catchall { :L19 .. :L20 } :L18
  .registers 6
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "audioRecordThread_ id="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { }, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/Thread;->getId()J
    move-result-wide v1
    invoke-virtual { v0, v1, v2 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    const/16 v0, -19
  .line 2
    invoke-static { v0 }, Landroid/os/Process;->setThreadPriority(I)V
  :L0
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->s(Lcn/manstep/phonemirrorBox/BoxInterface/f;)Z
    move-result v0
    if-nez v0, :L21
  .line 4
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->h:Ld/b/a/c;
    monitor-enter v0
  :L1
  .line 5
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->i(Lcn/manstep/phonemirrorBox/BoxInterface/f;)Z
    move-result v1
  :L2
    if-nez v1, :L7
  :L3
  .line 6
    sget-object v1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->h:Ld/b/a/c;
    invoke-virtual { v1 }, Ljava/lang/Object;->wait()V
  .line 7
    sget v1, Lcn/manstep/phonemirrorBox/p;->G:I
    int-to-long v1, v1
    invoke-static { v1, v2 }, Ljava/lang/Thread;->sleep(J)V
  :L4
    goto :L7
  :L5
    move-exception v1
  :L6
  .line 8
    invoke-static { v1 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L7
  .line 9
    monitor-exit v0
  :L8
  .line 10
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->s(Lcn/manstep/phonemirrorBox/BoxInterface/f;)Z
    move-result v0
    if-eqz v0, :L9
    goto/16 :L21
  :L9
  .line 11
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->i(Lcn/manstep/phonemirrorBox/BoxInterface/f;)Z
    move-result v0
    if-nez v0, :L10
    goto :L0
  :L10
  .line 12
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->h:Ld/b/a/c;
    invoke-virtual { v0 }, Ld/b/a/c;->c()I
    move-result v0
    if-nez v0, :L11
    goto :L0
  :L11
  .line 13
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->h:Ld/b/a/c;
    invoke-virtual { v0 }, Ld/b/a/c;->i()V
  .line 14
    new-instance v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    sget-object v2, Lcn/manstep/phonemirrorBox/BoxInterface/a;->h:Ld/b/a/c;
    invoke-virtual { v2 }, Ld/b/a/c;->c()I
    move-result v2
    const/16 v3, 12
    add-int/2addr v2, v3
    invoke-direct { v0, v1, v2 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/f;I)V
  .line 15
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)Lcn/manstep/phonemirrorBox/BoxInterface/f$i;
    move-result-object v1
    const/4 v2, 7
    invoke-static { v1, v2 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->j(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;I)I
  .line 16
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->c()V
  .line 17
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;
    move-result-object v1
    const/4 v2, 0
  .line 18
    sget v4, Lcn/manstep/phonemirrorBox/BoxInterface/a;->i:I
    invoke-virtual { v1, v2, v4 }, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;
    const/4 v2, 4
    const/4 v4, 0
  .line 19
    invoke-virtual { v1, v2, v4 }, Ljava/nio/ByteBuffer;->putFloat(IF)Ljava/nio/ByteBuffer;
    const/16 v2, 8
    const/4 v4, 3
  .line 20
    invoke-virtual { v1, v2, v4 }, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;
  :L12
  .line 21
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->s(Lcn/manstep/phonemirrorBox/BoxInterface/f;)Z
    move-result v1
    if-nez v1, :L17
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->i(Lcn/manstep/phonemirrorBox/BoxInterface/f;)Z
    move-result v1
    if-eqz v1, :L17
  .line 22
    sget-object v1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->h:Ld/b/a/c;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B
    move-result-object v2
  .line 23
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I
    move-result v4
    sub-int/2addr v4, v3
  .line 24
    invoke-virtual { v1, v2, v3, v4 }, Ld/b/a/c;->f([BII)Z
    move-result v1
    if-eqz v1, :L13
  .line 25
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-virtual { v1, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->R0(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)Z
    goto :L12
  :L13
    const-wide/16 v1, 10
  :L14
  .line 26
    invoke-static { v1, v2 }, Ljava/lang/Thread;->sleep(J)V
  :L15
    goto :L12
  :L16
    move-exception v1
  .line 27
    invoke-static { v1 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    goto :L12
  :L17
  .line 28
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->h:Ld/b/a/c;
    invoke-virtual { v0 }, Ld/b/a/c;->k()V
    goto/16 :L0
  :L18
    move-exception v1
  :L19
  .line 29
    monitor-exit v0
  :L20
    throw v1
  :L21
    const-string v0, "audioRecordThread_ Exit"
  .line 30
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    return-void
.end method
