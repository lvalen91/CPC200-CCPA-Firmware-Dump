.class public Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil$d;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ECarXUtil"

.field private static volatile instance:Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;


# instance fields
.field private bDeviceAPIReady:Z

.field private bMediaCenterAPIReady:Z

.field private bPolicyAPIReady:Z

.field private mCallAudioAttributes:Landroid/media/AudioAttributes;

.field private mDayNightChangeCallBack:Lcn/manstep/phonemirrorBox/ecarx/a;

.field private mDayNightMode:Lcom/ecarx/sdk/device/daynightmode/IDayNightMode;

.field private mDeviceAPI:Lcom/ecarx/sdk/device/DeviceAPI;

.field private mECarXLog:Lcn/manstep/phonemirrorBox/ecarx/b;

.field private mMediaAudioAttributes:Landroid/media/AudioAttributes;

.field private mMediaCenterAPI:Lcom/ecarx/sdk/mediacenter/MediaCenterAPI;

.field private mMusicClient:Lcom/ecarx/sdk/mediacenter/MusicClient;

.field private mNavAudioAttributes:Landroid/media/AudioAttributes;

.field private mPolicyAPI:Lcom/ecarx/sdk/policy/PolicyAPI;

.field private mRegisterMusicFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private mSiriAudioAttributes:Landroid/media/AudioAttributes;

.field private mThreadPoolExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private mToken:Ljava/lang/Object;

.field private mWeakContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mMediaCenterAPI:Lcom/ecarx/sdk/mediacenter/MediaCenterAPI;

    .line 3
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mDeviceAPI:Lcom/ecarx/sdk/device/DeviceAPI;

    .line 4
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mPolicyAPI:Lcom/ecarx/sdk/policy/PolicyAPI;

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->bMediaCenterAPIReady:Z

    .line 6
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->bDeviceAPIReady:Z

    .line 7
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->bPolicyAPIReady:Z

    .line 8
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mThreadPoolExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 9
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mRegisterMusicFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 10
    :try_start_15
    new-instance v1, Lcn/manstep/phonemirrorBox/ecarx/b;

    invoke-direct {v1}, Lcn/manstep/phonemirrorBox/ecarx/b;-><init>()V

    iput-object v1, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mECarXLog:Lcn/manstep/phonemirrorBox/ecarx/b;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1c} :catch_1d
    .catch Ljava/lang/Error; {:try_start_15 .. :try_end_1c} :catch_1d

    goto :goto_1f

    .line 11
    :catch_1d
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mECarXLog:Lcn/manstep/phonemirrorBox/ecarx/b;

    .line 12
    :goto_1f
    :try_start_1f
    new-instance v1, Lcn/manstep/phonemirrorBox/ecarx/c;

    invoke-direct {v1}, Lcn/manstep/phonemirrorBox/ecarx/c;-><init>()V

    iput-object v1, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mMusicClient:Lcom/ecarx/sdk/mediacenter/MusicClient;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_26} :catch_27
    .catch Ljava/lang/Error; {:try_start_1f .. :try_end_26} :catch_27

    goto :goto_29

    .line 13
    :catch_27
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mMusicClient:Lcom/ecarx/sdk/mediacenter/MusicClient;

    .line 14
    :goto_29
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mNavAudioAttributes:Landroid/media/AudioAttributes;

    .line 15
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mCallAudioAttributes:Landroid/media/AudioAttributes;

    .line 16
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mSiriAudioAttributes:Landroid/media/AudioAttributes;

    .line 17
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mMediaAudioAttributes:Landroid/media/AudioAttributes;

    return-void
.end method

.method static synthetic access$000(Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->bPolicyAPIReady:Z

    return p0
.end method

.method static synthetic access$002(Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->bPolicyAPIReady:Z

    return p1
.end method

.method static synthetic access$100(Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;)Lcom/ecarx/sdk/policy/PolicyAPI;
    .registers 1

    .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mPolicyAPI:Lcom/ecarx/sdk/policy/PolicyAPI;

    return-object p0
.end method

.method static synthetic access$1000(Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;)Lcom/ecarx/sdk/device/daynightmode/IDayNightMode;
    .registers 1

    .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mDayNightMode:Lcom/ecarx/sdk/device/daynightmode/IDayNightMode;

    return-object p0
.end method

.method static synthetic access$1002(Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;Lcom/ecarx/sdk/device/daynightmode/IDayNightMode;)Lcom/ecarx/sdk/device/daynightmode/IDayNightMode;
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mDayNightMode:Lcom/ecarx/sdk/device/daynightmode/IDayNightMode;

    return-object p1
.end method

.method static synthetic access$1100(Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;)Lcn/manstep/phonemirrorBox/ecarx/a;
    .registers 1

    .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mDayNightChangeCallBack:Lcn/manstep/phonemirrorBox/ecarx/a;

    return-object p0
.end method

.method static synthetic access$1102(Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;Lcn/manstep/phonemirrorBox/ecarx/a;)Lcn/manstep/phonemirrorBox/ecarx/a;
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mDayNightChangeCallBack:Lcn/manstep/phonemirrorBox/ecarx/a;

    return-object p1
.end method

.method static synthetic access$202(Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;Landroid/media/AudioAttributes;)Landroid/media/AudioAttributes;
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mNavAudioAttributes:Landroid/media/AudioAttributes;

    return-object p1
.end method

.method static synthetic access$302(Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;Landroid/media/AudioAttributes;)Landroid/media/AudioAttributes;
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mCallAudioAttributes:Landroid/media/AudioAttributes;

    return-object p1
.end method

.method static synthetic access$402(Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;Landroid/media/AudioAttributes;)Landroid/media/AudioAttributes;
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mMediaAudioAttributes:Landroid/media/AudioAttributes;

    return-object p1
.end method

.method static synthetic access$500(Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->bMediaCenterAPIReady:Z

    return p0
.end method

.method static synthetic access$502(Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->bMediaCenterAPIReady:Z

    return p1
.end method

.method static synthetic access$600(Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;)Lcn/manstep/phonemirrorBox/ecarx/b;
    .registers 1

    .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mECarXLog:Lcn/manstep/phonemirrorBox/ecarx/b;

    return-object p0
.end method

.method static synthetic access$700(Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;)Lcom/ecarx/sdk/mediacenter/MediaCenterAPI;
    .registers 1

    .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mMediaCenterAPI:Lcom/ecarx/sdk/mediacenter/MediaCenterAPI;

    return-object p0
.end method

.method static synthetic access$802(Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->bDeviceAPIReady:Z

    return p1
.end method

.method static synthetic access$900(Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;)Lcom/ecarx/sdk/device/DeviceAPI;
    .registers 1

    .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mDeviceAPI:Lcom/ecarx/sdk/device/DeviceAPI;

    return-object p0
.end method

.method private cancelRegisterMusicFuture()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mRegisterMusicFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_b

    const/4 v1, 0x1

    .line 2
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mRegisterMusicFuture:Ljava/util/concurrent/ScheduledFuture;

    :cond_b
    return-void
.end method

.method public static getInstance()Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;
    .registers 4

    .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->instance:Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;

    if-nez v0, :cond_17

    .line 2
    const-class v0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;

    monitor-enter v0

    .line 3
    :try_start_7
    sget-object v1, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->instance:Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;

    if-nez v1, :cond_12

    .line 4
    new-instance v1, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;

    invoke-direct {v1}, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;-><init>()V

    sput-object v1, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->instance:Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;

    .line 5
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 6
    :cond_17
    :goto_17
    sget-object v0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->instance:Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;

    return-object v0
.end method

.method private initMediaCenter(Landroid/content/Context;)V
    .registers 5

    .line 1
    invoke-static {p1}, Lcom/ecarx/sdk/mediacenter/MediaCenterAPI;->get(Landroid/content/Context;)Lcom/ecarx/sdk/mediacenter/MediaCenterAPI;

    move-result-object v0

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mMediaCenterAPI:Lcom/ecarx/sdk/mediacenter/MediaCenterAPI;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->bMediaCenterAPIReady:Z

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mToken:Ljava/lang/Object;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ECarXUtil,initMediaCenter: mMediaCenterAPI = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mMediaCenterAPI:Lcom/ecarx/sdk/mediacenter/MediaCenterAPI;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mMediaCenterAPI:Lcom/ecarx/sdk/mediacenter/MediaCenterAPI;

    if-eqz v1, :cond_35

    .line 6
    :try_start_26
    new-instance v2, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil$b;

    invoke-direct {v2, p0}, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil$b;-><init>(Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;)V

    invoke-virtual {v1, p1, v2}, Lcom/ecarx/sdk/mediacenter/MediaCenterAPI;->init(Landroid/content/Context;Lcom/ecarx/sdk/openapi/ECarXApiClient$Callback;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2e} :catch_32
    .catch Ljava/lang/Error; {:try_start_26 .. :try_end_2e} :catch_2f

    goto :goto_3a

    .line 7
    :catch_2f
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->bMediaCenterAPIReady:Z

    goto :goto_3a

    .line 8
    :catch_32
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->bMediaCenterAPIReady:Z

    goto :goto_3a

    :cond_35
    const-string p1, "ECarXUtil,initMediaCenter: mMediaCenterAPI = null"

    .line 9
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    :goto_3a
    return-void
.end method

.method private initPolicyAPI(Landroid/content/Context;)V
    .registers 4

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/ecarx/sdk/policy/PolicyAPI;->get(Landroid/content/Context;)Lcom/ecarx/sdk/policy/PolicyAPI;

    move-result-object v0

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mPolicyAPI:Lcom/ecarx/sdk/policy/PolicyAPI;

    if-eqz v0, :cond_10

    .line 2
    new-instance v1, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil$a;

    invoke-direct {v1, p0}, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil$a;-><init>(Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;)V

    invoke-virtual {v0, p1, v1}, Lcom/ecarx/sdk/policy/PolicyAPI;->init(Landroid/content/Context;Lcom/ecarx/sdk/openapi/ECarXApiClient$Callback;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_10
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_10} :catch_10

    :catch_10
    :cond_10
    return-void
.end method

.method private startRegisterMusicFuture()V
    .registers 12

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mRegisterMusicFuture:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_2b

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mThreadPoolExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_17

    .line 3
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    new-instance v2, Lcn/manstep/phonemirrorBox/util/h;

    const-string v3, "RegisterMusic"

    invoke-direct {v2, v3}, Lcn/manstep/phonemirrorBox/util/h;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mThreadPoolExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    :cond_17
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mThreadPoolExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v5, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil$d;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil$d;-><init>(Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil$a;)V

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x3a98

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v4 .. v10}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mRegisterMusicFuture:Ljava/util/concurrent/ScheduledFuture;

    :cond_2b
    return-void
.end method


# virtual methods
.method public getAPIReady()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->bMediaCenterAPIReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->bPolicyAPIReady:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->bDeviceAPIReady:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mToken:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallAudioAttributes()Landroid/media/AudioAttributes;
    .registers 4

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mCallAudioAttributes:Landroid/media/AudioAttributes;

    if-nez v0, :cond_2f

    .line 2
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object v1

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/u;->e()I

    move-result v1

    const-string v2, "CallAudioAttr"

    invoke-virtual {v0, v2, v1}, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1c

    const/4 v1, 0x1

    const/4 v2, 0x2

    .line 3
    :cond_1c
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 4
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mCallAudioAttributes:Landroid/media/AudioAttributes;

    .line 7
    :cond_2f
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mCallAudioAttributes:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public getDayNight()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mDayNightMode:Lcom/ecarx/sdk/device/daynightmode/IDayNightMode;

    if-eqz v0, :cond_9

    .line 2
    invoke-interface {v0}, Lcom/ecarx/sdk/device/daynightmode/IDayNightMode;->getDayNight()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceInfo()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method public getMediaAudioAttributes()Landroid/media/AudioAttributes;
    .registers 4

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mMediaAudioAttributes:Landroid/media/AudioAttributes;

    if-nez v0, :cond_19

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 2
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 3
    invoke-virtual {v2, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mMediaAudioAttributes:Landroid/media/AudioAttributes;

    .line 6
    :cond_19
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mMediaAudioAttributes:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public getNavAudioAttributes()Landroid/media/AudioAttributes;
    .registers 4

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mNavAudioAttributes:Landroid/media/AudioAttributes;

    if-nez v0, :cond_19

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 2
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 3
    invoke-virtual {v2, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mNavAudioAttributes:Landroid/media/AudioAttributes;

    .line 6
    :cond_19
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mNavAudioAttributes:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public getSiriAudioAttributes()Landroid/media/AudioAttributes;
    .registers 5

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mSiriAudioAttributes:Landroid/media/AudioAttributes;

    if-nez v0, :cond_38

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_d

    const/16 v0, 0x10

    goto :goto_e

    :cond_d
    const/4 v0, 0x2

    .line 3
    :goto_e
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v1

    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object v2

    invoke-virtual {v2}, Lcn/manstep/phonemirrorBox/u;->e()I

    move-result v2

    const-string v3, "CallAudioAttr"

    invoke-virtual {v1, v3, v2}, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_25

    const/4 v0, 0x6

    const/4 v2, 0x0

    .line 4
    :cond_25
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 5
    invoke-virtual {v1, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mSiriAudioAttributes:Landroid/media/AudioAttributes;

    .line 8
    :cond_38
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mSiriAudioAttributes:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ECarXUtil,init: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mWeakContext:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public onAudioFocusChange(Z)V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ECarXUtil,onAudioFocusChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->bMediaCenterAPIReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->bMediaCenterAPIReady:Z

    if-eqz v0, :cond_2b

    if-eqz p1, :cond_28

    .line 3
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->startRegisterMusicFuture()V

    goto :goto_2b

    .line 4
    :cond_28
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->cancelRegisterMusicFuture()V

    :cond_2b
    :goto_2b
    return-void
.end method

.method public registerMusic()V
    .registers 7

    .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->bMediaCenterAPIReady:Z

    if-nez v0, :cond_a

    const-string v0, "ECarXUtil,registerMusic: bMediaCenterAPIReady = false"

    .line 2
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_a
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mWeakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_73

    .line 4
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mMediaCenterAPI:Lcom/ecarx/sdk/mediacenter/MediaCenterAPI;

    if-eqz v1, :cond_78

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ECarXUtil,registerMusic: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 6
    :try_start_31
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mMediaCenterAPI:Lcom/ecarx/sdk/mediacenter/MediaCenterAPI;

    invoke-virtual {v2}, Lcom/ecarx/sdk/mediacenter/MediaCenterAPI;->getVrMusicApi()Lcom/ecarx/sdk/vr/music/VrMusicCtrlAPI;

    move-result-object v2

    .line 7
    new-instance v3, Lcn/manstep/phonemirrorBox/ecarx/d;

    invoke-direct {v3}, Lcn/manstep/phonemirrorBox/ecarx/d;-><init>()V

    new-array v4, v1, [I

    const/4 v5, 0x0

    aput v1, v4, v5

    .line 8
    invoke-virtual {v2, v4, v3}, Lcom/ecarx/sdk/vr/music/VrMusicCtrlAPI;->declareMusicCtrlCapability([ILcom/ecarx/sdk/vr/music/MusicIntentListener;)Z

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v1, v3}, Lcom/ecarx/sdk/vr/music/VrMusicCtrlAPI;->declareVrCtrlPriority(Ljava/lang/String;ILcom/ecarx/sdk/vr/music/MusicIntentListener;)V
    :try_end_4b
    .catch Ljava/lang/Error; {:try_start_31 .. :try_end_4b} :catch_4b

    .line 10
    :catch_4b
    :try_start_4b
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mMediaCenterAPI:Lcom/ecarx/sdk/mediacenter/MediaCenterAPI;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mMusicClient:Lcom/ecarx/sdk/mediacenter/MusicClient;

    invoke-virtual {v2, v0, v3}, Lcom/ecarx/sdk/mediacenter/MediaCenterAPI;->registerMusic(Ljava/lang/String;Lcom/ecarx/sdk/mediacenter/MusicClient;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mToken:Ljava/lang/Object;
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_59} :catch_59
    .catch Ljava/lang/Error; {:try_start_4b .. :try_end_59} :catch_59

    .line 11
    :catch_59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ECarXUtil,registerMusic: mToken = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mToken:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0, v1}, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->requestPlay(Z)V

    goto :goto_78

    :cond_73
    const-string v0, "ECarXUtil,registerMusic: context = null"

    .line 13
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    :cond_78
    :goto_78
    return-void
.end method

.method public release()V
    .registers 3

    const-string v0, "ECarXUtil,release"

    .line 1
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->unregisterMusic()V

    .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mDayNightMode:Lcom/ecarx/sdk/device/daynightmode/IDayNightMode;

    if-eqz v0, :cond_11

    .line 4
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mDayNightChangeCallBack:Lcn/manstep/phonemirrorBox/ecarx/a;

    invoke-interface {v0, v1}, Lcom/ecarx/sdk/device/daynightmode/IDayNightMode;->unregisterDayNigntModeCallBack(Lcom/ecarx/sdk/device/daynightmode/IDayNightMode$IDayNightChangeCallBack;)Z

    .line 5
    :cond_11
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mDeviceAPI:Lcom/ecarx/sdk/device/DeviceAPI;

    if-eqz v0, :cond_1a

    .line 6
    :try_start_15
    invoke-virtual {v0}, Lcom/ecarx/sdk/device/DeviceAPI;->release()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_19
    .catch Ljava/lang/Error; {:try_start_15 .. :try_end_18} :catch_19

    goto :goto_1a

    :catch_19
    nop

    .line 7
    :cond_1a
    :goto_1a
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mMediaCenterAPI:Lcom/ecarx/sdk/mediacenter/MediaCenterAPI;

    if-eqz v0, :cond_23

    .line 8
    :try_start_1e
    invoke-virtual {v0}, Lcom/ecarx/sdk/mediacenter/MediaCenterAPI;->release()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_22
    .catch Ljava/lang/Error; {:try_start_1e .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    nop

    .line 9
    :cond_23
    :goto_23
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->cancelRegisterMusicFuture()V

    .line 10
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mThreadPoolExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_30

    .line 11
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mThreadPoolExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_30
    return-void
.end method

.method public requestPlay(Z)V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->bMediaCenterAPIReady:Z

    if-nez v0, :cond_a

    const-string p1, "ECarXUtil,requestPlay: bMediaCenterAPIReady = false"

    .line 2
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_a
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mWeakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_69

    .line 4
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mMediaCenterAPI:Lcom/ecarx/sdk/mediacenter/MediaCenterAPI;

    if-eqz v1, :cond_69

    iget-object v2, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mToken:Ljava/lang/Object;

    if-eqz v2, :cond_69

    .line 5
    invoke-virtual {v1, v2}, Lcom/ecarx/sdk/mediacenter/MediaCenterAPI;->requestPlay(Ljava/lang/Object;)Z

    move-result v1

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ECarXUtil,requestPlay: bRequestPlay = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mMediaCenterAPI:Lcom/ecarx/sdk/mediacenter/MediaCenterAPI;

    iget-object v2, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mToken:Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/ecarx/sdk/mediacenter/MediaCenterAPI;->updateCurrentSourceType(Ljava/lang/Object;I)V

    .line 8
    new-instance v1, Lcn/manstep/phonemirrorBox/ecarx/e;

    invoke-direct {v1, v0, p1}, Lcn/manstep/phonemirrorBox/ecarx/e;-><init>(Landroid/content/Context;Z)V

    .line 9
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mMediaCenterAPI:Lcom/ecarx/sdk/mediacenter/MediaCenterAPI;

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mToken:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/ecarx/sdk/mediacenter/MediaCenterAPI;->updateMusicPlaybackState(Ljava/lang/Object;Lcom/ecarx/sdk/mediacenter/MusicPlaybackInfo;)Z

    move-result p1

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ECarXUtil,requestPlay: updateMusicPlaybackState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mMediaCenterAPI:Lcom/ecarx/sdk/mediacenter/MediaCenterAPI;

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mToken:Ljava/lang/Object;

    new-instance v1, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil$c;

    invoke-direct {v1, p0}, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil$c;-><init>(Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;)V

    invoke-virtual {p1, v0, v1}, Lcom/ecarx/sdk/mediacenter/MediaCenterAPI;->updateMediaList(Ljava/lang/Object;Lcom/ecarx/sdk/mediacenter/MediaListInfo;)V

    :cond_69
    return-void
.end method

.method public test()V
    .registers 1

    return-void
.end method

.method public unregisterMusic()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->bMediaCenterAPIReady:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mToken:Ljava/lang/Object;

    if-eqz v0, :cond_12

    .line 2
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mMediaCenterAPI:Lcom/ecarx/sdk/mediacenter/MediaCenterAPI;

    if-eqz v1, :cond_12

    .line 3
    invoke-virtual {v1, v0}, Lcom/ecarx/sdk/mediacenter/MediaCenterAPI;->unregister(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mToken:Ljava/lang/Object;

    :cond_12
    return-void
.end method
