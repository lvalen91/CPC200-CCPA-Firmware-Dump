.class public Lcn/manstep/phonemirrorBox/BoxInterface/b;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcn/manstep/phonemirrorBox/BoxInterface/b$c;,
    Lcn/manstep/phonemirrorBox/BoxInterface/b$b;,
    Lcn/manstep/phonemirrorBox/BoxInterface/b$e;,
    Lcn/manstep/phonemirrorBox/BoxInterface/b$d;,
    Lcn/manstep/phonemirrorBox/BoxInterface/b$f;
  }
.end annotation

.field public static g:Lcn/manstep/phonemirrorBox/BoxInterface/b$d;

.field public static h:Z

.field private static i:Lcn/manstep/phonemirrorBox/OpenH264Decoder;

.field public static j:Z

.field public a:Ljava/lang/ref/WeakReference;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/ref/WeakReference<",
      "Landroid/content/Context;",
      ">;"
    }
  .end annotation
.end field

.field public b:Lcn/manstep/phonemirrorBox/BoxInterface/i;

.field volatile c:Z

.field public volatile d:Lcn/manstep/phonemirrorBox/BoxInterface/b$f;

.field public e:Z

.field public f:Lcn/manstep/phonemirrorBox/BoxInterface/b$c;

.method static constructor <clinit>()V
  .registers 3
  .line 1
    new-instance v0, Lcn/manstep/phonemirrorBox/BoxInterface/b$d;
    invoke-direct { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$d;-><init>()V
    sput-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/b;->g:Lcn/manstep/phonemirrorBox/BoxInterface/b$d;
    const/4 v0, 0
  .line 2
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/b;->h:Z
    const/4 v0, 0
  .line 3
    sput-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/b;->i:Lcn/manstep/phonemirrorBox/OpenH264Decoder;
  .line 4
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/b;->a()Z
    move-result v0
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/b;->j:Z
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
  .registers 4
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;
    const/4 v1, 0
    invoke-direct { v0, v1 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b;->a:Ljava/lang/ref/WeakReference;
  .line 3
    new-instance v0, Lcn/manstep/phonemirrorBox/BoxInterface/i;
    invoke-direct { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/i;-><init>()V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b;->b:Lcn/manstep/phonemirrorBox/BoxInterface/i;
    const/4 v0, 0
  .line 4
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b;->c:Z
  .line 5
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b;->e:Z
  .line 6
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b;->f:Lcn/manstep/phonemirrorBox/BoxInterface/b$c;
  .line 7
    new-instance v0, Ljava/lang/ref/WeakReference;
    invoke-direct { v0, p1 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b;->a:Ljava/lang/ref/WeakReference;
  .line 8
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/b;->g:Lcn/manstep/phonemirrorBox/BoxInterface/b$d;
    new-instance v1, Ljava/lang/ref/WeakReference;
    invoke-direct { v1, p0 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$d;->a(Lcn/manstep/phonemirrorBox/BoxInterface/b$d;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
  .line 9
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/b;->f()Z
    move-result v0
    if-eqz v0, :L0
  .line 10
    new-instance v0, Lcn/manstep/phonemirrorBox/BoxInterface/b$c;
    invoke-direct { v0, p0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$c;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/b;Landroid/content/Context;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b;->f:Lcn/manstep/phonemirrorBox/BoxInterface/b$c;
  :L0
  .line 11
    new-instance p1, Lcn/manstep/phonemirrorBox/OpenH264Decoder;
    invoke-direct { p1 }, Lcn/manstep/phonemirrorBox/OpenH264Decoder;-><init>()V
    sput-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/b;->i:Lcn/manstep/phonemirrorBox/OpenH264Decoder;
  .line 12
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/b;->n()V
    return-void
.end method

.method public static a()Z
  .registers 12
    const-string v0, "ro.product.manufacturer"
    const-string v1, ""
  .line 1
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/p;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    const-string v1, "ro.board.platform"
    const/4 v2, 0
  .line 2
    invoke-static { v1, v2 }, Lcn/manstep/phonemirrorBox/p;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  .line 3
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;
  .line 4
    invoke-static { }, Landroid/media/MediaCodecList;->getCodecCount()I
    move-result v2
    const/4 v3, 0
    const/4 v4, 0
  :L0
    if-ge v4, v2, :L7
  .line 5
    invoke-static { v4 }, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;
    move-result-object v5
  .line 6
    invoke-virtual { v5 }, Landroid/media/MediaCodecInfo;->isEncoder()Z
    move-result v6
    if-eqz v6, :L1
    goto :L6
  :L1
  .line 7
    invoke-virtual { v5 }, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;
    move-result-object v6
    const/4 v7, 0
  :L2
  .line 8
    array-length v8, v6
    if-ge v7, v8, :L6
  .line 9
    aget-object v8, v6, v7
    const-string v9, "video/avc"
    invoke-virtual { v8, v9 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v8
    if-eqz v8, :L5
  .line 10
    new-instance v8, Ljava/lang/StringBuilder;
    invoke-direct { v8 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v9, "@@@@@@@@ Found "
    invoke-virtual { v8, v9 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v5 }, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;
    move-result-object v9
    invoke-virtual { v8, v9 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v9, " supporting video/avc"
    invoke-virtual { v8, v9 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v8 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v8
    const-string v9, "MediaCodecList"
    invoke-static { v9, v8 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
  .line 11
    sget-boolean v8, Lcn/manstep/phonemirrorBox/p;->v:Z
    const/4 v10, 1
    if-eqz v8, :L3
  .line 12
    sput v10, Lcn/manstep/phonemirrorBox/p;->F:I
    return v10
  :L3
  .line 13
    invoke-virtual { v0 }, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    move-result-object v8
    const-string v11, "alps"
    invoke-virtual { v8, v11 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v8
    if-nez v8, :L4
    const-string v8, "ac83xx_evb"
  .line 14
    invoke-virtual { v1, v8 }, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v8
    if-eqz v8, :L5
  :L4
    const-string v0, "Bad decoder, set low framerate!!!!"
  .line 15
    invoke-static { v9, v0 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
  .line 16
    sput v10, Lcn/manstep/phonemirrorBox/p;->F:I
    return v10
  :L5
    add-int/lit8 v7, v7, 1
    goto :L2
  :L6
    add-int/lit8 v4, v4, 1
    goto :L0
  :L7
    return v3
.end method

.method static synthetic b(Lcn/manstep/phonemirrorBox/BoxInterface/b;)V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/b;->m()V
    return-void
.end method

.method static synthetic c(Lcn/manstep/phonemirrorBox/BoxInterface/b;)V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/b;->o()V
    return-void
.end method

.method static synthetic d()Lcn/manstep/phonemirrorBox/OpenH264Decoder;
  .registers 1
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/b;->i:Lcn/manstep/phonemirrorBox/OpenH264Decoder;
    return-object v0
.end method

.method public static f()Z
  .registers 4
    const-string v0, "ro.board.platform"
    const/4 v1, 0
  .line 1
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/p;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
  .line 2
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "model: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    const-string v1, "ac8317,"
  .line 3
    invoke-virtual { v1, v0 }, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v0
    const/4 v1, 0
    if-eqz v0, :L0
    const-string v0, "Need Use Float Window!"
  .line 4
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    const/16 v0, 300
  .line 5
    sput v0, Lcn/manstep/phonemirrorBox/p;->D:I
  :L0
    return v1
.end method

.method private m()V
  .registers 3
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "BoxCarplay startThread, bServiceRuning = "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b;->c:Z
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b;->c:Z
    if-nez v0, :L0
    const-string v0, "box startThread"
  .line 3
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/content/Context;
    if-eqz v0, :L0
  .line 5
    new-instance v0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b;->f:Lcn/manstep/phonemirrorBox/BoxInterface/b$c;
    invoke-direct { v0, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/b$c;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b;->d:Lcn/manstep/phonemirrorBox/BoxInterface/b$f;
  .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b;->d:Lcn/manstep/phonemirrorBox/BoxInterface/b$f;
    invoke-virtual { v0 }, Ljava/lang/Thread;->start()V
  .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b;->d:Lcn/manstep/phonemirrorBox/BoxInterface/b$f;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->y()V
    const/4 v0, 1
  .line 8
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b;->c:Z
  .line 9
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "box Service started this"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  :L0
    return-void
.end method

.method private o()V
  .catch Ljava/lang/InterruptedException; { :L0 .. :L1 } :L3
  .catchall { :L0 .. :L1 } :L2
  .catchall { :L4 .. :L5 } :L2
  .registers 3
  .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b;->c:Z
    if-eqz v0, :L8
    const-string v0, "box stopThread()"
  .line 2
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b;->d:Lcn/manstep/phonemirrorBox/BoxInterface/b$f;
    if-eqz v0, :L7
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b;->d:Lcn/manstep/phonemirrorBox/BoxInterface/b$f;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->a(Lcn/manstep/phonemirrorBox/BoxInterface/b$f;)Lcn/manstep/phonemirrorBox/BoxInterface/b$e;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$e;->a()V
    const/4 v0, 0
  :L0
  .line 5
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b;->d:Lcn/manstep/phonemirrorBox/BoxInterface/b$f;
    invoke-virtual { v1 }, Ljava/lang/Thread;->join()V
  :L1
  .line 6
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b;->d:Lcn/manstep/phonemirrorBox/BoxInterface/b$f;
    goto :L7
  :L2
    move-exception v1
    goto :L6
  :L3
    move-exception v1
  :L4
  .line 7
    invoke-static { v1 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L5
    goto :L1
  :L6
  .line 8
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b;->d:Lcn/manstep/phonemirrorBox/BoxInterface/b$f;
  .line 9
    throw v1
  :L7
    const/4 v0, 0
  .line 10
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b;->c:Z
  :L8
    return-void
.end method

.method public e()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/b;->o()V
    const/4 v0, 0
  .line 2
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/b;->h:Z
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b;->f:Lcn/manstep/phonemirrorBox/BoxInterface/b$c;
    if-eqz v0, :L0
  .line 4
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$c;->a()V
    const/4 v0, 0
  .line 5
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b;->f:Lcn/manstep/phonemirrorBox/BoxInterface/b$c;
  :L0
    return-void
.end method

.method public g(III[BI)V
  .registers 14
    const-wide/16 v6, 0
    move-object v0, p0
    move v1, p1
    move v2, p2
    move v3, p3
    move-object v4, p4
    move v5, p5
  .line 1
    invoke-virtual/range { v0 .. v7 }, Lcn/manstep/phonemirrorBox/BoxInterface/b;->h(III[BIJ)V
    return-void
.end method

.method public h(III[BIJ)V
  .registers 14
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b;->d:Lcn/manstep/phonemirrorBox/BoxInterface/b$f;
    if-nez v0, :L0
    return-void
  :L0
    const/4 v0, 0
    if-eqz p1, :L8
    const/4 v1, 1
    if-eq p1, v1, :L7
    const/4 v2, 2
    if-eq p1, v2, :L6
    const/4 v2, 3
    if-eq p1, v2, :L5
    const/4 v2, 4
    if-eq p1, v2, :L4
    const/4 v0, 7
    if-eq p1, v0, :L3
    const/16 p2, 8
    if-eq p1, p2, :L1
    goto/16 :L10
  :L1
  .line 2
    sput-boolean v1, Lcn/manstep/phonemirrorBox/BoxInterface/b;->h:Z
  .line 3
    sget-boolean p1, Lcn/manstep/phonemirrorBox/p;->d:Z
    if-eqz p1, :L2
  .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b;->b:Lcn/manstep/phonemirrorBox/BoxInterface/i;
    const/16 p2, 20
    invoke-virtual { p1, p4, p2, p5 }, Lcn/manstep/phonemirrorBox/BoxInterface/i;->a([BII)V
  :L2
  .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b;->d:Lcn/manstep/phonemirrorBox/BoxInterface/b$f;
    const/16 v2, 20
    move-object v1, p4
    move v3, p5
    move-wide v4, p6
    invoke-virtual/range { v0 .. v5 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->m([BIIJ)V
    goto/16 :L10
  :L3
  .line 6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b;->d:Lcn/manstep/phonemirrorBox/BoxInterface/b$f;
    invoke-virtual { p1, p2, p3 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->t(II)V
  .line 7
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/b;->g:Lcn/manstep/phonemirrorBox/BoxInterface/b$d;
    invoke-virtual { p1, p2, p3 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$d;->e(II)V
  .line 8
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p4, "BoxCarPlay,onDataOut: VideoSize="
    invoke-virtual { p1, p4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p4, "x"
    invoke-virtual { p1, p4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, p3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 9
    sget-boolean p1, Lcn/manstep/phonemirrorBox/p;->d:Z
    if-eqz p1, :L10
  .line 10
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b;->b:Lcn/manstep/phonemirrorBox/BoxInterface/i;
    invoke-virtual { p1, p2, p3 }, Lcn/manstep/phonemirrorBox/BoxInterface/i;->b(II)V
    goto :L10
  :L4
  .line 11
    iget-boolean p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b;->e:Z
    if-eqz p1, :L10
  .line 12
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b;->e:Z
  .line 13
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/b;->g:Lcn/manstep/phonemirrorBox/BoxInterface/b$d;
    invoke-virtual { p1, v2 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$d;->c(I)V
    goto :L10
  :L5
  .line 14
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b;->e:Z
  .line 15
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/b;->g:Lcn/manstep/phonemirrorBox/BoxInterface/b$d;
    invoke-virtual { p1, v2 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$d;->c(I)V
    const-string p1, "Screen closed!"
  .line 16
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    goto :L10
  :L6
  .line 17
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b;->e:Z
  .line 18
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/b;->g:Lcn/manstep/phonemirrorBox/BoxInterface/b$d;
    invoke-virtual { p1, v2 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$d;->c(I)V
  .line 19
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/b;->g:Lcn/manstep/phonemirrorBox/BoxInterface/b$d;
    const/4 p2, 6
    invoke-virtual { p1, p2 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$d;->c(I)V
    goto :L10
  :L7
  .line 20
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->n:Z
  .line 21
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->p:Z
  .line 22
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/b;->g:Lcn/manstep/phonemirrorBox/BoxInterface/b$d;
    invoke-virtual { p1, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$d;->c(I)V
  .line 23
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/b;->g:Lcn/manstep/phonemirrorBox/BoxInterface/b$d;
    invoke-virtual { p1, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$d;->d(I)V
    goto :L10
  :L8
  .line 24
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/b;->g:Lcn/manstep/phonemirrorBox/BoxInterface/b$d;
    invoke-virtual { p1, v0, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$d;->e(II)V
  .line 25
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/b;->g:Lcn/manstep/phonemirrorBox/BoxInterface/b$d;
    invoke-virtual { p1, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$d;->d(I)V
  .line 26
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/b;->g:Lcn/manstep/phonemirrorBox/BoxInterface/b$d;
    invoke-virtual { p1, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$d;->c(I)V
  .line 27
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b;->d:Lcn/manstep/phonemirrorBox/BoxInterface/b$f;
    if-eqz p1, :L9
  .line 28
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b;->d:Lcn/manstep/phonemirrorBox/BoxInterface/b$f;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->l()V
  :L9
  .line 29
    sget-boolean p1, Lcn/manstep/phonemirrorBox/p;->d:Z
    if-eqz p1, :L10
  .line 30
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b;->b:Lcn/manstep/phonemirrorBox/BoxInterface/i;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/i;->c()V
  :L10
    return-void
.end method

.method public i()V
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b;->d:Lcn/manstep/phonemirrorBox/BoxInterface/b$f;
    if-eqz v0, :L0
    const-string v0, "BoxCarPlay,sendDecoderReset: reset decoder"
  .line 2
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b;->d:Lcn/manstep/phonemirrorBox/BoxInterface/b$f;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->q()V
  :L0
    return-void
.end method

.method public j(Landroid/view/SurfaceHolder;Z)V
  .registers 5
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "BoxCarPlay,sendSurfaceAvailable:mRenderThread="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b;->d:Lcn/manstep/phonemirrorBox/BoxInterface/b$f;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b;->d:Lcn/manstep/phonemirrorBox/BoxInterface/b$f;
    if-eqz v0, :L0
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b;->d:Lcn/manstep/phonemirrorBox/BoxInterface/b$f;
    invoke-virtual { v0, p1, p2 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->z(Landroid/view/SurfaceHolder;Z)V
  .line 4
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/b;->g:Lcn/manstep/phonemirrorBox/BoxInterface/b$d;
    const/4 p2, 1
    invoke-virtual { p1, p2 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$d;->d(I)V
  :L0
    return-void
.end method

.method public k(III)V
  .registers 5
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b;->d:Lcn/manstep/phonemirrorBox/BoxInterface/b$f;
    if-eqz v0, :L0
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b;->d:Lcn/manstep/phonemirrorBox/BoxInterface/b$f;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->a(Lcn/manstep/phonemirrorBox/BoxInterface/b$f;)Lcn/manstep/phonemirrorBox/BoxInterface/b$e;
    move-result-object v0
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b;->d:Lcn/manstep/phonemirrorBox/BoxInterface/b$f;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->a(Lcn/manstep/phonemirrorBox/BoxInterface/b$f;)Lcn/manstep/phonemirrorBox/BoxInterface/b$e;
    move-result-object v0
    invoke-virtual { v0, p1, p2, p3 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$e;->b(III)V
  :L0
    return-void
.end method

.method public l()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b;->d:Lcn/manstep/phonemirrorBox/BoxInterface/b$f;
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b;->d:Lcn/manstep/phonemirrorBox/BoxInterface/b$f;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->A()V
  .line 3
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/b;->g:Lcn/manstep/phonemirrorBox/BoxInterface/b$d;
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$d;->d(I)V
  :L0
    return-void
.end method

.method public n()V
  .registers 3
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/b;->g:Lcn/manstep/phonemirrorBox/BoxInterface/b$d;
    if-eqz v0, :L0
    const/4 v1, 1
  .line 2
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$d;->b(Z)V
  :L0
    return-void
.end method
