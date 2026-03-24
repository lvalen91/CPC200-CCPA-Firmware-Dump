.class public Ld/a/a/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Ld/a/a/b/b;

.field private b:Landroid/opengl/EGLSurface;

.field private c:I

.field private d:I


# direct methods
.method protected constructor <init>(Ld/a/a/b/b;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Ld/a/a/b/c;->b:Landroid/opengl/EGLSurface;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Ld/a/a/b/c;->c:I

    .line 4
    iput v0, p0, Ld/a/a/b/c;->d:I

    .line 5
    iput-object p1, p0, Ld/a/a/b/c;->a:Ld/a/a/b/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .registers 4

    .line 1
    iget-object v0, p0, Ld/a/a/b/c;->b:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v0, v1, :cond_f

    .line 2
    iget-object v0, p0, Ld/a/a/b/c;->a:Ld/a/a/b/b;

    invoke-virtual {v0, p1}, Ld/a/a/b/b;->b(Ljava/lang/Object;)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Ld/a/a/b/c;->b:Landroid/opengl/EGLSurface;

    return-void

    .line 3
    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "surface already created"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()I
    .registers 4

    .line 1
    iget v0, p0, Ld/a/a/b/c;->d:I

    if-gez v0, :cond_e

    .line 2
    iget-object v0, p0, Ld/a/a/b/c;->a:Ld/a/a/b/b;

    iget-object v1, p0, Ld/a/a/b/c;->b:Landroid/opengl/EGLSurface;

    const/16 v2, 0x3056

    invoke-virtual {v0, v1, v2}, Ld/a/a/b/b;->f(Landroid/opengl/EGLSurface;I)I

    move-result v0

    :cond_e
    return v0
.end method

.method public c()I
    .registers 4

    .line 1
    iget v0, p0, Ld/a/a/b/c;->c:I

    if-gez v0, :cond_e

    .line 2
    iget-object v0, p0, Ld/a/a/b/c;->a:Ld/a/a/b/b;

    iget-object v1, p0, Ld/a/a/b/c;->b:Landroid/opengl/EGLSurface;

    const/16 v2, 0x3057

    invoke-virtual {v0, v1, v2}, Ld/a/a/b/b;->f(Landroid/opengl/EGLSurface;I)I

    move-result v0

    :cond_e
    return v0
.end method

.method public d()V
    .registers 3

    .line 1
    iget-object v0, p0, Ld/a/a/b/c;->a:Ld/a/a/b/b;

    iget-object v1, p0, Ld/a/a/b/c;->b:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Ld/a/a/b/b;->d(Landroid/opengl/EGLSurface;)V

    return-void
.end method

.method public e()V
    .registers 3

    .line 1
    iget-object v0, p0, Ld/a/a/b/c;->a:Ld/a/a/b/b;

    iget-object v1, p0, Ld/a/a/b/c;->b:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Ld/a/a/b/b;->h(Landroid/opengl/EGLSurface;)V

    .line 2
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Ld/a/a/b/c;->b:Landroid/opengl/EGLSurface;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Ld/a/a/b/c;->d:I

    iput v0, p0, Ld/a/a/b/c;->c:I

    return-void
.end method

.method public f()Z
    .registers 3

    .line 1
    iget-object v0, p0, Ld/a/a/b/c;->a:Ld/a/a/b/b;

    iget-object v1, p0, Ld/a/a/b/c;->b:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Ld/a/a/b/b;->i(Landroid/opengl/EGLSurface;)Z

    move-result v0

    return v0
.end method
