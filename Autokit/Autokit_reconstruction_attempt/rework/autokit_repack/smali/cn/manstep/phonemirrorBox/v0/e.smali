.class public Lcn/manstep/phonemirrorBox/v0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/manstep/phonemirrorBox/d/a$d;
.implements Lcn/manstep/phonemirrorBox/n0/a$e;
.implements Lcn/manstep/phonemirrorBox/BoxInterface/d$g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/manstep/phonemirrorBox/v0/e$d;,
        Lcn/manstep/phonemirrorBox/v0/e$c;
    }
.end annotation


# static fields
.field private static o:Lcn/manstep/phonemirrorBox/v0/e;


# instance fields
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


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/v0/e;->c:Z

    .line 3
    iput v0, p0, Lcn/manstep/phonemirrorBox/v0/e;->d:I

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/v0/e;->e:Ljava/lang/ref/WeakReference;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/v0/e;->i:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/v0/e;->j:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/v0/e;->k:Ljava/util/List;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/v0/e;->l:Ljava/util/List;

    .line 9
    new-instance v0, Lcn/manstep/phonemirrorBox/v0/e$c;

    invoke-direct {v0, p0}, Lcn/manstep/phonemirrorBox/v0/e$c;-><init>(Lcn/manstep/phonemirrorBox/v0/e;)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/v0/e;->n:Lcn/manstep/phonemirrorBox/v0/e$c;

    .line 10
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/v0/e;->e:Ljava/lang/ref/WeakReference;

    .line 11
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/e;->n:Lcn/manstep/phonemirrorBox/v0/e$c;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/v0/e$c;->a()V

    .line 12
    new-instance v0, Lcn/manstep/phonemirrorBox/v0/e$a;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/manstep/phonemirrorBox/v0/e$a;-><init>(Lcn/manstep/phonemirrorBox/v0/e;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    .line 13
    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/manstep/phonemirrorBox/v0/a;->q(Landroid/content/Context;)V

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

    if-nez v0, :cond_27

    const-string v0, "Uilogic getInstance"

    .line 2
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcn/manstep/phonemirrorBox/v0/e;

    invoke-direct {v0, p0}, Lcn/manstep/phonemirrorBox/v0/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;

    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Uilogic getInstance: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    goto :goto_44

    .line 5
    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "We have Uilogic already: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 6
    instance-of v0, p0, Lcn/manstep/phonemirrorBox/Main1Activity;

    if-nez v0, :cond_44

    .line 7
    invoke-static {p0}, Lcn/manstep/phonemirrorBox/v0/e;->r(Landroid/content/Context;)V

    :cond_44
    :goto_44
    const/4 p0, 0x5

    .line 8
    invoke-static {p0}, Lcn/manstep/phonemirrorBox/v0/e;->x(I)V

    return-void
.end method

.method public static C()Z
    .registers 2

    .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;

    if-eqz v0, :cond_7

    .line 2
    iget-boolean v0, v0, Lcn/manstep/phonemirrorBox/v0/e;->c:Z

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public static D(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_a6

    packed-switch p0, :pswitch_data_e8

    packed-switch p0, :pswitch_data_fc

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1b
    const-string p0, "NOTICE_BOX_INFO"

    return-object p0

    :pswitch_1e
    const-string p0, "NOTICE_WIFI_TRANS_NORMAL"

    return-object p0

    :pswitch_21
    const-string p0, "NOTICE_WIFI_TRANS_ABNORMAL"

    return-object p0

    :pswitch_24
    const-string p0, "NOTICE_UPDATE_BOX_BLUETOOTH_NAME"

    return-object p0

    :pswitch_27
    const-string p0, "NOTICE_BOX_PLUG_OUT"

    return-object p0

    :pswitch_2a
    const-string p0, "NOTICE_HARDWARE_ERROR_WIFI"

    return-object p0

    :pswitch_2d
    const-string p0, "NOTICE_HARDWARE_ERROR_BT"

    return-object p0

    :pswitch_30
    const-string p0, "NOTICE_UPDATE_CONNECTION_URL"

    return-object p0

    :pswitch_33
    const-string p0, "NOTICE_BOX_RELEASE_VIDEO_FOCUS"

    return-object p0

    :pswitch_36
    const-string p0, "NOTICE_BOX_REQUEST_VIDEO_FOCUS"

    return-object p0

    :pswitch_39
    const-string p0, "NOTICE_CAMERA_CLOSE"

    return-object p0

    :pswitch_3c
    const-string p0, "NOTICE_CAMERA_OPEN"

    return-object p0

    :pswitch_3f
    const-string p0, "NOTICE_CAMERA_SET_CONFIG"

    return-object p0

    :pswitch_42
    const-string p0, "NOTICE_CAMERA_GET_CONFIG"

    return-object p0

    :pswitch_45
    const-string p0, "NOTICE_MIC_RECORDING"

    return-object p0

    :pswitch_48
    const-string p0, "NOTICE_MANUAL_DISCONNECT_PHONE"

    return-object p0

    :pswitch_4b
    const-string p0, "NOTICE_UPDATE_BLUETOOTH_ONLINE_LIST"

    return-object p0

    :pswitch_4e
    const-string p0, "NOTICE_UPDATE_BLUETOOTH_PAIRED_LIST"

    return-object p0

    :pswitch_51
    const-string p0, "NOTICE_BOX_BLUETOOTH_PAIR_START"

    return-object p0

    :pswitch_54
    const-string p0, "NOTICE_BOX_WIFI_DISCONNECTED"

    return-object p0

    :pswitch_57
    const-string p0, "NOTICE_BOX_WIFI_CONNECTED"

    return-object p0

    :pswitch_5a
    const-string p0, "NOTICE_BOX_BLUETOOTH_DISCONNECTED"

    return-object p0

    :pswitch_5d
    const-string p0, "NOTICE_BOX_BLUETOOTH_CONNECTED"

    return-object p0

    :pswitch_60
    const-string p0, "NOTICE_CONNECT_DEVICE_FAILED"

    return-object p0

    :pswitch_63
    const-string p0, "NOTICE_DEVICE_NOT_FOUND"

    return-object p0

    :pswitch_66
    const-string p0, "NOTICE_DEVICE_FOUND"

    return-object p0

    :pswitch_69
    const-string p0, "NOTICE_SCANING_DEVICES"

    return-object p0

    :pswitch_6c
    const-string p0, "NOTICE_SUPPORT_AUTO_CONNECT"

    return-object p0

    :pswitch_6f
    const-string p0, "NOTICE_BOX_ENTER_U_MODE"

    return-object p0

    :pswitch_72
    const-string p0, "NOTICE_FAKE_BOX_PLUG_OUT"

    return-object p0

    :pswitch_75
    const-string p0, "NOTICE_FAKE_BOX_PLUG_IN"

    return-object p0

    :pswitch_78
    const-string p0, "NOTICE_PHONE_DISCONNECTED"

    return-object p0

    :pswitch_7b
    const-string p0, "NOTICE_BOX_PLUG_IN"

    return-object p0

    :pswitch_7e
    const-string p0, "NOTICE_BOX_OTA_UPDATE_FAILED"

    return-object p0

    :pswitch_81
    const-string p0, "NOTICE_BOX_OTA_UPDATE_SUCCESS"

    return-object p0

    :pswitch_84
    const-string p0, "NOTICE_BOX_OTA_UPDATE"

    return-object p0

    :pswitch_87
    const-string p0, "NOTICE_DECODE_CONFIGURE_ERR"

    return-object p0

    :pswitch_8a
    const-string p0, "NOTICE_BOX_VERSION_SHOW"

    return-object p0

    :pswitch_8d
    const-string p0, "NOTICE_BOX_VERSION_ERROR"

    return-object p0

    :pswitch_90
    const-string p0, "NOTICE_BOX_UPDATE_FAILED"

    return-object p0

    :pswitch_93
    const-string p0, "NOTICE_BOX_UPDATE_SUCCESS"

    return-object p0

    :pswitch_96
    const-string p0, "NOTICE_BOX_UPDATE"

    return-object p0

    :pswitch_99
    const-string p0, "NOTICE_BOXMIC_DISCONNECTED"

    return-object p0

    :pswitch_9c
    const-string p0, "NOTICE_BOXMIC_CONNECTED"

    return-object p0

    :pswitch_9f
    const-string p0, "NOTICE_BOXMIC_WAIT"

    return-object p0

    :pswitch_a2
    const-string p0, "NOTICE_PHONE_PLUG"

    return-object p0

    nop

    :pswitch_data_a6
    .packed-switch 0x1
        :pswitch_a2
        :pswitch_9f
        :pswitch_9c
        :pswitch_99
        :pswitch_96
        :pswitch_93
        :pswitch_90
        :pswitch_8d
        :pswitch_8a
        :pswitch_87
        :pswitch_84
        :pswitch_81
        :pswitch_7e
        :pswitch_7b
        :pswitch_78
        :pswitch_75
        :pswitch_72
        :pswitch_6f
        :pswitch_6c
        :pswitch_69
        :pswitch_66
        :pswitch_63
        :pswitch_60
        :pswitch_5d
        :pswitch_5a
        :pswitch_57
        :pswitch_54
        :pswitch_51
        :pswitch_4e
        :pswitch_4b
        :pswitch_48
    .end packed-switch

    :pswitch_data_e8
    .packed-switch 0x21
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
    .end packed-switch

    :pswitch_data_fc
    .packed-switch 0x32
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
    .end packed-switch
.end method

.method public static E(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_2c

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown Page("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1a
    const-string p0, "PAGE_CARLIFE_Download"

    return-object p0

    :pswitch_1d
    const-string p0, "PAGE_WAIT"

    return-object p0

    :pswitch_20
    const-string p0, "PAGE_AutoBox_WORK"

    return-object p0

    :pswitch_23
    const-string p0, "PAGE_ANDROID_WORK"

    return-object p0

    :pswitch_26
    const-string p0, "PAGE_ANDROID_AUTH"

    return-object p0

    :pswitch_29
    const-string p0, "PAGE_IDLE"

    return-object p0

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
    .end packed-switch
.end method

.method public static F()V
    .registers 2

    const-string v0, "Uilogic,releaseInstance"

    .line 1
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;

    if-eqz v0, :cond_f

    .line 3
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/v0/e;->s()V

    const/4 v0, 0x0

    .line 4
    sput-object v0, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;

    .line 5
    :cond_f
    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/v0/a;->E()V

    return-void
.end method

.method private G()V
    .registers 2

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2
    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/v0/a;->a()V

    :cond_d
    return-void
.end method

.method public static H(I)V
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Uilogic,sendCarControl: ctrlCmd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;

    if-eqz v0, :cond_7a

    .line 3
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/v0/e;->h:Lcn/manstep/phonemirrorBox/BoxInterface/d;

    if-eqz v0, :cond_7a

    const/16 v0, 0xc8

    if-lt p0, v0, :cond_73

    const/16 v0, 0xcd

    if-gt p0, v0, :cond_73

    .line 4
    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/v0/a;->w()Z

    move-result v1

    const/16 v2, 0xca

    const/4 v3, 0x1

    if-eqz v1, :cond_3e

    if-ne p0, v2, :cond_3d

    .line 5
    invoke-static {v3, v3}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->L(ZZ)V

    .line 6
    sget-object v0, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;

    iget-object v0, v0, Lcn/manstep/phonemirrorBox/v0/e;->h:Lcn/manstep/phonemirrorBox/BoxInterface/d;

    invoke-virtual {v0, p0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->K(I)V

    :cond_3d
    return-void

    :cond_3e
    const/16 v1, 0xcb

    const/4 v4, 0x0

    if-ne p0, v1, :cond_4e

    .line 7
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/c;->n()Lcn/manstep/phonemirrorBox/f0/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/f0/c;->u()I

    .line 8
    invoke-static {v3, v4}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->L(ZZ)V

    goto :goto_73

    :cond_4e
    if-ne p0, v2, :cond_54

    .line 9
    invoke-static {v3, v3}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->L(ZZ)V

    goto :goto_73

    :cond_54
    const/16 v1, 0xc9

    if-ne p0, v1, :cond_63

    .line 10
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/c;->n()Lcn/manstep/phonemirrorBox/f0/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/f0/c;->u()I

    .line 11
    invoke-static {v4, v3}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->L(ZZ)V

    goto :goto_73

    :cond_63
    const/16 v1, 0xcc

    if-eq p0, v1, :cond_69

    if-ne p0, v0, :cond_73

    .line 12
    :cond_69
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/c;->n()Lcn/manstep/phonemirrorBox/f0/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/f0/c;->u()I

    .line 13
    invoke-static {v4, v3}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->L(ZZ)V

    .line 14
    :cond_73
    :goto_73
    sget-object v0, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;

    iget-object v0, v0, Lcn/manstep/phonemirrorBox/v0/e;->h:Lcn/manstep/phonemirrorBox/BoxInterface/d;

    invoke-virtual {v0, p0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->K(I)V

    :cond_7a
    return-void
.end method

.method public static I(I)V
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Uilogic,sendCarControlByKey: cmd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    const/16 v0, 0xcd

    const/16 v1, 0xcc

    const/16 v2, 0x12d

    const/16 v3, 0x12c

    packed-switch p0, :pswitch_data_120

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Uilogic,sendCarControlByKey: Unknown cmd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    goto/16 :goto_11e

    :pswitch_35
    add-int/lit16 p0, p0, 0x11b

    .line 3
    invoke-static {p0}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    goto/16 :goto_11e

    .line 4
    :pswitch_3c
    invoke-static {v2}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    goto/16 :goto_11e

    .line 5
    :pswitch_41
    invoke-static {v3}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    goto/16 :goto_11e

    :pswitch_46
    const/16 p0, 0x67

    .line 6
    invoke-static {p0}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    goto/16 :goto_11e

    :pswitch_4d
    const/16 p0, 0x66

    .line 7
    invoke-static {p0}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    goto/16 :goto_11e

    :pswitch_54
    const/16 p0, 0x65

    .line 8
    invoke-static {p0}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    goto/16 :goto_11e

    :pswitch_5b
    const/16 p0, 0x64

    .line 9
    invoke-static {p0}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    goto/16 :goto_11e

    :pswitch_62
    const/16 p0, 0x68

    .line 10
    invoke-static {p0}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    const/16 p0, 0x69

    .line 11
    invoke-static {p0}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    goto/16 :goto_11e

    .line 12
    :pswitch_6e
    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/e;->C()Z

    move-result p0

    const/4 v0, 0x4

    if-eqz p0, :cond_7b

    const/4 p0, 0x0

    .line 13
    invoke-static {v0, p0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    goto/16 :goto_11e

    :cond_7b
    const/4 p0, 0x1

    .line 14
    invoke-static {v0, p0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    goto/16 :goto_11e

    :pswitch_81
    const/16 p0, 0x6a

    .line 15
    invoke-static {p0}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    goto/16 :goto_11e

    :pswitch_88
    const/16 p0, 0xc8

    .line 16
    invoke-static {p0}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    goto/16 :goto_11e

    :pswitch_8f
    const/4 p0, 0x5

    .line 17
    invoke-static {p0}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    const/4 p0, 0x6

    .line 18
    invoke-static {p0}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    goto/16 :goto_11e

    .line 19
    :pswitch_99
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    goto/16 :goto_11e

    .line 20
    :pswitch_9e
    invoke-static {v1}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    goto/16 :goto_11e

    :pswitch_a3
    const/16 p0, 0xcb

    .line 21
    invoke-static {p0}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    goto/16 :goto_11e

    :pswitch_aa
    const/16 p0, 0xca

    .line 22
    invoke-static {p0}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    goto :goto_11e

    :pswitch_b0
    const/16 p0, 0xc9

    .line 23
    invoke-static {p0}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    goto :goto_11e

    .line 24
    :pswitch_b6
    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object p0

    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/u;->U()Z

    move-result p0

    if-eqz p0, :cond_ce

    .line 25
    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;

    move-result-object p0

    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/v0/a;->v()Z

    move-result p0

    if-eqz p0, :cond_e3

    .line 26
    invoke-static {v3}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    return-void

    .line 27
    :cond_ce
    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;

    move-result-object p0

    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/v0/a;->w()Z

    move-result p0

    if-nez p0, :cond_e7

    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;

    move-result-object p0

    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/v0/a;->v()Z

    move-result p0

    if-eqz p0, :cond_e3

    goto :goto_e7

    .line 28
    :cond_e3
    invoke-static {v1}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    goto :goto_11e

    .line 29
    :cond_e7
    :goto_e7
    invoke-static {v2}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    return-void

    .line 30
    :pswitch_eb
    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object p0

    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/u;->U()Z

    move-result p0

    if-eqz p0, :cond_10d

    .line 31
    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;

    move-result-object p0

    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/v0/a;->w()Z

    move-result p0

    if-nez p0, :cond_109

    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;

    move-result-object p0

    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/v0/a;->v()Z

    move-result p0

    if-eqz p0, :cond_11b

    .line 32
    :cond_109
    invoke-static {v2}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    return-void

    .line 33
    :cond_10d
    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;

    move-result-object p0

    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/v0/a;->v()Z

    move-result p0

    if-eqz p0, :cond_11b

    .line 34
    invoke-static {v3}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    return-void

    .line 35
    :cond_11b
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    :goto_11e
    return-void

    nop

    :pswitch_data_120
    .packed-switch 0x1
        :pswitch_eb
        :pswitch_b6
        :pswitch_b0
        :pswitch_aa
        :pswitch_a3
        :pswitch_9e
        :pswitch_99
        :pswitch_8f
        :pswitch_88
        :pswitch_81
        :pswitch_6e
        :pswitch_62
        :pswitch_5b
        :pswitch_54
        :pswitch_4d
        :pswitch_46
        :pswitch_41
        :pswitch_3c
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
    .end packed-switch
.end method

.method public static J(I)V
    .registers 3

    .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;

    if-eqz v0, :cond_15

    .line 2
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/v0/e;->h:Lcn/manstep/phonemirrorBox/BoxInterface/d;

    if-eqz v0, :cond_15

    const/16 v1, 0xa

    if-ne p0, v1, :cond_12

    const/4 p0, 0x4

    const/4 v0, 0x0

    .line 3
    invoke-static {p0, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    goto :goto_15

    .line 4
    :cond_12
    invoke-virtual {v0, p0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->N(I)V

    :cond_15
    :goto_15
    return-void
.end method

.method public static K(Lcn/manstep/phonemirrorBox/BoxInterface/e;)V
    .registers 2

    .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;

    if-eqz v0, :cond_b

    .line 2
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/v0/e;->h:Lcn/manstep/phonemirrorBox/BoxInterface/d;

    if-eqz v0, :cond_b

    .line 3
    invoke-virtual {v0, p0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->Q(Lcn/manstep/phonemirrorBox/BoxInterface/e;)V

    :cond_b
    return-void
.end method

.method public static L(IIII)V
    .registers 5

    .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;

    if-eqz v0, :cond_b

    .line 2
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/v0/e;->h:Lcn/manstep/phonemirrorBox/BoxInterface/d;

    if-eqz v0, :cond_b

    .line 3
    invoke-virtual {v0, p0, p1, p2, p3}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->V(IIII)V

    :cond_b
    return-void
.end method

.method public static M(Lcn/manstep/phonemirrorBox/BoxInterface/d$g;)Lcn/manstep/phonemirrorBox/BoxInterface/d;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UiLogic,setBoxInterfaceListener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;

    if-eqz v0, :cond_2f

    .line 3
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/v0/e;->l:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 4
    sget-object v0, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;

    iget-object v0, v0, Lcn/manstep/phonemirrorBox/v0/e;->l:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_27
    sget-object v0, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;

    iget-object v0, v0, Lcn/manstep/phonemirrorBox/v0/e;->h:Lcn/manstep/phonemirrorBox/BoxInterface/d;

    invoke-virtual {v0, p0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->g(Lcn/manstep/phonemirrorBox/BoxInterface/d$g;)Lcn/manstep/phonemirrorBox/BoxInterface/d;

    return-object v0

    :cond_2f
    const/4 p0, 0x0

    return-object p0
.end method

.method private N(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/v0/e;->e:Ljava/lang/ref/WeakReference;

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/v0/e;->e:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static O(Lcn/manstep/phonemirrorBox/v0/e$d;)V
    .registers 2

    .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;

    if-eqz v0, :cond_9

    .line 2
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/v0/e;->i:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    return-void
.end method

.method public static P(Z)V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUsbEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Uilogic"

    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/util/s;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;

    if-eqz v0, :cond_28

    .line 3
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/v0/e;->h:Lcn/manstep/phonemirrorBox/BoxInterface/d;

    if-eqz v0, :cond_22

    .line 4
    invoke-virtual {v0, p0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->X(Z)V

    goto :goto_2d

    :cond_22
    const-string p0, "setUsbEnable: instance.mboxInterface = null"

    .line 5
    invoke-static {v1, p0}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d

    :cond_28
    const-string p0, "setUsbEnable: instance = null"

    .line 6
    invoke-static {v1, p0}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2d
    return-void
.end method

.method public static Q(Z)V
    .registers 2

    .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;

    if-eqz v0, :cond_7

    .line 2
    invoke-direct {v0, p0}, Lcn/manstep/phonemirrorBox/v0/e;->R(Z)V

    :cond_7
    return-void
.end method

.method private R(Z)V
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Uilogic,setVisibleInner: setVisible = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    if-eqz p1, :cond_1e

    .line 2
    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/v0/a;->j()V

    goto :goto_25

    .line 3
    :cond_1e
    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/v0/a;->n()V

    .line 4
    :goto_25
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->c:Z

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Uilogic,setVisibleInner: boxWorkMan = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/v0/e;->b:Lcn/manstep/phonemirrorBox/util/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/e;->b:Lcn/manstep/phonemirrorBox/util/b;

    if-nez v0, :cond_76

    .line 7
    iget-boolean p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->c:Z

    if-eqz p1, :cond_4d

    .line 8
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->h:Lcn/manstep/phonemirrorBox/BoxInterface/d;

    if-eqz p1, :cond_75

    .line 9
    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->Y()V

    goto :goto_75

    .line 10
    :cond_4d
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->g:Lcn/manstep/phonemirrorBox/n0/a;

    if-eqz p1, :cond_54

    .line 11
    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/n0/a;->q()V

    .line 12
    :cond_54
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->f:Lcn/manstep/phonemirrorBox/d/a;

    if-eqz p1, :cond_5b

    .line 13
    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/d/a;->l()V

    .line 14
    :cond_5b
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->h:Lcn/manstep/phonemirrorBox/BoxInterface/d;

    if-eqz p1, :cond_75

    .line 15
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->t()Z

    move-result p1

    if-eqz p1, :cond_75

    .line 16
    invoke-static {}, Lcn/manstep/phonemirrorBox/util/j;->c()Lcn/manstep/phonemirrorBox/util/j;

    move-result-object p1

    const-wide/16 v0, 0x320

    new-instance v2, Lcn/manstep/phonemirrorBox/v0/e$b;

    invoke-direct {v2, p0}, Lcn/manstep/phonemirrorBox/v0/e$b;-><init>(Lcn/manstep/phonemirrorBox/v0/e;)V

    const-string v3, "AndroidAuto"

    invoke-virtual {p1, v3, v0, v1, v2}, Lcn/manstep/phonemirrorBox/util/j;->e(Ljava/lang/String;JLjava/lang/Runnable;)Lcn/manstep/phonemirrorBox/util/j;

    :cond_75
    :goto_75
    return-void

    .line 17
    :cond_76
    invoke-virtual {v0, p1}, Lcn/manstep/phonemirrorBox/util/b;->b(Z)V

    const/4 p1, 0x0

    throw p1
.end method

.method public static S(Lcn/manstep/phonemirrorBox/BoxInterface/d$g;)V
    .registers 2

    .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;

    if-eqz v0, :cond_21

    .line 2
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/v0/e;->l:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3
    sget-object v0, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;

    iget-object v0, v0, Lcn/manstep/phonemirrorBox/v0/e;->h:Lcn/manstep/phonemirrorBox/BoxInterface/d;

    invoke-virtual {v0, p0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->c0(Lcn/manstep/phonemirrorBox/BoxInterface/d$g;)V

    .line 4
    sget-object v0, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;

    iget-object v0, v0, Lcn/manstep/phonemirrorBox/v0/e;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_21

    .line 5
    sget-object p0, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;

    iget-object p0, p0, Lcn/manstep/phonemirrorBox/v0/e;->n:Lcn/manstep/phonemirrorBox/v0/e$c;

    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/v0/e$c;->b()V

    :cond_21
    return-void
.end method

.method public static T(Lcn/manstep/phonemirrorBox/v0/e$d;)V
    .registers 2

    .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;

    if-eqz v0, :cond_9

    .line 2
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/v0/e;->i:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_9
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
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/v0/e;->G()V

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
    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/v0/e;->y(I)V

    return-void
.end method

.method static synthetic l(Lcn/manstep/phonemirrorBox/v0/e;IILandroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcn/manstep/phonemirrorBox/v0/e;->u(IILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic m(Lcn/manstep/phonemirrorBox/v0/e;IILjava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcn/manstep/phonemirrorBox/v0/e;->w(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic p(Lcn/manstep/phonemirrorBox/v0/e;III)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcn/manstep/phonemirrorBox/v0/e;->t(III)V

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

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Uilogic changeInstance: context = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;

    if-eqz v0, :cond_4e

    .line 3
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/v0/e;->n:Lcn/manstep/phonemirrorBox/v0/e$c;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/v0/e$c;->b()V

    .line 4
    sget-object v0, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;

    invoke-direct {v0, p0}, Lcn/manstep/phonemirrorBox/v0/e;->N(Landroid/content/Context;)V

    .line 5
    sget-object v0, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;

    iget-object v0, v0, Lcn/manstep/phonemirrorBox/v0/e;->n:Lcn/manstep/phonemirrorBox/v0/e$c;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/v0/e$c;->a()V

    .line 6
    sget-object v0, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;

    iget-object v0, v0, Lcn/manstep/phonemirrorBox/v0/e;->g:Lcn/manstep/phonemirrorBox/n0/a;

    if-eqz v0, :cond_3c

    .line 7
    invoke-virtual {v0, p0}, Lcn/manstep/phonemirrorBox/n0/a;->g(Landroid/content/Context;)V

    .line 8
    :cond_3c
    sget-object v0, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;

    iget-object v0, v0, Lcn/manstep/phonemirrorBox/v0/e;->f:Lcn/manstep/phonemirrorBox/d/a;

    if-eqz v0, :cond_45

    .line 9
    invoke-virtual {v0, p0}, Lcn/manstep/phonemirrorBox/d/a;->f(Landroid/content/Context;)V

    .line 10
    :cond_45
    sget-object v0, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;

    iget-object v0, v0, Lcn/manstep/phonemirrorBox/v0/e;->h:Lcn/manstep/phonemirrorBox/BoxInterface/d;

    if-eqz v0, :cond_4e

    .line 11
    invoke-virtual {v0, p0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l(Landroid/content/Context;)V

    .line 12
    :cond_4e
    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/manstep/phonemirrorBox/v0/a;->q(Landroid/content/Context;)V

    return-void
.end method

.method private t(III)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/e;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/manstep/phonemirrorBox/v0/e$d;

    .line 2
    invoke-interface {v1, p1, p2, p3}, Lcn/manstep/phonemirrorBox/v0/e$d;->g(III)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private u(IILandroid/os/Bundle;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/e;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/manstep/phonemirrorBox/v0/e$d;

    .line 2
    invoke-interface {v1, p1, p2, p3}, Lcn/manstep/phonemirrorBox/v0/e$d;->s(IILandroid/os/Bundle;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private w(IILjava/lang/String;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/e;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/manstep/phonemirrorBox/v0/e$d;

    .line 2
    invoke-interface {v1, p1, p2, p3}, Lcn/manstep/phonemirrorBox/v0/e$d;->x(IILjava/lang/String;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public static x(I)V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enterModeInner: instance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " val="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;

    if-eqz v0, :cond_25

    .line 3
    invoke-direct {v0, p0}, Lcn/manstep/phonemirrorBox/v0/e;->y(I)V

    :cond_25
    return-void
.end method

.method private y(I)V
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Uilogic,enterModeInner: iModeNow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/manstep/phonemirrorBox/v0/e;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ModeTo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 2
    iget v0, p0, Lcn/manstep/phonemirrorBox/v0/e;->d:I

    if-ne p1, v0, :cond_23

    return-void

    .line 3
    :cond_23
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/e;->h:Lcn/manstep/phonemirrorBox/BoxInterface/d;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->D()Z

    move-result v0

    if-nez v0, :cond_2e

    return-void

    .line 4
    :cond_2e
    iput p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->d:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_188

    const/4 v0, 0x2

    if-eq p1, v0, :cond_140

    const/4 v0, 0x3

    if-eq p1, v0, :cond_11b

    const/4 v0, 0x4

    const-string v2, "Uilogic,enterModeInner: new BoxInterface"

    if-eq p1, v0, :cond_8e

    const/4 v0, 0x5

    if-eq p1, v0, :cond_44

    goto/16 :goto_1cc

    .line 5
    :cond_44
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->f:Lcn/manstep/phonemirrorBox/d/a;

    if-eqz p1, :cond_4d

    .line 6
    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/d/a;->g()V

    .line 7
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/v0/e;->f:Lcn/manstep/phonemirrorBox/d/a;

    .line 8
    :cond_4d
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->g:Lcn/manstep/phonemirrorBox/n0/a;

    if-eqz p1, :cond_56

    .line 9
    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/n0/a;->h()V

    .line 10
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/v0/e;->g:Lcn/manstep/phonemirrorBox/n0/a;

    .line 11
    :cond_56
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->h:Lcn/manstep/phonemirrorBox/BoxInterface/d;

    if-nez p1, :cond_87

    .line 12
    invoke-static {v2}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 13
    new-instance p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/e;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p1, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->h:Lcn/manstep/phonemirrorBox/BoxInterface/d;

    .line 14
    invoke-virtual {p1, p0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->g(Lcn/manstep/phonemirrorBox/BoxInterface/d$g;)Lcn/manstep/phonemirrorBox/BoxInterface/d;

    .line 15
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_75
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_87

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/manstep/phonemirrorBox/BoxInterface/d$g;

    .line 16
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/v0/e;->h:Lcn/manstep/phonemirrorBox/BoxInterface/d;

    invoke-virtual {v1, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->g(Lcn/manstep/phonemirrorBox/BoxInterface/d$g;)Lcn/manstep/phonemirrorBox/BoxInterface/d;

    goto :goto_75

    .line 17
    :cond_87
    iget-boolean p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->c:Z

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/v0/e;->Q(Z)V

    goto/16 :goto_1cc

    .line 18
    :cond_8e
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->f:Lcn/manstep/phonemirrorBox/d/a;

    if-nez p1, :cond_bc

    .line 19
    new-instance p1, Lcn/manstep/phonemirrorBox/d/a;

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/e;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p1, v0}, Lcn/manstep/phonemirrorBox/d/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->f:Lcn/manstep/phonemirrorBox/d/a;

    .line 20
    invoke-virtual {p1, p0}, Lcn/manstep/phonemirrorBox/d/a;->e(Lcn/manstep/phonemirrorBox/d/a$d;)V

    .line 21
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->j:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_aa
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bc

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/manstep/phonemirrorBox/d/a$d;

    .line 22
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/v0/e;->f:Lcn/manstep/phonemirrorBox/d/a;

    invoke-virtual {v1, v0}, Lcn/manstep/phonemirrorBox/d/a;->e(Lcn/manstep/phonemirrorBox/d/a$d;)V

    goto :goto_aa

    .line 23
    :cond_bc
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->g:Lcn/manstep/phonemirrorBox/n0/a;

    if-nez p1, :cond_ea

    .line 24
    new-instance p1, Lcn/manstep/phonemirrorBox/n0/a;

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/e;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p1, v0}, Lcn/manstep/phonemirrorBox/n0/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->g:Lcn/manstep/phonemirrorBox/n0/a;

    .line 25
    invoke-virtual {p1, p0}, Lcn/manstep/phonemirrorBox/n0/a;->f(Lcn/manstep/phonemirrorBox/n0/a$e;)Lcn/manstep/phonemirrorBox/n0/a;

    .line 26
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->k:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ea

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/manstep/phonemirrorBox/n0/a$e;

    .line 27
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/v0/e;->g:Lcn/manstep/phonemirrorBox/n0/a;

    invoke-virtual {v1, v0}, Lcn/manstep/phonemirrorBox/n0/a;->f(Lcn/manstep/phonemirrorBox/n0/a$e;)Lcn/manstep/phonemirrorBox/n0/a;

    goto :goto_d8

    .line 28
    :cond_ea
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->h:Lcn/manstep/phonemirrorBox/BoxInterface/d;

    if-nez p1, :cond_1cc

    .line 29
    invoke-static {v2}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 30
    new-instance p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/e;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p1, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->h:Lcn/manstep/phonemirrorBox/BoxInterface/d;

    .line 31
    invoke-virtual {p1, p0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->g(Lcn/manstep/phonemirrorBox/BoxInterface/d$g;)Lcn/manstep/phonemirrorBox/BoxInterface/d;

    .line 32
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_109
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1cc

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/manstep/phonemirrorBox/BoxInterface/d$g;

    .line 33
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/v0/e;->h:Lcn/manstep/phonemirrorBox/BoxInterface/d;

    invoke-virtual {v1, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->g(Lcn/manstep/phonemirrorBox/BoxInterface/d$g;)Lcn/manstep/phonemirrorBox/BoxInterface/d;

    goto :goto_109

    .line 34
    :cond_11b
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->g:Lcn/manstep/phonemirrorBox/n0/a;

    if-eqz p1, :cond_124

    .line 35
    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/n0/a;->h()V

    .line 36
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/v0/e;->g:Lcn/manstep/phonemirrorBox/n0/a;

    .line 37
    :cond_124
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->f:Lcn/manstep/phonemirrorBox/d/a;

    if-eqz p1, :cond_12d

    .line 38
    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/d/a;->g()V

    .line 39
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/v0/e;->f:Lcn/manstep/phonemirrorBox/d/a;

    .line 40
    :cond_12d
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->b:Lcn/manstep/phonemirrorBox/util/b;

    if-nez p1, :cond_13c

    .line 41
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->h:Lcn/manstep/phonemirrorBox/BoxInterface/d;

    if-eqz p1, :cond_1cc

    .line 42
    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->p()V

    .line 43
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/v0/e;->h:Lcn/manstep/phonemirrorBox/BoxInterface/d;

    goto/16 :goto_1cc

    .line 44
    :cond_13c
    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/util/b;->a()V

    throw v1

    .line 45
    :cond_140
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->f:Lcn/manstep/phonemirrorBox/d/a;

    if-eqz p1, :cond_149

    .line 46
    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/d/a;->g()V

    .line 47
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/v0/e;->f:Lcn/manstep/phonemirrorBox/d/a;

    .line 48
    :cond_149
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->b:Lcn/manstep/phonemirrorBox/util/b;

    if-nez p1, :cond_184

    .line 49
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->h:Lcn/manstep/phonemirrorBox/BoxInterface/d;

    if-eqz p1, :cond_156

    .line 50
    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->p()V

    .line 51
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/v0/e;->h:Lcn/manstep/phonemirrorBox/BoxInterface/d;

    .line 52
    :cond_156
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->g:Lcn/manstep/phonemirrorBox/n0/a;

    if-nez p1, :cond_1cc

    .line 53
    new-instance p1, Lcn/manstep/phonemirrorBox/n0/a;

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/e;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p1, v0}, Lcn/manstep/phonemirrorBox/n0/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->g:Lcn/manstep/phonemirrorBox/n0/a;

    .line 54
    invoke-virtual {p1, p0}, Lcn/manstep/phonemirrorBox/n0/a;->f(Lcn/manstep/phonemirrorBox/n0/a$e;)Lcn/manstep/phonemirrorBox/n0/a;

    .line 55
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->k:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_172
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1cc

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/manstep/phonemirrorBox/n0/a$e;

    .line 56
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/v0/e;->g:Lcn/manstep/phonemirrorBox/n0/a;

    invoke-virtual {v1, v0}, Lcn/manstep/phonemirrorBox/n0/a;->f(Lcn/manstep/phonemirrorBox/n0/a$e;)Lcn/manstep/phonemirrorBox/n0/a;

    goto :goto_172

    .line 57
    :cond_184
    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/util/b;->a()V

    throw v1

    .line 58
    :cond_188
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->g:Lcn/manstep/phonemirrorBox/n0/a;

    if-eqz p1, :cond_191

    .line 59
    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/n0/a;->h()V

    .line 60
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/v0/e;->g:Lcn/manstep/phonemirrorBox/n0/a;

    .line 61
    :cond_191
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->b:Lcn/manstep/phonemirrorBox/util/b;

    if-nez p1, :cond_1cd

    .line 62
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->h:Lcn/manstep/phonemirrorBox/BoxInterface/d;

    if-eqz p1, :cond_19e

    .line 63
    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->p()V

    .line 64
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/v0/e;->h:Lcn/manstep/phonemirrorBox/BoxInterface/d;

    .line 65
    :cond_19e
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->f:Lcn/manstep/phonemirrorBox/d/a;

    if-nez p1, :cond_1cc

    .line 66
    new-instance p1, Lcn/manstep/phonemirrorBox/d/a;

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/e;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p1, v0}, Lcn/manstep/phonemirrorBox/d/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->f:Lcn/manstep/phonemirrorBox/d/a;

    .line 67
    invoke-virtual {p1, p0}, Lcn/manstep/phonemirrorBox/d/a;->e(Lcn/manstep/phonemirrorBox/d/a$d;)V

    .line 68
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->j:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1ba
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1cc

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/manstep/phonemirrorBox/d/a$d;

    .line 69
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/v0/e;->f:Lcn/manstep/phonemirrorBox/d/a;

    invoke-virtual {v1, v0}, Lcn/manstep/phonemirrorBox/d/a;->e(Lcn/manstep/phonemirrorBox/d/a$d;)V

    goto :goto_1ba

    :cond_1cc
    :goto_1cc
    return-void

    .line 70
    :cond_1cd
    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/util/b;->a()V

    goto :goto_1d2

    :goto_1d1
    throw v1

    :goto_1d2
    goto :goto_1d1
.end method

.method public static z()Landroid/content/Context;
    .registers 1

    .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/v0/e;->o:Lcn/manstep/phonemirrorBox/v0/e;

    if-eqz v0, :cond_d

    .line 2
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/v0/e;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0

    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public a(ILjava/lang/Object;)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/16 v3, 0x78

    if-ne p1, v3, :cond_20

    if-nez p2, :cond_a

    goto :goto_10

    .line 1
    :cond_a
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2
    :goto_10
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    const/16 p2, 0x46

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v2, v1, p2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_7c

    :cond_20
    const/16 v3, 0x1a

    if-ne p1, v3, :cond_3d

    if-nez p2, :cond_27

    goto :goto_2d

    .line 3
    :cond_27
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4
    :goto_2d
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    const/16 p2, 0x20

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v2, v1, p2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_7c

    :cond_3d
    const/16 v0, 0xd8

    if-ne p1, v0, :cond_4d

    .line 5
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    const/16 v0, 0x3c

    invoke-virtual {p1, v2, v1, v0, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_7c

    :cond_4d
    const/16 v0, 0xd9

    if-ne p1, v0, :cond_5d

    .line 6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    const/16 v0, 0x3d

    invoke-virtual {p1, v2, v1, v0, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_7c

    :cond_5d
    const/16 v0, 0xda

    if-ne p1, v0, :cond_6d

    .line 7
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    const/16 v0, 0x3e

    invoke-virtual {p1, v2, v1, v0, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_7c

    :cond_6d
    const/16 v0, 0xdb

    if-ne p1, v0, :cond_7c

    .line 8
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    const/16 v0, 0x3f

    invoke-virtual {p1, v2, v1, v0, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_7c
    :goto_7c
    return-void
.end method

.method public b(I)V
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Uilogic on_Android_Parse :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_49

    if-eq p1, v2, :cond_35

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2b

    if-eq p1, v0, :cond_21

    goto :goto_65

    .line 2
    :cond_21
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    invoke-virtual {p1, v2, v2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_65

    .line 3
    :cond_2b
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    invoke-virtual {p1, v2, v2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_65

    .line 4
    :cond_35
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    const/4 v0, 0x5

    invoke-virtual {p1, v2, v2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    invoke-virtual {p1, v1, v2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_65

    .line 6
    :cond_49
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    invoke-virtual {p1, v2, v2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 7
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    invoke-virtual {p1, v1, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 8
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-virtual {p1, v1, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_65
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

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Uilogic on_iPhone_Parse :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eqz p1, :cond_26

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1c

    goto :goto_43

    .line 2
    :cond_1c
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    invoke-virtual {p1, v1, v1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_43

    .line 3
    :cond_26
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    invoke-virtual {p1, v1, v1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    invoke-virtual {p1, v2, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_43
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

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Uilogic,on_Box_Phase: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->q(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eqz p1, :cond_344

    const/4 v2, 0x5

    if-eq p1, v1, :cond_33a

    const/4 v3, 0x2

    if-eq p1, v3, :cond_344

    const/4 v4, 0x3

    if-eq p1, v4, :cond_33a

    const/4 v5, 0x6

    const/4 v6, 0x0

    packed-switch p1, :pswitch_data_35e

    const-string v7, "Uilogic"

    packed-switch p1, :pswitch_data_370

    const/16 v6, 0x8

    packed-switch p1, :pswitch_data_37e

    packed-switch p1, :pswitch_data_394

    packed-switch p1, :pswitch_data_3a0

    packed-switch p1, :pswitch_data_3bc

    goto/16 :goto_35d

    .line 2
    :pswitch_47
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    const/16 v2, 0x35

    invoke-virtual {p1, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_35d

    .line 3
    :pswitch_54
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    const/16 v2, 0x28

    invoke-virtual {p1, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_35d

    .line 4
    :pswitch_61
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    const/16 v2, 0x27

    invoke-virtual {p1, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_35d

    .line 5
    :pswitch_6e
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    const/16 v2, 0x26

    invoke-virtual {p1, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_35d

    .line 6
    :pswitch_7b
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    const/16 v2, 0x1e

    invoke-virtual {p1, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_35d

    .line 7
    :pswitch_88
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    const/16 v2, 0x1d

    invoke-virtual {p1, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_35d

    .line 8
    :pswitch_95
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    const/16 v2, 0x1c

    invoke-virtual {p1, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_35d

    .line 9
    :pswitch_a2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on_Box_Phase: EVT_BOX_WIFI_DISCONNECTED phoneIsConnected="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Lcn/manstep/phonemirrorBox/util/s;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    const/16 v2, 0x1b

    invoke-virtual {p1, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_35d

    .line 11
    :pswitch_c7
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    const/16 v2, 0x1a

    invoke-virtual {p1, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_35d

    .line 12
    :pswitch_d4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    const/16 v2, 0x19

    invoke-virtual {p1, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_35d

    .line 13
    :pswitch_e1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    const/16 v2, 0x18

    invoke-virtual {p1, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_35d

    .line 14
    :pswitch_ee
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    const/16 v2, 0x17

    invoke-virtual {p1, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_35d

    .line 15
    :pswitch_fb
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    const/16 v2, 0x16

    invoke-virtual {p1, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_35d

    .line 16
    :pswitch_108
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    const/16 v2, 0x15

    invoke-virtual {p1, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_35d

    .line 17
    :pswitch_115
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    const/16 v2, 0x14

    invoke-virtual {p1, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_35d

    .line 18
    :pswitch_122
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    const/16 v2, 0x13

    invoke-virtual {p1, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_35d

    .line 19
    :pswitch_12f
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-virtual {p1, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_35d

    .line 20
    :pswitch_13c
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-virtual {p1, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_35d

    .line 21
    :pswitch_149
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-virtual {p1, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_35d

    .line 22
    :pswitch_156
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {p1, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_35d

    .line 23
    :pswitch_163
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    invoke-virtual {p1, v1, v0, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_35d

    .line 24
    :pswitch_16e
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {p1, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_35d

    .line 25
    :pswitch_17a
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    invoke-virtual {p1, v1, v0, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_35d

    .line 26
    :pswitch_185
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    invoke-virtual {p1, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_35d

    .line 27
    :pswitch_190
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    invoke-virtual {p1, v1, v0, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_35d

    .line 28
    :pswitch_19b
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    invoke-virtual {p1, v1, v0, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_35d

    .line 29
    :pswitch_1a6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    invoke-virtual {p1, v1, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_35d

    .line 30
    :pswitch_1b1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    invoke-virtual {p1, v1, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_35d

    .line 31
    :pswitch_1bc
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    const/16 v2, 0x37

    invoke-virtual {p1, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_35d

    .line 32
    :pswitch_1c9
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    const/16 v2, 0x36

    invoke-virtual {p1, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_35d

    .line 33
    :pswitch_1d6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    const/16 v2, 0x33

    invoke-virtual {p1, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_35d

    .line 34
    :pswitch_1e3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    const/16 v2, 0x32

    invoke-virtual {p1, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_35d

    .line 35
    :pswitch_1f0
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    const/16 v2, 0x38

    invoke-virtual {p1, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_35d

    .line 36
    :pswitch_1fd
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    invoke-virtual {p1, v1, v6, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_35d

    .line 37
    :pswitch_208
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    invoke-virtual {p1, v1, v6, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_35d

    .line 38
    :pswitch_213
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    invoke-virtual {p1, v1, v6, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_35d

    .line 39
    :pswitch_21e
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    const/16 v2, 0x25

    invoke-virtual {p1, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_35d

    .line 40
    :pswitch_22b
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    const/16 v2, 0x24

    invoke-virtual {p1, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_35d

    .line 41
    :pswitch_238
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    const/16 v2, 0x23

    invoke-virtual {p1, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_35d

    .line 42
    :pswitch_245
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    const/16 v2, 0x22

    invoke-virtual {p1, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_35d

    .line 43
    :pswitch_252
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    const/16 v2, 0x21

    invoke-virtual {p1, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_35d

    .line 44
    :pswitch_25f
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    invoke-virtual {p1, v1, v1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 45
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    const/16 v2, 0x1f

    invoke-virtual {p1, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string p1, "on_Box_Phase: EVT_MANUAL_DISCONNECT_PHONE"

    .line 46
    invoke-static {v7, p1}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_35d

    .line 47
    :pswitch_27a
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    invoke-virtual {p1, v1, v1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 48
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    const/16 v2, 0x12

    invoke-virtual {p1, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_35d

    .line 49
    :pswitch_290
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    invoke-virtual {p1, v1, v1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 50
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    const/16 v2, 0x11

    invoke-virtual {p1, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_35d

    .line 51
    :pswitch_2a6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    invoke-virtual {p1, v1, v1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 52
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    const/16 v2, 0x10

    invoke-virtual {p1, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_35d

    .line 53
    :pswitch_2bc
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    invoke-virtual {p1, v1, v5, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_35d

    .line 54
    :pswitch_2c7
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {p1, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_35d

    .line 55
    :pswitch_2d4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    invoke-virtual {p1, v1, v2, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_35d

    .line 56
    :pswitch_2df
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    invoke-virtual {p1, v1, v1, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_35d

    .line 57
    :pswitch_2ea
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    invoke-virtual {p1, v1, v1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_35d

    .line 58
    :pswitch_2f4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    invoke-virtual {p1, v1, v1, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_35d

    .line 59
    :pswitch_2fe
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    invoke-virtual {p1, v1, v1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 60
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    const/16 v2, 0xe

    invoke-virtual {p1, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_35d

    .line 61
    :pswitch_313
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    const/16 v3, 0x34

    invoke-virtual {p1, v1, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 62
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    invoke-virtual {p1, v1, v1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 63
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    invoke-virtual {p1, v6, v4, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 64
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    invoke-virtual {p1, v6, v2, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_35d

    .line 65
    :cond_33a
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    invoke-virtual {p1, v1, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_35d

    :cond_344
    const-string p1, "UiLogic on_Box_Phase EVT_PHONE_PLUG_OUT"

    .line 66
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 67
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    invoke-virtual {p1, v1, v1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 68
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e;->m:Landroid/os/Handler;

    const/16 v2, 0xf

    invoke-virtual {p1, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_35d
    return-void

    :pswitch_data_35e
    .packed-switch 0xc
        :pswitch_313
        :pswitch_2fe
        :pswitch_2f4
        :pswitch_2ea
        :pswitch_2df
        :pswitch_2d4
        :pswitch_2c7
    .end packed-switch

    :pswitch_data_370
    .packed-switch 0x15
        :pswitch_2bc
        :pswitch_2a6
        :pswitch_290
        :pswitch_27a
        :pswitch_25f
    .end packed-switch

    :pswitch_data_37e
    .packed-switch 0x1b
        :pswitch_252
        :pswitch_245
        :pswitch_238
        :pswitch_22b
        :pswitch_21e
        :pswitch_213
        :pswitch_208
        :pswitch_1fd
        :pswitch_1f0
    .end packed-switch

    :pswitch_data_394
    .packed-switch 0x32
        :pswitch_1e3
        :pswitch_1d6
        :pswitch_1c9
        :pswitch_1bc
    .end packed-switch

    :pswitch_data_3a0
    .packed-switch 0x74
        :pswitch_1b1
        :pswitch_1a6
        :pswitch_19b
        :pswitch_190
        :pswitch_185
        :pswitch_17a
        :pswitch_16e
        :pswitch_163
        :pswitch_156
        :pswitch_149
        :pswitch_13c
        :pswitch_12f
    .end packed-switch

    :pswitch_data_3bc
    .packed-switch 0xc8
        :pswitch_122
        :pswitch_115
        :pswitch_108
        :pswitch_fb
        :pswitch_ee
        :pswitch_e1
        :pswitch_d4
        :pswitch_c7
        :pswitch_a2
        :pswitch_95
        :pswitch_88
        :pswitch_7b
        :pswitch_6e
        :pswitch_61
        :pswitch_54
        :pswitch_47
    .end packed-switch
.end method

.method public s()V
    .registers 2

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0}, Lcn/manstep/phonemirrorBox/v0/e;->y(I)V

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/e;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/e;->n:Lcn/manstep/phonemirrorBox/v0/e$c;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/v0/e$c;->b()V

    return-void
.end method

.method public v([B)V
    .registers 2

    return-void
.end method
