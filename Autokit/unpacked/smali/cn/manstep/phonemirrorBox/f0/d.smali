.class public Lcn/manstep/phonemirrorBox/f0/d;
.super Landroid/support/v4/media/session/MediaSessionCompat$c;
.source "SourceFile"

.field private final e:Lcn/manstep/phonemirrorBox/MediaButtonReceiver;

.field private final f:Ljava/lang/ref/WeakReference;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/ref/WeakReference<",
      "Landroid/content/Context;",
      ">;"
    }
  .end annotation
.end field

.field private g:Landroid/support/v4/media/session/MediaSessionCompat;

.method public constructor <init>(Landroid/content/Context;)V
  .registers 5
  .line 1
    invoke-direct { p0 }, Landroid/support/v4/media/session/MediaSessionCompat$c;-><init>()V
  .line 2
    new-instance v0, Lcn/manstep/phonemirrorBox/MediaButtonReceiver;
    invoke-direct { v0 }, Lcn/manstep/phonemirrorBox/MediaButtonReceiver;-><init>()V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/f0/d;->e:Lcn/manstep/phonemirrorBox/MediaButtonReceiver;
  .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;
    invoke-direct { v0, p1 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/f0/d;->f:Ljava/lang/ref/WeakReference;
  .line 4
    new-instance p1, Landroid/support/v4/media/session/MediaSessionCompat;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/content/Context;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "MS@"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Ljava/lang/Object;->hashCode()I
    move-result v2
    invoke-static { v2 }, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { p1, v0, v1 }, Landroid/support/v4/media/session/MediaSessionCompat;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/f0/d;->g:Landroid/support/v4/media/session/MediaSessionCompat;
  .line 5
    new-instance v0, Landroid/os/Handler;
    invoke-static { }, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
    move-result-object v1
    invoke-direct { v0, v1 }, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    invoke-virtual { p1, p0, v0 }, Landroid/support/v4/media/session/MediaSessionCompat;->g(Landroid/support/v4/media/session/MediaSessionCompat$c;Landroid/os/Handler;)V
  .line 6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/f0/d;->g:Landroid/support/v4/media/session/MediaSessionCompat;
    const/4 v0, 7
    invoke-virtual { p1, v0 }, Landroid/support/v4/media/session/MediaSessionCompat;->h(I)V
    const/4 p1, 1
  .line 7
    invoke-virtual { p0, p1 }, Lcn/manstep/phonemirrorBox/f0/d;->E(Z)V
    return-void
.end method

.method public D()V
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/f0/d;->g:Landroid/support/v4/media/session/MediaSessionCompat;
    if-eqz v0, :L0
    const/4 v0, 0
  .line 2
    invoke-virtual { p0, v0 }, Lcn/manstep/phonemirrorBox/f0/d;->E(Z)V
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/f0/d;->g:Landroid/support/v4/media/session/MediaSessionCompat;
    invoke-virtual { v0 }, Landroid/support/v4/media/session/MediaSessionCompat;->d()V
    const/4 v0, 0
  .line 4
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/f0/d;->g:Landroid/support/v4/media/session/MediaSessionCompat;
  :L0
    return-void
.end method

.method public E(Z)V
  .registers 6
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/f0/d;->g:Landroid/support/v4/media/session/MediaSessionCompat;
    if-eqz v0, :L2
  .line 2
    invoke-virtual { v0, p1 }, Landroid/support/v4/media/session/MediaSessionCompat;->e(Z)V
  .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L2
  .line 4
    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat$b;
    invoke-direct { v0 }, Landroid/support/v4/media/session/PlaybackStateCompat$b;-><init>()V
    if-eqz p1, :L0
    const/4 p1, 3
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    const-wide/16 v1, 0
    const/4 v3, 0
    invoke-virtual { v0, p1, v1, v2, v3 }, Landroid/support/v4/media/session/PlaybackStateCompat$b;->b(IJF)Landroid/support/v4/media/session/PlaybackStateCompat$b;
  .line 5
    invoke-virtual { v0 }, Landroid/support/v4/media/session/PlaybackStateCompat$b;->a()Landroid/support/v4/media/session/PlaybackStateCompat;
    move-result-object p1
  .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/f0/d;->g:Landroid/support/v4/media/session/MediaSessionCompat;
    invoke-virtual { v0, p1 }, Landroid/support/v4/media/session/MediaSessionCompat;->i(Landroid/support/v4/media/session/PlaybackStateCompat;)V
  :L2
    return-void
.end method

.method public g(Landroid/content/Intent;)Z
  .registers 8
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "onMediaButtonEvent: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Landroid/content/Intent;->getAction()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v1, "MediaSessionClient"
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    const-string v0, "android.intent.extra.KEY_EVENT"
  .line 2
    invoke-virtual { p1, v0 }, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
    move-result-object v0
    check-cast v0, Landroid/view/KeyEvent;
    if-eqz v0, :L0
  .line 3
    invoke-virtual { v0 }, Landroid/view/KeyEvent;->getKeyCode()I
    move-result v2
  .line 4
    invoke-virtual { v0 }, Landroid/view/KeyEvent;->getAction()I
    move-result v3
  .line 5
    invoke-virtual { v0 }, Landroid/view/KeyEvent;->getRepeatCount()I
    move-result v0
  .line 6
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "onMediaButtonEvent: keyCode="
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v4, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v2, ", keyAction:"
    invoke-virtual { v4, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v4, v3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v2, ", repeatCount:"
    invoke-virtual { v4, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v4, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V
  :L0
  .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/f0/d;->e:Lcn/manstep/phonemirrorBox/MediaButtonReceiver;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/f0/d;->f:Ljava/lang/ref/WeakReference;
    invoke-virtual { v1 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroid/content/Context;
    invoke-virtual { v0, v1, p1 }, Lcn/manstep/phonemirrorBox/MediaButtonReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    const/4 p1, 1
    return p1
.end method
