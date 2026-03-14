.class public Lcom/google/android/material/button/MaterialButtonToggleGroup;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcom/google/android/material/button/MaterialButtonToggleGroup$d;,
    Lcom/google/android/material/button/MaterialButtonToggleGroup$f;,
    Lcom/google/android/material/button/MaterialButtonToggleGroup$c;,
    Lcom/google/android/material/button/MaterialButtonToggleGroup$e;
  }
.end annotation

.field private final static l:Ljava/lang/String;

.field private final static m:I

.field private final b:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List<",
      "Lcom/google/android/material/button/MaterialButtonToggleGroup$d;",
      ">;"
    }
  .end annotation
.end field

.field private final c:Lcom/google/android/material/button/MaterialButtonToggleGroup$c;

.field private final d:Lcom/google/android/material/button/MaterialButtonToggleGroup$f;

.field private final e:Ljava/util/LinkedHashSet;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/LinkedHashSet<",
      "Lcom/google/android/material/button/MaterialButtonToggleGroup$e;",
      ">;"
    }
  .end annotation
.end field

.field private final f:Ljava/util/Comparator;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/Comparator<",
      "Lcom/google/android/material/button/MaterialButton;",
      ">;"
    }
  .end annotation
.end field

.field private g:[Ljava/lang/Integer;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:I

.method static constructor <clinit>()V
  .registers 3
  .line 1
    const-class v0, Lcom/google/android/material/button/MaterialButtonToggleGroup;
    invoke-virtual { v0 }, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
    move-result-object v0
    sput-object v0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->l:Ljava/lang/String;
  .line 2
    sget v0, Ld/c/a/a/j;->Widget_MaterialComponents_MaterialButtonToggleGroup:I
    sput v0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->m:I
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 4
  .line 1
    sget v0, Ld/c/a/a/b;->materialButtonToggleGroupStyle:I
    invoke-direct { p0, p1, p2, v0 }, Lcom/google/android/material/button/MaterialButtonToggleGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .registers 10
  .line 2
    sget v0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->m:I
    invoke-static { p1, p2, p3, v0 }, Lcom/google/android/material/theme/a/a;->c(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;
    move-result-object p1
    invoke-direct { p0, p1, p2, p3 }, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .line 3
    new-instance p1, Ljava/util/ArrayList;
    invoke-direct { p1 }, Ljava/util/ArrayList;-><init>()V
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->b:Ljava/util/List;
  .line 4
    new-instance p1, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;
    const/4 v0, 0
    invoke-direct { p1, p0, v0 }, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;-><init>(Lcom/google/android/material/button/MaterialButtonToggleGroup;Lcom/google/android/material/button/MaterialButtonToggleGroup$a;)V
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->c:Lcom/google/android/material/button/MaterialButtonToggleGroup$c;
  .line 5
    new-instance p1, Lcom/google/android/material/button/MaterialButtonToggleGroup$f;
    invoke-direct { p1, p0, v0 }, Lcom/google/android/material/button/MaterialButtonToggleGroup$f;-><init>(Lcom/google/android/material/button/MaterialButtonToggleGroup;Lcom/google/android/material/button/MaterialButtonToggleGroup$a;)V
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->d:Lcom/google/android/material/button/MaterialButtonToggleGroup$f;
  .line 6
    new-instance p1, Ljava/util/LinkedHashSet;
    invoke-direct { p1 }, Ljava/util/LinkedHashSet;-><init>()V
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->e:Ljava/util/LinkedHashSet;
  .line 7
    new-instance p1, Lcom/google/android/material/button/MaterialButtonToggleGroup$a;
    invoke-direct { p1, p0 }, Lcom/google/android/material/button/MaterialButtonToggleGroup$a;-><init>(Lcom/google/android/material/button/MaterialButtonToggleGroup;)V
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->f:Ljava/util/Comparator;
    const/4 p1, 0
  .line 8
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->h:Z
  .line 9
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;
    move-result-object v0
  .line 10
    sget-object v2, Ld/c/a/a/k;->MaterialButtonToggleGroup:[I
    sget v4, Lcom/google/android/material/button/MaterialButtonToggleGroup;->m:I
    new-array v5, p1, [I
    move-object v1, p2
    move v3, p3
  .line 11
    invoke-static/range { v0 .. v5 }, Lcom/google/android/material/internal/j;->h(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;
    move-result-object p2
  .line 12
    sget p3, Ld/c/a/a/k;->MaterialButtonToggleGroup_singleSelection:I
  .line 13
    invoke-virtual { p2, p3, p1 }, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    move-result p3
  .line 14
    invoke-virtual { p0, p3 }, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setSingleSelection(Z)V
  .line 15
    sget p3, Ld/c/a/a/k;->MaterialButtonToggleGroup_checkedButton:I
    const/4 v0, -1
  .line 16
    invoke-virtual { p2, p3, v0 }, Landroid/content/res/TypedArray;->getResourceId(II)I
    move-result p3
    iput p3, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->k:I
  .line 17
    sget p3, Ld/c/a/a/k;->MaterialButtonToggleGroup_selectionRequired:I
  .line 18
    invoke-virtual { p2, p3, p1 }, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    move-result p1
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->j:Z
    const/4 p1, 1
  .line 19
    invoke-virtual { p0, p1 }, Landroid/widget/LinearLayout;->setChildrenDrawingOrderEnabled(Z)V
  .line 20
    invoke-virtual { p2 }, Landroid/content/res/TypedArray;->recycle()V
  .line 21
    invoke-static { p0, p1 }, Landroidx/core/view/v;->x0(Landroid/view/View;I)V
    return-void
.end method

.method static synthetic a(Lcom/google/android/material/button/MaterialButtonToggleGroup;Landroid/view/View;)I
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Lcom/google/android/material/button/MaterialButtonToggleGroup;->n(Landroid/view/View;)I
    move-result p0
    return p0
.end method

.method static synthetic b(Lcom/google/android/material/button/MaterialButtonToggleGroup;)Z
  .registers 1
  .line 1
    iget-boolean p0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->h:Z
    return p0
.end method

.method static synthetic c(Lcom/google/android/material/button/MaterialButtonToggleGroup;)Z
  .registers 1
  .line 1
    iget-boolean p0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->i:Z
    return p0
.end method

.method static synthetic d(Lcom/google/android/material/button/MaterialButtonToggleGroup;I)I
  .registers 2
  .line 1
    iput p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->k:I
    return p1
.end method

.method static synthetic e(Lcom/google/android/material/button/MaterialButtonToggleGroup;IZ)Z
  .registers 3
  .line 1
    invoke-direct { p0, p1, p2 }, Lcom/google/android/material/button/MaterialButtonToggleGroup;->u(IZ)Z
    move-result p0
    return p0
.end method

.method static synthetic f(Lcom/google/android/material/button/MaterialButtonToggleGroup;IZ)V
  .registers 3
  .line 1
    invoke-direct { p0, p1, p2 }, Lcom/google/android/material/button/MaterialButtonToggleGroup;->l(IZ)V
    return-void
.end method

.method private getFirstVisibleChildIndex()I
  .registers 4
  .line 1
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getChildCount()I
    move-result v0
    const/4 v1, 0
  :L0
    if-ge v1, v0, :L2
  .line 2
    invoke-direct { p0, v1 }, Lcom/google/android/material/button/MaterialButtonToggleGroup;->p(I)Z
    move-result v2
    if-eqz v2, :L1
    return v1
  :L1
    add-int/lit8 v1, v1, 1
    goto :L0
  :L2
    const/4 v0, -1
    return v0
.end method

.method private getLastVisibleChildIndex()I
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getChildCount()I
    move-result v0
    add-int/lit8 v0, v0, -1
  :L0
    if-ltz v0, :L2
  .line 2
    invoke-direct { p0, v0 }, Lcom/google/android/material/button/MaterialButtonToggleGroup;->p(I)Z
    move-result v1
    if-eqz v1, :L1
    return v0
  :L1
    add-int/lit8 v0, v0, -1
    goto :L0
  :L2
    const/4 v0, -1
    return v0
.end method

.method private getVisibleButtonCount()I
  .registers 4
    const/4 v0, 0
    const/4 v1, 0
  :L0
  .line 1
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getChildCount()I
    move-result v2
    if-ge v0, v2, :L2
  .line 2
    invoke-virtual { p0, v0 }, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;
    move-result-object v2
    instance-of v2, v2, Lcom/google/android/material/button/MaterialButton;
    if-eqz v2, :L1
    invoke-direct { p0, v0 }, Lcom/google/android/material/button/MaterialButtonToggleGroup;->p(I)Z
    move-result v2
    if-eqz v2, :L1
    add-int/lit8 v1, v1, 1
  :L1
    add-int/lit8 v0, v0, 1
    goto :L0
  :L2
    return v1
.end method

.method private h()V
  .registers 8
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getFirstVisibleChildIndex()I
    move-result v0
    const/4 v1, -1
    if-ne v0, v1, :L0
    return-void
  :L0
    add-int/lit8 v1, v0, 1
  :L1
  .line 2
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getChildCount()I
    move-result v2
    if-ge v1, v2, :L4
  .line 3
    invoke-direct { p0, v1 }, Lcom/google/android/material/button/MaterialButtonToggleGroup;->m(I)Lcom/google/android/material/button/MaterialButton;
    move-result-object v2
    add-int/lit8 v3, v1, -1
  .line 4
    invoke-direct { p0, v3 }, Lcom/google/android/material/button/MaterialButtonToggleGroup;->m(I)Lcom/google/android/material/button/MaterialButton;
    move-result-object v3
  .line 5
    invoke-virtual { v2 }, Lcom/google/android/material/button/MaterialButton;->getStrokeWidth()I
    move-result v4
    invoke-virtual { v3 }, Lcom/google/android/material/button/MaterialButton;->getStrokeWidth()I
    move-result v3
    invoke-static { v4, v3 }, Ljava/lang/Math;->min(II)I
    move-result v3
  .line 6
    invoke-direct { p0, v2 }, Lcom/google/android/material/button/MaterialButtonToggleGroup;->i(Landroid/view/View;)Landroid/widget/LinearLayout$LayoutParams;
    move-result-object v4
  .line 7
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getOrientation()I
    move-result v5
    const/4 v6, 0
    if-nez v5, :L2
  .line 8
    invoke-static { v4, v6 }, Landroidx/core/view/h;->c(Landroid/view/ViewGroup$MarginLayoutParams;I)V
    neg-int v3, v3
  .line 9
    invoke-static { v4, v3 }, Landroidx/core/view/h;->d(Landroid/view/ViewGroup$MarginLayoutParams;I)V
  .line 10
    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I
    goto :L3
  :L2
  .line 11
    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I
    neg-int v3, v3
  .line 12
    iput v3, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I
  .line 13
    invoke-static { v4, v6 }, Landroidx/core/view/h;->d(Landroid/view/ViewGroup$MarginLayoutParams;I)V
  :L3
  .line 14
    invoke-virtual { v2, v4 }, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    add-int/lit8 v1, v1, 1
    goto :L1
  :L4
  .line 15
    invoke-direct { p0, v0 }, Lcom/google/android/material/button/MaterialButtonToggleGroup;->r(I)V
    return-void
.end method

.method private i(Landroid/view/View;)Landroid/widget/LinearLayout$LayoutParams;
  .registers 4
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object p1
  .line 2
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v0, :L0
  .line 3
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;
    return-object p1
  :L0
  .line 4
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;
    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I
    invoke-direct { v0, v1, p1 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
    return-object v0
.end method

.method private j(IZ)V
  .registers 3
  .line 1
    invoke-virtual { p0, p1 }, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
    move-result-object p1
    check-cast p1, Lcom/google/android/material/button/MaterialButton;
    if-eqz p1, :L0
  .line 2
    invoke-virtual { p1, p2 }, Lcom/google/android/material/button/MaterialButton;->setChecked(Z)V
  :L0
    return-void
.end method

.method private l(IZ)V
  .registers 5
  .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->e:Ljava/util/LinkedHashSet;
    invoke-virtual { v0 }, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcom/google/android/material/button/MaterialButtonToggleGroup$e;
  .line 2
    invoke-interface { v1, p0, p1, p2 }, Lcom/google/android/material/button/MaterialButtonToggleGroup$e;->a(Lcom/google/android/material/button/MaterialButtonToggleGroup;IZ)V
    goto :L0
  :L1
    return-void
.end method

.method private m(I)Lcom/google/android/material/button/MaterialButton;
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;
    move-result-object p1
    check-cast p1, Lcom/google/android/material/button/MaterialButton;
    return-object p1
.end method

.method private n(Landroid/view/View;)I
  .registers 6
  .line 1
    instance-of v0, p1, Lcom/google/android/material/button/MaterialButton;
    const/4 v1, -1
    if-nez v0, :L0
    return v1
  :L0
    const/4 v0, 0
    const/4 v2, 0
  :L1
  .line 2
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getChildCount()I
    move-result v3
    if-ge v0, v3, :L4
  .line 3
    invoke-virtual { p0, v0 }, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;
    move-result-object v3
    if-ne v3, p1, :L2
    return v2
  :L2
  .line 4
    invoke-virtual { p0, v0 }, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;
    move-result-object v3
    instance-of v3, v3, Lcom/google/android/material/button/MaterialButton;
    if-eqz v3, :L3
    invoke-direct { p0, v0 }, Lcom/google/android/material/button/MaterialButtonToggleGroup;->p(I)Z
    move-result v3
    if-eqz v3, :L3
    add-int/lit8 v2, v2, 1
  :L3
    add-int/lit8 v0, v0, 1
    goto :L1
  :L4
    return v1
.end method

.method private o(III)Lcom/google/android/material/button/MaterialButtonToggleGroup$d;
  .registers 6
  .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->b:Ljava/util/List;
    invoke-interface { v0, p1 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/google/android/material/button/MaterialButtonToggleGroup$d;
    if-ne p2, p3, :L0
    return-object v0
  :L0
  .line 2
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getOrientation()I
    move-result v1
    if-nez v1, :L1
    const/4 v1, 1
    goto :L2
  :L1
    const/4 v1, 0
  :L2
    if-ne p1, p2, :L5
    if-eqz v1, :L3
  .line 3
    invoke-static { v0, p0 }, Lcom/google/android/material/button/MaterialButtonToggleGroup$d;->e(Lcom/google/android/material/button/MaterialButtonToggleGroup$d;Landroid/view/View;)Lcom/google/android/material/button/MaterialButtonToggleGroup$d;
    move-result-object p1
    goto :L4
  :L3
    invoke-static { v0 }, Lcom/google/android/material/button/MaterialButtonToggleGroup$d;->f(Lcom/google/android/material/button/MaterialButtonToggleGroup$d;)Lcom/google/android/material/button/MaterialButtonToggleGroup$d;
    move-result-object p1
  :L4
    return-object p1
  :L5
    if-ne p1, p3, :L8
    if-eqz v1, :L6
  .line 4
    invoke-static { v0, p0 }, Lcom/google/android/material/button/MaterialButtonToggleGroup$d;->b(Lcom/google/android/material/button/MaterialButtonToggleGroup$d;Landroid/view/View;)Lcom/google/android/material/button/MaterialButtonToggleGroup$d;
    move-result-object p1
    goto :L7
  :L6
    invoke-static { v0 }, Lcom/google/android/material/button/MaterialButtonToggleGroup$d;->a(Lcom/google/android/material/button/MaterialButtonToggleGroup$d;)Lcom/google/android/material/button/MaterialButtonToggleGroup$d;
    move-result-object p1
  :L7
    return-object p1
  :L8
    const/4 p1, 0
    return-object p1
.end method

.method private p(I)Z
  .registers 3
  .line 1
    invoke-virtual { p0, p1 }, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;
    move-result-object p1
  .line 2
    invoke-virtual { p1 }, Landroid/view/View;->getVisibility()I
    move-result p1
    const/16 v0, 8
    if-eq p1, v0, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    return p1
.end method

.method private r(I)V
  .registers 5
  .line 1
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getChildCount()I
    move-result v0
    if-eqz v0, :L2
    const/4 v0, -1
    if-ne p1, v0, :L0
    goto :L2
  :L0
  .line 2
    invoke-direct { p0, p1 }, Lcom/google/android/material/button/MaterialButtonToggleGroup;->m(I)Lcom/google/android/material/button/MaterialButton;
    move-result-object p1
  .line 3
    invoke-virtual { p1 }, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object p1
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;
  .line 4
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getOrientation()I
    move-result v0
    const/4 v1, 1
    const/4 v2, 0
    if-ne v0, v1, :L1
  .line 5
    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I
  .line 6
    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I
    return-void
  :L1
  .line 7
    invoke-static { p1, v2 }, Landroidx/core/view/h;->c(Landroid/view/ViewGroup$MarginLayoutParams;I)V
  .line 8
    invoke-static { p1, v2 }, Landroidx/core/view/h;->d(Landroid/view/ViewGroup$MarginLayoutParams;I)V
  .line 9
    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I
  .line 10
    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I
  :L2
    return-void
.end method

.method private s(IZ)V
  .registers 4
  .line 1
    invoke-virtual { p0, p1 }, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
    move-result-object p1
  .line 2
    instance-of v0, p1, Lcom/google/android/material/button/MaterialButton;
    if-eqz v0, :L0
    const/4 v0, 1
  .line 3
    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->h:Z
  .line 4
    check-cast p1, Lcom/google/android/material/button/MaterialButton;
    invoke-virtual { p1, p2 }, Lcom/google/android/material/button/MaterialButton;->setChecked(Z)V
    const/4 p1, 0
  .line 5
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->h:Z
  :L0
    return-void
.end method

.method private setCheckedId(I)V
  .registers 3
  .line 1
    iput p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->k:I
    const/4 v0, 1
  .line 2
    invoke-direct { p0, p1, v0 }, Lcom/google/android/material/button/MaterialButtonToggleGroup;->l(IZ)V
    return-void
.end method

.method private setGeneratedIdIfNeeded(Lcom/google/android/material/button/MaterialButton;)V
  .registers 4
  .line 1
    invoke-virtual { p1 }, Landroid/widget/Button;->getId()I
    move-result v0
    const/4 v1, -1
    if-ne v0, v1, :L0
  .line 2
    invoke-static { }, Landroidx/core/view/v;->k()I
    move-result v0
    invoke-virtual { p1, v0 }, Landroid/widget/Button;->setId(I)V
  :L0
    return-void
.end method

.method private setupButtonChild(Lcom/google/android/material/button/MaterialButton;)V
  .registers 4
    const/4 v0, 1
  .line 1
    invoke-virtual { p1, v0 }, Landroid/widget/Button;->setMaxLines(I)V
  .line 2
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;
    invoke-virtual { p1, v1 }, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
  .line 3
    invoke-virtual { p1, v0 }, Lcom/google/android/material/button/MaterialButton;->setCheckable(Z)V
  .line 4
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->c:Lcom/google/android/material/button/MaterialButtonToggleGroup$c;
    invoke-virtual { p1, v1 }, Lcom/google/android/material/button/MaterialButton;->a(Lcom/google/android/material/button/MaterialButton$a;)V
  .line 5
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->d:Lcom/google/android/material/button/MaterialButtonToggleGroup$f;
    invoke-virtual { p1, v1 }, Lcom/google/android/material/button/MaterialButton;->setOnPressedChangeListenerInternal(Lcom/google/android/material/button/MaterialButton$b;)V
  .line 6
    invoke-virtual { p1, v0 }, Lcom/google/android/material/button/MaterialButton;->setShouldDrawSurfaceColorStroke(Z)V
    return-void
.end method

.method private static t(Ld/c/a/a/a0/k$b;Lcom/google/android/material/button/MaterialButtonToggleGroup$d;)V
  .registers 3
    if-nez p1, :L0
    const/4 p1, 0
  .line 1
    invoke-virtual { p0, p1 }, Ld/c/a/a/a0/k$b;->o(F)Ld/c/a/a/a0/k$b;
    return-void
  :L0
  .line 2
    iget-object v0, p1, Lcom/google/android/material/button/MaterialButtonToggleGroup$d;->a:Ld/c/a/a/a0/c;
  .line 3
    invoke-virtual { p0, v0 }, Ld/c/a/a/a0/k$b;->B(Ld/c/a/a/a0/c;)Ld/c/a/a/a0/k$b;
    iget-object v0, p1, Lcom/google/android/material/button/MaterialButtonToggleGroup$d;->d:Ld/c/a/a/a0/c;
  .line 4
    invoke-virtual { p0, v0 }, Ld/c/a/a/a0/k$b;->t(Ld/c/a/a/a0/c;)Ld/c/a/a/a0/k$b;
    iget-object v0, p1, Lcom/google/android/material/button/MaterialButtonToggleGroup$d;->b:Ld/c/a/a/a0/c;
  .line 5
    invoke-virtual { p0, v0 }, Ld/c/a/a/a0/k$b;->F(Ld/c/a/a/a0/c;)Ld/c/a/a/a0/k$b;
    iget-object p1, p1, Lcom/google/android/material/button/MaterialButtonToggleGroup$d;->c:Ld/c/a/a/a0/c;
  .line 6
    invoke-virtual { p0, p1 }, Ld/c/a/a/a0/k$b;->x(Ld/c/a/a/a0/c;)Ld/c/a/a/a0/k$b;
    return-void
.end method

.method private u(IZ)Z
  .registers 7
  .line 1
    invoke-virtual { p0 }, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getCheckedButtonIds()Ljava/util/List;
    move-result-object v0
  .line 2
    iget-boolean v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->j:Z
    const/4 v2, 1
    const/4 v3, 0
    if-eqz v1, :L0
    invoke-interface { v0 }, Ljava/util/List;->isEmpty()Z
    move-result v1
    if-eqz v1, :L0
  .line 3
    invoke-direct { p0, p1, v2 }, Lcom/google/android/material/button/MaterialButtonToggleGroup;->s(IZ)V
  .line 4
    iput p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->k:I
    return v3
  :L0
    if-eqz p2, :L2
  .line 5
    iget-boolean p2, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->i:Z
    if-eqz p2, :L2
  .line 6
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p1
    invoke-interface { v0, p1 }, Ljava/util/List;->remove(Ljava/lang/Object;)Z
  .line 7
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object p1
  :L1
    invoke-interface { p1 }, Ljava/util/Iterator;->hasNext()Z
    move-result p2
    if-eqz p2, :L2
    invoke-interface { p1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object p2
    check-cast p2, Ljava/lang/Integer;
    invoke-virtual { p2 }, Ljava/lang/Integer;->intValue()I
    move-result p2
  .line 8
    invoke-direct { p0, p2, v3 }, Lcom/google/android/material/button/MaterialButtonToggleGroup;->s(IZ)V
  .line 9
    invoke-direct { p0, p2, v3 }, Lcom/google/android/material/button/MaterialButtonToggleGroup;->l(IZ)V
    goto :L1
  :L2
    return v2
.end method

.method private v()V
  .registers 7
  .line 1
    new-instance v0, Ljava/util/TreeMap;
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->f:Ljava/util/Comparator;
    invoke-direct { v0, v1 }, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V
  .line 2
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getChildCount()I
    move-result v1
    const/4 v2, 0
    const/4 v3, 0
  :L0
    if-ge v3, v1, :L1
  .line 3
    invoke-direct { p0, v3 }, Lcom/google/android/material/button/MaterialButtonToggleGroup;->m(I)Lcom/google/android/material/button/MaterialButton;
    move-result-object v4
    invoke-static { v3 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    invoke-interface { v0, v4, v5 }, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    add-int/lit8 v3, v3, 1
    goto :L0
  :L1
  .line 4
    invoke-interface { v0 }, Ljava/util/SortedMap;->values()Ljava/util/Collection;
    move-result-object v0
    new-array v1, v2, [Ljava/lang/Integer;
    invoke-interface { v0, v1 }, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    move-result-object v0
    check-cast v0, [Ljava/lang/Integer;
    iput-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->g:[Ljava/lang/Integer;
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
  .registers 8
  .line 1
    instance-of v0, p1, Lcom/google/android/material/button/MaterialButton;
    if-nez v0, :L0
    return-void
  :L0
  .line 2
    invoke-super { p0, p1, p2, p3 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
  .line 3
    check-cast p1, Lcom/google/android/material/button/MaterialButton;
  .line 4
    invoke-direct { p0, p1 }, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setGeneratedIdIfNeeded(Lcom/google/android/material/button/MaterialButton;)V
  .line 5
    invoke-direct { p0, p1 }, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setupButtonChild(Lcom/google/android/material/button/MaterialButton;)V
  .line 6
    invoke-virtual { p1 }, Lcom/google/android/material/button/MaterialButton;->isChecked()Z
    move-result p2
    if-eqz p2, :L1
  .line 7
    invoke-virtual { p1 }, Landroid/widget/Button;->getId()I
    move-result p2
    const/4 p3, 1
    invoke-direct { p0, p2, p3 }, Lcom/google/android/material/button/MaterialButtonToggleGroup;->u(IZ)Z
  .line 8
    invoke-virtual { p1 }, Landroid/widget/Button;->getId()I
    move-result p2
    invoke-direct { p0, p2 }, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setCheckedId(I)V
  :L1
  .line 9
    invoke-virtual { p1 }, Lcom/google/android/material/button/MaterialButton;->getShapeAppearanceModel()Ld/c/a/a/a0/k;
    move-result-object p2
  .line 10
    iget-object p3, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->b:Ljava/util/List;
    new-instance v0, Lcom/google/android/material/button/MaterialButtonToggleGroup$d;
  .line 11
    invoke-virtual { p2 }, Ld/c/a/a/a0/k;->r()Ld/c/a/a/a0/c;
    move-result-object v1
  .line 12
    invoke-virtual { p2 }, Ld/c/a/a/a0/k;->j()Ld/c/a/a/a0/c;
    move-result-object v2
  .line 13
    invoke-virtual { p2 }, Ld/c/a/a/a0/k;->t()Ld/c/a/a/a0/c;
    move-result-object v3
  .line 14
    invoke-virtual { p2 }, Ld/c/a/a/a0/k;->l()Ld/c/a/a/a0/c;
    move-result-object p2
    invoke-direct { v0, v1, v2, v3, p2 }, Lcom/google/android/material/button/MaterialButtonToggleGroup$d;-><init>(Ld/c/a/a/a0/c;Ld/c/a/a/a0/c;Ld/c/a/a/a0/c;Ld/c/a/a/a0/c;)V
  .line 15
    invoke-interface { p3, v0 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 16
    new-instance p2, Lcom/google/android/material/button/MaterialButtonToggleGroup$b;
    invoke-direct { p2, p0 }, Lcom/google/android/material/button/MaterialButtonToggleGroup$b;-><init>(Lcom/google/android/material/button/MaterialButtonToggleGroup;)V
    invoke-static { p1, p2 }, Landroidx/core/view/v;->o0(Landroid/view/View;Landroidx/core/view/a;)V
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/button/MaterialButtonToggleGroup;->v()V
  .line 2
    invoke-super { p0, p1 }, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V
    return-void
.end method

.method public g(Lcom/google/android/material/button/MaterialButtonToggleGroup$e;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->e:Ljava/util/LinkedHashSet;
    invoke-virtual { v0, p1 }, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
  .registers 2
  .line 1
    const-class v0, Lcom/google/android/material/button/MaterialButtonToggleGroup;
    invoke-virtual { v0 }, Ljava/lang/Class;->getName()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public getCheckedButtonId()I
  .registers 2
  .line 1
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->i:Z
    if-eqz v0, :L0
    iget v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->k:I
    goto :L1
  :L0
    const/4 v0, -1
  :L1
    return v0
.end method

.method public getCheckedButtonIds()Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Ljava/util/List<",
      "Ljava/lang/Integer;",
      ">;"
    }
  .end annotation
  .registers 5
  .line 1
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    const/4 v1, 0
  :L0
  .line 2
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getChildCount()I
    move-result v2
    if-ge v1, v2, :L2
  .line 3
    invoke-direct { p0, v1 }, Lcom/google/android/material/button/MaterialButtonToggleGroup;->m(I)Lcom/google/android/material/button/MaterialButton;
    move-result-object v2
  .line 4
    invoke-virtual { v2 }, Lcom/google/android/material/button/MaterialButton;->isChecked()Z
    move-result v3
    if-eqz v3, :L1
  .line 5
    invoke-virtual { v2 }, Landroid/widget/Button;->getId()I
    move-result v2
    invoke-static { v2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    invoke-interface { v0, v2 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  :L1
    add-int/lit8 v1, v1, 1
    goto :L0
  :L2
    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
  .registers 4
  .line 1
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->g:[Ljava/lang/Integer;
    if-eqz p1, :L1
    array-length v0, p1
    if-lt p2, v0, :L0
    goto :L1
  :L0
  .line 2
    aget-object p1, p1, p2
    invoke-virtual { p1 }, Ljava/lang/Integer;->intValue()I
    move-result p1
    return p1
  :L1
    return p2
.end method

.method public k()V
  .registers 4
    const/4 v0, 1
  .line 1
    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->h:Z
    const/4 v0, 0
    const/4 v1, 0
  :L0
  .line 2
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getChildCount()I
    move-result v2
    if-ge v1, v2, :L1
  .line 3
    invoke-direct { p0, v1 }, Lcom/google/android/material/button/MaterialButtonToggleGroup;->m(I)Lcom/google/android/material/button/MaterialButton;
    move-result-object v2
  .line 4
    invoke-virtual { v2, v0 }, Lcom/google/android/material/button/MaterialButton;->setChecked(Z)V
  .line 5
    invoke-virtual { v2 }, Landroid/widget/Button;->getId()I
    move-result v2
    invoke-direct { p0, v2, v0 }, Lcom/google/android/material/button/MaterialButtonToggleGroup;->l(IZ)V
    add-int/lit8 v1, v1, 1
    goto :L0
  :L1
  .line 6
    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->h:Z
    const/4 v0, -1
  .line 7
    invoke-direct { p0, v0 }, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setCheckedId(I)V
    return-void
.end method

.method protected onFinishInflate()V
  .registers 3
  .line 1
    invoke-super { p0 }, Landroid/widget/LinearLayout;->onFinishInflate()V
  .line 2
    iget v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->k:I
    const/4 v1, -1
    if-eq v0, v1, :L0
    const/4 v1, 1
  .line 3
    invoke-direct { p0, v0, v1 }, Lcom/google/android/material/button/MaterialButtonToggleGroup;->j(IZ)V
  :L0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
  .registers 6
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
  .line 2
    invoke-static { p1 }, Landroidx/core/view/e0/c;->v0(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/e0/c;
    move-result-object p1
  .line 3
    invoke-direct { p0 }, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getVisibleButtonCount()I
    move-result v0
  .line 4
    invoke-virtual { p0 }, Lcom/google/android/material/button/MaterialButtonToggleGroup;->q()Z
    move-result v1
    const/4 v2, 1
    if-eqz v1, :L0
    const/4 v1, 1
    goto :L1
  :L0
    const/4 v1, 2
  :L1
    const/4 v3, 0
  .line 5
    invoke-static { v2, v0, v3, v1 }, Landroidx/core/view/e0/c$b;->a(IIZI)Landroidx/core/view/e0/c$b;
    move-result-object v0
  .line 6
    invoke-virtual { p1, v0 }, Landroidx/core/view/e0/c;->Y(Ljava/lang/Object;)V
    return-void
.end method

.method protected onMeasure(II)V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Lcom/google/android/material/button/MaterialButtonToggleGroup;->w()V
  .line 2
    invoke-direct { p0 }, Lcom/google/android/material/button/MaterialButtonToggleGroup;->h()V
  .line 3
    invoke-super { p0, p1, p2 }, Landroid/widget/LinearLayout;->onMeasure(II)V
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
  .registers 4
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/LinearLayout;->onViewRemoved(Landroid/view/View;)V
  .line 2
    instance-of v0, p1, Lcom/google/android/material/button/MaterialButton;
    if-eqz v0, :L0
  .line 3
    move-object v0, p1
    check-cast v0, Lcom/google/android/material/button/MaterialButton;
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->c:Lcom/google/android/material/button/MaterialButtonToggleGroup$c;
    invoke-virtual { v0, v1 }, Lcom/google/android/material/button/MaterialButton;->h(Lcom/google/android/material/button/MaterialButton$a;)V
    const/4 v1, 0
  .line 4
    invoke-virtual { v0, v1 }, Lcom/google/android/material/button/MaterialButton;->setOnPressedChangeListenerInternal(Lcom/google/android/material/button/MaterialButton$b;)V
  :L0
  .line 5
    invoke-virtual { p0, p1 }, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I
    move-result p1
    if-ltz p1, :L1
  .line 6
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->b:Ljava/util/List;
    invoke-interface { v0, p1 }, Ljava/util/List;->remove(I)Ljava/lang/Object;
  :L1
  .line 7
    invoke-virtual { p0 }, Lcom/google/android/material/button/MaterialButtonToggleGroup;->w()V
  .line 8
    invoke-direct { p0 }, Lcom/google/android/material/button/MaterialButtonToggleGroup;->h()V
    return-void
.end method

.method public q()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->i:Z
    return v0
.end method

.method public setSelectionRequired(Z)V
  .registers 2
  .line 1
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->j:Z
    return-void
.end method

.method public setSingleSelection(I)V
  .registers 3
  .line 4
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    invoke-virtual { v0, p1 }, Landroid/content/res/Resources;->getBoolean(I)Z
    move-result p1
    invoke-virtual { p0, p1 }, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setSingleSelection(Z)V
    return-void
.end method

.method public setSingleSelection(Z)V
  .registers 3
  .line 1
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->i:Z
    if-eq v0, p1, :L0
  .line 2
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->i:Z
  .line 3
    invoke-virtual { p0 }, Lcom/google/android/material/button/MaterialButtonToggleGroup;->k()V
  :L0
    return-void
.end method

.method w()V
  .registers 8
  .line 1
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getChildCount()I
    move-result v0
  .line 2
    invoke-direct { p0 }, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getFirstVisibleChildIndex()I
    move-result v1
  .line 3
    invoke-direct { p0 }, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getLastVisibleChildIndex()I
    move-result v2
    const/4 v3, 0
  :L0
    if-ge v3, v0, :L3
  .line 4
    invoke-direct { p0, v3 }, Lcom/google/android/material/button/MaterialButtonToggleGroup;->m(I)Lcom/google/android/material/button/MaterialButton;
    move-result-object v4
  .line 5
    invoke-virtual { v4 }, Landroid/widget/Button;->getVisibility()I
    move-result v5
    const/16 v6, 8
    if-ne v5, v6, :L1
    goto :L2
  :L1
  .line 6
    invoke-virtual { v4 }, Lcom/google/android/material/button/MaterialButton;->getShapeAppearanceModel()Ld/c/a/a/a0/k;
    move-result-object v5
    invoke-virtual { v5 }, Ld/c/a/a/a0/k;->v()Ld/c/a/a/a0/k$b;
    move-result-object v5
  .line 7
    invoke-direct { p0, v3, v1, v2 }, Lcom/google/android/material/button/MaterialButtonToggleGroup;->o(III)Lcom/google/android/material/button/MaterialButtonToggleGroup$d;
    move-result-object v6
  .line 8
    invoke-static { v5, v6 }, Lcom/google/android/material/button/MaterialButtonToggleGroup;->t(Ld/c/a/a/a0/k$b;Lcom/google/android/material/button/MaterialButtonToggleGroup$d;)V
  .line 9
    invoke-virtual { v5 }, Ld/c/a/a/a0/k$b;->m()Ld/c/a/a/a0/k;
    move-result-object v5
    invoke-virtual { v4, v5 }, Lcom/google/android/material/button/MaterialButton;->setShapeAppearanceModel(Ld/c/a/a/a0/k;)V
  :L2
    add-int/lit8 v3, v3, 1
    goto :L0
  :L3
    return-void
.end method
