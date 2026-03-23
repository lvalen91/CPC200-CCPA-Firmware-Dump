.class Lcn/manstep/phonemirrorBox/l0/l$d;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/l0/l;->U2()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/l0/l;

.method constructor <init>(Lcn/manstep/phonemirrorBox/l0/l;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$d;->b:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .catch Ljava/lang/InterruptedException; { :L0 .. :L1 } :L19
  .catch Ljava/io/IOException; { :L1 .. :L3 } :L15
  .catchall { :L1 .. :L3 } :L14
  .catch Ljava/lang/InterruptedException; { :L5 .. :L6 } :L7
  .catch Ljava/io/IOException; { :L5 .. :L6 } :L15
  .catchall { :L5 .. :L6 } :L14
  .catch Ljava/io/IOException; { :L8 .. :L11 } :L15
  .catchall { :L8 .. :L11 } :L14
  .catch Ljava/lang/InterruptedException; { :L11 .. :L13 } :L19
  .catchall { :L16 .. :L17 } :L14
  .catch Ljava/lang/InterruptedException; { :L17 .. :L19 } :L19
  .registers 8
  :L0
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l$d;->b:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/l0/l;->w2(Lcn/manstep/phonemirrorBox/l0/l;)Ljava/util/concurrent/Semaphore;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/util/concurrent/Semaphore;->acquire()V
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l$d;->b:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/l0/l;->q2(Lcn/manstep/phonemirrorBox/l0/l;)Ld/b/a/b;
    move-result-object v0
    invoke-virtual { v0 }, Ld/b/a/b;->A()I
    move-result v0
  .line 3
    new-array v1, v0, [B
  .line 4
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/l0/l$d;->b:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-virtual { v2 }, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;
    move-result-object v2
    invoke-virtual { v2 }, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;
    move-result-object v2
  :L1
    const-string v3, "DTMF-14809414327.pcm"
  .line 5
    invoke-virtual { v2, v3 }, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    move-result-object v2
  .line 6
    invoke-virtual { v2 }, Ljava/io/InputStream;->available()I
    move-result v3
    int-to-float v3, v3
    const/high16 v4, 18170
    div-float/2addr v3, v4
    const v4, 1153138688
    mul-float v3, v3, v4
  :L2
  .line 7
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/l0/l$d;->b:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { v4 }, Lcn/manstep/phonemirrorBox/l0/l;->h2(Lcn/manstep/phonemirrorBox/l0/l;)Z
    move-result v4
    if-eqz v4, :L10
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/l0/l$d;->b:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { v4 }, Lcn/manstep/phonemirrorBox/l0/l;->q2(Lcn/manstep/phonemirrorBox/l0/l;)Ld/b/a/b;
    move-result-object v4
    invoke-virtual { v4 }, Ld/b/a/b;->z()Landroid/media/AudioTrack;
    move-result-object v4
    if-eqz v4, :L10
    const/4 v4, 0
  .line 8
    invoke-virtual { v2, v1, v4, v0 }, Ljava/io/InputStream;->read([BII)I
    move-result v5
    if-lez v5, :L4
  .line 9
    iget-object v6, p0, Lcn/manstep/phonemirrorBox/l0/l$d;->b:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { v6 }, Lcn/manstep/phonemirrorBox/l0/l;->q2(Lcn/manstep/phonemirrorBox/l0/l;)Ld/b/a/b;
    move-result-object v6
    invoke-virtual { v6, v1, v4, v5 }, Ld/b/a/b;->f([BII)V
  :L3
    goto :L2
  :L4
    float-to-long v4, v3
  :L5
  .line 10
    invoke-static { v4, v5 }, Ljava/lang/Thread;->sleep(J)V
  :L6
    goto :L9
  :L7
    move-exception v4
  :L8
  .line 11
    invoke-virtual { v4 }, Ljava/lang/InterruptedException;->printStackTrace()V
  :L9
  .line 12
    invoke-virtual { v2 }, Ljava/io/InputStream;->reset()V
    goto :L2
  :L10
  .line 13
    invoke-virtual { v2 }, Ljava/io/InputStream;->close()V
  :L11
  .line 14
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l$d;->b:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/l0/l;->w2(Lcn/manstep/phonemirrorBox/l0/l;)Ljava/util/concurrent/Semaphore;
    move-result-object v0
  :L12
    invoke-virtual { v0 }, Ljava/util/concurrent/Semaphore;->release()V
  :L13
    goto :L20
  :L14
    move-exception v0
    goto :L18
  :L15
    move-exception v0
  :L16
  .line 15
    invoke-virtual { v0 }, Ljava/io/IOException;->printStackTrace()V
  :L17
  .line 16
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l$d;->b:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/l0/l;->w2(Lcn/manstep/phonemirrorBox/l0/l;)Ljava/util/concurrent/Semaphore;
    move-result-object v0
    goto :L12
  :L18
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/l0/l$d;->b:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/l0/l;->w2(Lcn/manstep/phonemirrorBox/l0/l;)Ljava/util/concurrent/Semaphore;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/util/concurrent/Semaphore;->release()V
  .line 17
    throw v0
  :L19
    move-exception v0
  .line 18
    invoke-virtual { v0 }, Ljava/lang/InterruptedException;->printStackTrace()V
  :L20
    return-void
.end method
