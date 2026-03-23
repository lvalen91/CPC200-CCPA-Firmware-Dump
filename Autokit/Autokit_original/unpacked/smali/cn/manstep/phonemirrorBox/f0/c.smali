.class public Lcn/manstep/phonemirrorBox/f0/c;
.super Lcn/manstep/phonemirrorBox/f0/a;
.source "SourceFile"

.field private static k:Lcn/manstep/phonemirrorBox/f0/c;

.field private static l:Landroid/content/ComponentName;

.field private f:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private g:Landroid/media/AudioFocusRequest;

.field private h:I

.field private i:Z

.field private j:Lcn/manstep/phonemirrorBox/f0/d;

.method static constructor <clinit>()V
  .registers 0
    return-void
.end method

.method public constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/f0/a;-><init>()V
    const/4 v0, 0
  .line 2
    iput v0, p0, Lcn/manstep/phonemirrorBox/f0/c;->h:I
  .line 3
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/f0/c;->i:Z
    return-void
.end method

.method static synthetic h(Lcn/manstep/phonemirrorBox/f0/c;I)I
  .registers 2
  .line 1
    iput p1, p0, Lcn/manstep/phonemirrorBox/f0/c;->h:I
    return p1
.end method

.method static synthetic i(Lcn/manstep/phonemirrorBox/f0/c;)Z
  .registers 1
  .line 1
    iget-boolean p0, p0, Lcn/manstep/phonemirrorBox/f0/c;->i:Z
    return p0
.end method

.method static synthetic j(Lcn/manstep/phonemirrorBox/f0/c;Z)Z
  .registers 2
  .line 1
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/f0/c;->i:Z
    return p1
.end method

.method static synthetic k(Lcn/manstep/phonemirrorBox/f0/c;)Lcn/manstep/phonemirrorBox/f0/d;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/f0/c;->j:Lcn/manstep/phonemirrorBox/f0/d;
    return-object p0
.end method

.method static synthetic l(Lcn/manstep/phonemirrorBox/f0/c;)V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/f0/c;->r()V
    return-void
.end method

.method public static n()Lcn/manstep/phonemirrorBox/f0/c;
  .catchall { :L0 .. :L3 } :L2
  .registers 4
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/f0/c;->k:Lcn/manstep/phonemirrorBox/f0/c;
    if-nez v0, :L4
  .line 2
    const-class v0, Lcn/manstep/phonemirrorBox/f0/c;
    monitor-enter v0
  :L0
  .line 3
    sget-object v1, Lcn/manstep/phonemirrorBox/f0/c;->k:Lcn/manstep/phonemirrorBox/f0/c;
    if-nez v1, :L1
  .line 4
    new-instance v1, Lcn/manstep/phonemirrorBox/f0/c;
    invoke-direct { v1 }, Lcn/manstep/phonemirrorBox/f0/c;-><init>()V
    sput-object v1, Lcn/manstep/phonemirrorBox/f0/c;->k:Lcn/manstep/phonemirrorBox/f0/c;
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
    sget-object v0, Lcn/manstep/phonemirrorBox/f0/c;->k:Lcn/manstep/phonemirrorBox/f0/c;
    return-object v0
.end method

.method private r()V
  .registers 3
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/v0/a;->y()Z
    move-result v0
    if-eqz v0, :L0
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/v0/a;->C()Z
    move-result v0
    if-nez v0, :L0
    const/16 v0, 202
  .line 2
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    const/4 v0, 1
  .line 3
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/f0/c;->i:Z
  :L0
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/f0/c;->j:Lcn/manstep/phonemirrorBox/f0/d;
    if-eqz v0, :L1
    const/4 v1, 0
  .line 5
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/f0/d;->E(Z)V
  :L1
    return-void
.end method

.method public g()V
  .registers 1
    return-void
.end method

.method public m()Landroid/media/AudioAttributes;
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/f0/c;->g:Landroid/media/AudioFocusRequest;
    invoke-virtual { v0 }, Landroid/media/AudioFocusRequest;->getAudioAttributes()Landroid/media/AudioAttributes;
    move-result-object v0
    return-object v0
.end method

.method public o()Z
  .registers 4
  .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/f0/c;->h:I
    const/4 v1, 1
    if-eq v0, v1, :L1
    const/4 v2, 3
    if-ne v0, v2, :L0
    goto :L1
  :L0
    const/4 v1, 0
  :L1
    return v1
.end method

.method public p(Landroid/content/Context;)V
  .registers 5
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    const-string v1, "LowerAudioAPI"
    const/4 v2, 0
    invoke-virtual { v0, v1, v2 }, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z
    move-result v0
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/f0/a;->c:Z
    const-string v0, "audio"
  .line 2
    invoke-virtual { p1, v0 }, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/media/AudioManager;
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/f0/a;->e:Landroid/media/AudioManager;
  .line 3
    new-instance v0, Landroid/content/ComponentName;
    invoke-virtual { p1 }, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    move-result-object p1
    const-class v1, Lcn/manstep/phonemirrorBox/MediaButtonReceiver;
    invoke-virtual { v1 }, Ljava/lang/Class;->getName()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, p1, v1 }, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    sput-object v0, Lcn/manstep/phonemirrorBox/f0/c;->l:Landroid/content/ComponentName;
  .line 4
    new-instance p1, Lcn/manstep/phonemirrorBox/f0/c$a;
    invoke-direct { p1, p0 }, Lcn/manstep/phonemirrorBox/f0/c$a;-><init>(Lcn/manstep/phonemirrorBox/f0/c;)V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/f0/c;->f:Landroid/media/AudioManager$OnAudioFocusChangeListener;
  .line 5
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/4 v0, 1
    const/16 v1, 26
    if-lt p1, v1, :L0
    iget-boolean p1, p0, Lcn/manstep/phonemirrorBox/f0/a;->c:Z
    if-nez p1, :L0
  .line 6
    iput v0, p0, Lcn/manstep/phonemirrorBox/f0/a;->a:I
    const/4 p1, 2
  .line 7
    iput p1, p0, Lcn/manstep/phonemirrorBox/f0/a;->b:I
    goto :L1
  :L0
    const/4 p1, 3
  .line 8
    iput p1, p0, Lcn/manstep/phonemirrorBox/f0/a;->a:I
  :L1
  .line 9
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt p1, v1, :L2
  .line 10
    new-instance p1, Landroid/media/AudioAttributes$Builder;
    invoke-direct { p1 }, Landroid/media/AudioAttributes$Builder;-><init>()V
    iget v1, p0, Lcn/manstep/phonemirrorBox/f0/a;->a:I
  .line 11
    invoke-virtual { p1, v1 }, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;
    move-result-object p1
    iget v1, p0, Lcn/manstep/phonemirrorBox/f0/a;->b:I
  .line 12
    invoke-virtual { p1, v1 }, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;
    move-result-object p1
  .line 13
    invoke-virtual { p1 }, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;
    move-result-object p1
  .line 14
    new-instance v1, Landroid/media/AudioFocusRequest$Builder;
    invoke-direct { v1, v0 }, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V
  .line 15
    invoke-virtual { v1, p1 }, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;
    move-result-object p1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/f0/c;->f:Landroid/media/AudioManager$OnAudioFocusChangeListener;
  .line 16
    invoke-virtual { p1, v0 }, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;
    move-result-object p1
  .line 17
    invoke-virtual { p1 }, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;
    move-result-object p1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/f0/c;->g:Landroid/media/AudioFocusRequest;
  :L2
  .line 18
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
    const-string v0, "MediaManager"
    invoke-static { v0, p1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    return-void
.end method

.method public q(Landroid/content/Context;)V
  .registers 3
  .line 1
    new-instance v0, Lcn/manstep/phonemirrorBox/f0/d;
    invoke-direct { v0, p1 }, Lcn/manstep/phonemirrorBox/f0/d;-><init>(Landroid/content/Context;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/f0/c;->j:Lcn/manstep/phonemirrorBox/f0/d;
    return-void
.end method

.method public s()V
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/f0/a;->e:Landroid/media/AudioManager;
    if-eqz v0, :L2
  .line 2
    iget-boolean v1, p0, Lcn/manstep/phonemirrorBox/f0/a;->c:Z
    if-nez v1, :L0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 26
    if-lt v1, v2, :L0
  .line 3
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/f0/c;->g:Landroid/media/AudioFocusRequest;
    invoke-virtual { v0, v1 }, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I
    goto :L1
  :L0
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/f0/a;->e:Landroid/media/AudioManager;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/f0/c;->f:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    invoke-virtual { v0, v1 }, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
  :L1
  .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/f0/a;->e:Landroid/media/AudioManager;
    sget-object v1, Lcn/manstep/phonemirrorBox/f0/c;->l:Landroid/content/ComponentName;
    invoke-virtual { v0, v1 }, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V
  :L2
    const/4 v0, 0
  .line 6
    iput v0, p0, Lcn/manstep/phonemirrorBox/f0/c;->h:I
  .line 7
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/f0/c;->i:Z
  .line 8
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/f0/c;->j:Lcn/manstep/phonemirrorBox/f0/d;
    if-eqz v1, :L3
  .line 9
    invoke-virtual { v1, v0 }, Lcn/manstep/phonemirrorBox/f0/d;->E(Z)V
  :L3
    return-void
.end method

.method public t()V
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/f0/c;->j:Lcn/manstep/phonemirrorBox/f0/d;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/f0/d;->D()V
  :L0
    return-void
.end method

.method public u()I
  .catchall { :L0 .. :L1 } :L2
  .registers 6
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "request: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/f0/c;->o()Z
    move-result v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    const-string v1, ", focus="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Lcn/manstep/phonemirrorBox/f0/c;->h:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v1, "MediaManager"
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "request: usage="
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v2, p0, Lcn/manstep/phonemirrorBox/f0/a;->a:I
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v2, ","
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v2, p0, Lcn/manstep/phonemirrorBox/f0/a;->b:I
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  :L0
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/f0/a;->e:Landroid/media/AudioManager;
    sget-object v2, Lcn/manstep/phonemirrorBox/f0/c;->l:Landroid/content/ComponentName;
    invoke-virtual { v0, v2 }, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V
  :L1
    goto :L3
  :L2
    nop
  :L3
    const/4 v0, 0
  .line 4
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/f0/c;->i:Z
  .line 5
    iget v0, p0, Lcn/manstep/phonemirrorBox/f0/c;->h:I
    const/4 v2, 1
    if-ne v0, v2, :L4
    return v0
  :L4
  .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/f0/c;->j:Lcn/manstep/phonemirrorBox/f0/d;
    if-eqz v0, :L5
  .line 7
    invoke-virtual { v0, v2 }, Lcn/manstep/phonemirrorBox/f0/d;->E(Z)V
  :L5
  .line 8
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/f0/a;->c:Z
    if-nez v0, :L6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v3, 26
    if-lt v0, v3, :L6
  .line 9
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/f0/a;->e:Landroid/media/AudioManager;
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/f0/c;->g:Landroid/media/AudioFocusRequest;
    invoke-virtual { v0, v3 }, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I
    move-result v0
    goto :L7
  :L6
  .line 10
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/f0/a;->e:Landroid/media/AudioManager;
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/f0/c;->f:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    iget v4, p0, Lcn/manstep/phonemirrorBox/f0/a;->a:I
    invoke-virtual { v0, v3, v4, v2 }, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I
    move-result v0
  :L7
    if-ne v0, v2, :L8
  .line 11
    iput v2, p0, Lcn/manstep/phonemirrorBox/f0/c;->h:I
  .line 12
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/f0/a;->e:Landroid/media/AudioManager;
    sget-object v3, Lcn/manstep/phonemirrorBox/f0/c;->l:Landroid/content/ComponentName;
    invoke-virtual { v2, v3 }, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V
  .line 13
    invoke-static { }, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;
    move-result-object v2
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/e;->C()Z
    move-result v3
    invoke-virtual { v2, v3 }, Lcn/manstep/phonemirrorBox/u0/c;->d(Z)V
  .line 14
    invoke-static { }, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;
    move-result-object v2
    invoke-virtual { v2 }, Lcn/manstep/phonemirrorBox/u0/c;->n()V
    goto :L9
  :L8
    const/4 v3, -1
  .line 15
    iput v3, p0, Lcn/manstep/phonemirrorBox/f0/c;->h:I
    const/16 v3, 202
  .line 16
    invoke-static { v3 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
  .line 17
    iput-boolean v2, p0, Lcn/manstep/phonemirrorBox/f0/c;->i:Z
  :L9
  .line 18
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "request: focus="
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v3, p0, Lcn/manstep/phonemirrorBox/f0/c;->h:I
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v3, ", ret="
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static { v1, v2 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    return v0
.end method
