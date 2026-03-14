.class public Lcn/manstep/phonemirrorBox/v0/e;
.super Ljava/lang/Object;
.implements Lcn/manstep/phonemirrorBox/d/a$d;
.implements Lcn/manstep/phonemirrorBox/n0/a$e;
.implements Lcn/manstep/phonemirrorBox/BoxInterface/d$g;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcn/manstep/phonemirrorBox/v0/e$d;,
    Lcn/manstep/phonemirrorBox/v0/e$c;
  }
.end annotation

.field private static o:Lcn/manstep/phonemirrorBox/v0/e;

.field b:Lcn/manstep/phonemirrorBox/util/b;

.field private c:Z

.field private d:I

.field private e:Ljava/lang/ref/WeakReference;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/ref/WeakReference<",
      "Landroid/content/Context;",
      ">;"
    }
  .end annotation
.end field

.field private f:Lcn/manstep/phonemirrorBox/d/a;

.field private g:Lcn/manstep/phonemirrorBox/n0/a;

.field private h:Lcn/manstep/phonemirrorBox/BoxInterface/d;

.field private final i:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List<",
      "Lcn/manstep/phonemirrorBox/v0/e$d;",
      ">;"
    }
  .end annotation
.end field

.field private final j:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List<",
      "Lcn/manstep/phonemirrorBox/d/a$d;",
      ">;"
    }
  .end annotation
.end field

.field private final k:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List<",
      "Lcn/manstep/phonemirrorBox/n0/a$e;",
      ">;"
    }
  .end annotation
.end field

.field private final l:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List<",
      "Lcn/manstep/phonemirrorBox/BoxInterface/d$g;",
      ">;"
    }
  .end annotation
.end field

.field private m:Landroid/os/Handler;

.field private n:Lcn/manstep/phonemirrorBox/v0/e$c;

.method static constructor <clinit>()V
  .registers 0
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
  .registers 4
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 0
  .line 2
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/v0/e;->c:Z
  .line 3
    iput v0, p0, Lcn/manstep/phonemirrorBox/v0/e;->d:I
  .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;
    const/4 v1, 0
    invoke-direct { v0, v1 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/v0/e;->e:Ljava/lang/ref/WeakReference;
  .line 5
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/v0/e;->i:Ljava/util/List;
  .line 6
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/v0/e;->j:Ljava/util/List;
  .line 7
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/v0/e;->k:Ljava/util/List;
  .line 8
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/v0/e;->l:Ljava/util/List;
  .line 9
    new-instance v0, Lcn/manstep/phonemirrorBox/v0/e$c;
    invoke-direct { v0, p0 }, Lcn/manstep/phonemirrorBox/v0/e$c;-><init>(Lcn/manstep/phonemirrorBox/v0/e;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/v0/e;->n:Lcn/manstep/phonemirrorBox/v0/e$c;
  .line 10
    new-instance v0, Ljava/lang/ref/WeakReference;
    invoke-direct { v0, p1 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/v0/e;->e:Ljava/lang/ref/WeakReference;
  .line 11
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/e;->n:Lcn/manstep/phonemirrorBox/v0/e$c;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/v0/e$c;->a()V
  .line 12
    new-instance v0, Lcn/manstep/phonemirrorBox/v0/e$a;
    invoke-static { }, Landroid/os/Looper;->myLooper()Landroid/os/Looper;
    move-result-object v1
    invoke-direct { v0, p0, v1 }, Lcn/manstep/phonemirrorBox/v0/e$a;-><init>(Lcn/manstep/phonemirrorBox/v0/e;Landroid/os/Looper;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
  .line 13
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;
    move-result-object v0
    invoke-virtual { v0, p1 }, Lcn/manstep/phonemirrorBox/v0/a;->q(Landroid/content/Context;)V
    return-void
.end method

.method public static A()Lcn/manstep/phonemirrorBox/v0/e;
  .registers 3
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;
    return-object v0
.end method

.method public static B(Landroid/content/Context;)V
  .registers 3
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;
    if-nez v0, :L0
    const-string v0, "Uilogic getInstance"
  .line 2
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 3
    new-instance v0, Lcn/manstep/phonemirrorBox/v0/e;
    invoke-direct { v0, p0 }, Lcn/manstep/phonemirrorBox/v0/e;-><init>(Landroid/content/Context;)V
    sput-object v0, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;
  .line 4
    new-instance p0, Ljava/lang/StringBuilder;
    invoke-direct { p0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "Uilogic getInstance: "
    invoke-virtual { p0, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-object v0, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;
    invoke-virtual { p0, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    goto :L1
  :L0
  .line 5
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "We have Uilogic already: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-object v1, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 6
    instance-of v0, p0, Lcn/manstep/phonemirrorBox/Main1Activity;
    if-nez v0, :L1
  .line 7
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/v0/e;->r(Landroid/content/Context;)V
  :L1
    const/4 p0, 5
  .line 8
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/v0/e;->x(I)V
    return-void
.end method

.method public static C()Z
  .registers 2
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;
    if-eqz v0, :L0
  .line 2
    iget-boolean v0, v0, Lcn/manstep/phonemirrorBox/v0/e;->c:Z
    return v0
  :L0
    const/4 v0, 0
    return v0
.end method

.method public static D(I)Ljava/lang/String;
  .registers 3
    packed-switch p0, :L46
    packed-switch p0, :L47
    packed-switch p0, :L48
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
    const-string p0, "NOTICE_BOX_INFO"
    return-object p0
  :L1
    const-string p0, "NOTICE_WIFI_TRANS_NORMAL"
    return-object p0
  :L2
    const-string p0, "NOTICE_WIFI_TRANS_ABNORMAL"
    return-object p0
  :L3
    const-string p0, "NOTICE_UPDATE_BOX_BLUETOOTH_NAME"
    return-object p0
  :L4
    const-string p0, "NOTICE_BOX_PLUG_OUT"
    return-object p0
  :L5
    const-string p0, "NOTICE_HARDWARE_ERROR_WIFI"
    return-object p0
  :L6
    const-string p0, "NOTICE_HARDWARE_ERROR_BT"
    return-object p0
  :L7
    const-string p0, "NOTICE_UPDATE_CONNECTION_URL"
    return-object p0
  :L8
    const-string p0, "NOTICE_BOX_RELEASE_VIDEO_FOCUS"
    return-object p0
  :L9
    const-string p0, "NOTICE_BOX_REQUEST_VIDEO_FOCUS"
    return-object p0
  :L10
    const-string p0, "NOTICE_CAMERA_CLOSE"
    return-object p0
  :L11
    const-string p0, "NOTICE_CAMERA_OPEN"
    return-object p0
  :L12
    const-string p0, "NOTICE_CAMERA_SET_CONFIG"
    return-object p0
  :L13
    const-string p0, "NOTICE_CAMERA_GET_CONFIG"
    return-object p0
  :L14
    const-string p0, "NOTICE_MIC_RECORDING"
    return-object p0
  :L15
    const-string p0, "NOTICE_MANUAL_DISCONNECT_PHONE"
    return-object p0
  :L16
    const-string p0, "NOTICE_UPDATE_BLUETOOTH_ONLINE_LIST"
    return-object p0
  :L17
    const-string p0, "NOTICE_UPDATE_BLUETOOTH_PAIRED_LIST"
    return-object p0
  :L18
    const-string p0, "NOTICE_BOX_BLUETOOTH_PAIR_START"
    return-object p0
  :L19
    const-string p0, "NOTICE_BOX_WIFI_DISCONNECTED"
    return-object p0
  :L20
    const-string p0, "NOTICE_BOX_WIFI_CONNECTED"
    return-object p0
  :L21
    const-string p0, "NOTICE_BOX_BLUETOOTH_DISCONNECTED"
    return-object p0
  :L22
    const-string p0, "NOTICE_BOX_BLUETOOTH_CONNECTED"
    return-object p0
  :L23
    const-string p0, "NOTICE_CONNECT_DEVICE_FAILED"
    return-object p0
  :L24
    const-string p0, "NOTICE_DEVICE_NOT_FOUND"
    return-object p0
  :L25
    const-string p0, "NOTICE_DEVICE_FOUND"
    return-object p0
  :L26
    const-string p0, "NOTICE_SCANING_DEVICES"
    return-object p0
  :L27
    const-string p0, "NOTICE_SUPPORT_AUTO_CONNECT"
    return-object p0
  :L28
    const-string p0, "NOTICE_BOX_ENTER_U_MODE"
    return-object p0
  :L29
    const-string p0, "NOTICE_FAKE_BOX_PLUG_OUT"
    return-object p0
  :L30
    const-string p0, "NOTICE_FAKE_BOX_PLUG_IN"
    return-object p0
  :L31
    const-string p0, "NOTICE_PHONE_DISCONNECTED"
    return-object p0
  :L32
    const-string p0, "NOTICE_BOX_PLUG_IN"
    return-object p0
  :L33
    const-string p0, "NOTICE_BOX_OTA_UPDATE_FAILED"
    return-object p0
  :L34
    const-string p0, "NOTICE_BOX_OTA_UPDATE_SUCCESS"
    return-object p0
  :L35
    const-string p0, "NOTICE_BOX_OTA_UPDATE"
    return-object p0
  :L36
    const-string p0, "NOTICE_DECODE_CONFIGURE_ERR"
    return-object p0
  :L37
    const-string p0, "NOTICE_BOX_VERSION_SHOW"
    return-object p0
  :L38
    const-string p0, "NOTICE_BOX_VERSION_ERROR"
    return-object p0
  :L39
    const-string p0, "NOTICE_BOX_UPDATE_FAILED"
    return-object p0
  :L40
    const-string p0, "NOTICE_BOX_UPDATE_SUCCESS"
    return-object p0
  :L41
    const-string p0, "NOTICE_BOX_UPDATE"
    return-object p0
  :L42
    const-string p0, "NOTICE_BOXMIC_DISCONNECTED"
    return-object p0
  :L43
    const-string p0, "NOTICE_BOXMIC_CONNECTED"
    return-object p0
  :L44
    const-string p0, "NOTICE_BOXMIC_WAIT"
    return-object p0
  :L45
    const-string p0, "NOTICE_PHONE_PLUG"
    return-object p0
  :L46
  .packed-switch 1
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
    :L31
    :L30
    :L29
    :L28
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
    :L15
  .end packed-switch
  :L47
  .packed-switch 33
    :L14
    :L13
    :L12
    :L11
    :L10
    :L9
    :L8
    :L7
  .end packed-switch
  :L48
  .packed-switch 50
    :L6
    :L5
    :L4
    :L3
    :L2
    :L1
    :L0
  .end packed-switch
.end method

.method public static E(I)Ljava/lang/String;
  .registers 3
    packed-switch p0, :L6
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Unknown Page("
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p0, ")"
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    return-object p0
  :L0
    const-string p0, "PAGE_CARLIFE_Download"
    return-object p0
  :L1
    const-string p0, "PAGE_WAIT"
    return-object p0
  :L2
    const-string p0, "PAGE_AutoBox_WORK"
    return-object p0
  :L3
    const-string p0, "PAGE_ANDROID_WORK"
    return-object p0
  :L4
    const-string p0, "PAGE_ANDROID_AUTH"
    return-object p0
  :L5
    const-string p0, "PAGE_IDLE"
    return-object p0
  :L6
  .packed-switch 1
    :L5
    :L4
    :L3
    :L2
    :L1
    :L0
  .end packed-switch
.end method

.method public static F()V
  .registers 2
    const-string v0, "Uilogic,releaseInstance"
  .line 1
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    sget-object v0, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;
    if-eqz v0, :L0
  .line 3
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/v0/e;->s()V
    const/4 v0, 0
  .line 4
    sput-object v0, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;
  :L0
  .line 5
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/v0/a;->E()V
    return-void
.end method

.method private G()V
  .registers 2
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/v0/a;->a()V
  :L0
    return-void
.end method

.method public static H(I)V
  .registers 6
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Uilogic,sendCarControl: ctrlCmd = "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    sget-object v0, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;
    if-eqz v0, :L7
  .line 3
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/v0/e;->h:Lcn/manstep/phonemirrorBox/BoxInterface/d;
    if-eqz v0, :L7
    const/16 v0, 200
    if-lt p0, v0, :L6
    const/16 v0, 205
    if-gt p0, v0, :L6
  .line 4
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;
    move-result-object v1
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/v0/a;->w()Z
    move-result v1
    const/16 v2, 202
    const/4 v3, 1
    if-eqz v1, :L1
    if-ne p0, v2, :L0
  .line 5
    invoke-static { v3, v3 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->L(ZZ)V
  .line 6
    sget-object v0, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/v0/e;->h:Lcn/manstep/phonemirrorBox/BoxInterface/d;
    invoke-virtual { v0, p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->K(I)V
  :L0
    return-void
  :L1
    const/16 v1, 203
    const/4 v4, 0
    if-ne p0, v1, :L2
  .line 7
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/c;->n()Lcn/manstep/phonemirrorBox/f0/c;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/f0/c;->u()I
  .line 8
    invoke-static { v3, v4 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->L(ZZ)V
    goto :L6
  :L2
    if-ne p0, v2, :L3
  .line 9
    invoke-static { v3, v3 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->L(ZZ)V
    goto :L6
  :L3
    const/16 v1, 201
    if-ne p0, v1, :L4
  .line 10
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/c;->n()Lcn/manstep/phonemirrorBox/f0/c;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/f0/c;->u()I
  .line 11
    invoke-static { v4, v3 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->L(ZZ)V
    goto :L6
  :L4
    const/16 v1, 204
    if-eq p0, v1, :L5
    if-ne p0, v0, :L6
  :L5
  .line 12
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/c;->n()Lcn/manstep/phonemirrorBox/f0/c;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/f0/c;->u()I
  .line 13
    invoke-static { v4, v3 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->L(ZZ)V
  :L6
  .line 14
    sget-object v0, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/v0/e;->h:Lcn/manstep/phonemirrorBox/BoxInterface/d;
    invoke-virtual { v0, p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->K(I)V
  :L7
    return-void
.end method

.method public static I(I)V
  .registers 5
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Uilogic,sendCarControlByKey: cmd = "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    const/16 v0, 205
    const/16 v1, 204
    const/16 v2, 301
    const/16 v3, 300
    packed-switch p0, :L27
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Uilogic,sendCarControlByKey: Unknown cmd = "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    goto/16 :L26
  :L0
    add-int/lit16 p0, p0, 283
  .line 3
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    goto/16 :L26
  :L1
  .line 4
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    goto/16 :L26
  :L2
  .line 5
    invoke-static { v3 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    goto/16 :L26
  :L3
    const/16 p0, 103
  .line 6
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    goto/16 :L26
  :L4
    const/16 p0, 102
  .line 7
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    goto/16 :L26
  :L5
    const/16 p0, 101
  .line 8
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    goto/16 :L26
  :L6
    const/16 p0, 100
  .line 9
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    goto/16 :L26
  :L7
    const/16 p0, 104
  .line 10
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    const/16 p0, 105
  .line 11
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    goto/16 :L26
  :L8
  .line 12
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/e;->C()Z
    move-result p0
    const/4 v0, 4
    if-eqz p0, :L9
    const/4 p0, 0
  .line 13
    invoke-static { v0, p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
    goto/16 :L26
  :L9
    const/4 p0, 1
  .line 14
    invoke-static { v0, p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
    goto/16 :L26
  :L10
    const/16 p0, 106
  .line 15
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    goto/16 :L26
  :L11
    const/16 p0, 200
  .line 16
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    goto/16 :L26
  :L12
    const/4 p0, 5
  .line 17
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    const/4 p0, 6
  .line 18
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    goto/16 :L26
  :L13
  .line 19
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    goto/16 :L26
  :L14
  .line 20
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    goto/16 :L26
  :L15
    const/16 p0, 203
  .line 21
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    goto/16 :L26
  :L16
    const/16 p0, 202
  .line 22
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    goto :L26
  :L17
    const/16 p0, 201
  .line 23
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    goto :L26
  :L18
  .line 24
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object p0
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/u;->U()Z
    move-result p0
    if-eqz p0, :L19
  .line 25
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;
    move-result-object p0
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/v0/a;->v()Z
    move-result p0
    if-eqz p0, :L20
  .line 26
    invoke-static { v3 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    return-void
  :L19
  .line 27
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;
    move-result-object p0
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/v0/a;->w()Z
    move-result p0
    if-nez p0, :L21
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;
    move-result-object p0
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/v0/a;->v()Z
    move-result p0
    if-eqz p0, :L20
    goto :L21
  :L20
  .line 28
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    goto :L26
  :L21
  .line 29
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    return-void
  :L22
  .line 30
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object p0
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/u;->U()Z
    move-result p0
    if-eqz p0, :L24
  .line 31
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;
    move-result-object p0
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/v0/a;->w()Z
    move-result p0
    if-nez p0, :L23
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;
    move-result-object p0
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/v0/a;->v()Z
    move-result p0
    if-eqz p0, :L25
  :L23
  .line 32
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    return-void
  :L24
  .line 33
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;
    move-result-object p0
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/v0/a;->v()Z
    move-result p0
    if-eqz p0, :L25
  .line 34
    invoke-static { v3 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    return-void
  :L25
  .line 35
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
  :L26
    return-void
  :L27
  .packed-switch 1
    :L22
    :L18
    :L17
    :L16
    :L15
    :L14
    :L13
    :L12
    :L11
    :L10
    :L8
    :L7
    :L6
    :L5
    :L4
    :L3
    :L2
    :L1
    :L0
    :L0
    :L0
    :L0
    :L0
    :L0
    :L0
    :L0
    :L0
    :L0
    :L0
    :L0
  .end packed-switch
.end method

.method public static J(I)V
  .registers 3
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;
    if-eqz v0, :L1
  .line 2
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/v0/e;->h:Lcn/manstep/phonemirrorBox/BoxInterface/d;
    if-eqz v0, :L1
    const/16 v1, 10
    if-ne p0, v1, :L0
    const/4 p0, 4
    const/4 v0, 0
  .line 3
    invoke-static { p0, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
    goto :L1
  :L0
  .line 4
    invoke-virtual { v0, p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->N(I)V
  :L1
    return-void
.end method

.method public static K(Lcn/manstep/phonemirrorBox/BoxInterface/e;)V
  .registers 2
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;
    if-eqz v0, :L0
  .line 2
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/v0/e;->h:Lcn/manstep/phonemirrorBox/BoxInterface/d;
    if-eqz v0, :L0
  .line 3
    invoke-virtual { v0, p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->Q(Lcn/manstep/phonemirrorBox/BoxInterface/e;)V
  :L0
    return-void
.end method

.method public static L(IIII)V
  .registers 5
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;
    if-eqz v0, :L0
  .line 2
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/v0/e;->h:Lcn/manstep/phonemirrorBox/BoxInterface/d;
    if-eqz v0, :L0
  .line 3
    invoke-virtual { v0, p0, p1, p2, p3 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->V(IIII)V
  :L0
    return-void
.end method

.method public static M(Lcn/manstep/phonemirrorBox/BoxInterface/d$g;)Lcn/manstep/phonemirrorBox/BoxInterface/d;
  .registers 3
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "UiLogic,setBoxInterfaceListener: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    sget-object v0, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;
    if-eqz v0, :L1
  .line 3
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/v0/e;->l:Ljava/util/List;
    invoke-interface { v0, p0 }, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L0
  .line 4
    sget-object v0, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/v0/e;->l:Ljava/util/List;
    invoke-interface { v0, p0 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  :L0
  .line 5
    sget-object v0, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/v0/e;->h:Lcn/manstep/phonemirrorBox/BoxInterface/d;
    invoke-virtual { v0, p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->g(Lcn/manstep/phonemirrorBox/BoxInterface/d$g;)Lcn/manstep/phonemirrorBox/BoxInterface/d;
    return-object v0
  :L1
    const/4 p0, 0
    return-object p0
.end method

.method private N(Landroid/content/Context;)V
  .registers 3
    const/4 v0, 0
  .line 1
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/v0/e;->e:Ljava/lang/ref/WeakReference;
  .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;
    invoke-direct { v0, p1 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/v0/e;->e:Ljava/lang/ref/WeakReference;
    return-void
.end method

.method public static O(Lcn/manstep/phonemirrorBox/v0/e$d;)V
  .registers 2
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;
    if-eqz v0, :L0
  .line 2
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/v0/e;->i:Ljava/util/List;
    invoke-interface { v0, p0 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  :L0
    return-void
.end method

.method public static P(Z)V
  .registers 3
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "setUsbEnable: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v1, "Uilogic"
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->p(Ljava/lang/String;Ljava/lang/String;)V
  .line 2
    sget-object v0, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;
    if-eqz v0, :L1
  .line 3
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/v0/e;->h:Lcn/manstep/phonemirrorBox/BoxInterface/d;
    if-eqz v0, :L0
  .line 4
    invoke-virtual { v0, p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->X(Z)V
    goto :L2
  :L0
    const-string p0, "setUsbEnable: instance.mboxInterface = null"
  .line 5
    invoke-static { v1, p0 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
    goto :L2
  :L1
    const-string p0, "setUsbEnable: instance = null"
  .line 6
    invoke-static { v1, p0 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
  :L2
    return-void
.end method

.method public static Q(Z)V
  .registers 2
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;
    if-eqz v0, :L0
  .line 2
    invoke-direct { v0, p0 }, Lcn/manstep/phonemirrorBox/v0/e;->R(Z)V
  :L0
    return-void
.end method

.method private R(Z)V
  .registers 6
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Uilogic,setVisibleInner: setVisible = "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    if-eqz p1, :L0
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/v0/a;->j()V
    goto :L1
  :L0
  .line 3
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/v0/a;->n()V
  :L1
  .line 4
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->c:Z
  .line 5
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Uilogic,setVisibleInner: boxWorkMan = "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/v0/e;->b:Lcn/manstep/phonemirrorBox/util/b;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/e;->b:Lcn/manstep/phonemirrorBox/util/b;
    if-nez v0, :L6
  .line 7
    iget-boolean p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->c:Z
    if-eqz p1, :L2
  .line 8
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->h:Lcn/manstep/phonemirrorBox/BoxInterface/d;
    if-eqz p1, :L5
  .line 9
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->Y()V
    goto :L5
  :L2
  .line 10
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->g:Lcn/manstep/phonemirrorBox/n0/a;
    if-eqz p1, :L3
  .line 11
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/n0/a;->q()V
  :L3
  .line 12
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->f:Lcn/manstep/phonemirrorBox/d/a;
    if-eqz p1, :L4
  .line 13
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/d/a;->l()V
  :L4
  .line 14
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->h:Lcn/manstep/phonemirrorBox/BoxInterface/d;
    if-eqz p1, :L5
  .line 15
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->t()Z
    move-result p1
    if-eqz p1, :L5
  .line 16
    invoke-static { }, Lcn/manstep/phonemirrorBox/util/j;->c()Lcn/manstep/phonemirrorBox/util/j;
    move-result-object p1
    const-wide/16 v0, 800
    new-instance v2, Lcn/manstep/phonemirrorBox/v0/e$b;
    invoke-direct { v2, p0 }, Lcn/manstep/phonemirrorBox/v0/e$b;-><init>(Lcn/manstep/phonemirrorBox/v0/e;)V
    const-string v3, "AndroidAuto"
    invoke-virtual { p1, v3, v0, v1, v2 }, Lcn/manstep/phonemirrorBox/util/j;->e(Ljava/lang/String;JLjava/lang/Runnable;)Lcn/manstep/phonemirrorBox/util/j;
  :L5
    return-void
  :L6
  .line 17
    invoke-virtual { v0, p1 }, Lcn/manstep/phonemirrorBox/util/b;->b(Z)V
    const/4 p1, 0
    throw p1
.end method

.method public static S(Lcn/manstep/phonemirrorBox/BoxInterface/d$g;)V
  .registers 2
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;
    if-eqz v0, :L0
  .line 2
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/v0/e;->l:Ljava/util/List;
    invoke-interface { v0, p0 }, Ljava/util/List;->remove(Ljava/lang/Object;)Z
  .line 3
    sget-object v0, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/v0/e;->h:Lcn/manstep/phonemirrorBox/BoxInterface/d;
    invoke-virtual { v0, p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->c0(Lcn/manstep/phonemirrorBox/BoxInterface/d$g;)V
  .line 4
    sget-object v0, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/v0/e;->e:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    if-ne p0, v0, :L0
  .line 5
    sget-object p0, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/v0/e;->n:Lcn/manstep/phonemirrorBox/v0/e$c;
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/v0/e$c;->b()V
  :L0
    return-void
.end method

.method public static T(Lcn/manstep/phonemirrorBox/v0/e$d;)V
  .registers 2
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;
    if-eqz v0, :L0
  .line 2
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/v0/e;->i:Ljava/util/List;
    invoke-interface { v0, p0 }, Ljava/util/List;->remove(Ljava/lang/Object;)Z
  :L0
    return-void
.end method

.method static synthetic h(Lcn/manstep/phonemirrorBox/v0/e;)Ljava/lang/ref/WeakReference;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/v0/e;->e:Ljava/lang/ref/WeakReference;
    return-object p0
.end method

.method static synthetic i(Lcn/manstep/phonemirrorBox/v0/e;)V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/v0/e;->G()V
    return-void
.end method

.method static synthetic j(Lcn/manstep/phonemirrorBox/v0/e;)Landroid/os/Handler;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    return-object p0
.end method

.method static synthetic k(Lcn/manstep/phonemirrorBox/v0/e;I)V
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/v0/e;->y(I)V
    return-void
.end method

.method static synthetic l(Lcn/manstep/phonemirrorBox/v0/e;IILandroid/os/Bundle;)V
  .registers 4
  .line 1
    invoke-direct { p0, p1, p2, p3 }, Lcn/manstep/phonemirrorBox/v0/e;->u(IILandroid/os/Bundle;)V
    return-void
.end method

.method static synthetic m(Lcn/manstep/phonemirrorBox/v0/e;IILjava/lang/String;)V
  .registers 4
  .line 1
    invoke-direct { p0, p1, p2, p3 }, Lcn/manstep/phonemirrorBox/v0/e;->w(IILjava/lang/String;)V
    return-void
.end method

.method static synthetic p(Lcn/manstep/phonemirrorBox/v0/e;III)V
  .registers 4
  .line 1
    invoke-direct { p0, p1, p2, p3 }, Lcn/manstep/phonemirrorBox/v0/e;->t(III)V
    return-void
.end method

.method static synthetic q(Lcn/manstep/phonemirrorBox/v0/e;)Lcn/manstep/phonemirrorBox/BoxInterface/d;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/v0/e;->h:Lcn/manstep/phonemirrorBox/BoxInterface/d;
    return-object p0
.end method

.method public static r(Landroid/content/Context;)V
  .registers 3
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Uilogic changeInstance: context = "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v1, ","
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-object v1, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    sget-object v0, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;
    if-eqz v0, :L2
  .line 3
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/v0/e;->n:Lcn/manstep/phonemirrorBox/v0/e$c;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/v0/e$c;->b()V
  .line 4
    sget-object v0, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;
    invoke-direct { v0, p0 }, Lcn/manstep/phonemirrorBox/v0/e;->N(Landroid/content/Context;)V
  .line 5
    sget-object v0, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/v0/e;->n:Lcn/manstep/phonemirrorBox/v0/e$c;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/v0/e$c;->a()V
  .line 6
    sget-object v0, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/v0/e;->g:Lcn/manstep/phonemirrorBox/n0/a;
    if-eqz v0, :L0
  .line 7
    invoke-virtual { v0, p0 }, Lcn/manstep/phonemirrorBox/n0/a;->g(Landroid/content/Context;)V
  :L0
  .line 8
    sget-object v0, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/v0/e;->f:Lcn/manstep/phonemirrorBox/d/a;
    if-eqz v0, :L1
  .line 9
    invoke-virtual { v0, p0 }, Lcn/manstep/phonemirrorBox/d/a;->f(Landroid/content/Context;)V
  :L1
  .line 10
    sget-object v0, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/v0/e;->h:Lcn/manstep/phonemirrorBox/BoxInterface/d;
    if-eqz v0, :L2
  .line 11
    invoke-virtual { v0, p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l(Landroid/content/Context;)V
  :L2
  .line 12
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;
    move-result-object v0
    invoke-virtual { v0, p0 }, Lcn/manstep/phonemirrorBox/v0/a;->q(Landroid/content/Context;)V
    return-void
.end method

.method private t(III)V
  .registers 6
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/e;->i:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcn/manstep/phonemirrorBox/v0/e$d;
  .line 2
    invoke-interface { v1, p1, p2, p3 }, Lcn/manstep/phonemirrorBox/v0/e$d;->g(III)V
    goto :L0
  :L1
    return-void
.end method

.method private u(IILandroid/os/Bundle;)V
  .registers 6
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/e;->i:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcn/manstep/phonemirrorBox/v0/e$d;
  .line 2
    invoke-interface { v1, p1, p2, p3 }, Lcn/manstep/phonemirrorBox/v0/e$d;->s(IILandroid/os/Bundle;)V
    goto :L0
  :L1
    return-void
.end method

.method private w(IILjava/lang/String;)V
  .registers 6
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/e;->i:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcn/manstep/phonemirrorBox/v0/e$d;
  .line 2
    invoke-interface { v1, p1, p2, p3 }, Lcn/manstep/phonemirrorBox/v0/e$d;->x(IILjava/lang/String;)V
    goto :L0
  :L1
    return-void
.end method

.method public static x(I)V
  .registers 3
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "enterModeInner: instance="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-object v1, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v1, " val="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    sget-object v0, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;
    if-eqz v0, :L0
  .line 3
    invoke-direct { v0, p0 }, Lcn/manstep/phonemirrorBox/v0/e;->y(I)V
  :L0
    return-void
.end method

.method private y(I)V
  .registers 5
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Uilogic,enterModeInner: iModeNow="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Lcn/manstep/phonemirrorBox/v0/e;->d:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, " ModeTo="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    iget v0, p0, Lcn/manstep/phonemirrorBox/v0/e;->d:I
    if-ne p1, v0, :L0
    return-void
  :L0
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/e;->h:Lcn/manstep/phonemirrorBox/BoxInterface/d;
    if-eqz v0, :L1
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->D()Z
    move-result v0
    if-nez v0, :L1
    return-void
  :L1
  .line 4
    iput p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->d:I
    const/4 v0, 1
    const/4 v1, 0
    if-eq p1, v0, :L22
    const/4 v0, 2
    if-eq p1, v0, :L17
    const/4 v0, 3
    if-eq p1, v0, :L13
    const/4 v0, 4
    const-string v2, "Uilogic,enterModeInner: new BoxInterface"
    if-eq p1, v0, :L7
    const/4 v0, 5
    if-eq p1, v0, :L2
    goto/16 :L26
  :L2
  .line 5
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->f:Lcn/manstep/phonemirrorBox/d/a;
    if-eqz p1, :L3
  .line 6
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/d/a;->g()V
  .line 7
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/v0/e;->f:Lcn/manstep/phonemirrorBox/d/a;
  :L3
  .line 8
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->g:Lcn/manstep/phonemirrorBox/n0/a;
    if-eqz p1, :L4
  .line 9
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/n0/a;->h()V
  .line 10
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/v0/e;->g:Lcn/manstep/phonemirrorBox/n0/a;
  :L4
  .line 11
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->h:Lcn/manstep/phonemirrorBox/BoxInterface/d;
    if-nez p1, :L6
  .line 12
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 13
    new-instance p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/e;->e:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/content/Context;
    invoke-direct { p1, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;-><init>(Landroid/content/Context;)V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->h:Lcn/manstep/phonemirrorBox/BoxInterface/d;
  .line 14
    invoke-virtual { p1, p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->g(Lcn/manstep/phonemirrorBox/BoxInterface/d$g;)Lcn/manstep/phonemirrorBox/BoxInterface/d;
  .line 15
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->l:Ljava/util/List;
    invoke-interface { p1 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object p1
  :L5
    invoke-interface { p1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :L6
    invoke-interface { p1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcn/manstep/phonemirrorBox/BoxInterface/d$g;
  .line 16
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/v0/e;->h:Lcn/manstep/phonemirrorBox/BoxInterface/d;
    invoke-virtual { v1, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->g(Lcn/manstep/phonemirrorBox/BoxInterface/d$g;)Lcn/manstep/phonemirrorBox/BoxInterface/d;
    goto :L5
  :L6
  .line 17
    iget-boolean p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->c:Z
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/v0/e;->Q(Z)V
    goto/16 :L26
  :L7
  .line 18
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->f:Lcn/manstep/phonemirrorBox/d/a;
    if-nez p1, :L9
  .line 19
    new-instance p1, Lcn/manstep/phonemirrorBox/d/a;
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/e;->e:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/content/Context;
    invoke-direct { p1, v0 }, Lcn/manstep/phonemirrorBox/d/a;-><init>(Landroid/content/Context;)V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->f:Lcn/manstep/phonemirrorBox/d/a;
  .line 20
    invoke-virtual { p1, p0 }, Lcn/manstep/phonemirrorBox/d/a;->e(Lcn/manstep/phonemirrorBox/d/a$d;)V
  .line 21
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->j:Ljava/util/List;
    invoke-interface { p1 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object p1
  :L8
    invoke-interface { p1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :L9
    invoke-interface { p1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcn/manstep/phonemirrorBox/d/a$d;
  .line 22
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/v0/e;->f:Lcn/manstep/phonemirrorBox/d/a;
    invoke-virtual { v1, v0 }, Lcn/manstep/phonemirrorBox/d/a;->e(Lcn/manstep/phonemirrorBox/d/a$d;)V
    goto :L8
  :L9
  .line 23
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->g:Lcn/manstep/phonemirrorBox/n0/a;
    if-nez p1, :L11
  .line 24
    new-instance p1, Lcn/manstep/phonemirrorBox/n0/a;
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/e;->e:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/content/Context;
    invoke-direct { p1, v0 }, Lcn/manstep/phonemirrorBox/n0/a;-><init>(Landroid/content/Context;)V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->g:Lcn/manstep/phonemirrorBox/n0/a;
  .line 25
    invoke-virtual { p1, p0 }, Lcn/manstep/phonemirrorBox/n0/a;->f(Lcn/manstep/phonemirrorBox/n0/a$e;)Lcn/manstep/phonemirrorBox/n0/a;
  .line 26
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->k:Ljava/util/List;
    invoke-interface { p1 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object p1
  :L10
    invoke-interface { p1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :L11
    invoke-interface { p1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcn/manstep/phonemirrorBox/n0/a$e;
  .line 27
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/v0/e;->g:Lcn/manstep/phonemirrorBox/n0/a;
    invoke-virtual { v1, v0 }, Lcn/manstep/phonemirrorBox/n0/a;->f(Lcn/manstep/phonemirrorBox/n0/a$e;)Lcn/manstep/phonemirrorBox/n0/a;
    goto :L10
  :L11
  .line 28
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->h:Lcn/manstep/phonemirrorBox/BoxInterface/d;
    if-nez p1, :L26
  .line 29
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 30
    new-instance p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/e;->e:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/content/Context;
    invoke-direct { p1, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;-><init>(Landroid/content/Context;)V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->h:Lcn/manstep/phonemirrorBox/BoxInterface/d;
  .line 31
    invoke-virtual { p1, p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->g(Lcn/manstep/phonemirrorBox/BoxInterface/d$g;)Lcn/manstep/phonemirrorBox/BoxInterface/d;
  .line 32
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->l:Ljava/util/List;
    invoke-interface { p1 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object p1
  :L12
    invoke-interface { p1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :L26
    invoke-interface { p1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcn/manstep/phonemirrorBox/BoxInterface/d$g;
  .line 33
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/v0/e;->h:Lcn/manstep/phonemirrorBox/BoxInterface/d;
    invoke-virtual { v1, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->g(Lcn/manstep/phonemirrorBox/BoxInterface/d$g;)Lcn/manstep/phonemirrorBox/BoxInterface/d;
    goto :L12
  :L13
  .line 34
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->g:Lcn/manstep/phonemirrorBox/n0/a;
    if-eqz p1, :L14
  .line 35
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/n0/a;->h()V
  .line 36
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/v0/e;->g:Lcn/manstep/phonemirrorBox/n0/a;
  :L14
  .line 37
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->f:Lcn/manstep/phonemirrorBox/d/a;
    if-eqz p1, :L15
  .line 38
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/d/a;->g()V
  .line 39
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/v0/e;->f:Lcn/manstep/phonemirrorBox/d/a;
  :L15
  .line 40
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->b:Lcn/manstep/phonemirrorBox/util/b;
    if-nez p1, :L16
  .line 41
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->h:Lcn/manstep/phonemirrorBox/BoxInterface/d;
    if-eqz p1, :L26
  .line 42
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->p()V
  .line 43
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/v0/e;->h:Lcn/manstep/phonemirrorBox/BoxInterface/d;
    goto/16 :L26
  :L16
  .line 44
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/util/b;->a()V
    throw v1
  :L17
  .line 45
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->f:Lcn/manstep/phonemirrorBox/d/a;
    if-eqz p1, :L18
  .line 46
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/d/a;->g()V
  .line 47
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/v0/e;->f:Lcn/manstep/phonemirrorBox/d/a;
  :L18
  .line 48
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->b:Lcn/manstep/phonemirrorBox/util/b;
    if-nez p1, :L21
  .line 49
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->h:Lcn/manstep/phonemirrorBox/BoxInterface/d;
    if-eqz p1, :L19
  .line 50
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->p()V
  .line 51
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/v0/e;->h:Lcn/manstep/phonemirrorBox/BoxInterface/d;
  :L19
  .line 52
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->g:Lcn/manstep/phonemirrorBox/n0/a;
    if-nez p1, :L26
  .line 53
    new-instance p1, Lcn/manstep/phonemirrorBox/n0/a;
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/e;->e:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/content/Context;
    invoke-direct { p1, v0 }, Lcn/manstep/phonemirrorBox/n0/a;-><init>(Landroid/content/Context;)V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->g:Lcn/manstep/phonemirrorBox/n0/a;
  .line 54
    invoke-virtual { p1, p0 }, Lcn/manstep/phonemirrorBox/n0/a;->f(Lcn/manstep/phonemirrorBox/n0/a$e;)Lcn/manstep/phonemirrorBox/n0/a;
  .line 55
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->k:Ljava/util/List;
    invoke-interface { p1 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object p1
  :L20
    invoke-interface { p1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :L26
    invoke-interface { p1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcn/manstep/phonemirrorBox/n0/a$e;
  .line 56
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/v0/e;->g:Lcn/manstep/phonemirrorBox/n0/a;
    invoke-virtual { v1, v0 }, Lcn/manstep/phonemirrorBox/n0/a;->f(Lcn/manstep/phonemirrorBox/n0/a$e;)Lcn/manstep/phonemirrorBox/n0/a;
    goto :L20
  :L21
  .line 57
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/util/b;->a()V
    throw v1
  :L22
  .line 58
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->g:Lcn/manstep/phonemirrorBox/n0/a;
    if-eqz p1, :L23
  .line 59
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/n0/a;->h()V
  .line 60
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/v0/e;->g:Lcn/manstep/phonemirrorBox/n0/a;
  :L23
  .line 61
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->b:Lcn/manstep/phonemirrorBox/util/b;
    if-nez p1, :L27
  .line 62
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->h:Lcn/manstep/phonemirrorBox/BoxInterface/d;
    if-eqz p1, :L24
  .line 63
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->p()V
  .line 64
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/v0/e;->h:Lcn/manstep/phonemirrorBox/BoxInterface/d;
  :L24
  .line 65
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->f:Lcn/manstep/phonemirrorBox/d/a;
    if-nez p1, :L26
  .line 66
    new-instance p1, Lcn/manstep/phonemirrorBox/d/a;
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/e;->e:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/content/Context;
    invoke-direct { p1, v0 }, Lcn/manstep/phonemirrorBox/d/a;-><init>(Landroid/content/Context;)V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->f:Lcn/manstep/phonemirrorBox/d/a;
  .line 67
    invoke-virtual { p1, p0 }, Lcn/manstep/phonemirrorBox/d/a;->e(Lcn/manstep/phonemirrorBox/d/a$d;)V
  .line 68
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->j:Ljava/util/List;
    invoke-interface { p1 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object p1
  :L25
    invoke-interface { p1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :L26
    invoke-interface { p1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcn/manstep/phonemirrorBox/d/a$d;
  .line 69
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/v0/e;->f:Lcn/manstep/phonemirrorBox/d/a;
    invoke-virtual { v1, v0 }, Lcn/manstep/phonemirrorBox/d/a;->e(Lcn/manstep/phonemirrorBox/d/a$d;)V
    goto :L25
  :L26
    return-void
  :L27
  .line 70
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/util/b;->a()V
    goto :L29
  :L28
    throw v1
  :L29
    goto :L28
.end method

.method public static z()Landroid/content/Context;
  .registers 1
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;
    if-eqz v0, :L0
  .line 2
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/v0/e;->e:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/content/Context;
    return-object v0
  :L0
    const/4 v0, 0
    return-object v0
.end method

.method public a(ILjava/lang/Object;)V
  .registers 7
    const/4 v0, 0
    const/4 v1, 4
    const/4 v2, 1
    const/16 v3, 120
    if-ne p1, v3, :L2
    if-nez p2, :L0
    goto :L1
  :L0
  .line 1
    check-cast p2, Ljava/lang/Integer;
    invoke-virtual { p2 }, Ljava/lang/Integer;->intValue()I
    move-result v0
  :L1
  .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    const/16 p2, 70
    invoke-static { v0 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v0
    invoke-virtual { p1, v2, v1, p2, v0 }, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;
    move-result-object p2
    invoke-virtual { p1, p2 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    goto :L9
  :L2
    const/16 v3, 26
    if-ne p1, v3, :L5
    if-nez p2, :L3
    goto :L4
  :L3
  .line 3
    check-cast p2, Ljava/lang/Integer;
    invoke-virtual { p2 }, Ljava/lang/Integer;->intValue()I
    move-result v0
  :L4
  .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    const/16 p2, 32
    invoke-static { v0 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v0
    invoke-virtual { p1, v2, v1, p2, v0 }, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;
    move-result-object p2
    invoke-virtual { p1, p2 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    goto :L9
  :L5
    const/16 v0, 216
    if-ne p1, v0, :L6
  .line 5
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    const/16 v0, 60
    invoke-virtual { p1, v2, v1, v0, p2 }, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;
    move-result-object p2
    invoke-virtual { p1, p2 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    goto :L9
  :L6
    const/16 v0, 217
    if-ne p1, v0, :L7
  .line 6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    const/16 v0, 61
    invoke-virtual { p1, v2, v1, v0, p2 }, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;
    move-result-object p2
    invoke-virtual { p1, p2 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    goto :L9
  :L7
    const/16 v0, 218
    if-ne p1, v0, :L8
  .line 7
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    const/16 v0, 62
    invoke-virtual { p1, v2, v1, v0, p2 }, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;
    move-result-object p2
    invoke-virtual { p1, p2 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    goto :L9
  :L8
    const/16 v0, 219
    if-ne p1, v0, :L9
  .line 8
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    const/16 v0, 63
    invoke-virtual { p1, v2, v1, v0, p2 }, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;
    move-result-object p2
    invoke-virtual { p1, p2 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
  :L9
    return-void
.end method

.method public b(I)V
  .registers 5
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Uilogic on_Android_Parse :"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    const/4 v0, 3
    const/4 v1, 0
    const/4 v2, 1
    if-eqz p1, :L3
    if-eq p1, v2, :L2
    const/4 v1, 2
    if-eq p1, v1, :L1
    if-eq p1, v0, :L0
    goto :L4
  :L0
  .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    invoke-virtual { p1, v2, v2, v0 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    goto :L4
  :L1
  .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    invoke-virtual { p1, v2, v2, v1 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    goto :L4
  :L2
  .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    const/4 v0, 5
    invoke-virtual { p1, v2, v2, v0 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
  .line 5
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    invoke-virtual { p1, v1, v2, v1 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    goto :L4
  :L3
  .line 6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    invoke-virtual { p1, v2, v2, v2 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v2
    invoke-virtual { p1, v2 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
  .line 7
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    invoke-virtual { p1, v1, v0, v1 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
  .line 8
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    const/4 v0, 4
    invoke-virtual { p1, v1, v0, v1 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
  :L4
    return-void
.end method

.method public c(I)V
  .registers 2
    return-void
.end method

.method public d(I)V
  .registers 5
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Uilogic on_iPhone_Parse :"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    const/4 v0, 4
    const/4 v1, 1
    if-eqz p1, :L1
    const/4 v2, 2
    if-eq p1, v2, :L0
    goto :L2
  :L0
  .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    invoke-virtual { p1, v1, v1, v0 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    goto :L2
  :L1
  .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    invoke-virtual { p1, v1, v1, v1 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v1
    invoke-virtual { p1, v1 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
  .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    const/4 v1, 3
    const/4 v2, 0
    invoke-virtual { p1, v2, v1, v2 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v1
    invoke-virtual { p1, v1 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
  .line 5
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    invoke-virtual { p1, v2, v0, v2 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
  :L2
    return-void
.end method

.method public e(Lcn/manstep/phonemirrorBox/d/a;)V
  .registers 2
    return-void
.end method

.method public f(Z)V
  .registers 2
    return-void
.end method

.method public g(Lcn/manstep/phonemirrorBox/n0/a;)V
  .registers 2
    return-void
.end method

.method public n(Lcn/manstep/phonemirrorBox/BoxInterface/d;)V
  .registers 2
    return-void
.end method

.method public o(I)V
  .registers 10
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Uilogic,on_Box_Phase: ("
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, ")"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->q(I)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    const/4 v0, 4
    const/4 v1, 1
    if-eqz p1, :L54
    const/4 v2, 5
    if-eq p1, v1, :L53
    const/4 v3, 2
    if-eq p1, v3, :L54
    const/4 v4, 3
    if-eq p1, v4, :L53
    const/4 v5, 6
    const/4 v6, 0
    packed-switch p1, :L56
    const-string v7, "Uilogic"
    packed-switch p1, :L57
    const/16 v6, 8
    packed-switch p1, :L58
    packed-switch p1, :L59
    packed-switch p1, :L60
    packed-switch p1, :L61
    goto/16 :L55
  :L0
  .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    const/16 v2, 53
    invoke-virtual { p1, v1, v0, v2 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    goto/16 :L55
  :L1
  .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    const/16 v2, 40
    invoke-virtual { p1, v1, v0, v2 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    goto/16 :L55
  :L2
  .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    const/16 v2, 39
    invoke-virtual { p1, v1, v0, v2 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    goto/16 :L55
  :L3
  .line 5
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    const/16 v2, 38
    invoke-virtual { p1, v1, v0, v2 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    goto/16 :L55
  :L4
  .line 6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    const/16 v2, 30
    invoke-virtual { p1, v1, v0, v2 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    goto/16 :L55
  :L5
  .line 7
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    const/16 v2, 29
    invoke-virtual { p1, v1, v0, v2 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    goto/16 :L55
  :L6
  .line 8
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    const/16 v2, 28
    invoke-virtual { p1, v1, v0, v2 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    goto/16 :L55
  :L7
  .line 9
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "on_Box_Phase: EVT_BOX_WIFI_DISCONNECTED phoneIsConnected="
    invoke-virtual { p1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z
    move-result v2
    invoke-virtual { p1, v2 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { v7, p1 }, Lcn/manstep/phonemirrorBox/util/s;->p(Ljava/lang/String;Ljava/lang/String;)V
  .line 10
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    const/16 v2, 27
    invoke-virtual { p1, v1, v0, v2 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    goto/16 :L55
  :L8
  .line 11
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    const/16 v2, 26
    invoke-virtual { p1, v1, v0, v2 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    goto/16 :L55
  :L9
  .line 12
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    const/16 v2, 25
    invoke-virtual { p1, v1, v0, v2 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    goto/16 :L55
  :L10
  .line 13
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    const/16 v2, 24
    invoke-virtual { p1, v1, v0, v2 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    goto/16 :L55
  :L11
  .line 14
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    const/16 v2, 23
    invoke-virtual { p1, v1, v0, v2 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    goto/16 :L55
  :L12
  .line 15
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    const/16 v2, 22
    invoke-virtual { p1, v1, v0, v2 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    goto/16 :L55
  :L13
  .line 16
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    const/16 v2, 21
    invoke-virtual { p1, v1, v0, v2 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    goto/16 :L55
  :L14
  .line 17
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    const/16 v2, 20
    invoke-virtual { p1, v1, v0, v2 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    goto/16 :L55
  :L15
  .line 18
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    const/16 v2, 19
    invoke-virtual { p1, v1, v0, v2 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    goto/16 :L55
  :L16
  .line 19
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    const/16 v2, 13
    invoke-virtual { p1, v1, v0, v2 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    goto/16 :L55
  :L17
  .line 20
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    const/16 v2, 12
    invoke-virtual { p1, v1, v0, v2 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    goto/16 :L55
  :L18
  .line 21
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    const/16 v2, 11
    invoke-virtual { p1, v1, v0, v2 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    goto/16 :L55
  :L19
  .line 22
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    const/16 v2, 9
    invoke-virtual { p1, v1, v0, v2 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    goto/16 :L55
  :L20
  .line 23
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    invoke-virtual { p1, v1, v0, v6 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    goto/16 :L55
  :L21
  .line 24
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    const/4 v2, 7
    invoke-virtual { p1, v1, v0, v2 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    goto/16 :L55
  :L22
  .line 25
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    invoke-virtual { p1, v1, v0, v5 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    goto/16 :L55
  :L23
  .line 26
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    invoke-virtual { p1, v1, v0, v2 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    goto/16 :L55
  :L24
  .line 27
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    invoke-virtual { p1, v1, v0, v0 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    goto/16 :L55
  :L25
  .line 28
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    invoke-virtual { p1, v1, v0, v4 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    goto/16 :L55
  :L26
  .line 29
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    invoke-virtual { p1, v1, v0, v3 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    goto/16 :L55
  :L27
  .line 30
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    invoke-virtual { p1, v1, v0, v1 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    goto/16 :L55
  :L28
  .line 31
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    const/16 v2, 55
    invoke-virtual { p1, v1, v0, v2 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    goto/16 :L55
  :L29
  .line 32
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    const/16 v2, 54
    invoke-virtual { p1, v1, v0, v2 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    goto/16 :L55
  :L30
  .line 33
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    const/16 v2, 51
    invoke-virtual { p1, v1, v0, v2 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    goto/16 :L55
  :L31
  .line 34
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    const/16 v2, 50
    invoke-virtual { p1, v1, v0, v2 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    goto/16 :L55
  :L32
  .line 35
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    const/16 v2, 56
    invoke-virtual { p1, v1, v0, v2 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    goto/16 :L55
  :L33
  .line 36
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    invoke-virtual { p1, v1, v6, v4 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    goto/16 :L55
  :L34
  .line 37
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    invoke-virtual { p1, v1, v6, v1 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    goto/16 :L55
  :L35
  .line 38
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    invoke-virtual { p1, v1, v6, v3 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    goto/16 :L55
  :L36
  .line 39
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    const/16 v2, 37
    invoke-virtual { p1, v1, v0, v2 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    goto/16 :L55
  :L37
  .line 40
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    const/16 v2, 36
    invoke-virtual { p1, v1, v0, v2 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    goto/16 :L55
  :L38
  .line 41
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    const/16 v2, 35
    invoke-virtual { p1, v1, v0, v2 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    goto/16 :L55
  :L39
  .line 42
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    const/16 v2, 34
    invoke-virtual { p1, v1, v0, v2 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    goto/16 :L55
  :L40
  .line 43
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    const/16 v2, 33
    invoke-virtual { p1, v1, v0, v2 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    goto/16 :L55
  :L41
  .line 44
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    invoke-virtual { p1, v1, v1, v1 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v2
    invoke-virtual { p1, v2 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
  .line 45
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    const/16 v2, 31
    invoke-virtual { p1, v1, v0, v2 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    const-string p1, "on_Box_Phase: EVT_MANUAL_DISCONNECT_PHONE"
  .line 46
    invoke-static { v7, p1 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
    goto/16 :L55
  :L42
  .line 47
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    invoke-virtual { p1, v1, v1, v1 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v2
    invoke-virtual { p1, v2 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
  .line 48
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    const/16 v2, 18
    invoke-virtual { p1, v1, v0, v2 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    goto/16 :L55
  :L43
  .line 49
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    invoke-virtual { p1, v1, v1, v1 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v2
    invoke-virtual { p1, v2 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
  .line 50
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    const/16 v2, 17
    invoke-virtual { p1, v1, v0, v2 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    goto/16 :L55
  :L44
  .line 51
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    invoke-virtual { p1, v1, v1, v1 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v2
    invoke-virtual { p1, v2 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
  .line 52
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    const/16 v2, 16
    invoke-virtual { p1, v1, v0, v2 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    goto/16 :L55
  :L45
  .line 53
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    invoke-virtual { p1, v1, v5, v6 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    goto/16 :L55
  :L46
  .line 54
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    const/16 v2, 10
    invoke-virtual { p1, v1, v0, v2 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    goto/16 :L55
  :L47
  .line 55
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    invoke-virtual { p1, v1, v2, v6 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    goto/16 :L55
  :L48
  .line 56
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    invoke-virtual { p1, v1, v1, v5 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    goto/16 :L55
  :L49
  .line 57
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    invoke-virtual { p1, v1, v1, v0 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    goto :L55
  :L50
  .line 58
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    invoke-virtual { p1, v1, v1, v4 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    goto :L55
  :L51
  .line 59
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    invoke-virtual { p1, v1, v1, v1 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v2
    invoke-virtual { p1, v2 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
  .line 60
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    const/16 v2, 14
    invoke-virtual { p1, v1, v0, v2 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    goto :L55
  :L52
  .line 61
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    const/16 v3, 52
    invoke-virtual { p1, v1, v0, v3 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
  .line 62
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    invoke-virtual { p1, v1, v1, v1 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
  .line 63
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    invoke-virtual { p1, v6, v4, v6 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
  .line 64
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    invoke-virtual { p1, v6, v2, v6 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    goto :L55
  :L53
  .line 65
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    invoke-virtual { p1, v1, v1, v2 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    goto :L55
  :L54
    const-string p1, "UiLogic on_Box_Phase EVT_PHONE_PLUG_OUT"
  .line 66
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  .line 67
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    invoke-virtual { p1, v1, v1, v1 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v2
    invoke-virtual { p1, v2 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
  .line 68
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;
    const/16 v2, 15
    invoke-virtual { p1, v1, v0, v2 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
  :L55
    return-void
  :L56
  .packed-switch 12
    :L52
    :L51
    :L50
    :L49
    :L48
    :L47
    :L46
  .end packed-switch
  :L57
  .packed-switch 21
    :L45
    :L44
    :L43
    :L42
    :L41
  .end packed-switch
  :L58
  .packed-switch 27
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
  :L59
  .packed-switch 50
    :L31
    :L30
    :L29
    :L28
  .end packed-switch
  :L60
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
  :L61
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

.method public s()V
  .registers 2
    const/4 v0, 3
  .line 1
    invoke-direct { p0, v0 }, Lcn/manstep/phonemirrorBox/v0/e;->y(I)V
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/e;->i:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->clear()V
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/e;->n:Lcn/manstep/phonemirrorBox/v0/e$c;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/v0/e$c;->b()V
    return-void
.end method

.method public v([B)V
  .registers 2
    return-void
.end method
