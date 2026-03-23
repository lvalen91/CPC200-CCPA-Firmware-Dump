.class public Lcn/manstep/phonemirrorBox/floatwindow/e;
.super Ljava/lang/Object;
.source "SourceFile"

.field private static volatile k:Lcn/manstep/phonemirrorBox/floatwindow/e;

.field private final a:Landroid/graphics/Point;

.field b:Z

.field c:Z

.field private d:Lcn/manstep/phonemirrorBox/floatwindow/f;

.field private e:Lcn/manstep/phonemirrorBox/floatwindow/c;

.field private f:Landroid/view/WindowManager$LayoutParams;

.field private g:Landroid/view/WindowManager$LayoutParams;

.field private h:Landroid/view/WindowManager;

.field private i:Z

.field private j:Ljava/lang/ref/WeakReference;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/ref/WeakReference<",
      "Landroid/app/Activity;",
      ">;"
    }
  .end annotation
.end field

.method static constructor <clinit>()V
  .registers 0
    return-void
.end method

.method private constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Landroid/graphics/Point;
    invoke-direct { v0 }, Landroid/graphics/Point;-><init>()V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->a:Landroid/graphics/Point;
    const/4 v0, 0
  .line 3
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->b:Z
  .line 4
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->c:Z
    const/4 v0, 1
  .line 5
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->i:Z
    return-void
.end method

.method private a(Landroid/content/Context;)V
  .catch Ljava/lang/Exception; { :L18 .. :L20 } :L21
  .registers 12
  .line 1
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/floatwindow/e;->h(Landroid/content/Context;)Landroid/view/WindowManager;
    move-result-object v0
  .line 2
    invoke-interface { v0 }, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
    move-result-object v1
    invoke-virtual { v1 }, Landroid/view/Display;->getWidth()I
    move-result v1
  .line 3
    invoke-interface { v0 }, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
    move-result-object v2
    invoke-virtual { v2 }, Landroid/view/Display;->getHeight()I
    move-result v2
  .line 4
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->d:Lcn/manstep/phonemirrorBox/floatwindow/f;
    invoke-virtual { v3 }, Lcn/manstep/phonemirrorBox/floatwindow/f;->getCurrentPosition()Landroid/graphics/Point;
    move-result-object v3
  .line 5
    iget v4, v3, Landroid/graphics/Point;->x:I
    div-int/lit8 v5, v1, 2
    if-le v4, v5, :L0
    const v4, 8388613
    goto :L1
  :L0
    const v4, 8388611
  :L1
  .line 6
    iget-object v6, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->a:Landroid/graphics/Point;
    iget v6, v6, Landroid/graphics/Point;->y:I
    iget-object v7, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->d:Lcn/manstep/phonemirrorBox/floatwindow/f;
    invoke-virtual { v7 }, Landroid/widget/LinearLayout;->getMeasuredHeight()I
    move-result v7
    div-int/lit8 v7, v7, 2
    sub-int/2addr v6, v7
  .line 7
    iget-object v7, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->e:Lcn/manstep/phonemirrorBox/floatwindow/c;
    const/4 v8, 1
    if-eqz v7, :L6
    invoke-virtual { v7 }, Lcn/manstep/phonemirrorBox/floatwindow/c;->getGravity()I
    move-result v7
    if-eq v7, v4, :L2
    goto :L6
  :L2
  .line 8
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->g:Landroid/view/WindowManager$LayoutParams;
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->e:Lcn/manstep/phonemirrorBox/floatwindow/c;
    invoke-virtual { v4 }, Lcn/manstep/phonemirrorBox/floatwindow/c;->d()Z
    move-result v4
    if-eqz v4, :L3
    sget v4, Lcn/manstep/phonemirrorBox/floatwindow/c;->q:I
    div-int/lit8 v4, v4, 2
    sub-int/2addr v5, v4
    goto :L4
  :L3
    iget v5, v3, Landroid/graphics/Point;->x:I
  :L4
    iput v5, p1, Landroid/view/WindowManager$LayoutParams;->x:I
    if-lez v6, :L5
  .line 9
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->g:Landroid/view/WindowManager$LayoutParams;
    iput v6, p1, Landroid/view/WindowManager$LayoutParams;->y:I
    goto/16 :L18
  :L5
  .line 10
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->g:Landroid/view/WindowManager$LayoutParams;
    div-int/lit8 v2, v2, 2
    sget v4, Lcn/manstep/phonemirrorBox/floatwindow/c;->r:I
    div-int/lit8 v4, v4, 2
    sub-int/2addr v2, v4
    add-int/lit8 v2, v2, -50
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->y:I
    goto/16 :L18
  :L6
  .line 11
    new-instance v7, Lcn/manstep/phonemirrorBox/floatwindow/c;
    invoke-direct { v7, p1, v4 }, Lcn/manstep/phonemirrorBox/floatwindow/c;-><init>(Landroid/content/Context;I)V
    iput-object v7, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->e:Lcn/manstep/phonemirrorBox/floatwindow/c;
  .line 12
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->g:Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :L11
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->x:I
    iget v9, v3, Landroid/graphics/Point;->x:I
    if-eq v4, v9, :L7
    goto :L11
  :L7
  .line 13
    invoke-virtual { v7 }, Lcn/manstep/phonemirrorBox/floatwindow/c;->d()Z
    move-result v4
    if-eqz v4, :L8
    sget v4, Lcn/manstep/phonemirrorBox/floatwindow/c;->q:I
    div-int/lit8 v4, v4, 2
    sub-int/2addr v5, v4
    goto :L9
  :L8
    iget v5, v3, Landroid/graphics/Point;->x:I
  :L9
    iput v5, p1, Landroid/view/WindowManager$LayoutParams;->x:I
    if-lez v6, :L10
  .line 14
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->g:Landroid/view/WindowManager$LayoutParams;
    iput v6, p1, Landroid/view/WindowManager$LayoutParams;->y:I
    goto :L18
  :L10
  .line 15
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->g:Landroid/view/WindowManager$LayoutParams;
    div-int/lit8 v2, v2, 2
    sget v4, Lcn/manstep/phonemirrorBox/floatwindow/c;->r:I
    div-int/lit8 v4, v4, 2
    sub-int/2addr v2, v4
    add-int/lit8 v2, v2, -50
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->y:I
    goto :L18
  :L11
  .line 16
    new-instance p1, Landroid/view/WindowManager$LayoutParams;
    invoke-direct { p1 }, Landroid/view/WindowManager$LayoutParams;-><init>()V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->g:Landroid/view/WindowManager$LayoutParams;
  .line 17
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->e:Lcn/manstep/phonemirrorBox/floatwindow/c;
    invoke-virtual { v4 }, Lcn/manstep/phonemirrorBox/floatwindow/c;->d()Z
    move-result v4
    if-eqz v4, :L12
    sget v4, Lcn/manstep/phonemirrorBox/floatwindow/c;->q:I
    div-int/lit8 v4, v4, 2
    sub-int/2addr v5, v4
    goto :L13
  :L12
    iget v5, v3, Landroid/graphics/Point;->x:I
  :L13
    iput v5, p1, Landroid/view/WindowManager$LayoutParams;->x:I
    if-lez v6, :L14
  .line 18
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->g:Landroid/view/WindowManager$LayoutParams;
    iput v6, p1, Landroid/view/WindowManager$LayoutParams;->y:I
    goto :L15
  :L14
  .line 19
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->g:Landroid/view/WindowManager$LayoutParams;
    div-int/lit8 v2, v2, 2
    sget v4, Lcn/manstep/phonemirrorBox/floatwindow/c;->r:I
    div-int/lit8 v4, v4, 2
    sub-int/2addr v2, v4
    add-int/lit8 v2, v2, -50
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->y:I
  :L15
  .line 20
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 26
    if-lt p1, v2, :L16
  .line 21
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->g:Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 2038
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->type:I
    goto :L17
  :L16
  .line 22
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->g:Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 2002
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->type:I
  :L17
  .line 23
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->g:Landroid/view/WindowManager$LayoutParams;
    const v2, 262184
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I
  .line 24
    iput v8, p1, Landroid/view/WindowManager$LayoutParams;->format:I
    const/16 v2, 51
  .line 25
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I
  .line 26
    sget v2, Lcn/manstep/phonemirrorBox/floatwindow/c;->q:I
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->width:I
  .line 27
    sget v2, Lcn/manstep/phonemirrorBox/floatwindow/c;->r:I
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->height:I
  .line 28
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->e:Lcn/manstep/phonemirrorBox/floatwindow/c;
    invoke-virtual { v2 }, Lcn/manstep/phonemirrorBox/floatwindow/c;->getWindowAnimationStyle()I
    move-result v2
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I
  :L18
  .line 29
    iget p1, v3, Landroid/graphics/Point;->x:I
    div-int/lit8 v1, v1, 2
    if-le p1, v1, :L19
  .line 30
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->g:Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->g:Landroid/view/WindowManager$LayoutParams;
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I
    sget v2, Lcn/manstep/phonemirrorBox/floatwindow/c;->q:I
    div-int/lit8 v2, v2, 2
    sub-int/2addr v1, v2
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I
  :L19
  .line 31
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->e:Lcn/manstep/phonemirrorBox/floatwindow/c;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->g:Landroid/view/WindowManager$LayoutParams;
    invoke-interface { v0, p1, v1 }, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  .line 32
    iput-boolean v8, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->b:Z
  :L20
    goto :L22
  :L21
    move-exception p1
  .line 33
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "FloatWindowManager,createBigWindow: \n"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { p1 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L22
  .line 34
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->e:Lcn/manstep/phonemirrorBox/floatwindow/c;
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->i:Z
    invoke-virtual { p1, v0 }, Lcn/manstep/phonemirrorBox/floatwindow/c;->b(Z)V
    return-void
.end method

.method private b(Landroid/content/Context;)V
  .registers 4
  .line 1
    invoke-virtual { p1 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    const v1, 2131034128
    invoke-virtual { v0, v1 }, Landroid/content/res/Resources;->getBoolean(I)Z
    move-result v0
    invoke-direct { p0, p1, v0 }, Lcn/manstep/phonemirrorBox/floatwindow/e;->c(Landroid/content/Context;Z)V
    return-void
.end method

.method private c(Landroid/content/Context;Z)V
  .catch Ljava/lang/RuntimeException; { :L4 .. :L5 } :L7
  .catch Ljava/lang/Exception; { :L4 .. :L5 } :L6
  .registers 8
    const-string v0, "FloatWindowManager,createSmallWindow: \n"
  .line 1
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/floatwindow/e;->h(Landroid/content/Context;)Landroid/view/WindowManager;
    move-result-object v1
  .line 2
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/floatwindow/e;->m(Landroid/content/Context;)V
  .line 3
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->d:Lcn/manstep/phonemirrorBox/floatwindow/f;
    if-nez v2, :L0
  .line 4
    new-instance v2, Lcn/manstep/phonemirrorBox/floatwindow/f;
    invoke-direct { v2, p1 }, Lcn/manstep/phonemirrorBox/floatwindow/f;-><init>(Landroid/content/Context;)V
    iput-object v2, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->d:Lcn/manstep/phonemirrorBox/floatwindow/f;
  :L0
  .line 5
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->f:Landroid/view/WindowManager$LayoutParams;
    const/4 v3, 1
    if-eqz v2, :L1
  .line 6
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->d:Lcn/manstep/phonemirrorBox/floatwindow/f;
    invoke-virtual { v4, p1, v2, p2 }, Lcn/manstep/phonemirrorBox/floatwindow/f;->f(Landroid/content/Context;Landroid/view/WindowManager$LayoutParams;Z)V
    goto :L4
  :L1
  .line 7
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->d:Lcn/manstep/phonemirrorBox/floatwindow/f;
    invoke-virtual { v2 }, Lcn/manstep/phonemirrorBox/floatwindow/f;->e()Landroid/view/WindowManager$LayoutParams;
    move-result-object v2
    iput-object v2, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->f:Landroid/view/WindowManager$LayoutParams;
  .line 8
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->d:Lcn/manstep/phonemirrorBox/floatwindow/f;
    invoke-virtual { v4, p1, v2, p2 }, Lcn/manstep/phonemirrorBox/floatwindow/f;->f(Landroid/content/Context;Landroid/view/WindowManager$LayoutParams;Z)V
  .line 9
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 p2, 26
    if-lt p1, p2, :L2
  .line 10
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->f:Landroid/view/WindowManager$LayoutParams;
    const/16 p2, 2038
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->type:I
    goto :L3
  :L2
  .line 11
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->f:Landroid/view/WindowManager$LayoutParams;
    const/16 p2, 2002
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->type:I
  :L3
  .line 12
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->f:Landroid/view/WindowManager$LayoutParams;
    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->format:I
    const p2, 65576
  .line 13
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I
    const/16 p2, 51
  .line 14
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I
  .line 15
    sget p2, Lcn/manstep/phonemirrorBox/floatwindow/f;->v:I
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->width:I
  .line 16
    sget p2, Lcn/manstep/phonemirrorBox/floatwindow/f;->w:I
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->height:I
  :L4
  .line 17
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->d:Lcn/manstep/phonemirrorBox/floatwindow/f;
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->f:Landroid/view/WindowManager$LayoutParams;
    invoke-interface { v1, p1, p2 }, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  .line 18
    iput-boolean v3, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->c:Z
  :L5
    goto :L8
  :L6
    move-exception p1
  .line 19
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { p1 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    goto :L8
  :L7
    move-exception p1
  .line 20
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { p1 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L8
  .line 21
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p2, "createSmallWindow: "
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->f:Landroid/view/WindowManager$LayoutParams;
    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->x:I
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p2, "x"
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->f:Landroid/view/WindowManager$LayoutParams;
    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->y:I
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    const-string p2, "FloatWindowManager"
    invoke-static { p2, p1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 22
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/floatwindow/e;->v()V
    return-void
.end method

.method public static g()Lcn/manstep/phonemirrorBox/floatwindow/e;
  .catchall { :L0 .. :L3 } :L2
  .registers 2
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/floatwindow/e;->k:Lcn/manstep/phonemirrorBox/floatwindow/e;
    if-nez v0, :L4
  .line 2
    const-class v0, Lcn/manstep/phonemirrorBox/floatwindow/e;
    monitor-enter v0
  :L0
  .line 3
    sget-object v1, Lcn/manstep/phonemirrorBox/floatwindow/e;->k:Lcn/manstep/phonemirrorBox/floatwindow/e;
    if-nez v1, :L1
  .line 4
    new-instance v1, Lcn/manstep/phonemirrorBox/floatwindow/e;
    invoke-direct { v1 }, Lcn/manstep/phonemirrorBox/floatwindow/e;-><init>()V
    sput-object v1, Lcn/manstep/phonemirrorBox/floatwindow/e;->k:Lcn/manstep/phonemirrorBox/floatwindow/e;
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
    sget-object v0, Lcn/manstep/phonemirrorBox/floatwindow/e;->k:Lcn/manstep/phonemirrorBox/floatwindow/e;
    return-object v0
.end method

.method private h(Landroid/content/Context;)Landroid/view/WindowManager;
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->h:Landroid/view/WindowManager;
    if-nez v0, :L0
    const-string v0, "window"
  .line 2
    invoke-virtual { p1, v0 }, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroid/view/WindowManager;
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->h:Landroid/view/WindowManager;
  :L0
  .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->h:Landroid/view/WindowManager;
    return-object p1
.end method

.method private l(Landroid/content/Context;)V
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L2
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->e:Lcn/manstep/phonemirrorBox/floatwindow/c;
    if-eqz v0, :L3
  .line 2
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/floatwindow/e;->h(Landroid/content/Context;)Landroid/view/WindowManager;
    move-result-object p1
  .line 3
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->b:Z
    if-eqz v0, :L3
  :L0
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->e:Lcn/manstep/phonemirrorBox/floatwindow/c;
    invoke-interface { p1, v0 }, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    const/4 p1, 0
  .line 5
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->b:Z
  :L1
    goto :L3
  :L2
    move-exception p1
  .line 6
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "FloatWindowManager,removeBigWindow: \n"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { p1 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L3
    return-void
.end method

.method private m(Landroid/content/Context;)V
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L2
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->d:Lcn/manstep/phonemirrorBox/floatwindow/f;
    if-eqz v0, :L3
  .line 2
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/floatwindow/f;->j()V
  .line 3
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/floatwindow/e;->h(Landroid/content/Context;)Landroid/view/WindowManager;
    move-result-object p1
  .line 4
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->c:Z
    if-eqz v0, :L3
  :L0
  .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->d:Lcn/manstep/phonemirrorBox/floatwindow/f;
    invoke-interface { p1, v0 }, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    const/4 p1, 0
  .line 6
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->c:Z
  :L1
    goto :L3
  :L2
    move-exception p1
  .line 7
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "FloatWindowManager,removeSmallWindow: \n"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { p1 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L3
    return-void
.end method

.method public d()Landroid/app/Activity;
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->j:Ljava/lang/ref/WeakReference;
    if-nez v0, :L0
    const/4 v0, 0
    return-object v0
  :L0
  .line 2
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/app/Activity;
    return-object v0
.end method

.method public e()Landroid/graphics/Rect;
  .registers 6
  .line 1
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/floatwindow/e;->d()Landroid/app/Activity;
    move-result-object v0
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Landroid/app/Activity;->getWindow()Landroid/view/Window;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/view/Window;->getDecorView()Landroid/view/View;
    move-result-object v0
    const v1, 16908290
    invoke-virtual { v0, v1 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v0
    const/4 v1, 2
    new-array v1, v1, [I
  .line 3
    invoke-virtual { v0, v1 }, Landroid/view/View;->getLocationOnScreen([I)V
    const/4 v2, 0
  .line 4
    aget v3, v1, v2
    const/4 v4, 1
  .line 5
    aget v1, v1, v4
  .line 6
    new-instance v4, Landroid/graphics/Rect;
    invoke-direct { v4, v2, v2, v2, v2 }, Landroid/graphics/Rect;-><init>(IIII)V
  .line 7
    iput v3, v4, Landroid/graphics/Rect;->left:I
  .line 8
    iput v1, v4, Landroid/graphics/Rect;->top:I
  .line 9
    invoke-virtual { v0 }, Landroid/view/View;->getWidth()I
    move-result v2
    add-int/2addr v3, v2
    iput v3, v4, Landroid/graphics/Rect;->right:I
  .line 10
    invoke-virtual { v0 }, Landroid/view/View;->getHeight()I
    move-result v0
    add-int/2addr v1, v0
    iput v1, v4, Landroid/graphics/Rect;->bottom:I
    goto :L1
  :L0
    const/4 v4, 0
  :L1
  .line 11
    invoke-static { }, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;
    move-result-object v0
    invoke-virtual { v0, v4 }, Lcn/manstep/phonemirrorBox/u0/c;->i(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    move-result-object v0
    if-eqz v0, :L2
  .line 12
    invoke-static { }, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;
    move-result-object v0
    invoke-virtual { v0, v4 }, Lcn/manstep/phonemirrorBox/u0/c;->i(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    move-result-object v4
  :L2
    return-object v4
.end method

.method public f()Lcn/manstep/phonemirrorBox/floatwindow/c;
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->e:Lcn/manstep/phonemirrorBox/floatwindow/c;
    return-object v0
.end method

.method public i()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->b:Z
    if-nez v0, :L1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->c:Z
    if-eqz v0, :L0
    goto :L1
  :L0
    const/4 v0, 0
    goto :L2
  :L1
    const/4 v0, 1
  :L2
    return v0
.end method

.method public j(Landroid/content/Context;)V
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/floatwindow/e;->l(Landroid/content/Context;)V
  .line 2
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/floatwindow/e;->m(Landroid/content/Context;)V
    const/4 p1, 0
  .line 3
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->e:Lcn/manstep/phonemirrorBox/floatwindow/c;
  .line 4
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->d:Lcn/manstep/phonemirrorBox/floatwindow/f;
    const/4 p1, 0
  .line 5
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->b:Z
  .line 6
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->c:Z
    return-void
.end method

.method public k(Landroid/content/Context;)V
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Lcn/manstep/phonemirrorBox/floatwindow/e;->j(Landroid/content/Context;)V
    const/4 p1, 0
  .line 2
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->g:Landroid/view/WindowManager$LayoutParams;
  .line 3
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->f:Landroid/view/WindowManager$LayoutParams;
    return-void
.end method

.method public n()V
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->d:Lcn/manstep/phonemirrorBox/floatwindow/f;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/floatwindow/f;->k()V
  :L0
    return-void
.end method

.method public o(Landroid/content/Context;)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->d:Lcn/manstep/phonemirrorBox/floatwindow/f;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/floatwindow/f;->h()Z
    move-result v0
    if-eqz v0, :L0
    return-void
  :L0
  .line 2
    invoke-virtual { p0, p1 }, Lcn/manstep/phonemirrorBox/floatwindow/e;->k(Landroid/content/Context;)V
  .line 3
    invoke-virtual { p1 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    const v1, 2131034129
    invoke-virtual { v0, v1 }, Landroid/content/res/Resources;->getBoolean(I)Z
    move-result v0
    invoke-direct { p0, p1, v0 }, Lcn/manstep/phonemirrorBox/floatwindow/e;->c(Landroid/content/Context;Z)V
    return-void
.end method

.method public p(Landroid/content/Context;Z)V
  .registers 5
  .line 1
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->d:Lcn/manstep/phonemirrorBox/floatwindow/f;
    invoke-virtual { p2 }, Lcn/manstep/phonemirrorBox/floatwindow/f;->getCurrentPosition()Landroid/graphics/Point;
    move-result-object p2
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "smallWindowPos: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->a:Landroid/graphics/Point;
    iget v1, v1, Landroid/graphics/Point;->x:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, ",point: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p2, Landroid/graphics/Point;->x:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v1, "FloatWindowManager"
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->d:Lcn/manstep/phonemirrorBox/floatwindow/f;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/floatwindow/f;->h()Z
    move-result v0
    if-eqz v0, :L0
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->a:Landroid/graphics/Point;
    iget v0, v0, Landroid/graphics/Point;->x:I
    iget p2, p2, Landroid/graphics/Point;->x:I
    if-eq v0, p2, :L0
  .line 4
    invoke-virtual { p0, p1 }, Lcn/manstep/phonemirrorBox/floatwindow/e;->k(Landroid/content/Context;)V
  .line 5
    invoke-virtual { p1 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object p2
    const v0, 2131034129
    invoke-virtual { p2, v0 }, Landroid/content/res/Resources;->getBoolean(I)Z
    move-result p2
    invoke-direct { p0, p1, p2 }, Lcn/manstep/phonemirrorBox/floatwindow/e;->c(Landroid/content/Context;Z)V
  :L0
    return-void
.end method

.method public q(Landroid/app/Activity;)V
  .registers 3
  .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;
    invoke-direct { v0, p1 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->j:Ljava/lang/ref/WeakReference;
    return-void
.end method

.method public r(Z)V
  .registers 2
  .line 1
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->i:Z
    return-void
.end method

.method public s(Landroid/content/Context;)V
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/floatwindow/e;->m(Landroid/content/Context;)V
  .line 2
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/floatwindow/e;->a(Landroid/content/Context;)V
    return-void
.end method

.method public t(Landroid/content/Context;)V
  .registers 3
  .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->c:Z
    if-nez v0, :L0
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->b:Z
    if-nez v0, :L0
  .line 2
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/floatwindow/e;->b(Landroid/content/Context;)V
  :L0
    return-void
.end method

.method public u(Landroid/content/Context;)V
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/floatwindow/e;->l(Landroid/content/Context;)V
  .line 2
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/floatwindow/e;->b(Landroid/content/Context;)V
    return-void
.end method

.method public v()V
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->a:Landroid/graphics/Point;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->f:Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I
    invoke-virtual { v0, v2, v1 }, Landroid/graphics/Point;->set(II)V
    return-void
.end method
