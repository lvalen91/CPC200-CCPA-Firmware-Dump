.class public Lcn/manstep/phonemirrorBox/BoxInterface/b$f;
.super Ljava/lang/Thread;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcn/manstep/phonemirrorBox/BoxInterface/b;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 9
  name = "f"
.end annotation
.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcn/manstep/phonemirrorBox/BoxInterface/b$f$c;,
    Lcn/manstep/phonemirrorBox/BoxInterface/b$f$b;
  }
.end annotation

.field public static l:[B

.field public static m:[B

.field public static n:Z

.field public static o:Z

.field public static p:Z

.field private b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

.field private c:Lcn/manstep/phonemirrorBox/BoxInterface/b$e;

.field private d:Landroid/view/Surface;

.field private e:I

.field private f:I

.field private g:Ljava/lang/Object;

.field private h:Z

.field private i:Ljava/util/concurrent/ScheduledExecutorService;

.field private j:Ljava/util/Timer;

.field public k:Lcn/manstep/phonemirrorBox/BoxInterface/h;

.method static constructor <clinit>()V
  .registers 0
    return-void
.end method

.method public constructor <init>()V
  .registers 3
  .line 5
    invoke-direct { p0 }, Ljava/lang/Thread;-><init>()V
  .line 6
    new-instance v0, Ljava/lang/Object;
    invoke-direct { v0 }, Ljava/lang/Object;-><init>()V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->g:Ljava/lang/Object;
    const/4 v0, 0
  .line 7
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->h:Z
  .line 8
    new-instance v0, Lcn/manstep/phonemirrorBox/BoxInterface/h;
    const/16 v1, 320
    invoke-direct { v0, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/h;-><init>(I)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->k:Lcn/manstep/phonemirrorBox/BoxInterface/h;
    return-void
.end method

.method public constructor <init>(Lcn/manstep/phonemirrorBox/BoxInterface/b$c;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Thread;-><init>()V
  .line 2
    new-instance p1, Ljava/lang/Object;
    invoke-direct { p1 }, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->g:Ljava/lang/Object;
    const/4 p1, 0
  .line 3
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->h:Z
  .line 4
    new-instance p1, Lcn/manstep/phonemirrorBox/BoxInterface/h;
    const/16 v0, 320
    invoke-direct { p1, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/h;-><init>(I)V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->k:Lcn/manstep/phonemirrorBox/BoxInterface/h;
    return-void
.end method

.method static synthetic a(Lcn/manstep/phonemirrorBox/BoxInterface/b$f;)Lcn/manstep/phonemirrorBox/BoxInterface/b$e;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->c:Lcn/manstep/phonemirrorBox/BoxInterface/b$e;
    return-object p0
.end method

.method static synthetic b(Lcn/manstep/phonemirrorBox/BoxInterface/b$f;Landroid/view/SurfaceHolder;Z)V
  .registers 3
  .line 1
    invoke-direct { p0, p1, p2 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->v(Landroid/view/SurfaceHolder;Z)V
    return-void
.end method

.method static synthetic c(Lcn/manstep/phonemirrorBox/BoxInterface/b$f;II)V
  .registers 3
  .line 1
    invoke-direct { p0, p1, p2 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->w(II)V
    return-void
.end method

.method static synthetic d(Lcn/manstep/phonemirrorBox/BoxInterface/b$f;)V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->x()V
    return-void
.end method

.method static synthetic e(Lcn/manstep/phonemirrorBox/BoxInterface/b$f;)V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->u()V
    return-void
.end method

.method static synthetic f(Lcn/manstep/phonemirrorBox/BoxInterface/b$f;)V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->o()V
    return-void
.end method

.method static synthetic g(Lcn/manstep/phonemirrorBox/BoxInterface/b$f;II)V
  .registers 3
  .line 1
    invoke-direct { p0, p1, p2 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->p(II)V
    return-void
.end method

.method static synthetic h(Lcn/manstep/phonemirrorBox/BoxInterface/b$f;)Ljava/lang/Object;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->g:Ljava/lang/Object;
    return-object p0
.end method

.method static synthetic i(Lcn/manstep/phonemirrorBox/BoxInterface/b$f;)V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->n()V
    return-void
.end method

.method static synthetic j(Lcn/manstep/phonemirrorBox/BoxInterface/b$f;Ljava/util/Timer;)Ljava/util/Timer;
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->j:Ljava/util/Timer;
    return-object p1
.end method

.method private k(Landroid/view/Surface;)V
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L4
  .catch Ljava/lang/Exception; { :L1 .. :L2 } :L3
  .registers 5
  :L0
  .line 1
    new-instance v0, Ld/a/a/b/b;
    const/4 v1, 0
    const/4 v2, 1
    invoke-direct { v0, v1, v2 }, Ld/a/a/b/b;-><init>(Landroid/opengl/EGLContext;I)V
  :L1
  .line 2
    new-instance v1, Ld/a/a/b/g;
    const/4 v2, 0
    invoke-direct { v1, v0, p1, v2 }, Ld/a/a/b/g;-><init>(Ld/a/a/b/b;Landroid/view/Surface;Z)V
  :L2
  .line 3
    invoke-virtual { v1 }, Ld/a/a/b/c;->d()V
    const/4 p1, 0
  .line 4
    invoke-static { p1, p1, p1, p1 }, Landroid/opengl/GLES20;->glClearColor(FFFF)V
    const/16 p1, 16384
  .line 5
    invoke-static { p1 }, Landroid/opengl/GLES20;->glClear(I)V
  .line 6
    invoke-virtual { v1 }, Ld/a/a/b/c;->f()Z
  .line 7
    invoke-virtual { v1 }, Ld/a/a/b/g;->g()V
  .line 8
    invoke-virtual { v0 }, Ld/a/a/b/b;->g()V
    return-void
  :L3
    move-exception p1
  .line 9
    invoke-static { p1 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    return-void
  :L4
    move-exception p1
  .line 10
    invoke-static { p1 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    return-void
.end method

.method private n()V
  .catch Ljava/lang/InterruptedException; { :L4 .. :L5 } :L6
  .registers 13
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    if-eqz v0, :L10
  .line 2
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->J()Lcn/manstep/phonemirrorBox/q0/g;
    move-result-object v0
    if-eqz v0, :L10
  .line 3
    invoke-interface { v0 }, Lcn/manstep/phonemirrorBox/q0/g;->c()I
    move-result v1
  .line 4
    sget-boolean v2, Lcn/manstep/phonemirrorBox/BoxInterface/f;->R:Z
    invoke-interface { v0, v2 }, Lcn/manstep/phonemirrorBox/q0/g;->l(Z)I
    move-result v2
  .line 5
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "decodeRepeatFrames: minFrameCache="
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v4, ", repeatTimes="
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v4, ", size="
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->k:Lcn/manstep/phonemirrorBox/BoxInterface/h;
    invoke-virtual { v4 }, Lcn/manstep/phonemirrorBox/BoxInterface/h;->f()I
    move-result v4
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    const-string v4, "BoxCarPlay"
    invoke-static { v4, v3 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 6
    invoke-interface { v0 }, Lcn/manstep/phonemirrorBox/q0/g;->h()I
    move-result v0
    const/4 v3, 5
    const/4 v5, 0
    if-ne v0, v3, :L0
  .line 7
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/u;->L()Z
    move-result v0
    if-eqz v0, :L0
    const/16 v0, 5000
    const/16 v3, 6555
  .line 8
    invoke-static { v5, v5, v0, v3 }, Lcn/manstep/phonemirrorBox/v0/e;->L(IIII)V
    const/4 v6, 2
  .line 9
    invoke-static { v6, v5, v0, v3 }, Lcn/manstep/phonemirrorBox/v0/e;->L(IIII)V
  :L0
  .line 10
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->k:Lcn/manstep/phonemirrorBox/BoxInterface/h;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/h;->f()I
    move-result v0
    if-lt v0, v1, :L10
  .line 11
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
    if-eqz v0, :L9
  :L1
    if-lez v2, :L9
  .line 12
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->x()Z
    move-result v0
    if-nez v0, :L2
    goto :L9
  :L2
    const/4 v0, 0
  :L3
  .line 13
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->k:Lcn/manstep/phonemirrorBox/BoxInterface/h;
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/h;->f()I
    move-result v1
    if-ge v0, v1, :L8
  .line 14
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->k:Lcn/manstep/phonemirrorBox/BoxInterface/h;
    iget-object v1, v1, Lcn/manstep/phonemirrorBox/BoxInterface/h;->a:Ljava/util/Vector;
    invoke-virtual { v1, v0 }, Ljava/util/Vector;->get(I)Ljava/lang/Object;
    move-result-object v1
    move-object v7, v1
    check-cast v7, [B
  .line 15
    iget-object v6, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
    const/4 v8, 0
    array-length v9, v7
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->k:Lcn/manstep/phonemirrorBox/BoxInterface/h;
    iget-object v1, v1, Lcn/manstep/phonemirrorBox/BoxInterface/h;->b:Ljava/util/Vector;
    invoke-virtual { v1, v0 }, Ljava/util/Vector;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/Long;
    invoke-virtual { v1 }, Ljava/lang/Long;->longValue()J
    move-result-wide v10
    invoke-static/range { v6 .. v11 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->s(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;[BIIJ)V
    const-wide/16 v6, 33
  :L4
  .line 16
    invoke-static { v6, v7 }, Ljava/lang/Thread;->sleep(J)V
  :L5
    goto :L7
  :L6
    move-exception v1
  .line 17
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v6, "decodeRepeatFrames: "
    invoke-virtual { v3, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/util/s;->g(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v3, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v4, v1 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
  :L7
    add-int/lit8 v0, v0, 1
    goto :L3
  :L8
    add-int/lit8 v2, v2, -1
    goto :L1
  :L9
  .line 18
    sput-boolean v5, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->o:Z
  :L10
    return-void
.end method

.method private o()V
  .registers 1
    return-void
.end method

.method private p(II)V
  .registers 5
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "newTexture "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p1, " "
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    return-void
.end method

.method private s([BIIJ)V
  .registers 14
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "BoxCarPlay,saveSpsPpsIframeData: offset="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, ", len="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, " "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    array-length v1, p1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    move v0, p2
  :L0
    add-int v1, p3, p2
    if-ge v0, v1, :L2
  .line 2
    aget-byte v2, p1, v0
    if-nez v2, :L1
    add-int/lit8 v2, v0, 1
    aget-byte v2, p1, v2
    if-nez v2, :L1
    add-int/lit8 v2, v0, 2
    aget-byte v2, p1, v2
    if-nez v2, :L1
    add-int/lit8 v2, v0, 3
    aget-byte v2, p1, v2
    const/4 v3, 1
    if-ne v2, v3, :L1
    add-int/lit8 v2, v0, 4
    aget-byte v2, p1, v2
    and-int/lit8 v2, v2, 31
    const/4 v3, 5
    if-ne v2, v3, :L1
    const-string p3, "BoxCarPlay,saveSpsPpsIframeData: I frame was found."
  .line 3
    invoke-static { p3 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    goto :L2
  :L1
    add-int/lit8 v0, v0, 1
    goto :L0
  :L2
    sub-int p3, v0, p2
    sub-int/2addr v1, v0
    if-lez p3, :L3
  .line 4
    new-array v0, p3, [B
    sput-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->l:[B
    const/4 v2, 0
  .line 5
    invoke-static { p1, p2, v0, v2, p3 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  .line 6
    new-array v0, v1, [B
    sput-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->m:[B
    add-int/2addr p2, p3
  .line 7
    invoke-static { p1, p2, v0, v2, v1 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  :L3
    if-lez v1, :L4
  .line 8
    sget-object v3, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->m:[B
    const/4 v4, 0
    move-object v2, p0
    move v5, v1
    move-wide v6, p4
    invoke-virtual/range { v2 .. v7 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->r([BIIJ)V
  :L4
  .line 9
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p2, "BoxCarPlay,saveSpsPpsIframeData: spsppsDataLen :"
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, p3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 10
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p2, "BoxCarPlay,saveSpsPpsIframeData: iframeDataLen :"
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    return-void
.end method

.method private u()V
  .registers 2
    const-string v0, "shutdown"
  .line 1
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    invoke-static { }, Landroid/os/Looper;->myLooper()Landroid/os/Looper;
    move-result-object v0
    if-eqz v0, :L0
  .line 3
    invoke-static { }, Landroid/os/Looper;->myLooper()Landroid/os/Looper;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/os/Looper;->quit()V
  :L0
    return-void
.end method

.method private v(Landroid/view/SurfaceHolder;Z)V
  .registers 3
    return-void
.end method

.method private w(II)V
  .registers 5
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "surfaceChanged: RenderThread surfaceChanged "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p1, "x"
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    const-string p2, "BoxCarPlay"
    invoke-static { p2, p1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    return-void
.end method

.method private x()V
  .registers 2
    const-string v0, "RenderThread surfaceDestroyed"
  .line 1
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    return-void
.end method

.method public A()V
  .registers 2
    const-string v0, "RenderThread ask surfaceDestroyed"
  .line 1
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    const/4 v0, 0
  .line 2
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->d:Landroid/view/Surface;
  .line 3
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->l()V
    const/4 v0, 1
  .line 4
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->n:Z
    return-void
.end method

.method public l()V
  .catchall { :L0 .. :L4 } :L3
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->g:Ljava/lang/Object;
    monitor-enter v0
  :L0
  .line 2
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
    const/4 v2, 0
    if-eqz v1, :L1
    const-string v1, "BoxCarPlay,close decoder"
  .line 3
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  .line 4
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->a(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)V
  .line 5
    iput-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
  :L1
  .line 6
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->i:Ljava/util/concurrent/ScheduledExecutorService;
    if-eqz v1, :L2
  .line 7
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->i:Ljava/util/concurrent/ScheduledExecutorService;
    invoke-interface { v1 }, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V
  .line 8
    iput-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->i:Ljava/util/concurrent/ScheduledExecutorService;
  :L2
  .line 9
    monitor-exit v0
    return-void
  :L3
    move-exception v1
    monitor-exit v0
  :L4
    throw v1
.end method

.method public m([BIIJ)V
  .catch Ljava/lang/InterruptedException; { :L1 .. :L2 } :L3
  .catchall { :L8 .. :L27 } :L26
  .registers 19
    move-object v1, p0
  .line 1
    sget-boolean v0, Lcn/manstep/phonemirrorBox/p;->g:Z
    const/4 v2, 1
    const/4 v8, 7
    if-nez v0, :L7
    iget-object v0, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->d:Landroid/view/Surface;
    if-nez v0, :L7
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/e;->C()Z
    move-result v0
    if-eqz v0, :L7
    add-int/lit8 v0, p2, 4
    aget-byte v0, p1, v0
    and-int/lit8 v0, v0, 31
    if-ne v0, v8, :L7
    const/16 v0, 300
    const/16 v3, 300
  :L0
  .line 2
    iget-object v0, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->d:Landroid/view/Surface;
    if-nez v0, :L5
    const-wide/16 v4, 10
  :L1
  .line 3
    invoke-static { v4, v5 }, Ljava/lang/Thread;->sleep(J)V
  :L2
    goto :L4
  :L3
    move-exception v0
    move-object v4, v0
  .line 4
    invoke-static { v4 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L4
    add-int/lit8 v3, v3, -10
    if-gtz v3, :L0
  :L5
  .line 5
    sget-boolean v0, Lcn/manstep/phonemirrorBox/p;->i:Z
    if-eqz v0, :L6
  .line 6
    iget-object v0, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->d:Landroid/view/Surface;
    if-nez v0, :L6
  .line 7
    invoke-static { }, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->getSurface()Landroid/view/Surface;
    move-result-object v0
    iput-object v0, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->d:Landroid/view/Surface;
  :L6
  .line 8
    iget-object v0, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->d:Landroid/view/Surface;
    if-nez v0, :L7
    const-string v0, "BoxCarPlay,decode: Can't wait surface available, need request key frame!!"
  .line 9
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  .line 10
    sput-boolean v2, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->n:Z
  :L7
  .line 11
    iget-object v9, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->g:Ljava/lang/Object;
    monitor-enter v9
    add-int/lit8 v0, p2, 4
  :L8
  .line 12
    aget-byte v3, p1, v0
    and-int/lit8 v3, v3, 31
    if-ne v3, v8, :L9
  .line 13
    sput-boolean v2, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->p:Z
  :L9
  .line 14
    iget-object v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->i:Ljava/util/concurrent/ScheduledExecutorService;
    if-eqz v3, :L10
  .line 15
    iget-object v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->i:Ljava/util/concurrent/ScheduledExecutorService;
    invoke-interface { v3 }, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;
    const/4 v3, 0
  .line 16
    iput-object v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->i:Ljava/util/concurrent/ScheduledExecutorService;
  :L10
  .line 17
    sget-boolean v3, Lcn/manstep/phonemirrorBox/p;->g:Z
    if-eqz v3, :L12
  .line 18
    iget-object v0, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
    if-nez v0, :L11
  .line 19
    new-instance v0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
    invoke-direct { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;-><init>()V
    iput-object v0, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
  .line 20
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->p(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)V
  .line 21
    iget-object v0, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
    iget-object v2, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->d:Landroid/view/Surface;
    iget v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->e:I
    iget v4, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->f:I
    invoke-static { v0, v2, v3, v4 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->q(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;Landroid/view/Surface;II)V
  :L11
  .line 22
    iget-object v2, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
    move-object v3, p1
    move v4, p2
    move/from16 v5, p3
    move-wide/from16 v6, p4
    invoke-static/range { v2 .. v7 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->s(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;[BIIJ)V
    goto/16 :L25
  :L12
  .line 23
    iget-object v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
    const/16 v10, 8
    if-nez v3, :L17
  .line 24
    aget-byte v3, p1, v0
    and-int/lit8 v3, v3, 31
    if-eq v3, v8, :L16
    aget-byte v3, p1, v0
    and-int/lit8 v3, v3, 31
    if-ne v3, v10, :L13
    goto :L16
  :L13
  .line 25
    aget-byte v3, p1, v0
    and-int/lit8 v3, v3, 31
    const/4 v4, 5
    if-ne v3, v4, :L17
  .line 26
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "BoxCarPlay,decode: RenderThread, is I frame coming: mSurface="
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v4, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->d:Landroid/view/Surface;
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-static { v3 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 27
    iget-object v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->d:Landroid/view/Surface;
    if-eqz v3, :L17
    iget-object v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
    if-nez v3, :L17
  .line 28
    sget-object v3, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->l:[B
    if-eqz v3, :L14
  .line 29
    new-instance v3, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
    invoke-direct { v3 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;-><init>()V
    iput-object v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
  .line 30
    invoke-static { v3 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->p(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)V
  .line 31
    iget-object v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
    iget-object v4, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->d:Landroid/view/Surface;
    iget v5, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->e:I
    iget v6, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->f:I
    invoke-static { v3, v4, v5, v6 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->q(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;Landroid/view/Surface;II)V
  .line 32
    iget-object v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
    sget-object v4, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->l:[B
    move-wide/from16 v11, p4
    invoke-static { v3, v4, v11, v12 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->r(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;[BJ)V
    goto :L15
  :L14
    move-wide/from16 v11, p4
  :L15
  .line 33
    sput-boolean v2, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->o:Z
    goto :L18
  :L16
    move-wide/from16 v11, p4
  .line 34
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "BoxCarPlay,decode: RenderThread, is SPS PPS frame coming: mSurface="
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v4, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->d:Landroid/view/Surface;
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-static { v3 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 35
    invoke-direct/range { p0 .. p5 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->s([BIIJ)V
  .line 36
    iget-object v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->d:Landroid/view/Surface;
    if-eqz v3, :L18
    iget-object v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
    if-nez v3, :L18
  .line 37
    new-instance v3, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
    invoke-direct { v3 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;-><init>()V
    iput-object v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
  .line 38
    invoke-static { v3 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->p(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)V
  .line 39
    iget-object v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
    iget-object v4, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->d:Landroid/view/Surface;
    iget v5, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->e:I
    iget v6, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->f:I
    invoke-static { v3, v4, v5, v6 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->q(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;Landroid/view/Surface;II)V
  .line 40
    sput-boolean v2, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->o:Z
    goto :L18
  :L17
    move-wide/from16 v11, p4
  :L18
  .line 41
    iget-object v2, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
    if-eqz v2, :L20
  .line 42
    sget v2, Lcn/manstep/phonemirrorBox/p;->F:I
    if-lez v2, :L19
  .line 43
    iget-object v2, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
    move-object v3, p1
    move v4, p2
    move/from16 v5, p3
    move-wide/from16 v6, p4
    invoke-static/range { v2 .. v7 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->s(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;[BIIJ)V
    goto :L21
  :L19
  .line 44
    iget-object v2, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
    move-object v3, p1
    move v4, p2
    move/from16 v5, p3
    move-wide/from16 v6, p4
    invoke-static/range { v2 .. v7 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->t(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;[BIIJ)V
    goto :L21
  :L20
  .line 45
    iget-object v2, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->d:Landroid/view/Surface;
    if-eqz v2, :L21
    const-string v2, "BoxCarPlay,decode: mdecoder = null, should request Key frame!!!!!!"
  .line 46
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  .line 47
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->s()Lcn/manstep/phonemirrorBox/q0/g;
    move-result-object v2
    if-eqz v2, :L21
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->s()Lcn/manstep/phonemirrorBox/q0/g;
    move-result-object v2
    invoke-interface { v2 }, Lcn/manstep/phonemirrorBox/q0/g;->d()Z
    move-result v2
    if-eqz v2, :L21
    const/16 v2, 12
  .line 48
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
  :L21
  .line 49
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->s()Lcn/manstep/phonemirrorBox/q0/g;
    move-result-object v2
    if-eqz v2, :L22
  .line 50
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->s()Lcn/manstep/phonemirrorBox/q0/g;
    move-result-object v2
    invoke-interface { v2 }, Lcn/manstep/phonemirrorBox/q0/g;->f()Z
    move-result v2
    if-nez v2, :L23
  :L22
    sget-boolean v2, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->o:Z
    if-eqz v2, :L24
  :L23
  .line 51
    aget-byte v2, p1, v0
    and-int/lit8 v2, v2, 31
    if-eq v2, v8, :L24
    aget-byte v0, p1, v0
    and-int/lit8 v0, v0, 31
    if-eq v0, v10, :L24
  .line 52
    invoke-virtual/range { p0 .. p5 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->r([BIIJ)V
  :L24
  .line 53
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->o:Z
    if-eqz v0, :L25
  .line 54
    iget-object v0, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->j:Ljava/util/Timer;
    if-nez v0, :L25
  .line 55
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "BoxCarPlay,decode: bNeedDecodeRepeatFrame="
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-boolean v2, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->o:Z
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 56
    new-instance v0, Ljava/util/Timer;
    invoke-direct { v0 }, Ljava/util/Timer;-><init>()V
    iput-object v0, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->j:Ljava/util/Timer;
  .line 57
    new-instance v2, Lcn/manstep/phonemirrorBox/BoxInterface/b$f$c;
    invoke-direct { v2, p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$f$c;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/b$f;)V
    const-wide/16 v3, 200
    invoke-virtual { v0, v2, v3, v4 }, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
  :L25
  .line 58
    monitor-exit v9
    return-void
  :L26
    move-exception v0
    monitor-exit v9
  :L27
    goto :L29
  :L28
    throw v0
  :L29
    goto :L28
.end method

.method public q()V
  .registers 6
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->d:Landroid/view/Surface;
    if-eqz v0, :L1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
    if-eqz v0, :L1
  .line 2
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->l()V
  .line 3
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->J()Lcn/manstep/phonemirrorBox/q0/g;
    move-result-object v0
    invoke-interface { v0 }, Lcn/manstep/phonemirrorBox/q0/g;->d()Z
    move-result v0
    if-eqz v0, :L0
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->i:Ljava/util/concurrent/ScheduledExecutorService;
    if-nez v0, :L0
  .line 5
    new-instance v0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f$b;
    invoke-direct { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$f$b;-><init>()V
  .line 6
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    const/4 v2, 1
    invoke-direct { v1, v2 }, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->i:Ljava/util/concurrent/ScheduledExecutorService;
    const-wide/16 v2, 500
  .line 7
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
    invoke-interface { v1, v0, v2, v3, v4 }, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
  :L0
  .line 8
    new-instance v0, Landroid/os/Handler;
    invoke-direct { v0 }, Landroid/os/Handler;-><init>()V
    new-instance v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f$a;
    invoke-direct { v1, p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$f$a;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/b$f;)V
    const-wide/16 v2, 100
    invoke-virtual { v0, v1, v2, v3 }, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
  :L1
    return-void
.end method

.method public r([BIIJ)V
  .registers 8
    add-int/lit8 v0, p2, 4
  .line 1
    aget-byte v0, p1, v0
    and-int/lit8 v0, v0, 31
    const/4 v1, 5
    if-ne v0, v1, :L0
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "BoxCarPlay,saveH264Data:new I frame coming, clear cache :"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->k:Lcn/manstep/phonemirrorBox/BoxInterface/h;
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/h;->f()I
    move-result v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->k:Lcn/manstep/phonemirrorBox/BoxInterface/h;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/h;->b()V
  :L0
  .line 4
    new-array v0, p3, [B
    const/4 v1, 0
  .line 5
    invoke-static { p1, p2, v0, v1, p3 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  .line 6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->k:Lcn/manstep/phonemirrorBox/BoxInterface/h;
    invoke-virtual { p1, v0, p4, p5 }, Lcn/manstep/phonemirrorBox/BoxInterface/h;->a([BJ)V
    return-void
.end method

.method public run()V
  .catchall { :L0 .. :L1 } :L2
  .catchall { :L3 .. :L4 } :L2
  .registers 3
    const/16 v0, -20
  .line 1
    invoke-static { v0 }, Landroid/os/Process;->setThreadPriority(I)V
  .line 2
    invoke-static { }, Landroid/os/Looper;->prepare()V
  .line 3
    new-instance v0, Lcn/manstep/phonemirrorBox/BoxInterface/b$e;
    invoke-direct { v0, p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$e;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/b$f;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->c:Lcn/manstep/phonemirrorBox/BoxInterface/b$e;
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->g:Ljava/lang/Object;
    monitor-enter v0
    const/4 v1, 1
  :L0
  .line 5
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->h:Z
  .line 6
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->g:Ljava/lang/Object;
    invoke-virtual { v1 }, Ljava/lang/Object;->notify()V
  .line 7
    monitor-exit v0
  :L1
  .line 8
    invoke-static { }, Landroid/os/Looper;->loop()V
  .line 9
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->l()V
    return-void
  :L2
    move-exception v1
  :L3
  .line 10
    monitor-exit v0
  :L4
    throw v1
.end method

.method public t(II)V
  .registers 5
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "BoxCarPlay,sendNewTexture: RenderThread VideoSize: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, "x"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    iput p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->e:I
  .line 3
    iput p2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->f:I
  .line 4
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->l()V
  .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->k:Lcn/manstep/phonemirrorBox/BoxInterface/h;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/h;->b()V
  .line 6
    new-instance v0, Lcn/manstep/phonemirrorBox/util/x;
    invoke-direct { v0, p1, p2 }, Lcn/manstep/phonemirrorBox/util/x;-><init>(II)V
    const/4 p1, 6
    const/16 p2, 501
    invoke-static { p1, p2, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->P(IILjava/lang/Object;)Z
    const/4 p1, 1
    const/16 p2, 15
  .line 7
    invoke-static { p1, p2 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
    return-void
.end method

.method public y()V
  .catchall { :L0 .. :L1 } :L5
  .catch Ljava/lang/InterruptedException; { :L2 .. :L3 } :L0
  .catchall { :L2 .. :L3 } :L5
  .catchall { :L4 .. :L6 } :L5
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->g:Ljava/lang/Object;
    monitor-enter v0
  :L0
  .line 2
    iget-boolean v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->h:Z
  :L1
    if-nez v1, :L4
  :L2
  .line 3
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->g:Ljava/lang/Object;
    invoke-virtual { v1 }, Ljava/lang/Object;->wait()V
  :L3
    goto :L0
  :L4
  .line 4
    monitor-exit v0
    return-void
  :L5
    move-exception v1
    monitor-exit v0
  :L6
    goto :L8
  :L7
    throw v1
  :L8
    goto :L7
.end method

.method public z(Landroid/view/SurfaceHolder;Z)V
  .catchall { :L4 .. :L10 } :L9
  .registers 11
  .line 1
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "BoxCarPlay,waitforSurfaceAvailable:RenderThread ask SurfaceAvailable: Config.bUseTextureView = "
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-boolean v0, Lcn/manstep/phonemirrorBox/p;->i:Z
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-static { p2 }, Lcn/manstep/phonemirrorBox/util/s;->h(Ljava/lang/String;)V
  .line 2
    sget-boolean p2, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->p:Z
    const/4 v0, 1
    if-eqz p2, :L0
  .line 3
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->n:Z
  :L0
  .line 4
    sget-boolean p2, Lcn/manstep/phonemirrorBox/p;->i:Z
    if-eqz p2, :L1
  .line 5
    invoke-static { }, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->getSurface()Landroid/view/Surface;
    move-result-object p1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->d:Landroid/view/Surface;
    goto :L2
  :L1
    if-eqz p1, :L11
  .line 6
    invoke-interface { p1 }, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;
    move-result-object p1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->d:Landroid/view/Surface;
  :L2
    const-string p1, "BoxCarPlay"
  .line 7
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "waitforSurfaceAvailable: surface="
    invoke-virtual { p2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->d:Landroid/view/Surface;
    invoke-virtual { p2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-static { p1, p2 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 8
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 p2, 17
    if-lt p1, p2, :L3
  .line 9
    sget-boolean p1, Lcn/manstep/phonemirrorBox/p;->i:Z
    if-nez p1, :L3
  .line 10
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->d:Landroid/view/Surface;
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->k(Landroid/view/Surface;)V
    const-string p1, "flush black surface, avoid show last frame"
  .line 11
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L3
  .line 12
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->g:Ljava/lang/Object;
    monitor-enter p1
  :L4
  .line 13
    sget-boolean p2, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->n:Z
    const/4 v1, 0
    if-eqz p2, :L6
    const/16 p2, 12
  .line 14
    invoke-static { p2 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
  .line 15
    sget-object p2, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    if-eqz p2, :L5
    sget-object p2, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-virtual { p2 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->J()Lcn/manstep/phonemirrorBox/q0/g;
    move-result-object p2
    if-eqz p2, :L5
    sget-object p2, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-virtual { p2 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->J()Lcn/manstep/phonemirrorBox/q0/g;
    move-result-object p2
    invoke-interface { p2 }, Lcn/manstep/phonemirrorBox/q0/g;->d()Z
    move-result p2
    if-eqz p2, :L5
  .line 16
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->i:Ljava/util/concurrent/ScheduledExecutorService;
    if-nez p2, :L5
  .line 17
    new-instance p2, Lcn/manstep/phonemirrorBox/BoxInterface/b$f$b;
    invoke-direct { p2 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$f$b;-><init>()V
  .line 18
    new-instance v2, Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    invoke-direct { v2, v0 }, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V
    iput-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->i:Ljava/util/concurrent/ScheduledExecutorService;
    const-wide/16 v3, 500
  .line 19
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
    invoke-interface { v2, p2, v3, v4, v0 }, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
  :L5
  .line 20
    sput-boolean v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->n:Z
  :L6
  .line 21
    sget-object p2, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    if-eqz p2, :L8
    sget-object p2, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-virtual { p2 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->J()Lcn/manstep/phonemirrorBox/q0/g;
    move-result-object p2
    if-eqz p2, :L8
    sget-object p2, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-virtual { p2 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->J()Lcn/manstep/phonemirrorBox/q0/g;
    move-result-object p2
    invoke-interface { p2 }, Lcn/manstep/phonemirrorBox/q0/g;->f()Z
    move-result p2
    if-eqz p2, :L8
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->k:Lcn/manstep/phonemirrorBox/BoxInterface/h;
    invoke-virtual { p2 }, Lcn/manstep/phonemirrorBox/BoxInterface/h;->e()Z
    move-result p2
    if-nez p2, :L8
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
    if-nez p2, :L8
  .line 22
    new-instance p2, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
    invoke-direct { p2 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;-><init>()V
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
  .line 23
    invoke-static { p2 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->p(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)V
  .line 24
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->d:Landroid/view/Surface;
    iget v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->e:I
    iget v3, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->f:I
    invoke-static { p2, v0, v2, v3 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->q(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;Landroid/view/Surface;II)V
  .line 25
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->l:[B
    const-wide/16 v2, 0
    invoke-static { p2, v0, v2, v3 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->r(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;[BJ)V
  :L7
  .line 26
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->k:Lcn/manstep/phonemirrorBox/BoxInterface/h;
    invoke-virtual { p2 }, Lcn/manstep/phonemirrorBox/BoxInterface/h;->f()I
    move-result p2
    if-ge v1, p2, :L8
  .line 27
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->k:Lcn/manstep/phonemirrorBox/BoxInterface/h;
    iget-object p2, p2, Lcn/manstep/phonemirrorBox/BoxInterface/h;->a:Ljava/util/Vector;
    invoke-virtual { p2, v1 }, Ljava/util/Vector;->get(I)Ljava/lang/Object;
    move-result-object p2
    move-object v3, p2
    check-cast v3, [B
  .line 28
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
    const/4 v4, 0
    array-length v5, v3
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->k:Lcn/manstep/phonemirrorBox/BoxInterface/h;
    iget-object p2, p2, Lcn/manstep/phonemirrorBox/BoxInterface/h;->b:Ljava/util/Vector;
    invoke-virtual { p2, v1 }, Ljava/util/Vector;->get(I)Ljava/lang/Object;
    move-result-object p2
    check-cast p2, Ljava/lang/Long;
    invoke-virtual { p2 }, Ljava/lang/Long;->longValue()J
    move-result-wide v6
    invoke-static/range { v2 .. v7 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->s(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;[BIIJ)V
    add-int/lit8 v1, v1, 1
    goto :L7
  :L8
  .line 29
    monitor-exit p1
    return-void
  :L9
    move-exception p2
    monitor-exit p1
  :L10
    throw p2
  :L11
    return-void
.end method
