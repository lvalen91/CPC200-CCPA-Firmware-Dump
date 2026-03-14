.class public Lcn/manstep/phonemirrorBox/j0/a;
.super Ld/b/a/c;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcn/manstep/phonemirrorBox/j0/a$a;
  }
.end annotation

.field private p:Lcn/manstep/phonemirrorBox/j0/a$a;

.method public constructor <init>(ILcn/manstep/phonemirrorBox/j0/a$a;)V
  .registers 3
  .line 1
    invoke-direct { p0, p1 }, Ld/b/a/c;-><init>(I)V
  .line 2
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/j0/a;->p:Lcn/manstep/phonemirrorBox/j0/a$a;
    return-void
.end method

.method public f([BII)Z
  .catch Ljava/lang/Exception; { :L1 .. :L5 } :L6
  .registers 9
    const/4 v0, 0
    const/4 v1, 0
  :L0
  .line 1
    iget-boolean v2, p0, Ld/b/a/c;->e:Z
    if-eqz v2, :L7
    iget-object v2, p0, Ld/b/a/c;->d:Landroid/media/AudioRecord;
    if-eqz v2, :L7
    add-int v3, p2, v1
    sub-int v4, p3, v1
  :L1
  .line 2
    invoke-virtual { v2, p1, v3, v4 }, Landroid/media/AudioRecord;->read([BII)I
    move-result v2
    if-lez v2, :L3
    add-int/2addr v1, v2
    if-ne v1, p3, :L2
  .line 3
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/j0/a;->p:Lcn/manstep/phonemirrorBox/j0/a$a;
    iget-object v2, v2, Lcn/manstep/phonemirrorBox/j0/a$a;->d:Ljava/lang/String;
    invoke-static { }, Lcn/manstep/phonemirrorBox/MyApplication;->b()Lcn/manstep/phonemirrorBox/MyApplication;
    move-result-object v3
    invoke-static { p1, p2, p3, v2, v3 }, Lcn/manstep/phonemirrorBox/util/n;->z([BIILjava/lang/String;Landroid/content/Context;)Z
    const/4 p1, 1
    return p1
  :L2
    if-le v1, p3, :L0
  .line 4
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "AudioRecordDebug,ReadAudioData: read over size: "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v3, " > "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, p3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    goto :L7
  :L3
    const/4 v3, -3
    if-ne v2, v3, :L4
    const-string v2, "AudioRecordDebug,ReadAudioData: read failed: the object isn't properly initialized."
  .line 5
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  .line 6
    invoke-virtual { p0, v0 }, Ld/b/a/c;->l(Z)V
    goto :L7
  :L4
  .line 7
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "AudioRecordDebug,ReadAudioData: read failed:"
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L5
    goto :L7
  :L6
    move-exception v2
  .line 8
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "ReadAudioData:\n"
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/util/s;->g(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v3, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    const-string v3, "AudioRecordDebug"
    invoke-static { v3, v2 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
    goto :L0
  :L7
    return v0
.end method

.method public g([BII)I
  .registers 4
    const/4 p1, 0
    return p1
.end method

.method protected s()Z
  .registers 9
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/4 v1, 3
    const/16 v2, 23
    if-lt v0, v2, :L0
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/j0/a;->p:Lcn/manstep/phonemirrorBox/j0/a$a;
    iget v2, v0, Lcn/manstep/phonemirrorBox/j0/a$a;->b:I
    if-ne v2, v1, :L0
  .line 2
    iget v0, v0, Lcn/manstep/phonemirrorBox/j0/a$a;->c:I
    invoke-virtual { p0, v0 }, Ld/b/a/c;->r(I)V
    goto :L1
  :L0
  .line 3
    new-instance v0, Landroid/media/AudioRecord;
    iget v3, p0, Ld/b/a/c;->o:I
    iget-object v2, p0, Ld/b/a/c;->c:Ld/b/a/a;
    iget v4, v2, Ld/b/a/a;->a:I
    iget v5, v2, Ld/b/a/a;->b:I
    iget v6, v2, Ld/b/a/a;->c:I
    iget v7, p0, Ld/b/a/c;->i:I
    move-object v2, v0
    invoke-direct/range { v2 .. v7 }, Landroid/media/AudioRecord;-><init>(IIIII)V
    iput-object v0, p0, Ld/b/a/c;->d:Landroid/media/AudioRecord;
  :L1
  .line 4
    iget-object v0, p0, Ld/b/a/c;->d:Landroid/media/AudioRecord;
    const/4 v2, 0
    const-string v3, "AudioRecordDebug"
    if-nez v0, :L2
    const-string v0, "initRecorder: mRecorder == null"
  .line 5
    invoke-static { v3, v0 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
    return v2
  :L2
  .line 6
    invoke-virtual { v0 }, Landroid/media/AudioRecord;->getState()I
    move-result v0
    const/16 v4, 26
    const/4 v5, 1
    if-eq v0, v5, :L3
  .line 7
    invoke-static { v2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v0
    invoke-static { v5, v4, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->P(IILjava/lang/Object;)Z
    return v2
  :L3
  .line 8
    iget-object v0, p0, Ld/b/a/c;->d:Landroid/media/AudioRecord;
    invoke-virtual { v0 }, Landroid/media/AudioRecord;->startRecording()V
  .line 9
    iget-object v0, p0, Ld/b/a/c;->d:Landroid/media/AudioRecord;
    invoke-virtual { v0 }, Landroid/media/AudioRecord;->getRecordingState()I
    move-result v0
    if-eq v0, v1, :L4
  .line 10
    invoke-static { v5 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v0
    invoke-static { v5, v4, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->P(IILjava/lang/Object;)Z
    goto :L5
  :L4
    const/16 v0, 27
  .line 11
    invoke-static { v5, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
  :L5
  .line 12
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "initRecorder: AudioSource="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Ld/b/a/c;->d:Landroid/media/AudioRecord;
    invoke-virtual { v1 }, Landroid/media/AudioRecord;->getAudioSource()I
    move-result v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, ","
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Ld/b/a/c;->o:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v3, v0 }, Lcn/manstep/phonemirrorBox/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V
  .line 13
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "initRecorder: ChannelCount="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Ld/b/a/c;->d:Landroid/media/AudioRecord;
    invoke-virtual { v1 }, Landroid/media/AudioRecord;->getChannelCount()I
    move-result v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v3, v0 }, Lcn/manstep/phonemirrorBox/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V
    return v5
.end method

.method public x()Z
  .registers 2
  .line 1
    iget-object v0, p0, Ld/b/a/c;->d:Landroid/media/AudioRecord;
    if-nez v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public y(Lcn/manstep/phonemirrorBox/j0/a$a;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/j0/a;->p:Lcn/manstep/phonemirrorBox/j0/a$a;
    return-void
.end method
