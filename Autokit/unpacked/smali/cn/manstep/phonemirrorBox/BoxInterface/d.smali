.class public Lcn/manstep/phonemirrorBox/BoxInterface/d;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcn/manstep/phonemirrorBox/BoxInterface/d$f;,
    Lcn/manstep/phonemirrorBox/BoxInterface/d$g;,
    Lcn/manstep/phonemirrorBox/BoxInterface/d$e;
  }
.end annotation

.field private static k:Landroid/os/Handler;

.field public static l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

.field private static m:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List<",
      "Lcn/manstep/phonemirrorBox/BoxInterface/d$g;",
      ">;"
    }
  .end annotation
.end field

.field private static n:Ljava/net/Socket;

.field private final static o:Ljava/util/Vector;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/Vector<",
      "Lcn/manstep/phonemirrorBox/BoxInterface/d$e;",
      ">;"
    }
  .end annotation
.end field

.field private static p:Lcn/manstep/phonemirrorBox/BoxInterface/j;

.field private static q:Z

.field public a:Ljava/lang/ref/WeakReference;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/ref/WeakReference<",
      "Landroid/content/Context;",
      ">;"
    }
  .end annotation
.end field

.field private b:Z

.field private c:Landroid/content/BroadcastReceiver;

.field private d:Landroid/app/PendingIntent;

.field private e:Ljava/lang/Boolean;

.field private f:Ljava/util/concurrent/ScheduledExecutorService;

.field private g:Ljava/util/TimerTask;

.field private h:Ljava/lang/Thread;

.field private i:Lcn/manstep/phonemirrorBox/util/a0;

.field private j:Z

.method static constructor <clinit>()V
  .registers 3
  .line 1
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    sput-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->m:Ljava/util/List;
    const/4 v0, 0
  .line 2
    sput-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->n:Ljava/net/Socket;
  .line 3
    new-instance v0, Ljava/util/Vector;
    invoke-direct { v0 }, Ljava/util/Vector;-><init>()V
    sput-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->o:Ljava/util/Vector;
    const/4 v0, 0
  .line 4
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->q:Z
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
  .registers 5
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;
    const/4 v1, 0
    invoke-direct { v0, v1 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->a:Ljava/lang/ref/WeakReference;
    const/4 v0, 0
  .line 3
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->b:Z
  .line 4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->e:Ljava/lang/Boolean;
  .line 5
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    const/4 v2, 1
    invoke-direct { v0, v2 }, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->f:Ljava/util/concurrent/ScheduledExecutorService;
  .line 6
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->g:Ljava/util/TimerTask;
  .line 7
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->h:Ljava/lang/Thread;
  .line 8
    iput-boolean v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->j:Z
    const-string v0, "BoxInterface"
    const-string v1, "new BoxInterface()"
  .line 9
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 10
    new-instance v0, Ljava/lang/ref/WeakReference;
    invoke-direct { v0, p1 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->a:Ljava/lang/ref/WeakReference;
  .line 11
    new-instance v0, Lcn/manstep/phonemirrorBox/BoxInterface/j;
    invoke-direct { v0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/j;-><init>(Landroid/content/Context;)V
    sput-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->p:Lcn/manstep/phonemirrorBox/BoxInterface/j;
  .line 12
    new-instance p1, Lcn/manstep/phonemirrorBox/BoxInterface/d$a;
    invoke-direct { p1, p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d$a;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/d;)V
    sput-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->k:Landroid/os/Handler;
  .line 13
    new-instance p1, Lcn/manstep/phonemirrorBox/util/a0;
    new-instance v0, Landroid/os/Handler;
    invoke-static { }, Landroid/os/Looper;->myLooper()Landroid/os/Looper;
    move-result-object v1
    invoke-direct { v0, v1 }, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    const-wide/16 v1, 500
    invoke-direct { p1, v1, v2, v0 }, Lcn/manstep/phonemirrorBox/util/a0;-><init>(JLandroid/os/Handler;)V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i:Lcn/manstep/phonemirrorBox/util/a0;
  .line 14
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->Y()V
    return-void
.end method

.method public static A()Z
  .registers 3
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->d()I
    move-result v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->B(I)Z
    move-result v0
    return v0
.end method

.method public static B(I)Z
  .registers 2
    const/4 v0, 4
    if-ne p0, v0, :L0
    const/4 p0, 1
    goto :L1
  :L0
    const/4 p0, 0
  :L1
    return p0
.end method

.method public static C()Z
  .registers 1
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->f()I
    move-result v0
    if-nez v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public static E()Z
  .registers 3
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/b;->h:Z
    xor-int/lit8 v0, v0, 1
    return v0
  :L0
    const/4 v0, 0
    return v0
.end method

.method public static F([B)V
  .registers 3
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->m:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcn/manstep/phonemirrorBox/BoxInterface/d$g;
  .line 2
    invoke-interface { v1, p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d$g;->v([B)V
    goto :L0
  :L1
    return-void
.end method

.method public static G()Z
  .registers 1
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->O:Z
    return v0
  :L0
    const/4 v0, 0
    return v0
.end method

.method public static H([BI)Z
  .registers 3
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->p:Lcn/manstep/phonemirrorBox/BoxInterface/j;
    invoke-virtual { v0, p0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/j;->p([BI)Z
    move-result p0
    return p0
.end method

.method public static I()Z
  .registers 2
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z
    move-result v0
    const/4 v1, 0
    if-eqz v0, :L0
  .line 2
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->W0(I)Z
    move-result v0
    return v0
  :L0
    return v1
.end method

.method public static J(Z)V
  .registers 2
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->p:Lcn/manstep/phonemirrorBox/BoxInterface/j;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/j;->r(Z)V
  :L0
    return-void
.end method

.method public static L(I)V
  .registers 2
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-virtual { v0, p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->T0(I)Z
  :L0
    return-void
.end method

.method public static O(II)Z
  .registers 4
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->k:Landroid/os/Handler;
    const/4 v1, 0
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p0, p1, v1 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object p0
    invoke-virtual { v0, p0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    move-result p0
    return p0
  :L0
    return v1
.end method

.method public static P(IILjava/lang/Object;)Z
  .registers 5
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->k:Landroid/os/Handler;
    const/4 v1, 0
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p0, p1, v1, p2 }, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;
    move-result-object p0
    invoke-virtual { v0, p0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    move-result p0
    return p0
  :L0
    return v1
.end method

.method public static R()V
  .registers 2
    const-string v0, "BoxInterface,sendResetOnceDecoder"
  .line 1
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->q:Z
    if-nez v0, :L0
  .line 3
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    if-eqz v0, :L0
  .line 4
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->z:Lcn/manstep/phonemirrorBox/BoxInterface/b;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/b;->i()V
    const/4 v0, 1
  .line 5
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->q:Z
  :L0
    return-void
.end method

.method public static W(I)V
  .registers 2
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->p:Lcn/manstep/phonemirrorBox/BoxInterface/j;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/j;->s(I)V
  :L0
    return-void
.end method

.method static synthetic a()Ljava/util/List;
  .registers 3
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->m:Ljava/util/List;
    return-object v0
.end method

.method static synthetic b()Ljava/util/Vector;
  .registers 1
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->o:Ljava/util/Vector;
    return-object v0
.end method

.method static synthetic c()Ljava/net/Socket;
  .registers 2
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->n:Ljava/net/Socket;
    return-object v0
.end method

.method static synthetic d(Lcn/manstep/phonemirrorBox/BoxInterface/d;Ljava/lang/Boolean;)Ljava/lang/Boolean;
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->e:Ljava/lang/Boolean;
    return-object p1
.end method

.method public static d0([BI)Z
  .registers 3
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->p:Lcn/manstep/phonemirrorBox/BoxInterface/j;
    invoke-virtual { v0, p0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/j;->u([BI)Z
    move-result p0
    return p0
.end method

.method static synthetic e()Lcn/manstep/phonemirrorBox/BoxInterface/j;
  .registers 1
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->p:Lcn/manstep/phonemirrorBox/BoxInterface/j;
    return-object v0
.end method

.method static synthetic f()Landroid/os/Handler;
  .registers 2
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->k:Landroid/os/Handler;
    return-object v0
.end method

.method public static h()Z
  .registers 2
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    if-eqz v0, :L0
  .line 2
    iget-boolean v0, v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->f:Z
    return v0
  :L0
    const/4 v0, 0
    return v0
.end method

.method public static i()Z
  .registers 2
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    if-nez v0, :L0
    const/4 v0, 0
    return v0
  :L0
  .line 2
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->p:Lcn/manstep/phonemirrorBox/BoxInterface/j;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/j;->l()Z
    move-result v0
    return v0
.end method

.method public static j()V
  .registers 2
    const/4 v0, 0
  .line 1
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->c(I)V
    return-void
.end method

.method public static k(I)V
  .registers 1
  .line 1
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->b(I)V
    return-void
.end method

.method public static m(I)V
  .registers 1
  .line 1
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->c(I)V
    return-void
.end method

.method public static o()Z
  .registers 4
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z
    move-result v0
    if-eqz v0, :L0
    const-string v0, "\u0000"
  .line 2
    invoke-virtual { v0 }, Ljava/lang/String;->getBytes()[B
    move-result-object v0
  .line 3
    array-length v1, v0
  .line 4
    sget-object v2, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-virtual { v2, v0, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->o0([BI)Z
    move-result v0
    return v0
  :L0
    const/4 v0, 0
    return v0
.end method

.method public static q(I)Ljava/lang/String;
  .registers 3
    const/16 v0, 27
    if-eq p0, v0, :L61
    const/16 v0, 230
    if-eq p0, v0, :L60
    const/16 v0, 52
    if-eq p0, v0, :L59
    const/16 v0, 53
    if-eq p0, v0, :L58
    packed-switch p0, :L62
    packed-switch p0, :L63
    packed-switch p0, :L64
    packed-switch p0, :L65
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Unknown: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    return-object p0
  :L0
    const-string p0, "EVT_UPDATE_BOX_BLUETOOTH_NAME"
    return-object p0
  :L1
    const-string p0, "EVT_UPDATE_CONNECTION_URL"
    return-object p0
  :L2
    const-string p0, "EVT_BOX_RELEASE_VIDEO_FOCUS"
    return-object p0
  :L3
    const-string p0, "EVT_BOX_REQUEST_VIDEO_FOCUS"
    return-object p0
  :L4
    const-string p0, "EVT_UPDATE_BLUETOOTH_ONLINE_LIST"
    return-object p0
  :L5
    const-string p0, "EVT_UPDATE_BLUETOOTH_PAIRED_LIST"
    return-object p0
  :L6
    const-string p0, "EVT_BOX_BLUETOOTH_PAIR_START"
    return-object p0
  :L7
    const-string p0, "EVT_BOX_WIFI_DISCONNECTED"
    return-object p0
  :L8
    const-string p0, "EVT_BOX_WIFI_CONNECTED"
    return-object p0
  :L9
    const-string p0, "EVT_BOX_BLUETOOTH_DISCONNECTED"
    return-object p0
  :L10
    const-string p0, "EVT_BOX_BLUETOOTH_CONNECTED"
    return-object p0
  :L11
    const-string p0, "EVT_BOX_CONNECT_DEVICE_FAILED"
    return-object p0
  :L12
    const-string p0, "EVT_BOX_DEVICE_NOT_FOUND"
    return-object p0
  :L13
    const-string p0, "EVT_BOX_DEVICE_FOUND"
    return-object p0
  :L14
    const-string p0, "EVT_BOX_SCANING_DEVICES"
    return-object p0
  :L15
    const-string p0, "EVT_BOX_SUPPORT_AUTO_CONNECT"
    return-object p0
  :L16
    const-string p0, "EVT_BOX_OTA_UPDATE_FAILED"
    return-object p0
  :L17
    const-string p0, "EVT_BOX_OTA_UPDATE_SUCCESS"
    return-object p0
  :L18
    const-string p0, "EVT_BOX_OTA_UPDATE"
    return-object p0
  :L19
    const-string p0, "EVT_BOX_VERSION_SHOW"
    return-object p0
  :L20
    const-string p0, "EVT_BOX_VERSION_ERROR"
    return-object p0
  :L21
    const-string p0, "EVT_BOX_UPDATE_FAILED"
    return-object p0
  :L22
    const-string p0, "EVT_BOX_UPDATE_SUCCESS"
    return-object p0
  :L23
    const-string p0, "EVT_BOX_UPDATE"
    return-object p0
  :L24
    const-string p0, "EVT_BOXMIC_DISCONNECTED"
    return-object p0
  :L25
    const-string p0, "EVT_BOXMIC_CONNECTED"
    return-object p0
  :L26
    const-string p0, "EVT_BOXMIC_DETECTED"
    return-object p0
  :L27
    const-string p0, "EVT_BOX_READY"
    return-object p0
  :L28
    const-string p0, "EVT_BOX_INFO"
    return-object p0
  :L29
    const-string p0, "EVT_APP_RESET"
    return-object p0
  :L30
    const-string p0, "EVT_APP_UPDATE"
    return-object p0
  :L31
    const-string p0, "EVT_APP_LOG_GET"
    return-object p0
  :L32
    const-string p0, "EVT_MANUAL_DISCONNECT_PHONE"
    return-object p0
  :L33
    const-string p0, "EVT_BOX_ENTER_U_MODE"
    return-object p0
  :L34
    const-string p0, "EVT_FAKE_OTG_PLUG_OUT"
    return-object p0
  :L35
    const-string p0, "EVT_FAKE_OTG_PLUG_IN"
    return-object p0
  :L36
    const-string p0, "EVT_SETTINGS_PAGE_BACK"
    return-object p0
  :L37
    const-string p0, "EVT_SETTINGS_PAGE_ENTER"
    return-object p0
  :L38
    const-string p0, "EVT_DECODE_OUTPUT_ERR"
    return-object p0
  :L39
    const-string p0, "EVT_DECODE_CONFIGURE_ERR"
    return-object p0
  :L40
    const-string p0, "EVT_SET_PERMISSION"
    return-object p0
  :L41
    const-string p0, "EVT_CARLIFE_DOWNLOAD"
    return-object p0
  :L42
    const-string p0, "EVT_IPHONE_WORKING"
    return-object p0
  :L43
    const-string p0, "EVT_ANDROID_WORKING"
    return-object p0
  :L44
    const-string p0, "EVT_OTG_PLUG_IN"
    return-object p0
  :L45
    const-string p0, "EVT_OTG_PLUG_OUT"
    return-object p0
  :L46
    const-string p0, "EVT_SCREEN_OFF"
    return-object p0
  :L47
    const-string p0, "EVT_SCREEN_ON"
    return-object p0
  :L48
    const-string p0, "EVT_REG"
    return-object p0
  :L49
    const-string p0, "EVT_NOT_REGIST"
    return-object p0
  :L50
    const-string p0, "EVT_PERMMISION_ASKING"
    return-object p0
  :L51
    const-string p0, "EVT_WAIT_AIRPLAY"
    return-object p0
  :L52
    const-string p0, "EVT_WAIT_HOTPOT"
    return-object p0
  :L53
    const-string p0, "EVT_PHONE_PLUG_IN"
    return-object p0
  :L54
    const-string p0, "EVT_IPHONE_PLUG_IN"
    return-object p0
  :L55
    const-string p0, "EVT_IPHONE_PLUG_OUT"
    return-object p0
  :L56
    const-string p0, "EVT_ANDROID_PLUG_IN"
    return-object p0
  :L57
    const-string p0, "EVT_ANDROID_PLUG_OUT"
    return-object p0
  :L58
    const-string p0, "EVT_WIFI_TRANS_NORMAL"
    return-object p0
  :L59
    const-string p0, "EVT_WIFI_TRANS_ABNORMAL"
    return-object p0
  :L60
    const-string p0, "EVT_UPDATE_CONNECTION_PIN_CODE"
    return-object p0
  :L61
    const-string p0, "EVT_MIC_RECORDING"
    return-object p0
  :L62
  .packed-switch 0
    :L57
    :L56
    :L55
    :L54
    :L53
    :L52
    :L51
    :L50
    :L49
    :L48
    :L47
    :L46
    :L45
    :L44
    :L43
    :L42
    :L41
    :L40
    :L39
    :L38
    :L37
    :L36
    :L35
    :L34
    :L33
    :L32
  .end packed-switch
  :L63
  .packed-switch 32
    :L31
    :L30
    :L29
    :L28
  .end packed-switch
  :L64
  .packed-switch 116
    :L27
    :L26
    :L25
    :L24
    :L23
    :L22
    :L21
    :L20
    :L19
    :L18
    :L17
    :L16
  .end packed-switch
  :L65
  .packed-switch 200
    :L15
    :L14
    :L13
    :L12
    :L11
    :L10
    :L9
    :L8
    :L7
    :L6
    :L5
    :L4
    :L3
    :L2
    :L1
    :L0
  .end packed-switch
.end method

.method public static r()Ljava/lang/String;
  .registers 2
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->B()Ljava/lang/String;
    move-result-object v0
    return-object v0
  :L0
    const-string v0, ""
    return-object v0
.end method

.method public static s()Lcn/manstep/phonemirrorBox/q0/g;
  .registers 3
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->J()Lcn/manstep/phonemirrorBox/q0/g;
    move-result-object v0
    return-object v0
  :L0
    const/4 v0, 0
    return-object v0
.end method

.method public static t()Z
  .registers 1
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->v()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z
    move-result v0
    if-eqz v0, :L0
  .line 3
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->S()Z
    move-result v0
    return v0
  :L0
    const/4 v0, 0
    return v0
.end method

.method public static u()Z
  .registers 4
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->p()Ljava/lang/String;
    move-result-object v0
    const-string v1, "2022.06.02.1010"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
    move-result v0
    if-lez v0, :L0
    const/4 v0, 0
    return v0
  :L0
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->t()Z
    move-result v0
    return v0
.end method

.method public static v()Z
  .registers 3
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->d()I
    move-result v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->w(I)Z
    move-result v0
    return v0
.end method

.method public static w(I)Z
  .registers 2
    const/4 v0, 1
    if-ne p0, v0, :L0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public static x()Z
  .registers 3
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->f()I
    move-result v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->y(I)Z
    move-result v0
    return v0
.end method

.method public static y(I)Z
  .registers 2
    const/4 v0, 2
    if-ne p0, v0, :L0
    const/4 p0, 1
    goto :L1
  :L0
    const/4 p0, 0
  :L1
    return p0
.end method

.method public static z()Z
  .registers 2
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->v()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z
    move-result v0
    if-eqz v0, :L0
  .line 3
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->U()Z
    move-result v0
    return v0
  :L0
    const/4 v0, 0
    return v0
.end method

.method public D()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->j:Z
    return v0
.end method

.method public K(I)V
  .registers 4
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i:Lcn/manstep/phonemirrorBox/util/a0;
    new-instance v1, Lcn/manstep/phonemirrorBox/BoxInterface/d$d;
    invoke-direct { v1, p0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d$d;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/d;I)V
    invoke-virtual { v0, p1, v1 }, Lcn/manstep/phonemirrorBox/util/a0;->c(ILjava/lang/Runnable;)V
  :L0
    return-void
.end method

.method public M(I)V
  .registers 3
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->T0(I)Z
  :L0
    return-void
.end method

.method public N(I)V
  .registers 3
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->x0(I)V
  :L0
    return-void
.end method

.method public Q(Lcn/manstep/phonemirrorBox/BoxInterface/e;)V
  .registers 3
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->G0(Lcn/manstep/phonemirrorBox/BoxInterface/e;)V
  :L0
    return-void
.end method

.method public S(Landroid/view/SurfaceHolder;Z)V
  .registers 4
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    if-eqz v0, :L0
  .line 2
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->z:Lcn/manstep/phonemirrorBox/BoxInterface/b;
    invoke-virtual { v0, p1, p2 }, Lcn/manstep/phonemirrorBox/BoxInterface/b;->j(Landroid/view/SurfaceHolder;Z)V
  :L0
    return-void
.end method

.method public T(III)V
  .registers 5
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    if-eqz v0, :L0
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->z:Lcn/manstep/phonemirrorBox/BoxInterface/b;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1, p2, p3 }, Lcn/manstep/phonemirrorBox/BoxInterface/b;->k(III)V
  :L0
    return-void
.end method

.method public U()V
  .registers 2
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    if-eqz v0, :L0
  .line 2
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->z:Lcn/manstep/phonemirrorBox/BoxInterface/b;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/b;->l()V
  :L0
    return-void
.end method

.method public V(IIII)V
  .registers 6
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1, p2, p3, p4 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->I0(IIII)V
  :L0
    return-void
.end method

.method public X(Z)V
  .registers 2
  .line 1
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->j:Z
    return-void
.end method

.method public Y()V
  .catch Ljava/lang/Exception; { :L3 .. :L4 } :L5
  .registers 16
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/content/Context;
    if-eqz v0, :L6
  .line 2
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->g:Ljava/util/TimerTask;
    if-nez v1, :L6
  .line 3
    new-instance v1, Lcn/manstep/phonemirrorBox/BoxInterface/d$f;
    invoke-direct { v1, p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d$f;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/d;)V
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->g:Ljava/util/TimerTask;
    const-string v1, "BoxInterface,startDetect: Start schedule detect usb"
  .line 4
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 5
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->f:Ljava/util/concurrent/ScheduledExecutorService;
    const/4 v2, 1
    if-nez v1, :L0
  .line 6
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    invoke-direct { v1, v2 }, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->f:Ljava/util/concurrent/ScheduledExecutorService;
  :L0
    const/16 v1, 8000
  .line 7
    invoke-static { }, Landroid/os/SystemClock;->elapsedRealtime()J
    move-result-wide v3
    invoke-static { }, Lcn/manstep/phonemirrorBox/MyApplication;->b()Lcn/manstep/phonemirrorBox/MyApplication;
    move-result-object v5
    iget-wide v5, v5, Lcn/manstep/phonemirrorBox/MyApplication;->b:J
    sub-long/2addr v3, v5
    const-wide/32 v5, 300000
    const/4 v7, 0
    cmp-long v8, v3, v5
    if-gez v8, :L1
  .line 8
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v1
    const-string v3, "BootDelay"
    invoke-virtual { v1, v3, v7 }, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I
    move-result v1
    mul-int/lit16 v1, v1, 1000
  :L1
  .line 9
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "startDetect: delay="
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    const-string v4, "BoxInterface"
    invoke-static { v4, v3 }, Lcn/manstep/phonemirrorBox/util/s;->p(Ljava/lang/String;Ljava/lang/String;)V
  .line 10
    iget-object v8, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->f:Ljava/util/concurrent/ScheduledExecutorService;
    iget-object v9, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->g:Ljava/util/TimerTask;
    int-to-long v10, v1
    const-wide/16 v12, 2000
    sget-object v14, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
    invoke-interface/range { v8 .. v14 }, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
  .line 11
    new-instance v1, Lcn/manstep/phonemirrorBox/BoxInterface/d$c;
    invoke-direct { v1, p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d$c;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/d;)V
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->c:Landroid/content/BroadcastReceiver;
  .line 12
    new-instance v1, Landroid/content/Intent;
    const-string v3, "cn.manstep.phonemirror.USB_PERMISSION"
    invoke-direct { v1, v3 }, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    invoke-static { v0, v7, v1, v7 }, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    move-result-object v1
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->d:Landroid/app/PendingIntent;
  .line 13
    new-instance v1, Landroid/content/IntentFilter;
    invoke-direct { v1, v3 }, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
  :L2
    const/4 v3, 5
    if-ge v7, v3, :L6
  :L3
  .line 14
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->c:Landroid/content/BroadcastReceiver;
    invoke-virtual { v0, v3, v1 }, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
  .line 15
    iput-boolean v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->b:Z
  :L4
    goto :L6
  :L5
    move-exception v3
  .line 16
    invoke-static { v3 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object v3
    invoke-static { v3 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    add-int/lit8 v7, v7, 1
    goto :L2
  :L6
    return-void
.end method

.method public Z()V
  .registers 3
    const-string v0, "BoxInterfacestartMirror: ####"
  .line 1
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/content/Context;
    if-eqz v0, :L2
  .line 3
    sget-object v1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    if-nez v1, :L0
  .line 4
    new-instance v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-direct { v1, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;-><init>(Landroid/content/Context;)V
    sput-object v1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    goto :L1
  :L0
  .line 5
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "startMirror: boxProtol not null  "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-object v1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L1
  .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->h:Ljava/lang/Thread;
    if-nez v0, :L2
  .line 7
    new-instance v0, Lcn/manstep/phonemirrorBox/BoxInterface/d$b;
    invoke-direct { v0, p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d$b;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/d;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->h:Ljava/lang/Thread;
    const-string v1, "touch"
  .line 8
    invoke-virtual { v0, v1 }, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
  .line 9
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->h:Ljava/lang/Thread;
    invoke-virtual { v0 }, Ljava/lang/Thread;->start()V
  :L2
    return-void
.end method

.method public a0()V
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L2
  .registers 4
    const-string v0, "BoxInterface"
    const-string v1, "stopDetect: "
  .line 1
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/util/s;->p(Ljava/lang/String;Ljava/lang/String;)V
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->g:Ljava/util/TimerTask;
    const/4 v1, 0
    if-eqz v0, :L5
  .line 3
    invoke-virtual { v0 }, Ljava/util/TimerTask;->cancel()Z
  .line 4
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->g:Ljava/util/TimerTask;
  .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/content/Context;
    if-eqz v0, :L4
  .line 6
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->c:Landroid/content/BroadcastReceiver;
    if-eqz v2, :L4
  :L0
  .line 7
    invoke-virtual { v0, v2 }, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
  :L1
    goto :L3
  :L2
    move-exception v0
  .line 8
    invoke-virtual { v0 }, Ljava/lang/Exception;->printStackTrace()V
  .line 9
    invoke-static { v0 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L3
  .line 10
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->c:Landroid/content/BroadcastReceiver;
  :L4
  .line 11
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->d:Landroid/app/PendingIntent;
  :L5
  .line 12
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->f:Ljava/util/concurrent/ScheduledExecutorService;
    if-eqz v0, :L6
  .line 13
    invoke-interface { v0 }, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V
  .line 14
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->f:Ljava/util/concurrent/ScheduledExecutorService;
  :L6
  .line 15
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->p:Lcn/manstep/phonemirrorBox/BoxInterface/j;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/j;->b()V
    return-void
.end method

.method public b0()V
  .registers 3
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "BoxInterface,stopMirror: boxProtocol="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-object v1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->p:Lcn/manstep/phonemirrorBox/BoxInterface/j;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/j;->b()V
  .line 3
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    if-eqz v0, :L0
  .line 4
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->y()V
    const/4 v0, 0
  .line 5
    sput-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
  :L0
    return-void
.end method

.method public c0(Lcn/manstep/phonemirrorBox/BoxInterface/d$g;)V
  .registers 3
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->m:Ljava/util/List;
    invoke-interface { v0, p1 }, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    return-void
.end method

.method public g(Lcn/manstep/phonemirrorBox/BoxInterface/d$g;)Lcn/manstep/phonemirrorBox/BoxInterface/d;
  .registers 3
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->m:Ljava/util/List;
    invoke-interface { v0, p1 }, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L0
  .line 2
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->m:Ljava/util/List;
    invoke-interface { v0, p1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 3
    invoke-interface { p1, p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d$g;->n(Lcn/manstep/phonemirrorBox/BoxInterface/d;)V
  :L0
    return-object p0
.end method

.method public l(Landroid/content/Context;)V
  .catchall { :L0 .. :L1 } :L8
  .catch Ljava/lang/Exception; { :L2 .. :L4 } :L5
  .catchall { :L2 .. :L4 } :L8
  .catchall { :L6 .. :L9 } :L8
  .registers 4
  .line 1
    monitor-enter p0
  :L0
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->c:Landroid/content/BroadcastReceiver;
  :L1
    if-eqz v0, :L7
  :L2
  .line 3
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->b:Z
    if-eqz v0, :L3
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/content/Context;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->c:Landroid/content/BroadcastReceiver;
    invoke-virtual { v0, v1 }, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    const/4 v0, 0
  .line 5
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->b:Z
  :L3
  .line 6
    new-instance v0, Landroid/content/IntentFilter;
    const-string v1, "cn.manstep.phonemirror.USB_PERMISSION"
    invoke-direct { v0, v1 }, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
  .line 7
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->c:Landroid/content/BroadcastReceiver;
    invoke-virtual { p1, v1, v0 }, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    const/4 v0, 1
  .line 8
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->b:Z
  :L4
    goto :L7
  :L5
    move-exception v0
  :L6
  .line 9
    invoke-static { v0 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L7
  .line 10
    new-instance v0, Ljava/lang/ref/WeakReference;
    invoke-direct { v0, p1 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->a:Ljava/lang/ref/WeakReference;
  .line 11
    monitor-exit p0
    return-void
  :L8
    move-exception p1
    monitor-exit p0
  :L9
    throw p1
.end method

.method public n(I)V
  .registers 5
  .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->j:Z
    if-nez v0, :L0
    return-void
  :L0
  .line 2
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->p:Lcn/manstep/phonemirrorBox/BoxInterface/j;
    if-eqz v0, :L8
  .line 3
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/j;->a()I
    move-result v0
  .line 4
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "checkUsbConnected: checkUsbConnected="
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    const-string v2, "BoxInterface"
    invoke-static { v2, v1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    const/4 v1, 1
    packed-switch v0, :L9
    goto :L8
  :L1
    const/16 p1, 12
  .line 5
    invoke-static { v1, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
    goto :L8
  :L2
    const/16 p1, 24
  .line 6
    invoke-static { v1, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
    goto :L8
  :L3
    const/16 p1, 23
  .line 7
    invoke-static { v1, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
    goto :L8
  :L4
    const/16 p1, 22
  .line 8
    invoke-static { v1, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
    goto :L8
  :L5
  .line 9
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/e;->C()Z
    move-result v0
    if-eqz v0, :L8
  .line 10
    rem-int/lit8 p1, p1, 5
    if-nez p1, :L6
  .line 11
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->e:Ljava/lang/Boolean;
  :L6
  .line 12
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->e:Ljava/lang/Boolean;
    invoke-virtual { p1 }, Ljava/lang/Boolean;->booleanValue()Z
    move-result p1
    if-nez p1, :L8
  .line 13
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->p:Lcn/manstep/phonemirrorBox/BoxInterface/j;
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->d:Landroid/app/PendingIntent;
    invoke-virtual { p1, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/j;->q(Landroid/app/PendingIntent;)V
  .line 14
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->e:Ljava/lang/Boolean;
    goto :L8
  :L7
    const/16 p1, 123
  .line 15
    invoke-static { v1, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
  :L8
    return-void
  :L9
  .packed-switch 1
    :L7
    :L5
    :L4
    :L3
    :L2
    :L1
  .end packed-switch
.end method

.method public p()V
  .registers 3
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "BoxInterface,destroy: mlisteners.size="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-object v1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->m:Ljava/util/List;
    invoke-interface { v1 }, Ljava/util/List;->size()I
    move-result v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    const/4 v0, 0
  .line 2
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->q:Z
  .line 3
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->m:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->clear()V
  .line 4
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->a0()V
  .line 5
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->b0()V
    return-void
.end method
