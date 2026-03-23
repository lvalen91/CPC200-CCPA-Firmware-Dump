.class public Landroidx/appcompat/app/o;
.super Landroidx/appcompat/app/a;
.implements Landroidx/appcompat/widget/ActionBarOverlayLayout$d;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/appcompat/app/o$d;
  }
.end annotation

.field private final static B:Landroid/view/animation/Interpolator;

.field private final static C:Landroid/view/animation/Interpolator;

.field final A:Landroidx/core/view/c0;

.field a:Landroid/content/Context;

.field private b:Landroid/content/Context;

.field c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

.field d:Landroidx/appcompat/widget/ActionBarContainer;

.field e:Landroidx/appcompat/widget/b0;

.field f:Landroidx/appcompat/widget/ActionBarContextView;

.field g:Landroid/view/View;

.field h:Landroidx/appcompat/widget/n0;

.field private i:Z

.field j:Landroidx/appcompat/app/o$d;

.field k:Lc/a/o/b;

.field l:Lc/a/o/b$a;

.field private m:Z

.field private n:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Landroidx/appcompat/app/a$b;",
      ">;"
    }
  .end annotation
.end field

.field private o:Z

.field private p:I

.field q:Z

.field r:Z

.field s:Z

.field private t:Z

.field private u:Z

.field v:Lc/a/o/h;

.field private w:Z

.field x:Z

.field final y:Landroidx/core/view/a0;

.field final z:Landroidx/core/view/a0;

.method static constructor <clinit>()V
  .registers 1
  .line 1
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;
    invoke-direct { v0 }, Landroid/view/animation/AccelerateInterpolator;-><init>()V
    sput-object v0, Landroidx/appcompat/app/o;->B:Landroid/view/animation/Interpolator;
  .line 2
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;
    invoke-direct { v0 }, Landroid/view/animation/DecelerateInterpolator;-><init>()V
    sput-object v0, Landroidx/appcompat/app/o;->C:Landroid/view/animation/Interpolator;
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
  .registers 4
  .line 1
    invoke-direct { p0 }, Landroidx/appcompat/app/a;-><init>()V
  .line 2
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
  .line 3
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Landroidx/appcompat/app/o;->n:Ljava/util/ArrayList;
    const/4 v0, 0
  .line 4
    iput v0, p0, Landroidx/appcompat/app/o;->p:I
    const/4 v0, 1
  .line 5
    iput-boolean v0, p0, Landroidx/appcompat/app/o;->q:Z
  .line 6
    iput-boolean v0, p0, Landroidx/appcompat/app/o;->u:Z
  .line 7
    new-instance v0, Landroidx/appcompat/app/o$a;
    invoke-direct { v0, p0 }, Landroidx/appcompat/app/o$a;-><init>(Landroidx/appcompat/app/o;)V
    iput-object v0, p0, Landroidx/appcompat/app/o;->y:Landroidx/core/view/a0;
  .line 8
    new-instance v0, Landroidx/appcompat/app/o$b;
    invoke-direct { v0, p0 }, Landroidx/appcompat/app/o$b;-><init>(Landroidx/appcompat/app/o;)V
    iput-object v0, p0, Landroidx/appcompat/app/o;->z:Landroidx/core/view/a0;
  .line 9
    new-instance v0, Landroidx/appcompat/app/o$c;
    invoke-direct { v0, p0 }, Landroidx/appcompat/app/o$c;-><init>(Landroidx/appcompat/app/o;)V
    iput-object v0, p0, Landroidx/appcompat/app/o;->A:Landroidx/core/view/c0;
  .line 10
    invoke-virtual { p1 }, Landroid/app/Activity;->getWindow()Landroid/view/Window;
    move-result-object p1
  .line 11
    invoke-virtual { p1 }, Landroid/view/Window;->getDecorView()Landroid/view/View;
    move-result-object p1
  .line 12
    invoke-direct { p0, p1 }, Landroidx/appcompat/app/o;->F(Landroid/view/View;)V
    if-nez p2, :L0
    const p2, 16908290
  .line 13
    invoke-virtual { p1, p2 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object p1
    iput-object p1, p0, Landroidx/appcompat/app/o;->g:Landroid/view/View;
  :L0
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
  .registers 3
  .line 14
    invoke-direct { p0 }, Landroidx/appcompat/app/a;-><init>()V
  .line 15
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
  .line 16
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Landroidx/appcompat/app/o;->n:Ljava/util/ArrayList;
    const/4 v0, 0
  .line 17
    iput v0, p0, Landroidx/appcompat/app/o;->p:I
    const/4 v0, 1
  .line 18
    iput-boolean v0, p0, Landroidx/appcompat/app/o;->q:Z
  .line 19
    iput-boolean v0, p0, Landroidx/appcompat/app/o;->u:Z
  .line 20
    new-instance v0, Landroidx/appcompat/app/o$a;
    invoke-direct { v0, p0 }, Landroidx/appcompat/app/o$a;-><init>(Landroidx/appcompat/app/o;)V
    iput-object v0, p0, Landroidx/appcompat/app/o;->y:Landroidx/core/view/a0;
  .line 21
    new-instance v0, Landroidx/appcompat/app/o$b;
    invoke-direct { v0, p0 }, Landroidx/appcompat/app/o$b;-><init>(Landroidx/appcompat/app/o;)V
    iput-object v0, p0, Landroidx/appcompat/app/o;->z:Landroidx/core/view/a0;
  .line 22
    new-instance v0, Landroidx/appcompat/app/o$c;
    invoke-direct { v0, p0 }, Landroidx/appcompat/app/o$c;-><init>(Landroidx/appcompat/app/o;)V
    iput-object v0, p0, Landroidx/appcompat/app/o;->A:Landroidx/core/view/c0;
  .line 23
    invoke-virtual { p1 }, Landroid/app/Dialog;->getWindow()Landroid/view/Window;
    move-result-object p1
    invoke-virtual { p1 }, Landroid/view/Window;->getDecorView()Landroid/view/View;
    move-result-object p1
    invoke-direct { p0, p1 }, Landroidx/appcompat/app/o;->F(Landroid/view/View;)V
    return-void
.end method

.method private C(Landroid/view/View;)Landroidx/appcompat/widget/b0;
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
    if-eqz p1, :L2
  .line 6
    invoke-virtual { p1 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object p1
    invoke-virtual { p1 }, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
    move-result-object p1
    goto :L3
  :L2
    const-string p1, "null"
  :L3
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method private E()V
  .registers 3
  .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/o;->t:Z
    if-eqz v0, :L1
    const/4 v0, 0
  .line 2
    iput-boolean v0, p0, Landroidx/appcompat/app/o;->t:Z
  .line 3
    iget-object v1, p0, Landroidx/appcompat/app/o;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;
    if-eqz v1, :L0
  .line 4
    invoke-virtual { v1, v0 }, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V
  :L0
  .line 5
    invoke-direct { p0, v0 }, Landroidx/appcompat/app/o;->O(Z)V
  :L1
    return-void
.end method

.method private F(Landroid/view/View;)V
  .registers 7
  .line 1
    sget v0, Lc/a/f;->decor_content_parent:I
    invoke-virtual { p1, v0 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;
    iput-object v0, p0, Landroidx/appcompat/app/o;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p0 }, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setActionBarVisibilityCallback(Landroidx/appcompat/widget/ActionBarOverlayLayout$d;)V
  :L0
  .line 3
    sget v0, Lc/a/f;->action_bar:I
    invoke-virtual { p1, v0 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v0
    invoke-direct { p0, v0 }, Landroidx/appcompat/app/o;->C(Landroid/view/View;)Landroidx/appcompat/widget/b0;
    move-result-object v0
    iput-object v0, p0, Landroidx/appcompat/app/o;->e:Landroidx/appcompat/widget/b0;
  .line 4
    sget v0, Lc/a/f;->action_context_bar:I
    invoke-virtual { p1, v0 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroidx/appcompat/widget/ActionBarContextView;
    iput-object v0, p0, Landroidx/appcompat/app/o;->f:Landroidx/appcompat/widget/ActionBarContextView;
  .line 5
    sget v0, Lc/a/f;->action_bar_container:I
    invoke-virtual { p1, v0 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object p1
    check-cast p1, Landroidx/appcompat/widget/ActionBarContainer;
    iput-object p1, p0, Landroidx/appcompat/app/o;->d:Landroidx/appcompat/widget/ActionBarContainer;
  .line 6
    iget-object v0, p0, Landroidx/appcompat/app/o;->e:Landroidx/appcompat/widget/b0;
    if-eqz v0, :L9
    iget-object v1, p0, Landroidx/appcompat/app/o;->f:Landroidx/appcompat/widget/ActionBarContextView;
    if-eqz v1, :L9
    if-eqz p1, :L9
  .line 7
    invoke-interface { v0 }, Landroidx/appcompat/widget/b0;->q()Landroid/content/Context;
    move-result-object p1
    iput-object p1, p0, Landroidx/appcompat/app/o;->a:Landroid/content/Context;
  .line 8
    iget-object p1, p0, Landroidx/appcompat/app/o;->e:Landroidx/appcompat/widget/b0;
    invoke-interface { p1 }, Landroidx/appcompat/widget/b0;->j()I
    move-result p1
    and-int/lit8 p1, p1, 4
    const/4 v0, 1
    const/4 v1, 0
    if-eqz p1, :L1
    const/4 p1, 1
    goto :L2
  :L1
    const/4 p1, 0
  :L2
    if-eqz p1, :L3
  .line 9
    iput-boolean v0, p0, Landroidx/appcompat/app/o;->i:Z
  :L3
  .line 10
    iget-object v2, p0, Landroidx/appcompat/app/o;->a:Landroid/content/Context;
    invoke-static { v2 }, Lc/a/o/a;->b(Landroid/content/Context;)Lc/a/o/a;
    move-result-object v2
  .line 11
    invoke-virtual { v2 }, Lc/a/o/a;->a()Z
    move-result v3
    if-nez v3, :L5
    if-eqz p1, :L4
    goto :L5
  :L4
    const/4 p1, 0
    goto :L6
  :L5
    const/4 p1, 1
  :L6
    invoke-virtual { p0, p1 }, Landroidx/appcompat/app/o;->L(Z)V
  .line 12
    invoke-virtual { v2 }, Lc/a/o/a;->g()Z
    move-result p1
    invoke-direct { p0, p1 }, Landroidx/appcompat/app/o;->J(Z)V
  .line 13
    iget-object p1, p0, Landroidx/appcompat/app/o;->a:Landroid/content/Context;
    const/4 v2, 0
    sget-object v3, Lc/a/j;->ActionBar:[I
    sget v4, Lc/a/a;->actionBarStyle:I
    invoke-virtual { p1, v2, v3, v4, v1 }, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    move-result-object p1
  .line 14
    sget v2, Lc/a/j;->ActionBar_hideOnContentScroll:I
    invoke-virtual { p1, v2, v1 }, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    move-result v2
    if-eqz v2, :L7
  .line 15
    invoke-virtual { p0, v0 }, Landroidx/appcompat/app/o;->K(Z)V
  :L7
  .line 16
    sget v0, Lc/a/j;->ActionBar_elevation:I
    invoke-virtual { p1, v0, v1 }, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
    move-result v0
    if-eqz v0, :L8
    int-to-float v0, v0
  .line 17
    invoke-virtual { p0, v0 }, Landroidx/appcompat/app/o;->I(F)V
  :L8
  .line 18
    invoke-virtual { p1 }, Landroid/content/res/TypedArray;->recycle()V
    return-void
  :L9
  .line 19
    new-instance p1, Ljava/lang/IllegalStateException;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-class v1, Landroidx/appcompat/app/o;
    invoke-virtual { v1 }, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, " can only be used with a compatible window decor layout"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-direct { p1, v0 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method private J(Z)V
  .registers 6
  .line 1
    iput-boolean p1, p0, Landroidx/appcompat/app/o;->o:Z
    const/4 v0, 0
    if-nez p1, :L0
  .line 2
    iget-object p1, p0, Landroidx/appcompat/app/o;->e:Landroidx/appcompat/widget/b0;
    invoke-interface { p1, v0 }, Landroidx/appcompat/widget/b0;->n(Landroidx/appcompat/widget/n0;)V
  .line 3
    iget-object p1, p0, Landroidx/appcompat/app/o;->d:Landroidx/appcompat/widget/ActionBarContainer;
    iget-object v0, p0, Landroidx/appcompat/app/o;->h:Landroidx/appcompat/widget/n0;
    invoke-virtual { p1, v0 }, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Landroidx/appcompat/widget/n0;)V
    goto :L1
  :L0
  .line 4
    iget-object p1, p0, Landroidx/appcompat/app/o;->d:Landroidx/appcompat/widget/ActionBarContainer;
    invoke-virtual { p1, v0 }, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Landroidx/appcompat/widget/n0;)V
  .line 5
    iget-object p1, p0, Landroidx/appcompat/app/o;->e:Landroidx/appcompat/widget/b0;
    iget-object v0, p0, Landroidx/appcompat/app/o;->h:Landroidx/appcompat/widget/n0;
    invoke-interface { p1, v0 }, Landroidx/appcompat/widget/b0;->n(Landroidx/appcompat/widget/n0;)V
  :L1
  .line 6
    invoke-virtual { p0 }, Landroidx/appcompat/app/o;->D()I
    move-result p1
    const/4 v0, 2
    const/4 v1, 1
    const/4 v2, 0
    if-ne p1, v0, :L2
    const/4 p1, 1
    goto :L3
  :L2
    const/4 p1, 0
  :L3
  .line 7
    iget-object v0, p0, Landroidx/appcompat/app/o;->h:Landroidx/appcompat/widget/n0;
    if-eqz v0, :L5
    if-eqz p1, :L4
  .line 8
    invoke-virtual { v0, v2 }, Landroid/widget/HorizontalScrollView;->setVisibility(I)V
  .line 9
    iget-object v0, p0, Landroidx/appcompat/app/o;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;
    if-eqz v0, :L5
  .line 10
    invoke-static { v0 }, Landroidx/core/view/v;->l0(Landroid/view/View;)V
    goto :L5
  :L4
    const/16 v3, 8
  .line 11
    invoke-virtual { v0, v3 }, Landroid/widget/HorizontalScrollView;->setVisibility(I)V
  :L5
  .line 12
    iget-object v0, p0, Landroidx/appcompat/app/o;->e:Landroidx/appcompat/widget/b0;
    iget-boolean v3, p0, Landroidx/appcompat/app/o;->o:Z
    if-nez v3, :L6
    if-eqz p1, :L6
    const/4 v3, 1
    goto :L7
  :L6
    const/4 v3, 0
  :L7
    invoke-interface { v0, v3 }, Landroidx/appcompat/widget/b0;->w(Z)V
  .line 13
    iget-object v0, p0, Landroidx/appcompat/app/o;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;
    iget-boolean v3, p0, Landroidx/appcompat/app/o;->o:Z
    if-nez v3, :L8
    if-eqz p1, :L8
    goto :L9
  :L8
    const/4 v1, 0
  :L9
    invoke-virtual { v0, v1 }, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V
    return-void
.end method

.method private M()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/app/o;->d:Landroidx/appcompat/widget/ActionBarContainer;
    invoke-static { v0 }, Landroidx/core/view/v;->T(Landroid/view/View;)Z
    move-result v0
    return v0
.end method

.method private N()V
  .registers 3
  .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/o;->t:Z
    if-nez v0, :L1
    const/4 v0, 1
  .line 2
    iput-boolean v0, p0, Landroidx/appcompat/app/o;->t:Z
  .line 3
    iget-object v1, p0, Landroidx/appcompat/app/o;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;
    if-eqz v1, :L0
  .line 4
    invoke-virtual { v1, v0 }, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V
  :L0
    const/4 v0, 0
  .line 5
    invoke-direct { p0, v0 }, Landroidx/appcompat/app/o;->O(Z)V
  :L1
    return-void
.end method

.method private O(Z)V
  .registers 5
  .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/o;->r:Z
    iget-boolean v1, p0, Landroidx/appcompat/app/o;->s:Z
    iget-boolean v2, p0, Landroidx/appcompat/app/o;->t:Z
    invoke-static { v0, v1, v2 }, Landroidx/appcompat/app/o;->y(ZZZ)Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    iget-boolean v0, p0, Landroidx/appcompat/app/o;->u:Z
    if-nez v0, :L1
    const/4 v0, 1
  .line 3
    iput-boolean v0, p0, Landroidx/appcompat/app/o;->u:Z
  .line 4
    invoke-virtual { p0, p1 }, Landroidx/appcompat/app/o;->B(Z)V
    goto :L1
  :L0
  .line 5
    iget-boolean v0, p0, Landroidx/appcompat/app/o;->u:Z
    if-eqz v0, :L1
    const/4 v0, 0
  .line 6
    iput-boolean v0, p0, Landroidx/appcompat/app/o;->u:Z
  .line 7
    invoke-virtual { p0, p1 }, Landroidx/appcompat/app/o;->A(Z)V
  :L1
    return-void
.end method

.method static y(ZZZ)Z
  .registers 4
    const/4 v0, 1
    if-eqz p2, :L0
    return v0
  :L0
    if-nez p0, :L2
    if-eqz p1, :L1
    goto :L2
  :L1
    return v0
  :L2
    const/4 p0, 0
    return p0
.end method

.method public A(Z)V
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/appcompat/app/o;->v:Lc/a/o/h;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Lc/a/o/h;->a()V
  :L0
  .line 3
    iget v0, p0, Landroidx/appcompat/app/o;->p:I
    if-nez v0, :L4
    iget-boolean v0, p0, Landroidx/appcompat/app/o;->w:Z
    if-nez v0, :L1
    if-eqz p1, :L4
  :L1
  .line 4
    iget-object v0, p0, Landroidx/appcompat/app/o;->d:Landroidx/appcompat/widget/ActionBarContainer;
    const/high16 v1, 16256
    invoke-virtual { v0, v1 }, Landroid/widget/FrameLayout;->setAlpha(F)V
  .line 5
    iget-object v0, p0, Landroidx/appcompat/app/o;->d:Landroidx/appcompat/widget/ActionBarContainer;
    const/4 v1, 1
    invoke-virtual { v0, v1 }, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V
  .line 6
    new-instance v0, Lc/a/o/h;
    invoke-direct { v0 }, Lc/a/o/h;-><init>()V
  .line 7
    iget-object v2, p0, Landroidx/appcompat/app/o;->d:Landroidx/appcompat/widget/ActionBarContainer;
    invoke-virtual { v2 }, Landroid/widget/FrameLayout;->getHeight()I
    move-result v2
    neg-int v2, v2
    int-to-float v2, v2
    if-eqz p1, :L2
    const/4 p1, 2
    new-array p1, p1, [I
  .line 8
    fill-array-data p1, :L6
  .line 9
    iget-object v3, p0, Landroidx/appcompat/app/o;->d:Landroidx/appcompat/widget/ActionBarContainer;
    invoke-virtual { v3, p1 }, Landroid/widget/FrameLayout;->getLocationInWindow([I)V
  .line 10
    aget p1, p1, v1
    int-to-float p1, p1
    sub-float/2addr v2, p1
  :L2
  .line 11
    iget-object p1, p0, Landroidx/appcompat/app/o;->d:Landroidx/appcompat/widget/ActionBarContainer;
    invoke-static { p1 }, Landroidx/core/view/v;->d(Landroid/view/View;)Landroidx/core/view/z;
    move-result-object p1
    invoke-virtual { p1, v2 }, Landroidx/core/view/z;->k(F)Landroidx/core/view/z;
  .line 12
    iget-object v1, p0, Landroidx/appcompat/app/o;->A:Landroidx/core/view/c0;
    invoke-virtual { p1, v1 }, Landroidx/core/view/z;->i(Landroidx/core/view/c0;)Landroidx/core/view/z;
  .line 13
    invoke-virtual { v0, p1 }, Lc/a/o/h;->c(Landroidx/core/view/z;)Lc/a/o/h;
  .line 14
    iget-boolean p1, p0, Landroidx/appcompat/app/o;->q:Z
    if-eqz p1, :L3
    iget-object p1, p0, Landroidx/appcompat/app/o;->g:Landroid/view/View;
    if-eqz p1, :L3
  .line 15
    invoke-static { p1 }, Landroidx/core/view/v;->d(Landroid/view/View;)Landroidx/core/view/z;
    move-result-object p1
    invoke-virtual { p1, v2 }, Landroidx/core/view/z;->k(F)Landroidx/core/view/z;
    invoke-virtual { v0, p1 }, Lc/a/o/h;->c(Landroidx/core/view/z;)Lc/a/o/h;
  :L3
  .line 16
    sget-object p1, Landroidx/appcompat/app/o;->B:Landroid/view/animation/Interpolator;
    invoke-virtual { v0, p1 }, Lc/a/o/h;->f(Landroid/view/animation/Interpolator;)Lc/a/o/h;
    const-wide/16 v1, 250
  .line 17
    invoke-virtual { v0, v1, v2 }, Lc/a/o/h;->e(J)Lc/a/o/h;
  .line 18
    iget-object p1, p0, Landroidx/appcompat/app/o;->y:Landroidx/core/view/a0;
    invoke-virtual { v0, p1 }, Lc/a/o/h;->g(Landroidx/core/view/a0;)Lc/a/o/h;
  .line 19
    iput-object v0, p0, Landroidx/appcompat/app/o;->v:Lc/a/o/h;
  .line 20
    invoke-virtual { v0 }, Lc/a/o/h;->h()V
    goto :L5
  :L4
  .line 21
    iget-object p1, p0, Landroidx/appcompat/app/o;->y:Landroidx/core/view/a0;
    const/4 v0, 0
    invoke-interface { p1, v0 }, Landroidx/core/view/a0;->a(Landroid/view/View;)V
  :L5
    return-void
  :L6
  .array-data 4
    0t 0t 0t 0t
    0t 0t 0t 0t
  .end array-data
.end method

.method public B(Z)V
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/appcompat/app/o;->v:Lc/a/o/h;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Lc/a/o/h;->a()V
  :L0
  .line 3
    iget-object v0, p0, Landroidx/appcompat/app/o;->d:Landroidx/appcompat/widget/ActionBarContainer;
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V
  .line 4
    iget v0, p0, Landroidx/appcompat/app/o;->p:I
    const/4 v1, 0
    if-nez v0, :L4
    iget-boolean v0, p0, Landroidx/appcompat/app/o;->w:Z
    if-nez v0, :L1
    if-eqz p1, :L4
  :L1
  .line 5
    iget-object v0, p0, Landroidx/appcompat/app/o;->d:Landroidx/appcompat/widget/ActionBarContainer;
    invoke-virtual { v0, v1 }, Landroid/widget/FrameLayout;->setTranslationY(F)V
  .line 6
    iget-object v0, p0, Landroidx/appcompat/app/o;->d:Landroidx/appcompat/widget/ActionBarContainer;
    invoke-virtual { v0 }, Landroid/widget/FrameLayout;->getHeight()I
    move-result v0
    neg-int v0, v0
    int-to-float v0, v0
    if-eqz p1, :L2
    const/4 p1, 2
    new-array p1, p1, [I
  .line 7
    fill-array-data p1, :L8
  .line 8
    iget-object v2, p0, Landroidx/appcompat/app/o;->d:Landroidx/appcompat/widget/ActionBarContainer;
    invoke-virtual { v2, p1 }, Landroid/widget/FrameLayout;->getLocationInWindow([I)V
    const/4 v2, 1
  .line 9
    aget p1, p1, v2
    int-to-float p1, p1
    sub-float/2addr v0, p1
  :L2
  .line 10
    iget-object p1, p0, Landroidx/appcompat/app/o;->d:Landroidx/appcompat/widget/ActionBarContainer;
    invoke-virtual { p1, v0 }, Landroid/widget/FrameLayout;->setTranslationY(F)V
  .line 11
    new-instance p1, Lc/a/o/h;
    invoke-direct { p1 }, Lc/a/o/h;-><init>()V
  .line 12
    iget-object v2, p0, Landroidx/appcompat/app/o;->d:Landroidx/appcompat/widget/ActionBarContainer;
    invoke-static { v2 }, Landroidx/core/view/v;->d(Landroid/view/View;)Landroidx/core/view/z;
    move-result-object v2
    invoke-virtual { v2, v1 }, Landroidx/core/view/z;->k(F)Landroidx/core/view/z;
  .line 13
    iget-object v3, p0, Landroidx/appcompat/app/o;->A:Landroidx/core/view/c0;
    invoke-virtual { v2, v3 }, Landroidx/core/view/z;->i(Landroidx/core/view/c0;)Landroidx/core/view/z;
  .line 14
    invoke-virtual { p1, v2 }, Lc/a/o/h;->c(Landroidx/core/view/z;)Lc/a/o/h;
  .line 15
    iget-boolean v2, p0, Landroidx/appcompat/app/o;->q:Z
    if-eqz v2, :L3
    iget-object v2, p0, Landroidx/appcompat/app/o;->g:Landroid/view/View;
    if-eqz v2, :L3
  .line 16
    invoke-virtual { v2, v0 }, Landroid/view/View;->setTranslationY(F)V
  .line 17
    iget-object v0, p0, Landroidx/appcompat/app/o;->g:Landroid/view/View;
    invoke-static { v0 }, Landroidx/core/view/v;->d(Landroid/view/View;)Landroidx/core/view/z;
    move-result-object v0
    invoke-virtual { v0, v1 }, Landroidx/core/view/z;->k(F)Landroidx/core/view/z;
    invoke-virtual { p1, v0 }, Lc/a/o/h;->c(Landroidx/core/view/z;)Lc/a/o/h;
  :L3
  .line 18
    sget-object v0, Landroidx/appcompat/app/o;->C:Landroid/view/animation/Interpolator;
    invoke-virtual { p1, v0 }, Lc/a/o/h;->f(Landroid/view/animation/Interpolator;)Lc/a/o/h;
    const-wide/16 v0, 250
  .line 19
    invoke-virtual { p1, v0, v1 }, Lc/a/o/h;->e(J)Lc/a/o/h;
  .line 20
    iget-object v0, p0, Landroidx/appcompat/app/o;->z:Landroidx/core/view/a0;
    invoke-virtual { p1, v0 }, Lc/a/o/h;->g(Landroidx/core/view/a0;)Lc/a/o/h;
  .line 21
    iput-object p1, p0, Landroidx/appcompat/app/o;->v:Lc/a/o/h;
  .line 22
    invoke-virtual { p1 }, Lc/a/o/h;->h()V
    goto :L6
  :L4
  .line 23
    iget-object p1, p0, Landroidx/appcompat/app/o;->d:Landroidx/appcompat/widget/ActionBarContainer;
    const/high16 v0, 16256
    invoke-virtual { p1, v0 }, Landroid/widget/FrameLayout;->setAlpha(F)V
  .line 24
    iget-object p1, p0, Landroidx/appcompat/app/o;->d:Landroidx/appcompat/widget/ActionBarContainer;
    invoke-virtual { p1, v1 }, Landroid/widget/FrameLayout;->setTranslationY(F)V
  .line 25
    iget-boolean p1, p0, Landroidx/appcompat/app/o;->q:Z
    if-eqz p1, :L5
    iget-object p1, p0, Landroidx/appcompat/app/o;->g:Landroid/view/View;
    if-eqz p1, :L5
  .line 26
    invoke-virtual { p1, v1 }, Landroid/view/View;->setTranslationY(F)V
  :L5
  .line 27
    iget-object p1, p0, Landroidx/appcompat/app/o;->z:Landroidx/core/view/a0;
    const/4 v0, 0
    invoke-interface { p1, v0 }, Landroidx/core/view/a0;->a(Landroid/view/View;)V
  :L6
  .line 28
    iget-object p1, p0, Landroidx/appcompat/app/o;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;
    if-eqz p1, :L7
  .line 29
    invoke-static { p1 }, Landroidx/core/view/v;->l0(Landroid/view/View;)V
  :L7
    return-void
  :L8
  .array-data 4
    0t 0t 0t 0t
    0t 0t 0t 0t
  .end array-data
.end method

.method public D()I
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/app/o;->e:Landroidx/appcompat/widget/b0;
    invoke-interface { v0 }, Landroidx/appcompat/widget/b0;->r()I
    move-result v0
    return v0
.end method

.method public G(Z)V
  .registers 3
    const/4 v0, 4
    if-eqz p1, :L0
    const/4 p1, 4
    goto :L1
  :L0
    const/4 p1, 0
  :L1
  .line 1
    invoke-virtual { p0, p1, v0 }, Landroidx/appcompat/app/o;->H(II)V
    return-void
.end method

.method public H(II)V
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/appcompat/app/o;->e:Landroidx/appcompat/widget/b0;
    invoke-interface { v0 }, Landroidx/appcompat/widget/b0;->j()I
    move-result v0
    and-int/lit8 v1, p2, 4
    if-eqz v1, :L0
    const/4 v1, 1
  .line 2
    iput-boolean v1, p0, Landroidx/appcompat/app/o;->i:Z
  :L0
  .line 3
    iget-object v1, p0, Landroidx/appcompat/app/o;->e:Landroidx/appcompat/widget/b0;
    and-int/2addr p1, p2
    xor-int/lit8 p2, p2, -1
    and-int/2addr p2, v0
    or-int/2addr p1, p2
    invoke-interface { v1, p1 }, Landroidx/appcompat/widget/b0;->x(I)V
    return-void
.end method

.method public I(F)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/app/o;->d:Landroidx/appcompat/widget/ActionBarContainer;
    invoke-static { v0, p1 }, Landroidx/core/view/v;->v0(Landroid/view/View;F)V
    return-void
.end method

.method public K(Z)V
  .registers 3
    if-eqz p1, :L1
  .line 1
    iget-object v0, p0, Landroidx/appcompat/app/o;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;
    invoke-virtual { v0 }, Landroidx/appcompat/widget/ActionBarOverlayLayout;->w()Z
    move-result v0
    if-eqz v0, :L0
    goto :L1
  :L0
  .line 2
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string v0, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
  :L1
  .line 3
    iput-boolean p1, p0, Landroidx/appcompat/app/o;->x:Z
  .line 4
    iget-object v0, p0, Landroidx/appcompat/app/o;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V
    return-void
.end method

.method public L(Z)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/app/o;->e:Landroidx/appcompat/widget/b0;
    invoke-interface { v0, p1 }, Landroidx/appcompat/widget/b0;->p(Z)V
    return-void
.end method

.method public a(Z)V
  .registers 2
  .line 1
    iput-boolean p1, p0, Landroidx/appcompat/app/o;->q:Z
    return-void
.end method

.method public b()V
  .registers 2
  .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/o;->s:Z
    if-eqz v0, :L0
    const/4 v0, 0
  .line 2
    iput-boolean v0, p0, Landroidx/appcompat/app/o;->s:Z
    const/4 v0, 1
  .line 3
    invoke-direct { p0, v0 }, Landroidx/appcompat/app/o;->O(Z)V
  :L0
    return-void
.end method

.method public c()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/app/o;->v:Lc/a/o/h;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Lc/a/o/h;->a()V
    const/4 v0, 0
  .line 3
    iput-object v0, p0, Landroidx/appcompat/app/o;->v:Lc/a/o/h;
  :L0
    return-void
.end method

.method public d(I)V
  .registers 2
  .line 1
    iput p1, p0, Landroidx/appcompat/app/o;->p:I
    return-void
.end method

.method public e()V
  .registers 2
  .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/o;->s:Z
    if-nez v0, :L0
    const/4 v0, 1
  .line 2
    iput-boolean v0, p0, Landroidx/appcompat/app/o;->s:Z
  .line 3
    invoke-direct { p0, v0 }, Landroidx/appcompat/app/o;->O(Z)V
  :L0
    return-void
.end method

.method public f()V
  .registers 1
    return-void
.end method

.method public h()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/app/o;->e:Landroidx/appcompat/widget/b0;
    if-eqz v0, :L0
    invoke-interface { v0 }, Landroidx/appcompat/widget/b0;->u()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Landroidx/appcompat/app/o;->e:Landroidx/appcompat/widget/b0;
    invoke-interface { v0 }, Landroidx/appcompat/widget/b0;->collapseActionView()V
    const/4 v0, 1
    return v0
  :L0
    const/4 v0, 0
    return v0
.end method

.method public i(Z)V
  .registers 5
  .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/o;->m:Z
    if-ne p1, v0, :L0
    return-void
  :L0
  .line 2
    iput-boolean p1, p0, Landroidx/appcompat/app/o;->m:Z
  .line 3
    iget-object v0, p0, Landroidx/appcompat/app/o;->n:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    const/4 v1, 0
  :L1
    if-ge v1, v0, :L2
  .line 4
    iget-object v2, p0, Landroidx/appcompat/app/o;->n:Ljava/util/ArrayList;
    invoke-virtual { v2, v1 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroidx/appcompat/app/a$b;
    invoke-interface { v2, p1 }, Landroidx/appcompat/app/a$b;->a(Z)V
    add-int/lit8 v1, v1, 1
    goto :L1
  :L2
    return-void
.end method

.method public j()I
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/app/o;->e:Landroidx/appcompat/widget/b0;
    invoke-interface { v0 }, Landroidx/appcompat/widget/b0;->j()I
    move-result v0
    return v0
.end method

.method public k()Landroid/content/Context;
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/appcompat/app/o;->b:Landroid/content/Context;
    if-nez v0, :L1
  .line 2
    new-instance v0, Landroid/util/TypedValue;
    invoke-direct { v0 }, Landroid/util/TypedValue;-><init>()V
  .line 3
    iget-object v1, p0, Landroidx/appcompat/app/o;->a:Landroid/content/Context;
    invoke-virtual { v1 }, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;
    move-result-object v1
  .line 4
    sget v2, Lc/a/a;->actionBarWidgetTheme:I
    const/4 v3, 1
    invoke-virtual { v1, v2, v0, v3 }, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z
  .line 5
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I
    if-eqz v0, :L0
  .line 6
    new-instance v1, Landroid/view/ContextThemeWrapper;
    iget-object v2, p0, Landroidx/appcompat/app/o;->a:Landroid/content/Context;
    invoke-direct { v1, v2, v0 }, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V
    iput-object v1, p0, Landroidx/appcompat/app/o;->b:Landroid/content/Context;
    goto :L1
  :L0
  .line 7
    iget-object v0, p0, Landroidx/appcompat/app/o;->a:Landroid/content/Context;
    iput-object v0, p0, Landroidx/appcompat/app/o;->b:Landroid/content/Context;
  :L1
  .line 8
    iget-object v0, p0, Landroidx/appcompat/app/o;->b:Landroid/content/Context;
    return-object v0
.end method

.method public l()V
  .registers 2
  .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/o;->r:Z
    if-nez v0, :L0
    const/4 v0, 1
  .line 2
    iput-boolean v0, p0, Landroidx/appcompat/app/o;->r:Z
    const/4 v0, 0
  .line 3
    invoke-direct { p0, v0 }, Landroidx/appcompat/app/o;->O(Z)V
  :L0
    return-void
.end method

.method public n(Landroid/content/res/Configuration;)V
  .registers 2
  .line 1
    iget-object p1, p0, Landroidx/appcompat/app/o;->a:Landroid/content/Context;
    invoke-static { p1 }, Lc/a/o/a;->b(Landroid/content/Context;)Lc/a/o/a;
    move-result-object p1
    invoke-virtual { p1 }, Lc/a/o/a;->g()Z
    move-result p1
    invoke-direct { p0, p1 }, Landroidx/appcompat/app/o;->J(Z)V
    return-void
.end method

.method public p(ILandroid/view/KeyEvent;)Z
  .registers 7
  .line 1
    iget-object v0, p0, Landroidx/appcompat/app/o;->j:Landroidx/appcompat/app/o$d;
    const/4 v1, 0
    if-nez v0, :L0
    return v1
  :L0
  .line 2
    invoke-virtual { v0 }, Landroidx/appcompat/app/o$d;->e()Landroid/view/Menu;
    move-result-object v0
    if-eqz v0, :L5
    if-eqz p2, :L1
  .line 3
    invoke-virtual { p2 }, Landroid/view/KeyEvent;->getDeviceId()I
    move-result v2
    goto :L2
  :L1
    const/4 v2, -1
  :L2
  .line 4
    invoke-static { v2 }, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;
    move-result-object v2
  .line 5
    invoke-virtual { v2 }, Landroid/view/KeyCharacterMap;->getKeyboardType()I
    move-result v2
    const/4 v3, 1
    if-eq v2, v3, :L3
    goto :L4
  :L3
    const/4 v3, 0
  :L4
    invoke-interface { v0, v3 }, Landroid/view/Menu;->setQwertyMode(Z)V
  .line 6
    invoke-interface { v0, p1, p2, v1 }, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z
    move-result p1
    return p1
  :L5
    return v1
.end method

.method public s(Z)V
  .registers 3
  .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/o;->i:Z
    if-nez v0, :L0
  .line 2
    invoke-virtual { p0, p1 }, Landroidx/appcompat/app/o;->G(Z)V
  :L0
    return-void
.end method

.method public t(Z)V
  .registers 3
    const/16 v0, 8
    if-eqz p1, :L0
    const/16 p1, 8
    goto :L1
  :L0
    const/4 p1, 0
  :L1
  .line 1
    invoke-virtual { p0, p1, v0 }, Landroidx/appcompat/app/o;->H(II)V
    return-void
.end method

.method public u(Z)V
  .registers 2
  .line 1
    iput-boolean p1, p0, Landroidx/appcompat/app/o;->w:Z
    if-nez p1, :L0
  .line 2
    iget-object p1, p0, Landroidx/appcompat/app/o;->v:Lc/a/o/h;
    if-eqz p1, :L0
  .line 3
    invoke-virtual { p1 }, Lc/a/o/h;->a()V
  :L0
    return-void
.end method

.method public v(Ljava/lang/CharSequence;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/app/o;->e:Landroidx/appcompat/widget/b0;
    invoke-interface { v0, p1 }, Landroidx/appcompat/widget/b0;->setWindowTitle(Ljava/lang/CharSequence;)V
    return-void
.end method

.method public w(Lc/a/o/b$a;)Lc/a/o/b;
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/app/o;->j:Landroidx/appcompat/app/o$d;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Landroidx/appcompat/app/o$d;->c()V
  :L0
  .line 3
    iget-object v0, p0, Landroidx/appcompat/app/o;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V
  .line 4
    iget-object v0, p0, Landroidx/appcompat/app/o;->f:Landroidx/appcompat/widget/ActionBarContextView;
    invoke-virtual { v0 }, Landroidx/appcompat/widget/ActionBarContextView;->k()V
  .line 5
    new-instance v0, Landroidx/appcompat/app/o$d;
    iget-object v1, p0, Landroidx/appcompat/app/o;->f:Landroidx/appcompat/widget/ActionBarContextView;
    invoke-virtual { v1 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object v1
    invoke-direct { v0, p0, v1, p1 }, Landroidx/appcompat/app/o$d;-><init>(Landroidx/appcompat/app/o;Landroid/content/Context;Lc/a/o/b$a;)V
  .line 6
    invoke-virtual { v0 }, Landroidx/appcompat/app/o$d;->t()Z
    move-result p1
    if-eqz p1, :L1
  .line 7
    iput-object v0, p0, Landroidx/appcompat/app/o;->j:Landroidx/appcompat/app/o$d;
  .line 8
    invoke-virtual { v0 }, Landroidx/appcompat/app/o$d;->k()V
  .line 9
    iget-object p1, p0, Landroidx/appcompat/app/o;->f:Landroidx/appcompat/widget/ActionBarContextView;
    invoke-virtual { p1, v0 }, Landroidx/appcompat/widget/ActionBarContextView;->h(Lc/a/o/b;)V
    const/4 p1, 1
  .line 10
    invoke-virtual { p0, p1 }, Landroidx/appcompat/app/o;->x(Z)V
  .line 11
    iget-object p1, p0, Landroidx/appcompat/app/o;->f:Landroidx/appcompat/widget/ActionBarContextView;
    const/16 v1, 32
    invoke-virtual { p1, v1 }, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V
    return-object v0
  :L1
    const/4 p1, 0
    return-object p1
.end method

.method public x(Z)V
  .registers 10
    if-eqz p1, :L0
  .line 1
    invoke-direct { p0 }, Landroidx/appcompat/app/o;->N()V
    goto :L1
  :L0
  .line 2
    invoke-direct { p0 }, Landroidx/appcompat/app/o;->E()V
  :L1
  .line 3
    invoke-direct { p0 }, Landroidx/appcompat/app/o;->M()Z
    move-result v0
    const/4 v1, 4
    const/16 v2, 8
    const/4 v3, 0
    if-eqz v0, :L4
    const-wide/16 v4, 100
    const-wide/16 v6, 200
    if-eqz p1, :L2
  .line 4
    iget-object p1, p0, Landroidx/appcompat/app/o;->e:Landroidx/appcompat/widget/b0;
    invoke-interface { p1, v1, v4, v5 }, Landroidx/appcompat/widget/b0;->s(IJ)Landroidx/core/view/z;
    move-result-object p1
  .line 5
    iget-object v0, p0, Landroidx/appcompat/app/o;->f:Landroidx/appcompat/widget/ActionBarContextView;
    invoke-virtual { v0, v3, v6, v7 }, Landroidx/appcompat/widget/ActionBarContextView;->f(IJ)Landroidx/core/view/z;
    move-result-object v0
    goto :L3
  :L2
  .line 6
    iget-object p1, p0, Landroidx/appcompat/app/o;->e:Landroidx/appcompat/widget/b0;
    invoke-interface { p1, v3, v6, v7 }, Landroidx/appcompat/widget/b0;->s(IJ)Landroidx/core/view/z;
    move-result-object v0
  .line 7
    iget-object p1, p0, Landroidx/appcompat/app/o;->f:Landroidx/appcompat/widget/ActionBarContextView;
    invoke-virtual { p1, v2, v4, v5 }, Landroidx/appcompat/widget/ActionBarContextView;->f(IJ)Landroidx/core/view/z;
    move-result-object p1
  :L3
  .line 8
    new-instance v1, Lc/a/o/h;
    invoke-direct { v1 }, Lc/a/o/h;-><init>()V
  .line 9
    invoke-virtual { v1, p1, v0 }, Lc/a/o/h;->d(Landroidx/core/view/z;Landroidx/core/view/z;)Lc/a/o/h;
  .line 10
    invoke-virtual { v1 }, Lc/a/o/h;->h()V
    goto :L6
  :L4
    if-eqz p1, :L5
  .line 11
    iget-object p1, p0, Landroidx/appcompat/app/o;->e:Landroidx/appcompat/widget/b0;
    invoke-interface { p1, v1 }, Landroidx/appcompat/widget/b0;->k(I)V
  .line 12
    iget-object p1, p0, Landroidx/appcompat/app/o;->f:Landroidx/appcompat/widget/ActionBarContextView;
    invoke-virtual { p1, v3 }, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V
    goto :L6
  :L5
  .line 13
    iget-object p1, p0, Landroidx/appcompat/app/o;->e:Landroidx/appcompat/widget/b0;
    invoke-interface { p1, v3 }, Landroidx/appcompat/widget/b0;->k(I)V
  .line 14
    iget-object p1, p0, Landroidx/appcompat/app/o;->f:Landroidx/appcompat/widget/ActionBarContextView;
    invoke-virtual { p1, v2 }, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V
  :L6
    return-void
.end method

.method z()V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/app/o;->l:Lc/a/o/b$a;
    if-eqz v0, :L0
  .line 2
    iget-object v1, p0, Landroidx/appcompat/app/o;->k:Lc/a/o/b;
    invoke-interface { v0, v1 }, Lc/a/o/b$a;->d(Lc/a/o/b;)V
    const/4 v0, 0
  .line 3
    iput-object v0, p0, Landroidx/appcompat/app/o;->k:Lc/a/o/b;
  .line 4
    iput-object v0, p0, Landroidx/appcompat/app/o;->l:Lc/a/o/b$a;
  :L0
    return-void
.end method
