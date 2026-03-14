.class final Landroidx/appcompat/view/menu/d;
.super Landroidx/appcompat/view/menu/k;
.implements Landroidx/appcompat/view/menu/m;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/appcompat/view/menu/d$d;
  }
.end annotation

.field private final static C:I

.field private A:Landroid/widget/PopupWindow$OnDismissListener;

.field B:Z

.field private final c:Landroid/content/Context;

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:Z

.field final h:Landroid/os/Handler;

.field private final i:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List<",
      "Landroidx/appcompat/view/menu/g;",
      ">;"
    }
  .end annotation
.end field

.field final j:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List<",
      "Landroidx/appcompat/view/menu/d$d;",
      ">;"
    }
  .end annotation
.end field

.field final k:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final l:Landroid/view/View$OnAttachStateChangeListener;

.field private final m:Landroidx/appcompat/widget/i0;

.field private n:I

.field private o:I

.field private p:Landroid/view/View;

.field q:Landroid/view/View;

.field private r:I

.field private s:Z

.field private t:Z

.field private u:I

.field private v:I

.field private w:Z

.field private x:Z

.field private y:Landroidx/appcompat/view/menu/m$a;

.field z:Landroid/view/ViewTreeObserver;

.method static constructor <clinit>()V
  .registers 1
  .line 1
    sget v0, Lc/a/g;->abc_cascading_menu_item_layout:I
    sput v0, Landroidx/appcompat/view/menu/d;->C:I
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IIZ)V
  .registers 7
  .line 1
    invoke-direct { p0 }, Landroidx/appcompat/view/menu/k;-><init>()V
  .line 2
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Landroidx/appcompat/view/menu/d;->i:Ljava/util/List;
  .line 3
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Landroidx/appcompat/view/menu/d;->j:Ljava/util/List;
  .line 4
    new-instance v0, Landroidx/appcompat/view/menu/d$a;
    invoke-direct { v0, p0 }, Landroidx/appcompat/view/menu/d$a;-><init>(Landroidx/appcompat/view/menu/d;)V
    iput-object v0, p0, Landroidx/appcompat/view/menu/d;->k:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
  .line 5
    new-instance v0, Landroidx/appcompat/view/menu/d$b;
    invoke-direct { v0, p0 }, Landroidx/appcompat/view/menu/d$b;-><init>(Landroidx/appcompat/view/menu/d;)V
    iput-object v0, p0, Landroidx/appcompat/view/menu/d;->l:Landroid/view/View$OnAttachStateChangeListener;
  .line 6
    new-instance v0, Landroidx/appcompat/view/menu/d$c;
    invoke-direct { v0, p0 }, Landroidx/appcompat/view/menu/d$c;-><init>(Landroidx/appcompat/view/menu/d;)V
    iput-object v0, p0, Landroidx/appcompat/view/menu/d;->m:Landroidx/appcompat/widget/i0;
    const/4 v0, 0
  .line 7
    iput v0, p0, Landroidx/appcompat/view/menu/d;->n:I
  .line 8
    iput v0, p0, Landroidx/appcompat/view/menu/d;->o:I
  .line 9
    iput-object p1, p0, Landroidx/appcompat/view/menu/d;->c:Landroid/content/Context;
  .line 10
    iput-object p2, p0, Landroidx/appcompat/view/menu/d;->p:Landroid/view/View;
  .line 11
    iput p3, p0, Landroidx/appcompat/view/menu/d;->e:I
  .line 12
    iput p4, p0, Landroidx/appcompat/view/menu/d;->f:I
  .line 13
    iput-boolean p5, p0, Landroidx/appcompat/view/menu/d;->g:Z
  .line 14
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/d;->w:Z
  .line 15
    invoke-direct { p0 }, Landroidx/appcompat/view/menu/d;->D()I
    move-result p2
    iput p2, p0, Landroidx/appcompat/view/menu/d;->r:I
  .line 16
    invoke-virtual { p1 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object p1
  .line 17
    invoke-virtual { p1 }, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
    move-result-object p2
    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I
    div-int/lit8 p2, p2, 2
    sget p3, Lc/a/d;->abc_config_prefDialogWidth:I
  .line 18
    invoke-virtual { p1, p3 }, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    move-result p1
  .line 19
    invoke-static { p2, p1 }, Ljava/lang/Math;->max(II)I
    move-result p1
    iput p1, p0, Landroidx/appcompat/view/menu/d;->d:I
  .line 20
    new-instance p1, Landroid/os/Handler;
    invoke-direct { p1 }, Landroid/os/Handler;-><init>()V
    iput-object p1, p0, Landroidx/appcompat/view/menu/d;->h:Landroid/os/Handler;
    return-void
.end method

.method private A(Landroidx/appcompat/view/menu/g;)I
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->j:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->size()I
    move-result v0
    const/4 v1, 0
  :L0
    if-ge v1, v0, :L2
  .line 2
    iget-object v2, p0, Landroidx/appcompat/view/menu/d;->j:Ljava/util/List;
    invoke-interface { v2, v1 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroidx/appcompat/view/menu/d$d;
  .line 3
    iget-object v2, v2, Landroidx/appcompat/view/menu/d$d;->b:Landroidx/appcompat/view/menu/g;
    if-ne p1, v2, :L1
    return v1
  :L1
    add-int/lit8 v1, v1, 1
    goto :L0
  :L2
    const/4 p1, -1
    return p1
.end method

.method private B(Landroidx/appcompat/view/menu/g;Landroidx/appcompat/view/menu/g;)Landroid/view/MenuItem;
  .registers 7
  .line 1
    invoke-virtual { p1 }, Landroidx/appcompat/view/menu/g;->size()I
    move-result v0
    const/4 v1, 0
  :L0
    if-ge v1, v0, :L2
  .line 2
    invoke-virtual { p1, v1 }, Landroidx/appcompat/view/menu/g;->getItem(I)Landroid/view/MenuItem;
    move-result-object v2
  .line 3
    invoke-interface { v2 }, Landroid/view/MenuItem;->hasSubMenu()Z
    move-result v3
    if-eqz v3, :L1
    invoke-interface { v2 }, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;
    move-result-object v3
    if-ne p2, v3, :L1
    return-object v2
  :L1
    add-int/lit8 v1, v1, 1
    goto :L0
  :L2
    const/4 p1, 0
    return-object p1
.end method

.method private C(Landroidx/appcompat/view/menu/d$d;Landroidx/appcompat/view/menu/g;)Landroid/view/View;
  .registers 10
  .line 1
    iget-object v0, p1, Landroidx/appcompat/view/menu/d$d;->b:Landroidx/appcompat/view/menu/g;
    invoke-direct { p0, v0, p2 }, Landroidx/appcompat/view/menu/d;->B(Landroidx/appcompat/view/menu/g;Landroidx/appcompat/view/menu/g;)Landroid/view/MenuItem;
    move-result-object p2
    const/4 v0, 0
    if-nez p2, :L0
    return-object v0
  :L0
  .line 2
    invoke-virtual { p1 }, Landroidx/appcompat/view/menu/d$d;->a()Landroid/widget/ListView;
    move-result-object p1
  .line 3
    invoke-virtual { p1 }, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;
    move-result-object v1
  .line 4
    instance-of v2, v1, Landroid/widget/HeaderViewListAdapter;
    const/4 v3, 0
    if-eqz v2, :L1
  .line 5
    check-cast v1, Landroid/widget/HeaderViewListAdapter;
  .line 6
    invoke-virtual { v1 }, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I
    move-result v2
  .line 7
    invoke-virtual { v1 }, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;
    move-result-object v1
    check-cast v1, Landroidx/appcompat/view/menu/f;
    goto :L2
  :L1
  .line 8
    check-cast v1, Landroidx/appcompat/view/menu/f;
    const/4 v2, 0
  :L2
  .line 9
    invoke-virtual { v1 }, Landroidx/appcompat/view/menu/f;->getCount()I
    move-result v4
  :L3
    const/4 v5, -1
    if-ge v3, v4, :L5
  .line 10
    invoke-virtual { v1, v3 }, Landroidx/appcompat/view/menu/f;->c(I)Landroidx/appcompat/view/menu/i;
    move-result-object v6
    if-ne p2, v6, :L4
    goto :L6
  :L4
    add-int/lit8 v3, v3, 1
    goto :L3
  :L5
    const/4 v3, -1
  :L6
    if-ne v3, v5, :L7
    return-object v0
  :L7
    add-int/2addr v3, v2
  .line 11
    invoke-virtual { p1 }, Landroid/widget/ListView;->getFirstVisiblePosition()I
    move-result p2
    sub-int/2addr v3, p2
    if-ltz v3, :L9
  .line 12
    invoke-virtual { p1 }, Landroid/widget/ListView;->getChildCount()I
    move-result p2
    if-lt v3, p2, :L8
    goto :L9
  :L8
  .line 13
    invoke-virtual { p1, v3 }, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;
    move-result-object p1
    return-object p1
  :L9
    return-object v0
.end method

.method private D()I
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->p:Landroid/view/View;
    invoke-static { v0 }, Landroidx/core/view/v;->C(Landroid/view/View;)I
    move-result v0
    const/4 v1, 1
    if-ne v0, v1, :L0
    const/4 v1, 0
  :L0
    return v1
.end method

.method private E(I)I
  .registers 8
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->j:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->size()I
    move-result v1
    const/4 v2, 1
    sub-int/2addr v1, v2
    invoke-interface { v0, v1 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroidx/appcompat/view/menu/d$d;
    invoke-virtual { v0 }, Landroidx/appcompat/view/menu/d$d;->a()Landroid/widget/ListView;
    move-result-object v0
    const/4 v1, 2
    new-array v1, v1, [I
  .line 2
    invoke-virtual { v0, v1 }, Landroid/widget/ListView;->getLocationOnScreen([I)V
  .line 3
    new-instance v3, Landroid/graphics/Rect;
    invoke-direct { v3 }, Landroid/graphics/Rect;-><init>()V
  .line 4
    iget-object v4, p0, Landroidx/appcompat/view/menu/d;->q:Landroid/view/View;
    invoke-virtual { v4, v3 }, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V
  .line 5
    iget v4, p0, Landroidx/appcompat/view/menu/d;->r:I
    const/4 v5, 0
    if-ne v4, v2, :L1
  .line 6
    aget v1, v1, v5
    invoke-virtual { v0 }, Landroid/widget/ListView;->getWidth()I
    move-result v0
    add-int/2addr v1, v0
    add-int/2addr v1, p1
  .line 7
    iget p1, v3, Landroid/graphics/Rect;->right:I
    if-le v1, p1, :L0
    return v5
  :L0
    return v2
  :L1
  .line 8
    aget v0, v1, v5
    sub-int/2addr v0, p1
    if-gez v0, :L2
    return v2
  :L2
    return v5
.end method

.method private F(Landroidx/appcompat/view/menu/g;)V
  .registers 16
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->c:Landroid/content/Context;
    invoke-static { v0 }, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
    move-result-object v0
  .line 2
    new-instance v1, Landroidx/appcompat/view/menu/f;
    iget-boolean v2, p0, Landroidx/appcompat/view/menu/d;->g:Z
    sget v3, Landroidx/appcompat/view/menu/d;->C:I
    invoke-direct { v1, p1, v0, v2, v3 }, Landroidx/appcompat/view/menu/f;-><init>(Landroidx/appcompat/view/menu/g;Landroid/view/LayoutInflater;ZI)V
  .line 3
    invoke-virtual { p0 }, Landroidx/appcompat/view/menu/d;->b()Z
    move-result v2
    const/4 v3, 1
    if-nez v2, :L0
    iget-boolean v2, p0, Landroidx/appcompat/view/menu/d;->w:Z
    if-eqz v2, :L0
  .line 4
    invoke-virtual { v1, v3 }, Landroidx/appcompat/view/menu/f;->d(Z)V
    goto :L1
  :L0
  .line 5
    invoke-virtual { p0 }, Landroidx/appcompat/view/menu/d;->b()Z
    move-result v2
    if-eqz v2, :L1
  .line 6
    invoke-static { p1 }, Landroidx/appcompat/view/menu/k;->x(Landroidx/appcompat/view/menu/g;)Z
    move-result v2
    invoke-virtual { v1, v2 }, Landroidx/appcompat/view/menu/f;->d(Z)V
  :L1
  .line 7
    iget-object v2, p0, Landroidx/appcompat/view/menu/d;->c:Landroid/content/Context;
    iget v4, p0, Landroidx/appcompat/view/menu/d;->d:I
    const/4 v5, 0
    invoke-static { v1, v5, v2, v4 }, Landroidx/appcompat/view/menu/k;->o(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I
    move-result v2
  .line 8
    invoke-direct { p0 }, Landroidx/appcompat/view/menu/d;->z()Landroidx/appcompat/widget/j0;
    move-result-object v4
  .line 9
    invoke-virtual { v4, v1 }, Landroidx/appcompat/widget/h0;->o(Landroid/widget/ListAdapter;)V
  .line 10
    invoke-virtual { v4, v2 }, Landroidx/appcompat/widget/h0;->F(I)V
  .line 11
    iget v1, p0, Landroidx/appcompat/view/menu/d;->o:I
    invoke-virtual { v4, v1 }, Landroidx/appcompat/widget/h0;->G(I)V
  .line 12
    iget-object v1, p0, Landroidx/appcompat/view/menu/d;->j:Ljava/util/List;
    invoke-interface { v1 }, Ljava/util/List;->size()I
    move-result v1
    if-lez v1, :L2
  .line 13
    iget-object v1, p0, Landroidx/appcompat/view/menu/d;->j:Ljava/util/List;
    invoke-interface { v1 }, Ljava/util/List;->size()I
    move-result v6
    sub-int/2addr v6, v3
    invoke-interface { v1, v6 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/appcompat/view/menu/d$d;
  .line 14
    invoke-direct { p0, v1, p1 }, Landroidx/appcompat/view/menu/d;->C(Landroidx/appcompat/view/menu/d$d;Landroidx/appcompat/view/menu/g;)Landroid/view/View;
    move-result-object v6
    goto :L3
  :L2
    move-object v1, v5
    move-object v6, v1
  :L3
    const/4 v7, 0
    if-eqz v6, :L14
  .line 15
    invoke-virtual { v4, v7 }, Landroidx/appcompat/widget/j0;->U(Z)V
  .line 16
    invoke-virtual { v4, v5 }, Landroidx/appcompat/widget/j0;->R(Ljava/lang/Object;)V
  .line 17
    invoke-direct { p0, v2 }, Landroidx/appcompat/view/menu/d;->E(I)I
    move-result v8
    if-ne v8, v3, :L4
    const/4 v9, 1
    goto :L5
  :L4
    const/4 v9, 0
  :L5
  .line 18
    iput v8, p0, Landroidx/appcompat/view/menu/d;->r:I
  .line 19
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v10, 26
    const/4 v11, 5
    if-lt v8, v10, :L6
  .line 20
    invoke-virtual { v4, v6 }, Landroidx/appcompat/widget/h0;->D(Landroid/view/View;)V
    const/4 v8, 0
    const/4 v12, 0
    goto :L8
  :L6
    const/4 v8, 2
    new-array v10, v8, [I
  .line 21
    iget-object v12, p0, Landroidx/appcompat/view/menu/d;->p:Landroid/view/View;
    invoke-virtual { v12, v10 }, Landroid/view/View;->getLocationOnScreen([I)V
    new-array v8, v8, [I
  .line 22
    invoke-virtual { v6, v8 }, Landroid/view/View;->getLocationOnScreen([I)V
  .line 23
    iget v12, p0, Landroidx/appcompat/view/menu/d;->o:I
    and-int/lit8 v12, v12, 7
    if-ne v12, v11, :L7
  .line 24
    aget v12, v10, v7
    iget-object v13, p0, Landroidx/appcompat/view/menu/d;->p:Landroid/view/View;
    invoke-virtual { v13 }, Landroid/view/View;->getWidth()I
    move-result v13
    add-int/2addr v12, v13
    aput v12, v10, v7
  .line 25
    aget v12, v8, v7
    invoke-virtual { v6 }, Landroid/view/View;->getWidth()I
    move-result v13
    add-int/2addr v12, v13
    aput v12, v8, v7
  :L7
  .line 26
    aget v12, v8, v7
    aget v13, v10, v7
    sub-int/2addr v12, v13
  .line 27
    aget v8, v8, v3
    aget v10, v10, v3
    sub-int/2addr v8, v10
  :L8
  .line 28
    iget v10, p0, Landroidx/appcompat/view/menu/d;->o:I
    and-int/2addr v10, v11
    if-ne v10, v11, :L10
    if-eqz v9, :L9
    goto :L11
  :L9
  .line 29
    invoke-virtual { v6 }, Landroid/view/View;->getWidth()I
    move-result v2
    goto :L12
  :L10
    if-eqz v9, :L12
  .line 30
    invoke-virtual { v6 }, Landroid/view/View;->getWidth()I
    move-result v2
  :L11
    add-int/2addr v12, v2
    goto :L13
  :L12
    sub-int/2addr v12, v2
  :L13
  .line 31
    invoke-virtual { v4, v12 }, Landroidx/appcompat/widget/h0;->d(I)V
  .line 32
    invoke-virtual { v4, v3 }, Landroidx/appcompat/widget/h0;->M(Z)V
  .line 33
    invoke-virtual { v4, v8 }, Landroidx/appcompat/widget/h0;->n(I)V
    goto :L17
  :L14
  .line 34
    iget-boolean v2, p0, Landroidx/appcompat/view/menu/d;->s:Z
    if-eqz v2, :L15
  .line 35
    iget v2, p0, Landroidx/appcompat/view/menu/d;->u:I
    invoke-virtual { v4, v2 }, Landroidx/appcompat/widget/h0;->d(I)V
  :L15
  .line 36
    iget-boolean v2, p0, Landroidx/appcompat/view/menu/d;->t:Z
    if-eqz v2, :L16
  .line 37
    iget v2, p0, Landroidx/appcompat/view/menu/d;->v:I
    invoke-virtual { v4, v2 }, Landroidx/appcompat/widget/h0;->n(I)V
  :L16
  .line 38
    invoke-virtual { p0 }, Landroidx/appcompat/view/menu/k;->n()Landroid/graphics/Rect;
    move-result-object v2
  .line 39
    invoke-virtual { v4, v2 }, Landroidx/appcompat/widget/h0;->H(Landroid/graphics/Rect;)V
  :L17
  .line 40
    new-instance v2, Landroidx/appcompat/view/menu/d$d;
    iget v3, p0, Landroidx/appcompat/view/menu/d;->r:I
    invoke-direct { v2, v4, p1, v3 }, Landroidx/appcompat/view/menu/d$d;-><init>(Landroidx/appcompat/widget/j0;Landroidx/appcompat/view/menu/g;I)V
  .line 41
    iget-object v3, p0, Landroidx/appcompat/view/menu/d;->j:Ljava/util/List;
    invoke-interface { v3, v2 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 42
    invoke-virtual { v4 }, Landroidx/appcompat/widget/h0;->g()V
  .line 43
    invoke-virtual { v4 }, Landroidx/appcompat/widget/h0;->l()Landroid/widget/ListView;
    move-result-object v2
  .line 44
    invoke-virtual { v2, p0 }, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    if-nez v1, :L18
  .line 45
    iget-boolean v1, p0, Landroidx/appcompat/view/menu/d;->x:Z
    if-eqz v1, :L18
    invoke-virtual { p1 }, Landroidx/appcompat/view/menu/g;->x()Ljava/lang/CharSequence;
    move-result-object v1
    if-eqz v1, :L18
  .line 46
    sget v1, Lc/a/g;->abc_popup_menu_header_item_layout:I
    invoke-virtual { v0, v1, v2, v7 }, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/FrameLayout;
    const v1, 16908310
  .line 47
    invoke-virtual { v0, v1 }, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;
    move-result-object v1
    check-cast v1, Landroid/widget/TextView;
  .line 48
    invoke-virtual { v0, v7 }, Landroid/widget/FrameLayout;->setEnabled(Z)V
  .line 49
    invoke-virtual { p1 }, Landroidx/appcompat/view/menu/g;->x()Ljava/lang/CharSequence;
    move-result-object p1
    invoke-virtual { v1, p1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 50
    invoke-virtual { v2, v0, v5, v7 }, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
  .line 51
    invoke-virtual { v4 }, Landroidx/appcompat/widget/h0;->g()V
  :L18
    return-void
.end method

.method private z()Landroidx/appcompat/widget/j0;
  .registers 6
  .line 1
    new-instance v0, Landroidx/appcompat/widget/j0;
    iget-object v1, p0, Landroidx/appcompat/view/menu/d;->c:Landroid/content/Context;
    iget v2, p0, Landroidx/appcompat/view/menu/d;->e:I
    iget v3, p0, Landroidx/appcompat/view/menu/d;->f:I
    const/4 v4, 0
    invoke-direct { v0, v1, v4, v2, v3 }, Landroidx/appcompat/widget/j0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
  .line 2
    iget-object v1, p0, Landroidx/appcompat/view/menu/d;->m:Landroidx/appcompat/widget/i0;
    invoke-virtual { v0, v1 }, Landroidx/appcompat/widget/j0;->T(Landroidx/appcompat/widget/i0;)V
  .line 3
    invoke-virtual { v0, p0 }, Landroidx/appcompat/widget/h0;->L(Landroid/widget/AdapterView$OnItemClickListener;)V
  .line 4
    invoke-virtual { v0, p0 }, Landroidx/appcompat/widget/h0;->K(Landroid/widget/PopupWindow$OnDismissListener;)V
  .line 5
    iget-object v1, p0, Landroidx/appcompat/view/menu/d;->p:Landroid/view/View;
    invoke-virtual { v0, v1 }, Landroidx/appcompat/widget/h0;->D(Landroid/view/View;)V
  .line 6
    iget v1, p0, Landroidx/appcompat/view/menu/d;->o:I
    invoke-virtual { v0, v1 }, Landroidx/appcompat/widget/h0;->G(I)V
    const/4 v1, 1
  .line 7
    invoke-virtual { v0, v1 }, Landroidx/appcompat/widget/h0;->J(Z)V
    const/4 v1, 2
  .line 8
    invoke-virtual { v0, v1 }, Landroidx/appcompat/widget/h0;->I(I)V
    return-object v0
.end method

.method public a(Landroidx/appcompat/view/menu/g;Z)V
  .registers 8
  .line 1
    invoke-direct { p0, p1 }, Landroidx/appcompat/view/menu/d;->A(Landroidx/appcompat/view/menu/g;)I
    move-result v0
    if-gez v0, :L0
    return-void
  :L0
    add-int/lit8 v1, v0, 1
  .line 2
    iget-object v2, p0, Landroidx/appcompat/view/menu/d;->j:Ljava/util/List;
    invoke-interface { v2 }, Ljava/util/List;->size()I
    move-result v2
    const/4 v3, 0
    if-ge v1, v2, :L1
  .line 3
    iget-object v2, p0, Landroidx/appcompat/view/menu/d;->j:Ljava/util/List;
    invoke-interface { v2, v1 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/appcompat/view/menu/d$d;
  .line 4
    iget-object v1, v1, Landroidx/appcompat/view/menu/d$d;->b:Landroidx/appcompat/view/menu/g;
    invoke-virtual { v1, v3 }, Landroidx/appcompat/view/menu/g;->e(Z)V
  :L1
  .line 5
    iget-object v1, p0, Landroidx/appcompat/view/menu/d;->j:Ljava/util/List;
    invoke-interface { v1, v0 }, Ljava/util/List;->remove(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroidx/appcompat/view/menu/d$d;
  .line 6
    iget-object v1, v0, Landroidx/appcompat/view/menu/d$d;->b:Landroidx/appcompat/view/menu/g;
    invoke-virtual { v1, p0 }, Landroidx/appcompat/view/menu/g;->O(Landroidx/appcompat/view/menu/m;)V
  .line 7
    iget-boolean v1, p0, Landroidx/appcompat/view/menu/d;->B:Z
    const/4 v2, 0
    if-eqz v1, :L2
  .line 8
    iget-object v1, v0, Landroidx/appcompat/view/menu/d$d;->a:Landroidx/appcompat/widget/j0;
    invoke-virtual { v1, v2 }, Landroidx/appcompat/widget/j0;->S(Ljava/lang/Object;)V
  .line 9
    iget-object v1, v0, Landroidx/appcompat/view/menu/d$d;->a:Landroidx/appcompat/widget/j0;
    invoke-virtual { v1, v3 }, Landroidx/appcompat/widget/h0;->E(I)V
  :L2
  .line 10
    iget-object v0, v0, Landroidx/appcompat/view/menu/d$d;->a:Landroidx/appcompat/widget/j0;
    invoke-virtual { v0 }, Landroidx/appcompat/widget/h0;->dismiss()V
  .line 11
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->j:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->size()I
    move-result v0
    if-lez v0, :L3
  .line 12
    iget-object v1, p0, Landroidx/appcompat/view/menu/d;->j:Ljava/util/List;
    add-int/lit8 v4, v0, -1
    invoke-interface { v1, v4 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/appcompat/view/menu/d$d;
    iget v1, v1, Landroidx/appcompat/view/menu/d$d;->c:I
    iput v1, p0, Landroidx/appcompat/view/menu/d;->r:I
    goto :L4
  :L3
  .line 13
    invoke-direct { p0 }, Landroidx/appcompat/view/menu/d;->D()I
    move-result v1
    iput v1, p0, Landroidx/appcompat/view/menu/d;->r:I
  :L4
    if-nez v0, :L8
  .line 14
    invoke-virtual { p0 }, Landroidx/appcompat/view/menu/d;->dismiss()V
  .line 15
    iget-object p2, p0, Landroidx/appcompat/view/menu/d;->y:Landroidx/appcompat/view/menu/m$a;
    if-eqz p2, :L5
    const/4 v0, 1
  .line 16
    invoke-interface { p2, p1, v0 }, Landroidx/appcompat/view/menu/m$a;->a(Landroidx/appcompat/view/menu/g;Z)V
  :L5
  .line 17
    iget-object p1, p0, Landroidx/appcompat/view/menu/d;->z:Landroid/view/ViewTreeObserver;
    if-eqz p1, :L7
  .line 18
    invoke-virtual { p1 }, Landroid/view/ViewTreeObserver;->isAlive()Z
    move-result p1
    if-eqz p1, :L6
  .line 19
    iget-object p1, p0, Landroidx/appcompat/view/menu/d;->z:Landroid/view/ViewTreeObserver;
    iget-object p2, p0, Landroidx/appcompat/view/menu/d;->k:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-virtual { p1, p2 }, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
  :L6
  .line 20
    iput-object v2, p0, Landroidx/appcompat/view/menu/d;->z:Landroid/view/ViewTreeObserver;
  :L7
  .line 21
    iget-object p1, p0, Landroidx/appcompat/view/menu/d;->q:Landroid/view/View;
    iget-object p2, p0, Landroidx/appcompat/view/menu/d;->l:Landroid/view/View$OnAttachStateChangeListener;
    invoke-virtual { p1, p2 }, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
  .line 22
    iget-object p1, p0, Landroidx/appcompat/view/menu/d;->A:Landroid/widget/PopupWindow$OnDismissListener;
    invoke-interface { p1 }, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V
    goto :L9
  :L8
    if-eqz p2, :L9
  .line 23
    iget-object p1, p0, Landroidx/appcompat/view/menu/d;->j:Ljava/util/List;
    invoke-interface { p1, v3 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroidx/appcompat/view/menu/d$d;
  .line 24
    iget-object p1, p1, Landroidx/appcompat/view/menu/d$d;->b:Landroidx/appcompat/view/menu/g;
    invoke-virtual { p1, v3 }, Landroidx/appcompat/view/menu/g;->e(Z)V
  :L9
    return-void
.end method

.method public b()Z
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->j:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->size()I
    move-result v0
    const/4 v1, 0
    if-lez v0, :L0
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->j:Ljava/util/List;
    invoke-interface { v0, v1 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroidx/appcompat/view/menu/d$d;
    iget-object v0, v0, Landroidx/appcompat/view/menu/d$d;->a:Landroidx/appcompat/widget/j0;
    invoke-virtual { v0 }, Landroidx/appcompat/widget/h0;->b()Z
    move-result v0
    if-eqz v0, :L0
    const/4 v1, 1
  :L0
    return v1
.end method

.method public c()Z
  .registers 2
    const/4 v0, 0
    return v0
.end method

.method public dismiss()V
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->j:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->size()I
    move-result v0
    if-lez v0, :L2
  .line 2
    iget-object v1, p0, Landroidx/appcompat/view/menu/d;->j:Ljava/util/List;
    new-array v2, v0, [Landroidx/appcompat/view/menu/d$d;
  .line 3
    invoke-interface { v1, v2 }, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    move-result-object v1
    check-cast v1, [Landroidx/appcompat/view/menu/d$d;
    add-int/lit8 v0, v0, -1
  :L0
    if-ltz v0, :L2
  .line 4
    aget-object v2, v1, v0
  .line 5
    iget-object v3, v2, Landroidx/appcompat/view/menu/d$d;->a:Landroidx/appcompat/widget/j0;
    invoke-virtual { v3 }, Landroidx/appcompat/widget/h0;->b()Z
    move-result v3
    if-eqz v3, :L1
  .line 6
    iget-object v2, v2, Landroidx/appcompat/view/menu/d$d;->a:Landroidx/appcompat/widget/j0;
    invoke-virtual { v2 }, Landroidx/appcompat/widget/h0;->dismiss()V
  :L1
    add-int/lit8 v0, v0, -1
    goto :L0
  :L2
    return-void
.end method

.method public g()V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/view/menu/d;->b()Z
    move-result v0
    if-eqz v0, :L0
    return-void
  :L0
  .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->i:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L2
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/appcompat/view/menu/g;
  .line 3
    invoke-direct { p0, v1 }, Landroidx/appcompat/view/menu/d;->F(Landroidx/appcompat/view/menu/g;)V
    goto :L1
  :L2
  .line 4
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->i:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->clear()V
  .line 5
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->p:Landroid/view/View;
    iput-object v0, p0, Landroidx/appcompat/view/menu/d;->q:Landroid/view/View;
    if-eqz v0, :L6
  .line 6
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->z:Landroid/view/ViewTreeObserver;
    if-nez v0, :L3
    const/4 v0, 1
    goto :L4
  :L3
    const/4 v0, 0
  :L4
  .line 7
    iget-object v1, p0, Landroidx/appcompat/view/menu/d;->q:Landroid/view/View;
    invoke-virtual { v1 }, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
    move-result-object v1
    iput-object v1, p0, Landroidx/appcompat/view/menu/d;->z:Landroid/view/ViewTreeObserver;
    if-eqz v0, :L5
  .line 8
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->k:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-virtual { v1, v0 }, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
  :L5
  .line 9
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->q:Landroid/view/View;
    iget-object v1, p0, Landroidx/appcompat/view/menu/d;->l:Landroid/view/View$OnAttachStateChangeListener;
    invoke-virtual { v0, v1 }, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
  :L6
    return-void
.end method

.method public h(Landroidx/appcompat/view/menu/m$a;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/d;->y:Landroidx/appcompat/view/menu/m$a;
    return-void
.end method

.method public i(Landroidx/appcompat/view/menu/r;)Z
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->j:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    const/4 v2, 1
    if-eqz v1, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/appcompat/view/menu/d$d;
  .line 2
    iget-object v3, v1, Landroidx/appcompat/view/menu/d$d;->b:Landroidx/appcompat/view/menu/g;
    if-ne p1, v3, :L0
  .line 3
    invoke-virtual { v1 }, Landroidx/appcompat/view/menu/d$d;->a()Landroid/widget/ListView;
    move-result-object p1
    invoke-virtual { p1 }, Landroid/widget/ListView;->requestFocus()Z
    return v2
  :L1
  .line 4
    invoke-virtual { p1 }, Landroidx/appcompat/view/menu/g;->hasVisibleItems()Z
    move-result v0
    if-eqz v0, :L3
  .line 5
    invoke-virtual { p0, p1 }, Landroidx/appcompat/view/menu/d;->k(Landroidx/appcompat/view/menu/g;)V
  .line 6
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->y:Landroidx/appcompat/view/menu/m$a;
    if-eqz v0, :L2
  .line 7
    invoke-interface { v0, p1 }, Landroidx/appcompat/view/menu/m$a;->b(Landroidx/appcompat/view/menu/g;)Z
  :L2
    return v2
  :L3
    const/4 p1, 0
    return p1
.end method

.method public j(Z)V
  .registers 3
  .line 1
    iget-object p1, p0, Landroidx/appcompat/view/menu/d;->j:Ljava/util/List;
    invoke-interface { p1 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object p1
  :L0
    invoke-interface { p1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :L1
    invoke-interface { p1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroidx/appcompat/view/menu/d$d;
  .line 2
    invoke-virtual { v0 }, Landroidx/appcompat/view/menu/d$d;->a()Landroid/widget/ListView;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;
    move-result-object v0
    invoke-static { v0 }, Landroidx/appcompat/view/menu/k;->y(Landroid/widget/ListAdapter;)Landroidx/appcompat/view/menu/f;
    move-result-object v0
    invoke-virtual { v0 }, Landroidx/appcompat/view/menu/f;->notifyDataSetChanged()V
    goto :L0
  :L1
    return-void
.end method

.method public k(Landroidx/appcompat/view/menu/g;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->c:Landroid/content/Context;
    invoke-virtual { p1, p0, v0 }, Landroidx/appcompat/view/menu/g;->c(Landroidx/appcompat/view/menu/m;Landroid/content/Context;)V
  .line 2
    invoke-virtual { p0 }, Landroidx/appcompat/view/menu/d;->b()Z
    move-result v0
    if-eqz v0, :L0
  .line 3
    invoke-direct { p0, p1 }, Landroidx/appcompat/view/menu/d;->F(Landroidx/appcompat/view/menu/g;)V
    goto :L1
  :L0
  .line 4
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->i:Ljava/util/List;
    invoke-interface { v0, p1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  :L1
    return-void
.end method

.method public l()Landroid/widget/ListView;
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->j:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->isEmpty()Z
    move-result v0
    if-eqz v0, :L0
    const/4 v0, 0
    goto :L1
  :L0
  .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->j:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->size()I
    move-result v1
    add-int/lit8 v1, v1, -1
    invoke-interface { v0, v1 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroidx/appcompat/view/menu/d$d;
    invoke-virtual { v0 }, Landroidx/appcompat/view/menu/d$d;->a()Landroid/widget/ListView;
    move-result-object v0
  :L1
    return-object v0
.end method

.method protected m()Z
  .registers 2
    const/4 v0, 0
    return v0
.end method

.method public onDismiss()V
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->j:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->size()I
    move-result v0
    const/4 v1, 0
    const/4 v2, 0
  :L0
    if-ge v2, v0, :L2
  .line 2
    iget-object v3, p0, Landroidx/appcompat/view/menu/d;->j:Ljava/util/List;
    invoke-interface { v3, v2 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Landroidx/appcompat/view/menu/d$d;
  .line 3
    iget-object v4, v3, Landroidx/appcompat/view/menu/d$d;->a:Landroidx/appcompat/widget/j0;
    invoke-virtual { v4 }, Landroidx/appcompat/widget/h0;->b()Z
    move-result v4
    if-nez v4, :L1
    goto :L3
  :L1
    add-int/lit8 v2, v2, 1
    goto :L0
  :L2
    const/4 v3, 0
  :L3
    if-eqz v3, :L4
  .line 4
    iget-object v0, v3, Landroidx/appcompat/view/menu/d$d;->b:Landroidx/appcompat/view/menu/g;
    invoke-virtual { v0, v1 }, Landroidx/appcompat/view/menu/g;->e(Z)V
  :L4
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
  .registers 4
  .line 1
    invoke-virtual { p3 }, Landroid/view/KeyEvent;->getAction()I
    move-result p1
    const/4 p3, 1
    if-ne p1, p3, :L0
    const/16 p1, 82
    if-ne p2, p1, :L0
  .line 2
    invoke-virtual { p0 }, Landroidx/appcompat/view/menu/d;->dismiss()V
    return p3
  :L0
    const/4 p1, 0
    return p1
.end method

.method public p(Landroid/view/View;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->p:Landroid/view/View;
    if-eq v0, p1, :L0
  .line 2
    iput-object p1, p0, Landroidx/appcompat/view/menu/d;->p:Landroid/view/View;
  .line 3
    iget v0, p0, Landroidx/appcompat/view/menu/d;->n:I
  .line 4
    invoke-static { p1 }, Landroidx/core/view/v;->C(Landroid/view/View;)I
    move-result p1
  .line 5
    invoke-static { v0, p1 }, Landroidx/core/view/e;->b(II)I
    move-result p1
    iput p1, p0, Landroidx/appcompat/view/menu/d;->o:I
  :L0
    return-void
.end method

.method public r(Z)V
  .registers 2
  .line 1
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/d;->w:Z
    return-void
.end method

.method public s(I)V
  .registers 3
  .line 1
    iget v0, p0, Landroidx/appcompat/view/menu/d;->n:I
    if-eq v0, p1, :L0
  .line 2
    iput p1, p0, Landroidx/appcompat/view/menu/d;->n:I
  .line 3
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->p:Landroid/view/View;
  .line 4
    invoke-static { v0 }, Landroidx/core/view/v;->C(Landroid/view/View;)I
    move-result v0
  .line 5
    invoke-static { p1, v0 }, Landroidx/core/view/e;->b(II)I
    move-result p1
    iput p1, p0, Landroidx/appcompat/view/menu/d;->o:I
  :L0
    return-void
.end method

.method public t(I)V
  .registers 3
    const/4 v0, 1
  .line 1
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/d;->s:Z
  .line 2
    iput p1, p0, Landroidx/appcompat/view/menu/d;->u:I
    return-void
.end method

.method public u(Landroid/widget/PopupWindow$OnDismissListener;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/d;->A:Landroid/widget/PopupWindow$OnDismissListener;
    return-void
.end method

.method public v(Z)V
  .registers 2
  .line 1
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/d;->x:Z
    return-void
.end method

.method public w(I)V
  .registers 3
    const/4 v0, 1
  .line 1
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/d;->t:Z
  .line 2
    iput p1, p0, Landroidx/appcompat/view/menu/d;->v:I
    return-void
.end method
