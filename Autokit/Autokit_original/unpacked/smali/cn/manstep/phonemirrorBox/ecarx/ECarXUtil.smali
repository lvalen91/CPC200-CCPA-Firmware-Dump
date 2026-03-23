.class public Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil$d;
  }
.end annotation

.field private final static TAG:Ljava/lang/String; = "ECarXUtil"

.field private static volatile instance:Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;

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

.method private constructor <init>()V
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L2
  .catch Ljava/lang/Error; { :L0 .. :L1 } :L2
  .catch Ljava/lang/Exception; { :L3 .. :L4 } :L5
  .catch Ljava/lang/Error; { :L3 .. :L4 } :L5
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 0
  .line 2
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mMediaCenterAPI:Lcom/ecarx/sdk/mediacenter/MediaCenterAPI;
  .line 3
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mDeviceAPI:Lcom/ecarx/sdk/device/DeviceAPI;
  .line 4
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mPolicyAPI:Lcom/ecarx/sdk/policy/PolicyAPI;
    const/4 v1, 0
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
  :L0
  .line 10
    new-instance v1, Lcn/manstep/phonemirrorBox/ecarx/b;
    invoke-direct { v1 }, Lcn/manstep/phonemirrorBox/ecarx/b;-><init>()V
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mECarXLog:Lcn/manstep/phonemirrorBox/ecarx/b;
  :L1
    goto :L3
  :L2
  .line 11
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mECarXLog:Lcn/manstep/phonemirrorBox/ecarx/b;
  :L3
  .line 12
    new-instance v1, Lcn/manstep/phonemirrorBox/ecarx/c;
    invoke-direct { v1 }, Lcn/manstep/phonemirrorBox/ecarx/c;-><init>()V
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mMusicClient:Lcom/ecarx/sdk/mediacenter/MusicClient;
  :L4
    goto :L6
  :L5
  .line 13
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mMusicClient:Lcom/ecarx/sdk/mediacenter/MusicClient;
  :L6
  .line 14
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
    if-eqz v0, :L0
    const/4 v1, 1
  .line 2
    invoke-interface { v0, v1 }, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z
    const/4 v0, 0
  .line 3
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mRegisterMusicFuture:Ljava/util/concurrent/ScheduledFuture;
  :L0
    return-void
.end method

.method public static getInstance()Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;
  .catchall { :L0 .. :L3 } :L2
  .registers 4
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->instance:Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;
    if-nez v0, :L4
  .line 2
    const-class v0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;
    monitor-enter v0
  :L0
  .line 3
    sget-object v1, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->instance:Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;
    if-nez v1, :L1
  .line 4
    new-instance v1, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;
    invoke-direct { v1 }, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;-><init>()V
    sput-object v1, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->instance:Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;
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
    sget-object v0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->instance:Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;
    return-object v0
.end method

.method private initMediaCenter(Landroid/content/Context;)V
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L3
  .catch Ljava/lang/Error; { :L0 .. :L1 } :L2
  .registers 5
  .line 1
    invoke-static { p1 }, Lcom/ecarx/sdk/mediacenter/MediaCenterAPI;->get(Landroid/content/Context;)Lcom/ecarx/sdk/mediacenter/MediaCenterAPI;
    move-result-object v0
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mMediaCenterAPI:Lcom/ecarx/sdk/mediacenter/MediaCenterAPI;
    const/4 v0, 0
  .line 2
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->bMediaCenterAPIReady:Z
    const/4 v1, 0
  .line 3
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mToken:Ljava/lang/Object;
  .line 4
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "ECarXUtil,initMediaCenter: mMediaCenterAPI = "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mMediaCenterAPI:Lcom/ecarx/sdk/mediacenter/MediaCenterAPI;
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 5
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mMediaCenterAPI:Lcom/ecarx/sdk/mediacenter/MediaCenterAPI;
    if-eqz v1, :L4
  :L0
  .line 6
    new-instance v2, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil$b;
    invoke-direct { v2, p0 }, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil$b;-><init>(Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;)V
    invoke-virtual { v1, p1, v2 }, Lcom/ecarx/sdk/mediacenter/MediaCenterAPI;->init(Landroid/content/Context;Lcom/ecarx/sdk/openapi/ECarXApiClient$Callback;)V
  :L1
    goto :L5
  :L2
  .line 7
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->bMediaCenterAPIReady:Z
    goto :L5
  :L3
  .line 8
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->bMediaCenterAPIReady:Z
    goto :L5
  :L4
    const-string p1, "ECarXUtil,initMediaCenter: mMediaCenterAPI = null"
  .line 9
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L5
    return-void
.end method

.method private initPolicyAPI(Landroid/content/Context;)V
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L1
  .catch Ljava/lang/Error; { :L0 .. :L1 } :L1
  .registers 4
  :L0
  .line 1
    invoke-static { p1 }, Lcom/ecarx/sdk/policy/PolicyAPI;->get(Landroid/content/Context;)Lcom/ecarx/sdk/policy/PolicyAPI;
    move-result-object v0
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mPolicyAPI:Lcom/ecarx/sdk/policy/PolicyAPI;
    if-eqz v0, :L1
  .line 2
    new-instance v1, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil$a;
    invoke-direct { v1, p0 }, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil$a;-><init>(Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;)V
    invoke-virtual { v0, p1, v1 }, Lcom/ecarx/sdk/policy/PolicyAPI;->init(Landroid/content/Context;Lcom/ecarx/sdk/openapi/ECarXApiClient$Callback;)V
  :L1
    return-void
.end method

.method private startRegisterMusicFuture()V
  .registers 12
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mRegisterMusicFuture:Ljava/util/concurrent/ScheduledFuture;
    if-nez v0, :L1
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mThreadPoolExecutor:Ljava/util/concurrent/ScheduledExecutorService;
    if-nez v0, :L0
  .line 3
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    const/4 v1, 1
    new-instance v2, Lcn/manstep/phonemirrorBox/util/h;
    const-string v3, "RegisterMusic"
    invoke-direct { v2, v3 }, Lcn/manstep/phonemirrorBox/util/h;-><init>(Ljava/lang/String;)V
    invoke-direct { v0, v1, v2 }, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mThreadPoolExecutor:Ljava/util/concurrent/ScheduledExecutorService;
  :L0
  .line 4
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mThreadPoolExecutor:Ljava/util/concurrent/ScheduledExecutorService;
    new-instance v5, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil$d;
    const/4 v0, 0
    invoke-direct { v5, p0, v0 }, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil$d;-><init>(Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil$a;)V
    const-wide/16 v6, 0
    const-wide/16 v8, 15000
    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
    invoke-interface/range { v4 .. v10 }, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    move-result-object v0
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mRegisterMusicFuture:Ljava/util/concurrent/ScheduledFuture;
  :L1
    return-void
.end method

.method public getAPIReady()Ljava/lang/String;
  .registers 4
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    iget-boolean v1, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->bMediaCenterAPIReady:Z
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    const-string v1, " "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-boolean v2, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->bPolicyAPIReady:Z
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-boolean v2, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->bDeviceAPIReady:Z
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mToken:Ljava/lang/Object;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public getCallAudioAttributes()Landroid/media/AudioAttributes;
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mCallAudioAttributes:Landroid/media/AudioAttributes;
    if-nez v0, :L1
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object v1
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/u;->e()I
    move-result v1
    const-string v2, "CallAudioAttr"
    invoke-virtual { v0, v2, v1 }, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I
    move-result v0
    const/4 v1, 2
    const/4 v2, 1
    if-ne v0, v2, :L0
    const/4 v1, 1
    const/4 v2, 2
  :L0
  .line 3
    new-instance v0, Landroid/media/AudioAttributes$Builder;
    invoke-direct { v0 }, Landroid/media/AudioAttributes$Builder;-><init>()V
  .line 4
    invoke-virtual { v0, v1 }, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;
    move-result-object v0
  .line 5
    invoke-virtual { v0, v2 }, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;
    move-result-object v0
  .line 6
    invoke-virtual { v0 }, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;
    move-result-object v0
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mCallAudioAttributes:Landroid/media/AudioAttributes;
  :L1
  .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mCallAudioAttributes:Landroid/media/AudioAttributes;
    return-object v0
.end method

.method public getDayNight()I
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mDayNightMode:Lcom/ecarx/sdk/device/daynightmode/IDayNightMode;
    if-eqz v0, :L0
  .line 2
    invoke-interface { v0 }, Lcom/ecarx/sdk/device/daynightmode/IDayNightMode;->getDayNight()I
    move-result v0
    return v0
  :L0
    const/4 v0, 0
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
    if-nez v0, :L0
    const/4 v0, 1
    const/4 v1, 2
  .line 2
    new-instance v2, Landroid/media/AudioAttributes$Builder;
    invoke-direct { v2 }, Landroid/media/AudioAttributes$Builder;-><init>()V
  .line 3
    invoke-virtual { v2, v0 }, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;
    move-result-object v0
  .line 4
    invoke-virtual { v0, v1 }, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;
    move-result-object v0
  .line 5
    invoke-virtual { v0 }, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;
    move-result-object v0
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mMediaAudioAttributes:Landroid/media/AudioAttributes;
  :L0
  .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mMediaAudioAttributes:Landroid/media/AudioAttributes;
    return-object v0
.end method

.method public getNavAudioAttributes()Landroid/media/AudioAttributes;
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mNavAudioAttributes:Landroid/media/AudioAttributes;
    if-nez v0, :L0
    const/4 v0, 1
    const/4 v1, 2
  .line 2
    new-instance v2, Landroid/media/AudioAttributes$Builder;
    invoke-direct { v2 }, Landroid/media/AudioAttributes$Builder;-><init>()V
  .line 3
    invoke-virtual { v2, v0 }, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;
    move-result-object v0
  .line 4
    invoke-virtual { v0, v1 }, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;
    move-result-object v0
  .line 5
    invoke-virtual { v0 }, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;
    move-result-object v0
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mNavAudioAttributes:Landroid/media/AudioAttributes;
  :L0
  .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mNavAudioAttributes:Landroid/media/AudioAttributes;
    return-object v0
.end method

.method public getSiriAudioAttributes()Landroid/media/AudioAttributes;
  .registers 5
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mSiriAudioAttributes:Landroid/media/AudioAttributes;
    if-nez v0, :L3
  .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 26
    if-lt v0, v1, :L0
    const/16 v0, 16
    goto :L1
  :L0
    const/4 v0, 2
  :L1
  .line 3
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v1
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object v2
    invoke-virtual { v2 }, Lcn/manstep/phonemirrorBox/u;->e()I
    move-result v2
    const-string v3, "CallAudioAttr"
    invoke-virtual { v1, v3, v2 }, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I
    move-result v1
    const/4 v2, 1
    if-ne v1, v2, :L2
    const/4 v0, 6
    const/4 v2, 0
  :L2
  .line 4
    new-instance v1, Landroid/media/AudioAttributes$Builder;
    invoke-direct { v1 }, Landroid/media/AudioAttributes$Builder;-><init>()V
  .line 5
    invoke-virtual { v1, v0 }, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;
    move-result-object v0
  .line 6
    invoke-virtual { v0, v2 }, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;
    move-result-object v0
  .line 7
    invoke-virtual { v0 }, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;
    move-result-object v0
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mSiriAudioAttributes:Landroid/media/AudioAttributes;
  :L3
  .line 8
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mSiriAudioAttributes:Landroid/media/AudioAttributes;
    return-object v0
.end method

.method public init(Landroid/content/Context;)V
  .registers 4
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "ECarXUtil,init: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;
    invoke-direct { v0, p1 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mWeakContext:Ljava/lang/ref/WeakReference;
    return-void
.end method

.method public onAudioFocusChange(Z)V
  .registers 4
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "ECarXUtil,onAudioFocusChange: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    const-string v1, ", "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->bMediaCenterAPIReady:Z
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->bMediaCenterAPIReady:Z
    if-eqz v0, :L1
    if-eqz p1, :L0
  .line 3
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->startRegisterMusicFuture()V
    goto :L1
  :L0
  .line 4
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->cancelRegisterMusicFuture()V
  :L1
    return-void
.end method

.method public registerMusic()V
  .catch Ljava/lang/Error; { :L1 .. :L2 } :L2
  .catch Ljava/lang/Exception; { :L2 .. :L3 } :L3
  .catch Ljava/lang/Error; { :L2 .. :L3 } :L3
  .registers 7
  .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->bMediaCenterAPIReady:Z
    if-nez v0, :L0
    const-string v0, "ECarXUtil,registerMusic: bMediaCenterAPIReady = false"
  .line 2
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    return-void
  :L0
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mWeakContext:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/content/Context;
    if-eqz v0, :L4
  .line 4
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mMediaCenterAPI:Lcom/ecarx/sdk/mediacenter/MediaCenterAPI;
    if-eqz v1, :L5
  .line 5
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "ECarXUtil,registerMusic: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    const/4 v1, 1
  :L1
  .line 6
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mMediaCenterAPI:Lcom/ecarx/sdk/mediacenter/MediaCenterAPI;
    invoke-virtual { v2 }, Lcom/ecarx/sdk/mediacenter/MediaCenterAPI;->getVrMusicApi()Lcom/ecarx/sdk/vr/music/VrMusicCtrlAPI;
    move-result-object v2
  .line 7
    new-instance v3, Lcn/manstep/phonemirrorBox/ecarx/d;
    invoke-direct { v3 }, Lcn/manstep/phonemirrorBox/ecarx/d;-><init>()V
    new-array v4, v1, [I
    const/4 v5, 0
    aput v1, v4, v5
  .line 8
    invoke-virtual { v2, v4, v3 }, Lcom/ecarx/sdk/vr/music/VrMusicCtrlAPI;->declareMusicCtrlCapability([ILcom/ecarx/sdk/vr/music/MusicIntentListener;)Z
  .line 9
    invoke-virtual { v0 }, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    move-result-object v4
    invoke-virtual { v2, v4, v1, v3 }, Lcom/ecarx/sdk/vr/music/VrMusicCtrlAPI;->declareVrCtrlPriority(Ljava/lang/String;ILcom/ecarx/sdk/vr/music/MusicIntentListener;)V
  :L2
  .line 10
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mMediaCenterAPI:Lcom/ecarx/sdk/mediacenter/MediaCenterAPI;
    invoke-virtual { v0 }, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    move-result-object v0
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mMusicClient:Lcom/ecarx/sdk/mediacenter/MusicClient;
    invoke-virtual { v2, v0, v3 }, Lcom/ecarx/sdk/mediacenter/MediaCenterAPI;->registerMusic(Ljava/lang/String;Lcom/ecarx/sdk/mediacenter/MusicClient;)Ljava/lang/Object;
    move-result-object v0
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mToken:Ljava/lang/Object;
  :L3
  .line 11
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "ECarXUtil,registerMusic: mToken = "
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mToken:Ljava/lang/Object;
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 12
    invoke-virtual { p0, v1 }, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->requestPlay(Z)V
    goto :L5
  :L4
    const-string v0, "ECarXUtil,registerMusic: context = null"
  .line 13
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L5
    return-void
.end method

.method public release()V
  .catch Ljava/lang/Exception; { :L1 .. :L2 } :L3
  .catch Ljava/lang/Error; { :L1 .. :L2 } :L3
  .catch Ljava/lang/Exception; { :L5 .. :L6 } :L7
  .catch Ljava/lang/Error; { :L5 .. :L6 } :L7
  .registers 3
    const-string v0, "ECarXUtil,release"
  .line 1
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->unregisterMusic()V
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mDayNightMode:Lcom/ecarx/sdk/device/daynightmode/IDayNightMode;
    if-eqz v0, :L0
  .line 4
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mDayNightChangeCallBack:Lcn/manstep/phonemirrorBox/ecarx/a;
    invoke-interface { v0, v1 }, Lcom/ecarx/sdk/device/daynightmode/IDayNightMode;->unregisterDayNigntModeCallBack(Lcom/ecarx/sdk/device/daynightmode/IDayNightMode$IDayNightChangeCallBack;)Z
  :L0
  .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mDeviceAPI:Lcom/ecarx/sdk/device/DeviceAPI;
    if-eqz v0, :L4
  :L1
  .line 6
    invoke-virtual { v0 }, Lcom/ecarx/sdk/device/DeviceAPI;->release()V
  :L2
    goto :L4
  :L3
    nop
  :L4
  .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mMediaCenterAPI:Lcom/ecarx/sdk/mediacenter/MediaCenterAPI;
    if-eqz v0, :L8
  :L5
  .line 8
    invoke-virtual { v0 }, Lcom/ecarx/sdk/mediacenter/MediaCenterAPI;->release()V
  :L6
    goto :L8
  :L7
    nop
  :L8
  .line 9
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->cancelRegisterMusicFuture()V
  .line 10
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mThreadPoolExecutor:Ljava/util/concurrent/ScheduledExecutorService;
    if-eqz v0, :L9
  .line 11
    invoke-interface { v0 }, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V
    const/4 v0, 0
  .line 12
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mThreadPoolExecutor:Ljava/util/concurrent/ScheduledExecutorService;
  :L9
    return-void
.end method

.method public requestPlay(Z)V
  .registers 6
  .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->bMediaCenterAPIReady:Z
    if-nez v0, :L0
    const-string p1, "ECarXUtil,requestPlay: bMediaCenterAPIReady = false"
  .line 2
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    return-void
  :L0
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mWeakContext:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/content/Context;
    if-eqz v0, :L1
  .line 4
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mMediaCenterAPI:Lcom/ecarx/sdk/mediacenter/MediaCenterAPI;
    if-eqz v1, :L1
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mToken:Ljava/lang/Object;
    if-eqz v2, :L1
  .line 5
    invoke-virtual { v1, v2 }, Lcom/ecarx/sdk/mediacenter/MediaCenterAPI;->requestPlay(Ljava/lang/Object;)Z
    move-result v1
  .line 6
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "ECarXUtil,requestPlay: bRequestPlay = "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 7
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mMediaCenterAPI:Lcom/ecarx/sdk/mediacenter/MediaCenterAPI;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mToken:Ljava/lang/Object;
    const/4 v3, 1
    invoke-virtual { v1, v2, v3 }, Lcom/ecarx/sdk/mediacenter/MediaCenterAPI;->updateCurrentSourceType(Ljava/lang/Object;I)V
  .line 8
    new-instance v1, Lcn/manstep/phonemirrorBox/ecarx/e;
    invoke-direct { v1, v0, p1 }, Lcn/manstep/phonemirrorBox/ecarx/e;-><init>(Landroid/content/Context;Z)V
  .line 9
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mMediaCenterAPI:Lcom/ecarx/sdk/mediacenter/MediaCenterAPI;
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mToken:Ljava/lang/Object;
    invoke-virtual { p1, v0, v1 }, Lcom/ecarx/sdk/mediacenter/MediaCenterAPI;->updateMusicPlaybackState(Ljava/lang/Object;Lcom/ecarx/sdk/mediacenter/MusicPlaybackInfo;)Z
    move-result p1
  .line 10
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "ECarXUtil,requestPlay: updateMusicPlaybackState: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 11
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mMediaCenterAPI:Lcom/ecarx/sdk/mediacenter/MediaCenterAPI;
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mToken:Ljava/lang/Object;
    new-instance v1, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil$c;
    invoke-direct { v1, p0 }, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil$c;-><init>(Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;)V
    invoke-virtual { p1, v0, v1 }, Lcom/ecarx/sdk/mediacenter/MediaCenterAPI;->updateMediaList(Ljava/lang/Object;Lcom/ecarx/sdk/mediacenter/MediaListInfo;)V
  :L1
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
    if-eqz v0, :L0
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mToken:Ljava/lang/Object;
    if-eqz v0, :L0
  .line 2
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mMediaCenterAPI:Lcom/ecarx/sdk/mediacenter/MediaCenterAPI;
    if-eqz v1, :L0
  .line 3
    invoke-virtual { v1, v0 }, Lcom/ecarx/sdk/mediacenter/MediaCenterAPI;->unregister(Ljava/lang/Object;)Z
    const/4 v0, 0
  .line 4
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mToken:Ljava/lang/Object;
  :L0
    return-void
.end method
