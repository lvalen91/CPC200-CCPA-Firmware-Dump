.class public Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/coordinatorlayout/widget/CoordinatorLayout;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 9
  name = "f"
.end annotation

.field a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;

.field b:Z

.field public c:I

.field public d:I

.field public e:I

.field f:I

.field public g:I

.field public h:I

.field i:I

.field j:I

.field k:Landroid/view/View;

.field l:Landroid/view/View;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field final q:Landroid/graphics/Rect;

.method public constructor <init>(II)V
  .registers 3
  .line 1
    invoke-direct { p0, p1, p2 }, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V
    const/4 p1, 0
  .line 2
    iput-boolean p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->b:Z
  .line 3
    iput p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->c:I
  .line 4
    iput p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->d:I
    const/4 p2, -1
  .line 5
    iput p2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->e:I
  .line 6
    iput p2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->f:I
  .line 7
    iput p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->g:I
  .line 8
    iput p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->h:I
  .line 9
    new-instance p1, Landroid/graphics/Rect;
    invoke-direct { p1 }, Landroid/graphics/Rect;-><init>()V
    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->q:Landroid/graphics/Rect;
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 7
  .line 10
    invoke-direct { p0, p1, p2 }, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    const/4 v0, 0
  .line 11
    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->b:Z
  .line 12
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->c:I
  .line 13
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->d:I
    const/4 v1, -1
  .line 14
    iput v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->e:I
  .line 15
    iput v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->f:I
  .line 16
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->g:I
  .line 17
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->h:I
  .line 18
    new-instance v2, Landroid/graphics/Rect;
    invoke-direct { v2 }, Landroid/graphics/Rect;-><init>()V
    iput-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->q:Landroid/graphics/Rect;
  .line 19
    sget-object v2, Lc/f/c;->CoordinatorLayout_Layout:[I
    invoke-virtual { p1, p2, v2 }, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    move-result-object v2
  .line 20
    sget v3, Lc/f/c;->CoordinatorLayout_Layout_android_layout_gravity:I
    invoke-virtual { v2, v3, v0 }, Landroid/content/res/TypedArray;->getInteger(II)I
    move-result v3
    iput v3, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->c:I
  .line 21
    sget v3, Lc/f/c;->CoordinatorLayout_Layout_layout_anchor:I
    invoke-virtual { v2, v3, v1 }, Landroid/content/res/TypedArray;->getResourceId(II)I
    move-result v3
    iput v3, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->f:I
  .line 22
    sget v3, Lc/f/c;->CoordinatorLayout_Layout_layout_anchorGravity:I
    invoke-virtual { v2, v3, v0 }, Landroid/content/res/TypedArray;->getInteger(II)I
    move-result v3
    iput v3, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->d:I
  .line 23
    sget v3, Lc/f/c;->CoordinatorLayout_Layout_layout_keyline:I
    invoke-virtual { v2, v3, v1 }, Landroid/content/res/TypedArray;->getInteger(II)I
    move-result v1
    iput v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->e:I
  .line 24
    sget v1, Lc/f/c;->CoordinatorLayout_Layout_layout_insetEdge:I
    invoke-virtual { v2, v1, v0 }, Landroid/content/res/TypedArray;->getInt(II)I
    move-result v1
    iput v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->g:I
  .line 25
    sget v1, Lc/f/c;->CoordinatorLayout_Layout_layout_dodgeInsetEdges:I
    invoke-virtual { v2, v1, v0 }, Landroid/content/res/TypedArray;->getInt(II)I
    move-result v0
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->h:I
  .line 26
    sget v0, Lc/f/c;->CoordinatorLayout_Layout_layout_behavior:I
    invoke-virtual { v2, v0 }, Landroid/content/res/TypedArray;->hasValue(I)Z
    move-result v0
    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->b:Z
    if-eqz v0, :L0
  .line 27
    sget v0, Lc/f/c;->CoordinatorLayout_Layout_layout_behavior:I
    invoke-virtual { v2, v0 }, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
    move-result-object v0
    invoke-static { p1, p2, v0 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->K(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
    move-result-object p1
    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
  :L0
  .line 28
    invoke-virtual { v2 }, Landroid/content/res/TypedArray;->recycle()V
  .line 29
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
    if-eqz p1, :L1
  .line 30
    invoke-virtual { p1, p0 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->g(Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;)V
  :L1
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
  .registers 3
  .line 49
    invoke-direct { p0, p1 }, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V
    const/4 p1, 0
  .line 50
    iput-boolean p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->b:Z
  .line 51
    iput p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->c:I
  .line 52
    iput p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->d:I
    const/4 v0, -1
  .line 53
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->e:I
  .line 54
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->f:I
  .line 55
    iput p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->g:I
  .line 56
    iput p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->h:I
  .line 57
    new-instance p1, Landroid/graphics/Rect;
    invoke-direct { p1 }, Landroid/graphics/Rect;-><init>()V
    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->q:Landroid/graphics/Rect;
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
  .registers 3
  .line 40
    invoke-direct { p0, p1 }, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    const/4 p1, 0
  .line 41
    iput-boolean p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->b:Z
  .line 42
    iput p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->c:I
  .line 43
    iput p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->d:I
    const/4 v0, -1
  .line 44
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->e:I
  .line 45
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->f:I
  .line 46
    iput p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->g:I
  .line 47
    iput p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->h:I
  .line 48
    new-instance p1, Landroid/graphics/Rect;
    invoke-direct { p1 }, Landroid/graphics/Rect;-><init>()V
    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->q:Landroid/graphics/Rect;
    return-void
.end method

.method public constructor <init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;)V
  .registers 3
  .line 31
    invoke-direct { p0, p1 }, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    const/4 p1, 0
  .line 32
    iput-boolean p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->b:Z
  .line 33
    iput p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->c:I
  .line 34
    iput p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->d:I
    const/4 v0, -1
  .line 35
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->e:I
  .line 36
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->f:I
  .line 37
    iput p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->g:I
  .line 38
    iput p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->h:I
  .line 39
    new-instance p1, Landroid/graphics/Rect;
    invoke-direct { p1 }, Landroid/graphics/Rect;-><init>()V
    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->q:Landroid/graphics/Rect;
    return-void
.end method

.method private n(Landroid/view/View;Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V
  .registers 7
  .line 1
    iget v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->f:I
    invoke-virtual { p2, v0 }, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
    move-result-object v0
    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->k:Landroid/view/View;
    const/4 v1, 0
    if-eqz v0, :L7
    if-ne v0, p2, :L1
  .line 2
    invoke-virtual { p2 }, Landroid/view/ViewGroup;->isInEditMode()Z
    move-result p1
    if-eqz p1, :L0
  .line 3
    iput-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->l:Landroid/view/View;
    iput-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->k:Landroid/view/View;
    return-void
  :L0
  .line 4
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string p2, "View can not be anchored to the the parent CoordinatorLayout"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
  :L1
  .line 5
    invoke-virtual { v0 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v2
  :L2
    if-eq v2, p2, :L6
    if-eqz v2, :L6
    if-ne v2, p1, :L4
  .line 6
    invoke-virtual { p2 }, Landroid/view/ViewGroup;->isInEditMode()Z
    move-result p1
    if-eqz p1, :L3
  .line 7
    iput-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->l:Landroid/view/View;
    iput-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->k:Landroid/view/View;
    return-void
  :L3
  .line 8
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string p2, "Anchor must not be a descendant of the anchored view"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
  :L4
  .line 9
    instance-of v3, v2, Landroid/view/View;
    if-eqz v3, :L5
  .line 10
    move-object v0, v2
    check-cast v0, Landroid/view/View;
  :L5
  .line 11
    invoke-interface { v2 }, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;
    move-result-object v2
    goto :L2
  :L6
  .line 12
    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->l:Landroid/view/View;
    return-void
  :L7
  .line 13
    invoke-virtual { p2 }, Landroid/view/ViewGroup;->isInEditMode()Z
    move-result v0
    if-eqz v0, :L8
  .line 14
    iput-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->l:Landroid/view/View;
    iput-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->k:Landroid/view/View;
    return-void
  :L8
  .line 15
    new-instance v0, Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Could not find CoordinatorLayout descendant view with id "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 16
    invoke-virtual { p2 }, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;
    move-result-object p2
    iget v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->f:I
    invoke-virtual { p2, v2 }, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    move-result-object p2
    invoke-virtual { v1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p2, " to anchor view "
    invoke-virtual { v1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    goto :L10
  :L9
    throw v0
  :L10
    goto :L9
.end method

.method private s(Landroid/view/View;I)Z
  .registers 4
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object p1
    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;
  .line 2
    iget p1, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->g:I
    invoke-static { p1, p2 }, Landroidx/core/view/e;->b(II)I
    move-result p1
    if-eqz p1, :L0
  .line 3
    iget v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->h:I
  .line 4
    invoke-static { v0, p2 }, Landroidx/core/view/e;->b(II)I
    move-result p2
    and-int/2addr p2, p1
    if-ne p2, p1, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    return p1
.end method

.method private t(Landroid/view/View;Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Z
  .registers 7
  .line 1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->k:Landroid/view/View;
    invoke-virtual { v0 }, Landroid/view/View;->getId()I
    move-result v0
    iget v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->f:I
    const/4 v2, 0
    if-eq v0, v1, :L0
    return v2
  :L0
  .line 2
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->k:Landroid/view/View;
  .line 3
    invoke-virtual { v0 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v1
  :L1
    if-eq v1, p2, :L5
    if-eqz v1, :L4
    if-ne v1, p1, :L2
    goto :L4
  :L2
  .line 4
    instance-of v3, v1, Landroid/view/View;
    if-eqz v3, :L3
  .line 5
    move-object v0, v1
    check-cast v0, Landroid/view/View;
  :L3
  .line 6
    invoke-interface { v1 }, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;
    move-result-object v1
    goto :L1
  :L4
    const/4 p1, 0
  .line 7
    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->l:Landroid/view/View;
    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->k:Landroid/view/View;
    return v2
  :L5
  .line 8
    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->l:Landroid/view/View;
    const/4 p1, 1
    return p1
.end method

.method a()Z
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->k:Landroid/view/View;
    if-nez v0, :L0
    iget v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->f:I
    const/4 v1, -1
    if-eq v0, v1, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method b(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->l:Landroid/view/View;
    if-eq p3, v0, :L1
  .line 2
    invoke-static { p1 }, Landroidx/core/view/v;->C(Landroid/view/View;)I
    move-result v0
    invoke-direct { p0, p3, v0 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->s(Landroid/view/View;I)Z
    move-result v0
    if-nez v0, :L1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
    if-eqz v0, :L0
  .line 3
    invoke-virtual { v0, p1, p2, p3 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->e(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    move-result p1
    if-eqz p1, :L0
    goto :L1
  :L0
    const/4 p1, 0
    goto :L2
  :L1
    const/4 p1, 1
  :L2
    return p1
.end method

.method c()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
    if-nez v0, :L0
    const/4 v0, 0
  .line 2
    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->m:Z
  :L0
  .line 3
    iget-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->m:Z
    return v0
.end method

.method d(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/view/View;
  .registers 5
  .line 1
    iget v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->f:I
    const/4 v1, -1
    if-ne v0, v1, :L0
    const/4 p1, 0
  .line 2
    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->l:Landroid/view/View;
    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->k:Landroid/view/View;
    return-object p1
  :L0
  .line 3
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->k:Landroid/view/View;
    if-eqz v0, :L1
    invoke-direct { p0, p2, p1 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->t(Landroid/view/View;Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Z
    move-result v0
    if-nez v0, :L2
  :L1
  .line 4
    invoke-direct { p0, p2, p1 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->n(Landroid/view/View;Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V
  :L2
  .line 5
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->k:Landroid/view/View;
    return-object p1
.end method

.method public e()I
  .registers 2
  .line 1
    iget v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->f:I
    return v0
.end method

.method public f()Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
    return-object v0
.end method

.method g()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->p:Z
    return v0
.end method

.method h()Landroid/graphics/Rect;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->q:Landroid/graphics/Rect;
    return-object v0
.end method

.method i(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Z
  .registers 5
  .line 1
    iget-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->m:Z
    if-eqz v0, :L0
    const/4 p1, 1
    return p1
  :L0
  .line 2
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
    if-eqz v1, :L1
  .line 3
    invoke-virtual { v1, p1, p2 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Z
    move-result p1
    goto :L2
  :L1
    const/4 p1, 0
  :L2
    or-int/2addr p1, v0
    iput-boolean p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->m:Z
    return p1
.end method

.method j(I)Z
  .registers 3
    if-eqz p1, :L1
    const/4 v0, 1
    if-eq p1, v0, :L0
    const/4 p1, 0
    return p1
  :L0
  .line 1
    iget-boolean p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->o:Z
    return p1
  :L1
  .line 2
    iget-boolean p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->n:Z
    return p1
.end method

.method k()V
  .registers 2
    const/4 v0, 0
  .line 1
    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->p:Z
    return-void
.end method

.method l(I)V
  .registers 3
    const/4 v0, 0
  .line 1
    invoke-virtual { p0, p1, v0 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->r(IZ)V
    return-void
.end method

.method m()V
  .registers 2
    const/4 v0, 0
  .line 1
    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->m:Z
    return-void
.end method

.method public o(Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
    if-eq v0, p1, :L1
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->j()V
  :L0
  .line 3
    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
    const/4 v0, 1
  .line 4
    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->b:Z
    if-eqz p1, :L1
  .line 5
    invoke-virtual { p1, p0 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->g(Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;)V
  :L1
    return-void
.end method

.method p(Z)V
  .registers 2
  .line 1
    iput-boolean p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->p:Z
    return-void
.end method

.method q(Landroid/graphics/Rect;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->q:Landroid/graphics/Rect;
    invoke-virtual { v0, p1 }, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    return-void
.end method

.method r(IZ)V
  .registers 4
    if-eqz p1, :L1
    const/4 v0, 1
    if-eq p1, v0, :L0
    goto :L2
  :L0
  .line 1
    iput-boolean p2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->o:Z
    goto :L2
  :L1
  .line 2
    iput-boolean p2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->n:Z
  :L2
    return-void
.end method
