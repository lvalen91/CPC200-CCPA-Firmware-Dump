.class public Lcn/manstep/phonemirrorBox/n;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcn/manstep/phonemirrorBox/n$c;
  }
.end annotation

.field private final static i:[Ljava/lang/String;

.field private final a:Ljava/lang/ref/WeakReference;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/ref/WeakReference<",
      "Landroid/content/Context;",
      ">;"
    }
  .end annotation
.end field

.field private final b:Lcn/manstep/phonemirrorBox/u0/d;

.field private final c:Ljava/lang/Runnable;

.field private d:Lcn/manstep/phonemirrorBox/n$c;

.field private e:Z

.field private f:Z

.field private final g:Landroid/content/BroadcastReceiver;

.field private h:Z

.method static constructor <clinit>()V
  .registers 4
    const/16 v0, 33
    new-array v0, v0, [Ljava/lang/String;
    const/4 v1, 0
    const-string v2, "com.nwd.action.ACTION_KEY_VALUE"
    aput-object v2, v0, v1
    const/4 v1, 1
    const-string v2, "com.microntek.irkeyUp"
    aput-object v2, v0, v1
    const/4 v1, 2
    const-string v2, "com.microntek.irkeyDown"
    aput-object v2, v0, v1
    const/4 v1, 3
    const-string v2, "android.media.STREAM_MUTE_CHANGED_ACTION"
    aput-object v2, v0, v1
    const/4 v1, 4
    const-string v2, "android.media.VOLUME_CHANGED_ACTION"
    aput-object v2, v0, v1
    const/4 v1, 5
    const-string v2, "com.winca.service.Setting.KEY_ACTION"
    aput-object v2, v0, v1
    const/4 v1, 6
    const-string v2, "android.intent.action.C3_HARDKEY"
    aput-object v2, v0, v1
    const/4 v1, 7
    const-string v2, "IKeyClick.KEY_CLICK"
    aput-object v2, v0, v1
    const/16 v1, 8
    const-string v2, "com.tencent.qqmusiccar.action.MEDIA_BUTTON_INNER_MUSICMEDIA"
    aput-object v2, v0, v1
    const/16 v1, 9
    const-string v2, "com.tencent.qqmusiccar.action.MEDIA_BUTTON_INNER_ONKEY"
    aput-object v2, v0, v1
    const/16 v1, 10
    const-string v2, "cn.kuwo.player.imcs.action.MUSIC_CONTROL"
    aput-object v2, v0, v1
    const/16 v1, 11
    const-string v2, "kuwo.musichd_car.pre"
    aput-object v2, v0, v1
    const/16 v1, 12
    const-string v2, "kuwo.musichd_car.next"
    aput-object v2, v0, v1
    const/16 v1, 13
    const-string v2, "kuwo.musichd_car.playing"
    aput-object v2, v0, v1
    const/16 v1, 14
    const-string v2, "kuwo.play.playing"
    aput-object v2, v0, v1
    const/16 v1, 15
    const-string v2, "kuwo.play.pre"
    aput-object v2, v0, v1
    const/16 v1, 16
    const-string v2, "kuwo.play.next"
    aput-object v2, v0, v1
    const/16 v1, 17
    const-string v2, "cn.kuwo.kwmusicauto.action.MEDIA_BUTTON"
    aput-object v2, v0, v1
    const/16 v1, 18
    const-string v2, "com.eryanet.action.hk.vr"
    aput-object v2, v0, v1
    const/16 v1, 19
    const-string v2, "com.eryanet.music.prev"
    aput-object v2, v0, v1
    const/16 v1, 20
    const-string v2, "com.eryanet.music.next"
    aput-object v2, v0, v1
    const/16 v1, 21
    const-string v2, "com.eryanet.media.playorpause"
    aput-object v2, v0, v1
    const/16 v1, 22
    const-string v2, "com.eryanet.media.play"
    aput-object v2, v0, v1
    const/16 v1, 23
    const-string v2, "com.eryanet.media.pause"
    aput-object v2, v0, v1
    const/16 v1, 24
    const-string v2, "com.eryanet.link.connected"
    aput-object v2, v0, v1
    const/16 v1, 25
    const-string v2, "com.bz.action.phone.pickup"
    aput-object v2, v0, v1
    const/16 v1, 26
    const-string v2, "com.bz.action.phone.hangup"
    aput-object v2, v0, v1
    const/16 v1, 27
    const-string v2, "android.intent.action.MEDIA_PREVIOUS_DOWN"
    aput-object v2, v0, v1
    const/16 v1, 28
    const-string v2, "android.intent.action.MEDIA_NEXT_DOWN"
    aput-object v2, v0, v1
    const/16 v1, 29
    const-string v2, "android.intent.action.VOICE_ASSIST1_DOWN"
    aput-object v2, v0, v1
    const/16 v1, 30
    const-string v2, "android.intent.action.CALL_DOWN"
    aput-object v2, v0, v1
    const/16 v1, 31
    const-string v2, "android.intent.action.ENDCALL_DOWN"
    aput-object v2, v0, v1
    const/16 v1, 32
    const-string v2, "android.intent.action.VOICE_ASSIST_DOWN"
    aput-object v2, v0, v1
  .line 1
    sput-object v0, Lcn/manstep/phonemirrorBox/n;->i:[Ljava/lang/String;
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
  .registers 4
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Lcn/manstep/phonemirrorBox/n$a;
    invoke-direct { v0, p0 }, Lcn/manstep/phonemirrorBox/n$a;-><init>(Lcn/manstep/phonemirrorBox/n;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/n;->c:Ljava/lang/Runnable;
    const/4 v0, 0
  .line 3
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/n;->f:Z
  .line 4
    new-instance v1, Lcn/manstep/phonemirrorBox/n$b;
    invoke-direct { v1, p0 }, Lcn/manstep/phonemirrorBox/n$b;-><init>(Lcn/manstep/phonemirrorBox/n;)V
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/n;->g:Landroid/content/BroadcastReceiver;
  .line 5
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/n;->h:Z
  .line 6
    new-instance v0, Ljava/lang/ref/WeakReference;
    invoke-direct { v0, p1 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/n;->a:Ljava/lang/ref/WeakReference;
  .line 7
    new-instance p1, Lcn/manstep/phonemirrorBox/u0/d;
    invoke-direct { p1 }, Lcn/manstep/phonemirrorBox/u0/d;-><init>()V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/n;->b:Lcn/manstep/phonemirrorBox/u0/d;
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/manstep/phonemirrorBox/n$c;)V
  .registers 3
  .line 8
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/n;-><init>(Landroid/content/Context;)V
  .line 9
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/n;->d:Lcn/manstep/phonemirrorBox/n$c;
    return-void
.end method

.method static synthetic a(Lcn/manstep/phonemirrorBox/n;)Z
  .registers 1
  .line 1
    iget-boolean p0, p0, Lcn/manstep/phonemirrorBox/n;->e:Z
    return p0
.end method

.method static synthetic b(Lcn/manstep/phonemirrorBox/n;Z)Z
  .registers 2
  .line 1
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/n;->e:Z
    return p1
.end method

.method static synthetic c(Lcn/manstep/phonemirrorBox/n;Landroid/content/Intent;)V
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/n;->l(Landroid/content/Intent;)V
    return-void
.end method

.method static synthetic d(Lcn/manstep/phonemirrorBox/n;)Lcn/manstep/phonemirrorBox/n$c;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/n;->d:Lcn/manstep/phonemirrorBox/n$c;
    return-object p0
.end method

.method static synthetic e(Lcn/manstep/phonemirrorBox/n;Landroid/content/Intent;)I
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/n;->i(Landroid/content/Intent;)I
    move-result p0
    return p0
.end method

.method static synthetic f(Lcn/manstep/phonemirrorBox/n;Landroid/content/Intent;)I
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/n;->j(Landroid/content/Intent;)I
    move-result p0
    return p0
.end method

.method static synthetic g(Lcn/manstep/phonemirrorBox/n;)Z
  .registers 1
  .line 1
    iget-boolean p0, p0, Lcn/manstep/phonemirrorBox/n;->f:Z
    return p0
.end method

.method static synthetic h(Lcn/manstep/phonemirrorBox/n;Z)Z
  .registers 2
  .line 1
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/n;->f:Z
    return p1
.end method

.method private i(Landroid/content/Intent;)I
  .registers 5
    const-string v0, "android.intent.extra.c3_hardkey_action"
    const/4 v1, -1
  .line 1
    invoke-virtual { p1, v0, v1 }, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    move-result v0
    const-string v2, "android.intent.extra.c3_hardkey_keycode"
  .line 2
    invoke-virtual { p1, v2, v1 }, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    move-result p1
    const/4 v2, 1
    if-ne v0, v2, :L0
    const/4 v0, 0
  .line 3
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/n;->e:Z
    if-eq p1, v1, :L2
    return p1
  :L0
    if-nez v0, :L2
  .line 4
    iget-boolean p1, p0, Lcn/manstep/phonemirrorBox/n;->e:Z
    if-eqz p1, :L1
  .line 5
    iput-boolean v2, p0, Lcn/manstep/phonemirrorBox/n;->f:Z
    goto :L2
  :L1
  .line 6
    iput-boolean v2, p0, Lcn/manstep/phonemirrorBox/n;->e:Z
  :L2
    return v1
.end method

.method private j(Landroid/content/Intent;)I
  .registers 4
    const-string v0, "CLICK_KEY"
    const/4 v1, -1
  .line 1
    invoke-virtual { p1, v0, v1 }, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    move-result p1
    return p1
.end method

.method private k(II)V
  .registers 6
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/c;->n()Lcn/manstep/phonemirrorBox/f0/c;
    move-result-object p2
    invoke-virtual { p2 }, Lcn/manstep/phonemirrorBox/f0/a;->b()I
    move-result p2
    if-eq p1, p2, :L0
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/b;->j()Lcn/manstep/phonemirrorBox/f0/b;
    move-result-object p2
    invoke-virtual { p2 }, Lcn/manstep/phonemirrorBox/f0/a;->b()I
    move-result p2
    if-eq p1, p2, :L0
  .line 3
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/f;->j()Lcn/manstep/phonemirrorBox/f0/f;
    move-result-object p2
    invoke-virtual { p2 }, Lcn/manstep/phonemirrorBox/f0/a;->b()I
    move-result p2
    if-eq p1, p2, :L0
  .line 4
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/e;->j()Lcn/manstep/phonemirrorBox/f0/e;
    move-result-object p2
    invoke-virtual { p2 }, Lcn/manstep/phonemirrorBox/f0/a;->b()I
    move-result p2
    if-eq p1, p2, :L0
  .line 5
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/g;->j()Lcn/manstep/phonemirrorBox/f0/g;
    move-result-object p2
    invoke-virtual { p2 }, Lcn/manstep/phonemirrorBox/f0/a;->b()I
    move-result p2
    if-ne p1, p2, :L1
  :L0
  .line 6
    invoke-static { }, Lcn/manstep/phonemirrorBox/util/j;->c()Lcn/manstep/phonemirrorBox/util/j;
    move-result-object p1
    const-string p2, "VolumeChanged"
    invoke-virtual { p1, p2 }, Lcn/manstep/phonemirrorBox/util/j;->b(Ljava/lang/String;)Lcn/manstep/phonemirrorBox/util/j;
  .line 7
    invoke-static { }, Lcn/manstep/phonemirrorBox/util/j;->c()Lcn/manstep/phonemirrorBox/util/j;
    move-result-object p1
    const-wide/16 v0, 1500
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/n;->c:Ljava/lang/Runnable;
    invoke-virtual { p1, p2, v0, v1, v2 }, Lcn/manstep/phonemirrorBox/util/j;->e(Ljava/lang/String;JLjava/lang/Runnable;)Lcn/manstep/phonemirrorBox/util/j;
  :L1
    return-void
.end method

.method private l(Landroid/content/Intent;)V
  .registers 5
    const-string v0, "android.media.EXTRA_VOLUME_STREAM_TYPE"
    const/4 v1, 0
  .line 1
    invoke-virtual { p1, v0, v1 }, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    move-result v0
    const-string v2, "android.media.EXTRA_VOLUME_STREAM_VALUE"
  .line 2
    invoke-virtual { p1, v2, v1 }, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    move-result p1
  .line 3
    invoke-direct { p0, v0, p1 }, Lcn/manstep/phonemirrorBox/n;->k(II)V
  .line 4
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "onVolumeChanged: type="
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v0, ",value="
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    const-string v0, "CarButtonListener"
    invoke-static { v0, p1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    return-void
.end method

.method public m()V
  .catch Ljava/lang/Exception; { :L1 .. :L2 } :L4
  .catch Ljava/lang/Error; { :L1 .. :L2 } :L3
  .registers 6
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "register: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-boolean v2, p0, Lcn/manstep/phonemirrorBox/n;->h:Z
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v2, "CarButtonListener"
    invoke-static { v2, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 2
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/n;->h:Z
    if-eqz v0, :L0
    return-void
  :L0
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/n;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    if-eqz v0, :L9
  :L1
  .line 4
    invoke-static { }, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;
    move-result-object v0
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/n;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v3 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Landroid/content/Context;
    invoke-virtual { v0, v3 }, Lcn/manstep/phonemirrorBox/u0/c;->t(Landroid/content/Context;)V
  :L2
    goto :L6
  :L3
    move-exception v0
    goto :L5
  :L4
    move-exception v0
  :L5
  .line 5
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v3, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->g(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v2, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  :L6
  .line 6
    new-instance v0, Landroid/content/IntentFilter;
    invoke-direct { v0 }, Landroid/content/IntentFilter;-><init>()V
  .line 7
    sget-object v1, Lcn/manstep/phonemirrorBox/n;->i:[Ljava/lang/String;
    array-length v2, v1
    const/4 v3, 0
  :L7
    if-ge v3, v2, :L8
    aget-object v4, v1, v3
  .line 8
    invoke-virtual { v0, v4 }, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
    add-int/lit8 v3, v3, 1
    goto :L7
  :L8
    const/16 v1, 1000
  .line 9
    invoke-virtual { v0, v1 }, Landroid/content/IntentFilter;->setPriority(I)V
  .line 10
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/n;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v1 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroid/content/Context;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/n;->g:Landroid/content/BroadcastReceiver;
    invoke-virtual { v1, v2, v0 }, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    const/4 v0, 1
  .line 11
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/n;->h:Z
  :L9
  .line 12
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/n;->b:Lcn/manstep/phonemirrorBox/u0/d;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/n;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v1 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroid/content/Context;
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/u0/d;->b(Landroid/content/Context;)V
    return-void
.end method

.method public n()V
  .registers 3
  .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/n;->h:Z
    if-nez v0, :L0
    return-void
  :L0
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/n;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    if-eqz v0, :L1
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/n;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/content/Context;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/n;->g:Landroid/content/BroadcastReceiver;
    invoke-virtual { v0, v1 }, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    const/4 v0, 0
  .line 4
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/n;->h:Z
  :L1
  .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/n;->b:Lcn/manstep/phonemirrorBox/u0/d;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/n;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v1 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroid/content/Context;
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/u0/d;->c(Landroid/content/Context;)V
  .line 6
    invoke-static { }, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/u0/c;->z()V
    return-void
.end method
