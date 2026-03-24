.class Lcn/manstep/phonemirrorBox/n0/a$h;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/manstep/phonemirrorBox/n0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "h"
.end annotation


# instance fields
.field b:F

.field c:F

.field d:F

.field e:I

.field f:I

.field private g:Ld/a/a/a;

.field private final h:Ld/a/a/b/e;

.field private i:Z

.field private j:Lcn/manstep/phonemirrorBox/n0/a$c;

.field private k:Ld/a/a/b/b;

.field private l:Ld/a/a/b/g;

.field private m:I

.field private n:I

.field private o:Ld/a/a/b/f;

.field private p:F

.field private q:F

.field private r:Landroid/graphics/SurfaceTexture;

.field private s:Ljava/lang/Object;

.field private t:Ljava/lang/Object;

.field private u:Z

.field private v:Ljava/lang/Object;

.field private w:Z

.field private x:Lcn/manstep/phonemirrorBox/n0/a$g;

.field private y:[F

.field private z:Lcn/manstep/phonemirrorBox/n0/a$d;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 20
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/high16 v0, 0x42c80000    # 100.0f

    .line 21
    iput v0, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->b:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 22
    iput v0, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->c:F

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->d:F

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->e:I

    .line 25
    iput v0, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->f:I

    .line 26
    new-instance v1, Ld/a/a/a;

    sget-object v2, Ld/a/a/b/a$b;->c:Ld/a/a/b/a$b;

    invoke-direct {v1, v2}, Ld/a/a/a;-><init>(Ld/a/a/b/a$b;)V

    iput-object v1, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->g:Ld/a/a/a;

    .line 27
    new-instance v2, Ld/a/a/b/e;

    invoke-direct {v2, v1}, Ld/a/a/b/e;-><init>(Ld/a/a/b/a;)V

    iput-object v2, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->h:Ld/a/a/b/e;

    .line 28
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->i:Z

    .line 29
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->s:Ljava/lang/Object;

    .line 30
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->t:Ljava/lang/Object;

    .line 31
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->u:Z

    .line 32
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->v:Ljava/lang/Object;

    .line 33
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->w:Z

    const/16 v1, 0x10

    new-array v1, v1, [F

    .line 34
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->y:[F

    const/4 v1, 0x0

    .line 35
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->z:Lcn/manstep/phonemirrorBox/n0/a$d;

    .line 36
    iput v0, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->e:I

    .line 37
    iput v0, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->f:I

    return-void
.end method

.method public constructor <init>(Lcn/manstep/phonemirrorBox/n0/a$d;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/high16 v0, 0x42c80000    # 100.0f

    .line 2
    iput v0, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->b:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    iput v0, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->c:F

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->d:F

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->e:I

    .line 6
    iput v0, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->f:I

    .line 7
    new-instance v1, Ld/a/a/a;

    sget-object v2, Ld/a/a/b/a$b;->c:Ld/a/a/b/a$b;

    invoke-direct {v1, v2}, Ld/a/a/a;-><init>(Ld/a/a/b/a$b;)V

    iput-object v1, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->g:Ld/a/a/a;

    .line 8
    new-instance v2, Ld/a/a/b/e;

    invoke-direct {v2, v1}, Ld/a/a/b/e;-><init>(Ld/a/a/b/a;)V

    iput-object v2, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->h:Ld/a/a/b/e;

    .line 9
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->i:Z

    .line 10
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->s:Ljava/lang/Object;

    .line 11
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->t:Ljava/lang/Object;

    .line 12
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->u:Z

    .line 13
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->v:Ljava/lang/Object;

    .line 14
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->w:Z

    const/16 v1, 0x10

    new-array v1, v1, [F

    .line 15
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->y:[F

    const/4 v1, 0x0

    .line 16
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->z:Lcn/manstep/phonemirrorBox/n0/a$d;

    .line 17
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->z:Lcn/manstep/phonemirrorBox/n0/a$d;

    .line 18
    iput v0, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->e:I

    .line 19
    iput v0, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->f:I

    return-void
.end method

.method static synthetic a(Lcn/manstep/phonemirrorBox/n0/a$h;Landroid/view/SurfaceHolder;Z)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/manstep/phonemirrorBox/n0/a$h;->q(Landroid/view/SurfaceHolder;Z)V

    return-void
.end method

.method static synthetic b(Lcn/manstep/phonemirrorBox/n0/a$h;II)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/manstep/phonemirrorBox/n0/a$h;->r(II)V

    return-void
.end method

.method static synthetic c(Lcn/manstep/phonemirrorBox/n0/a$h;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/n0/a$h;->s()V

    return-void
.end method

.method static synthetic d(Lcn/manstep/phonemirrorBox/n0/a$h;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/n0/a$h;->p()V

    return-void
.end method

.method static synthetic e(Lcn/manstep/phonemirrorBox/n0/a$h;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/n0/a$h;->l()V

    return-void
.end method

.method static synthetic f(Lcn/manstep/phonemirrorBox/n0/a$h;II)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/manstep/phonemirrorBox/n0/a$h;->n(II)V

    return-void
.end method

.method static synthetic g(Lcn/manstep/phonemirrorBox/n0/a$h;)Lcn/manstep/phonemirrorBox/n0/a$g;
    .registers 1

    .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->x:Lcn/manstep/phonemirrorBox/n0/a$g;

    return-object p0
.end method

.method public static h(I)I
    .registers 2

    add-int/lit8 p0, p0, 0xf

    const v0, 0xfff0

    and-int/2addr p0, v0

    return p0
.end method

.method private i(FF)V
    .registers 6

    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p1, v0, v1

    const/4 v1, 0x3

    aput p2, v0, v1

    const/4 p2, 0x4

    aput v2, v0, p2

    const/4 p2, 0x5

    aput v2, v0, p2

    const/4 p2, 0x6

    aput p1, v0, p2

    const/4 p1, 0x7

    aput v2, v0, p1

    .line 1
    invoke-static {v0}, Ld/a/a/b/d;->c([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->g:Ld/a/a/a;

    invoke-virtual {p2, p1}, Ld/a/a/b/a;->g(Ljava/nio/FloatBuffer;)V

    return-void
.end method

.method private j()V
    .registers 4

    const-string v0, "draw start"

    .line 1
    invoke-static {v0}, Ld/a/a/b/d;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2
    invoke-static {v0, v0, v0, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4000

    .line 3
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->h:Ld/a/a/b/e;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->o:Ld/a/a/b/f;

    iget-object v2, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->y:[F

    invoke-virtual {v0, v1, v2}, Ld/a/a/b/e;->a(Ld/a/a/b/f;[F)V

    .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->l:Ld/a/a/b/g;

    invoke-virtual {v0}, Ld/a/a/b/c;->f()Z

    const-string v0, "draw done"

    .line 6
    invoke-static {v0}, Ld/a/a/b/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method private k()V
    .registers 13

    .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->m:I

    .line 2
    iget v1, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->n:I

    if-eq v0, v1, :cond_55

    if-eqz v0, :cond_55

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishSurfaceSetup size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " camera="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->e:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 4
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->y:[F

    const/4 v4, 0x0

    const/4 v5, 0x0

    int-to-float v2, v0

    const/4 v7, 0x0

    int-to-float v11, v1

    const/high16 v9, -0x40800000    # -1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    move v6, v2

    move v8, v11

    invoke-static/range {v3 .. v10}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 5
    iput v2, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->p:F

    div-float/2addr v11, v3

    .line 6
    iput v11, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->q:F

    const/4 v2, 0x0

    .line 7
    invoke-static {v2, v2, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 8
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/n0/a$h;->t()V

    :cond_55
    return-void
.end method

.method private l()V
    .registers 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->i:Z

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->v:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_6
    iget-boolean v1, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->u:Z

    if-eqz v1, :cond_15

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->i:Z

    .line 5
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->r:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 6
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/n0/a$h;->j()V

    .line 7
    :cond_15
    monitor-exit v0

    return-void

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public static m()Z
    .registers 2

    .line 1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "rk3188 ,"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "Need CLip!"

    .line 3
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method private n(II)V
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "newTexture "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 2
    iput p1, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->e:I

    .line 3
    iput p2, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->f:I

    .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->r:Landroid/graphics/SurfaceTexture;

    if-nez p1, :cond_48

    .line 5
    new-instance p1, Landroid/graphics/SurfaceTexture;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->r:Landroid/graphics/SurfaceTexture;

    .line 6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->h:Ld/a/a/b/e;

    invoke-virtual {p1, p2}, Ld/a/a/b/e;->g(I)V

    .line 7
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_43

    .line 8
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->r:Landroid/graphics/SurfaceTexture;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p1, p0, p2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    goto :goto_48

    .line 9
    :cond_43
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->r:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 10
    :cond_48
    :goto_48
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/n0/a$h;->k()V

    .line 11
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->j:Lcn/manstep/phonemirrorBox/n0/a$c;

    const/4 p2, 0x0

    if-eqz p1, :cond_55

    .line 12
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/n0/a$c;->d(Lcn/manstep/phonemirrorBox/n0/a$c;)V

    .line 13
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->j:Lcn/manstep/phonemirrorBox/n0/a$c;

    .line 14
    :cond_55
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->r:Landroid/graphics/SurfaceTexture;

    if-eqz p1, :cond_87

    .line 15
    new-instance p1, Lcn/manstep/phonemirrorBox/n0/a$c;

    invoke-direct {p1, p2}, Lcn/manstep/phonemirrorBox/n0/a$c;-><init>(Lcn/manstep/phonemirrorBox/n0/a$a;)V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->j:Lcn/manstep/phonemirrorBox/n0/a$c;

    if-eqz p1, :cond_87

    .line 16
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/n0/a$c;->e(Lcn/manstep/phonemirrorBox/n0/a$c;)V

    .line 17
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->z:Lcn/manstep/phonemirrorBox/n0/a$d;

    if-nez p1, :cond_7a

    .line 18
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->j:Lcn/manstep/phonemirrorBox/n0/a$c;

    new-instance p2, Landroid/view/Surface;

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->r:Landroid/graphics/SurfaceTexture;

    invoke-direct {p2, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iget v0, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->e:I

    iget v1, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->f:I

    invoke-static {p1, p2, v0, v1}, Lcn/manstep/phonemirrorBox/n0/a$c;->f(Lcn/manstep/phonemirrorBox/n0/a$c;Landroid/view/Surface;II)V

    goto :goto_87

    .line 19
    :cond_7a
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->j:Lcn/manstep/phonemirrorBox/n0/a$c;

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/n0/a$d;->b()Landroid/view/Surface;

    move-result-object p1

    iget v0, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->e:I

    iget v1, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->f:I

    invoke-static {p2, p1, v0, v1}, Lcn/manstep/phonemirrorBox/n0/a$c;->f(Lcn/manstep/phonemirrorBox/n0/a$c;Landroid/view/Surface;II)V

    .line 20
    :cond_87
    :goto_87
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->t:Ljava/lang/Object;

    monitor-enter p1

    .line 21
    :try_start_8a
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->t:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    .line 22
    monitor-exit p1

    return-void

    :catchall_91
    move-exception p2

    monitor-exit p1
    :try_end_93
    .catchall {:try_start_8a .. :try_end_93} :catchall_91

    throw p2
.end method

.method private o()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->u:Z

    if-eqz v0, :cond_26

    const-string v0, "releaseGl start"

    .line 2
    invoke-static {v0}, Ld/a/a/b/d;->a(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->l:Ld/a/a/b/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 4
    invoke-virtual {v0}, Ld/a/a/b/g;->g()V

    .line 5
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->l:Ld/a/a/b/g;

    .line 6
    :cond_13
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->o:Ld/a/a/b/f;

    if-eqz v0, :cond_1c

    .line 7
    invoke-virtual {v0}, Ld/a/a/b/f;->b()V

    .line 8
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->o:Ld/a/a/b/f;

    :cond_1c
    const-string v0, "releaseGl done"

    .line 9
    invoke-static {v0}, Ld/a/a/b/d;->a(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->k:Ld/a/a/b/b;

    invoke-virtual {v0}, Ld/a/a/b/b;->e()V

    :cond_26
    return-void
.end method

.method private p()V
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

.method private q(Landroid/view/SurfaceHolder;Z)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->v:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    .line 3
    new-instance v1, Ld/a/a/b/g;

    iget-object v2, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->k:Ld/a/a/b/b;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Ld/a/a/b/g;-><init>(Ld/a/a/b/b;Landroid/view/Surface;Z)V

    iput-object v1, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->l:Ld/a/a/b/g;

    .line 4
    invoke-virtual {v1}, Ld/a/a/b/c;->d()V

    .line 5
    new-instance p1, Ld/a/a/b/f;

    sget-object v1, Ld/a/a/b/f$b;->c:Ld/a/a/b/f$b;

    invoke-direct {p1, v1}, Ld/a/a/b/f;-><init>(Ld/a/a/b/f$b;)V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->o:Ld/a/a/b/f;

    if-nez p2, :cond_52

    .line 6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->l:Ld/a/a/b/g;

    invoke-virtual {p1}, Ld/a/a/b/c;->c()I

    move-result p1

    iput p1, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->m:I

    .line 7
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->l:Ld/a/a/b/g;

    invoke-virtual {p1}, Ld/a/a/b/c;->b()I

    move-result p1

    iput p1, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->n:I

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->e:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->f:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/n0/a$h;->k()V

    .line 10
    :cond_52
    iget-boolean p1, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->i:Z

    if-eqz p1, :cond_59

    .line 11
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/n0/a$h;->l()V

    :cond_59
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->u:Z

    .line 13
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->v:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 14
    monitor-exit v0

    return-void

    :catchall_63
    move-exception p1

    monitor-exit v0
    :try_end_65
    .catchall {:try_start_3 .. :try_end_65} :catchall_63

    throw p1
.end method

.method private r(II)V
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RenderThread surfaceChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 2
    iput p1, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->m:I

    .line 3
    iput p2, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->n:I

    .line 4
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/n0/a$h;->k()V

    .line 5
    iget-boolean p1, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->i:Z

    if-eqz p1, :cond_2a

    .line 6
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/n0/a$h;->l()V

    :cond_2a
    return-void
.end method

.method private s()V
    .registers 3

    const-string v0, "RenderThread surfaceDestroyed"

    .line 1
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->v:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_8
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/n0/a$h;->o()V

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->u:Z

    .line 5
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->v:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 6
    monitor-exit v0

    return-void

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_15

    throw v1
.end method

.method private t()V
    .registers 10

    .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->m:I

    .line 2
    iget v1, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->n:I

    .line 3
    invoke-static {}, Lcn/manstep/phonemirrorBox/n0/a$h;->m()Z

    move-result v2

    if-eqz v2, :cond_11

    iget v2, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->e:I

    invoke-static {v2}, Lcn/manstep/phonemirrorBox/n0/a$h;->h(I)I

    move-result v2

    goto :goto_13

    :cond_11
    iget v2, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->e:I

    .line 4
    :goto_13
    invoke-static {}, Lcn/manstep/phonemirrorBox/n0/a$h;->m()Z

    move-result v3

    if-eqz v3, :cond_20

    iget v3, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->f:I

    invoke-static {v3}, Lcn/manstep/phonemirrorBox/n0/a$h;->h(I)I

    move-result v3

    goto :goto_22

    :cond_20
    iget v3, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->f:I

    .line 5
    :goto_22
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    .line 6
    iget v1, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->b:F

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v1, v4

    mul-float v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    int-to-float v2, v2

    int-to-float v3, v3

    div-float v5, v2, v3

    mul-float v5, v5, v0

    .line 7
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 8
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 9
    iget v6, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->c:F

    div-float/2addr v6, v4

    sub-float/2addr v1, v6

    const/high16 v6, 0x43b40000    # 360.0f

    .line 10
    iget v7, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->d:F

    div-float/2addr v7, v4

    mul-float v7, v7, v6

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 11
    iget-object v6, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->h:Ld/a/a/b/e;

    int-to-float v7, v5

    int-to-float v8, v0

    invoke-virtual {v6, v7, v8}, Ld/a/a/b/e;->f(FF)V

    .line 12
    iget-object v6, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->h:Ld/a/a/b/e;

    iget v7, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->p:F

    iget v8, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->q:F

    invoke-virtual {v6, v7, v8}, Ld/a/a/b/e;->d(FF)V

    .line 13
    iget-object v6, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->h:Ld/a/a/b/e;

    int-to-float v4, v4

    invoke-virtual {v6, v4}, Ld/a/a/b/e;->e(F)V

    .line 14
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->g:Ld/a/a/a;

    invoke-virtual {v4, v1}, Ld/a/a/a;->h(F)V

    .line 15
    iget v1, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->e:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    .line 16
    iget v2, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->f:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    .line 17
    invoke-static {}, Lcn/manstep/phonemirrorBox/n0/a$h;->m()Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 18
    invoke-direct {p0, v1, v2}, Lcn/manstep/phonemirrorBox/n0/a$h;->i(FF)V

    .line 19
    :cond_7b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateGeometry setScale="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "offset: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .registers 3

    .line 1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_a

    .line 2
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/n0/a$h;->l()V

    goto :goto_f

    .line 3
    :cond_a
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->x:Lcn/manstep/phonemirrorBox/n0/a$g;

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/n0/a$g;->a()V

    :goto_f
    return-void
.end method

.method public run()V
    .registers 5

    const/16 v0, -0x14

    .line 1
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 3
    new-instance v0, Lcn/manstep/phonemirrorBox/n0/a$g;

    invoke-direct {v0, p0}, Lcn/manstep/phonemirrorBox/n0/a$g;-><init>(Lcn/manstep/phonemirrorBox/n0/a$h;)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->x:Lcn/manstep/phonemirrorBox/n0/a$g;

    .line 4
    new-instance v0, Ld/a/a/b/b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ld/a/a/b/b;-><init>(Landroid/opengl/EGLContext;I)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->k:Ld/a/a/b/b;

    .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->s:Ljava/lang/Object;

    monitor-enter v0

    const/4 v3, 0x1

    .line 6
    :try_start_1c
    iput-boolean v3, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->w:Z

    .line 7
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->s:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 8
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_44

    .line 9
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 10
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->j:Lcn/manstep/phonemirrorBox/n0/a$c;

    if-eqz v0, :cond_30

    .line 11
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/n0/a$c;->d(Lcn/manstep/phonemirrorBox/n0/a$c;)V

    .line 12
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->j:Lcn/manstep/phonemirrorBox/n0/a$c;

    .line 13
    :cond_30
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/n0/a$h;->o()V

    .line 14
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->k:Ld/a/a/b/b;

    invoke-virtual {v0}, Ld/a/a/b/b;->g()V

    .line 15
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->k:Ld/a/a/b/b;

    .line 16
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->s:Ljava/lang/Object;

    monitor-enter v1

    .line 17
    :try_start_3d
    iput-boolean v2, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->w:Z

    .line 18
    monitor-exit v1

    return-void

    :catchall_41
    move-exception v0

    monitor-exit v1
    :try_end_43
    .catchall {:try_start_3d .. :try_end_43} :catchall_41

    throw v0

    :catchall_44
    move-exception v1

    .line 19
    :try_start_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw v1
.end method

.method public u()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->s:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :catch_3
    :goto_3
    :try_start_3
    iget-boolean v1, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->w:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_f

    if-nez v1, :cond_d

    .line 3
    :try_start_7
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/n0/a$h;->s:Ljava/lang/Object;

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
