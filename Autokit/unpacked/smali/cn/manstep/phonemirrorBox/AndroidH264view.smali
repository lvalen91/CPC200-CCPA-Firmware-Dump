.class public Lcn/manstep/phonemirrorBox/AndroidH264view;
.super Landroid/view/SurfaceView;
.implements Lcn/manstep/phonemirrorBox/BoxInterface/d$g;
.implements Landroid/view/SurfaceHolder$Callback;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcn/manstep/phonemirrorBox/AndroidH264view$b;,
    Lcn/manstep/phonemirrorBox/AndroidH264view$c;
  }
.end annotation

.field private b:Landroid/os/Handler;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Lcn/manstep/phonemirrorBox/AndroidH264view$b;

.field private j:Z

.field private k:Lcn/manstep/phonemirrorBox/AndroidH264view$c;

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 3
  .line 1
    invoke-direct { p0, p1, p2 }, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    const/4 p1, 0
  .line 2
    iput p1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view;->c:I
  .line 3
    iput p1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view;->d:I
  .line 4
    iput p1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view;->e:I
  .line 5
    iput p1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view;->f:I
  .line 6
    iput p1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view;->g:I
  .line 7
    iput p1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view;->h:I
    const/4 p2, 0
  .line 8
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/AndroidH264view;->i:Lcn/manstep/phonemirrorBox/AndroidH264view$b;
  .line 9
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view;->j:Z
  .line 10
    new-instance p1, Lcn/manstep/phonemirrorBox/AndroidH264view$c;
    invoke-direct { p1, p2 }, Lcn/manstep/phonemirrorBox/AndroidH264view$c;-><init>(Lcn/manstep/phonemirrorBox/AndroidH264view$a;)V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view;->k:Lcn/manstep/phonemirrorBox/AndroidH264view$c;
  .line 11
    invoke-virtual { p0 }, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;
    move-result-object p1
    invoke-interface { p1, p0 }, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V
  .line 12
    new-instance p1, Lcn/manstep/phonemirrorBox/AndroidH264view$a;
    invoke-direct { p1, p0 }, Lcn/manstep/phonemirrorBox/AndroidH264view$a;-><init>(Lcn/manstep/phonemirrorBox/AndroidH264view;)V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view;->b:Landroid/os/Handler;
    const-string p1, "AndroidH264view B"
  .line 13
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    return-void
.end method

.method static synthetic d(Lcn/manstep/phonemirrorBox/AndroidH264view;)Lcn/manstep/phonemirrorBox/AndroidH264view$b;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/AndroidH264view;->i:Lcn/manstep/phonemirrorBox/AndroidH264view$b;
    return-object p0
.end method

.method static synthetic e(Lcn/manstep/phonemirrorBox/AndroidH264view;Lcn/manstep/phonemirrorBox/AndroidH264view$b;)Lcn/manstep/phonemirrorBox/AndroidH264view$b;
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view;->i:Lcn/manstep/phonemirrorBox/AndroidH264view$b;
    return-object p1
.end method

.method static synthetic f(Lcn/manstep/phonemirrorBox/AndroidH264view;)Z
  .registers 1
  .line 1
    iget-boolean p0, p0, Lcn/manstep/phonemirrorBox/AndroidH264view;->j:Z
    return p0
.end method

.method static synthetic g(Lcn/manstep/phonemirrorBox/AndroidH264view;)I
  .registers 1
  .line 1
    iget p0, p0, Lcn/manstep/phonemirrorBox/AndroidH264view;->c:I
    return p0
.end method

.method static synthetic h(Lcn/manstep/phonemirrorBox/AndroidH264view;)I
  .registers 1
  .line 1
    iget p0, p0, Lcn/manstep/phonemirrorBox/AndroidH264view;->d:I
    return p0
.end method

.method private i(Landroid/view/Surface;)V
  .registers 5
  .line 1
    new-instance v0, Ld/a/a/b/b;
    const/4 v1, 0
    const/4 v2, 1
    invoke-direct { v0, v1, v2 }, Ld/a/a/b/b;-><init>(Landroid/opengl/EGLContext;I)V
  .line 2
    new-instance v1, Ld/a/a/b/g;
    const/4 v2, 0
    invoke-direct { v1, v0, p1, v2 }, Ld/a/a/b/g;-><init>(Ld/a/a/b/b;Landroid/view/Surface;Z)V
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
.end method

.method public a(ILjava/lang/Object;)V
  .registers 3
    return-void
.end method

.method public b()V
  .registers 6
  .line 1
    new-instance v0, Landroid/util/DisplayMetrics;
    invoke-direct { v0 }, Landroid/util/DisplayMetrics;-><init>()V
  .line 2
    invoke-virtual { p0 }, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;
    move-result-object v1
    const-string v2, "window"
    invoke-virtual { v1, v2 }, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroid/view/WindowManager;
  .line 3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v3, 17
    if-lt v2, v3, :L0
  .line 4
    invoke-interface { v1 }, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
    move-result-object v1
    invoke-virtual { v1, v0 }, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V
    goto :L1
  :L0
  .line 5
    invoke-interface { v1 }, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
    move-result-object v1
    invoke-virtual { v1, v0 }, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V
  :L1
  .line 6
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I
  .line 7
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I
  .line 8
    iget v2, p0, Lcn/manstep/phonemirrorBox/AndroidH264view;->c:I
    iget v3, p0, Lcn/manstep/phonemirrorBox/AndroidH264view;->d:I
    if-le v2, v3, :L2
    move v2, v1
    goto :L3
  :L2
    int-to-float v4, v0
    int-to-float v2, v2
    mul-float v4, v4, v2
    int-to-float v2, v3
    div-float/2addr v4, v2
    float-to-int v2, v4
    const v3, 65534
    and-int/2addr v2, v3
  :L3
  .line 9
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "H264 caculate_W = "
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v4, ", caculate_H = "
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-static { v3 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  .line 10
    iput v2, p0, Lcn/manstep/phonemirrorBox/AndroidH264view;->e:I
  .line 11
    iput v0, p0, Lcn/manstep/phonemirrorBox/AndroidH264view;->f:I
    sub-int/2addr v1, v2
  .line 12
    div-int/lit8 v1, v1, 2
    iput v1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view;->g:I
    sub-int/2addr v0, v0
  .line 13
    div-int/lit8 v0, v0, 2
    iput v0, p0, Lcn/manstep/phonemirrorBox/AndroidH264view;->h:I
  .line 14
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;
    iget v1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view;->e:I
    iget v2, p0, Lcn/manstep/phonemirrorBox/AndroidH264view;->f:I
    invoke-direct { v0, v1, v2 }, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V
  .line 15
    iget v1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view;->g:I
    iget v2, p0, Lcn/manstep/phonemirrorBox/AndroidH264view;->h:I
    const/4 v3, 0
    invoke-virtual { v0, v1, v2, v3, v3 }, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V
  .line 16
    invoke-virtual { p0, v0 }, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    return-void
.end method

.method public c(I)V
  .registers 2
    return-void
.end method

.method public n(Lcn/manstep/phonemirrorBox/BoxInterface/d;)V
  .registers 2
    return-void
.end method

.method public o(I)V
  .catchall { :L2 .. :L4 } :L6
  .catchall { :L7 .. :L8 } :L6
  .registers 4
    const/4 v0, 0
    if-eqz p1, :L1
    const/4 v1, 1
    if-eq p1, v1, :L0
    const/16 v1, 12
    if-eq p1, v1, :L1
    goto :L5
  :L0
  .line 1
    invoke-virtual { p0, v0 }, Landroid/view/SurfaceView;->setVisibility(I)V
    goto :L5
  :L1
    const-string p1, "on_Android_Parse Plug out"
  .line 2
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  .line 3
    monitor-enter p0
  :L2
  .line 4
    iput v0, p0, Lcn/manstep/phonemirrorBox/AndroidH264view;->c:I
  .line 5
    iput v0, p0, Lcn/manstep/phonemirrorBox/AndroidH264view;->d:I
  .line 6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view;->i:Lcn/manstep/phonemirrorBox/AndroidH264view$b;
    if-eqz p1, :L3
  .line 7
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view;->i:Lcn/manstep/phonemirrorBox/AndroidH264view$b;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->k(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)V
    const/4 p1, 0
  .line 8
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view;->i:Lcn/manstep/phonemirrorBox/AndroidH264view$b;
  .line 9
    iget-boolean p1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view;->j:Z
    if-eqz p1, :L3
  .line 10
    invoke-virtual { p0 }, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;
    move-result-object p1
    invoke-interface { p1 }, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;
    move-result-object p1
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/AndroidH264view;->i(Landroid/view/Surface;)V
  :L3
  .line 11
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view;->k:Lcn/manstep/phonemirrorBox/AndroidH264view$c;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/AndroidH264view$c;->b()V
  .line 12
    monitor-exit p0
  :L4
    const/4 p1, 4
  .line 13
    invoke-virtual { p0, p1 }, Landroid/view/SurfaceView;->setVisibility(I)V
  :L5
    return-void
  :L6
    move-exception p1
  :L7
  .line 14
    monitor-exit p0
  :L8
    throw p1
.end method

.method protected onAttachedToWindow()V
  .registers 2
    const-string v0, "AndroidH264view onAttachedToWindow"
  .line 1
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/v0/e;->M(Lcn/manstep/phonemirrorBox/BoxInterface/d$g;)Lcn/manstep/phonemirrorBox/BoxInterface/d;
  .line 3
    invoke-super { p0 }, Landroid/view/SurfaceView;->onAttachedToWindow()V
    return-void
.end method

.method protected onDetachedFromWindow()V
  .registers 2
    const-string v0, "AndroidH264view onDetachedFromWindow"
  .line 1
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    const/4 v0, 0
  .line 2
    iput v0, p0, Lcn/manstep/phonemirrorBox/AndroidH264view;->c:I
  .line 3
    iput v0, p0, Lcn/manstep/phonemirrorBox/AndroidH264view;->d:I
  .line 4
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/v0/e;->S(Lcn/manstep/phonemirrorBox/BoxInterface/d$g;)V
  .line 5
    invoke-super { p0 }, Landroid/view/SurfaceView;->onDetachedFromWindow()V
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
  .registers 2
    const/4 p1, 0
    return p1
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
  .registers 6
  .line 1
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "AndroidH264View surfaceChanged:"
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string p1, "("
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2, p3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p1, ":"
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2, p4 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p1, ")"
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
  .catchall { :L0 .. :L4 } :L3
  .registers 6
  .line 1
    monitor-enter p0
  :L0
  .line 2
    invoke-interface { p1 }, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;
    move-result-object v0
    invoke-direct { p0, v0 }, Lcn/manstep/phonemirrorBox/AndroidH264view;->i(Landroid/view/Surface;)V
    const/4 v0, 1
  .line 3
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/AndroidH264view;->j:Z
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AndroidH264view;->k:Lcn/manstep/phonemirrorBox/AndroidH264view$c;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/AndroidH264view$c;->a()I
    move-result v0
  .line 5
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "AndroidH264View surfaceCreated:"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string p1, " h264CacheFrameNum:"
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    if-lez v0, :L2
  .line 6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view;->i:Lcn/manstep/phonemirrorBox/AndroidH264view$b;
    if-nez p1, :L2
  .line 7
    new-instance p1, Lcn/manstep/phonemirrorBox/AndroidH264view$b;
    const/4 v0, 0
    invoke-direct { p1, v0 }, Lcn/manstep/phonemirrorBox/AndroidH264view$b;-><init>(Lcn/manstep/phonemirrorBox/AndroidH264view$a;)V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view;->i:Lcn/manstep/phonemirrorBox/AndroidH264view$b;
  .line 8
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->l(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)V
  .line 9
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view;->i:Lcn/manstep/phonemirrorBox/AndroidH264view$b;
    invoke-virtual { p0 }, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;
    move-result-object v0
    invoke-interface { v0 }, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;
    move-result-object v0
    iget v1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view;->c:I
    iget v2, p0, Lcn/manstep/phonemirrorBox/AndroidH264view;->d:I
    invoke-static { p1, v0, v1, v2 }, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->m(Lcn/manstep/phonemirrorBox/AndroidH264view$b;Landroid/view/Surface;II)V
  .line 10
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view;->i:Lcn/manstep/phonemirrorBox/AndroidH264view$b;
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AndroidH264view;->k:Lcn/manstep/phonemirrorBox/AndroidH264view$c;
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/AndroidH264view$c;->a:[B
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view;->k:Lcn/manstep/phonemirrorBox/AndroidH264view$c;
    iget-object v1, v1, Lcn/manstep/phonemirrorBox/AndroidH264view$c;->a:[B
    array-length v1, v1
    const/4 v2, 0
    invoke-static { p1, v0, v2, v1 }, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->n(Lcn/manstep/phonemirrorBox/AndroidH264view$b;[BII)V
    const/4 p1, 0
  :L1
  .line 11
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AndroidH264view;->k:Lcn/manstep/phonemirrorBox/AndroidH264view$c;
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/AndroidH264view$c;->b:Ljava/util/Vector;
    invoke-virtual { v0 }, Ljava/util/Vector;->size()I
    move-result v0
    if-ge p1, v0, :L2
  .line 12
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AndroidH264view;->k:Lcn/manstep/phonemirrorBox/AndroidH264view$c;
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/AndroidH264view$c;->b:Ljava/util/Vector;
    invoke-virtual { v0, p1 }, Ljava/util/Vector;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, [B
  .line 13
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view;->i:Lcn/manstep/phonemirrorBox/AndroidH264view$b;
    array-length v3, v0
    invoke-static { v1, v0, v2, v3 }, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->n(Lcn/manstep/phonemirrorBox/AndroidH264view$b;[BII)V
    add-int/lit8 p1, p1, 1
    goto :L1
  :L2
  .line 14
    monitor-exit p0
    return-void
  :L3
    move-exception p1
    monitor-exit p0
  :L4
    goto :L6
  :L5
    throw p1
  :L6
    goto :L5
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
  .catchall { :L0 .. :L3 } :L2
  .registers 4
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "AndroidH264View surfaceDestroyed:"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    monitor-enter p0
    const/4 p1, 0
  :L0
  .line 3
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view;->j:Z
  .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view;->i:Lcn/manstep/phonemirrorBox/AndroidH264view$b;
    if-eqz p1, :L1
  .line 5
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view;->i:Lcn/manstep/phonemirrorBox/AndroidH264view$b;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->k(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)V
    const/4 p1, 0
  .line 6
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view;->i:Lcn/manstep/phonemirrorBox/AndroidH264view$b;
  :L1
  .line 7
    monitor-exit p0
    return-void
  :L2
    move-exception p1
    monitor-exit p0
  :L3
    throw p1
.end method

.method public v([B)V
  .catchall { :L0 .. :L2 } :L1
  .catchall { :L6 .. :L7 } :L17
  .catch Ljava/lang/InterruptedException; { :L7 .. :L8 } :L9
  .catchall { :L7 .. :L8 } :L17
  .catchall { :L10 .. :L12 } :L17
  .catchall { :L13 .. :L16 } :L15
  .catchall { :L18 .. :L19 } :L17
  .registers 8
  .line 1
    invoke-static { p1 }, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;
    move-result-object v0
  .line 2
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;
    invoke-virtual { v0, v1 }, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    const/4 v1, 4
  .line 3
    invoke-virtual { v0, v1 }, Ljava/nio/ByteBuffer;->getInt(I)I
    move-result v1
    add-int/lit8 v1, v1, -36
    const/16 v2, 8
  .line 4
    invoke-virtual { v0, v2 }, Ljava/nio/ByteBuffer;->getInt(I)I
    move-result v2
    const/16 v3, 12
  .line 5
    invoke-virtual { v0, v3 }, Ljava/nio/ByteBuffer;->getInt(I)I
    move-result v3
    const/16 v4, 24
  .line 6
    invoke-virtual { v0, v4 }, Ljava/nio/ByteBuffer;->getInt(I)I
    move-result v4
    shr-int/lit8 v4, v4, 16
    and-int/lit16 v4, v4, 255
    const/4 v5, 1
    if-eq v4, v5, :L3
  .line 7
    monitor-enter p0
  :L0
  .line 8
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view;->b:Landroid/os/Handler;
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AndroidH264view;->b:Landroid/os/Handler;
    invoke-virtual { v0, v5 }, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
  .line 9
    monitor-exit p0
    return-void
  :L1
    move-exception p1
    monitor-exit p0
  :L2
    throw p1
  :L3
    if-lez v1, :L20
    if-lez v2, :L20
    if-lez v3, :L20
    const/16 v4, 2000
    if-gt v2, v4, :L20
    if-le v3, v4, :L4
    goto :L20
  :L4
  .line 10
    iget p1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view;->c:I
    if-ne p1, v2, :L5
    iget p1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view;->d:I
    if-eq p1, v3, :L12
  :L5
  .line 11
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "W:"
    invoke-virtual { p1, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v4, "H:"
    invoke-virtual { p1, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, v3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 12
    iput v2, p0, Lcn/manstep/phonemirrorBox/AndroidH264view;->c:I
  .line 13
    iput v3, p0, Lcn/manstep/phonemirrorBox/AndroidH264view;->d:I
  .line 14
    monitor-enter p0
  :L6
  .line 15
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view;->b:Landroid/os/Handler;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/AndroidH264view;->b:Landroid/os/Handler;
    const/4 v3, 2
    invoke-virtual { v2, v3 }, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;
    move-result-object v2
    invoke-virtual { p1, v2 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
  :L7
  .line 16
    invoke-virtual { p0 }, Ljava/lang/Object;->wait()V
  :L8
    goto :L11
  :L9
    move-exception p1
  :L10
  .line 17
    invoke-virtual { p1 }, Ljava/lang/InterruptedException;->printStackTrace()V
  .line 18
    invoke-static { p1 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L11
  .line 19
    monitor-exit p0
  :L12
  .line 20
    monitor-enter p0
  :L13
  .line 21
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view;->i:Lcn/manstep/phonemirrorBox/AndroidH264view$b;
    const/16 v2, 32
    if-eqz p1, :L14
  .line 22
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view;->i:Lcn/manstep/phonemirrorBox/AndroidH264view$b;
    invoke-virtual { v0 }, Ljava/nio/ByteBuffer;->array()[B
    move-result-object v3
    invoke-static { p1, v3, v2, v1 }, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->n(Lcn/manstep/phonemirrorBox/AndroidH264view$b;[BII)V
  :L14
  .line 23
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view;->k:Lcn/manstep/phonemirrorBox/AndroidH264view$c;
    invoke-virtual { v0 }, Ljava/nio/ByteBuffer;->array()[B
    move-result-object v0
    invoke-virtual { p1, v0, v2, v1 }, Lcn/manstep/phonemirrorBox/AndroidH264view$c;->c([BII)V
  .line 24
    monitor-exit p0
    return-void
  :L15
    move-exception p1
    monitor-exit p0
  :L16
    throw p1
  :L17
    move-exception p1
  :L18
  .line 25
    monitor-exit p0
  :L19
    throw p1
  :L20
  .line 26
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "Error bytes:"
    invoke-virtual { v0, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    array-length p1, p1
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p1, "W:"
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p1, "H:"
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p1, "h264size:"
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    return-void
.end method
