.class Lcom/google/android/material/floatingactionbutton/b;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcom/google/android/material/floatingactionbutton/b$f;,
    Lcom/google/android/material/floatingactionbutton/b$h;,
    Lcom/google/android/material/floatingactionbutton/b$g;,
    Lcom/google/android/material/floatingactionbutton/b$k;,
    Lcom/google/android/material/floatingactionbutton/b$l;,
    Lcom/google/android/material/floatingactionbutton/b$j;,
    Lcom/google/android/material/floatingactionbutton/b$i;
  }
.end annotation

.field final static F:Landroid/animation/TimeInterpolator;

.field final static G:[I

.field final static H:[I

.field final static I:[I

.field final static J:[I

.field final static K:[I

.field final static L:[I

.field private final A:Landroid/graphics/Rect;

.field private final B:Landroid/graphics/RectF;

.field private final C:Landroid/graphics/RectF;

.field private final D:Landroid/graphics/Matrix;

.field private E:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field a:Ld/c/a/a/a0/k;

.field b:Ld/c/a/a/a0/g;

.field c:Landroid/graphics/drawable/Drawable;

.field d:Lcom/google/android/material/floatingactionbutton/a;

.field e:Landroid/graphics/drawable/Drawable;

.field f:Z

.field g:Z

.field h:F

.field i:F

.field j:F

.field k:I

.field private final l:Lcom/google/android/material/internal/f;

.field private m:Ld/c/a/a/l/h;

.field private n:Ld/c/a/a/l/h;

.field private o:Landroid/animation/Animator;

.field private p:Ld/c/a/a/l/h;

.field private q:Ld/c/a/a/l/h;

.field private r:F

.field private s:F

.field private t:I

.field private u:I

.field private v:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Landroid/animation/Animator$AnimatorListener;",
      ">;"
    }
  .end annotation
.end field

.field private w:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Landroid/animation/Animator$AnimatorListener;",
      ">;"
    }
  .end annotation
.end field

.field private x:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Lcom/google/android/material/floatingactionbutton/b$i;",
      ">;"
    }
  .end annotation
.end field

.field final y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field final z:Ld/c/a/a/z/b;

.method static constructor <clinit>()V
  .registers 3
  .line 1
    sget-object v0, Ld/c/a/a/l/a;->c:Landroid/animation/TimeInterpolator;
    sput-object v0, Lcom/google/android/material/floatingactionbutton/b;->F:Landroid/animation/TimeInterpolator;
    const/4 v0, 2
    new-array v1, v0, [I
  .line 2
    fill-array-data v1, :L0
    sput-object v1, Lcom/google/android/material/floatingactionbutton/b;->G:[I
    const/4 v1, 3
    new-array v1, v1, [I
  .line 3
    fill-array-data v1, :L1
    sput-object v1, Lcom/google/android/material/floatingactionbutton/b;->H:[I
    new-array v1, v0, [I
  .line 4
    fill-array-data v1, :L2
    sput-object v1, Lcom/google/android/material/floatingactionbutton/b;->I:[I
    new-array v0, v0, [I
  .line 5
    fill-array-data v0, :L3
    sput-object v0, Lcom/google/android/material/floatingactionbutton/b;->J:[I
    const/4 v0, 1
    new-array v0, v0, [I
    const v1, 16842910
    const/4 v2, 0
    aput v1, v0, v2
  .line 6
    sput-object v0, Lcom/google/android/material/floatingactionbutton/b;->K:[I
    new-array v0, v2, [I
  .line 7
    sput-object v0, Lcom/google/android/material/floatingactionbutton/b;->L:[I
    return-void
  :L0
  .array-data 4
    -89t 0t 1t 1t
    -98t 0t 1t 1t
  .end array-data
  :L1
  .array-data 4
    103t 3t 1t 1t
    -100t 0t 1t 1t
    -98t 0t 1t 1t
  .end array-data
  :L2
  .array-data 4
    -100t 0t 1t 1t
    -98t 0t 1t 1t
  .end array-data
  :L3
  .array-data 4
    103t 3t 1t 1t
    -98t 0t 1t 1t
  .end array-data
.end method

.method constructor <init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Ld/c/a/a/z/b;)V
  .registers 4
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 1
  .line 2
    iput-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/b;->g:Z
    const/high16 v0, 16256
  .line 3
    iput v0, p0, Lcom/google/android/material/floatingactionbutton/b;->s:F
    const/4 v0, 0
  .line 4
    iput v0, p0, Lcom/google/android/material/floatingactionbutton/b;->u:I
  .line 5
    new-instance v0, Landroid/graphics/Rect;
    invoke-direct { v0 }, Landroid/graphics/Rect;-><init>()V
    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->A:Landroid/graphics/Rect;
  .line 6
    new-instance v0, Landroid/graphics/RectF;
    invoke-direct { v0 }, Landroid/graphics/RectF;-><init>()V
    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->B:Landroid/graphics/RectF;
  .line 7
    new-instance v0, Landroid/graphics/RectF;
    invoke-direct { v0 }, Landroid/graphics/RectF;-><init>()V
    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->C:Landroid/graphics/RectF;
  .line 8
    new-instance v0, Landroid/graphics/Matrix;
    invoke-direct { v0 }, Landroid/graphics/Matrix;-><init>()V
    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->D:Landroid/graphics/Matrix;
  .line 9
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/b;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
  .line 10
    iput-object p2, p0, Lcom/google/android/material/floatingactionbutton/b;->z:Ld/c/a/a/z/b;
  .line 11
    new-instance p1, Lcom/google/android/material/internal/f;
    invoke-direct { p1 }, Lcom/google/android/material/internal/f;-><init>()V
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/b;->l:Lcom/google/android/material/internal/f;
  .line 12
    sget-object p2, Lcom/google/android/material/floatingactionbutton/b;->G:[I
    new-instance v0, Lcom/google/android/material/floatingactionbutton/b$h;
    invoke-direct { v0, p0 }, Lcom/google/android/material/floatingactionbutton/b$h;-><init>(Lcom/google/android/material/floatingactionbutton/b;)V
  .line 13
    invoke-direct { p0, v0 }, Lcom/google/android/material/floatingactionbutton/b;->i(Lcom/google/android/material/floatingactionbutton/b$l;)Landroid/animation/ValueAnimator;
    move-result-object v0
  .line 14
    invoke-virtual { p1, p2, v0 }, Lcom/google/android/material/internal/f;->a([ILandroid/animation/ValueAnimator;)V
  .line 15
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/b;->l:Lcom/google/android/material/internal/f;
    sget-object p2, Lcom/google/android/material/floatingactionbutton/b;->H:[I
    new-instance v0, Lcom/google/android/material/floatingactionbutton/b$g;
    invoke-direct { v0, p0 }, Lcom/google/android/material/floatingactionbutton/b$g;-><init>(Lcom/google/android/material/floatingactionbutton/b;)V
  .line 16
    invoke-direct { p0, v0 }, Lcom/google/android/material/floatingactionbutton/b;->i(Lcom/google/android/material/floatingactionbutton/b$l;)Landroid/animation/ValueAnimator;
    move-result-object v0
  .line 17
    invoke-virtual { p1, p2, v0 }, Lcom/google/android/material/internal/f;->a([ILandroid/animation/ValueAnimator;)V
  .line 18
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/b;->l:Lcom/google/android/material/internal/f;
    sget-object p2, Lcom/google/android/material/floatingactionbutton/b;->I:[I
    new-instance v0, Lcom/google/android/material/floatingactionbutton/b$g;
    invoke-direct { v0, p0 }, Lcom/google/android/material/floatingactionbutton/b$g;-><init>(Lcom/google/android/material/floatingactionbutton/b;)V
  .line 19
    invoke-direct { p0, v0 }, Lcom/google/android/material/floatingactionbutton/b;->i(Lcom/google/android/material/floatingactionbutton/b$l;)Landroid/animation/ValueAnimator;
    move-result-object v0
  .line 20
    invoke-virtual { p1, p2, v0 }, Lcom/google/android/material/internal/f;->a([ILandroid/animation/ValueAnimator;)V
  .line 21
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/b;->l:Lcom/google/android/material/internal/f;
    sget-object p2, Lcom/google/android/material/floatingactionbutton/b;->J:[I
    new-instance v0, Lcom/google/android/material/floatingactionbutton/b$g;
    invoke-direct { v0, p0 }, Lcom/google/android/material/floatingactionbutton/b$g;-><init>(Lcom/google/android/material/floatingactionbutton/b;)V
  .line 22
    invoke-direct { p0, v0 }, Lcom/google/android/material/floatingactionbutton/b;->i(Lcom/google/android/material/floatingactionbutton/b$l;)Landroid/animation/ValueAnimator;
    move-result-object v0
  .line 23
    invoke-virtual { p1, p2, v0 }, Lcom/google/android/material/internal/f;->a([ILandroid/animation/ValueAnimator;)V
  .line 24
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/b;->l:Lcom/google/android/material/internal/f;
    sget-object p2, Lcom/google/android/material/floatingactionbutton/b;->K:[I
    new-instance v0, Lcom/google/android/material/floatingactionbutton/b$k;
    invoke-direct { v0, p0 }, Lcom/google/android/material/floatingactionbutton/b$k;-><init>(Lcom/google/android/material/floatingactionbutton/b;)V
  .line 25
    invoke-direct { p0, v0 }, Lcom/google/android/material/floatingactionbutton/b;->i(Lcom/google/android/material/floatingactionbutton/b$l;)Landroid/animation/ValueAnimator;
    move-result-object v0
  .line 26
    invoke-virtual { p1, p2, v0 }, Lcom/google/android/material/internal/f;->a([ILandroid/animation/ValueAnimator;)V
  .line 27
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/b;->l:Lcom/google/android/material/internal/f;
    sget-object p2, Lcom/google/android/material/floatingactionbutton/b;->L:[I
    new-instance v0, Lcom/google/android/material/floatingactionbutton/b$f;
    invoke-direct { v0, p0 }, Lcom/google/android/material/floatingactionbutton/b$f;-><init>(Lcom/google/android/material/floatingactionbutton/b;)V
  .line 28
    invoke-direct { p0, v0 }, Lcom/google/android/material/floatingactionbutton/b;->i(Lcom/google/android/material/floatingactionbutton/b$l;)Landroid/animation/ValueAnimator;
    move-result-object v0
  .line 29
    invoke-virtual { p1, p2, v0 }, Lcom/google/android/material/internal/f;->a([ILandroid/animation/ValueAnimator;)V
  .line 30
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/b;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    invoke-virtual { p1 }, Landroid/widget/ImageButton;->getRotation()F
    move-result p1
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/b;->r:F
    return-void
.end method

.method private W()Z
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    invoke-static { v0 }, Landroidx/core/view/v;->T(Landroid/view/View;)Z
    move-result v0
    if-eqz v0, :L0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    invoke-virtual { v0 }, Landroid/widget/ImageButton;->isInEditMode()Z
    move-result v0
    if-nez v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method static synthetic a(Lcom/google/android/material/floatingactionbutton/b;I)I
  .registers 2
  .line 1
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/b;->u:I
    return p1
.end method

.method static synthetic b(Lcom/google/android/material/floatingactionbutton/b;Landroid/animation/Animator;)Landroid/animation/Animator;
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/b;->o:Landroid/animation/Animator;
    return-object p1
.end method

.method static synthetic c(Lcom/google/android/material/floatingactionbutton/b;F)F
  .registers 2
  .line 1
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/b;->s:F
    return p1
.end method

.method private d0(Landroid/animation/ObjectAnimator;)V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 26
    if-eq v0, v1, :L0
    return-void
  :L0
  .line 2
    new-instance v0, Lcom/google/android/material/floatingactionbutton/b$d;
    invoke-direct { v0, p0 }, Lcom/google/android/material/floatingactionbutton/b$d;-><init>(Lcom/google/android/material/floatingactionbutton/b;)V
    invoke-virtual { p1, v0 }, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V
    return-void
.end method

.method private g(FLandroid/graphics/Matrix;)V
  .registers 8
  .line 1
    invoke-virtual { p2 }, Landroid/graphics/Matrix;->reset()V
  .line 2
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    invoke-virtual { v0 }, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    if-eqz v0, :L0
  .line 3
    iget v1, p0, Lcom/google/android/material/floatingactionbutton/b;->t:I
    if-eqz v1, :L0
  .line 4
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/b;->B:Landroid/graphics/RectF;
  .line 5
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/b;->C:Landroid/graphics/RectF;
  .line 6
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
    move-result v3
    int-to-float v3, v3
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    move-result v0
    int-to-float v0, v0
    const/4 v4, 0
    invoke-virtual { v1, v4, v4, v3, v0 }, Landroid/graphics/RectF;->set(FFFF)V
  .line 7
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/b;->t:I
    int-to-float v3, v0
    int-to-float v0, v0
    invoke-virtual { v2, v4, v4, v3, v0 }, Landroid/graphics/RectF;->set(FFFF)V
  .line 8
    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;
    invoke-virtual { p2, v1, v2, v0 }, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z
  .line 9
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/b;->t:I
    int-to-float v1, v0
    const/high16 v2, 16384
    div-float/2addr v1, v2
    int-to-float v0, v0
    div-float/2addr v0, v2
    invoke-virtual { p2, p1, p1, v1, v0 }, Landroid/graphics/Matrix;->postScale(FFFF)Z
  :L0
    return-void
.end method

.method private h(Ld/c/a/a/l/h;FFF)Landroid/animation/AnimatorSet;
  .registers 11
  .line 1
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
  .line 2
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/b;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;
    const/4 v3, 1
    new-array v4, v3, [F
    const/4 v5, 0
    aput p2, v4, v5
    invoke-static { v1, v2, v4 }, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;
    move-result-object p2
    const-string v1, "opacity"
  .line 3
    invoke-virtual { p1, v1 }, Ld/c/a/a/l/h;->e(Ljava/lang/String;)Ld/c/a/a/l/i;
    move-result-object v1
    invoke-virtual { v1, p2 }, Ld/c/a/a/l/i;->a(Landroid/animation/Animator;)V
  .line 4
    invoke-interface { v0, p2 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 5
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/b;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;
    new-array v2, v3, [F
    aput p3, v2, v5
    invoke-static { p2, v1, v2 }, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;
    move-result-object p2
    const-string v1, "scale"
  .line 6
    invoke-virtual { p1, v1 }, Ld/c/a/a/l/h;->e(Ljava/lang/String;)Ld/c/a/a/l/i;
    move-result-object v2
    invoke-virtual { v2, p2 }, Ld/c/a/a/l/i;->a(Landroid/animation/Animator;)V
  .line 7
    invoke-direct { p0, p2 }, Lcom/google/android/material/floatingactionbutton/b;->d0(Landroid/animation/ObjectAnimator;)V
  .line 8
    invoke-interface { v0, p2 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 9
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/b;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;
    new-array v4, v3, [F
    aput p3, v4, v5
    invoke-static { p2, v2, v4 }, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;
    move-result-object p2
  .line 10
    invoke-virtual { p1, v1 }, Ld/c/a/a/l/h;->e(Ljava/lang/String;)Ld/c/a/a/l/i;
    move-result-object p3
    invoke-virtual { p3, p2 }, Ld/c/a/a/l/i;->a(Landroid/animation/Animator;)V
  .line 11
    invoke-direct { p0, p2 }, Lcom/google/android/material/floatingactionbutton/b;->d0(Landroid/animation/ObjectAnimator;)V
  .line 12
    invoke-interface { v0, p2 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 13
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/b;->D:Landroid/graphics/Matrix;
    invoke-direct { p0, p4, p2 }, Lcom/google/android/material/floatingactionbutton/b;->g(FLandroid/graphics/Matrix;)V
  .line 14
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/b;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    new-instance p3, Ld/c/a/a/l/f;
    invoke-direct { p3 }, Ld/c/a/a/l/f;-><init>()V
    new-instance p4, Lcom/google/android/material/floatingactionbutton/b$c;
    invoke-direct { p4, p0 }, Lcom/google/android/material/floatingactionbutton/b$c;-><init>(Lcom/google/android/material/floatingactionbutton/b;)V
    new-array v1, v3, [Landroid/graphics/Matrix;
    new-instance v2, Landroid/graphics/Matrix;
    iget-object v3, p0, Lcom/google/android/material/floatingactionbutton/b;->D:Landroid/graphics/Matrix;
    invoke-direct { v2, v3 }, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V
    aput-object v2, v1, v5
  .line 15
    invoke-static { p2, p3, p4, v1 }, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;
    move-result-object p2
    const-string p3, "iconScale"
  .line 16
    invoke-virtual { p1, p3 }, Ld/c/a/a/l/h;->e(Ljava/lang/String;)Ld/c/a/a/l/i;
    move-result-object p1
    invoke-virtual { p1, p2 }, Ld/c/a/a/l/i;->a(Landroid/animation/Animator;)V
  .line 17
    invoke-interface { v0, p2 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 18
    new-instance p1, Landroid/animation/AnimatorSet;
    invoke-direct { p1 }, Landroid/animation/AnimatorSet;-><init>()V
  .line 19
    invoke-static { p1, v0 }, Ld/c/a/a/l/b;->a(Landroid/animation/AnimatorSet;Ljava/util/List;)V
    return-object p1
.end method

.method private i(Lcom/google/android/material/floatingactionbutton/b$l;)Landroid/animation/ValueAnimator;
  .registers 5
  .line 1
    new-instance v0, Landroid/animation/ValueAnimator;
    invoke-direct { v0 }, Landroid/animation/ValueAnimator;-><init>()V
  .line 2
    sget-object v1, Lcom/google/android/material/floatingactionbutton/b;->F:Landroid/animation/TimeInterpolator;
    invoke-virtual { v0, v1 }, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V
    const-wide/16 v1, 100
  .line 3
    invoke-virtual { v0, v1, v2 }, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;
  .line 4
    invoke-virtual { v0, p1 }, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V
  .line 5
    invoke-virtual { v0, p1 }, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    const/4 p1, 2
    new-array p1, p1, [F
  .line 6
    fill-array-data p1, :L0
    invoke-virtual { v0, p1 }, Landroid/animation/ValueAnimator;->setFloatValues([F)V
    return-object v0
  :L0
  .array-data 4
    0t 0t 0t 0t
    0t 0t -128t 63t
  .end array-data
.end method

.method private k()Ld/c/a/a/l/h;
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->n:Ld/c/a/a/l/h;
    if-nez v0, :L0
  .line 2
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
  .line 3
    invoke-virtual { v0 }, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;
    move-result-object v0
    sget v1, Ld/c/a/a/a;->design_fab_hide_motion_spec:I
    invoke-static { v0, v1 }, Ld/c/a/a/l/h;->c(Landroid/content/Context;I)Ld/c/a/a/l/h;
    move-result-object v0
    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->n:Ld/c/a/a/l/h;
  :L0
  .line 4
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->n:Ld/c/a/a/l/h;
    invoke-static { v0 }, Lc/g/j/h;->e(Ljava/lang/Object;)Ljava/lang/Object;
    check-cast v0, Ld/c/a/a/l/h;
    return-object v0
.end method

.method private l()Ld/c/a/a/l/h;
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->m:Ld/c/a/a/l/h;
    if-nez v0, :L0
  .line 2
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
  .line 3
    invoke-virtual { v0 }, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;
    move-result-object v0
    sget v1, Ld/c/a/a/a;->design_fab_show_motion_spec:I
    invoke-static { v0, v1 }, Ld/c/a/a/l/h;->c(Landroid/content/Context;I)Ld/c/a/a/l/h;
    move-result-object v0
    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->m:Ld/c/a/a/l/h;
  :L0
  .line 4
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->m:Ld/c/a/a/l/h;
    invoke-static { v0 }, Lc/g/j/h;->e(Ljava/lang/Object;)Ljava/lang/Object;
    check-cast v0, Ld/c/a/a/l/h;
    return-object v0
.end method

.method private q()Landroid/view/ViewTreeObserver$OnPreDrawListener;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->E:Landroid/view/ViewTreeObserver$OnPreDrawListener;
    if-nez v0, :L0
  .line 2
    new-instance v0, Lcom/google/android/material/floatingactionbutton/b$e;
    invoke-direct { v0, p0 }, Lcom/google/android/material/floatingactionbutton/b$e;-><init>(Lcom/google/android/material/floatingactionbutton/b;)V
    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->E:Landroid/view/ViewTreeObserver$OnPreDrawListener;
  :L0
  .line 3
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->E:Landroid/view/ViewTreeObserver$OnPreDrawListener;
    return-object v0
.end method

.method A()V
  .registers 1
    return-void
.end method

.method B()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    invoke-virtual { v0 }, Landroid/widget/ImageButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
    move-result-object v0
  .line 2
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/b;->E:Landroid/view/ViewTreeObserver$OnPreDrawListener;
    if-eqz v1, :L0
  .line 3
    invoke-virtual { v0, v1 }, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    const/4 v0, 0
  .line 4
    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->E:Landroid/view/ViewTreeObserver$OnPreDrawListener;
  :L0
    return-void
.end method

.method C([I)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->l:Lcom/google/android/material/internal/f;
    invoke-virtual { v0, p1 }, Lcom/google/android/material/internal/f;->d([I)V
    return-void
.end method

.method D(FFF)V
  .registers 4
  .line 1
    invoke-virtual { p0 }, Lcom/google/android/material/floatingactionbutton/b;->b0()V
  .line 2
    invoke-virtual { p0, p1 }, Lcom/google/android/material/floatingactionbutton/b;->c0(F)V
    return-void
.end method

.method E(Landroid/graphics/Rect;)V
  .registers 9
  .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->e:Landroid/graphics/drawable/Drawable;
    const-string v1, "Didn't initialize content background"
    invoke-static { v0, v1 }, Lc/g/j/h;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 2
    invoke-virtual { p0 }, Lcom/google/android/material/floatingactionbutton/b;->V()Z
    move-result v0
    if-eqz v0, :L0
  .line 3
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/b;->e:Landroid/graphics/drawable/Drawable;
    iget v3, p1, Landroid/graphics/Rect;->left:I
    iget v4, p1, Landroid/graphics/Rect;->top:I
    iget v5, p1, Landroid/graphics/Rect;->right:I
    iget v6, p1, Landroid/graphics/Rect;->bottom:I
    move-object v1, v0
    invoke-direct/range { v1 .. v6 }, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V
  .line 4
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/b;->z:Ld/c/a/a/z/b;
    invoke-interface { p1, v0 }, Ld/c/a/a/z/b;->c(Landroid/graphics/drawable/Drawable;)V
    goto :L1
  :L0
  .line 5
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/b;->z:Ld/c/a/a/z/b;
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->e:Landroid/graphics/drawable/Drawable;
    invoke-interface { p1, v0 }, Ld/c/a/a/z/b;->c(Landroid/graphics/drawable/Drawable;)V
  :L1
    return-void
.end method

.method F()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    invoke-virtual { v0 }, Landroid/widget/ImageButton;->getRotation()F
    move-result v0
  .line 2
    iget v1, p0, Lcom/google/android/material/floatingactionbutton/b;->r:F
    cmpl-float v1, v1, v0
    if-eqz v1, :L0
  .line 3
    iput v0, p0, Lcom/google/android/material/floatingactionbutton/b;->r:F
  .line 4
    invoke-virtual { p0 }, Lcom/google/android/material/floatingactionbutton/b;->Z()V
  :L0
    return-void
.end method

.method G()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->x:Ljava/util/ArrayList;
    if-eqz v0, :L1
  .line 2
    invoke-virtual { v0 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcom/google/android/material/floatingactionbutton/b$i;
  .line 3
    invoke-interface { v1 }, Lcom/google/android/material/floatingactionbutton/b$i;->a()V
    goto :L0
  :L1
    return-void
.end method

.method H()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->x:Ljava/util/ArrayList;
    if-eqz v0, :L1
  .line 2
    invoke-virtual { v0 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcom/google/android/material/floatingactionbutton/b$i;
  .line 3
    invoke-interface { v1 }, Lcom/google/android/material/floatingactionbutton/b$i;->b()V
    goto :L0
  :L1
    return-void
.end method

.method I()Z
  .registers 2
    const/4 v0, 1
    return v0
.end method

.method J(Landroid/content/res/ColorStateList;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->b:Ld/c/a/a/a0/g;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Ld/c/a/a/a0/g;->setTintList(Landroid/content/res/ColorStateList;)V
  :L0
  .line 3
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->d:Lcom/google/android/material/floatingactionbutton/a;
    if-nez v0, :L1
    return-void
  :L1
  .line 4
    invoke-virtual { v0, p1 }, Lcom/google/android/material/floatingactionbutton/a;->a(Landroid/content/res/ColorStateList;)V
    const/4 p1, 0
    throw p1
.end method

.method K(Landroid/graphics/PorterDuff$Mode;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->b:Ld/c/a/a/a0/g;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Ld/c/a/a/a0/g;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V
  :L0
    return-void
.end method

.method final L(F)V
  .registers 4
  .line 1
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/b;->h:F
    cmpl-float v0, v0, p1
    if-eqz v0, :L0
  .line 2
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/b;->h:F
  .line 3
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/b;->i:F
    iget v1, p0, Lcom/google/android/material/floatingactionbutton/b;->j:F
    invoke-virtual { p0, p1, v0, v1 }, Lcom/google/android/material/floatingactionbutton/b;->D(FFF)V
  :L0
    return-void
.end method

.method M(Z)V
  .registers 2
  .line 1
    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/b;->f:Z
    return-void
.end method

.method final N(Ld/c/a/a/l/h;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/b;->q:Ld/c/a/a/l/h;
    return-void
.end method

.method final O(F)V
  .registers 4
  .line 1
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/b;->i:F
    cmpl-float v0, v0, p1
    if-eqz v0, :L0
  .line 2
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/b;->i:F
  .line 3
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/b;->h:F
    iget v1, p0, Lcom/google/android/material/floatingactionbutton/b;->j:F
    invoke-virtual { p0, v0, p1, v1 }, Lcom/google/android/material/floatingactionbutton/b;->D(FFF)V
  :L0
    return-void
.end method

.method final P(F)V
  .registers 3
  .line 1
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/b;->s:F
  .line 2
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->D:Landroid/graphics/Matrix;
  .line 3
    invoke-direct { p0, p1, v0 }, Lcom/google/android/material/floatingactionbutton/b;->g(FLandroid/graphics/Matrix;)V
  .line 4
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/b;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    invoke-virtual { p1, v0 }, Landroid/widget/ImageButton;->setImageMatrix(Landroid/graphics/Matrix;)V
    return-void
.end method

.method final Q(F)V
  .registers 4
  .line 1
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/b;->j:F
    cmpl-float v0, v0, p1
    if-eqz v0, :L0
  .line 2
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/b;->j:F
  .line 3
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/b;->h:F
    iget v1, p0, Lcom/google/android/material/floatingactionbutton/b;->i:F
    invoke-virtual { p0, v0, v1, p1 }, Lcom/google/android/material/floatingactionbutton/b;->D(FFF)V
  :L0
    return-void
.end method

.method R(Landroid/content/res/ColorStateList;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->c:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L0
  .line 2
    invoke-static { p1 }, Ld/c/a/a/y/b;->a(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    move-result-object p1
  .line 3
    invoke-static { v0, p1 }, Landroidx/core/graphics/drawable/a;->o(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
  :L0
    return-void
.end method

.method S(Z)V
  .registers 2
  .line 1
    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/b;->g:Z
  .line 2
    invoke-virtual { p0 }, Lcom/google/android/material/floatingactionbutton/b;->b0()V
    return-void
.end method

.method final T(Ld/c/a/a/a0/k;)V
  .registers 4
  .line 1
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/b;->a:Ld/c/a/a/a0/k;
  .line 2
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->b:Ld/c/a/a/a0/g;
    if-eqz v0, :L0
  .line 3
    invoke-virtual { v0, p1 }, Ld/c/a/a/a0/g;->setShapeAppearanceModel(Ld/c/a/a/a0/k;)V
  :L0
  .line 4
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->c:Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Ld/c/a/a/a0/n;
    if-eqz v1, :L1
  .line 5
    check-cast v0, Ld/c/a/a/a0/n;
    invoke-interface { v0, p1 }, Ld/c/a/a/a0/n;->setShapeAppearanceModel(Ld/c/a/a/a0/k;)V
  :L1
  .line 6
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->d:Lcom/google/android/material/floatingactionbutton/a;
    if-nez v0, :L2
    return-void
  :L2
  .line 7
    invoke-virtual { v0, p1 }, Lcom/google/android/material/floatingactionbutton/a;->b(Ld/c/a/a/a0/k;)V
    const/4 p1, 0
    throw p1
.end method

.method final U(Ld/c/a/a/l/h;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/b;->p:Ld/c/a/a/l/h;
    return-void
.end method

.method V()Z
  .registers 2
    const/4 v0, 1
    return v0
.end method

.method final X()Z
  .registers 3
  .line 1
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/b;->f:Z
    if-eqz v0, :L1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    invoke-virtual { v0 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getSizeDimension()I
    move-result v0
    iget v1, p0, Lcom/google/android/material/floatingactionbutton/b;->k:I
    if-lt v0, v1, :L0
    goto :L1
  :L0
    const/4 v0, 0
    goto :L2
  :L1
    const/4 v0, 1
  :L2
    return v0
.end method

.method Y(Lcom/google/android/material/floatingactionbutton/b$j;Z)V
  .registers 6
  .line 1
    invoke-virtual { p0 }, Lcom/google/android/material/floatingactionbutton/b;->x()Z
    move-result v0
    if-eqz v0, :L0
    return-void
  :L0
  .line 2
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->o:Landroid/animation/Animator;
    if-eqz v0, :L1
  .line 3
    invoke-virtual { v0 }, Landroid/animation/Animator;->cancel()V
  :L1
  .line 4
    invoke-direct { p0 }, Lcom/google/android/material/floatingactionbutton/b;->W()Z
    move-result v0
    const/high16 v1, 16256
    if-eqz v0, :L7
  .line 5
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    invoke-virtual { v0 }, Landroid/widget/ImageButton;->getVisibility()I
    move-result v0
    if-eqz v0, :L2
  .line 6
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    const/4 v2, 0
    invoke-virtual { v0, v2 }, Landroid/widget/ImageButton;->setAlpha(F)V
  .line 7
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    invoke-virtual { v0, v2 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleY(F)V
  .line 8
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    invoke-virtual { v0, v2 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleX(F)V
  .line 9
    invoke-virtual { p0, v2 }, Lcom/google/android/material/floatingactionbutton/b;->P(F)V
  :L2
  .line 10
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->p:Ld/c/a/a/l/h;
    if-eqz v0, :L3
    goto :L4
  :L3
  .line 11
    invoke-direct { p0 }, Lcom/google/android/material/floatingactionbutton/b;->l()Ld/c/a/a/l/h;
    move-result-object v0
  :L4
  .line 12
    invoke-direct { p0, v0, v1, v1, v1 }, Lcom/google/android/material/floatingactionbutton/b;->h(Ld/c/a/a/l/h;FFF)Landroid/animation/AnimatorSet;
    move-result-object v0
  .line 13
    new-instance v1, Lcom/google/android/material/floatingactionbutton/b$b;
    invoke-direct { v1, p0, p2, p1 }, Lcom/google/android/material/floatingactionbutton/b$b;-><init>(Lcom/google/android/material/floatingactionbutton/b;ZLcom/google/android/material/floatingactionbutton/b$j;)V
    invoke-virtual { v0, v1 }, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V
  .line 14
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/b;->v:Ljava/util/ArrayList;
    if-eqz p1, :L6
  .line 15
    invoke-virtual { p1 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object p1
  :L5
    invoke-interface { p1 }, Ljava/util/Iterator;->hasNext()Z
    move-result p2
    if-eqz p2, :L6
    invoke-interface { p1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object p2
    check-cast p2, Landroid/animation/Animator$AnimatorListener;
  .line 16
    invoke-virtual { v0, p2 }, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V
    goto :L5
  :L6
  .line 17
    invoke-virtual { v0 }, Landroid/animation/AnimatorSet;->start()V
    goto :L8
  :L7
  .line 18
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    const/4 v2, 0
    invoke-virtual { v0, v2, p2 }, Lcom/google/android/material/internal/m;->b(IZ)V
  .line 19
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/b;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    invoke-virtual { p2, v1 }, Landroid/widget/ImageButton;->setAlpha(F)V
  .line 20
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/b;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    invoke-virtual { p2, v1 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleY(F)V
  .line 21
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/b;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    invoke-virtual { p2, v1 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleX(F)V
  .line 22
    invoke-virtual { p0, v1 }, Lcom/google/android/material/floatingactionbutton/b;->P(F)V
    if-eqz p1, :L8
  .line 23
    invoke-interface { p1 }, Lcom/google/android/material/floatingactionbutton/b$j;->a()V
  :L8
    return-void
.end method

.method Z()V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 19
    if-ne v0, v1, :L1
  .line 2
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/b;->r:F
    const/high16 v1, 17076
    rem-float/2addr v0, v1
    const/4 v1, 0
    const/4 v2, 0
    cmpl-float v0, v0, v1
    if-eqz v0, :L0
  .line 3
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    invoke-virtual { v0 }, Landroid/widget/ImageButton;->getLayerType()I
    move-result v0
    const/4 v1, 1
    if-eq v0, v1, :L1
  .line 4
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    invoke-virtual { v0, v1, v2 }, Landroid/widget/ImageButton;->setLayerType(ILandroid/graphics/Paint;)V
    goto :L1
  :L0
  .line 5
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    invoke-virtual { v0 }, Landroid/widget/ImageButton;->getLayerType()I
    move-result v0
    if-eqz v0, :L1
  .line 6
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    const/4 v1, 0
    invoke-virtual { v0, v1, v2 }, Landroid/widget/ImageButton;->setLayerType(ILandroid/graphics/Paint;)V
  :L1
  .line 7
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->b:Ld/c/a/a/a0/g;
    if-eqz v0, :L2
  .line 8
    iget v1, p0, Lcom/google/android/material/floatingactionbutton/b;->r:F
    float-to-int v1, v1
    invoke-virtual { v0, v1 }, Ld/c/a/a/a0/g;->a0(I)V
  :L2
    return-void
.end method

.method final a0()V
  .registers 2
  .line 1
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/b;->s:F
    invoke-virtual { p0, v0 }, Lcom/google/android/material/floatingactionbutton/b;->P(F)V
    return-void
.end method

.method final b0()V
  .registers 6
  .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->A:Landroid/graphics/Rect;
  .line 2
    invoke-virtual { p0, v0 }, Lcom/google/android/material/floatingactionbutton/b;->r(Landroid/graphics/Rect;)V
  .line 3
    invoke-virtual { p0, v0 }, Lcom/google/android/material/floatingactionbutton/b;->E(Landroid/graphics/Rect;)V
  .line 4
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/b;->z:Ld/c/a/a/z/b;
    iget v2, v0, Landroid/graphics/Rect;->left:I
    iget v3, v0, Landroid/graphics/Rect;->top:I
    iget v4, v0, Landroid/graphics/Rect;->right:I
    iget v0, v0, Landroid/graphics/Rect;->bottom:I
    invoke-interface { v1, v2, v3, v4, v0 }, Ld/c/a/a/z/b;->a(IIII)V
    return-void
.end method

.method c0(F)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->b:Ld/c/a/a/a0/g;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Ld/c/a/a/a0/g;->V(F)V
  :L0
    return-void
.end method

.method public d(Landroid/animation/Animator$AnimatorListener;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->w:Ljava/util/ArrayList;
    if-nez v0, :L0
  .line 2
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->w:Ljava/util/ArrayList;
  :L0
  .line 3
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->w:Ljava/util/ArrayList;
    invoke-virtual { v0, p1 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    return-void
.end method

.method e(Landroid/animation/Animator$AnimatorListener;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->v:Ljava/util/ArrayList;
    if-nez v0, :L0
  .line 2
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->v:Ljava/util/ArrayList;
  :L0
  .line 3
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->v:Ljava/util/ArrayList;
    invoke-virtual { v0, p1 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    return-void
.end method

.method f(Lcom/google/android/material/floatingactionbutton/b$i;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->x:Ljava/util/ArrayList;
    if-nez v0, :L0
  .line 2
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->x:Ljava/util/ArrayList;
  :L0
  .line 3
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->x:Ljava/util/ArrayList;
    invoke-virtual { v0, p1 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    return-void
.end method

.method final j()Landroid/graphics/drawable/Drawable;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->e:Landroid/graphics/drawable/Drawable;
    return-object v0
.end method

.method m()F
  .registers 2
  .line 1
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/b;->h:F
    return v0
.end method

.method n()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/b;->f:Z
    return v0
.end method

.method final o()Ld/c/a/a/l/h;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->q:Ld/c/a/a/l/h;
    return-object v0
.end method

.method p()F
  .registers 2
  .line 1
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/b;->i:F
    return v0
.end method

.method r(Landroid/graphics/Rect;)V
  .registers 7
  .line 1
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/b;->f:Z
    if-eqz v0, :L0
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/b;->k:I
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/b;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
  .line 2
    invoke-virtual { v1 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getSizeDimension()I
    move-result v1
    sub-int/2addr v0, v1
    div-int/lit8 v0, v0, 2
    goto :L1
  :L0
    const/4 v0, 0
  :L1
  .line 3
    iget-boolean v1, p0, Lcom/google/android/material/floatingactionbutton/b;->g:Z
    if-eqz v1, :L2
    invoke-virtual { p0 }, Lcom/google/android/material/floatingactionbutton/b;->m()F
    move-result v1
    iget v2, p0, Lcom/google/android/material/floatingactionbutton/b;->j:F
    add-float/2addr v1, v2
    goto :L3
  :L2
    const/4 v1, 0
  :L3
    float-to-double v2, v1
  .line 4
    invoke-static { v2, v3 }, Ljava/lang/Math;->ceil(D)D
    move-result-wide v2
    double-to-int v2, v2
    invoke-static { v0, v2 }, Ljava/lang/Math;->max(II)I
    move-result v2
    const/high16 v3, 16320
    mul-float v1, v1, v3
    float-to-double v3, v1
  .line 5
    invoke-static { v3, v4 }, Ljava/lang/Math;->ceil(D)D
    move-result-wide v3
    double-to-int v1, v3
    invoke-static { v0, v1 }, Ljava/lang/Math;->max(II)I
    move-result v0
  .line 6
    invoke-virtual { p1, v2, v0, v2, v0 }, Landroid/graphics/Rect;->set(IIII)V
    return-void
.end method

.method s()F
  .registers 2
  .line 1
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/b;->j:F
    return v0
.end method

.method final t()Ld/c/a/a/a0/k;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->a:Ld/c/a/a/a0/k;
    return-object v0
.end method

.method final u()Ld/c/a/a/l/h;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->p:Ld/c/a/a/l/h;
    return-object v0
.end method

.method v(Lcom/google/android/material/floatingactionbutton/b$j;Z)V
  .registers 5
  .line 1
    invoke-virtual { p0 }, Lcom/google/android/material/floatingactionbutton/b;->w()Z
    move-result v0
    if-eqz v0, :L0
    return-void
  :L0
  .line 2
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->o:Landroid/animation/Animator;
    if-eqz v0, :L1
  .line 3
    invoke-virtual { v0 }, Landroid/animation/Animator;->cancel()V
  :L1
  .line 4
    invoke-direct { p0 }, Lcom/google/android/material/floatingactionbutton/b;->W()Z
    move-result v0
    if-eqz v0, :L6
  .line 5
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->q:Ld/c/a/a/l/h;
    if-eqz v0, :L2
    goto :L3
  :L2
  .line 6
    invoke-direct { p0 }, Lcom/google/android/material/floatingactionbutton/b;->k()Ld/c/a/a/l/h;
    move-result-object v0
  :L3
    const/4 v1, 0
  .line 7
    invoke-direct { p0, v0, v1, v1, v1 }, Lcom/google/android/material/floatingactionbutton/b;->h(Ld/c/a/a/l/h;FFF)Landroid/animation/AnimatorSet;
    move-result-object v0
  .line 8
    new-instance v1, Lcom/google/android/material/floatingactionbutton/b$a;
    invoke-direct { v1, p0, p2, p1 }, Lcom/google/android/material/floatingactionbutton/b$a;-><init>(Lcom/google/android/material/floatingactionbutton/b;ZLcom/google/android/material/floatingactionbutton/b$j;)V
    invoke-virtual { v0, v1 }, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V
  .line 9
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/b;->w:Ljava/util/ArrayList;
    if-eqz p1, :L5
  .line 10
    invoke-virtual { p1 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object p1
  :L4
    invoke-interface { p1 }, Ljava/util/Iterator;->hasNext()Z
    move-result p2
    if-eqz p2, :L5
    invoke-interface { p1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object p2
    check-cast p2, Landroid/animation/Animator$AnimatorListener;
  .line 11
    invoke-virtual { v0, p2 }, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V
    goto :L4
  :L5
  .line 12
    invoke-virtual { v0 }, Landroid/animation/AnimatorSet;->start()V
    goto :L9
  :L6
  .line 13
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    if-eqz p2, :L7
    const/16 v1, 8
    goto :L8
  :L7
    const/4 v1, 4
  :L8
    invoke-virtual { v0, v1, p2 }, Lcom/google/android/material/internal/m;->b(IZ)V
    if-eqz p1, :L9
  .line 14
    invoke-interface { p1 }, Lcom/google/android/material/floatingactionbutton/b$j;->b()V
  :L9
    return-void
.end method

.method w()Z
  .registers 5
  .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    invoke-virtual { v0 }, Landroid/widget/ImageButton;->getVisibility()I
    move-result v0
    const/4 v1, 0
    const/4 v2, 1
    if-nez v0, :L1
  .line 2
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/b;->u:I
    if-ne v0, v2, :L0
    const/4 v1, 1
  :L0
    return v1
  :L1
  .line 3
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/b;->u:I
    const/4 v3, 2
    if-eq v0, v3, :L2
    const/4 v1, 1
  :L2
    return v1
.end method

.method x()Z
  .registers 5
  .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    invoke-virtual { v0 }, Landroid/widget/ImageButton;->getVisibility()I
    move-result v0
    const/4 v1, 0
    const/4 v2, 1
    if-eqz v0, :L1
  .line 2
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/b;->u:I
    const/4 v3, 2
    if-ne v0, v3, :L0
    const/4 v1, 1
  :L0
    return v1
  :L1
  .line 3
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/b;->u:I
    if-eq v0, v2, :L2
    const/4 v1, 1
  :L2
    return v1
.end method

.method y()V
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->l:Lcom/google/android/material/internal/f;
    invoke-virtual { v0 }, Lcom/google/android/material/internal/f;->c()V
    return-void
.end method

.method z()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->b:Ld/c/a/a/a0/g;
    if-eqz v0, :L0
  .line 2
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/b;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    invoke-static { v1, v0 }, Ld/c/a/a/a0/h;->f(Landroid/view/View;Ld/c/a/a/a0/g;)V
  :L0
  .line 3
    invoke-virtual { p0 }, Lcom/google/android/material/floatingactionbutton/b;->I()Z
    move-result v0
    if-eqz v0, :L1
  .line 4
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    invoke-virtual { v0 }, Landroid/widget/ImageButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
    move-result-object v0
    invoke-direct { p0 }, Lcom/google/android/material/floatingactionbutton/b;->q()Landroid/view/ViewTreeObserver$OnPreDrawListener;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
  :L1
    return-void
.end method
