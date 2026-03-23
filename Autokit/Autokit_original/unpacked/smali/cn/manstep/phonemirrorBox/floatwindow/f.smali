.class public Lcn/manstep/phonemirrorBox/floatwindow/f;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

.field public static v:I

.field public static w:I

.field private b:Landroid/view/WindowManager;

.field private c:Landroid/view/WindowManager$LayoutParams;

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:I

.field private k:I

.field private l:Landroid/widget/ImageView;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Landroid/graphics/drawable/Drawable;

.field private r:Landroid/graphics/drawable/Drawable;

.field private s:Z

.field private final t:Landroid/os/CountDownTimer;

.field private final u:Landroid/os/CountDownTimer;

.method public constructor <init>(Landroid/content/Context;)V
  .registers 14
  .line 1
    invoke-direct { p0, p1 }, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
    const/4 p1, 0
  .line 2
    iput p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->j:I
  .line 3
    iput p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->k:I
  .line 4
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->p:Z
  .line 5
    new-instance p1, Lcn/manstep/phonemirrorBox/floatwindow/f$a;
    const-wide/16 v2, 1500
    const-wide/16 v4, 500
    move-object v0, p1
    move-object v1, p0
    invoke-direct/range { v0 .. v5 }, Lcn/manstep/phonemirrorBox/floatwindow/f$a;-><init>(Lcn/manstep/phonemirrorBox/floatwindow/f;JJ)V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->t:Landroid/os/CountDownTimer;
  .line 6
    new-instance p1, Lcn/manstep/phonemirrorBox/floatwindow/f$b;
    const-wide/16 v8, 1500
    const-wide/16 v10, 500
    move-object v6, p1
    move-object v7, p0
    invoke-direct/range { v6 .. v11 }, Lcn/manstep/phonemirrorBox/floatwindow/f$b;-><init>(Lcn/manstep/phonemirrorBox/floatwindow/f;JJ)V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->u:Landroid/os/CountDownTimer;
    return-void
.end method

.method static synthetic a(Lcn/manstep/phonemirrorBox/floatwindow/f;)V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/floatwindow/f;->i()V
    return-void
.end method

.method static synthetic b(Lcn/manstep/phonemirrorBox/floatwindow/f;)Landroid/widget/ImageView;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->l:Landroid/widget/ImageView;
    return-object p0
.end method

.method static synthetic c(Lcn/manstep/phonemirrorBox/floatwindow/f;)Z
  .registers 1
  .line 1
    iget-boolean p0, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->o:Z
    return p0
.end method

.method static synthetic d(Lcn/manstep/phonemirrorBox/floatwindow/f;)Landroid/os/CountDownTimer;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->t:Landroid/os/CountDownTimer;
    return-object p0
.end method

.method private g(Landroid/content/Context;Z)V
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L2
  .catch Ljava/lang/Error; { :L0 .. :L1 } :L2
  .catch Ljava/lang/Exception; { :L4 .. :L5 } :L6
  .catch Ljava/lang/Error; { :L4 .. :L5 } :L6
  .registers 8
    const/4 v0, 0
    const v1, 2131230902
  :L0
  .line 1
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;
    move-result-object v2
    invoke-static { v2, v1, v0 }, Lc/q/a/a/h;->b(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Lc/q/a/a/h;
    move-result-object v2
    iput-object v2, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->q:Landroid/graphics/drawable/Drawable;
  :L1
    goto :L3
  :L2
  .line 2
    invoke-static { p1, v1 }, Landroidx/core/content/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    move-result-object v1
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->q:Landroid/graphics/drawable/Drawable;
  :L3
    const v1, 2131230890
  :L4
  .line 3
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;
    move-result-object v2
    invoke-static { v2, v1, v0 }, Lc/q/a/a/h;->b(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Lc/q/a/a/h;
    move-result-object v0
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->r:Landroid/graphics/drawable/Drawable;
  :L5
    goto :L7
  :L6
  .line 4
    invoke-static { p1, v1 }, Landroidx/core/content/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    move-result-object v0
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->r:Landroid/graphics/drawable/Drawable;
  :L7
  .line 5
    invoke-virtual { p1 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    const v1, 2131034127
    invoke-virtual { v0, v1 }, Landroid/content/res/Resources;->getBoolean(I)Z
    move-result v0
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->m:Z
  .line 6
    invoke-virtual { p1 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    const v1, 2131034129
    invoke-virtual { v0, v1 }, Landroid/content/res/Resources;->getBoolean(I)Z
    move-result v0
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->o:Z
  .line 7
    invoke-virtual { p1 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    const v1, 2131034130
    invoke-virtual { v0, v1 }, Landroid/content/res/Resources;->getBoolean(I)Z
    move-result v0
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->n:Z
    const-string v0, "window"
  .line 8
    invoke-virtual { p1, v0 }, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/view/WindowManager;
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->b:Landroid/view/WindowManager;
  .line 9
    invoke-static { p1 }, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
    move-result-object p1
    const v0, 2131492927
    invoke-virtual { p1, v0, p0 }, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    const p1, 2131296785
  .line 10
    invoke-virtual { p0, p1 }, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
    move-result-object p1
    check-cast p1, Landroid/widget/ImageView;
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->l:Landroid/widget/ImageView;
  .line 11
    invoke-virtual { p1 }, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object p1
  .line 12
    new-instance v0, Landroid/util/DisplayMetrics;
    invoke-direct { v0 }, Landroid/util/DisplayMetrics;-><init>()V
  .line 13
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 17
    if-lt v1, v2, :L8
  .line 14
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->b:Landroid/view/WindowManager;
    invoke-interface { v1 }, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
    move-result-object v1
    invoke-virtual { v1, v0 }, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V
    goto :L9
  :L8
  .line 15
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->b:Landroid/view/WindowManager;
    invoke-interface { v1 }, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
    move-result-object v1
    invoke-virtual { v1, v0 }, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V
  :L9
  .line 16
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I
    iput v1, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->j:I
  .line 17
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I
    iput v1, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->k:I
  .line 18
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "FloatWindowSmallView: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v3, p1, Landroid/view/ViewGroup$LayoutParams;->width:I
    invoke-virtual { v1, v3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v3, "x"
    invoke-virtual { v1, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v4, p1, Landroid/view/ViewGroup$LayoutParams;->height:I
    invoke-virtual { v1, v4 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v4, ","
    invoke-virtual { v1, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v4, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->j:I
    invoke-virtual { v1, v4 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v4, " "
    invoke-virtual { v1, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v4, v0, Landroid/util/DisplayMetrics;->densityDpi:I
    invoke-virtual { v1, v4 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    const-string v4, "FloatWindowSmallView"
    invoke-static { v4, v1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 19
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I
    invoke-static { v1, v0 }, Ljava/lang/Math;->min(II)I
    move-result v0
    mul-int v0, v0, v0
    int-to-float v0, v0
    const v1, 1016296636
    mul-float v0, v0, v1
    float-to-double v0, v0
  .line 20
    invoke-static { v0, v1 }, Ljava/lang/Math;->sqrt(D)D
    move-result-wide v0
    double-to-int v0, v0
    if-lez v0, :L10
  .line 21
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I
  .line 22
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I
  :L10
  .line 23
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, ",minimize="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v4, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 24
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->l:Landroid/widget/ImageView;
    invoke-virtual { v0, p1 }, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  .line 25
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I
    sput v0, Lcn/manstep/phonemirrorBox/floatwindow/f;->v:I
  .line 26
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I
    sput p1, Lcn/manstep/phonemirrorBox/floatwindow/f;->w:I
  .line 27
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/floatwindow/f;->getCurrentPosition()Landroid/graphics/Point;
    if-eqz p2, :L11
  .line 28
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/floatwindow/f;->i()V
    goto :L12
  :L11
  .line 29
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->l:Landroid/widget/ImageView;
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->q:Landroid/graphics/drawable/Drawable;
    invoke-virtual { p1, p2 }, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
  .line 30
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->u:Landroid/os/CountDownTimer;
    invoke-virtual { p1 }, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;
  :L12
  .line 31
    invoke-static { }, Lcn/manstep/phonemirrorBox/util/j;->c()Lcn/manstep/phonemirrorBox/util/j;
    move-result-object p1
    const-wide/16 v0, 500
    new-instance p2, Lcn/manstep/phonemirrorBox/floatwindow/f$c;
    invoke-direct { p2, p0 }, Lcn/manstep/phonemirrorBox/floatwindow/f$c;-><init>(Lcn/manstep/phonemirrorBox/floatwindow/f;)V
    const-string v2, "FloatWindowShow"
    invoke-virtual { p1, v2, v0, v1, p2 }, Lcn/manstep/phonemirrorBox/util/j;->e(Ljava/lang/String;JLjava/lang/Runnable;)Lcn/manstep/phonemirrorBox/util/j;
    return-void
.end method

.method private i()V
  .registers 5
    const/4 v0, 1
  .line 1
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->p:Z
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->l:Landroid/widget/ImageView;
    const v1, 1058642330
    invoke-virtual { v0, v1 }, Landroid/widget/ImageView;->setAlpha(F)V
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->l:Landroid/widget/ImageView;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->r:Landroid/graphics/drawable/Drawable;
    invoke-virtual { v0, v1 }, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
  .line 4
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->n:Z
    if-eqz v0, :L3
  .line 5
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->s:Z
    const/high16 v1, 16544
    if-eqz v0, :L0
  .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->l:Landroid/widget/ImageView;
    const/high16 v2, 17204
    invoke-virtual { v0, v2 }, Landroid/widget/ImageView;->setRotation(F)V
  .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->l:Landroid/widget/ImageView;
    invoke-virtual { v0 }, Landroid/widget/ImageView;->getX()F
    move-result v2
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->l:Landroid/widget/ImageView;
    invoke-virtual { v3 }, Landroid/widget/ImageView;->getWidth()I
    move-result v3
    int-to-float v3, v3
    div-float/2addr v3, v1
    add-float/2addr v2, v3
    invoke-virtual { v0, v2 }, Landroid/widget/ImageView;->setX(F)V
  .line 8
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->l:Landroid/widget/ImageView;
    invoke-virtual { v0 }, Landroid/widget/ImageView;->getWidth()I
    move-result v0
    if-nez v0, :L3
  .line 9
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->l:Landroid/widget/ImageView;
    new-instance v1, Lcn/manstep/phonemirrorBox/floatwindow/f$d;
    invoke-direct { v1, p0 }, Lcn/manstep/phonemirrorBox/floatwindow/f$d;-><init>(Lcn/manstep/phonemirrorBox/floatwindow/f;)V
    invoke-virtual { v0, v1 }, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z
    goto :L3
  :L0
  .line 10
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->l:Landroid/widget/ImageView;
    const/4 v2, 0
    invoke-virtual { v0, v2 }, Landroid/widget/ImageView;->setRotation(F)V
  .line 11
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->l:Landroid/widget/ImageView;
    invoke-virtual { v0 }, Landroid/widget/ImageView;->getWidth()I
    move-result v2
    if-nez v2, :L1
    sget v2, Lcn/manstep/phonemirrorBox/floatwindow/f;->v:I
    goto :L2
  :L1
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->l:Landroid/widget/ImageView;
    invoke-virtual { v2 }, Landroid/widget/ImageView;->getWidth()I
    move-result v2
  :L2
    int-to-float v2, v2
    div-float/2addr v2, v1
    neg-float v1, v2
    invoke-virtual { v0, v1 }, Landroid/widget/ImageView;->setX(F)V
  :L3
    return-void
.end method

.method private l()V
  .registers 7
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/e;->C()Z
    move-result v0
    const/4 v1, 0
    if-eqz v0, :L0
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z
    move-result v0
    if-eqz v0, :L0
    const/4 v0, 0
    goto :L1
  :L0
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/u;->j0()I
    move-result v0
  :L1
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object v2
    invoke-virtual { v2 }, Lcn/manstep/phonemirrorBox/u;->k0()I
    move-result v2
  .line 3
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->c:Landroid/view/WindowManager$LayoutParams;
    iget v4, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->d:F
    iget v5, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->h:F
    sub-float/2addr v4, v5
    float-to-int v4, v4
    sub-int/2addr v4, v0
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I
  .line 4
    iget v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->e:F
    iget v5, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->i:F
    sub-float/2addr v0, v5
    float-to-int v0, v0
    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->y:I
    sub-int/2addr v0, v2
  .line 5
    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->y:I
    if-gez v4, :L2
  .line 6
    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->x:I
  :L2
  .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->c:Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I
    if-gez v2, :L3
  .line 8
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I
  :L3
  .line 9
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->b:Landroid/view/WindowManager;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->c:Landroid/view/WindowManager$LayoutParams;
    invoke-interface { v0, p0, v1 }, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  .line 10
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->t:Landroid/os/CountDownTimer;
    invoke-virtual { v0 }, Landroid/os/CountDownTimer;->cancel()V
  .line 11
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->u:Landroid/os/CountDownTimer;
    invoke-virtual { v0 }, Landroid/os/CountDownTimer;->cancel()V
  .line 12
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->l:Landroid/widget/ImageView;
    invoke-virtual { v0 }, Landroid/widget/ImageView;->getAlpha()F
    move-result v0
    const/high16 v1, 16256
    cmpg-float v0, v0, v1
    if-gez v0, :L4
  .line 13
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->l:Landroid/widget/ImageView;
    invoke-virtual { v0, v1 }, Landroid/widget/ImageView;->setAlpha(F)V
  .line 14
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->l:Landroid/widget/ImageView;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->q:Landroid/graphics/drawable/Drawable;
    invoke-virtual { v0, v1 }, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
  :L4
    return-void
.end method

.method public e()Landroid/view/WindowManager$LayoutParams;
  .registers 4
  .line 1
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/floatwindow/f;->getCurrentPosition()Landroid/graphics/Point;
    move-result-object v0
  .line 2
    new-instance v1, Landroid/view/WindowManager$LayoutParams;
    invoke-direct { v1 }, Landroid/view/WindowManager$LayoutParams;-><init>()V
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->c:Landroid/view/WindowManager$LayoutParams;
  .line 3
    iget v2, v0, Landroid/graphics/Point;->x:I
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I
  .line 4
    iget v0, v0, Landroid/graphics/Point;->y:I
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I
    return-object v1
.end method

.method public f(Landroid/content/Context;Landroid/view/WindowManager$LayoutParams;Z)V
  .registers 4
  .line 1
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->c:Landroid/view/WindowManager$LayoutParams;
  .line 2
    invoke-direct { p0, p1, p3 }, Lcn/manstep/phonemirrorBox/floatwindow/f;->g(Landroid/content/Context;Z)V
    return-void
.end method

.method public getCurrentPosition()Landroid/graphics/Point;
  .registers 12
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/e;->C()Z
    move-result v0
    const/4 v1, 0
    if-eqz v0, :L0
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z
    move-result v0
    if-eqz v0, :L0
    const/4 v0, 0
    goto :L1
  :L0
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/u;->j0()I
    move-result v0
  :L1
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/e;->C()Z
    move-result v2
    const v3, 2131361802
    const/4 v4, 1
    if-eqz v2, :L2
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;
    move-result-object v2
    invoke-virtual { v2, v3 }, Landroid/content/res/Resources;->getInteger(I)I
    move-result v2
    if-ne v2, v4, :L2
    const/4 v2, 1
    goto :L3
  :L2
    const/4 v2, 0
  :L3
  .line 3
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object v5
    invoke-virtual { v5 }, Lcn/manstep/phonemirrorBox/u;->k()I
    move-result v5
    if-ne v5, v4, :L4
    const/4 v5, 1
    goto :L5
  :L4
    const/4 v5, 0
  :L5
  .line 4
    invoke-static { }, Lcn/manstep/phonemirrorBox/floatwindow/e;->g()Lcn/manstep/phonemirrorBox/floatwindow/e;
    move-result-object v6
    invoke-virtual { v6 }, Lcn/manstep/phonemirrorBox/floatwindow/e;->e()Landroid/graphics/Rect;
    move-result-object v6
  .line 5
    new-instance v7, Landroid/graphics/Point;
    invoke-direct { v7 }, Landroid/graphics/Point;-><init>()V
  .line 6
    iget-object v8, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->c:Landroid/view/WindowManager$LayoutParams;
    if-nez v8, :L10
  .line 7
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;
    move-result-object v8
    const v9, 2131034131
    invoke-virtual { v8, v9 }, Landroid/content/res/Resources;->getBoolean(I)Z
    move-result v8
    if-nez v8, :L7
    if-eqz v5, :L6
    goto :L7
  :L6
    const/4 v8, 0
    goto :L8
  :L7
    const/4 v8, 1
  :L8
  .line 8
    iget v9, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->k:I
    if-nez v9, :L9
    sget v9, Lcn/manstep/phonemirrorBox/p;->l:I
  :L9
    div-int/lit8 v9, v9, 2
    add-int/lit8 v9, v9, -50
    iput v9, v7, Landroid/graphics/Point;->y:I
    goto :L14
  :L10
  .line 9
    iget v9, v8, Landroid/view/WindowManager$LayoutParams;->x:I
    iput v9, v7, Landroid/graphics/Point;->x:I
  .line 10
    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->y:I
    iput v8, v7, Landroid/graphics/Point;->y:I
    if-nez v6, :L13
  .line 11
    sget v8, Lcn/manstep/phonemirrorBox/p;->I:I
    sub-int/2addr v9, v8
    iget v10, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->j:I
    sub-int/2addr v10, v8
    div-int/lit8 v10, v10, 2
    if-le v9, v10, :L12
  :L11
    const/4 v8, 1
    goto :L14
  :L12
    const/4 v8, 0
    goto :L14
  :L13
  .line 12
    iget v8, v6, Landroid/graphics/Rect;->left:I
    sub-int/2addr v9, v8
    add-int/2addr v9, v0
    invoke-virtual { v6 }, Landroid/graphics/Rect;->width()I
    move-result v8
    div-int/lit8 v8, v8, 2
    if-le v9, v8, :L12
    goto :L11
  :L14
    if-nez v6, :L16
    if-eqz v8, :L15
  .line 13
    iget v6, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->j:I
    iput v6, v7, Landroid/graphics/Point;->x:I
    goto :L19
  :L15
  .line 14
    sget v6, Lcn/manstep/phonemirrorBox/p;->I:I
    iput v6, v7, Landroid/graphics/Point;->x:I
    goto :L19
  :L16
    if-eqz v8, :L17
  .line 15
    iget v9, v6, Landroid/graphics/Rect;->right:I
    sget v10, Lcn/manstep/phonemirrorBox/floatwindow/f;->v:I
    sub-int/2addr v9, v10
    iput v9, v7, Landroid/graphics/Point;->x:I
    goto :L18
  :L17
  .line 16
    iget v9, v6, Landroid/graphics/Rect;->left:I
    iput v9, v7, Landroid/graphics/Point;->x:I
  :L18
  .line 17
    iget v9, v7, Landroid/graphics/Point;->y:I
    if-gez v9, :L19
  .line 18
    invoke-virtual { v6 }, Landroid/graphics/Rect;->height()I
    move-result v6
    div-int/lit8 v6, v6, 2
    add-int/lit8 v6, v6, -50
    iput v6, v7, Landroid/graphics/Point;->y:I
  :L19
    if-nez v2, :L20
    if-nez v5, :L20
    if-nez v8, :L20
  .line 19
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;
    move-result-object v6
    invoke-virtual { v6, v3 }, Landroid/content/res/Resources;->getInteger(I)I
    move-result v3
    if-ne v3, v4, :L20
  .line 20
    iput v1, v7, Landroid/graphics/Point;->x:I
  :L20
    if-nez v2, :L21
    if-eqz v5, :L21
    if-eqz v8, :L21
  .line 21
    iget v1, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->j:I
    iput v1, v7, Landroid/graphics/Point;->x:I
  :L21
  .line 22
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object v1
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/u;->y()Ljava/lang/String;
    move-result-object v1
    const-string v2, "hozon-EP36-vnd_mars-11(30)"
    invoke-virtual { v2, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L22
    iget v1, v7, Landroid/graphics/Point;->y:I
    if-nez v1, :L22
    const/16 v1, 30
  .line 23
    iput v1, v7, Landroid/graphics/Point;->y:I
  :L22
  .line 24
    iget v1, v7, Landroid/graphics/Point;->x:I
    sub-int/2addr v1, v0
    iput v1, v7, Landroid/graphics/Point;->x:I
  .line 25
    iput-boolean v8, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->s:Z
    return-object v7
.end method

.method public h()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->p:Z
    return v0
.end method

.method public j()V
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->t:Landroid/os/CountDownTimer;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Landroid/os/CountDownTimer;->cancel()V
  :L0
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->u:Landroid/os/CountDownTimer;
    if-eqz v0, :L1
  .line 4
    invoke-virtual { v0 }, Landroid/os/CountDownTimer;->cancel()V
  :L1
    return-void
.end method

.method public k()V
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->c:Landroid/view/WindowManager$LayoutParams;
    if-eqz v0, :L1
  .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 19
    if-lt v0, v1, :L0
  .line 3
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->isAttachedToWindow()Z
    move-result v0
    if-nez v0, :L0
    return-void
  :L0
  .line 4
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/floatwindow/f;->getCurrentPosition()Landroid/graphics/Point;
    move-result-object v0
  .line 5
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->c:Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/graphics/Point;->x:I
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I
  .line 6
    iget v0, v0, Landroid/graphics/Point;->y:I
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I
  .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->b:Landroid/view/WindowManager;
    invoke-interface { v0, p0, v1 }, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  :L1
    return-void
.end method

.method public m()V
  .registers 4
  .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->m:Z
    if-nez v0, :L0
  .line 2
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/floatwindow/f;->getCurrentPosition()Landroid/graphics/Point;
    move-result-object v0
  .line 3
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->c:Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/graphics/Point;->x:I
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I
  .line 4
    iget v0, v0, Landroid/graphics/Point;->y:I
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I
  .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->b:Landroid/view/WindowManager;
    invoke-interface { v0, p0, v1 }, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  .line 6
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "updateViewPositionEnd: C mParams.x="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->c:Landroid/view/WindowManager$LayoutParams;
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v1, "FloatWindowSmallView"
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 7
    invoke-static { }, Lcn/manstep/phonemirrorBox/floatwindow/e;->g()Lcn/manstep/phonemirrorBox/floatwindow/e;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/floatwindow/e;->v()V
  :L0
  .line 8
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->u:Landroid/os/CountDownTimer;
    invoke-virtual { v0 }, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
  .registers 7
  .line 1
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getAction()I
    move-result v0
    const/4 v1, 1
    if-eqz v0, :L3
    if-eq v0, v1, :L1
    const/4 v2, 2
    if-eq v0, v2, :L0
    goto/16 :L7
  :L0
  .line 2
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getRawX()F
    move-result v0
    iput v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->d:F
  .line 3
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getRawY()F
    move-result p1
    iput p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->e:F
  .line 4
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/floatwindow/f;->l()V
    goto/16 :L7
  :L1
  .line 5
    iget p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->f:F
    iget v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->d:F
    sub-float/2addr p1, v0
    invoke-static { p1 }, Ljava/lang/Math;->abs(F)F
    move-result p1
    const/high16 v0, 16672
    cmpg-float p1, p1, v0
    if-gez p1, :L2
    iget p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->g:F
    iget v2, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->e:F
    sub-float/2addr p1, v2
    invoke-static { p1 }, Ljava/lang/Math;->abs(F)F
    move-result p1
    cmpg-float p1, p1, v0
    if-gez p1, :L2
  .line 6
    invoke-static { }, Lcn/manstep/phonemirrorBox/floatwindow/e;->g()Lcn/manstep/phonemirrorBox/floatwindow/e;
    move-result-object p1
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-virtual { p1, v0 }, Lcn/manstep/phonemirrorBox/floatwindow/e;->s(Landroid/content/Context;)V
    goto :L7
  :L2
  .line 7
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/floatwindow/f;->m()V
    goto :L7
  :L3
  .line 8
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getX()F
    move-result v0
    iput v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->h:F
  .line 9
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getY()F
    move-result v0
    iput v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->i:F
  .line 10
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getRawX()F
    move-result v0
    iput v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->f:F
  .line 11
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getRawY()F
    move-result v0
    iput v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->g:F
  .line 12
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getRawX()F
    move-result v0
    iput v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->d:F
  .line 13
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getRawY()F
    move-result p1
    iput p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->e:F
  .line 14
    iget-boolean p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->n:Z
    if-eqz p1, :L6
  .line 15
    iget p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->d:F
    iget v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->j:I
    int-to-float v2, v0
    const/high16 v3, 16384
    div-float/2addr v2, v3
    const/4 v4, 0
    cmpl-float p1, p1, v2
    if-gtz p1, :L5
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->c:Landroid/view/WindowManager$LayoutParams;
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->x:I
    int-to-float p1, p1
    int-to-float v0, v0
    div-float/2addr v0, v3
    cmpl-float p1, p1, v0
    if-lez p1, :L4
    goto :L5
  :L4
  .line 16
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->l:Landroid/widget/ImageView;
    invoke-virtual { p1, v4 }, Landroid/widget/ImageView;->setX(F)V
    goto :L6
  :L5
  .line 17
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->l:Landroid/widget/ImageView;
    invoke-virtual { p1, v4 }, Landroid/widget/ImageView;->setX(F)V
  :L6
  .line 18
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->l:Landroid/widget/ImageView;
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/f;->q:Landroid/graphics/drawable/Drawable;
    invoke-virtual { p1, v0 }, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
  :L7
    return v1
.end method
