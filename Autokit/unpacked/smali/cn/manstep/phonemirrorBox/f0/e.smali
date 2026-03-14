.class public Lcn/manstep/phonemirrorBox/f0/e;
.super Lcn/manstep/phonemirrorBox/f0/a;
.source "SourceFile"

.field private static i:Lcn/manstep/phonemirrorBox/f0/e;

.field private f:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private g:Landroid/media/AudioFocusRequest;

.field private h:I

.method public constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/f0/a;-><init>()V
    const/4 v0, 0
  .line 2
    iput v0, p0, Lcn/manstep/phonemirrorBox/f0/e;->h:I
    return-void
.end method

.method static synthetic h(Lcn/manstep/phonemirrorBox/f0/e;I)I
  .registers 2
  .line 1
    iput p1, p0, Lcn/manstep/phonemirrorBox/f0/e;->h:I
    return p1
.end method

.method public static j()Lcn/manstep/phonemirrorBox/f0/e;
  .catchall { :L0 .. :L3 } :L2
  .registers 4
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/f0/e;->i:Lcn/manstep/phonemirrorBox/f0/e;
    if-nez v0, :L4
  .line 2
    const-class v0, Lcn/manstep/phonemirrorBox/f0/e;
    monitor-enter v0
  :L0
  .line 3
    sget-object v1, Lcn/manstep/phonemirrorBox/f0/e;->i:Lcn/manstep/phonemirrorBox/f0/e;
    if-nez v1, :L1
  .line 4
    new-instance v1, Lcn/manstep/phonemirrorBox/f0/e;
    invoke-direct { v1 }, Lcn/manstep/phonemirrorBox/f0/e;-><init>()V
    sput-object v1, Lcn/manstep/phonemirrorBox/f0/e;->i:Lcn/manstep/phonemirrorBox/f0/e;
  :L1
  .line 5
    monitor-exit v0
    goto :L4
  :L2
    move-exception v1
    monitor-exit v0
  :L3
    throw v1
  :L4
  .line 6
    sget-object v0, Lcn/manstep/phonemirrorBox/f0/e;->i:Lcn/manstep/phonemirrorBox/f0/e;
    return-object v0
.end method

.method private o(Z)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/f0/a;->d:Ld/b/a/b;
    if-eqz v0, :L1
    const/4 v0, 1
    if-eqz p1, :L0
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/e0/b;->a()Lcn/manstep/phonemirrorBox/e0/b;
    move-result-object p1
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/f0/a;->d:Ld/b/a/b;
    invoke-virtual { v1 }, Ld/b/a/b;->C()I
    move-result v1
    invoke-virtual { p1, v0, v1 }, Lcn/manstep/phonemirrorBox/e0/b;->c(II)V
    goto :L1
  :L0
  .line 3
    invoke-static { }, Lcn/manstep/phonemirrorBox/e0/b;->a()Lcn/manstep/phonemirrorBox/e0/b;
    move-result-object p1
    const/high16 v1, -32768
    invoke-virtual { p1, v0, v1 }, Lcn/manstep/phonemirrorBox/e0/b;->c(II)V
  :L1
    return-void
.end method

.method public g()V
  .registers 5
  .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/f0/e;->h:I
    if-eqz v0, :L2
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "abandon: focus="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Lcn/manstep/phonemirrorBox/f0/e;->h:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v1, "NavManager"
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    const/4 v0, 0
  .line 3
    invoke-direct { p0, v0 }, Lcn/manstep/phonemirrorBox/f0/e;->o(Z)V
  .line 4
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/f0/a;->e:Landroid/media/AudioManager;
    if-eqz v1, :L1
  .line 5
    iget-boolean v2, p0, Lcn/manstep/phonemirrorBox/f0/a;->c:Z
    if-nez v2, :L0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v3, 26
    if-lt v2, v3, :L0
  .line 6
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/f0/e;->g:Landroid/media/AudioFocusRequest;
    invoke-virtual { v1, v2 }, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I
    goto :L1
  :L0
  .line 7
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/f0/a;->e:Landroid/media/AudioManager;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/f0/e;->f:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    invoke-virtual { v1, v2 }, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
  :L1
  .line 8
    iput v0, p0, Lcn/manstep/phonemirrorBox/f0/e;->h:I
  :L2
    return-void
.end method

.method public i()Landroid/media/AudioAttributes;
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/f0/e;->g:Landroid/media/AudioFocusRequest;
    invoke-virtual { v0 }, Landroid/media/AudioFocusRequest;->getAudioAttributes()Landroid/media/AudioAttributes;
    move-result-object v0
    return-object v0
.end method

.method public k()Z
  .registers 3
  .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/f0/e;->h:I
    const/4 v1, 1
    if-ne v0, v1, :L0
    goto :L1
  :L0
    const/4 v1, 0
  :L1
    return v1
.end method

.method public l(Landroid/content/Context;)V
  .registers 8
    const-string v0, "audio"
  .line 1
    invoke-virtual { p1, v0 }, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroid/media/AudioManager;
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/f0/a;->e:Landroid/media/AudioManager;
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object p1
    const-string v0, "NVAudioVol"
    const/4 v1, 0
    invoke-virtual { p1, v0, v1 }, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I
    move-result p1
  .line 3
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "init: val="
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v2, "NavManager"
    invoke-static { v2, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    const v0, 65535
    if-lez p1, :L0
    and-int v3, p1, v0
    shr-int/lit8 p1, p1, 16
    and-int/2addr p1, v0
  .line 4
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "init: streamVolume="
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcn/manstep/phonemirrorBox/f0/a;->e:Landroid/media/AudioManager;
    invoke-virtual { v5, p1 }, Landroid/media/AudioManager;->getStreamVolume(I)I
    move-result v5
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-static { v2, v4 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 5
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/f0/a;->e:Landroid/media/AudioManager;
    invoke-virtual { v4, p1, v3, v1 }, Landroid/media/AudioManager;->setStreamVolume(III)V
  .line 6
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "init: volType="
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v4, ", vol="
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { v2, p1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  :L0
  .line 7
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object p1
    const-string v3, "LowerAudioAPI"
    invoke-virtual { p1, v3, v1 }, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z
    move-result p1
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/f0/a;->c:Z
  .line 8
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object p1
    const-string v3, "NVAudioType"
    invoke-virtual { p1, v3, v1 }, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I
    move-result p1
    shr-int/lit8 v1, p1, 16
    and-int/2addr v1, v0
  .line 9
    iput v1, p0, Lcn/manstep/phonemirrorBox/f0/a;->b:I
    and-int/2addr p1, v0
  .line 10
    iput p1, p0, Lcn/manstep/phonemirrorBox/f0/a;->a:I
    const/4 v0, 3
    const/16 v1, 26
    if-nez p1, :L2
  .line 11
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt p1, v1, :L1
    iget-boolean p1, p0, Lcn/manstep/phonemirrorBox/f0/a;->c:Z
    if-nez p1, :L1
    const/16 p1, 12
  .line 12
    iput p1, p0, Lcn/manstep/phonemirrorBox/f0/a;->a:I
    const/4 p1, 2
  .line 13
    iput p1, p0, Lcn/manstep/phonemirrorBox/f0/a;->b:I
    goto :L2
  :L1
  .line 14
    iput v0, p0, Lcn/manstep/phonemirrorBox/f0/a;->a:I
  :L2
  .line 15
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "init: usage="
    invoke-virtual { p1, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v4, p0, Lcn/manstep/phonemirrorBox/f0/a;->a:I
    invoke-virtual { p1, v4 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { v2, p1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 16
    new-instance p1, Lcn/manstep/phonemirrorBox/f0/e$a;
    invoke-direct { p1, p0 }, Lcn/manstep/phonemirrorBox/f0/e$a;-><init>(Lcn/manstep/phonemirrorBox/f0/e;)V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/f0/e;->f:Landroid/media/AudioManager$OnAudioFocusChangeListener;
  .line 17
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt p1, v1, :L3
  .line 18
    new-instance p1, Landroid/media/AudioAttributes$Builder;
    invoke-direct { p1 }, Landroid/media/AudioAttributes$Builder;-><init>()V
    iget v1, p0, Lcn/manstep/phonemirrorBox/f0/a;->a:I
  .line 19
    invoke-virtual { p1, v1 }, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;
    move-result-object p1
    iget v1, p0, Lcn/manstep/phonemirrorBox/f0/a;->b:I
  .line 20
    invoke-virtual { p1, v1 }, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;
    move-result-object p1
  .line 21
    invoke-virtual { p1 }, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;
    move-result-object p1
  .line 22
    new-instance v1, Landroid/media/AudioFocusRequest$Builder;
    invoke-direct { v1, v0 }, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V
  .line 23
    invoke-virtual { v1, p1 }, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;
    move-result-object p1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/f0/e;->f:Landroid/media/AudioManager$OnAudioFocusChangeListener;
  .line 24
    invoke-virtual { p1, v0 }, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;
    move-result-object p1
  .line 25
    invoke-virtual { p1 }, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;
    move-result-object p1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/f0/e;->g:Landroid/media/AudioFocusRequest;
  :L3
  .line 26
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p1, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v0, p0, Lcn/manstep/phonemirrorBox/f0/a;->a:I
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v0, ","
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v0, p0, Lcn/manstep/phonemirrorBox/f0/a;->b:I
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { v2, p1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    return-void
.end method

.method public m()I
  .catch Ljava/lang/Exception; { :L2 .. :L3 } :L4
  .registers 6
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "request: usage="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Lcn/manstep/phonemirrorBox/f0/a;->a:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, ",contentType="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Lcn/manstep/phonemirrorBox/f0/a;->b:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, "\uff0cLowerApi="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Lcn/manstep/phonemirrorBox/f0/a;->c:Z
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    const-string v1, ",focus="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Lcn/manstep/phonemirrorBox/f0/e;->h:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v1, "NavManager"
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 2
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/f0/e;->k()Z
    move-result v0
    const/4 v2, 1
    if-eqz v0, :L0
  .line 3
    invoke-direct { p0, v2 }, Lcn/manstep/phonemirrorBox/f0/e;->o(Z)V
  .line 4
    iget v0, p0, Lcn/manstep/phonemirrorBox/f0/e;->h:I
    return v0
  :L0
  .line 5
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    const-string v3, "IsTurnDownMusic"
    invoke-virtual { v0, v3, v2 }, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z
    move-result v0
    if-eqz v0, :L6
  .line 6
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/f0/a;->c:Z
    if-nez v0, :L1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v3, 26
    if-lt v0, v3, :L1
  .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/f0/a;->e:Landroid/media/AudioManager;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/f0/e;->g:Landroid/media/AudioFocusRequest;
    invoke-virtual { v0, v1 }, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I
    move-result v0
    goto :L7
  :L1
  .line 8
    iget v0, p0, Lcn/manstep/phonemirrorBox/f0/a;->a:I
  .line 9
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "request: streamType="
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-static { v1, v3 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  :L2
  .line 10
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "request: streamVolume="
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/f0/a;->e:Landroid/media/AudioManager;
    invoke-virtual { v4, v0 }, Landroid/media/AudioManager;->getStreamVolume(I)I
    move-result v4
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-static { v1, v3 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  :L3
    goto :L5
  :L4
    nop
  .line 11
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/f0/a;->d:Ld/b/a/b;
    if-eqz v3, :L5
  .line 12
    invoke-virtual { v3 }, Ld/b/a/b;->C()I
    move-result v3
    if-ltz v3, :L5
    move v0, v3
  :L5
  .line 13
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "request: type="
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-static { v1, v3 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 14
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/f0/a;->e:Landroid/media/AudioManager;
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/f0/e;->f:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    const/4 v4, 3
    invoke-virtual { v1, v3, v0, v4 }, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I
    move-result v0
    goto :L7
  :L6
    const/4 v0, 1
  :L7
    if-ne v0, v2, :L8
  .line 15
    invoke-direct { p0, v2 }, Lcn/manstep/phonemirrorBox/f0/e;->o(Z)V
  .line 16
    iput v2, p0, Lcn/manstep/phonemirrorBox/f0/e;->h:I
  .line 17
    invoke-static { }, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;
    move-result-object v1
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/e;->C()Z
    move-result v2
    invoke-virtual { v1, v2 }, Lcn/manstep/phonemirrorBox/u0/c;->d(Z)V
    goto :L9
  :L8
    const/4 v1, -1
  .line 18
    iput v1, p0, Lcn/manstep/phonemirrorBox/f0/e;->h:I
  :L9
    return v0
.end method

.method public n(ZLandroid/media/AudioAttributes;I)I
  .catch Ljava/lang/Exception; { :L3 .. :L4 } :L5
  .registers 9
  .line 1
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/f0/e;->k()Z
    move-result v0
    const/4 v1, 1
    if-eqz v0, :L0
  .line 2
    invoke-direct { p0, v1 }, Lcn/manstep/phonemirrorBox/f0/e;->o(Z)V
  .line 3
    iget p1, p0, Lcn/manstep/phonemirrorBox/f0/e;->h:I
    return p1
  :L0
    const/4 v0, -1
    const/4 v2, 3
    if-nez p1, :L2
  .line 4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v3, 26
    if-lt p1, v3, :L2
    if-nez p2, :L1
    return v0
  :L1
  .line 5
    new-instance p1, Landroid/media/AudioFocusRequest$Builder;
    invoke-direct { p1, v2 }, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V
  .line 6
    invoke-virtual { p1, p2 }, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;
    move-result-object p1
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/f0/e;->f:Landroid/media/AudioManager$OnAudioFocusChangeListener;
  .line 7
    invoke-virtual { p1, p2 }, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;
    move-result-object p1
  .line 8
    invoke-virtual { p1 }, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;
    move-result-object p1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/f0/e;->g:Landroid/media/AudioFocusRequest;
  .line 9
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/f0/a;->e:Landroid/media/AudioManager;
    invoke-virtual { p2, p1 }, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I
    move-result p1
    goto :L7
  :L2
  .line 10
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p2, "request: streamType="
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, p3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p2, ",usage="
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget p2, p0, Lcn/manstep/phonemirrorBox/f0/a;->a:I
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    const-string p2, "NavManager"
    invoke-static { p2, p1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  :L3
  .line 11
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "request: streamVolume="
    invoke-virtual { p1, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/f0/a;->e:Landroid/media/AudioManager;
    iget v4, p0, Lcn/manstep/phonemirrorBox/f0/a;->a:I
    invoke-virtual { v3, v4 }, Landroid/media/AudioManager;->getStreamVolume(I)I
    move-result v3
    invoke-virtual { p1, v3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p2, p1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  :L4
    goto :L6
  :L5
    nop
  .line 12
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/f0/a;->d:Ld/b/a/b;
    if-eqz p1, :L6
  .line 13
    invoke-virtual { p1 }, Ld/b/a/b;->C()I
    move-result p1
    if-ltz p1, :L6
    move p3, p1
  :L6
  .line 14
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "request: type="
    invoke-virtual { p1, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, p3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p2, p1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 15
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/f0/a;->e:Landroid/media/AudioManager;
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/f0/e;->f:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    invoke-virtual { p1, p2, p3, v2 }, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I
    move-result p1
  :L7
    if-ne p1, v1, :L8
  .line 16
    invoke-direct { p0, v1 }, Lcn/manstep/phonemirrorBox/f0/e;->o(Z)V
  .line 17
    iput v1, p0, Lcn/manstep/phonemirrorBox/f0/e;->h:I
  .line 18
    invoke-static { }, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;
    move-result-object p2
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/e;->C()Z
    move-result p3
    invoke-virtual { p2, p3 }, Lcn/manstep/phonemirrorBox/u0/c;->d(Z)V
    goto :L9
  :L8
  .line 19
    iput v0, p0, Lcn/manstep/phonemirrorBox/f0/e;->h:I
  :L9
    return p1
.end method
