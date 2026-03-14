.class public Lcn/manstep/phonemirrorBox/f0/f;
.super Lcn/manstep/phonemirrorBox/f0/a;
.source "SourceFile"

.field private static i:Lcn/manstep/phonemirrorBox/f0/f;

.field private f:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private g:Landroid/media/AudioFocusRequest;

.field private h:I

.method public constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/f0/a;-><init>()V
    const/4 v0, 0
  .line 2
    iput v0, p0, Lcn/manstep/phonemirrorBox/f0/f;->h:I
    return-void
.end method

.method static synthetic h(Lcn/manstep/phonemirrorBox/f0/f;I)I
  .registers 2
  .line 1
    iput p1, p0, Lcn/manstep/phonemirrorBox/f0/f;->h:I
    return p1
.end method

.method public static j()Lcn/manstep/phonemirrorBox/f0/f;
  .catchall { :L0 .. :L3 } :L2
  .registers 4
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/f0/f;->i:Lcn/manstep/phonemirrorBox/f0/f;
    if-nez v0, :L4
  .line 2
    const-class v0, Lcn/manstep/phonemirrorBox/f0/f;
    monitor-enter v0
  :L0
  .line 3
    sget-object v1, Lcn/manstep/phonemirrorBox/f0/f;->i:Lcn/manstep/phonemirrorBox/f0/f;
    if-nez v1, :L1
  .line 4
    new-instance v1, Lcn/manstep/phonemirrorBox/f0/f;
    invoke-direct { v1 }, Lcn/manstep/phonemirrorBox/f0/f;-><init>()V
    sput-object v1, Lcn/manstep/phonemirrorBox/f0/f;->i:Lcn/manstep/phonemirrorBox/f0/f;
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
    sget-object v0, Lcn/manstep/phonemirrorBox/f0/f;->i:Lcn/manstep/phonemirrorBox/f0/f;
    return-object v0
.end method

.method private o()V
  .registers 7
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    const-string v1, "RingAudioVol"
    const/4 v2, 0
    invoke-virtual { v0, v1, v2 }, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I
    move-result v0
  .line 2
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "setVolume: val="
    invoke-virtual { v1, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    const-string v3, "RingManager"
    invoke-static { v3, v1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    if-lez v0, :L0
    const v1, 65535
    and-int v4, v0, v1
    shr-int/lit8 v0, v0, 16
    and-int/2addr v0, v1
  .line 3
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "setVolume: type="
    invoke-virtual { v1, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v5, ",vol="
    invoke-virtual { v1, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v4 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v3, v1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 4
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/f0/a;->e:Landroid/media/AudioManager;
    invoke-virtual { v1, v0, v4, v2 }, Landroid/media/AudioManager;->setStreamVolume(III)V
  :L0
    return-void
.end method

.method public g()V
  .registers 4
  .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/f0/f;->h:I
    if-eqz v0, :L2
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "abandon: focus="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Lcn/manstep/phonemirrorBox/f0/f;->h:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v1, "RingManager"
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/f0/a;->e:Landroid/media/AudioManager;
    if-eqz v0, :L1
  .line 4
    iget-boolean v1, p0, Lcn/manstep/phonemirrorBox/f0/a;->c:Z
    if-nez v1, :L0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 26
    if-lt v1, v2, :L0
  .line 5
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/f0/f;->g:Landroid/media/AudioFocusRequest;
    invoke-virtual { v0, v1 }, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I
    goto :L1
  :L0
  .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/f0/a;->e:Landroid/media/AudioManager;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/f0/f;->f:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    invoke-virtual { v0, v1 }, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
  :L1
    const/4 v0, 0
  .line 7
    iput v0, p0, Lcn/manstep/phonemirrorBox/f0/f;->h:I
  :L2
    return-void
.end method

.method public i()Landroid/media/AudioAttributes;
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/f0/f;->g:Landroid/media/AudioFocusRequest;
    invoke-virtual { v0 }, Landroid/media/AudioFocusRequest;->getAudioAttributes()Landroid/media/AudioAttributes;
    move-result-object v0
    return-object v0
.end method

.method public k()Z
  .registers 3
  .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/f0/f;->h:I
    const/4 v1, 1
    if-ne v0, v1, :L0
    goto :L1
  :L0
    const/4 v1, 0
  :L1
    return v1
.end method

.method public l(Landroid/content/Context;)V
  .registers 4
    const-string v0, "audio"
  .line 1
    invoke-virtual { p1, v0 }, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroid/media/AudioManager;
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/f0/a;->e:Landroid/media/AudioManager;
  .line 2
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/f0/f;->o()V
  .line 3
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object p1
    const-string v0, "LowerAudioAPI"
    const/4 v1, 0
    invoke-virtual { p1, v0, v1 }, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z
    move-result p1
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/f0/a;->c:Z
  .line 4
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object p1
    const-string v0, "RingAudioType"
    invoke-virtual { p1, v0, v1 }, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I
    move-result p1
    shr-int/lit8 v0, p1, 16
    const v1, 65535
    and-int/2addr v0, v1
  .line 5
    iput v0, p0, Lcn/manstep/phonemirrorBox/f0/a;->b:I
    and-int/2addr p1, v1
  .line 6
    iput p1, p0, Lcn/manstep/phonemirrorBox/f0/a;->a:I
    const/16 v0, 26
    const/4 v1, 2
    if-nez p1, :L1
  .line 7
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt p1, v0, :L0
    iget-boolean p1, p0, Lcn/manstep/phonemirrorBox/f0/a;->c:Z
    if-nez p1, :L0
    const/4 p1, 6
  .line 8
    iput p1, p0, Lcn/manstep/phonemirrorBox/f0/a;->a:I
  .line 9
    iput v1, p0, Lcn/manstep/phonemirrorBox/f0/a;->b:I
    goto :L1
  :L0
  .line 10
    iput v1, p0, Lcn/manstep/phonemirrorBox/f0/a;->a:I
  :L1
  .line 11
    new-instance p1, Lcn/manstep/phonemirrorBox/f0/f$a;
    invoke-direct { p1, p0 }, Lcn/manstep/phonemirrorBox/f0/f$a;-><init>(Lcn/manstep/phonemirrorBox/f0/f;)V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/f0/f;->f:Landroid/media/AudioManager$OnAudioFocusChangeListener;
  .line 12
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt p1, v0, :L2
  .line 13
    new-instance p1, Landroid/media/AudioAttributes$Builder;
    invoke-direct { p1 }, Landroid/media/AudioAttributes$Builder;-><init>()V
    iget v0, p0, Lcn/manstep/phonemirrorBox/f0/a;->a:I
  .line 14
    invoke-virtual { p1, v0 }, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;
    move-result-object p1
    iget v0, p0, Lcn/manstep/phonemirrorBox/f0/a;->b:I
  .line 15
    invoke-virtual { p1, v0 }, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;
    move-result-object p1
  .line 16
    invoke-virtual { p1 }, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;
    move-result-object p1
  .line 17
    new-instance v0, Landroid/media/AudioFocusRequest$Builder;
    invoke-direct { v0, v1 }, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V
  .line 18
    invoke-virtual { v0, p1 }, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;
    move-result-object p1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/f0/f;->f:Landroid/media/AudioManager$OnAudioFocusChangeListener;
  .line 19
    invoke-virtual { p1, v0 }, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;
    move-result-object p1
  .line 20
    invoke-virtual { p1 }, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;
    move-result-object p1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/f0/f;->g:Landroid/media/AudioFocusRequest;
  :L2
  .line 21
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "init: usage="
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v0, p0, Lcn/manstep/phonemirrorBox/f0/a;->a:I
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v0, ","
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v0, p0, Lcn/manstep/phonemirrorBox/f0/a;->b:I
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    const-string v0, "RingManager"
    invoke-static { v0, p1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    return-void
.end method

.method public m()I
  .registers 5
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "request: usage="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Lcn/manstep/phonemirrorBox/f0/a;->a:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, ","
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Lcn/manstep/phonemirrorBox/f0/a;->b:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v1, "RingManager"
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 2
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/f0/f;->o()V
  .line 3
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/f0/f;->k()Z
    move-result v0
    if-eqz v0, :L0
  .line 4
    iget v0, p0, Lcn/manstep/phonemirrorBox/f0/f;->h:I
    return v0
  :L0
  .line 5
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/f0/a;->c:Z
    if-nez v0, :L1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 26
    if-lt v0, v1, :L1
  .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/f0/a;->e:Landroid/media/AudioManager;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/f0/f;->g:Landroid/media/AudioFocusRequest;
    invoke-virtual { v0, v1 }, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I
    move-result v0
    goto :L2
  :L1
  .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/f0/a;->e:Landroid/media/AudioManager;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/f0/f;->f:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    iget v2, p0, Lcn/manstep/phonemirrorBox/f0/a;->a:I
    const/4 v3, 2
    invoke-virtual { v0, v1, v2, v3 }, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I
    move-result v0
  :L2
    const/4 v1, 1
    if-ne v0, v1, :L3
  .line 8
    iput v1, p0, Lcn/manstep/phonemirrorBox/f0/f;->h:I
  .line 9
    invoke-static { }, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;
    move-result-object v1
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/e;->C()Z
    move-result v2
    invoke-virtual { v1, v2 }, Lcn/manstep/phonemirrorBox/u0/c;->c(Z)V
    goto :L4
  :L3
    const/4 v1, -1
  .line 10
    iput v1, p0, Lcn/manstep/phonemirrorBox/f0/f;->h:I
  :L4
    return v0
.end method

.method public n(ZLandroid/media/AudioAttributes;I)I
  .registers 7
  .line 1
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/f0/f;->k()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    iget p1, p0, Lcn/manstep/phonemirrorBox/f0/f;->h:I
    return p1
  :L0
    const/4 v0, -1
    const/4 v1, 2
    if-nez p1, :L2
  .line 3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 26
    if-lt p1, v2, :L2
    if-nez p2, :L1
    return v0
  :L1
  .line 4
    new-instance p1, Landroid/media/AudioFocusRequest$Builder;
    invoke-direct { p1, v1 }, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V
  .line 5
    invoke-virtual { p1, p2 }, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;
    move-result-object p1
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/f0/f;->f:Landroid/media/AudioManager$OnAudioFocusChangeListener;
  .line 6
    invoke-virtual { p1, p2 }, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;
    move-result-object p1
  .line 7
    invoke-virtual { p1 }, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;
    move-result-object p1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/f0/f;->g:Landroid/media/AudioFocusRequest;
  .line 8
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/f0/a;->e:Landroid/media/AudioManager;
    invoke-virtual { p2, p1 }, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I
    move-result p1
    goto :L3
  :L2
  .line 9
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/f0/a;->e:Landroid/media/AudioManager;
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/f0/f;->f:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    invoke-virtual { p1, p2, p3, v1 }, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I
    move-result p1
  :L3
    const/4 p2, 1
    if-ne p1, p2, :L4
  .line 10
    iput p2, p0, Lcn/manstep/phonemirrorBox/f0/f;->h:I
  .line 11
    invoke-static { }, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;
    move-result-object p2
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/e;->C()Z
    move-result p3
    invoke-virtual { p2, p3 }, Lcn/manstep/phonemirrorBox/u0/c;->c(Z)V
    goto :L5
  :L4
  .line 12
    iput v0, p0, Lcn/manstep/phonemirrorBox/f0/f;->h:I
  :L5
    return p1
.end method
