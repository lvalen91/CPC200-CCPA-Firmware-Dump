.class public Landroidx/appcompat/widget/ActionBarOverlayLayout;
.super Landroid/view/ViewGroup;
.implements Landroidx/appcompat/widget/a0;
.implements Landroidx/core/view/o;
.implements Landroidx/core/view/m;
.implements Landroidx/core/view/n;
.source "SourceFile"

.annotation build Landroid/annotation/SuppressLint;
  value = {
    "UnknownNullness"
  }
.end annotation
.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/appcompat/widget/ActionBarOverlayLayout$d;,
    Landroidx/appcompat/widget/ActionBarOverlayLayout$e;
  }
.end annotation

.field final static G:[I

.field private A:Landroid/widget/OverScroller;

.field B:Landroid/view/ViewPropertyAnimator;

.field final C:Landroid/animation/AnimatorListenerAdapter;

.field private final D:Ljava/lang/Runnable;

.field private final E:Ljava/lang/Runnable;

.field private final F:Landroidx/core/view/p;

.field private b:I

.field private c:I

.field private d:Landroidx/appcompat/widget/ContentFrameLayout;

.field e:Landroidx/appcompat/widget/ActionBarContainer;

.field private f:Landroidx/appcompat/widget/b0;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field l:Z

.field private m:I

.field private n:I

.field private final o:Landroid/graphics/Rect;

.field private final p:Landroid/graphics/Rect;

.field private final q:Landroid/graphics/Rect;

.field private final r:Landroid/graphics/Rect;

.field private final s:Landroid/graphics/Rect;

.field private final t:Landroid/graphics/Rect;

.field private final u:Landroid/graphics/Rect;

.field private v:Landroidx/core/view/d0;

.field private w:Landroidx/core/view/d0;

.field private x:Landroidx/core/view/d0;

.field private y:Landroidx/core/view/d0;

.field private z:Landroidx/appcompat/widget/ActionBarOverlayLayout$d;

.method static constructor <clinit>()V
  .registers 3
    const/4 v0, 2
    new-array v0, v0, [I
  .line 1
    sget v1, Lc/a/a;->actionBarSize:I
    const/4 v2, 0
    aput v1, v0, v2
    const/4 v1, 1
    const v2, 16842841
    aput v2, v0, v1
    sput-object v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->G:[I
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 3
  .line 1
    invoke-direct { p0, p1, p2 }, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    const/4 p2, 0
  .line 2
    iput p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->c:I
  .line 3
    new-instance p2, Landroid/graphics/Rect;
    invoke-direct { p2 }, Landroid/graphics/Rect;-><init>()V
    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->o:Landroid/graphics/Rect;
  .line 4
    new-instance p2, Landroid/graphics/Rect;
    invoke-direct { p2 }, Landroid/graphics/Rect;-><init>()V
    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->p:Landroid/graphics/Rect;
  .line 5
    new-instance p2, Landroid/graphics/Rect;
    invoke-direct { p2 }, Landroid/graphics/Rect;-><init>()V
    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->q:Landroid/graphics/Rect;
  .line 6
    new-instance p2, Landroid/graphics/Rect;
    invoke-direct { p2 }, Landroid/graphics/Rect;-><init>()V
    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->r:Landroid/graphics/Rect;
  .line 7
    new-instance p2, Landroid/graphics/Rect;
    invoke-direct { p2 }, Landroid/graphics/Rect;-><init>()V
    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->s:Landroid/graphics/Rect;
  .line 8
    new-instance p2, Landroid/graphics/Rect;
    invoke-direct { p2 }, Landroid/graphics/Rect;-><init>()V
    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->t:Landroid/graphics/Rect;
  .line 9
    new-instance p2, Landroid/graphics/Rect;
    invoke-direct { p2 }, Landroid/graphics/Rect;-><init>()V
    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->u:Landroid/graphics/Rect;
  .line 10
    sget-object p2, Landroidx/core/view/d0;->b:Landroidx/core/view/d0;
    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->v:Landroidx/core/view/d0;
  .line 11
    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->w:Landroidx/core/view/d0;
  .line 12
    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->x:Landroidx/core/view/d0;
  .line 13
    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->y:Landroidx/core/view/d0;
  .line 14
    new-instance p2, Landroidx/appcompat/widget/ActionBarOverlayLayout$a;
    invoke-direct { p2, p0 }, Landroidx/appcompat/widget/ActionBarOverlayLayout$a;-><init>(Landroidx/appcompat/widget/ActionBarOverlayLayout;)V
    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->C:Landroid/animation/AnimatorListenerAdapter;
  .line 15
    new-instance p2, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;
    invoke-direct { p2, p0 }, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;-><init>(Landroidx/appcompat/widget/ActionBarOverlayLayout;)V
    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->D:Ljava/lang/Runnable;
  .line 16
    new-instance p2, Landroidx/appcompat/widget/ActionBarOverlayLayout$c;
    invoke-direct { p2, p0 }, Landroidx/appcompat/widget/ActionBarOverlayLayout$c;-><init>(Landroidx/appcompat/widget/ActionBarOverlayLayout;)V
    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->E:Ljava/lang/Runnable;
  .line 17
    invoke-direct { p0, p1 }, Landroidx/appcompat/widget/ActionBarOverlayLayout;->v(Landroid/content/Context;)V
  .line 18
    new-instance p1, Landroidx/core/view/p;
    invoke-direct { p1, p0 }, Landroidx/core/view/p;-><init>(Landroid/view/ViewGroup;)V
    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->F:Landroidx/core/view/p;
    return-void
.end method

.method private A()V
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/widget/ActionBarOverlayLayout;->u()V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->D:Ljava/lang/Runnable;
    invoke-interface { v0 }, Ljava/lang/Runnable;->run()V
    return-void
.end method

.method private B(F)Z
  .registers 11
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->A:Landroid/widget/OverScroller;
    float-to-int v4, p1
    const/4 v1, 0
    const/4 v2, 0
    const/4 v3, 0
    const/4 v5, 0
    const/4 v6, 0
    const/high16 v7, -32768
    const v8, 2147483647
    invoke-virtual/range { v0 .. v8 }, Landroid/widget/OverScroller;->fling(IIIIIIII)V
  .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->A:Landroid/widget/OverScroller;
    invoke-virtual { p1 }, Landroid/widget/OverScroller;->getFinalY()I
    move-result p1
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/ActionBarContainer;
    invoke-virtual { v0 }, Landroid/widget/FrameLayout;->getHeight()I
    move-result v0
    if-le p1, v0, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    return p1
.end method

.method private p()V
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/widget/ActionBarOverlayLayout;->u()V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->E:Ljava/lang/Runnable;
    invoke-interface { v0 }, Ljava/lang/Runnable;->run()V
    return-void
.end method

.method private q(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z
  .registers 9
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object p1
    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout$e;
    const/4 v0, 1
    if-eqz p3, :L0
  .line 2
    iget p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I
    iget v1, p2, Landroid/graphics/Rect;->left:I
    if-eq p3, v1, :L0
  .line 3
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I
    const/4 p3, 1
    goto :L1
  :L0
    const/4 p3, 0
  :L1
    if-eqz p4, :L2
  .line 4
    iget p4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I
    iget v1, p2, Landroid/graphics/Rect;->top:I
    if-eq p4, v1, :L2
  .line 5
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I
    const/4 p3, 1
  :L2
    if-eqz p6, :L3
  .line 6
    iget p4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I
    iget p6, p2, Landroid/graphics/Rect;->right:I
    if-eq p4, p6, :L3
  .line 7
    iput p6, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I
    const/4 p3, 1
  :L3
    if-eqz p5, :L4
  .line 8
    iget p4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I
    iget p2, p2, Landroid/graphics/Rect;->bottom:I
    if-eq p4, p2, :L4
  .line 9
    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I
    goto :L5
  :L4
    move v0, p3
  :L5
    return v0
.end method

.method private t(Landroid/view/View;)Landroidx/appcompat/widget/b0;
  .registers 5
  .line 1
    instance-of v0, p1, Landroidx/appcompat/widget/b0;
    if-eqz v0, :L0
  .line 2
    check-cast p1, Landroidx/appcompat/widget/b0;
    return-object p1
  :L0
  .line 3
    instance-of v0, p1, Landroidx/appcompat/widget/Toolbar;
    if-eqz v0, :L1
  .line 4
    check-cast p1, Landroidx/appcompat/widget/Toolbar;
    invoke-virtual { p1 }, Landroidx/appcompat/widget/Toolbar;->getWrapper()Landroidx/appcompat/widget/b0;
    move-result-object p1
    return-object p1
  :L1
  .line 5
    new-instance v0, Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Can't make a decor toolbar out of "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 6
    invoke-virtual { p1 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object p1
    invoke-virtual { p1 }, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method private v(Landroid/content/Context;)V
  .registers 6
  .line 1
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;
    move-result-object v0
    sget-object v1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->G:[I
    invoke-virtual { v0, v1 }, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;
    move-result-object v0
    const/4 v1, 0
  .line 2
    invoke-virtual { v0, v1, v1 }, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
    move-result v2
    iput v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->b:I
    const/4 v2, 1
  .line 3
    invoke-virtual { v0, v2 }, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    move-result-object v3
    iput-object v3, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->g:Landroid/graphics/drawable/Drawable;
    if-nez v3, :L0
    const/4 v3, 1
    goto :L1
  :L0
    const/4 v3, 0
  :L1
  .line 4
    invoke-virtual { p0, v3 }, Landroid/view/ViewGroup;->setWillNotDraw(Z)V
  .line 5
    invoke-virtual { v0 }, Landroid/content/res/TypedArray;->recycle()V
  .line 6
    invoke-virtual { p1 }, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    move-result-object v0
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    const/16 v3, 19
    if-ge v0, v3, :L2
    const/4 v1, 1
  :L2
    iput-boolean v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Z
  .line 7
    new-instance v0, Landroid/widget/OverScroller;
    invoke-direct { v0, p1 }, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->A:Landroid/widget/OverScroller;
    return-void
.end method

.method private x()V
  .registers 4
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/widget/ActionBarOverlayLayout;->u()V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->E:Ljava/lang/Runnable;
    const-wide/16 v1, 600
    invoke-virtual { p0, v0, v1, v2 }, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z
    return-void
.end method

.method private y()V
  .registers 4
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/widget/ActionBarOverlayLayout;->u()V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->D:Ljava/lang/Runnable;
    const-wide/16 v1, 600
    invoke-virtual { p0, v0, v1, v2 }, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z
    return-void
.end method

.method public a(Landroid/view/Menu;Landroidx/appcompat/view/menu/m$a;)V
  .registers 4
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z()V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->f:Landroidx/appcompat/widget/b0;
    invoke-interface { v0, p1, p2 }, Landroidx/appcompat/widget/b0;->a(Landroid/view/Menu;Landroidx/appcompat/view/menu/m$a;)V
    return-void
.end method

.method public b()Z
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z()V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->f:Landroidx/appcompat/widget/b0;
    invoke-interface { v0 }, Landroidx/appcompat/widget/b0;->b()Z
    move-result v0
    return v0
.end method

.method public c()Z
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z()V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->f:Landroidx/appcompat/widget/b0;
    invoke-interface { v0 }, Landroidx/appcompat/widget/b0;->c()Z
    move-result v0
    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
  .registers 2
  .line 1
    instance-of p1, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout$e;
    return p1
.end method

.method public d()Z
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z()V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->f:Landroidx/appcompat/widget/b0;
    invoke-interface { v0 }, Landroidx/appcompat/widget/b0;->d()Z
    move-result v0
    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
  .registers 7
  .line 1
    invoke-super { p0, p1 }, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->g:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L2
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Z
    if-nez v0, :L2
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/ActionBarContainer;
    invoke-virtual { v0 }, Landroid/widget/FrameLayout;->getVisibility()I
    move-result v0
    const/4 v1, 0
    if-nez v0, :L0
  .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/ActionBarContainer;
    invoke-virtual { v0 }, Landroid/widget/FrameLayout;->getBottom()I
    move-result v0
    int-to-float v0, v0
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/ActionBarContainer;
    invoke-virtual { v2 }, Landroid/widget/FrameLayout;->getTranslationY()F
    move-result v2
    add-float/2addr v0, v2
    const/high16 v2, 16128
    add-float/2addr v0, v2
    float-to-int v0, v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
  .line 5
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->g:Landroid/graphics/drawable/Drawable;
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getWidth()I
    move-result v3
    iget-object v4, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->g:Landroid/graphics/drawable/Drawable;
  .line 6
    invoke-virtual { v4 }, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    move-result v4
    add-int/2addr v4, v0
  .line 7
    invoke-virtual { v2, v1, v0, v3, v4 }, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
  .line 8
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->g:Landroid/graphics/drawable/Drawable;
    invoke-virtual { v0, p1 }, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
  :L2
    return-void
.end method

.method public e()Z
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z()V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->f:Landroidx/appcompat/widget/b0;
    invoke-interface { v0 }, Landroidx/appcompat/widget/b0;->e()Z
    move-result v0
    return v0
.end method

.method public f()V
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z()V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->f:Landroidx/appcompat/widget/b0;
    invoke-interface { v0 }, Landroidx/appcompat/widget/b0;->f()V
    return-void
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
  .registers 9
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L0
  .line 2
    invoke-super { p0, p1 }, Landroid/view/ViewGroup;->fitSystemWindows(Landroid/graphics/Rect;)Z
    move-result p1
    return p1
  :L0
  .line 3
    invoke-virtual { p0 }, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z()V
  .line 4
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/ActionBarContainer;
    const/4 v3, 1
    const/4 v4, 1
    const/4 v5, 0
    const/4 v6, 1
    move-object v0, p0
    move-object v2, p1
    invoke-direct/range { v0 .. v6 }, Landroidx/appcompat/widget/ActionBarOverlayLayout;->q(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z
    move-result v0
  .line 5
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->r:Landroid/graphics/Rect;
    invoke-virtual { v1, p1 }, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
  .line 6
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->r:Landroid/graphics/Rect;
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->o:Landroid/graphics/Rect;
    invoke-static { p0, p1, v1 }, Landroidx/appcompat/widget/a1;->a(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
  .line 7
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->s:Landroid/graphics/Rect;
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->r:Landroid/graphics/Rect;
    invoke-virtual { p1, v1 }, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z
    move-result p1
    const/4 v1, 1
    if-nez p1, :L1
  .line 8
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->s:Landroid/graphics/Rect;
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->r:Landroid/graphics/Rect;
    invoke-virtual { p1, v0 }, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    const/4 v0, 1
  :L1
  .line 9
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->p:Landroid/graphics/Rect;
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->o:Landroid/graphics/Rect;
    invoke-virtual { p1, v2 }, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z
    move-result p1
    if-nez p1, :L2
  .line 10
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->p:Landroid/graphics/Rect;
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->o:Landroid/graphics/Rect;
    invoke-virtual { p1, v0 }, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    const/4 v0, 1
  :L2
    if-eqz v0, :L3
  .line 11
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->requestLayout()V
  :L3
    return v1
.end method

.method public g()Z
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z()V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->f:Landroidx/appcompat/widget/b0;
    invoke-interface { v0 }, Landroidx/appcompat/widget/b0;->g()Z
    move-result v0
    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/widget/ActionBarOverlayLayout;->r()Landroidx/appcompat/widget/ActionBarOverlayLayout$e;
    move-result-object v0
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/ActionBarOverlayLayout;->s(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/ActionBarOverlayLayout$e;
    move-result-object p1
    return-object p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
  .registers 3
  .line 2
    new-instance v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$e;
    invoke-direct { v0, p1 }, Landroidx/appcompat/widget/ActionBarOverlayLayout$e;-><init>(Landroid/view/ViewGroup$LayoutParams;)V
    return-object v0
.end method

.method public getActionBarHideOffset()I
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/ActionBarContainer;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Landroid/widget/FrameLayout;->getTranslationY()F
    move-result v0
    float-to-int v0, v0
    neg-int v0, v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public getNestedScrollAxes()I
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->F:Landroidx/core/view/p;
    invoke-virtual { v0 }, Landroidx/core/view/p;->a()I
    move-result v0
    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z()V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->f:Landroidx/appcompat/widget/b0;
    invoke-interface { v0 }, Landroidx/appcompat/widget/b0;->getTitle()Ljava/lang/CharSequence;
    move-result-object v0
    return-object v0
.end method

.method public h(Landroid/view/View;Landroid/view/View;II)V
  .registers 5
    if-nez p4, :L0
  .line 1
    invoke-virtual { p0, p1, p2, p3 }, Landroidx/appcompat/widget/ActionBarOverlayLayout;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
  :L0
    return-void
.end method

.method public i(Landroid/view/View;I)V
  .registers 3
    if-nez p2, :L0
  .line 1
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/ActionBarOverlayLayout;->onStopNestedScroll(Landroid/view/View;)V
  :L0
    return-void
.end method

.method public j(Landroid/view/View;II[II)V
  .registers 6
    if-nez p5, :L0
  .line 1
    invoke-virtual { p0, p1, p2, p3, p4 }, Landroidx/appcompat/widget/ActionBarOverlayLayout;->onNestedPreScroll(Landroid/view/View;II[I)V
  :L0
    return-void
.end method

.method public k(I)V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z()V
    const/4 v0, 2
    if-eq p1, v0, :L2
    const/4 v0, 5
    if-eq p1, v0, :L1
    const/16 v0, 109
    if-eq p1, v0, :L0
    goto :L3
  :L0
    const/4 p1, 1
  .line 2
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setOverlayMode(Z)V
    goto :L3
  :L1
  .line 3
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->f:Landroidx/appcompat/widget/b0;
    invoke-interface { p1 }, Landroidx/appcompat/widget/b0;->v()V
    goto :L3
  :L2
  .line 4
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->f:Landroidx/appcompat/widget/b0;
    invoke-interface { p1 }, Landroidx/appcompat/widget/b0;->t()V
  :L3
    return-void
.end method

.method public l()V
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z()V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->f:Landroidx/appcompat/widget/b0;
    invoke-interface { v0 }, Landroidx/appcompat/widget/b0;->h()V
    return-void
.end method

.method public m(Landroid/view/View;IIIII[I)V
  .registers 8
  .line 1
    invoke-virtual/range { p0 .. p6 }, Landroidx/appcompat/widget/ActionBarOverlayLayout;->n(Landroid/view/View;IIIII)V
    return-void
.end method

.method public n(Landroid/view/View;IIIII)V
  .registers 7
    if-nez p6, :L0
  .line 1
    invoke-virtual/range { p0 .. p5 }, Landroidx/appcompat/widget/ActionBarOverlayLayout;->onNestedScroll(Landroid/view/View;IIII)V
  :L0
    return-void
.end method

.method public o(Landroid/view/View;Landroid/view/View;II)Z
  .registers 5
    if-nez p4, :L0
  .line 1
    invoke-virtual { p0, p1, p2, p3 }, Landroidx/appcompat/widget/ActionBarOverlayLayout;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    move-result p1
    if-eqz p1, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    return p1
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
  .registers 9
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z()V
  .line 2
    invoke-static { p1, p0 }, Landroidx/core/view/d0;->t(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/d0;
    move-result-object p1
  .line 3
    new-instance v2, Landroid/graphics/Rect;
    invoke-virtual { p1 }, Landroidx/core/view/d0;->g()I
    move-result v0
  .line 4
    invoke-virtual { p1 }, Landroidx/core/view/d0;->i()I
    move-result v1
    invoke-virtual { p1 }, Landroidx/core/view/d0;->h()I
    move-result v3
  .line 5
    invoke-virtual { p1 }, Landroidx/core/view/d0;->f()I
    move-result v4
    invoke-direct { v2, v0, v1, v3, v4 }, Landroid/graphics/Rect;-><init>(IIII)V
  .line 6
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/ActionBarContainer;
    const/4 v3, 1
    const/4 v4, 1
    const/4 v5, 0
    const/4 v6, 1
    move-object v0, p0
    invoke-direct/range { v0 .. v6 }, Landroidx/appcompat/widget/ActionBarOverlayLayout;->q(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z
    move-result v0
  .line 7
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->o:Landroid/graphics/Rect;
    invoke-static { p0, p1, v1 }, Landroidx/core/view/v;->g(Landroid/view/View;Landroidx/core/view/d0;Landroid/graphics/Rect;)Landroidx/core/view/d0;
  .line 8
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->o:Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->left:I
    iget v3, v1, Landroid/graphics/Rect;->top:I
    iget v4, v1, Landroid/graphics/Rect;->right:I
    iget v1, v1, Landroid/graphics/Rect;->bottom:I
    invoke-virtual { p1, v2, v3, v4, v1 }, Landroidx/core/view/d0;->j(IIII)Landroidx/core/view/d0;
    move-result-object v1
    iput-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->v:Landroidx/core/view/d0;
  .line 9
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->w:Landroidx/core/view/d0;
    invoke-virtual { v2, v1 }, Landroidx/core/view/d0;->equals(Ljava/lang/Object;)Z
    move-result v1
    const/4 v2, 1
    if-nez v1, :L0
  .line 10
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->v:Landroidx/core/view/d0;
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->w:Landroidx/core/view/d0;
    const/4 v0, 1
  :L0
  .line 11
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->p:Landroid/graphics/Rect;
    iget-object v3, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->o:Landroid/graphics/Rect;
    invoke-virtual { v1, v3 }, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-nez v1, :L1
  .line 12
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->p:Landroid/graphics/Rect;
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->o:Landroid/graphics/Rect;
    invoke-virtual { v0, v1 }, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    goto :L2
  :L1
    move v2, v0
  :L2
    if-eqz v2, :L3
  .line 13
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->requestLayout()V
  :L3
  .line 14
    invoke-virtual { p1 }, Landroidx/core/view/d0;->a()Landroidx/core/view/d0;
    move-result-object p1
  .line 15
    invoke-virtual { p1 }, Landroidx/core/view/d0;->c()Landroidx/core/view/d0;
    move-result-object p1
  .line 16
    invoke-virtual { p1 }, Landroidx/core/view/d0;->b()Landroidx/core/view/d0;
    move-result-object p1
  .line 17
    invoke-virtual { p1 }, Landroidx/core/view/d0;->r()Landroid/view/WindowInsets;
    move-result-object p1
    return-object p1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
  .registers 2
  .line 1
    invoke-super { p0, p1 }, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V
  .line 2
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object p1
    invoke-direct { p0, p1 }, Landroidx/appcompat/widget/ActionBarOverlayLayout;->v(Landroid/content/Context;)V
  .line 3
    invoke-static { p0 }, Landroidx/core/view/v;->l0(Landroid/view/View;)V
    return-void
.end method

.method protected onDetachedFromWindow()V
  .registers 1
  .line 1
    invoke-super { p0 }, Landroid/view/ViewGroup;->onDetachedFromWindow()V
  .line 2
    invoke-virtual { p0 }, Landroidx/appcompat/widget/ActionBarOverlayLayout;->u()V
    return-void
.end method

.method protected onLayout(ZIIII)V
  .registers 10
  .line 1
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result p1
  .line 2
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getPaddingLeft()I
    move-result p2
  .line 3
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getPaddingTop()I
    move-result p3
    const/4 p4, 0
  :L0
    if-ge p4, p1, :L2
  .line 4
    invoke-virtual { p0, p4 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object p5
  .line 5
    invoke-virtual { p5 }, Landroid/view/View;->getVisibility()I
    move-result v0
    const/16 v1, 8
    if-eq v0, v1, :L1
  .line 6
    invoke-virtual { p5 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$e;
  .line 7
    invoke-virtual { p5 }, Landroid/view/View;->getMeasuredWidth()I
    move-result v1
  .line 8
    invoke-virtual { p5 }, Landroid/view/View;->getMeasuredHeight()I
    move-result v2
  .line 9
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I
    add-int/2addr v3, p2
  .line 10
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I
    add-int/2addr v0, p3
    add-int/2addr v1, v3
    add-int/2addr v2, v0
  .line 11
    invoke-virtual { p5, v3, v0, v1, v2 }, Landroid/view/View;->layout(IIII)V
  :L1
    add-int/lit8 p4, p4, 1
    goto :L0
  :L2
    return-void
.end method

.method protected onMeasure(II)V
  .registers 14
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z()V
  .line 2
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/ActionBarContainer;
    const/4 v3, 0
    const/4 v5, 0
    move-object v0, p0
    move v2, p1
    move v4, p2
    invoke-virtual/range { v0 .. v5 }, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/ActionBarContainer;
    invoke-virtual { v0 }, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$e;
  .line 4
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/ActionBarContainer;
  .line 5
    invoke-virtual { v1 }, Landroid/widget/FrameLayout;->getMeasuredWidth()I
    move-result v1
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I
    add-int/2addr v1, v2
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I
    add-int/2addr v1, v2
    const/4 v2, 0
  .line 6
    invoke-static { v2, v1 }, Ljava/lang/Math;->max(II)I
    move-result v7
  .line 7
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/ActionBarContainer;
  .line 8
    invoke-virtual { v1 }, Landroid/widget/FrameLayout;->getMeasuredHeight()I
    move-result v1
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I
    add-int/2addr v1, v3
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I
    add-int/2addr v1, v0
  .line 9
    invoke-static { v2, v1 }, Ljava/lang/Math;->max(II)I
    move-result v8
  .line 10
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/ActionBarContainer;
    invoke-virtual { v0 }, Landroid/widget/FrameLayout;->getMeasuredState()I
    move-result v0
    invoke-static { v2, v0 }, Landroid/view/View;->combineMeasuredStates(II)I
    move-result v9
  .line 11
    invoke-static { p0 }, Landroidx/core/view/v;->M(Landroid/view/View;)I
    move-result v0
    and-int/lit16 v0, v0, 256
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    if-eqz v0, :L2
  .line 12
    iget v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->b:I
  .line 13
    iget-boolean v3, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j:Z
    if-eqz v3, :L4
  .line 14
    iget-object v3, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/ActionBarContainer;
    invoke-virtual { v3 }, Landroidx/appcompat/widget/ActionBarContainer;->getTabContainer()Landroid/view/View;
    move-result-object v3
    if-eqz v3, :L4
  .line 15
    iget v3, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->b:I
    add-int/2addr v1, v3
    goto :L4
  :L2
  .line 16
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/ActionBarContainer;
    invoke-virtual { v1 }, Landroid/widget/FrameLayout;->getVisibility()I
    move-result v1
    const/16 v3, 8
    if-eq v1, v3, :L3
  .line 17
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/ActionBarContainer;
    invoke-virtual { v1 }, Landroid/widget/FrameLayout;->getMeasuredHeight()I
    move-result v1
    goto :L4
  :L3
    const/4 v1, 0
  :L4
  .line 18
    iget-object v3, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->q:Landroid/graphics/Rect;
    iget-object v4, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->o:Landroid/graphics/Rect;
    invoke-virtual { v3, v4 }, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
  .line 19
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v10, 21
    if-lt v3, v10, :L5
  .line 20
    iget-object v3, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->v:Landroidx/core/view/d0;
    iput-object v3, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->x:Landroidx/core/view/d0;
    goto :L6
  :L5
  .line 21
    iget-object v3, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->t:Landroid/graphics/Rect;
    iget-object v4, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->r:Landroid/graphics/Rect;
    invoke-virtual { v3, v4 }, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
  :L6
  .line 22
    iget-boolean v3, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i:Z
    if-nez v3, :L7
    if-nez v0, :L7
  .line 23
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->q:Landroid/graphics/Rect;
    iget v3, v0, Landroid/graphics/Rect;->top:I
    add-int/2addr v3, v1
    iput v3, v0, Landroid/graphics/Rect;->top:I
  .line 24
    iget v3, v0, Landroid/graphics/Rect;->bottom:I
    add-int/2addr v3, v2
    iput v3, v0, Landroid/graphics/Rect;->bottom:I
  .line 25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt v0, v10, :L9
  .line 26
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->x:Landroidx/core/view/d0;
    invoke-virtual { v0, v2, v1, v2, v2 }, Landroidx/core/view/d0;->j(IIII)Landroidx/core/view/d0;
    move-result-object v0
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->x:Landroidx/core/view/d0;
    goto :L9
  :L7
  .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt v0, v10, :L8
  .line 28
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->x:Landroidx/core/view/d0;
  .line 29
    invoke-virtual { v0 }, Landroidx/core/view/d0;->g()I
    move-result v0
    iget-object v3, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->x:Landroidx/core/view/d0;
  .line 30
    invoke-virtual { v3 }, Landroidx/core/view/d0;->i()I
    move-result v3
    add-int/2addr v3, v1
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->x:Landroidx/core/view/d0;
  .line 31
    invoke-virtual { v1 }, Landroidx/core/view/d0;->h()I
    move-result v1
    iget-object v4, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->x:Landroidx/core/view/d0;
  .line 32
    invoke-virtual { v4 }, Landroidx/core/view/d0;->f()I
    move-result v4
    add-int/2addr v4, v2
  .line 33
    invoke-static { v0, v3, v1, v4 }, Lc/g/d/b;->b(IIII)Lc/g/d/b;
    move-result-object v0
  .line 34
    new-instance v1, Landroidx/core/view/d0$b;
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->x:Landroidx/core/view/d0;
    invoke-direct { v1, v2 }, Landroidx/core/view/d0$b;-><init>(Landroidx/core/view/d0;)V
  .line 35
    invoke-virtual { v1, v0 }, Landroidx/core/view/d0$b;->c(Lc/g/d/b;)Landroidx/core/view/d0$b;
  .line 36
    invoke-virtual { v1 }, Landroidx/core/view/d0$b;->a()Landroidx/core/view/d0;
    move-result-object v0
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->x:Landroidx/core/view/d0;
    goto :L9
  :L8
  .line 37
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->t:Landroid/graphics/Rect;
    iget v3, v0, Landroid/graphics/Rect;->top:I
    add-int/2addr v3, v1
    iput v3, v0, Landroid/graphics/Rect;->top:I
  .line 38
    iget v1, v0, Landroid/graphics/Rect;->bottom:I
    add-int/2addr v1, v2
    iput v1, v0, Landroid/graphics/Rect;->bottom:I
  :L9
  .line 39
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->d:Landroidx/appcompat/widget/ContentFrameLayout;
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->q:Landroid/graphics/Rect;
    const/4 v3, 1
    const/4 v4, 1
    const/4 v5, 1
    const/4 v6, 1
    move-object v0, p0
    invoke-direct/range { v0 .. v6 }, Landroidx/appcompat/widget/ActionBarOverlayLayout;->q(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z
  .line 40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt v0, v10, :L10
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->y:Landroidx/core/view/d0;
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->x:Landroidx/core/view/d0;
    invoke-virtual { v0, v1 }, Landroidx/core/view/d0;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L10
  .line 41
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->x:Landroidx/core/view/d0;
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->y:Landroidx/core/view/d0;
  .line 42
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->d:Landroidx/appcompat/widget/ContentFrameLayout;
    invoke-static { v1, v0 }, Landroidx/core/view/v;->h(Landroid/view/View;Landroidx/core/view/d0;)Landroidx/core/view/d0;
    goto :L11
  :L10
  .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    if-ge v0, v10, :L11
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->u:Landroid/graphics/Rect;
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->t:Landroid/graphics/Rect;
    invoke-virtual { v0, v1 }, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L11
  .line 44
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->u:Landroid/graphics/Rect;
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->t:Landroid/graphics/Rect;
    invoke-virtual { v0, v1 }, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
  .line 45
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->d:Landroidx/appcompat/widget/ContentFrameLayout;
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->t:Landroid/graphics/Rect;
    invoke-virtual { v0, v1 }, Landroidx/appcompat/widget/ContentFrameLayout;->a(Landroid/graphics/Rect;)V
  :L11
  .line 46
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->d:Landroidx/appcompat/widget/ContentFrameLayout;
    const/4 v3, 0
    const/4 v5, 0
    move-object v0, p0
    move v2, p1
    move v4, p2
    invoke-virtual/range { v0 .. v5 }, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V
  .line 47
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->d:Landroidx/appcompat/widget/ContentFrameLayout;
    invoke-virtual { v0 }, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$e;
  .line 48
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->d:Landroidx/appcompat/widget/ContentFrameLayout;
  .line 49
    invoke-virtual { v1 }, Landroid/widget/FrameLayout;->getMeasuredWidth()I
    move-result v1
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I
    add-int/2addr v1, v2
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I
    add-int/2addr v1, v2
  .line 50
    invoke-static { v7, v1 }, Ljava/lang/Math;->max(II)I
    move-result v1
  .line 51
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->d:Landroidx/appcompat/widget/ContentFrameLayout;
  .line 52
    invoke-virtual { v2 }, Landroid/widget/FrameLayout;->getMeasuredHeight()I
    move-result v2
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I
    add-int/2addr v2, v3
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I
    add-int/2addr v2, v0
  .line 53
    invoke-static { v8, v2 }, Ljava/lang/Math;->max(II)I
    move-result v0
  .line 54
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->d:Landroidx/appcompat/widget/ContentFrameLayout;
    invoke-virtual { v2 }, Landroid/widget/FrameLayout;->getMeasuredState()I
    move-result v2
    invoke-static { v9, v2 }, Landroid/view/View;->combineMeasuredStates(II)I
    move-result v2
  .line 55
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getPaddingLeft()I
    move-result v3
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getPaddingRight()I
    move-result v4
    add-int/2addr v3, v4
    add-int/2addr v1, v3
  .line 56
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getPaddingTop()I
    move-result v3
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getPaddingBottom()I
    move-result v4
    add-int/2addr v3, v4
    add-int/2addr v0, v3
  .line 57
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I
    move-result v3
    invoke-static { v0, v3 }, Ljava/lang/Math;->max(II)I
    move-result v0
  .line 58
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I
    move-result v3
    invoke-static { v1, v3 }, Ljava/lang/Math;->max(II)I
    move-result v1
  .line 59
    invoke-static { v1, p1, v2 }, Landroid/view/View;->resolveSizeAndState(III)I
    move-result v1
    shl-int/lit8 v2, v2, 16
  .line 60
    invoke-static { v0, p2, v2 }, Landroid/view/View;->resolveSizeAndState(III)I
    move-result v0
  .line 61
    invoke-virtual { p0, v1, v0 }, Landroid/view/ViewGroup;->setMeasuredDimension(II)V
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
  .registers 5
  .line 1
    iget-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k:Z
    if-eqz p1, :L3
    if-nez p4, :L0
    goto :L3
  :L0
  .line 2
    invoke-direct { p0, p3 }, Landroidx/appcompat/widget/ActionBarOverlayLayout;->B(F)Z
    move-result p1
    if-eqz p1, :L1
  .line 3
    invoke-direct { p0 }, Landroidx/appcompat/widget/ActionBarOverlayLayout;->p()V
    goto :L2
  :L1
  .line 4
    invoke-direct { p0 }, Landroidx/appcompat/widget/ActionBarOverlayLayout;->A()V
  :L2
    const/4 p1, 1
  .line 5
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l:Z
    return p1
  :L3
    const/4 p1, 0
    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
  .registers 4
    const/4 p1, 0
    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
  .registers 5
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
  .registers 6
  .line 1
    iget p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->m:I
    add-int/2addr p1, p3
    iput p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->m:I
  .line 2
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setActionBarHideOffset(I)V
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->F:Landroidx/core/view/p;
    invoke-virtual { v0, p1, p2, p3 }, Landroidx/core/view/p;->b(Landroid/view/View;Landroid/view/View;I)V
  .line 2
    invoke-virtual { p0 }, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getActionBarHideOffset()I
    move-result p1
    iput p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->m:I
  .line 3
    invoke-virtual { p0 }, Landroidx/appcompat/widget/ActionBarOverlayLayout;->u()V
  .line 4
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z:Landroidx/appcompat/widget/ActionBarOverlayLayout$d;
    if-eqz p1, :L0
  .line 5
    invoke-interface { p1 }, Landroidx/appcompat/widget/ActionBarOverlayLayout$d;->c()V
  :L0
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
  .registers 4
    and-int/lit8 p1, p3, 2
    if-eqz p1, :L1
  .line 1
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/ActionBarContainer;
    invoke-virtual { p1 }, Landroid/widget/FrameLayout;->getVisibility()I
    move-result p1
    if-eqz p1, :L0
    goto :L1
  :L0
  .line 2
    iget-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k:Z
    return p1
  :L1
    const/4 p1, 0
    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
  .registers 3
  .line 1
    iget-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k:Z
    if-eqz p1, :L1
    iget-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l:Z
    if-nez p1, :L1
  .line 2
    iget p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->m:I
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/ActionBarContainer;
    invoke-virtual { v0 }, Landroid/widget/FrameLayout;->getHeight()I
    move-result v0
    if-gt p1, v0, :L0
  .line 3
    invoke-direct { p0 }, Landroidx/appcompat/widget/ActionBarOverlayLayout;->y()V
    goto :L1
  :L0
  .line 4
    invoke-direct { p0 }, Landroidx/appcompat/widget/ActionBarOverlayLayout;->x()V
  :L1
  .line 5
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z:Landroidx/appcompat/widget/ActionBarOverlayLayout$d;
    if-eqz p1, :L2
  .line 6
    invoke-interface { p1 }, Landroidx/appcompat/widget/ActionBarOverlayLayout$d;->f()V
  :L2
    return-void
.end method

.method public onWindowSystemUiVisibilityChanged(I)V
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 6
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 16
    if-lt v0, v1, :L0
  .line 2
    invoke-super { p0, p1 }, Landroid/view/ViewGroup;->onWindowSystemUiVisibilityChanged(I)V
  :L0
  .line 3
    invoke-virtual { p0 }, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z()V
  .line 4
    iget v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->n:I
    xor-int/2addr v0, p1
  .line 5
    iput p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->n:I
    and-int/lit8 v1, p1, 4
    const/4 v2, 0
    const/4 v3, 1
    if-nez v1, :L1
    const/4 v1, 1
    goto :L2
  :L1
    const/4 v1, 0
  :L2
    and-int/lit16 p1, p1, 256
    if-eqz p1, :L3
    const/4 v2, 1
  :L3
  .line 6
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z:Landroidx/appcompat/widget/ActionBarOverlayLayout$d;
    if-eqz p1, :L6
    xor-int/lit8 v3, v2, 1
  .line 7
    invoke-interface { p1, v3 }, Landroidx/appcompat/widget/ActionBarOverlayLayout$d;->a(Z)V
    if-nez v1, :L5
    if-nez v2, :L4
    goto :L5
  :L4
  .line 8
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z:Landroidx/appcompat/widget/ActionBarOverlayLayout$d;
    invoke-interface { p1 }, Landroidx/appcompat/widget/ActionBarOverlayLayout$d;->e()V
    goto :L6
  :L5
  .line 9
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z:Landroidx/appcompat/widget/ActionBarOverlayLayout$d;
    invoke-interface { p1 }, Landroidx/appcompat/widget/ActionBarOverlayLayout$d;->b()V
  :L6
    and-int/lit16 p1, v0, 256
    if-eqz p1, :L7
  .line 10
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z:Landroidx/appcompat/widget/ActionBarOverlayLayout$d;
    if-eqz p1, :L7
  .line 11
    invoke-static { p0 }, Landroidx/core/view/v;->l0(Landroid/view/View;)V
  :L7
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
  .registers 3
  .line 1
    invoke-super { p0, p1 }, Landroid/view/ViewGroup;->onWindowVisibilityChanged(I)V
  .line 2
    iput p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->c:I
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z:Landroidx/appcompat/widget/ActionBarOverlayLayout$d;
    if-eqz v0, :L0
  .line 4
    invoke-interface { v0, p1 }, Landroidx/appcompat/widget/ActionBarOverlayLayout$d;->d(I)V
  :L0
    return-void
.end method

.method protected r()Landroidx/appcompat/widget/ActionBarOverlayLayout$e;
  .registers 3
  .line 1
    new-instance v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$e;
    const/4 v1, -1
    invoke-direct { v0, v1, v1 }, Landroidx/appcompat/widget/ActionBarOverlayLayout$e;-><init>(II)V
    return-object v0
.end method

.method public s(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/ActionBarOverlayLayout$e;
  .registers 4
  .line 1
    new-instance v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$e;
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object v1
    invoke-direct { v0, v1, p1 }, Landroidx/appcompat/widget/ActionBarOverlayLayout$e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    return-object v0
.end method

.method public setActionBarHideOffset(I)V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/widget/ActionBarOverlayLayout;->u()V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/ActionBarContainer;
    invoke-virtual { v0 }, Landroid/widget/FrameLayout;->getHeight()I
    move-result v0
  .line 3
    invoke-static { p1, v0 }, Ljava/lang/Math;->min(II)I
    move-result p1
    const/4 v0, 0
    invoke-static { v0, p1 }, Ljava/lang/Math;->max(II)I
    move-result p1
  .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/ActionBarContainer;
    neg-int p1, p1
    int-to-float p1, p1
    invoke-virtual { v0, p1 }, Landroid/widget/FrameLayout;->setTranslationY(F)V
    return-void
.end method

.method public setActionBarVisibilityCallback(Landroidx/appcompat/widget/ActionBarOverlayLayout$d;)V
  .registers 3
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z:Landroidx/appcompat/widget/ActionBarOverlayLayout$d;
  .line 2
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;
    move-result-object p1
    if-eqz p1, :L0
  .line 3
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z:Landroidx/appcompat/widget/ActionBarOverlayLayout$d;
    iget v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->c:I
    invoke-interface { p1, v0 }, Landroidx/appcompat/widget/ActionBarOverlayLayout$d;->d(I)V
  .line 4
    iget p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->n:I
    if-eqz p1, :L0
  .line 5
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/ActionBarOverlayLayout;->onWindowSystemUiVisibilityChanged(I)V
  .line 6
    invoke-static { p0 }, Landroidx/core/view/v;->l0(Landroid/view/View;)V
  :L0
    return-void
.end method

.method public setHasNonEmbeddedTabs(Z)V
  .registers 2
  .line 1
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j:Z
    return-void
.end method

.method public setHideOnContentScrollEnabled(Z)V
  .registers 3
  .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k:Z
    if-eq p1, v0, :L0
  .line 2
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k:Z
    if-nez p1, :L0
  .line 3
    invoke-virtual { p0 }, Landroidx/appcompat/widget/ActionBarOverlayLayout;->u()V
    const/4 p1, 0
  .line 4
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setActionBarHideOffset(I)V
  :L0
    return-void
.end method

.method public setIcon(I)V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z()V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->f:Landroidx/appcompat/widget/b0;
    invoke-interface { v0, p1 }, Landroidx/appcompat/widget/b0;->setIcon(I)V
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
  .registers 3
  .line 3
    invoke-virtual { p0 }, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z()V
  .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->f:Landroidx/appcompat/widget/b0;
    invoke-interface { v0, p1 }, Landroidx/appcompat/widget/b0;->setIcon(Landroid/graphics/drawable/Drawable;)V
    return-void
.end method

.method public setLogo(I)V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z()V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->f:Landroidx/appcompat/widget/b0;
    invoke-interface { v0, p1 }, Landroidx/appcompat/widget/b0;->m(I)V
    return-void
.end method

.method public setOverlayMode(Z)V
  .registers 3
  .line 1
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i:Z
    if-eqz p1, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object p1
    invoke-virtual { p1 }, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    move-result-object p1
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    const/16 v0, 19
    if-ge p1, v0, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Z
    return-void
.end method

.method public setShowingForActionMode(Z)V
  .registers 2
    return-void
.end method

.method public setUiOptions(I)V
  .registers 2
    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z()V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->f:Landroidx/appcompat/widget/b0;
    invoke-interface { v0, p1 }, Landroidx/appcompat/widget/b0;->setWindowCallback(Landroid/view/Window$Callback;)V
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z()V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->f:Landroidx/appcompat/widget/b0;
    invoke-interface { v0, p1 }, Landroidx/appcompat/widget/b0;->setWindowTitle(Ljava/lang/CharSequence;)V
    return-void
.end method

.method public shouldDelayChildPressedState()Z
  .registers 2
    const/4 v0, 0
    return v0
.end method

.method u()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->D:Ljava/lang/Runnable;
    invoke-virtual { p0, v0 }, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->E:Ljava/lang/Runnable;
    invoke-virtual { p0, v0 }, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->B:Landroid/view/ViewPropertyAnimator;
    if-eqz v0, :L0
  .line 4
    invoke-virtual { v0 }, Landroid/view/ViewPropertyAnimator;->cancel()V
  :L0
    return-void
.end method

.method public w()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i:Z
    return v0
.end method

.method z()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->d:Landroidx/appcompat/widget/ContentFrameLayout;
    if-nez v0, :L0
  .line 2
    sget v0, Lc/a/f;->action_bar_activity_content:I
    invoke-virtual { p0, v0 }, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroidx/appcompat/widget/ContentFrameLayout;
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->d:Landroidx/appcompat/widget/ContentFrameLayout;
  .line 3
    sget v0, Lc/a/f;->action_bar_container:I
    invoke-virtual { p0, v0 }, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroidx/appcompat/widget/ActionBarContainer;
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/ActionBarContainer;
  .line 4
    sget v0, Lc/a/f;->action_bar:I
    invoke-virtual { p0, v0 }, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
    move-result-object v0
    invoke-direct { p0, v0 }, Landroidx/appcompat/widget/ActionBarOverlayLayout;->t(Landroid/view/View;)Landroidx/appcompat/widget/b0;
    move-result-object v0
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->f:Landroidx/appcompat/widget/b0;
  :L0
    return-void
.end method
