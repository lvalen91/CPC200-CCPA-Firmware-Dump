.class public Landroidx/coordinatorlayout/widget/CoordinatorLayout;
.super Landroid/view/ViewGroup;
.implements Landroidx/core/view/m;
.implements Landroidx/core/view/n;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/coordinatorlayout/widget/CoordinatorLayout$h;,
    Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;,
    Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;,
    Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;,
    Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;,
    Landroidx/coordinatorlayout/widget/CoordinatorLayout$d;,
    Landroidx/coordinatorlayout/widget/CoordinatorLayout$i;,
    Landroidx/coordinatorlayout/widget/CoordinatorLayout$g;
  }
.end annotation

.field final static v:Ljava/lang/String;

.field final static w:[Ljava/lang/Class;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "[",
      "Ljava/lang/Class<",
      "*>;"
    }
  .end annotation
.end field

.field final static x:Ljava/lang/ThreadLocal;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/ThreadLocal<",
      "Ljava/util/Map<",
      "Ljava/lang/String;",
      "Ljava/lang/reflect/Constructor<",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;",
      ">;>;>;"
    }
  .end annotation
.end field

.field final static y:Ljava/util/Comparator;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/Comparator<",
      "Landroid/view/View;",
      ">;"
    }
  .end annotation
.end field

.field private final static z:Lc/g/j/e;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Lc/g/j/e<",
      "Landroid/graphics/Rect;",
      ">;"
    }
  .end annotation
.end field

.field private final b:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List<",
      "Landroid/view/View;",
      ">;"
    }
  .end annotation
.end field

.field private final c:Landroidx/coordinatorlayout/widget/a;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Landroidx/coordinatorlayout/widget/a<",
      "Landroid/view/View;",
      ">;"
    }
  .end annotation
.end field

.field private final d:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List<",
      "Landroid/view/View;",
      ">;"
    }
  .end annotation
.end field

.field private final e:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List<",
      "Landroid/view/View;",
      ">;"
    }
  .end annotation
.end field

.field private f:Landroid/graphics/Paint;

.field private final g:[I

.field private final h:[I

.field private i:Z

.field private j:Z

.field private k:[I

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Landroidx/coordinatorlayout/widget/CoordinatorLayout$g;

.field private o:Z

.field private p:Landroidx/core/view/d0;

.field private q:Z

.field private r:Landroid/graphics/drawable/Drawable;

.field s:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field private t:Landroidx/core/view/q;

.field private final u:Landroidx/core/view/p;

.method static constructor <clinit>()V
  .registers 3
  .line 1
    const-class v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    invoke-virtual { v0 }, Ljava/lang/Class;->getPackage()Ljava/lang/Package;
    move-result-object v0
    const/4 v1, 0
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Ljava/lang/Package;->getName()Ljava/lang/String;
    move-result-object v0
    goto :L1
  :L0
    move-object v0, v1
  :L1
    sput-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->v:Ljava/lang/String;
  .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 21
    if-lt v0, v2, :L2
  .line 4
    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$i;
    invoke-direct { v0 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$i;-><init>()V
    sput-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->y:Ljava/util/Comparator;
    goto :L3
  :L2
  .line 5
    sput-object v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->y:Ljava/util/Comparator;
  :L3
    const/4 v0, 2
    new-array v0, v0, [Ljava/lang/Class;
    const/4 v1, 0
  .line 6
    const-class v2, Landroid/content/Context;
    aput-object v2, v0, v1
    const/4 v1, 1
    const-class v2, Landroid/util/AttributeSet;
    aput-object v2, v0, v1
    sput-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->w:[Ljava/lang/Class;
  .line 7
    new-instance v0, Ljava/lang/ThreadLocal;
    invoke-direct { v0 }, Ljava/lang/ThreadLocal;-><init>()V
    sput-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->x:Ljava/lang/ThreadLocal;
  .line 8
    new-instance v0, Lc/g/j/g;
    const/16 v1, 12
    invoke-direct { v0, v1 }, Lc/g/j/g;-><init>(I)V
    sput-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->z:Lc/g/j/e;
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 4
  .line 1
    sget v0, Lc/f/a;->coordinatorLayoutStyle:I
    invoke-direct { p0, p1, p2, v0 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .registers 13
  .line 2
    invoke-direct { p0, p1, p2, p3 }, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .line 3
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->b:Ljava/util/List;
  .line 4
    new-instance v0, Landroidx/coordinatorlayout/widget/a;
    invoke-direct { v0 }, Landroidx/coordinatorlayout/widget/a;-><init>()V
    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->c:Landroidx/coordinatorlayout/widget/a;
  .line 5
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->d:Ljava/util/List;
  .line 6
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->e:Ljava/util/List;
    const/4 v0, 2
    new-array v1, v0, [I
  .line 7
    iput-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->g:[I
    new-array v0, v0, [I
  .line 8
    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->h:[I
  .line 9
    new-instance v0, Landroidx/core/view/p;
    invoke-direct { v0, p0 }, Landroidx/core/view/p;-><init>(Landroid/view/ViewGroup;)V
    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->u:Landroidx/core/view/p;
    const/4 v0, 0
    if-nez p3, :L0
  .line 10
    sget-object v1, Lc/f/c;->CoordinatorLayout:[I
    sget v2, Lc/f/b;->Widget_Support_CoordinatorLayout:I
  .line 11
    invoke-virtual { p1, p2, v1, v0, v2 }, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    move-result-object v1
    goto :L1
  :L0
    sget-object v1, Lc/f/c;->CoordinatorLayout:[I
  .line 12
    invoke-virtual { p1, p2, v1, p3, v0 }, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    move-result-object v1
  :L1
  .line 13
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v3, 29
    if-lt v2, v3, :L3
    if-nez p3, :L2
  .line 14
    sget-object v4, Lc/f/c;->CoordinatorLayout:[I
    const/4 v7, 0
    sget v8, Lc/f/b;->Widget_Support_CoordinatorLayout:I
    move-object v2, p0
    move-object v3, p1
    move-object v5, p2
    move-object v6, v1
    invoke-virtual/range { v2 .. v8 }, Landroid/view/ViewGroup;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V
    goto :L3
  :L2
  .line 15
    sget-object v4, Lc/f/c;->CoordinatorLayout:[I
    const/4 v8, 0
    move-object v2, p0
    move-object v3, p1
    move-object v5, p2
    move-object v6, v1
    move v7, p3
    invoke-virtual/range { v2 .. v8 }, Landroid/view/ViewGroup;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V
  :L3
  .line 16
    sget p2, Lc/f/c;->CoordinatorLayout_keylines:I
    invoke-virtual { v1, p2, v0 }, Landroid/content/res/TypedArray;->getResourceId(II)I
    move-result p2
    if-eqz p2, :L5
  .line 17
    invoke-virtual { p1 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object p1
  .line 18
    invoke-virtual { p1, p2 }, Landroid/content/res/Resources;->getIntArray(I)[I
    move-result-object p2
    iput-object p2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->k:[I
  .line 19
    invoke-virtual { p1 }, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
    move-result-object p1
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F
  .line 20
    iget-object p2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->k:[I
    array-length p2, p2
  :L4
    if-ge v0, p2, :L5
  .line 21
    iget-object p3, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->k:[I
    aget v2, p3, v0
    int-to-float v2, v2
    mul-float v2, v2, p1
    float-to-int v2, v2
    aput v2, p3, v0
    add-int/lit8 v0, v0, 1
    goto :L4
  :L5
  .line 22
    sget p1, Lc/f/c;->CoordinatorLayout_statusBarBackground:I
    invoke-virtual { v1, p1 }, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    move-result-object p1
    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->r:Landroid/graphics/drawable/Drawable;
  .line 23
    invoke-virtual { v1 }, Landroid/content/res/TypedArray;->recycle()V
  .line 24
    invoke-direct { p0 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->X()V
  .line 25
    new-instance p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;
    invoke-direct { p1, p0 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V
    invoke-super { p0, p1 }, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
  .line 26
    invoke-static { p0 }, Landroidx/core/view/v;->A(Landroid/view/View;)I
    move-result p1
    if-nez p1, :L6
    const/4 p1, 1
  .line 27
    invoke-static { p0, p1 }, Landroidx/core/view/v;->x0(Landroid/view/View;I)V
  :L6
    return-void
.end method

.method private A(Landroid/view/View;)Z
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->c:Landroidx/coordinatorlayout/widget/a;
    invoke-virtual { v0, p1 }, Landroidx/coordinatorlayout/widget/a;->j(Ljava/lang/Object;)Z
    move-result p1
    return p1
.end method

.method private C(Landroid/view/View;I)V
  .registers 12
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;
  .line 2
    invoke-static { }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a()Landroid/graphics/Rect;
    move-result-object v7
  .line 3
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getPaddingLeft()I
    move-result v1
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I
    add-int/2addr v1, v2
  .line 4
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getPaddingTop()I
    move-result v2
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I
    add-int/2addr v2, v3
  .line 5
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getWidth()I
    move-result v3
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getPaddingRight()I
    move-result v4
    sub-int/2addr v3, v4
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I
    sub-int/2addr v3, v4
  .line 6
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getHeight()I
    move-result v4
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getPaddingBottom()I
    move-result v5
    sub-int/2addr v4, v5
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I
    sub-int/2addr v4, v5
  .line 7
    invoke-virtual { v7, v1, v2, v3, v4 }, Landroid/graphics/Rect;->set(IIII)V
  .line 8
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->p:Landroidx/core/view/d0;
    if-eqz v1, :L0
    invoke-static { p0 }, Landroidx/core/view/v;->z(Landroid/view/View;)Z
    move-result v1
    if-eqz v1, :L0
  .line 9
    invoke-static { p1 }, Landroidx/core/view/v;->z(Landroid/view/View;)Z
    move-result v1
    if-nez v1, :L0
  .line 10
    iget v1, v7, Landroid/graphics/Rect;->left:I
    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->p:Landroidx/core/view/d0;
    invoke-virtual { v2 }, Landroidx/core/view/d0;->g()I
    move-result v2
    add-int/2addr v1, v2
    iput v1, v7, Landroid/graphics/Rect;->left:I
  .line 11
    iget v1, v7, Landroid/graphics/Rect;->top:I
    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->p:Landroidx/core/view/d0;
    invoke-virtual { v2 }, Landroidx/core/view/d0;->i()I
    move-result v2
    add-int/2addr v1, v2
    iput v1, v7, Landroid/graphics/Rect;->top:I
  .line 12
    iget v1, v7, Landroid/graphics/Rect;->right:I
    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->p:Landroidx/core/view/d0;
    invoke-virtual { v2 }, Landroidx/core/view/d0;->h()I
    move-result v2
    sub-int/2addr v1, v2
    iput v1, v7, Landroid/graphics/Rect;->right:I
  .line 13
    iget v1, v7, Landroid/graphics/Rect;->bottom:I
    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->p:Landroidx/core/view/d0;
    invoke-virtual { v2 }, Landroidx/core/view/d0;->f()I
    move-result v2
    sub-int/2addr v1, v2
    iput v1, v7, Landroid/graphics/Rect;->bottom:I
  :L0
  .line 14
    invoke-static { }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a()Landroid/graphics/Rect;
    move-result-object v8
  .line 15
    iget v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->c:I
    invoke-static { v0 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->S(I)I
    move-result v1
    invoke-virtual { p1 }, Landroid/view/View;->getMeasuredWidth()I
    move-result v2
  .line 16
    invoke-virtual { p1 }, Landroid/view/View;->getMeasuredHeight()I
    move-result v3
    move-object v4, v7
    move-object v5, v8
    move v6, p2
  .line 17
    invoke-static/range { v1 .. v6 }, Landroidx/core/view/e;->a(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
  .line 18
    iget p2, v8, Landroid/graphics/Rect;->left:I
    iget v0, v8, Landroid/graphics/Rect;->top:I
    iget v1, v8, Landroid/graphics/Rect;->right:I
    iget v2, v8, Landroid/graphics/Rect;->bottom:I
    invoke-virtual { p1, p2, v0, v1, v2 }, Landroid/view/View;->layout(IIII)V
  .line 19
    invoke-static { v7 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->O(Landroid/graphics/Rect;)V
  .line 20
    invoke-static { v8 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->O(Landroid/graphics/Rect;)V
    return-void
.end method

.method private D(Landroid/view/View;Landroid/view/View;I)V
  .catchall { :L0 .. :L1 } :L2
  .registers 8
  .line 1
    invoke-static { }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a()Landroid/graphics/Rect;
    move-result-object v0
  .line 2
    invoke-static { }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a()Landroid/graphics/Rect;
    move-result-object v1
  :L0
  .line 3
    invoke-virtual { p0, p2, v0 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->t(Landroid/view/View;Landroid/graphics/Rect;)V
  .line 4
    invoke-virtual { p0, p1, p3, v0, v1 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->u(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
  .line 5
    iget p2, v1, Landroid/graphics/Rect;->left:I
    iget p3, v1, Landroid/graphics/Rect;->top:I
    iget v2, v1, Landroid/graphics/Rect;->right:I
    iget v3, v1, Landroid/graphics/Rect;->bottom:I
    invoke-virtual { p1, p2, p3, v2, v3 }, Landroid/view/View;->layout(IIII)V
  :L1
  .line 6
    invoke-static { v0 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->O(Landroid/graphics/Rect;)V
  .line 7
    invoke-static { v1 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->O(Landroid/graphics/Rect;)V
    return-void
  :L2
    move-exception p1
  .line 8
    invoke-static { v0 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->O(Landroid/graphics/Rect;)V
  .line 9
    invoke-static { v1 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->O(Landroid/graphics/Rect;)V
  .line 10
    throw p1
.end method

.method private E(Landroid/view/View;II)V
  .registers 12
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;
  .line 2
    iget v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->c:I
  .line 3
    invoke-static { v1 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->T(I)I
    move-result v1
  .line 4
    invoke-static { v1, p3 }, Landroidx/core/view/e;->b(II)I
    move-result v1
    and-int/lit8 v2, v1, 7
    and-int/lit8 v1, v1, 112
  .line 5
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getWidth()I
    move-result v3
  .line 6
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getHeight()I
    move-result v4
  .line 7
    invoke-virtual { p1 }, Landroid/view/View;->getMeasuredWidth()I
    move-result v5
  .line 8
    invoke-virtual { p1 }, Landroid/view/View;->getMeasuredHeight()I
    move-result v6
    const/4 v7, 1
    if-ne p3, v7, :L0
    sub-int p2, v3, p2
  :L0
  .line 9
    invoke-direct { p0, p2 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->w(I)I
    move-result p2
    sub-int/2addr p2, v5
    const/4 p3, 0
    if-eq v2, v7, :L2
    const/4 v7, 5
    if-eq v2, v7, :L1
    goto :L3
  :L1
    add-int/2addr p2, v5
    goto :L3
  :L2
  .line 10
    div-int/lit8 v2, v5, 2
    add-int/2addr p2, v2
  :L3
    const/16 v2, 16
    if-eq v1, v2, :L5
    const/16 v2, 80
    if-eq v1, v2, :L4
    goto :L6
  :L4
    add-int/lit8 p3, v6, 0
    goto :L6
  :L5
  .line 11
    div-int/lit8 v1, v6, 2
    add-int/2addr p3, v1
  :L6
  .line 12
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getPaddingLeft()I
    move-result v1
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I
    add-int/2addr v1, v2
  .line 13
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getPaddingRight()I
    move-result v2
    sub-int/2addr v3, v2
    sub-int/2addr v3, v5
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I
    sub-int/2addr v3, v2
  .line 14
    invoke-static { p2, v3 }, Ljava/lang/Math;->min(II)I
    move-result p2
  .line 15
    invoke-static { v1, p2 }, Ljava/lang/Math;->max(II)I
    move-result p2
  .line 16
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getPaddingTop()I
    move-result v1
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I
    add-int/2addr v1, v2
  .line 17
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getPaddingBottom()I
    move-result v2
    sub-int/2addr v4, v2
    sub-int/2addr v4, v6
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I
    sub-int/2addr v4, v0
  .line 18
    invoke-static { p3, v4 }, Ljava/lang/Math;->min(II)I
    move-result p3
  .line 19
    invoke-static { v1, p3 }, Ljava/lang/Math;->max(II)I
    move-result p3
    add-int/2addr v5, p2
    add-int/2addr v6, p3
  .line 20
    invoke-virtual { p1, p2, p3, v5, v6 }, Landroid/view/View;->layout(IIII)V
    return-void
.end method

.method private F(Landroid/view/View;Landroid/graphics/Rect;I)V
  .registers 12
  .line 1
    invoke-static { p1 }, Landroidx/core/view/v;->T(Landroid/view/View;)Z
    move-result v0
    if-nez v0, :L0
    return-void
  :L0
  .line 2
    invoke-virtual { p1 }, Landroid/view/View;->getWidth()I
    move-result v0
    if-lez v0, :L15
    invoke-virtual { p1 }, Landroid/view/View;->getHeight()I
    move-result v0
    if-gtz v0, :L1
    goto/16 :L15
  :L1
  .line 3
    invoke-virtual { p1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;
  .line 4
    invoke-virtual { v0 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->f()Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
    move-result-object v1
  .line 5
    invoke-static { }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a()Landroid/graphics/Rect;
    move-result-object v2
  .line 6
    invoke-static { }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a()Landroid/graphics/Rect;
    move-result-object v3
  .line 7
    invoke-virtual { p1 }, Landroid/view/View;->getLeft()I
    move-result v4
    invoke-virtual { p1 }, Landroid/view/View;->getTop()I
    move-result v5
    invoke-virtual { p1 }, Landroid/view/View;->getRight()I
    move-result v6
    invoke-virtual { p1 }, Landroid/view/View;->getBottom()I
    move-result v7
    invoke-virtual { v3, v4, v5, v6, v7 }, Landroid/graphics/Rect;->set(IIII)V
    if-eqz v1, :L3
  .line 8
    invoke-virtual { v1, p0, p1, v2 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->b(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;)Z
    move-result v1
    if-eqz v1, :L3
  .line 9
    invoke-virtual { v3, v2 }, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z
    move-result v1
    if-eqz v1, :L2
    goto :L4
  :L2
  .line 10
    new-instance p1, Ljava/lang/IllegalArgumentException;
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p3, "Rect should be within the child's bounds. Rect:"
    invoke-virtual { p2, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 11
    invoke-virtual { v2 }, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;
    move-result-object p3
    invoke-virtual { p2, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p3, " | Bounds:"
    invoke-virtual { p2, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 12
    invoke-virtual { v3 }, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;
    move-result-object p3
    invoke-virtual { p2, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
  :L3
  .line 13
    invoke-virtual { v2, v3 }, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
  :L4
  .line 14
    invoke-static { v3 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->O(Landroid/graphics/Rect;)V
  .line 15
    invoke-virtual { v2 }, Landroid/graphics/Rect;->isEmpty()Z
    move-result v1
    if-eqz v1, :L5
  .line 16
    invoke-static { v2 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->O(Landroid/graphics/Rect;)V
    return-void
  :L5
  .line 17
    iget v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->h:I
    invoke-static { v1, p3 }, Landroidx/core/view/e;->b(II)I
    move-result p3
    and-int/lit8 v1, p3, 48
    const/16 v3, 48
    const/4 v4, 1
    const/4 v5, 0
    if-ne v1, v3, :L6
  .line 18
    iget v1, v2, Landroid/graphics/Rect;->top:I
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I
    sub-int/2addr v1, v3
    iget v3, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->j:I
    sub-int/2addr v1, v3
  .line 19
    iget v3, p2, Landroid/graphics/Rect;->top:I
    if-ge v1, v3, :L6
    sub-int/2addr v3, v1
  .line 20
    invoke-direct { p0, p1, v3 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->V(Landroid/view/View;I)V
    const/4 v1, 1
    goto :L7
  :L6
    const/4 v1, 0
  :L7
    and-int/lit8 v3, p3, 80
    const/16 v6, 80
    if-ne v3, v6, :L8
  .line 21
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getHeight()I
    move-result v3
    iget v6, v2, Landroid/graphics/Rect;->bottom:I
    sub-int/2addr v3, v6
    iget v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I
    sub-int/2addr v3, v6
    iget v6, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->j:I
    add-int/2addr v3, v6
  .line 22
    iget v6, p2, Landroid/graphics/Rect;->bottom:I
    if-ge v3, v6, :L8
    sub-int/2addr v3, v6
  .line 23
    invoke-direct { p0, p1, v3 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->V(Landroid/view/View;I)V
    const/4 v1, 1
  :L8
    if-nez v1, :L9
  .line 24
    invoke-direct { p0, p1, v5 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->V(Landroid/view/View;I)V
  :L9
    and-int/lit8 v1, p3, 3
    const/4 v3, 3
    if-ne v1, v3, :L10
  .line 25
    iget v1, v2, Landroid/graphics/Rect;->left:I
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I
    sub-int/2addr v1, v3
    iget v3, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->i:I
    sub-int/2addr v1, v3
  .line 26
    iget v3, p2, Landroid/graphics/Rect;->left:I
    if-ge v1, v3, :L10
    sub-int/2addr v3, v1
  .line 27
    invoke-direct { p0, p1, v3 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->U(Landroid/view/View;I)V
    const/4 v1, 1
    goto :L11
  :L10
    const/4 v1, 0
  :L11
    const/4 v3, 5
    and-int/2addr p3, v3
    if-ne p3, v3, :L12
  .line 28
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getWidth()I
    move-result p3
    iget v3, v2, Landroid/graphics/Rect;->right:I
    sub-int/2addr p3, v3
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I
    sub-int/2addr p3, v3
    iget v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->i:I
    add-int/2addr p3, v0
  .line 29
    iget p2, p2, Landroid/graphics/Rect;->right:I
    if-ge p3, p2, :L12
    sub-int/2addr p3, p2
  .line 30
    invoke-direct { p0, p1, p3 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->U(Landroid/view/View;I)V
    goto :L13
  :L12
    move v4, v1
  :L13
    if-nez v4, :L14
  .line 31
    invoke-direct { p0, p1, v5 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->U(Landroid/view/View;I)V
  :L14
  .line 32
    invoke-static { v2 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->O(Landroid/graphics/Rect;)V
  :L15
    return-void
.end method

.method static K(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
  .catch Ljava/lang/Exception; { :L3 .. :L6 } :L7
  .registers 8
  .line 1
    invoke-static { p2 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    if-eqz v0, :L0
    const/4 p0, 0
    return-object p0
  :L0
    const-string v0, "."
  .line 2
    invoke-virtual { p2, v0 }, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :L1
  .line 3
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p0 }, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    goto :L3
  :L1
    const/16 v0, 46
  .line 4
    invoke-virtual { p2, v0 }, Ljava/lang/String;->indexOf(I)I
    move-result v1
    if-ltz v1, :L2
    goto :L3
  :L2
  .line 5
    sget-object v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->v:Ljava/lang/String;
    invoke-static { v1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v1
    if-nez v1, :L3
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    sget-object v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->v:Ljava/lang/String;
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
  :L3
  .line 6
    sget-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->x:Ljava/lang/ThreadLocal;
    invoke-virtual { v0 }, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/util/Map;
    if-nez v0, :L4
  .line 7
    new-instance v0, Ljava/util/HashMap;
    invoke-direct { v0 }, Ljava/util/HashMap;-><init>()V
  .line 8
    sget-object v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->x:Ljava/lang/ThreadLocal;
    invoke-virtual { v1, v0 }, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
  :L4
  .line 9
    invoke-interface { v0, p2 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/reflect/Constructor;
    const/4 v2, 1
    const/4 v3, 0
    if-nez v1, :L5
  .line 10
    invoke-virtual { p0 }, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;
    move-result-object v1
    invoke-static { p2, v3, v1 }, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    move-result-object v1
  .line 11
    sget-object v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->w:[Ljava/lang/Class;
    invoke-virtual { v1, v4 }, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    move-result-object v1
  .line 12
    invoke-virtual { v1, v2 }, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
  .line 13
    invoke-interface { v0, p2, v1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L5
    const/4 v0, 2
    new-array v0, v0, [Ljava/lang/Object;
    aput-object p0, v0, v3
    aput-object p1, v0, v2
  .line 14
    invoke-virtual { v1, v0 }, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p0
    check-cast p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
  :L6
    return-object p0
  :L7
    move-exception p0
  .line 15
    new-instance p1, Ljava/lang/RuntimeException;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Could not inflate Behavior subclass "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2, p0 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    throw p1
.end method

.method private L(Landroid/view/MotionEvent;I)Z
  .registers 26
    move-object/from16 v0, p0
    move-object/from16 v1, p1
    move/from16 v2, p2
  .line 1
    invoke-virtual/range { p1 .. p1 }, Landroid/view/MotionEvent;->getActionMasked()I
    move-result v3
  .line 2
    iget-object v4, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->d:Ljava/util/List;
  .line 3
    invoke-direct { v0, v4 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->z(Ljava/util/List;)V
  .line 4
    invoke-interface { v4 }, Ljava/util/List;->size()I
    move-result v5
    const/4 v6, 0
    const/4 v7, 0
    const/4 v8, 0
    const/4 v9, 0
    const/4 v10, 0
  :L0
    if-ge v8, v5, :L13
  .line 5
    invoke-interface { v4, v8 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v11
    check-cast v11, Landroid/view/View;
  .line 6
    invoke-virtual { v11 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v12
    check-cast v12, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;
  .line 7
    invoke-virtual { v12 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->f()Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
    move-result-object v13
    const/4 v14, 1
    if-nez v9, :L1
    if-eqz v10, :L5
  :L1
    if-eqz v3, :L5
    if-eqz v13, :L12
    if-nez v7, :L2
  .line 8
    invoke-static { }, Landroid/os/SystemClock;->uptimeMillis()J
    move-result-wide v17
    const/16 v19, 3
    const/16 v20, 0
    const/16 v21, 0
    const/16 v22, 0
    move-wide/from16 v15, v17
  .line 9
    invoke-static/range { v15 .. v22 }, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;
    move-result-object v7
  :L2
    if-eqz v2, :L4
    if-eq v2, v14, :L3
    goto :L12
  :L3
  .line 10
    invoke-virtual { v13, v0, v11, v7 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->D(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    goto :L12
  :L4
  .line 11
    invoke-virtual { v13, v0, v11, v7 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->k(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    goto :L12
  :L5
    if-nez v9, :L9
    if-eqz v13, :L9
    if-eqz v2, :L7
    if-eq v2, v14, :L6
    goto :L8
  :L6
  .line 12
    invoke-virtual { v13, v0, v11, v1 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->D(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    move-result v9
    goto :L8
  :L7
  .line 13
    invoke-virtual { v13, v0, v11, v1 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->k(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    move-result v9
  :L8
    if-eqz v9, :L9
  .line 14
    iput-object v11, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->l:Landroid/view/View;
  :L9
  .line 15
    invoke-virtual { v12 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->c()Z
    move-result v10
  .line 16
    invoke-virtual { v12, v0, v11 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->i(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Z
    move-result v11
    if-eqz v11, :L10
    if-nez v10, :L10
    const/4 v10, 1
    goto :L11
  :L10
    const/4 v10, 0
  :L11
    if-eqz v11, :L12
    if-nez v10, :L12
    goto :L13
  :L12
    add-int/lit8 v8, v8, 1
    goto :L0
  :L13
  .line 17
    invoke-interface { v4 }, Ljava/util/List;->clear()V
    return v9
.end method

.method private M()V
  .registers 9
  .line 1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->b:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->clear()V
  .line 2
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->c:Landroidx/coordinatorlayout/widget/a;
    invoke-virtual { v0 }, Landroidx/coordinatorlayout/widget/a;->c()V
  .line 3
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v0
    const/4 v1, 0
    const/4 v2, 0
  :L0
    if-ge v2, v0, :L6
  .line 4
    invoke-virtual { p0, v2 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v3
  .line 5
    invoke-virtual { p0, v3 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->y(Landroid/view/View;)Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;
    move-result-object v4
  .line 6
    invoke-virtual { v4, p0, v3 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->d(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/view/View;
  .line 7
    iget-object v5, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->c:Landroidx/coordinatorlayout/widget/a;
    invoke-virtual { v5, v3 }, Landroidx/coordinatorlayout/widget/a;->b(Ljava/lang/Object;)V
    const/4 v5, 0
  :L1
    if-ge v5, v0, :L5
    if-ne v5, v2, :L2
    goto :L4
  :L2
  .line 8
    invoke-virtual { p0, v5 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v6
  .line 9
    invoke-virtual { v4, p0, v3, v6 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->b(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    move-result v7
    if-eqz v7, :L4
  .line 10
    iget-object v7, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->c:Landroidx/coordinatorlayout/widget/a;
    invoke-virtual { v7, v6 }, Landroidx/coordinatorlayout/widget/a;->d(Ljava/lang/Object;)Z
    move-result v7
    if-nez v7, :L3
  .line 11
    iget-object v7, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->c:Landroidx/coordinatorlayout/widget/a;
    invoke-virtual { v7, v6 }, Landroidx/coordinatorlayout/widget/a;->b(Ljava/lang/Object;)V
  :L3
  .line 12
    iget-object v7, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->c:Landroidx/coordinatorlayout/widget/a;
    invoke-virtual { v7, v6, v3 }, Landroidx/coordinatorlayout/widget/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V
  :L4
    add-int/lit8 v5, v5, 1
    goto :L1
  :L5
    add-int/lit8 v2, v2, 1
    goto :L0
  :L6
  .line 13
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->b:Ljava/util/List;
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->c:Landroidx/coordinatorlayout/widget/a;
    invoke-virtual { v1 }, Landroidx/coordinatorlayout/widget/a;->i()Ljava/util/ArrayList;
    move-result-object v1
    invoke-interface { v0, v1 }, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
  .line 14
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->b:Ljava/util/List;
    invoke-static { v0 }, Ljava/util/Collections;->reverse(Ljava/util/List;)V
    return-void
.end method

.method private static O(Landroid/graphics/Rect;)V
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroid/graphics/Rect;->setEmpty()V
  .line 2
    sget-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->z:Lc/g/j/e;
    invoke-interface { v0, p0 }, Lc/g/j/e;->a(Ljava/lang/Object;)Z
    return-void
.end method

.method private Q(Z)V
  .registers 15
  .line 1
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v0
    const/4 v1, 0
    const/4 v2, 0
  :L0
    if-ge v2, v0, :L4
  .line 2
    invoke-virtual { p0, v2 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v3
  .line 3
    invoke-virtual { v3 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v4
    check-cast v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;
  .line 4
    invoke-virtual { v4 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->f()Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
    move-result-object v4
    if-eqz v4, :L3
  .line 5
    invoke-static { }, Landroid/os/SystemClock;->uptimeMillis()J
    move-result-wide v7
    const/4 v9, 3
    const/4 v10, 0
    const/4 v11, 0
    const/4 v12, 0
    move-wide v5, v7
  .line 6
    invoke-static/range { v5 .. v12 }, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;
    move-result-object v5
    if-eqz p1, :L1
  .line 7
    invoke-virtual { v4, p0, v3, v5 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->k(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    goto :L2
  :L1
  .line 8
    invoke-virtual { v4, p0, v3, v5 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->D(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
  :L2
  .line 9
    invoke-virtual { v5 }, Landroid/view/MotionEvent;->recycle()V
  :L3
    add-int/lit8 v2, v2, 1
    goto :L0
  :L4
    const/4 p1, 0
  :L5
    if-ge p1, v0, :L6
  .line 10
    invoke-virtual { p0, p1 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v2
  .line 11
    invoke-virtual { v2 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v2
    check-cast v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;
  .line 12
    invoke-virtual { v2 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->m()V
    add-int/lit8 p1, p1, 1
    goto :L5
  :L6
    const/4 p1, 0
  .line 13
    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->l:Landroid/view/View;
  .line 14
    iput-boolean v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->i:Z
    return-void
.end method

.method private static R(I)I
  .registers 1
    if-nez p0, :L0
    const/16 p0, 17
  :L0
    return p0
.end method

.method private static S(I)I
  .registers 2
    and-int/lit8 v0, p0, 7
    if-nez v0, :L0
    const v0, 8388611
    or-int/2addr p0, v0
  :L0
    and-int/lit8 v0, p0, 112
    if-nez v0, :L1
    or-int/lit8 p0, p0, 48
  :L1
    return p0
.end method

.method private static T(I)I
  .registers 1
    if-nez p0, :L0
    const p0, 8388661
  :L0
    return p0
.end method

.method private U(Landroid/view/View;I)V
  .registers 5
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;
  .line 2
    iget v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->i:I
    if-eq v1, p2, :L0
    sub-int v1, p2, v1
  .line 3
    invoke-static { p1, v1 }, Landroidx/core/view/v;->Y(Landroid/view/View;I)V
  .line 4
    iput p2, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->i:I
  :L0
    return-void
.end method

.method private V(Landroid/view/View;I)V
  .registers 5
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;
  .line 2
    iget v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->j:I
    if-eq v1, p2, :L0
    sub-int v1, p2, v1
  .line 3
    invoke-static { p1, v1 }, Landroidx/core/view/v;->Z(Landroid/view/View;I)V
  .line 4
    iput p2, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->j:I
  :L0
    return-void
.end method

.method private X()V
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-ge v0, v1, :L0
    return-void
  :L0
  .line 2
    invoke-static { p0 }, Landroidx/core/view/v;->z(Landroid/view/View;)Z
    move-result v0
    if-eqz v0, :L2
  .line 3
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->t:Landroidx/core/view/q;
    if-nez v0, :L1
  .line 4
    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$a;
    invoke-direct { v0, p0 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$a;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V
    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->t:Landroidx/core/view/q;
  :L1
  .line 5
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->t:Landroidx/core/view/q;
    invoke-static { p0, v0 }, Landroidx/core/view/v;->z0(Landroid/view/View;Landroidx/core/view/q;)V
    const/16 v0, 1280
  .line 6
    invoke-virtual { p0, v0 }, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V
    goto :L3
  :L2
    const/4 v0, 0
  .line 7
    invoke-static { p0, v0 }, Landroidx/core/view/v;->z0(Landroid/view/View;Landroidx/core/view/q;)V
  :L3
    return-void
.end method

.method private static a()Landroid/graphics/Rect;
  .registers 1
  .line 1
    sget-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->z:Lc/g/j/e;
    invoke-interface { v0 }, Lc/g/j/e;->b()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/graphics/Rect;
    if-nez v0, :L0
  .line 2
    new-instance v0, Landroid/graphics/Rect;
    invoke-direct { v0 }, Landroid/graphics/Rect;-><init>()V
  :L0
    return-object v0
.end method

.method private static c(III)I
  .registers 3
    if-ge p0, p1, :L0
    return p1
  :L0
    if-le p0, p2, :L1
    return p2
  :L1
    return p0
.end method

.method private d(Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;Landroid/graphics/Rect;II)V
  .registers 10
  .line 1
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getWidth()I
    move-result v0
  .line 2
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getHeight()I
    move-result v1
  .line 3
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getPaddingLeft()I
    move-result v2
    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I
    add-int/2addr v2, v3
    iget v3, p2, Landroid/graphics/Rect;->left:I
  .line 4
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getPaddingRight()I
    move-result v4
    sub-int/2addr v0, v4
    sub-int/2addr v0, p3
    iget v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I
    sub-int/2addr v0, v4
  .line 5
    invoke-static { v3, v0 }, Ljava/lang/Math;->min(II)I
    move-result v0
  .line 6
    invoke-static { v2, v0 }, Ljava/lang/Math;->max(II)I
    move-result v0
  .line 7
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getPaddingTop()I
    move-result v2
    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I
    add-int/2addr v2, v3
    iget v3, p2, Landroid/graphics/Rect;->top:I
  .line 8
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getPaddingBottom()I
    move-result v4
    sub-int/2addr v1, v4
    sub-int/2addr v1, p4
    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I
    sub-int/2addr v1, p1
  .line 9
    invoke-static { v3, v1 }, Ljava/lang/Math;->min(II)I
    move-result p1
  .line 10
    invoke-static { v2, p1 }, Ljava/lang/Math;->max(II)I
    move-result p1
    add-int/2addr p3, v0
    add-int/2addr p4, p1
  .line 11
    invoke-virtual { p2, v0, p1, p3, p4 }, Landroid/graphics/Rect;->set(IIII)V
    return-void
.end method

.method private e(Landroidx/core/view/d0;)Landroidx/core/view/d0;
  .registers 6
  .line 1
    invoke-virtual { p1 }, Landroidx/core/view/d0;->l()Z
    move-result v0
    if-eqz v0, :L0
    return-object p1
  :L0
    const/4 v0, 0
  .line 2
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v1
  :L1
    if-ge v0, v1, :L3
  .line 3
    invoke-virtual { p0, v0 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v2
  .line 4
    invoke-static { v2 }, Landroidx/core/view/v;->z(Landroid/view/View;)Z
    move-result v3
    if-eqz v3, :L2
  .line 5
    invoke-virtual { v2 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v3
    check-cast v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;
  .line 6
    invoke-virtual { v3 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->f()Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
    move-result-object v3
    if-eqz v3, :L2
  .line 7
    invoke-virtual { v3, p0, v2, p1 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->f(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroidx/core/view/d0;)Landroidx/core/view/d0;
  .line 8
    invoke-virtual { p1 }, Landroidx/core/view/d0;->l()Z
    move-result v2
    if-eqz v2, :L2
    goto :L3
  :L2
    add-int/lit8 v0, v0, 1
    goto :L1
  :L3
    return-object p1
.end method

.method private v(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;II)V
  .registers 13
  .line 1
    iget p1, p5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->c:I
  .line 2
    invoke-static { p1 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->R(I)I
    move-result p1
  .line 3
    invoke-static { p1, p2 }, Landroidx/core/view/e;->b(II)I
    move-result p1
  .line 4
    iget p5, p5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->d:I
  .line 5
    invoke-static { p5 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->S(I)I
    move-result p5
  .line 6
    invoke-static { p5, p2 }, Landroidx/core/view/e;->b(II)I
    move-result p2
    and-int/lit8 p5, p1, 7
    and-int/lit8 p1, p1, 112
    and-int/lit8 v0, p2, 7
    and-int/lit8 p2, p2, 112
    const/4 v1, 5
    const/4 v2, 1
    if-eq v0, v2, :L1
    if-eq v0, v1, :L0
  .line 7
    iget v0, p3, Landroid/graphics/Rect;->left:I
    goto :L2
  :L0
  .line 8
    iget v0, p3, Landroid/graphics/Rect;->right:I
    goto :L2
  :L1
  .line 9
    iget v0, p3, Landroid/graphics/Rect;->left:I
    invoke-virtual { p3 }, Landroid/graphics/Rect;->width()I
    move-result v3
    div-int/lit8 v3, v3, 2
    add-int/2addr v0, v3
  :L2
    const/16 v3, 80
    const/16 v4, 16
    if-eq p2, v4, :L4
    if-eq p2, v3, :L3
  .line 10
    iget p2, p3, Landroid/graphics/Rect;->top:I
    goto :L5
  :L3
  .line 11
    iget p2, p3, Landroid/graphics/Rect;->bottom:I
    goto :L5
  :L4
  .line 12
    iget p2, p3, Landroid/graphics/Rect;->top:I
    invoke-virtual { p3 }, Landroid/graphics/Rect;->height()I
    move-result p3
    div-int/lit8 p3, p3, 2
    add-int/2addr p2, p3
  :L5
    if-eq p5, v2, :L6
    if-eq p5, v1, :L7
    sub-int/2addr v0, p6
    goto :L7
  :L6
  .line 13
    div-int/lit8 p3, p6, 2
    sub-int/2addr v0, p3
  :L7
    if-eq p1, v4, :L8
    if-eq p1, v3, :L9
    sub-int/2addr p2, p7
    goto :L9
  :L8
  .line 14
    div-int/lit8 p1, p7, 2
    sub-int/2addr p2, p1
  :L9
    add-int/2addr p6, v0
    add-int/2addr p7, p2
  .line 15
    invoke-virtual { p4, v0, p2, p6, p7 }, Landroid/graphics/Rect;->set(IIII)V
    return-void
.end method

.method private w(I)I
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->k:[I
    const/4 v1, 0
    if-nez v0, :L0
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "No keylines defined for "
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v2, " - attempted index lookup "
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    return v1
  :L0
    if-ltz p1, :L2
  .line 3
    array-length v2, v0
    if-lt p1, v2, :L1
    goto :L2
  :L1
  .line 4
    aget p1, v0, p1
    return p1
  :L2
  .line 5
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Keyline index "
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p1, " out of range for "
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    return v1
.end method

.method private z(Ljava/util/List;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/List<",
      "Landroid/view/View;",
      ">;)V"
    }
  .end annotation
  .registers 6
  .line 1
    invoke-interface { p1 }, Ljava/util/List;->clear()V
  .line 2
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z
    move-result v0
  .line 3
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v1
    add-int/lit8 v2, v1, -1
  :L0
    if-ltz v2, :L3
    if-eqz v0, :L1
  .line 4
    invoke-virtual { p0, v1, v2 }, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I
    move-result v3
    goto :L2
  :L1
    move v3, v2
  :L2
  .line 5
    invoke-virtual { p0, v3 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v3
  .line 6
    invoke-interface { p1, v3 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    add-int/lit8 v2, v2, -1
    goto :L0
  :L3
  .line 7
    sget-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->y:Ljava/util/Comparator;
    if-eqz v0, :L4
  .line 8
    invoke-static { p1, v0 }, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
  :L4
    return-void
.end method

.method public B(Landroid/view/View;II)Z
  .catchall { :L0 .. :L1 } :L2
  .registers 5
  .line 1
    invoke-static { }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a()Landroid/graphics/Rect;
    move-result-object v0
  .line 2
    invoke-virtual { p0, p1, v0 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->t(Landroid/view/View;Landroid/graphics/Rect;)V
  :L0
  .line 3
    invoke-virtual { v0, p2, p3 }, Landroid/graphics/Rect;->contains(II)Z
    move-result p1
  :L1
  .line 4
    invoke-static { v0 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->O(Landroid/graphics/Rect;)V
    return p1
  :L2
    move-exception p1
    invoke-static { v0 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->O(Landroid/graphics/Rect;)V
  .line 5
    throw p1
.end method

.method G(Landroid/view/View;I)V
  .registers 19
    move-object/from16 v8, p0
    move-object/from16 v9, p1
  .line 1
    invoke-virtual/range { p1 .. p1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
    move-object v10, v0
    check-cast v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;
  .line 2
    iget-object v0, v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->k:Landroid/view/View;
    if-eqz v0, :L5
  .line 3
    invoke-static { }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a()Landroid/graphics/Rect;
    move-result-object v11
  .line 4
    invoke-static { }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a()Landroid/graphics/Rect;
    move-result-object v12
  .line 5
    invoke-static { }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a()Landroid/graphics/Rect;
    move-result-object v13
  .line 6
    iget-object v0, v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->k:Landroid/view/View;
    invoke-virtual { v8, v0, v11 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->t(Landroid/view/View;Landroid/graphics/Rect;)V
    const/4 v14, 0
  .line 7
    invoke-virtual { v8, v9, v14, v12 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->q(Landroid/view/View;ZLandroid/graphics/Rect;)V
  .line 8
    invoke-virtual/range { p1 .. p1 }, Landroid/view/View;->getMeasuredWidth()I
    move-result v15
  .line 9
    invoke-virtual/range { p1 .. p1 }, Landroid/view/View;->getMeasuredHeight()I
    move-result v7
    move-object/from16 v0, p0
    move-object/from16 v1, p1
    move/from16 v2, p2
    move-object v3, v11
    move-object v4, v13
    move-object v5, v10
    move v6, v15
    move/from16 p2, v7
  .line 10
    invoke-direct/range { v0 .. v7 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->v(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;II)V
  .line 11
    iget v0, v13, Landroid/graphics/Rect;->left:I
    iget v1, v12, Landroid/graphics/Rect;->left:I
    if-ne v0, v1, :L0
    iget v0, v13, Landroid/graphics/Rect;->top:I
    iget v1, v12, Landroid/graphics/Rect;->top:I
    if-eq v0, v1, :L1
  :L0
    const/4 v14, 1
  :L1
    move/from16 v0, p2
  .line 12
    invoke-direct { v8, v10, v13, v15, v0 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->d(Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;Landroid/graphics/Rect;II)V
  .line 13
    iget v0, v13, Landroid/graphics/Rect;->left:I
    iget v1, v12, Landroid/graphics/Rect;->left:I
    sub-int/2addr v0, v1
  .line 14
    iget v1, v13, Landroid/graphics/Rect;->top:I
    iget v2, v12, Landroid/graphics/Rect;->top:I
    sub-int/2addr v1, v2
    if-eqz v0, :L2
  .line 15
    invoke-static { v9, v0 }, Landroidx/core/view/v;->Y(Landroid/view/View;I)V
  :L2
    if-eqz v1, :L3
  .line 16
    invoke-static { v9, v1 }, Landroidx/core/view/v;->Z(Landroid/view/View;I)V
  :L3
    if-eqz v14, :L4
  .line 17
    invoke-virtual { v10 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->f()Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
    move-result-object v0
    if-eqz v0, :L4
  .line 18
    iget-object v1, v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->k:Landroid/view/View;
    invoke-virtual { v0, v8, v9, v1 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->h(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
  :L4
  .line 19
    invoke-static { v11 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->O(Landroid/graphics/Rect;)V
  .line 20
    invoke-static { v12 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->O(Landroid/graphics/Rect;)V
  .line 21
    invoke-static { v13 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->O(Landroid/graphics/Rect;)V
  :L5
    return-void
.end method

.method final H(I)V
  .registers 19
    move-object/from16 v0, p0
    move/from16 v1, p1
  .line 1
    invoke-static/range { p0 .. p0 }, Landroidx/core/view/v;->C(Landroid/view/View;)I
    move-result v2
  .line 2
    iget-object v3, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->b:Ljava/util/List;
    invoke-interface { v3 }, Ljava/util/List;->size()I
    move-result v3
  .line 3
    invoke-static { }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a()Landroid/graphics/Rect;
    move-result-object v4
  .line 4
    invoke-static { }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a()Landroid/graphics/Rect;
    move-result-object v5
  .line 5
    invoke-static { }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a()Landroid/graphics/Rect;
    move-result-object v6
    const/4 v7, 0
    const/4 v8, 0
  :L0
    if-ge v8, v3, :L20
  .line 6
    iget-object v9, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->b:Ljava/util/List;
    invoke-interface { v9, v8 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v9
    check-cast v9, Landroid/view/View;
  .line 7
    invoke-virtual { v9 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v10
    check-cast v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;
    if-nez v1, :L1
  .line 8
    invoke-virtual { v9 }, Landroid/view/View;->getVisibility()I
    move-result v11
    const/16 v12, 8
    if-ne v11, v12, :L1
    goto/16 :L19
  :L1
    const/4 v11, 0
  :L2
    if-ge v11, v8, :L4
  .line 9
    iget-object v12, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->b:Ljava/util/List;
    invoke-interface { v12, v11 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v12
    check-cast v12, Landroid/view/View;
  .line 10
    iget-object v13, v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->l:Landroid/view/View;
    if-ne v13, v12, :L3
  .line 11
    invoke-virtual { v0, v9, v2 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->G(Landroid/view/View;I)V
  :L3
    add-int/lit8 v11, v11, 1
    goto :L2
  :L4
    const/4 v11, 1
  .line 12
    invoke-virtual { v0, v9, v11, v5 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->q(Landroid/view/View;ZLandroid/graphics/Rect;)V
  .line 13
    iget v12, v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->g:I
    if-eqz v12, :L10
    invoke-virtual { v5 }, Landroid/graphics/Rect;->isEmpty()Z
    move-result v12
    if-nez v12, :L10
  .line 14
    iget v12, v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->g:I
    invoke-static { v12, v2 }, Landroidx/core/view/e;->b(II)I
    move-result v12
    and-int/lit8 v13, v12, 112
    const/16 v14, 48
    if-eq v13, v14, :L6
    const/16 v14, 80
    if-eq v13, v14, :L5
    goto :L7
  :L5
  .line 15
    iget v13, v4, Landroid/graphics/Rect;->bottom:I
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getHeight()I
    move-result v14
    iget v15, v5, Landroid/graphics/Rect;->top:I
    sub-int/2addr v14, v15
    invoke-static { v13, v14 }, Ljava/lang/Math;->max(II)I
    move-result v13
    iput v13, v4, Landroid/graphics/Rect;->bottom:I
    goto :L7
  :L6
  .line 16
    iget v13, v4, Landroid/graphics/Rect;->top:I
    iget v14, v5, Landroid/graphics/Rect;->bottom:I
    invoke-static { v13, v14 }, Ljava/lang/Math;->max(II)I
    move-result v13
    iput v13, v4, Landroid/graphics/Rect;->top:I
  :L7
    and-int/lit8 v12, v12, 7
    const/4 v13, 3
    if-eq v12, v13, :L9
    const/4 v13, 5
    if-eq v12, v13, :L8
    goto :L10
  :L8
  .line 17
    iget v12, v4, Landroid/graphics/Rect;->right:I
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getWidth()I
    move-result v13
    iget v14, v5, Landroid/graphics/Rect;->left:I
    sub-int/2addr v13, v14
    invoke-static { v12, v13 }, Ljava/lang/Math;->max(II)I
    move-result v12
    iput v12, v4, Landroid/graphics/Rect;->right:I
    goto :L10
  :L9
  .line 18
    iget v12, v4, Landroid/graphics/Rect;->left:I
    iget v13, v5, Landroid/graphics/Rect;->right:I
    invoke-static { v12, v13 }, Ljava/lang/Math;->max(II)I
    move-result v12
    iput v12, v4, Landroid/graphics/Rect;->left:I
  :L10
  .line 19
    iget v10, v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->h:I
    if-eqz v10, :L11
    invoke-virtual { v9 }, Landroid/view/View;->getVisibility()I
    move-result v10
    if-nez v10, :L11
  .line 20
    invoke-direct { v0, v9, v4, v2 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->F(Landroid/view/View;Landroid/graphics/Rect;I)V
  :L11
    const/4 v10, 2
    if-eq v1, v10, :L13
  .line 21
    invoke-virtual { v0, v9, v6 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->x(Landroid/view/View;Landroid/graphics/Rect;)V
  .line 22
    invoke-virtual { v6, v5 }, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z
    move-result v12
    if-eqz v12, :L12
    goto :L19
  :L12
  .line 23
    invoke-virtual { v0, v9, v5 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->N(Landroid/view/View;Landroid/graphics/Rect;)V
  :L13
    add-int/lit8 v12, v8, 1
  :L14
    if-ge v12, v3, :L19
  .line 24
    iget-object v13, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->b:Ljava/util/List;
    invoke-interface { v13, v12 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v13
    check-cast v13, Landroid/view/View;
  .line 25
    invoke-virtual { v13 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v14
    check-cast v14, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;
  .line 26
    invoke-virtual { v14 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->f()Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
    move-result-object v15
    if-eqz v15, :L18
  .line 27
    invoke-virtual { v15, v0, v13, v9 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->e(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    move-result v16
    if-eqz v16, :L18
    if-nez v1, :L15
  .line 28
    invoke-virtual { v14 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->g()Z
    move-result v16
    if-eqz v16, :L15
  .line 29
    invoke-virtual { v14 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->k()V
    goto :L18
  :L15
    if-eq v1, v10, :L16
  .line 30
    invoke-virtual { v15, v0, v13, v9 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->h(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    move-result v13
    goto :L17
  :L16
  .line 31
    invoke-virtual { v15, v0, v13, v9 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->i(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    const/4 v13, 1
  :L17
    if-ne v1, v11, :L18
  .line 32
    invoke-virtual { v14, v13 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->p(Z)V
  :L18
    add-int/lit8 v12, v12, 1
    goto :L14
  :L19
    add-int/lit8 v8, v8, 1
    goto/16 :L0
  :L20
  .line 33
    invoke-static { v4 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->O(Landroid/graphics/Rect;)V
  .line 34
    invoke-static { v5 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->O(Landroid/graphics/Rect;)V
  .line 35
    invoke-static { v6 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->O(Landroid/graphics/Rect;)V
    return-void
.end method

.method public I(Landroid/view/View;I)V
  .registers 5
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;
  .line 2
    invoke-virtual { v0 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->a()Z
    move-result v1
    if-nez v1, :L3
  .line 3
    iget-object v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->k:Landroid/view/View;
    if-eqz v1, :L0
  .line 4
    invoke-direct { p0, p1, v1, p2 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->D(Landroid/view/View;Landroid/view/View;I)V
    goto :L2
  :L0
  .line 5
    iget v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->e:I
    if-ltz v0, :L1
  .line 6
    invoke-direct { p0, p1, v0, p2 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->E(Landroid/view/View;II)V
    goto :L2
  :L1
  .line 7
    invoke-direct { p0, p1, p2 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->C(Landroid/view/View;I)V
  :L2
    return-void
  :L3
  .line 8
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string p2, "An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete."
    invoke-direct { p1, p2 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public J(Landroid/view/View;IIII)V
  .registers 6
  .line 1
    invoke-virtual/range { p0 .. p5 }, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V
    return-void
.end method

.method N(Landroid/view/View;Landroid/graphics/Rect;)V
  .registers 3
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object p1
    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;
  .line 2
    invoke-virtual { p1, p2 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->q(Landroid/graphics/Rect;)V
    return-void
.end method

.method P()V
  .registers 3
  .line 1
    iget-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->j:Z
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->n:Landroidx/coordinatorlayout/widget/CoordinatorLayout$g;
    if-eqz v0, :L0
  .line 3
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
    move-result-object v0
  .line 4
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->n:Landroidx/coordinatorlayout/widget/CoordinatorLayout$g;
    invoke-virtual { v0, v1 }, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
  :L0
    const/4 v0, 0
  .line 5
    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->o:Z
    return-void
.end method

.method final W(Landroidx/core/view/d0;)Landroidx/core/view/d0;
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->p:Landroidx/core/view/d0;
    invoke-static { v0, p1 }, Lc/g/j/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L4
  .line 2
    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->p:Landroidx/core/view/d0;
    const/4 v0, 1
    const/4 v1, 0
    if-eqz p1, :L0
  .line 3
    invoke-virtual { p1 }, Landroidx/core/view/d0;->i()I
    move-result v2
    if-lez v2, :L0
    const/4 v2, 1
    goto :L1
  :L0
    const/4 v2, 0
  :L1
    iput-boolean v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->q:Z
    if-nez v2, :L2
  .line 4
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;
    move-result-object v2
    if-nez v2, :L2
    goto :L3
  :L2
    const/4 v0, 0
  :L3
    invoke-virtual { p0, v0 }, Landroid/view/ViewGroup;->setWillNotDraw(Z)V
  .line 5
    invoke-direct { p0, p1 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->e(Landroidx/core/view/d0;)Landroidx/core/view/d0;
  .line 6
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->requestLayout()V
  :L4
    return-object p1
.end method

.method b()V
  .registers 3
  .line 1
    iget-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->j:Z
    if-eqz v0, :L1
  .line 2
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->n:Landroidx/coordinatorlayout/widget/CoordinatorLayout$g;
    if-nez v0, :L0
  .line 3
    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$g;
    invoke-direct { v0, p0 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$g;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V
    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->n:Landroidx/coordinatorlayout/widget/CoordinatorLayout$g;
  :L0
  .line 4
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
    move-result-object v0
  .line 5
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->n:Landroidx/coordinatorlayout/widget/CoordinatorLayout$g;
    invoke-virtual { v0, v1 }, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
  :L1
    const/4 v0, 1
  .line 6
    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->o:Z
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
  .registers 3
  .line 1
    instance-of v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;
    if-eqz v0, :L0
    invoke-super { p0, p1 }, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    move-result p1
    if-eqz p1, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    return p1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
  .registers 13
  .line 1
    invoke-virtual { p2 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;
  .line 2
    iget-object v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
    if-eqz v1, :L2
  .line 3
    invoke-virtual { v1, p0, p2 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->d(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)F
    move-result v1
    const/4 v2, 0
    cmpl-float v2, v1, v2
    if-lez v2, :L2
  .line 4
    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->f:Landroid/graphics/Paint;
    if-nez v2, :L0
  .line 5
    new-instance v2, Landroid/graphics/Paint;
    invoke-direct { v2 }, Landroid/graphics/Paint;-><init>()V
    iput-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->f:Landroid/graphics/Paint;
  :L0
  .line 6
    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->f:Landroid/graphics/Paint;
    iget-object v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
    invoke-virtual { v0, p0, p2 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->c(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)I
    move-result v0
    invoke-virtual { v2, v0 }, Landroid/graphics/Paint;->setColor(I)V
  .line 7
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->f:Landroid/graphics/Paint;
    const/high16 v2, 17279
    mul-float v1, v1, v2
    invoke-static { v1 }, Ljava/lang/Math;->round(F)I
    move-result v1
    const/4 v2, 0
    const/16 v3, 255
    invoke-static { v1, v2, v3 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->c(III)I
    move-result v1
    invoke-virtual { v0, v1 }, Landroid/graphics/Paint;->setAlpha(I)V
  .line 8
    invoke-virtual { p1 }, Landroid/graphics/Canvas;->save()I
    move-result v0
  .line 9
    invoke-virtual { p2 }, Landroid/view/View;->isOpaque()Z
    move-result v1
    if-eqz v1, :L1
  .line 10
    invoke-virtual { p2 }, Landroid/view/View;->getLeft()I
    move-result v1
    int-to-float v3, v1
    invoke-virtual { p2 }, Landroid/view/View;->getTop()I
    move-result v1
    int-to-float v4, v1
    invoke-virtual { p2 }, Landroid/view/View;->getRight()I
    move-result v1
    int-to-float v5, v1
  .line 11
    invoke-virtual { p2 }, Landroid/view/View;->getBottom()I
    move-result v1
    int-to-float v6, v1
    sget-object v7, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;
    move-object v2, p1
  .line 12
    invoke-virtual/range { v2 .. v7 }, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z
  :L1
  .line 13
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getPaddingLeft()I
    move-result v1
    int-to-float v3, v1
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getPaddingTop()I
    move-result v1
    int-to-float v4, v1
  .line 14
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getWidth()I
    move-result v1
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getPaddingRight()I
    move-result v2
    sub-int/2addr v1, v2
    int-to-float v5, v1
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getHeight()I
    move-result v1
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getPaddingBottom()I
    move-result v2
    sub-int/2addr v1, v2
    int-to-float v6, v1
    iget-object v7, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->f:Landroid/graphics/Paint;
    move-object v2, p1
  .line 15
    invoke-virtual/range { v2 .. v7 }, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
  .line 16
    invoke-virtual { p1, v0 }, Landroid/graphics/Canvas;->restoreToCount(I)V
  :L2
  .line 17
    invoke-super { p0, p1, p2, p3, p4 }, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    move-result p1
    return p1
.end method

.method protected drawableStateChanged()V
  .registers 5
  .line 1
    invoke-super { p0 }, Landroid/view/ViewGroup;->drawableStateChanged()V
  .line 2
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getDrawableState()[I
    move-result-object v0
  .line 3
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->r:Landroid/graphics/drawable/Drawable;
    const/4 v2, 0
    if-eqz v1, :L0
  .line 4
    invoke-virtual { v1 }, Landroid/graphics/drawable/Drawable;->isStateful()Z
    move-result v3
    if-eqz v3, :L0
  .line 5
    invoke-virtual { v1, v0 }, Landroid/graphics/drawable/Drawable;->setState([I)Z
    move-result v0
    or-int/2addr v2, v0
  :L0
    if-eqz v2, :L1
  .line 6
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->invalidate()V
  :L1
    return-void
.end method

.method public f(Landroid/view/View;)V
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->c:Landroidx/coordinatorlayout/widget/a;
    invoke-virtual { v0, p1 }, Landroidx/coordinatorlayout/widget/a;->g(Ljava/lang/Object;)Ljava/util/List;
    move-result-object v0
    if-eqz v0, :L2
  .line 2
    invoke-interface { v0 }, Ljava/util/List;->isEmpty()Z
    move-result v1
    if-nez v1, :L2
    const/4 v1, 0
  :L0
  .line 3
    invoke-interface { v0 }, Ljava/util/List;->size()I
    move-result v2
    if-ge v1, v2, :L2
  .line 4
    invoke-interface { v0, v1 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroid/view/View;
  .line 5
    invoke-virtual { v2 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v3
    check-cast v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;
  .line 6
    invoke-virtual { v3 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->f()Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
    move-result-object v3
    if-eqz v3, :L1
  .line 7
    invoke-virtual { v3, p0, v2, p1 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->h(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
  :L1
    add-int/lit8 v1, v1, 1
    goto :L0
  :L2
    return-void
.end method

.method g()V
  .registers 5
  .line 1
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v0
    const/4 v1, 0
    const/4 v2, 0
  :L0
    if-ge v2, v0, :L2
  .line 2
    invoke-virtual { p0, v2 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v3
  .line 3
    invoke-direct { p0, v3 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->A(Landroid/view/View;)Z
    move-result v3
    if-eqz v3, :L1
    const/4 v1, 1
    goto :L2
  :L1
    add-int/lit8 v2, v2, 1
    goto :L0
  :L2
  .line 4
    iget-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->o:Z
    if-eq v1, v0, :L4
    if-eqz v1, :L3
  .line 5
    invoke-virtual { p0 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->b()V
    goto :L4
  :L3
  .line 6
    invoke-virtual { p0 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->P()V
  :L4
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->k()Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;
    move-result-object v0
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->l(Landroid/util/AttributeSet;)Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;
    move-result-object p1
    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
  .registers 2
  .line 2
    invoke-virtual { p0, p1 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->p(Landroid/view/ViewGroup$LayoutParams;)Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;
    move-result-object p1
    return-object p1
.end method

.method final getDependencySortedChildren()Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Ljava/util/List<",
      "Landroid/view/View;",
      ">;"
    }
  .end annotation
  .registers 2
  .line 1
    invoke-direct { p0 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->M()V
  .line 2
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->b:Ljava/util/List;
    invoke-static { v0 }, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    move-result-object v0
    return-object v0
.end method

.method public final getLastWindowInsets()Landroidx/core/view/d0;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->p:Landroidx/core/view/d0;
    return-object v0
.end method

.method public getNestedScrollAxes()I
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->u:Landroidx/core/view/p;
    invoke-virtual { v0 }, Landroidx/core/view/p;->a()I
    move-result v0
    return v0
.end method

.method public getStatusBarBackground()Landroid/graphics/drawable/Drawable;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->r:Landroid/graphics/drawable/Drawable;
    return-object v0
.end method

.method protected getSuggestedMinimumHeight()I
  .registers 4
  .line 1
    invoke-super { p0 }, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I
    move-result v0
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getPaddingTop()I
    move-result v1
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getPaddingBottom()I
    move-result v2
    add-int/2addr v1, v2
    invoke-static { v0, v1 }, Ljava/lang/Math;->max(II)I
    move-result v0
    return v0
.end method

.method protected getSuggestedMinimumWidth()I
  .registers 4
  .line 1
    invoke-super { p0 }, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I
    move-result v0
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getPaddingLeft()I
    move-result v1
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getPaddingRight()I
    move-result v2
    add-int/2addr v1, v2
    invoke-static { v0, v1 }, Ljava/lang/Math;->max(II)I
    move-result v0
    return v0
.end method

.method public h(Landroid/view/View;Landroid/view/View;II)V
  .registers 14
  .line 1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->u:Landroidx/core/view/p;
    invoke-virtual { v0, p1, p2, p3, p4 }, Landroidx/core/view/p;->c(Landroid/view/View;Landroid/view/View;II)V
  .line 2
    iput-object p2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->m:Landroid/view/View;
  .line 3
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v0
    const/4 v1, 0
  :L0
    if-ge v1, v0, :L3
  .line 4
    invoke-virtual { p0, v1 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v4
  .line 5
    invoke-virtual { v4 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v2
    check-cast v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;
  .line 6
    invoke-virtual { v2, p4 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->j(I)Z
    move-result v3
    if-nez v3, :L1
    goto :L2
  :L1
  .line 7
    invoke-virtual { v2 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->f()Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
    move-result-object v2
    if-eqz v2, :L2
    move-object v3, p0
    move-object v5, p1
    move-object v6, p2
    move v7, p3
    move v8, p4
  .line 8
    invoke-virtual/range { v2 .. v8 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->v(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)V
  :L2
    add-int/lit8 v1, v1, 1
    goto :L0
  :L3
    return-void
.end method

.method public i(Landroid/view/View;I)V
  .registers 8
  .line 1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->u:Landroidx/core/view/p;
    invoke-virtual { v0, p1, p2 }, Landroidx/core/view/p;->d(Landroid/view/View;I)V
  .line 2
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v0
    const/4 v1, 0
  :L0
    if-ge v1, v0, :L4
  .line 3
    invoke-virtual { p0, v1 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v2
  .line 4
    invoke-virtual { v2 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v3
    check-cast v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;
  .line 5
    invoke-virtual { v3, p2 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->j(I)Z
    move-result v4
    if-nez v4, :L1
    goto :L3
  :L1
  .line 6
    invoke-virtual { v3 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->f()Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
    move-result-object v4
    if-eqz v4, :L2
  .line 7
    invoke-virtual { v4, p0, v2, p1, p2 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->C(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
  :L2
  .line 8
    invoke-virtual { v3, p2 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->l(I)V
  .line 9
    invoke-virtual { v3 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->k()V
  :L3
    add-int/lit8 v1, v1, 1
    goto :L0
  :L4
    const/4 p1, 0
  .line 10
    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->m:Landroid/view/View;
    return-void
.end method

.method public j(Landroid/view/View;II[II)V
  .registers 22
    move-object/from16 v8, p0
  .line 1
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v9
    const/4 v10, 0
    const/4 v0, 0
    const/4 v11, 0
    const/4 v12, 0
    const/4 v13, 0
  :L0
    const/4 v14, 1
    if-ge v11, v9, :L8
  .line 2
    invoke-virtual { v8, v11 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v2
  .line 3
    invoke-virtual { v2 }, Landroid/view/View;->getVisibility()I
    move-result v1
    const/16 v3, 8
    if-ne v1, v3, :L1
    move/from16 v15, p5
    goto :L7
  :L1
  .line 4
    invoke-virtual { v2 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v1
    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;
    move/from16 v15, p5
  .line 5
    invoke-virtual { v1, v15 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->j(I)Z
    move-result v3
    if-nez v3, :L2
    goto :L7
  :L2
  .line 6
    invoke-virtual { v1 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->f()Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
    move-result-object v1
    if-eqz v1, :L7
  .line 7
    iget-object v6, v8, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->g:[I
    aput v10, v6, v10
  .line 8
    aput v10, v6, v14
    move-object v0, v1
    move-object/from16 v1, p0
    move-object/from16 v3, p1
    move/from16 v4, p2
    move/from16 v5, p3
    move/from16 v7, p5
  .line 9
    invoke-virtual/range { v0 .. v7 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->q(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
  .line 10
    iget-object v0, v8, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->g:[I
    if-lez p2, :L3
    aget v0, v0, v10
    invoke-static { v12, v0 }, Ljava/lang/Math;->max(II)I
    move-result v0
    goto :L4
  :L3
    aget v0, v0, v10
  .line 11
    invoke-static { v12, v0 }, Ljava/lang/Math;->min(II)I
    move-result v0
  :L4
    move v12, v0
  .line 12
    iget-object v0, v8, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->g:[I
    if-lez p3, :L5
    aget v0, v0, v14
    invoke-static { v13, v0 }, Ljava/lang/Math;->max(II)I
    move-result v0
    goto :L6
  :L5
    aget v0, v0, v14
  .line 13
    invoke-static { v13, v0 }, Ljava/lang/Math;->min(II)I
    move-result v0
  :L6
    move v13, v0
    const/4 v0, 1
  :L7
    add-int/lit8 v11, v11, 1
    goto :L0
  :L8
  .line 14
    aput v12, p4, v10
  .line 15
    aput v13, p4, v14
    if-eqz v0, :L9
  .line 16
    invoke-virtual { v8, v14 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->H(I)V
  :L9
    return-void
.end method

.method protected k()Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;
  .registers 3
  .line 1
    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;
    const/4 v1, -2
    invoke-direct { v0, v1, v1 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;-><init>(II)V
    return-object v0
.end method

.method public l(Landroid/util/AttributeSet;)Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;
  .registers 4
  .line 1
    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object v1
    invoke-direct { v0, v1, p1 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    return-object v0
.end method

.method public m(Landroid/view/View;IIIII[I)V
  .registers 25
    move-object/from16 v10, p0
  .line 1
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v11
    const/4 v12, 0
    const/4 v0, 0
    const/4 v13, 0
    const/4 v14, 0
    const/4 v15, 0
  :L0
    const/4 v9, 1
    if-ge v13, v11, :L8
  .line 2
    invoke-virtual { v10, v13 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v2
  .line 3
    invoke-virtual { v2 }, Landroid/view/View;->getVisibility()I
    move-result v1
    const/16 v3, 8
    if-ne v1, v3, :L1
    goto :L7
  :L1
  .line 4
    invoke-virtual { v2 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v1
    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;
    move/from16 v8, p6
  .line 5
    invoke-virtual { v1, v8 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->j(I)Z
    move-result v3
    if-nez v3, :L2
    goto :L7
  :L2
  .line 6
    invoke-virtual { v1 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->f()Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
    move-result-object v1
    if-eqz v1, :L7
  .line 7
    iget-object v7, v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->g:[I
    aput v12, v7, v12
  .line 8
    aput v12, v7, v9
    move-object v0, v1
    move-object/from16 v1, p0
    move-object/from16 v3, p1
    move/from16 v4, p2
    move/from16 v5, p3
    move/from16 v6, p4
    move-object/from16 v16, v7
    move/from16 v7, p5
    move/from16 v8, p6
    move-object/from16 v9, v16
  .line 9
    invoke-virtual/range { v0 .. v9 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->t(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII[I)V
  .line 10
    iget-object v0, v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->g:[I
    if-lez p4, :L3
    aget v0, v0, v12
    invoke-static { v14, v0 }, Ljava/lang/Math;->max(II)I
    move-result v0
    goto :L4
  :L3
    aget v0, v0, v12
  .line 11
    invoke-static { v14, v0 }, Ljava/lang/Math;->min(II)I
    move-result v0
  :L4
    move v14, v0
    if-lez p5, :L5
  .line 12
    iget-object v0, v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->g:[I
    const/4 v1, 1
    aget v0, v0, v1
    invoke-static { v15, v0 }, Ljava/lang/Math;->max(II)I
    move-result v0
    goto :L6
  :L5
    const/4 v1, 1
    iget-object v0, v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->g:[I
    aget v0, v0, v1
  .line 13
    invoke-static { v15, v0 }, Ljava/lang/Math;->min(II)I
    move-result v0
  :L6
    move v15, v0
    const/4 v0, 1
  :L7
    add-int/lit8 v13, v13, 1
    goto :L0
  :L8
    const/4 v1, 1
  .line 14
    aget v2, p7, v12
    add-int/2addr v2, v14
    aput v2, p7, v12
  .line 15
    aget v2, p7, v1
    add-int/2addr v2, v15
    aput v2, p7, v1
    if-eqz v0, :L9
  .line 16
    invoke-virtual { v10, v1 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->H(I)V
  :L9
    return-void
.end method

.method public n(Landroid/view/View;IIIII)V
  .registers 15
  .line 1
    iget-object v7, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->h:[I
    const/4 v6, 0
    move-object v0, p0
    move-object v1, p1
    move v2, p2
    move v3, p3
    move v4, p4
    move v5, p5
    invoke-virtual/range { v0 .. v7 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->m(Landroid/view/View;IIIII[I)V
    return-void
.end method

.method public o(Landroid/view/View;Landroid/view/View;II)Z
  .registers 19
    move/from16 v7, p4
  .line 1
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v8
    const/4 v9, 0
    const/4 v10, 0
    const/4 v11, 0
  :L0
    if-ge v10, v8, :L4
    move-object v12, p0
  .line 2
    invoke-virtual { p0, v10 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v2
  .line 3
    invoke-virtual { v2 }, Landroid/view/View;->getVisibility()I
    move-result v0
    const/16 v1, 8
    if-ne v0, v1, :L1
    goto :L3
  :L1
  .line 4
    invoke-virtual { v2 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
    move-object v13, v0
    check-cast v13, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;
  .line 5
    invoke-virtual { v13 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->f()Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
    move-result-object v0
    if-eqz v0, :L2
    move-object v1, p0
    move-object v3, p1
    move-object/from16 v4, p2
    move/from16 v5, p3
    move/from16 v6, p4
  .line 6
    invoke-virtual/range { v0 .. v6 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->A(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    move-result v0
    or-int/2addr v11, v0
  .line 7
    invoke-virtual { v13, v7, v0 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->r(IZ)V
    goto :L3
  :L2
  .line 8
    invoke-virtual { v13, v7, v9 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->r(IZ)V
  :L3
    add-int/lit8 v10, v10, 1
    goto :L0
  :L4
    move-object v12, p0
    return v11
.end method

.method public onAttachedToWindow()V
  .registers 3
  .line 1
    invoke-super { p0 }, Landroid/view/ViewGroup;->onAttachedToWindow()V
    const/4 v0, 0
  .line 2
    invoke-direct { p0, v0 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->Q(Z)V
  .line 3
    iget-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->o:Z
    if-eqz v0, :L1
  .line 4
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->n:Landroidx/coordinatorlayout/widget/CoordinatorLayout$g;
    if-nez v0, :L0
  .line 5
    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$g;
    invoke-direct { v0, p0 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$g;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V
    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->n:Landroidx/coordinatorlayout/widget/CoordinatorLayout$g;
  :L0
  .line 6
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
    move-result-object v0
  .line 7
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->n:Landroidx/coordinatorlayout/widget/CoordinatorLayout$g;
    invoke-virtual { v0, v1 }, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
  :L1
  .line 8
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->p:Landroidx/core/view/d0;
    if-nez v0, :L2
    invoke-static { p0 }, Landroidx/core/view/v;->z(Landroid/view/View;)Z
    move-result v0
    if-eqz v0, :L2
  .line 9
    invoke-static { p0 }, Landroidx/core/view/v;->l0(Landroid/view/View;)V
  :L2
    const/4 v0, 1
  .line 10
    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->j:Z
    return-void
.end method

.method public onDetachedFromWindow()V
  .registers 4
  .line 1
    invoke-super { p0 }, Landroid/view/ViewGroup;->onDetachedFromWindow()V
    const/4 v0, 0
  .line 2
    invoke-direct { p0, v0 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->Q(Z)V
  .line 3
    iget-boolean v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->o:Z
    if-eqz v1, :L0
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->n:Landroidx/coordinatorlayout/widget/CoordinatorLayout$g;
    if-eqz v1, :L0
  .line 4
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
    move-result-object v1
  .line 5
    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->n:Landroidx/coordinatorlayout/widget/CoordinatorLayout$g;
    invoke-virtual { v1, v2 }, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
  :L0
  .line 6
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->m:Landroid/view/View;
    if-eqz v1, :L1
  .line 7
    invoke-virtual { p0, v1 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onStopNestedScroll(Landroid/view/View;)V
  :L1
  .line 8
    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->j:Z
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
  .registers 6
  .line 1
    invoke-super { p0, p1 }, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V
  .line 2
    iget-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->q:Z
    if-eqz v0, :L2
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->r:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L2
  .line 3
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->p:Landroidx/core/view/d0;
    const/4 v1, 0
    if-eqz v0, :L0
    invoke-virtual { v0 }, Landroidx/core/view/d0;->i()I
    move-result v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    if-lez v0, :L2
  .line 4
    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->r:Landroid/graphics/drawable/Drawable;
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getWidth()I
    move-result v3
    invoke-virtual { v2, v1, v1, v3, v0 }, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
  .line 5
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->r:Landroid/graphics/drawable/Drawable;
    invoke-virtual { v0, p1 }, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
  :L2
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
  .registers 5
  .line 1
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getActionMasked()I
    move-result v0
    const/4 v1, 1
    if-nez v0, :L0
  .line 2
    invoke-direct { p0, v1 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->Q(Z)V
  :L0
    const/4 v2, 0
  .line 3
    invoke-direct { p0, p1, v2 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->L(Landroid/view/MotionEvent;I)Z
    move-result p1
    if-eq v0, v1, :L1
    const/4 v2, 3
    if-ne v0, v2, :L2
  :L1
  .line 4
    invoke-direct { p0, v1 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->Q(Z)V
  :L2
    return p1
.end method

.method protected onLayout(ZIIII)V
  .registers 7
  .line 1
    invoke-static { p0 }, Landroidx/core/view/v;->C(Landroid/view/View;)I
    move-result p1
  .line 2
    iget-object p2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->b:Ljava/util/List;
    invoke-interface { p2 }, Ljava/util/List;->size()I
    move-result p2
    const/4 p3, 0
  :L0
    if-ge p3, p2, :L4
  .line 3
    iget-object p4, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->b:Ljava/util/List;
    invoke-interface { p4, p3 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object p4
    check-cast p4, Landroid/view/View;
  .line 4
    invoke-virtual { p4 }, Landroid/view/View;->getVisibility()I
    move-result p5
    const/16 v0, 8
    if-ne p5, v0, :L1
    goto :L3
  :L1
  .line 5
    invoke-virtual { p4 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object p5
    check-cast p5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;
  .line 6
    invoke-virtual { p5 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->f()Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
    move-result-object p5
    if-eqz p5, :L2
  .line 7
    invoke-virtual { p5, p0, p4, p1 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->l(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    move-result p5
    if-nez p5, :L3
  :L2
  .line 8
    invoke-virtual { p0, p4, p1 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->I(Landroid/view/View;I)V
  :L3
    add-int/lit8 p3, p3, 1
    goto :L0
  :L4
    return-void
.end method

.method protected onMeasure(II)V
  .registers 33
    move-object/from16 v7, p0
  .line 1
    invoke-direct/range { p0 .. p0 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->M()V
  .line 2
    invoke-virtual/range { p0 .. p0 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->g()V
  .line 3
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingLeft()I
    move-result v8
  .line 4
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingTop()I
    move-result v0
  .line 5
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingRight()I
    move-result v9
  .line 6
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingBottom()I
    move-result v1
  .line 7
    invoke-static/range { p0 .. p0 }, Landroidx/core/view/v;->C(Landroid/view/View;)I
    move-result v10
    const/4 v2, 1
    if-ne v10, v2, :L0
    const/4 v12, 1
    goto :L1
  :L0
    const/4 v12, 0
  :L1
  .line 8
    invoke-static/range { p1 .. p1 }, Landroid/view/View$MeasureSpec;->getMode(I)I
    move-result v13
  .line 9
    invoke-static/range { p1 .. p1 }, Landroid/view/View$MeasureSpec;->getSize(I)I
    move-result v14
  .line 10
    invoke-static/range { p2 .. p2 }, Landroid/view/View$MeasureSpec;->getMode(I)I
    move-result v15
  .line 11
    invoke-static/range { p2 .. p2 }, Landroid/view/View$MeasureSpec;->getSize(I)I
    move-result v16
    add-int v17, v8, v9
    add-int v18, v0, v1
  .line 12
    invoke-virtual/range { p0 .. p0 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getSuggestedMinimumWidth()I
    move-result v0
  .line 13
    invoke-virtual/range { p0 .. p0 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getSuggestedMinimumHeight()I
    move-result v1
  .line 14
    iget-object v3, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->p:Landroidx/core/view/d0;
    if-eqz v3, :L2
    invoke-static/range { p0 .. p0 }, Landroidx/core/view/v;->z(Landroid/view/View;)Z
    move-result v3
    if-eqz v3, :L2
    const/16 v19, 1
    goto :L3
  :L2
    const/16 v19, 0
  :L3
  .line 15
    iget-object v2, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->b:Ljava/util/List;
    invoke-interface { v2 }, Ljava/util/List;->size()I
    move-result v6
    move v5, v0
    move v4, v1
    const/4 v2, 0
    const/4 v3, 0
  :L4
    if-ge v3, v6, :L20
  .line 16
    iget-object v0, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->b:Ljava/util/List;
    invoke-interface { v0, v3 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v0
    move-object/from16 v20, v0
    check-cast v20, Landroid/view/View;
  .line 17
    invoke-virtual/range { v20 .. v20 }, Landroid/view/View;->getVisibility()I
    move-result v0
    const/16 v1, 8
    if-ne v0, v1, :L5
    move/from16 v22, v3
    move/from16 v29, v6
    move/from16 v28, v8
    goto/16 :L19
  :L5
  .line 18
    invoke-virtual/range { v20 .. v20 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
    move-object v1, v0
    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;
  .line 19
    iget v0, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->e:I
    if-ltz v0, :L11
    if-eqz v13, :L11
  .line 20
    invoke-direct { v7, v0 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->w(I)I
    move-result v0
  .line 21
    iget v11, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->c:I
  .line 22
    invoke-static { v11 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->T(I)I
    move-result v11
  .line 23
    invoke-static { v11, v10 }, Landroidx/core/view/e;->b(II)I
    move-result v11
    and-int/lit8 v11, v11, 7
    move/from16 v22, v2
    const/4 v2, 3
    if-ne v11, v2, :L6
    if-eqz v12, :L7
  :L6
    const/4 v2, 5
    if-ne v11, v2, :L8
    if-eqz v12, :L8
  :L7
    sub-int v2, v14, v9
    sub-int/2addr v2, v0
    const/4 v0, 0
  .line 24
    invoke-static { v0, v2 }, Ljava/lang/Math;->max(II)I
    move-result v2
    move/from16 v21, v2
    const/4 v11, 0
    goto :L13
  :L8
    if-ne v11, v2, :L9
    if-eqz v12, :L10
  :L9
    const/4 v2, 3
    if-ne v11, v2, :L12
    if-eqz v12, :L12
  :L10
    sub-int/2addr v0, v8
    const/4 v11, 0
  .line 25
    invoke-static { v11, v0 }, Ljava/lang/Math;->max(II)I
    move-result v0
    move/from16 v21, v0
    goto :L13
  :L11
    move/from16 v22, v2
  :L12
    const/4 v11, 0
    const/16 v21, 0
  :L13
    if-eqz v19, :L14
  .line 26
    invoke-static/range { v20 .. v20 }, Landroidx/core/view/v;->z(Landroid/view/View;)Z
    move-result v0
    if-nez v0, :L14
  .line 27
    iget-object v0, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->p:Landroidx/core/view/d0;
    invoke-virtual { v0 }, Landroidx/core/view/d0;->g()I
    move-result v0
    iget-object v2, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->p:Landroidx/core/view/d0;
  .line 28
    invoke-virtual { v2 }, Landroidx/core/view/d0;->h()I
    move-result v2
    add-int/2addr v0, v2
  .line 29
    iget-object v2, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->p:Landroidx/core/view/d0;
    invoke-virtual { v2 }, Landroidx/core/view/d0;->i()I
    move-result v2
    iget-object v11, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->p:Landroidx/core/view/d0;
  .line 30
    invoke-virtual { v11 }, Landroidx/core/view/d0;->f()I
    move-result v11
    add-int/2addr v2, v11
    sub-int v0, v14, v0
  .line 31
    invoke-static { v0, v13 }, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result v0
    sub-int v2, v16, v2
  .line 32
    invoke-static { v2, v15 }, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result v2
    move v11, v0
    move/from16 v23, v2
    goto :L15
  :L14
    move/from16 v11, p1
    move/from16 v23, p2
  :L15
  .line 33
    invoke-virtual { v1 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->f()Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
    move-result-object v0
    if-eqz v0, :L16
    const/16 v24, 0
    move-object v2, v1
    move-object/from16 v1, p0
    move-object/from16 v26, v2
    move/from16 v25, v22
    move-object/from16 v2, v20
    move/from16 v22, v3
    move v3, v11
    move/from16 v27, v4
    move/from16 v4, v21
    move/from16 v28, v8
    move v8, v5
    move/from16 v5, v23
    move/from16 v29, v6
    move/from16 v6, v24
  .line 34
    invoke-virtual/range { v0 .. v6 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->m(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    move-result v0
    if-nez v0, :L18
    goto :L17
  :L16
    move-object/from16 v26, v1
    move/from16 v27, v4
    move/from16 v29, v6
    move/from16 v28, v8
    move/from16 v25, v22
    move/from16 v22, v3
    move v8, v5
  :L17
    const/4 v5, 0
    move-object/from16 v0, p0
    move-object/from16 v1, v20
    move v2, v11
    move/from16 v3, v21
    move/from16 v4, v23
  .line 35
    invoke-virtual/range { v0 .. v5 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->J(Landroid/view/View;IIII)V
  :L18
  .line 36
    invoke-virtual/range { v20 .. v20 }, Landroid/view/View;->getMeasuredWidth()I
    move-result v0
    add-int v0, v17, v0
    move-object/from16 v1, v26
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I
    add-int/2addr v0, v2
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I
    add-int/2addr v0, v2
    invoke-static { v8, v0 }, Ljava/lang/Math;->max(II)I
    move-result v0
  .line 37
    invoke-virtual/range { v20 .. v20 }, Landroid/view/View;->getMeasuredHeight()I
    move-result v2
    add-int v2, v18, v2
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I
    add-int/2addr v2, v3
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I
    add-int/2addr v2, v1
    move/from16 v1, v27
    invoke-static { v1, v2 }, Ljava/lang/Math;->max(II)I
    move-result v1
  .line 38
    invoke-virtual/range { v20 .. v20 }, Landroid/view/View;->getMeasuredState()I
    move-result v2
    move/from16 v11, v25
    invoke-static { v11, v2 }, Landroid/view/View;->combineMeasuredStates(II)I
    move-result v2
    move v5, v0
    move v4, v1
  :L19
    add-int/lit8 v3, v22, 1
    move/from16 v8, v28
    move/from16 v6, v29
    goto/16 :L4
  :L20
    move v11, v2
    move v1, v4
    move v8, v5
    const/high16 v0, -256
    and-int/2addr v0, v11
    move/from16 v2, p1
  .line 39
    invoke-static { v8, v2, v0 }, Landroid/view/View;->resolveSizeAndState(III)I
    move-result v0
    shl-int/lit8 v2, v11, 16
    move/from16 v3, p2
  .line 40
    invoke-static { v1, v3, v2 }, Landroid/view/View;->resolveSizeAndState(III)I
    move-result v1
  .line 41
    invoke-virtual { v7, v0, v1 }, Landroid/view/ViewGroup;->setMeasuredDimension(II)V
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
  .registers 16
  .line 1
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v0
    const/4 v1, 0
    const/4 v2, 0
    const/4 v3, 0
  :L0
    if-ge v2, v0, :L4
  .line 2
    invoke-virtual { p0, v2 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v6
  .line 3
    invoke-virtual { v6 }, Landroid/view/View;->getVisibility()I
    move-result v4
    const/16 v5, 8
    if-ne v4, v5, :L1
    goto :L3
  :L1
  .line 4
    invoke-virtual { v6 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v4
    check-cast v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;
  .line 5
    invoke-virtual { v4, v1 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->j(I)Z
    move-result v5
    if-nez v5, :L2
    goto :L3
  :L2
  .line 6
    invoke-virtual { v4 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->f()Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
    move-result-object v4
    if-eqz v4, :L3
    move-object v5, p0
    move-object v7, p1
    move v8, p2
    move v9, p3
    move v10, p4
  .line 7
    invoke-virtual/range { v4 .. v10 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->n(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FFZ)Z
    move-result v4
    or-int/2addr v3, v4
  :L3
    add-int/lit8 v2, v2, 1
    goto :L0
  :L4
    if-eqz v3, :L5
    const/4 p1, 1
  .line 8
    invoke-virtual { p0, p1 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->H(I)V
  :L5
    return v3
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
  .registers 14
  .line 1
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v0
    const/4 v1, 0
    const/4 v2, 0
    const/4 v3, 0
  :L0
    if-ge v2, v0, :L4
  .line 2
    invoke-virtual { p0, v2 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v6
  .line 3
    invoke-virtual { v6 }, Landroid/view/View;->getVisibility()I
    move-result v4
    const/16 v5, 8
    if-ne v4, v5, :L1
    goto :L3
  :L1
  .line 4
    invoke-virtual { v6 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v4
    check-cast v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;
  .line 5
    invoke-virtual { v4, v1 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->j(I)Z
    move-result v5
    if-nez v5, :L2
    goto :L3
  :L2
  .line 6
    invoke-virtual { v4 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->f()Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
    move-result-object v4
    if-eqz v4, :L3
    move-object v5, p0
    move-object v7, p1
    move v8, p2
    move v9, p3
  .line 7
    invoke-virtual/range { v4 .. v9 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->o(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z
    move-result v4
    or-int/2addr v3, v4
  :L3
    add-int/lit8 v2, v2, 1
    goto :L0
  :L4
    return v3
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
  .registers 11
    const/4 v5, 0
    move-object v0, p0
    move-object v1, p1
    move v2, p2
    move v3, p3
    move-object v4, p4
  .line 1
    invoke-virtual/range { v0 .. v5 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->j(Landroid/view/View;II[II)V
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
  .registers 13
    const/4 v6, 0
    move-object v0, p0
    move-object v1, p1
    move v2, p2
    move v3, p3
    move v4, p4
    move v5, p5
  .line 1
    invoke-virtual/range { v0 .. v6 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->n(Landroid/view/View;IIIII)V
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
  .registers 5
    const/4 v0, 0
  .line 1
    invoke-virtual { p0, p1, p2, p3, v0 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->h(Landroid/view/View;Landroid/view/View;II)V
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
  .registers 8
  .line 1
    instance-of v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$h;
    if-nez v0, :L0
  .line 2
    invoke-super { p0, p1 }, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V
    return-void
  :L0
  .line 3
    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$h;
  .line 4
    invoke-virtual { p1 }, Lc/i/a/a;->j()Landroid/os/Parcelable;
    move-result-object v0
    invoke-super { p0, v0 }, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V
  .line 5
    iget-object p1, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$h;->d:Landroid/util/SparseArray;
    const/4 v0, 0
  .line 6
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v1
  :L1
    if-ge v0, v1, :L3
  .line 7
    invoke-virtual { p0, v0 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v2
  .line 8
    invoke-virtual { v2 }, Landroid/view/View;->getId()I
    move-result v3
  .line 9
    invoke-virtual { p0, v2 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->y(Landroid/view/View;)Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;
    move-result-object v4
  .line 10
    invoke-virtual { v4 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->f()Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
    move-result-object v4
    const/4 v5, -1
    if-eq v3, v5, :L2
    if-eqz v4, :L2
  .line 11
    invoke-virtual { p1, v3 }, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Landroid/os/Parcelable;
    if-eqz v3, :L2
  .line 12
    invoke-virtual { v4, p0, v2, v3 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->x(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
  :L2
    add-int/lit8 v0, v0, 1
    goto :L1
  :L3
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
  .registers 9
  .line 1
    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$h;
    invoke-super { p0 }, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;
    move-result-object v1
    invoke-direct { v0, v1 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$h;-><init>(Landroid/os/Parcelable;)V
  .line 2
    new-instance v1, Landroid/util/SparseArray;
    invoke-direct { v1 }, Landroid/util/SparseArray;-><init>()V
  .line 3
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v2
    const/4 v3, 0
  :L0
    if-ge v3, v2, :L2
  .line 4
    invoke-virtual { p0, v3 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v4
  .line 5
    invoke-virtual { v4 }, Landroid/view/View;->getId()I
    move-result v5
  .line 6
    invoke-virtual { v4 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v6
    check-cast v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;
  .line 7
    invoke-virtual { v6 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->f()Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
    move-result-object v6
    const/4 v7, -1
    if-eq v5, v7, :L1
    if-eqz v6, :L1
  .line 8
    invoke-virtual { v6, p0, v4 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->y(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    move-result-object v4
    if-eqz v4, :L1
  .line 9
    invoke-virtual { v1, v5, v4 }, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
  :L1
    add-int/lit8 v3, v3, 1
    goto :L0
  :L2
  .line 10
    iput-object v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$h;->d:Landroid/util/SparseArray;
    return-object v0
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
  .registers 5
    const/4 v0, 0
  .line 1
    invoke-virtual { p0, p1, p2, p3, v0 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->o(Landroid/view/View;Landroid/view/View;II)Z
    move-result p1
    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
  .registers 3
    const/4 v0, 0
  .line 1
    invoke-virtual { p0, p1, v0 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->i(Landroid/view/View;I)V
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
  .registers 19
    move-object/from16 v0, p0
    move-object/from16 v1, p1
  .line 1
    invoke-virtual/range { p1 .. p1 }, Landroid/view/MotionEvent;->getActionMasked()I
    move-result v2
  .line 2
    iget-object v3, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->l:Landroid/view/View;
    const/4 v4, 1
    const/4 v5, 0
    if-nez v3, :L0
    invoke-direct { v0, v1, v4 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->L(Landroid/view/MotionEvent;I)Z
    move-result v3
    if-eqz v3, :L2
    goto :L1
  :L0
    const/4 v3, 0
  :L1
  .line 3
    iget-object v6, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->l:Landroid/view/View;
    invoke-virtual { v6 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v6
    check-cast v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;
  .line 4
    invoke-virtual { v6 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->f()Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
    move-result-object v6
    if-eqz v6, :L2
  .line 5
    iget-object v7, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->l:Landroid/view/View;
    invoke-virtual { v6, v0, v7, v1 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->D(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    move-result v6
    goto :L3
  :L2
    const/4 v6, 0
  :L3
  .line 6
    iget-object v7, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->l:Landroid/view/View;
    const/4 v8, 0
    if-nez v7, :L4
  .line 7
    invoke-super/range { p0 .. p1 }, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z
    move-result v1
    or-int/2addr v6, v1
    goto :L5
  :L4
    if-eqz v3, :L5
  .line 8
    invoke-static { }, Landroid/os/SystemClock;->uptimeMillis()J
    move-result-wide v11
    const/4 v13, 3
    const/4 v14, 0
    const/4 v15, 0
    const/16 v16, 0
    move-wide v9, v11
  .line 9
    invoke-static/range { v9 .. v16 }, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;
    move-result-object v8
  .line 10
    invoke-super { v0, v8 }, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z
  :L5
    if-eqz v8, :L6
  .line 11
    invoke-virtual { v8 }, Landroid/view/MotionEvent;->recycle()V
  :L6
    if-eq v2, v4, :L7
    const/4 v1, 3
    if-ne v2, v1, :L8
  :L7
  .line 12
    invoke-direct { v0, v5 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->Q(Z)V
  :L8
    return v6
.end method

.method protected p(Landroid/view/ViewGroup$LayoutParams;)Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;
  .registers 3
  .line 1
    instance-of v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;
    if-eqz v0, :L0
  .line 2
    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;
    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;
    invoke-direct { v0, p1 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;)V
    return-object v0
  :L0
  .line 3
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v0, :L1
  .line 4
    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-direct { v0, p1 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    return-object v0
  :L1
  .line 5
    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;
    invoke-direct { v0, p1 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;-><init>(Landroid/view/ViewGroup$LayoutParams;)V
    return-object v0
.end method

.method q(Landroid/view/View;ZLandroid/graphics/Rect;)V
  .registers 6
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->isLayoutRequested()Z
    move-result v0
    if-nez v0, :L3
    invoke-virtual { p1 }, Landroid/view/View;->getVisibility()I
    move-result v0
    const/16 v1, 8
    if-ne v0, v1, :L0
    goto :L3
  :L0
    if-eqz p2, :L1
  .line 2
    invoke-virtual { p0, p1, p3 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->t(Landroid/view/View;Landroid/graphics/Rect;)V
    goto :L2
  :L1
  .line 3
    invoke-virtual { p1 }, Landroid/view/View;->getLeft()I
    move-result p2
    invoke-virtual { p1 }, Landroid/view/View;->getTop()I
    move-result v0
    invoke-virtual { p1 }, Landroid/view/View;->getRight()I
    move-result v1
    invoke-virtual { p1 }, Landroid/view/View;->getBottom()I
    move-result p1
    invoke-virtual { p3, p2, v0, v1, p1 }, Landroid/graphics/Rect;->set(IIII)V
  :L2
    return-void
  :L3
  .line 4
    invoke-virtual { p3 }, Landroid/graphics/Rect;->setEmpty()V
    return-void
.end method

.method public r(Landroid/view/View;)Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroid/view/View;",
      ")",
      "Ljava/util/List<",
      "Landroid/view/View;",
      ">;"
    }
  .end annotation
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->c:Landroidx/coordinatorlayout/widget/a;
    invoke-virtual { v0, p1 }, Landroidx/coordinatorlayout/widget/a;->h(Ljava/lang/Object;)Ljava/util/List;
    move-result-object p1
  .line 2
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->e:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->clear()V
    if-eqz p1, :L0
  .line 3
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->e:Ljava/util/List;
    invoke-interface { v0, p1 }, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
  :L0
  .line 4
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->e:Ljava/util/List;
    return-object p1
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
  .registers 5
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;
  .line 2
    invoke-virtual { v0 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->f()Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
    move-result-object v0
    if-eqz v0, :L0
  .line 3
    invoke-virtual { v0, p0, p1, p2, p3 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->w(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    move-result v0
    if-eqz v0, :L0
    const/4 p1, 1
    return p1
  :L0
  .line 4
    invoke-super { p0, p1, p2, p3 }, Landroid/view/ViewGroup;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    move-result p1
    return p1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
  .registers 2
  .line 1
    invoke-super { p0, p1 }, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V
    if-eqz p1, :L0
  .line 2
    iget-boolean p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->i:Z
    if-nez p1, :L0
    const/4 p1, 0
  .line 3
    invoke-direct { p0, p1 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->Q(Z)V
    const/4 p1, 1
  .line 4
    iput-boolean p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->i:Z
  :L0
    return-void
.end method

.method public s(Landroid/view/View;)Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroid/view/View;",
      ")",
      "Ljava/util/List<",
      "Landroid/view/View;",
      ">;"
    }
  .end annotation
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->c:Landroidx/coordinatorlayout/widget/a;
    invoke-virtual { v0, p1 }, Landroidx/coordinatorlayout/widget/a;->g(Ljava/lang/Object;)Ljava/util/List;
    move-result-object p1
  .line 2
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->e:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->clear()V
    if-eqz p1, :L0
  .line 3
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->e:Ljava/util/List;
    invoke-interface { v0, p1 }, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
  :L0
  .line 4
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->e:Ljava/util/List;
    return-object p1
.end method

.method public setFitsSystemWindows(Z)V
  .registers 2
  .line 1
    invoke-super { p0, p1 }, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V
  .line 2
    invoke-direct { p0 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->X()V
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->s:Landroid/view/ViewGroup$OnHierarchyChangeListener;
    return-void
.end method

.method public setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->r:Landroid/graphics/drawable/Drawable;
    if-eq v0, p1, :L6
    const/4 v1, 0
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, v1 }, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
  :L0
    if-eqz p1, :L1
  .line 3
    invoke-virtual { p1 }, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
    move-result-object v1
  :L1
    iput-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->r:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :L5
  .line 4
    invoke-virtual { v1 }, Landroid/graphics/drawable/Drawable;->isStateful()Z
    move-result p1
    if-eqz p1, :L2
  .line 5
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->r:Landroid/graphics/drawable/Drawable;
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getDrawableState()[I
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/graphics/drawable/Drawable;->setState([I)Z
  :L2
  .line 6
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->r:Landroid/graphics/drawable/Drawable;
  .line 7
    invoke-static { p0 }, Landroidx/core/view/v;->C(Landroid/view/View;)I
    move-result v0
  .line 8
    invoke-static { p1, v0 }, Landroidx/core/graphics/drawable/a;->m(Landroid/graphics/drawable/Drawable;I)Z
  .line 9
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->r:Landroid/graphics/drawable/Drawable;
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getVisibility()I
    move-result v0
    const/4 v1, 0
    if-nez v0, :L3
    const/4 v0, 1
    goto :L4
  :L3
    const/4 v0, 0
  :L4
    invoke-virtual { p1, v0, v1 }, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z
  .line 10
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->r:Landroid/graphics/drawable/Drawable;
    invoke-virtual { p1, p0 }, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
  :L5
  .line 11
    invoke-static { p0 }, Landroidx/core/view/v;->f0(Landroid/view/View;)V
  :L6
    return-void
.end method

.method public setStatusBarBackgroundColor(I)V
  .registers 3
  .line 1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;
    invoke-direct { v0, p1 }, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V
    invoke-virtual { p0, v0 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V
    return-void
.end method

.method public setStatusBarBackgroundResource(I)V
  .registers 3
    if-eqz p1, :L0
  .line 1
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-static { v0, p1 }, Landroidx/core/content/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    move-result-object p1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    invoke-virtual { p0, p1 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V
    return-void
.end method

.method public setVisibility(I)V
  .registers 4
  .line 1
    invoke-super { p0, p1 }, Landroid/view/ViewGroup;->setVisibility(I)V
    const/4 v0, 0
    if-nez p1, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
  .line 2
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->r:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :L2
    invoke-virtual { v1 }, Landroid/graphics/drawable/Drawable;->isVisible()Z
    move-result v1
    if-eq v1, p1, :L2
  .line 3
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->r:Landroid/graphics/drawable/Drawable;
    invoke-virtual { v1, p1, v0 }, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z
  :L2
    return-void
.end method

.method t(Landroid/view/View;Landroid/graphics/Rect;)V
  .registers 3
  .line 1
    invoke-static { p0, p1, p2 }, Landroidx/coordinatorlayout/widget/b;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V
    return-void
.end method

.method u(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
  .registers 16
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;
  .line 2
    invoke-virtual { p1 }, Landroid/view/View;->getMeasuredWidth()I
    move-result v9
  .line 3
    invoke-virtual { p1 }, Landroid/view/View;->getMeasuredHeight()I
    move-result v10
    move-object v1, p0
    move-object v2, p1
    move v3, p2
    move-object v4, p3
    move-object v5, p4
    move-object v6, v0
    move v7, v9
    move v8, v10
  .line 4
    invoke-direct/range { v1 .. v8 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->v(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;II)V
  .line 5
    invoke-direct { p0, v0, p4, v9, v10 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->d(Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;Landroid/graphics/Rect;II)V
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
  .registers 3
  .line 1
    invoke-super { p0, p1 }, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    move-result v0
    if-nez v0, :L1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->r:Landroid/graphics/drawable/Drawable;
    if-ne p1, v0, :L0
    goto :L1
  :L0
    const/4 p1, 0
    goto :L2
  :L1
    const/4 p1, 1
  :L2
    return p1
.end method

.method x(Landroid/view/View;Landroid/graphics/Rect;)V
  .registers 3
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object p1
    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;
  .line 2
    invoke-virtual { p1 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->h()Landroid/graphics/Rect;
    move-result-object p1
    invoke-virtual { p2, p1 }, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    return-void
.end method

.method y(Landroid/view/View;)Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;
  .catch Ljava/lang/Exception; { :L3 .. :L4 } :L5
  .registers 7
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;
  .line 2
    iget-boolean v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->b:Z
    if-nez v1, :L7
  .line 3
    instance-of v1, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;
    const/4 v2, 1
    if-eqz v1, :L0
  .line 4
    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;
    invoke-interface { p1 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
    move-result-object p1
  .line 5
    invoke-virtual { v0, p1 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->o(Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;)V
  .line 6
    iput-boolean v2, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->b:Z
    goto :L7
  :L0
  .line 7
    invoke-virtual { p1 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object p1
    const/4 v1, 0
  :L1
    if-eqz p1, :L2
  .line 8
    const-class v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$d;
  .line 9
    invoke-virtual { p1, v1 }, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    move-result-object v1
    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$d;
    if-nez v1, :L2
  .line 10
    invoke-virtual { p1 }, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
    move-result-object p1
    goto :L1
  :L2
    if-eqz v1, :L6
  :L3
  .line 11
    invoke-interface { v1 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$d;->value()Ljava/lang/Class;
    move-result-object p1
    const/4 v3, 0
    new-array v4, v3, [Ljava/lang/Class;
    invoke-virtual { p1, v4 }, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    move-result-object p1
    new-array v3, v3, [Ljava/lang/Object;
    invoke-virtual { p1, v3 }, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
  .line 12
    invoke-virtual { v0, p1 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->o(Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;)V
  :L4
    goto :L6
  :L5
  .line 13
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "Default behavior class "
    invoke-virtual { p1, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-interface { v1 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$d;->value()Ljava/lang/Class;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/Class;->getName()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { p1, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, " could not be instantiated. Did you forget a default constructor?"
    invoke-virtual { p1, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L6
  .line 14
    iput-boolean v2, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->b:Z
  :L7
    return-object v0
.end method
