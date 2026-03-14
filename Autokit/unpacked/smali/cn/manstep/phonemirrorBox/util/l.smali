.class public Lcn/manstep/phonemirrorBox/util/l;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcn/manstep/phonemirrorBox/util/l$d;,
    Lcn/manstep/phonemirrorBox/util/l$e;,
    Lcn/manstep/phonemirrorBox/util/l$h;,
    Lcn/manstep/phonemirrorBox/util/l$g;,
    Lcn/manstep/phonemirrorBox/util/l$f;
  }
.end annotation

.field private final a:Lcn/manstep/phonemirrorBox/util/l$d;

.field private final b:Lcn/manstep/phonemirrorBox/util/l$e;

.field private c:Ljava/util/concurrent/ScheduledExecutorService;

.field private final d:Ljava/util/concurrent/ConcurrentHashMap;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/concurrent/ConcurrentHashMap<",
      "Ljava/lang/Integer;",
      "Ljava/util/concurrent/Future;",
      ">;"
    }
  .end annotation
.end field

.field private e:Landroid/app/PendingIntent;

.field private f:Landroid/hardware/usb/UsbManager;

.field private g:Ljava/lang/ref/WeakReference;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/ref/WeakReference<",
      "Landroidx/fragment/app/n;",
      ">;"
    }
  .end annotation
.end field

.field private final h:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
.end field

.field private i:I

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Ljava/lang/ref/WeakReference;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/ref/WeakReference<",
      "Landroid/content/Context;",
      ">;"
    }
  .end annotation
.end field

.field private o:Lcn/manstep/phonemirrorBox/util/l$f;

.field private p:Lcn/manstep/phonemirrorBox/util/l$g;

.method public constructor <init>(Lcn/manstep/phonemirrorBox/util/l$d;Landroidx/fragment/app/n;)V
  .registers 4
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, -1
  .line 2
    iput v0, p0, Lcn/manstep/phonemirrorBox/util/l;->j:I
    const/4 v0, 0
  .line 3
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/util/l;->k:Z
  .line 4
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/util/l;->l:Z
  .line 5
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/util/l;->m:Z
  .line 6
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/l;->a:Lcn/manstep/phonemirrorBox/util/l$d;
  .line 7
    new-instance p1, Lcn/manstep/phonemirrorBox/util/l$e;
    invoke-direct { p1, p0 }, Lcn/manstep/phonemirrorBox/util/l$e;-><init>(Lcn/manstep/phonemirrorBox/util/l;)V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/l;->b:Lcn/manstep/phonemirrorBox/util/l$e;
  .line 8
    new-instance p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    const/4 v0, 2
    invoke-direct { p1, v0 }, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/l;->c:Ljava/util/concurrent/ScheduledExecutorService;
  .line 9
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;
    invoke-direct { p1 }, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/l;->d:Ljava/util/concurrent/ConcurrentHashMap;
  .line 10
    new-instance p1, Ljava/util/ArrayList;
    invoke-direct { p1 }, Ljava/util/ArrayList;-><init>()V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/l;->h:Ljava/util/ArrayList;
  .line 11
    new-instance p1, Ljava/lang/ref/WeakReference;
    invoke-direct { p1, p2 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/l;->g:Ljava/lang/ref/WeakReference;
    return-void
.end method

.method static synthetic a(Lcn/manstep/phonemirrorBox/util/l;)I
  .registers 1
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/util/l;->p()I
    move-result p0
    return p0
.end method

.method static synthetic b(Lcn/manstep/phonemirrorBox/util/l;ILjava/lang/Object;)V
  .registers 3
  .line 1
    invoke-direct { p0, p1, p2 }, Lcn/manstep/phonemirrorBox/util/l;->y(ILjava/lang/Object;)V
    return-void
.end method

.method static synthetic c(Lcn/manstep/phonemirrorBox/util/l;)Ljava/util/concurrent/ConcurrentHashMap;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/util/l;->d:Ljava/util/concurrent/ConcurrentHashMap;
    return-object p0
.end method

.method static synthetic d(Lcn/manstep/phonemirrorBox/util/l;)Lcn/manstep/phonemirrorBox/util/l$d;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/util/l;->a:Lcn/manstep/phonemirrorBox/util/l$d;
    return-object p0
.end method

.method static synthetic e(Lcn/manstep/phonemirrorBox/util/l;Landroid/hardware/usb/UsbDevice;)V
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/util/l;->x(Landroid/hardware/usb/UsbDevice;)V
    return-void
.end method

.method static synthetic f(Lcn/manstep/phonemirrorBox/util/l;)I
  .registers 1
  .line 1
    iget p0, p0, Lcn/manstep/phonemirrorBox/util/l;->j:I
    return p0
.end method

.method static synthetic g(Lcn/manstep/phonemirrorBox/util/l;)V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/util/l;->r()V
    return-void
.end method

.method static synthetic h(Lcn/manstep/phonemirrorBox/util/l;)Ljava/lang/ref/WeakReference;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/util/l;->n:Ljava/lang/ref/WeakReference;
    return-object p0
.end method

.method static synthetic i(Lcn/manstep/phonemirrorBox/util/l;Landroid/content/Context;)V
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/util/l;->v(Landroid/content/Context;)V
    return-void
.end method

.method static synthetic j(Lcn/manstep/phonemirrorBox/util/l;)V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/util/l;->w()V
    return-void
.end method

.method static synthetic k(Lcn/manstep/phonemirrorBox/util/l;)Ljava/util/ArrayList;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/util/l;->h:Ljava/util/ArrayList;
    return-object p0
.end method

.method static synthetic l(Lcn/manstep/phonemirrorBox/util/l;I)I
  .registers 2
  .line 1
    iput p1, p0, Lcn/manstep/phonemirrorBox/util/l;->i:I
    return p1
.end method

.method private p()I
  .registers 8
  .line 1
    new-instance v6, Landroid/media/AudioRecord;
    const/4 v1, 1
    const v2, 44100
    const/16 v3, 16
    const/4 v4, 1
    const v5, 44100
    move-object v0, v6
    invoke-direct/range { v0 .. v5 }, Landroid/media/AudioRecord;-><init>(IIIII)V
  .line 2
    invoke-virtual { v6 }, Landroid/media/AudioRecord;->getState()I
    move-result v0
    if-nez v0, :L0
    goto :L5
  :L0
  .line 3
    invoke-virtual { v6 }, Landroid/media/AudioRecord;->getRecordingState()I
    move-result v0
    const/4 v2, 2
    if-eq v0, v1, :L2
  :L1
    const/4 v1, 2
    goto :L4
  :L2
  .line 4
    invoke-virtual { v6 }, Landroid/media/AudioRecord;->startRecording()V
  .line 5
    invoke-virtual { v6 }, Landroid/media/AudioRecord;->getRecordingState()I
    move-result v0
    const/4 v1, 3
    if-eq v0, v1, :L3
    goto :L1
  :L3
  .line 6
    invoke-virtual { v6 }, Landroid/media/AudioRecord;->stop()V
    const/4 v0, 0
    const/4 v1, 0
  :L4
  .line 7
    invoke-virtual { v6 }, Landroid/media/AudioRecord;->release()V
  :L5
    return v1
.end method

.method private r()V
  .registers 3
    const/4 v0, 0
  .line 1
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/util/l;->m:Z
  .line 2
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/util/l;->k:Z
  .line 3
    new-instance v0, Lcn/manstep/phonemirrorBox/util/l$f;
    const/4 v1, 0
    invoke-direct { v0, p0, v1 }, Lcn/manstep/phonemirrorBox/util/l$f;-><init>(Lcn/manstep/phonemirrorBox/util/l;Lcn/manstep/phonemirrorBox/util/l$a;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/util/l;->o:Lcn/manstep/phonemirrorBox/util/l$f;
  .line 4
    new-instance v0, Lcn/manstep/phonemirrorBox/util/l$g;
    invoke-direct { v0, p0, v1 }, Lcn/manstep/phonemirrorBox/util/l$g;-><init>(Lcn/manstep/phonemirrorBox/util/l;Lcn/manstep/phonemirrorBox/util/l$a;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/util/l;->p:Lcn/manstep/phonemirrorBox/util/l$g;
  .line 5
    invoke-virtual { v0 }, Ljava/lang/Thread;->start()V
  .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/l;->o:Lcn/manstep/phonemirrorBox/util/l$f;
    invoke-virtual { v0 }, Ljava/lang/Thread;->start()V
    return-void
.end method

.method private v(Landroid/content/Context;)V
  .catch Ljava/lang/Exception; { :L3 .. :L11 } :L16
  .catchall { :L3 .. :L11 } :L15
  .catch Ljava/io/IOException; { :L13 .. :L14 } :L21
  .catchall { :L17 .. :L18 } :L15
  .catch Ljava/io/IOException; { :L19 .. :L20 } :L21
  .catch Ljava/io/IOException; { :L24 .. :L25 } :L26
  .registers 15
    if-nez p1, :L0
    return-void
  :L0
    const/4 v0, 1
  .line 1
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/util/l;->l:Z
  .line 2
    new-instance v1, Lcn/manstep/phonemirrorBox/BoxInterface/a;
    const/4 v2, 5
    invoke-direct { v1, v2, v0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;-><init>(IILandroid/content/Context;)V
  .line 3
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->i()Ld/b/a/b;
    move-result-object v0
  .line 4
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/c;->n()Lcn/manstep/phonemirrorBox/f0/c;
    move-result-object v2
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/util/l;->n:Ljava/lang/ref/WeakReference;
    invoke-virtual { v3 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Landroid/content/Context;
    invoke-virtual { v3 }, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
    move-result-object v3
    invoke-static/range { v3 .. v3 }, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;
    move-result-object v3
    invoke-virtual { v2, v3 }, Lcn/manstep/phonemirrorBox/f0/c;->p(Landroid/content/Context;)V
  .line 5
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/c;->n()Lcn/manstep/phonemirrorBox/f0/c;
    move-result-object v2
    invoke-virtual { v2 }, Lcn/manstep/phonemirrorBox/f0/c;->u()I
    const/16 v2, 16000
    const/4 v3, 4
    const/4 v4, 2
  .line 6
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v6, 26
    if-lt v5, v6, :L1
  .line 7
    invoke-static { }, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->getInstance()Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;
    move-result-object v5
    invoke-virtual { v5 }, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->getMediaAudioAttributes()Landroid/media/AudioAttributes;
    move-result-object v5
    new-instance v6, Ld/b/a/a;
    invoke-direct { v6, v2, v3, v4 }, Ld/b/a/a;-><init>(III)V
    invoke-virtual { v0, v5, v6 }, Ld/b/a/b;->a(Landroid/media/AudioAttributes;Ld/b/a/a;)V
    goto :L2
  :L1
  .line 8
    new-instance v5, Ld/b/a/a;
    invoke-direct { v5, v2, v3, v4 }, Ld/b/a/a;-><init>(III)V
    const/4 v2, 3
    invoke-virtual { v0, v5, v2 }, Ld/b/a/b;->d(Ld/b/a/a;I)V
  :L2
    const/high16 v2, 16256
  .line 9
    invoke-virtual { v0, v2 }, Ld/b/a/b;->n(F)V
    const/4 v2, 0
    const/16 v3, 1280
    new-array v3, v3, [B
    const/4 v4, 0
  :L3
  .line 10
    invoke-virtual { p1 }, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;
    move-result-object p1
    const-string v5, "DTMF-14809414327.pcm"
    invoke-virtual { p1, v5 }, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    move-result-object v2
    const-wide/16 v5, 0
    move-wide v7, v5
    const/4 p1, 0
  :L4
  .line 11
    iget-boolean v9, p0, Lcn/manstep/phonemirrorBox/util/l;->m:Z
    if-nez v9, :L12
    cmp-long v9, v7, v5
    if-nez v9, :L5
  .line 12
    invoke-static { }, Landroid/os/SystemClock;->elapsedRealtime()J
    move-result-wide v7
    goto :L6
  :L5
    const-wide/16 v9, 40
    add-long/2addr v7, v9
  :L6
  .line 13
    iget-boolean v9, p0, Lcn/manstep/phonemirrorBox/util/l;->k:Z
    if-eqz v9, :L7
  .line 14
    invoke-virtual { v2, v3 }, Ljava/io/InputStream;->read([B)I
    move-result p1
    if-gtz p1, :L7
    goto :L12
  :L7
  .line 15
    invoke-static { }, Landroid/os/SystemClock;->elapsedRealtime()J
    move-result-wide v9
  .line 16
    iget-boolean v11, p0, Lcn/manstep/phonemirrorBox/util/l;->k:Z
    if-eqz v11, :L10
  .line 17
    new-instance v11, Ljava/lang/StringBuilder;
    invoke-direct { v11 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v12, "DeviceCheck,playAudio: curTime="
    invoke-virtual { v11, v12 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v11, v9, v10 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    const-string v12, ",playNextTime="
    invoke-virtual { v11, v12 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v11, v7, v8 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual { v11 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v11
    invoke-static { v11 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    cmp-long v11, v9, v7
    if-gez v11, :L8
    sub-long v9, v7, v9
  .line 18
    invoke-static { v9, v10 }, Ljava/lang/Thread;->sleep(J)V
    goto :L9
  :L8
  .line 19
    new-instance v11, Ljava/lang/StringBuilder;
    invoke-direct { v11 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v12, "DeviceCheck,playAudio: play over time="
    invoke-virtual { v11, v12 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sub-long/2addr v9, v7
    invoke-virtual { v11, v9, v10 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual { v11 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v9
    invoke-static { v9 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L9
  .line 20
    invoke-virtual { v0, v3, v4, p1 }, Ld/b/a/b;->f([BII)V
    goto :L4
  :L10
    const-wide/16 v7, 1
  .line 21
    invoke-static { v7, v8 }, Ljava/lang/Thread;->sleep(J)V
  :L11
    move-wide v7, v5
    goto :L4
  :L12
    if-eqz v2, :L22
  :L13
  .line 22
    invoke-virtual { v2 }, Ljava/io/InputStream;->close()V
  :L14
    goto :L22
  :L15
    move-exception p1
    goto :L23
  :L16
    move-exception p1
  :L17
  .line 23
    invoke-virtual { p1 }, Ljava/lang/Exception;->printStackTrace()V
  :L18
    if-eqz v2, :L22
  :L19
  .line 24
    invoke-virtual { v2 }, Ljava/io/InputStream;->close()V
  :L20
    goto :L22
  :L21
    move-exception p1
  .line 25
    invoke-virtual { p1 }, Ljava/io/IOException;->printStackTrace()V
  :L22
  .line 26
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->h()V
  .line 27
    iput-boolean v4, p0, Lcn/manstep/phonemirrorBox/util/l;->l:Z
    return-void
  :L23
    if-eqz v2, :L27
  :L24
  .line 28
    invoke-virtual { v2 }, Ljava/io/InputStream;->close()V
  :L25
    goto :L27
  :L26
    move-exception v0
  .line 29
    invoke-virtual { v0 }, Ljava/io/IOException;->printStackTrace()V
  :L27
  .line 30
    goto :L29
  :L28
    throw p1
  :L29
    goto :L28
.end method

.method private w()V
  .catch Ljava/lang/InterruptedException; { :L0 .. :L1 } :L2
  .registers 8
  :L0
  .line 1
    sget v0, Lcn/manstep/phonemirrorBox/p;->G:I
    int-to-long v0, v0
    invoke-static { v0, v1 }, Ljava/lang/Thread;->sleep(J)V
  :L1
    goto :L3
  :L2
    move-exception v0
  .line 2
    invoke-virtual { v0 }, Ljava/lang/InterruptedException;->printStackTrace()V
  :L3
  .line 3
    new-instance v0, Ld/b/a/c;
    invoke-direct { v0 }, Ld/b/a/c;-><init>()V
  .line 4
    new-instance v1, Ld/b/a/a;
    const/16 v2, 16000
    const/16 v3, 16
    const/4 v4, 2
    invoke-direct { v1, v2, v3, v4 }, Ld/b/a/a;-><init>(III)V
  .line 5
    invoke-virtual { v0, v1 }, Ld/b/a/c;->h(Ld/b/a/a;)V
  .line 6
    invoke-virtual { v0 }, Ld/b/a/c;->i()V
  .line 7
    invoke-virtual { v0 }, Ld/b/a/c;->c()I
    move-result v1
    const v2, 153600
    new-array v2, v2, [B
    const/4 v3, 0
    const/4 v4, 0
  :L4
  .line 8
    invoke-virtual { v0 }, Ld/b/a/c;->o()Z
    move-result v5
    if-eqz v5, :L7
  .line 9
    iget-boolean v5, p0, Lcn/manstep/phonemirrorBox/util/l;->l:Z
    if-nez v5, :L5
    goto :L7
  :L5
  .line 10
    invoke-virtual { v0, v2, v4, v1 }, Ld/b/a/c;->f([BII)Z
    move-result v5
    if-eqz v5, :L4
  .line 11
    new-array v5, v1, [B
  .line 12
    invoke-static { v2, v4, v5, v3, v1 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  .line 13
    iget-object v6, p0, Lcn/manstep/phonemirrorBox/util/l;->a:Lcn/manstep/phonemirrorBox/util/l$d;
    invoke-interface { v6, v5, v1 }, Lcn/manstep/phonemirrorBox/util/l$d;->j([BI)V
  .line 14
    iget-boolean v5, p0, Lcn/manstep/phonemirrorBox/util/l;->k:Z
    if-nez v5, :L6
    const/4 v5, 1
  .line 15
    iput-boolean v5, p0, Lcn/manstep/phonemirrorBox/util/l;->k:Z
    const-string v5, "DeviceCheck,recordeAudio : record first data!!!"
  .line 16
    invoke-static { v5 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    goto :L4
  :L6
    add-int/2addr v4, v1
    goto :L4
  :L7
  .line 17
    invoke-virtual { v0 }, Ld/b/a/c;->q()I
    move-result v1
    const/4 v5, 3
    if-ne v1, v5, :L8
  .line 18
    invoke-virtual { v0 }, Ld/b/a/c;->k()V
  :L8
  .line 19
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "DeviceCheck,recordeAudio offset ="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v4 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  .line 20
    new-array v0, v4, [B
  .line 21
    invoke-static { v2, v3, v0, v3, v4 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  .line 22
    new-instance v1, Lcn/manstep/phonemirrorBox/Dtmf;
    invoke-direct { v1 }, Lcn/manstep/phonemirrorBox/Dtmf;-><init>()V
  .line 23
    invoke-virtual { v1, v0 }, Lcn/manstep/phonemirrorBox/Dtmf;->dtmfDoAec([B)I
    move-result v0
    iput v0, p0, Lcn/manstep/phonemirrorBox/util/l;->j:I
    const/16 v1, 150
    if-le v0, v1, :L9
    add-int/lit8 v0, v0, -100
    add-int/lit8 v0, v0, -50
  .line 24
    iput v0, p0, Lcn/manstep/phonemirrorBox/util/l;->j:I
  :L9
  .line 25
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/util/l;->m:Z
    invoke-static { v0 }, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    move-result-object v0
    invoke-direct { p0, v5, v0 }, Lcn/manstep/phonemirrorBox/util/l;->y(ILjava/lang/Object;)V
    return-void
.end method

.method private x(Landroid/hardware/usb/UsbDevice;)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/l;->f:Landroid/hardware/usb/UsbManager;
    if-eqz v0, :L0
    if-eqz p1, :L0
  .line 2
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/util/l;->e:Landroid/app/PendingIntent;
    invoke-virtual { v0, p1, v1 }, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V
  :L0
    return-void
.end method

.method private y(ILjava/lang/Object;)V
  .registers 4
  .line 1
    new-instance v0, Landroid/os/Message;
    invoke-direct { v0 }, Landroid/os/Message;-><init>()V
  .line 2
    iput p1, v0, Landroid/os/Message;->what:I
  .line 3
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;
  .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/l;->b:Lcn/manstep/phonemirrorBox/util/l$e;
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    return-void
.end method

.method public A(Ljava/lang/String;Ljava/lang/String;Z)V
  .registers 6
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/l;->g:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroidx/fragment/app/n;
    new-instance v1, Lcn/manstep/phonemirrorBox/util/l$b;
    invoke-direct { v1, p0, p3 }, Lcn/manstep/phonemirrorBox/util/l$b;-><init>(Lcn/manstep/phonemirrorBox/util/l;Z)V
    new-instance p3, Lcn/manstep/phonemirrorBox/util/l$c;
    invoke-direct { p3, p0 }, Lcn/manstep/phonemirrorBox/util/l$c;-><init>(Lcn/manstep/phonemirrorBox/util/l;)V
    invoke-static { v0, p1, p2, v1, p3 }, Lcn/manstep/phonemirrorBox/k0/a;->B2(Landroidx/fragment/app/n;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    return-void
.end method

.method public B()V
  .registers 10
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/l;->c:Ljava/util/concurrent/ScheduledExecutorService;
    if-eqz v0, :L0
    invoke-interface { v0 }, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z
    move-result v0
    if-eqz v0, :L1
  :L0
  .line 2
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    const/4 v1, 2
    invoke-direct { v0, v1 }, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/util/l;->c:Ljava/util/concurrent/ScheduledExecutorService;
  :L1
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/l;->d:Ljava/util/concurrent/ConcurrentHashMap;
    const/4 v1, 1
    invoke-static { v1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    invoke-virtual { v0, v2 }, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    if-nez v0, :L2
  .line 4
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/util/l;->c:Ljava/util/concurrent/ScheduledExecutorService;
    new-instance v3, Lcn/manstep/phonemirrorBox/util/l$a;
    invoke-direct { v3, p0 }, Lcn/manstep/phonemirrorBox/util/l$a;-><init>(Lcn/manstep/phonemirrorBox/util/l;)V
    const-wide/16 v4, 0
    const-wide/16 v6, 1
    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
    invoke-interface/range { v2 .. v8 }, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    move-result-object v0
  .line 5
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/util/l;->d:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static { v1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-virtual { v2, v1, v0 }, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L2
    return-void
.end method

.method public C()V
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/l;->d:Ljava/util/concurrent/ConcurrentHashMap;
    const/4 v1, 1
    invoke-static { v1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    invoke-virtual { v0, v2 }, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/util/concurrent/Future;
    if-eqz v0, :L0
  .line 2
    invoke-interface { v0, v1 }, Ljava/util/concurrent/Future;->cancel(Z)Z
  :L0
    return-void
.end method

.method public D()V
  .registers 2
    const/4 v0, 1
  .line 1
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/util/l;->m:Z
    return-void
.end method

.method public m(Landroid/content/Context;)V
  .registers 3
    const-string v0, "usb"
  .line 1
    invoke-virtual { p1, v0 }, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/hardware/usb/UsbManager;
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/util/l;->f:Landroid/hardware/usb/UsbManager;
  .line 2
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/util/l;->o()V
  .line 3
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/util/l;->n()V
  .line 4
    invoke-virtual { p0, p1 }, Lcn/manstep/phonemirrorBox/util/l;->s(Landroid/content/Context;)V
    return-void
.end method

.method public n()V
  .catch Ljava/io/IOException; { :L7 .. :L8 } :L10
  .catchall { :L7 .. :L8 } :L9
  .catchall { :L11 .. :L12 } :L9
  .registers 12
  .line 1
    invoke-static { }, Landroid/media/MediaCodecList;->getCodecCount()I
    move-result v0
    const-string v1, ""
    const/4 v2, 0
    move-object v4, v1
    const/4 v3, 0
  :L0
    const-string v5, "video/avc"
    if-ge v3, v0, :L5
  .line 2
    invoke-static { v3 }, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;
    move-result-object v6
  .line 3
    invoke-virtual { v6 }, Landroid/media/MediaCodecInfo;->isEncoder()Z
    move-result v7
    if-nez v7, :L4
  .line 4
    invoke-virtual { v6 }, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;
    move-result-object v7
  .line 5
    array-length v8, v7
    const/4 v9, 0
  :L1
    if-ge v9, v8, :L4
    aget-object v10, v7, v9
  .line 6
    invoke-virtual { v5, v10 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v10
    if-eqz v10, :L3
  .line 7
    invoke-virtual { v1, v4 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v10
    if-nez v10, :L2
    const-string v10, "OMX.google.h264.decoder"
    invoke-virtual { v10, v4 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v10
    if-eqz v10, :L3
  :L2
  .line 8
    invoke-virtual { v6 }, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;
    move-result-object v4
  :L3
    add-int/lit8 v9, v9, 1
    goto :L1
  :L4
    add-int/lit8 v3, v3, 1
    goto :L0
  :L5
  .line 9
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "DeviceCheck,checkCodec: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  .line 10
    invoke-static { v4 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    if-eqz v0, :L6
  .line 11
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/l;->a:Lcn/manstep/phonemirrorBox/util/l$d;
    invoke-interface { v0, v2, v2, v2 }, Lcn/manstep/phonemirrorBox/util/l$d;->p(ZII)V
    return-void
  :L6
  .line 12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    const/4 v3, 1
    if-lt v0, v1, :L14
    const/4 v0, 0
  :L7
  .line 13
    invoke-static { v4 }, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;
    move-result-object v0
  .line 14
    invoke-virtual { v0 }, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;
    move-result-object v1
  .line 15
    invoke-virtual { v1, v5 }, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;
    move-result-object v1
  .line 16
    invoke-virtual { v1 }, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;
    move-result-object v1
  .line 17
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/util/l;->a:Lcn/manstep/phonemirrorBox/util/l$d;
    invoke-virtual { v1 }, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedWidths()Landroid/util/Range;
    move-result-object v5
    invoke-virtual { v5 }, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;
    move-result-object v5
    check-cast v5, Ljava/lang/Integer;
    invoke-virtual { v5 }, Ljava/lang/Integer;->intValue()I
    move-result v5
  .line 18
    invoke-virtual { v1 }, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedHeights()Landroid/util/Range;
    move-result-object v1
    invoke-virtual { v1 }, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;
    move-result-object v1
    check-cast v1, Ljava/lang/Integer;
    invoke-virtual { v1 }, Ljava/lang/Integer;->intValue()I
    move-result v1
  .line 19
    invoke-interface { v4, v3, v5, v1 }, Lcn/manstep/phonemirrorBox/util/l$d;->p(ZII)V
  :L8
    goto :L12
  :L9
    move-exception v1
    goto :L13
  :L10
    move-exception v1
  :L11
  .line 20
    invoke-virtual { v1 }, Ljava/io/IOException;->printStackTrace()V
  .line 21
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/util/l;->a:Lcn/manstep/phonemirrorBox/util/l$d;
    invoke-interface { v1, v3, v2, v2 }, Lcn/manstep/phonemirrorBox/util/l$d;->p(ZII)V
  :L12
  .line 22
    invoke-virtual { v0 }, Landroid/media/MediaCodec;->release()V
    goto :L15
  :L13
    invoke-virtual { v0 }, Landroid/media/MediaCodec;->release()V
  .line 23
    throw v1
  :L14
  .line 24
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/l;->a:Lcn/manstep/phonemirrorBox/util/l$d;
    invoke-interface { v0, v3, v2, v2 }, Lcn/manstep/phonemirrorBox/util/l$d;->p(ZII)V
  :L15
    return-void
.end method

.method public o()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/l;->a:Lcn/manstep/phonemirrorBox/util/l$d;
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/util/l;->p()I
    move-result v1
    invoke-interface { v0, v1 }, Lcn/manstep/phonemirrorBox/util/l$d;->f(I)V
    return-void
.end method

.method public q(Landroid/content/Context;Z)V
  .catch Ljava/lang/InterruptedException; { :L1 .. :L3 } :L4
  .registers 9
    if-eqz p1, :L9
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/util/l;->p()I
    move-result v0
    if-eqz v0, :L0
    goto :L9
  :L0
  .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;
    invoke-direct { v0, p1 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/util/l;->n:Ljava/lang/ref/WeakReference;
  :L1
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/l;->o:Lcn/manstep/phonemirrorBox/util/l$f;
    if-eqz v0, :L2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/l;->o:Lcn/manstep/phonemirrorBox/util/l$f;
    invoke-virtual { v0 }, Ljava/lang/Thread;->isAlive()Z
    move-result v0
    if-eqz v0, :L2
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/l;->o:Lcn/manstep/phonemirrorBox/util/l$f;
    invoke-virtual { v0 }, Ljava/lang/Thread;->join()V
  :L2
  .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/l;->p:Lcn/manstep/phonemirrorBox/util/l$g;
    if-eqz v0, :L5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/l;->p:Lcn/manstep/phonemirrorBox/util/l$g;
    invoke-virtual { v0 }, Ljava/lang/Thread;->isAlive()Z
    move-result v0
    if-eqz v0, :L5
  .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/l;->p:Lcn/manstep/phonemirrorBox/util/l$g;
    invoke-virtual { v0 }, Ljava/lang/Thread;->join()V
  :L3
    goto :L5
  :L4
    move-exception v0
  .line 7
    invoke-virtual { v0 }, Ljava/lang/InterruptedException;->printStackTrace()V
  :L5
    const v0, 2131689930
    if-eqz p2, :L6
  .line 8
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/util/l;->r()V
  .line 9
    invoke-static { p1, v0 }, Lcn/manstep/phonemirrorBox/widget/a;->c(Landroid/content/Context;I)V
    goto :L8
  :L6
  .line 10
    invoke-static { }, Landroid/os/SystemClock;->elapsedRealtime()J
    move-result-wide v1
    const-wide/32 v3, 120000
    const p2, 2131689700
    cmp-long v5, v1, v3
    if-gtz v5, :L7
  .line 11
    invoke-virtual { p1, p2 }, Landroid/content/Context;->getString(I)Ljava/lang/String;
    move-result-object p2
    const v0, 2131689932
    invoke-virtual { p1, v0 }, Landroid/content/Context;->getString(I)Ljava/lang/String;
    move-result-object p1
    const/4 v0, 0
    invoke-virtual { p0, p2, p1, v0 }, Lcn/manstep/phonemirrorBox/util/l;->A(Ljava/lang/String;Ljava/lang/String;Z)V
    goto :L8
  :L7
  .line 12
    invoke-virtual { p1, p2 }, Landroid/content/Context;->getString(I)Ljava/lang/String;
    move-result-object p2
    invoke-virtual { p1, v0 }, Landroid/content/Context;->getString(I)Ljava/lang/String;
    move-result-object p1
    const/4 v0, 1
    invoke-virtual { p0, p2, p1, v0 }, Lcn/manstep/phonemirrorBox/util/l;->A(Ljava/lang/String;Ljava/lang/String;Z)V
  :L8
    return-void
  :L9
    const/4 p1, 3
  .line 13
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    invoke-direct { p0, p1, p2 }, Lcn/manstep/phonemirrorBox/util/l;->y(ILjava/lang/Object;)V
    return-void
.end method

.method public s(Landroid/content/Context;)V
  .registers 10
  .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/l;->c:Ljava/util/concurrent/ScheduledExecutorService;
    if-eqz p1, :L0
    invoke-interface { p1 }, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z
    move-result p1
    if-eqz p1, :L1
  :L0
  .line 2
    new-instance p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    const/4 v0, 2
    invoke-direct { p1, v0 }, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/l;->c:Ljava/util/concurrent/ScheduledExecutorService;
  :L1
  .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/l;->d:Ljava/util/concurrent/ConcurrentHashMap;
    const/4 v0, 0
    invoke-static { v0 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-virtual { p1, v1 }, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
    if-nez p1, :L2
  .line 4
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/util/l;->c:Ljava/util/concurrent/ScheduledExecutorService;
    new-instance v2, Lcn/manstep/phonemirrorBox/util/l$h;
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/l;->f:Landroid/hardware/usb/UsbManager;
    invoke-direct { v2, p0, p1 }, Lcn/manstep/phonemirrorBox/util/l$h;-><init>(Lcn/manstep/phonemirrorBox/util/l;Landroid/hardware/usb/UsbManager;)V
    const-wide/16 v3, 0
    const-wide/16 v5, 10
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
    invoke-interface/range { v1 .. v7 }, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    move-result-object p1
  .line 5
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/util/l;->d:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static { v0 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v0
    invoke-virtual { v1, v0, p1 }, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L2
    return-void
.end method

.method public t()V
  .registers 2
    const-string v0, "DeviceCheck,destroy"
  .line 1
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/l;->c:Ljava/util/concurrent/ScheduledExecutorService;
    if-eqz v0, :L0
  .line 3
    invoke-interface { v0 }, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z
    move-result v0
    if-nez v0, :L0
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/l;->c:Ljava/util/concurrent/ScheduledExecutorService;
    invoke-interface { v0 }, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V
    const/4 v0, 0
  .line 5
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/util/l;->c:Ljava/util/concurrent/ScheduledExecutorService;
  :L0
  .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/l;->d:Ljava/util/concurrent/ConcurrentHashMap;
    if-eqz v0, :L1
  .line 7
    invoke-virtual { v0 }, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
  :L1
    return-void
.end method

.method public u(Landroid/hardware/usb/UsbDevice;Z)V
  .registers 5
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "DeviceCheck,findUsbDevice: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    const-string v1, ", "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Landroid/hardware/usb/UsbDevice;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    if-eqz p2, :L0
    const/4 p1, 0
  .line 2
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    invoke-direct { p0, p1, p2 }, Lcn/manstep/phonemirrorBox/util/l;->y(ILjava/lang/Object;)V
  :L0
    return-void
.end method

.method public z(Landroid/app/PendingIntent;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/l;->e:Landroid/app/PendingIntent;
    return-void
.end method
