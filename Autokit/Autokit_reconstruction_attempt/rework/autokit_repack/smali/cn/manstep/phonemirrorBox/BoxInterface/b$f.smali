.class public Lcn/manstep/phonemirrorBox/BoxInterface/b$f;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/manstep/phonemirrorBox/BoxInterface/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/manstep/phonemirrorBox/BoxInterface/b$f$c;,
        Lcn/manstep/phonemirrorBox/BoxInterface/b$f$b;
    }
.end annotation


# static fields
.field public static l:[B

.field public static m:[B

.field public static n:Z

.field public static o:Z

.field public static p:Z


# instance fields
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


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 5
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 6
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->g:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->h:Z

    .line 8
    new-instance v0, Lcn/manstep/phonemirrorBox/BoxInterface/h;

    const/16 v1, 0x140

    invoke-direct {v0, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/h;-><init>(I)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->k:Lcn/manstep/phonemirrorBox/BoxInterface/h;

    return-void
.end method

.method public constructor <init>(Lcn/manstep/phonemirrorBox/BoxInterface/b$c;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->g:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->h:Z

    .line 4
    new-instance p1, Lcn/manstep/phonemirrorBox/BoxInterface/h;

    const/16 v0, 0x140

    invoke-direct {p1, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/h;-><init>(I)V

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
    invoke-direct {p0, p1, p2}, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->v(Landroid/view/SurfaceHolder;Z)V

    return-void
.end method

.method static synthetic c(Lcn/manstep/phonemirrorBox/BoxInterface/b$f;II)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->w(II)V

    return-void
.end method

.method static synthetic d(Lcn/manstep/phonemirrorBox/BoxInterface/b$f;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->x()V

    return-void
.end method

.method static synthetic e(Lcn/manstep/phonemirrorBox/BoxInterface/b$f;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->u()V

    return-void
.end method

.method static synthetic f(Lcn/manstep/phonemirrorBox/BoxInterface/b$f;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->o()V

    return-void
.end method

.method static synthetic g(Lcn/manstep/phonemirrorBox/BoxInterface/b$f;II)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->p(II)V

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
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->n()V

    return-void
.end method

.method static synthetic j(Lcn/manstep/phonemirrorBox/BoxInterface/b$f;Ljava/util/Timer;)Ljava/util/Timer;
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->j:Ljava/util/Timer;

    return-object p1
.end method

.method private k(Landroid/view/Surface;)V
    .registers 5

    .line 1
    :try_start_0
    new-instance v0, Ld/a/a/b/b;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ld/a/a/b/b;-><init>(Landroid/opengl/EGLContext;I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_2c

    .line 2
    :try_start_7
    new-instance v1, Ld/a/a/b/g;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Ld/a/a/b/g;-><init>(Ld/a/a/b/b;Landroid/view/Surface;Z)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_d} :catch_23

    .line 3
    invoke-virtual {v1}, Ld/a/a/b/c;->d()V

    const/4 p1, 0x0

    .line 4
    invoke-static {p1, p1, p1, p1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 p1, 0x4000

    .line 5
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 6
    invoke-virtual {v1}, Ld/a/a/b/c;->f()Z

    .line 7
    invoke-virtual {v1}, Ld/a/a/b/g;->g()V

    .line 8
    invoke-virtual {v0}, Ld/a/a/b/b;->g()V

    return-void

    :catch_23
    move-exception p1

    .line 9
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    return-void

    :catch_2c
    move-exception p1

    .line 10
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    return-void
.end method

.method private n()V
    .registers 13

    .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    if-eqz v0, :cond_c4

    .line 2
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->J()Lcn/manstep/phonemirrorBox/q0/g;

    move-result-object v0

    if-eqz v0, :cond_c4

    .line 3
    invoke-interface {v0}, Lcn/manstep/phonemirrorBox/q0/g;->c()I

    move-result v1

    .line 4
    sget-boolean v2, Lcn/manstep/phonemirrorBox/BoxInterface/f;->R:Z

    invoke-interface {v0, v2}, Lcn/manstep/phonemirrorBox/q0/g;->l(Z)I

    move-result v2

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decodeRepeatFrames: minFrameCache="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", repeatTimes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->k:Lcn/manstep/phonemirrorBox/BoxInterface/h;

    invoke-virtual {v4}, Lcn/manstep/phonemirrorBox/BoxInterface/h;->f()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BoxCarPlay"

    invoke-static {v4, v3}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-interface {v0}, Lcn/manstep/phonemirrorBox/q0/g;->h()I

    move-result v0

    const/4 v3, 0x5

    const/4 v5, 0x0

    if-ne v0, v3, :cond_5d

    .line 7
    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/u;->L()Z

    move-result v0

    if-eqz v0, :cond_5d

    const/16 v0, 0x1388

    const/16 v3, 0x199b

    .line 8
    invoke-static {v5, v5, v0, v3}, Lcn/manstep/phonemirrorBox/v0/e;->L(IIII)V

    const/4 v6, 0x2

    .line 9
    invoke-static {v6, v5, v0, v3}, Lcn/manstep/phonemirrorBox/v0/e;->L(IIII)V

    .line 10
    :cond_5d
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->k:Lcn/manstep/phonemirrorBox/BoxInterface/h;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/h;->f()I

    move-result v0

    if-lt v0, v1, :cond_c4

    .line 11
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    if-eqz v0, :cond_c2

    :goto_69
    if-lez v2, :cond_c2

    .line 12
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->x()Z

    move-result v0

    if-nez v0, :cond_74

    goto :goto_c2

    :cond_74
    const/4 v0, 0x0

    .line 13
    :goto_75
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->k:Lcn/manstep/phonemirrorBox/BoxInterface/h;

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/h;->f()I

    move-result v1

    if-ge v0, v1, :cond_bf

    .line 14
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->k:Lcn/manstep/phonemirrorBox/BoxInterface/h;

    iget-object v1, v1, Lcn/manstep/phonemirrorBox/BoxInterface/h;->a:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [B

    .line 15
    iget-object v6, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    const/4 v8, 0x0

    array-length v9, v7

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->k:Lcn/manstep/phonemirrorBox/BoxInterface/h;

    iget-object v1, v1, Lcn/manstep/phonemirrorBox/BoxInterface/h;->b:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static/range {v6 .. v11}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->s(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;[BIIJ)V

    const-wide/16 v6, 0x21

    .line 16
    :try_start_9f
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a2
    .catch Ljava/lang/InterruptedException; {:try_start_9f .. :try_end_a2} :catch_a3

    goto :goto_bc

    :catch_a3
    move-exception v1

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decodeRepeatFrames: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/util/s;->g(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_bc
    add-int/lit8 v0, v0, 0x1

    goto :goto_75

    :cond_bf
    add-int/lit8 v2, v2, -0x1

    goto :goto_69

    .line 18
    :cond_c2
    :goto_c2
    sput-boolean v5, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->o:Z

    :cond_c4
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

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "newTexture "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    return-void
.end method

.method private s([BIIJ)V
    .registers 14

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BoxCarPlay,saveSpsPpsIframeData: offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    move v0, p2

    :goto_26
    add-int v1, p3, p2

    if-ge v0, v1, :cond_53

    .line 2
    aget-byte v2, p1, v0

    if-nez v2, :cond_50

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p1, v2

    if-nez v2, :cond_50

    add-int/lit8 v2, v0, 0x2

    aget-byte v2, p1, v2

    if-nez v2, :cond_50

    add-int/lit8 v2, v0, 0x3

    aget-byte v2, p1, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_50

    add-int/lit8 v2, v0, 0x4

    aget-byte v2, p1, v2

    and-int/lit8 v2, v2, 0x1f

    const/4 v3, 0x5

    if-ne v2, v3, :cond_50

    const-string p3, "BoxCarPlay,saveSpsPpsIframeData: I frame was found."

    .line 3
    invoke-static {p3}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    goto :goto_53

    :cond_50
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_53
    :goto_53
    sub-int p3, v0, p2

    sub-int/2addr v1, v0

    if-lez p3, :cond_68

    .line 4
    new-array v0, p3, [B

    sput-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->l:[B

    const/4 v2, 0x0

    .line 5
    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    new-array v0, v1, [B

    sput-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->m:[B

    add-int/2addr p2, p3

    .line 7
    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_68
    if-lez v1, :cond_73

    .line 8
    sget-object v3, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->m:[B

    const/4 v4, 0x0

    move-object v2, p0

    move v5, v1

    move-wide v6, p4

    invoke-virtual/range {v2 .. v7}, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->r([BIIJ)V

    .line 9
    :cond_73
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "BoxCarPlay,saveSpsPpsIframeData: spsppsDataLen :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "BoxCarPlay,saveSpsPpsIframeData: iframeDataLen :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    return-void
.end method

.method private u()V
    .registers 2

    const-string v0, "shutdown"

    .line 1
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_12
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

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surfaceChanged: RenderThread surfaceChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BoxCarPlay"

    invoke-static {p2, p1}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private x()V
    .registers 2

    const-string v0, "RenderThread surfaceDestroyed"

    .line 1
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public A()V
    .registers 2

    const-string v0, "RenderThread ask surfaceDestroyed"

    .line 1
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->d:Landroid/view/Surface;

    .line 3
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->l()V

    const/4 v0, 0x1

    .line 4
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->n:Z

    return-void
.end method

.method public l()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    const-string v1, "BoxCarPlay,close decoder"

    .line 3
    invoke-static {v1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->a(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)V

    .line 5
    iput-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    .line 6
    :cond_14
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->i:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v1, :cond_1f

    .line 7
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->i:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 8
    iput-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->i:Ljava/util/concurrent/ScheduledExecutorService;

    .line 9
    :cond_1f
    monitor-exit v0

    return-void

    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public m([BIIJ)V
    .registers 19

    move-object v1, p0

    .line 1
    sget-boolean v0, Lcn/manstep/phonemirrorBox/p;->g:Z

    const/4 v2, 0x1

    const/4 v8, 0x7

    if-nez v0, :cond_4d

    iget-object v0, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->d:Landroid/view/Surface;

    if-nez v0, :cond_4d

    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/e;->C()Z

    move-result v0

    if-eqz v0, :cond_4d

    add-int/lit8 v0, p2, 0x4

    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x1f

    if-ne v0, v8, :cond_4d

    const/16 v0, 0x12c

    const/16 v3, 0x12c

    .line 2
    :cond_1d
    iget-object v0, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->d:Landroid/view/Surface;

    if-nez v0, :cond_34

    const-wide/16 v4, 0xa

    .line 3
    :try_start_23
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_26} :catch_27

    goto :goto_30

    :catch_27
    move-exception v0

    move-object v4, v0

    .line 4
    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    :goto_30
    add-int/lit8 v3, v3, -0xa

    if-gtz v3, :cond_1d

    .line 5
    :cond_34
    sget-boolean v0, Lcn/manstep/phonemirrorBox/p;->i:Z

    if-eqz v0, :cond_42

    .line 6
    iget-object v0, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->d:Landroid/view/Surface;

    if-nez v0, :cond_42

    .line 7
    invoke-static {}, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->d:Landroid/view/Surface;

    .line 8
    :cond_42
    iget-object v0, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->d:Landroid/view/Surface;

    if-nez v0, :cond_4d

    const-string v0, "BoxCarPlay,decode: Can\'t wait surface available, need request key frame!!"

    .line 9
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 10
    sput-boolean v2, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->n:Z

    .line 11
    :cond_4d
    iget-object v9, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->g:Ljava/lang/Object;

    monitor-enter v9

    add-int/lit8 v0, p2, 0x4

    .line 12
    :try_start_52
    aget-byte v3, p1, v0

    and-int/lit8 v3, v3, 0x1f

    if-ne v3, v8, :cond_5a

    .line 13
    sput-boolean v2, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->p:Z

    .line 14
    :cond_5a
    iget-object v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->i:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v3, :cond_66

    .line 15
    iget-object v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->i:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v3, 0x0

    .line 16
    iput-object v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->i:Ljava/util/concurrent/ScheduledExecutorService;

    .line 17
    :cond_66
    sget-boolean v3, Lcn/manstep/phonemirrorBox/p;->g:Z

    if-eqz v3, :cond_90

    .line 18
    iget-object v0, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    if-nez v0, :cond_83

    .line 19
    new-instance v0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    invoke-direct {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;-><init>()V

    iput-object v0, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    .line 20
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->p(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)V

    .line 21
    iget-object v0, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    iget-object v2, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->d:Landroid/view/Surface;

    iget v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->e:I

    iget v4, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->f:I

    invoke-static {v0, v2, v3, v4}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->q(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;Landroid/view/Surface;II)V

    .line 22
    :cond_83
    iget-object v2, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    move-object v3, p1

    move v4, p2

    move/from16 v5, p3

    move-wide/from16 v6, p4

    invoke-static/range {v2 .. v7}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->s(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;[BIIJ)V

    goto/16 :goto_1bd

    .line 23
    :cond_90
    iget-object v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    const/16 v10, 0x8

    if-nez v3, :cond_12b

    .line 24
    aget-byte v3, p1, v0

    and-int/lit8 v3, v3, 0x1f

    if-eq v3, v8, :cond_f0

    aget-byte v3, p1, v0

    and-int/lit8 v3, v3, 0x1f

    if-ne v3, v10, :cond_a3

    goto :goto_f0

    .line 25
    :cond_a3
    aget-byte v3, p1, v0

    and-int/lit8 v3, v3, 0x1f

    const/4 v4, 0x5

    if-ne v3, v4, :cond_12b

    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BoxCarPlay,decode: RenderThread, is I frame coming: mSurface="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->d:Landroid/view/Surface;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 27
    iget-object v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->d:Landroid/view/Surface;

    if-eqz v3, :cond_12b

    iget-object v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    if-nez v3, :cond_12b

    .line 28
    sget-object v3, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->l:[B

    if-eqz v3, :cond_eb

    .line 29
    new-instance v3, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    invoke-direct {v3}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;-><init>()V

    iput-object v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    .line 30
    invoke-static {v3}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->p(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)V

    .line 31
    iget-object v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    iget-object v4, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->d:Landroid/view/Surface;

    iget v5, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->e:I

    iget v6, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->f:I

    invoke-static {v3, v4, v5, v6}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->q(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;Landroid/view/Surface;II)V

    .line 32
    iget-object v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    sget-object v4, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->l:[B

    move-wide/from16 v11, p4

    invoke-static {v3, v4, v11, v12}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->r(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;[BJ)V

    goto :goto_ed

    :cond_eb
    move-wide/from16 v11, p4

    .line 33
    :goto_ed
    sput-boolean v2, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->o:Z

    goto :goto_12d

    :cond_f0
    :goto_f0
    move-wide/from16 v11, p4

    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BoxCarPlay,decode: RenderThread, is SPS PPS frame coming: mSurface="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->d:Landroid/view/Surface;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 35
    invoke-direct/range {p0 .. p5}, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->s([BIIJ)V

    .line 36
    iget-object v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->d:Landroid/view/Surface;

    if-eqz v3, :cond_12d

    iget-object v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    if-nez v3, :cond_12d

    .line 37
    new-instance v3, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    invoke-direct {v3}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;-><init>()V

    iput-object v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    .line 38
    invoke-static {v3}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->p(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)V

    .line 39
    iget-object v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    iget-object v4, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->d:Landroid/view/Surface;

    iget v5, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->e:I

    iget v6, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->f:I

    invoke-static {v3, v4, v5, v6}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->q(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;Landroid/view/Surface;II)V

    .line 40
    sput-boolean v2, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->o:Z

    goto :goto_12d

    :cond_12b
    move-wide/from16 v11, p4

    .line 41
    :cond_12d
    :goto_12d
    iget-object v2, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    if-eqz v2, :cond_14d

    .line 42
    sget v2, Lcn/manstep/phonemirrorBox/p;->F:I

    if-lez v2, :cond_141

    .line 43
    iget-object v2, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    move-object v3, p1

    move v4, p2

    move/from16 v5, p3

    move-wide/from16 v6, p4

    invoke-static/range {v2 .. v7}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->s(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;[BIIJ)V

    goto :goto_16b

    .line 44
    :cond_141
    iget-object v2, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    move-object v3, p1

    move v4, p2

    move/from16 v5, p3

    move-wide/from16 v6, p4

    invoke-static/range {v2 .. v7}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->t(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;[BIIJ)V

    goto :goto_16b

    .line 45
    :cond_14d
    iget-object v2, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->d:Landroid/view/Surface;

    if-eqz v2, :cond_16b

    const-string v2, "BoxCarPlay,decode: mdecoder = null, should request Key frame!!!!!!"

    .line 46
    invoke-static {v2}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 47
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->s()Lcn/manstep/phonemirrorBox/q0/g;

    move-result-object v2

    if-eqz v2, :cond_16b

    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->s()Lcn/manstep/phonemirrorBox/q0/g;

    move-result-object v2

    invoke-interface {v2}, Lcn/manstep/phonemirrorBox/q0/g;->d()Z

    move-result v2

    if-eqz v2, :cond_16b

    const/16 v2, 0xc

    .line 48
    invoke-static {v2}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    .line 49
    :cond_16b
    :goto_16b
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->s()Lcn/manstep/phonemirrorBox/q0/g;

    move-result-object v2

    if-eqz v2, :cond_17b

    .line 50
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->s()Lcn/manstep/phonemirrorBox/q0/g;

    move-result-object v2

    invoke-interface {v2}, Lcn/manstep/phonemirrorBox/q0/g;->f()Z

    move-result v2

    if-nez v2, :cond_17f

    :cond_17b
    sget-boolean v2, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->o:Z

    if-eqz v2, :cond_18e

    .line 51
    :cond_17f
    aget-byte v2, p1, v0

    and-int/lit8 v2, v2, 0x1f

    if-eq v2, v8, :cond_18e

    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x1f

    if-eq v0, v10, :cond_18e

    .line 52
    invoke-virtual/range {p0 .. p5}, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->r([BIIJ)V

    .line 53
    :cond_18e
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->o:Z

    if-eqz v0, :cond_1bd

    .line 54
    iget-object v0, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->j:Ljava/util/Timer;

    if-nez v0, :cond_1bd

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BoxCarPlay,decode: bNeedDecodeRepeatFrame="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->o:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 56
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->j:Ljava/util/Timer;

    .line 57
    new-instance v2, Lcn/manstep/phonemirrorBox/BoxInterface/b$f$c;

    invoke-direct {v2, p0}, Lcn/manstep/phonemirrorBox/BoxInterface/b$f$c;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/b$f;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 58
    :cond_1bd
    :goto_1bd
    monitor-exit v9

    return-void

    :catchall_1bf
    move-exception v0

    monitor-exit v9
    :try_end_1c1
    .catchall {:try_start_52 .. :try_end_1c1} :catchall_1bf

    goto :goto_1c3

    :goto_1c2
    throw v0

    :goto_1c3
    goto :goto_1c2
.end method

.method public q()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->d:Landroid/view/Surface;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    if-eqz v0, :cond_3e

    .line 2
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->l()V

    .line 3
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->J()Lcn/manstep/phonemirrorBox/q0/g;

    move-result-object v0

    invoke-interface {v0}, Lcn/manstep/phonemirrorBox/q0/g;->d()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->i:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_2f

    .line 5
    new-instance v0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f$b;

    invoke-direct {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/b$f$b;-><init>()V

    .line 6
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->i:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v2, 0x1f4

    .line 7
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v0, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 8
    :cond_2f
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f$a;

    invoke-direct {v1, p0}, Lcn/manstep/phonemirrorBox/BoxInterface/b$f$a;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/b$f;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3e
    return-void
.end method

.method public r([BIIJ)V
    .registers 8

    add-int/lit8 v0, p2, 0x4

    .line 1
    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x5

    if-ne v0, v1, :cond_28

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BoxCarPlay,saveH264Data:new I frame coming, clear cache :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->k:Lcn/manstep/phonemirrorBox/BoxInterface/h;

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/h;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->k:Lcn/manstep/phonemirrorBox/BoxInterface/h;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/h;->b()V

    .line 4
    :cond_28
    new-array v0, p3, [B

    const/4 v1, 0x0

    .line 5
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->k:Lcn/manstep/phonemirrorBox/BoxInterface/h;

    invoke-virtual {p1, v0, p4, p5}, Lcn/manstep/phonemirrorBox/BoxInterface/h;->a([BJ)V

    return-void
.end method

.method public run()V
    .registers 3

    const/16 v0, -0x14

    .line 1
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 3
    new-instance v0, Lcn/manstep/phonemirrorBox/BoxInterface/b$e;

    invoke-direct {v0, p0}, Lcn/manstep/phonemirrorBox/BoxInterface/b$e;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/b$f;)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->c:Lcn/manstep/phonemirrorBox/BoxInterface/b$e;

    .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->g:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 5
    :try_start_13
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->h:Z

    .line 6
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->g:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 7
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_13 .. :try_end_1b} :catchall_22

    .line 8
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 9
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->l()V

    return-void

    :catchall_22
    move-exception v1

    .line 10
    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public t(II)V
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BoxCarPlay,sendNewTexture: RenderThread VideoSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 2
    iput p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->e:I

    .line 3
    iput p2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->f:I

    .line 4
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->l()V

    .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->k:Lcn/manstep/phonemirrorBox/BoxInterface/h;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/h;->b()V

    .line 6
    new-instance v0, Lcn/manstep/phonemirrorBox/util/x;

    invoke-direct {v0, p1, p2}, Lcn/manstep/phonemirrorBox/util/x;-><init>(II)V

    const/4 p1, 0x6

    const/16 p2, 0x1f5

    invoke-static {p1, p2, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->P(IILjava/lang/Object;)Z

    const/4 p1, 0x1

    const/16 p2, 0xf

    .line 7
    invoke-static {p1, p2}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    return-void
.end method

.method public y()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :catch_3
    :goto_3
    :try_start_3
    iget-boolean v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->h:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_f

    if-nez v1, :cond_d

    .line 3
    :try_start_7
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->g:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_c} :catch_3
    .catchall {:try_start_7 .. :try_end_c} :catchall_f

    goto :goto_3

    .line 4
    :cond_d
    :try_start_d
    monitor-exit v0

    return-void

    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_f

    goto :goto_13

    :goto_12
    throw v1

    :goto_13
    goto :goto_12
.end method

.method public z(Landroid/view/SurfaceHolder;Z)V
    .registers 11

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BoxCarPlay,waitforSurfaceAvailable:RenderThread ask SurfaceAvailable: Config.bUseTextureView = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcn/manstep/phonemirrorBox/p;->i:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/manstep/phonemirrorBox/util/s;->h(Ljava/lang/String;)V

    .line 2
    sget-boolean p2, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->p:Z

    const/4 v0, 0x1

    if-eqz p2, :cond_1d

    .line 3
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->n:Z

    .line 4
    :cond_1d
    sget-boolean p2, Lcn/manstep/phonemirrorBox/p;->i:Z

    if-eqz p2, :cond_28

    .line 5
    invoke-static {}, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->getSurface()Landroid/view/Surface;

    move-result-object p1

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->d:Landroid/view/Surface;

    goto :goto_30

    :cond_28
    if-eqz p1, :cond_10c

    .line 6
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->d:Landroid/view/Surface;

    :goto_30
    const-string p1, "BoxCarPlay"

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "waitforSurfaceAvailable: surface="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->d:Landroid/view/Surface;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x11

    if-lt p1, p2, :cond_5c

    .line 9
    sget-boolean p1, Lcn/manstep/phonemirrorBox/p;->i:Z

    if-nez p1, :cond_5c

    .line 10
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->d:Landroid/view/Surface;

    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->k(Landroid/view/Surface;)V

    const-string p1, "flush black surface, avoid show last frame"

    .line 11
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 12
    :cond_5c
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->g:Ljava/lang/Object;

    monitor-enter p1

    .line 13
    :try_start_5f
    sget-boolean p2, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->n:Z

    const/4 v1, 0x0

    if-eqz p2, :cond_9a

    const/16 p2, 0xc

    .line 14
    invoke-static {p2}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    .line 15
    sget-object p2, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    if-eqz p2, :cond_98

    sget-object p2, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    invoke-virtual {p2}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->J()Lcn/manstep/phonemirrorBox/q0/g;

    move-result-object p2

    if-eqz p2, :cond_98

    sget-object p2, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    invoke-virtual {p2}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->J()Lcn/manstep/phonemirrorBox/q0/g;

    move-result-object p2

    invoke-interface {p2}, Lcn/manstep/phonemirrorBox/q0/g;->d()Z

    move-result p2

    if-eqz p2, :cond_98

    .line 16
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->i:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez p2, :cond_98

    .line 17
    new-instance p2, Lcn/manstep/phonemirrorBox/BoxInterface/b$f$b;

    invoke-direct {p2}, Lcn/manstep/phonemirrorBox/BoxInterface/b$f$b;-><init>()V

    .line 18
    new-instance v2, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {v2, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->i:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v3, 0x1f4

    .line 19
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, p2, v3, v4, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 20
    :cond_98
    sput-boolean v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->n:Z

    .line 21
    :cond_9a
    sget-object p2, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    if-eqz p2, :cond_107

    sget-object p2, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    invoke-virtual {p2}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->J()Lcn/manstep/phonemirrorBox/q0/g;

    move-result-object p2

    if-eqz p2, :cond_107

    sget-object p2, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    invoke-virtual {p2}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->J()Lcn/manstep/phonemirrorBox/q0/g;

    move-result-object p2

    invoke-interface {p2}, Lcn/manstep/phonemirrorBox/q0/g;->f()Z

    move-result p2

    if-eqz p2, :cond_107

    iget-object p2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->k:Lcn/manstep/phonemirrorBox/BoxInterface/h;

    invoke-virtual {p2}, Lcn/manstep/phonemirrorBox/BoxInterface/h;->e()Z

    move-result p2

    if-nez p2, :cond_107

    iget-object p2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    if-nez p2, :cond_107

    .line 22
    new-instance p2, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    invoke-direct {p2}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;-><init>()V

    iput-object p2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    .line 23
    invoke-static {p2}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->p(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)V

    .line 24
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->d:Landroid/view/Surface;

    iget v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->e:I

    iget v3, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->f:I

    invoke-static {p2, v0, v2, v3}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->q(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;Landroid/view/Surface;II)V

    .line 25
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->l:[B

    const-wide/16 v2, 0x0

    invoke-static {p2, v0, v2, v3}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->r(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;[BJ)V

    .line 26
    :goto_dc
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->k:Lcn/manstep/phonemirrorBox/BoxInterface/h;

    invoke-virtual {p2}, Lcn/manstep/phonemirrorBox/BoxInterface/h;->f()I

    move-result p2

    if-ge v1, p2, :cond_107

    .line 27
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->k:Lcn/manstep/phonemirrorBox/BoxInterface/h;

    iget-object p2, p2, Lcn/manstep/phonemirrorBox/BoxInterface/h;->a:Ljava/util/Vector;

    invoke-virtual {p2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, [B

    .line 28
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    const/4 v4, 0x0

    array-length v5, v3

    iget-object p2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->k:Lcn/manstep/phonemirrorBox/BoxInterface/h;

    iget-object p2, p2, Lcn/manstep/phonemirrorBox/BoxInterface/h;->b:Ljava/util/Vector;

    invoke-virtual {p2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static/range {v2 .. v7}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->s(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;[BIIJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_dc

    .line 29
    :cond_107
    monitor-exit p1

    return-void

    :catchall_109
    move-exception p2

    monitor-exit p1
    :try_end_10b
    .catchall {:try_start_5f .. :try_end_10b} :catchall_109

    throw p2

    :cond_10c
    return-void
.end method
