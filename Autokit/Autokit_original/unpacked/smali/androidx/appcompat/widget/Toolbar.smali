.class public Landroidx/appcompat/widget/Toolbar;
.super Landroid/view/ViewGroup;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/appcompat/widget/Toolbar$d;,
    Landroidx/appcompat/widget/Toolbar$g;,
    Landroidx/appcompat/widget/Toolbar$e;,
    Landroidx/appcompat/widget/Toolbar$f;
  }
.end annotation

.field private A:Landroid/content/res/ColorStateList;

.field private B:Landroid/content/res/ColorStateList;

.field private C:Z

.field private D:Z

.field private final E:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Landroid/view/View;",
      ">;"
    }
  .end annotation
.end field

.field private final F:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Landroid/view/View;",
      ">;"
    }
  .end annotation
.end field

.field private final G:[I

.field H:Landroidx/appcompat/widget/Toolbar$f;

.field private final I:Landroidx/appcompat/widget/ActionMenuView$e;

.field private J:Landroidx/appcompat/widget/v0;

.field private K:Landroidx/appcompat/widget/c;

.field private L:Landroidx/appcompat/widget/Toolbar$d;

.field private M:Landroidx/appcompat/view/menu/m$a;

.field private N:Landroidx/appcompat/view/menu/g$a;

.field private O:Z

.field private final P:Ljava/lang/Runnable;

.field private b:Landroidx/appcompat/widget/ActionMenuView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageButton;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Ljava/lang/CharSequence;

.field i:Landroid/widget/ImageButton;

.field j:Landroid/view/View;

.field private k:Landroid/content/Context;

.field private l:I

.field private m:I

.field private n:I

.field o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:Landroidx/appcompat/widget/m0;

.field private v:I

.field private w:I

.field private x:I

.field private y:Ljava/lang/CharSequence;

.field private z:Ljava/lang/CharSequence;

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 4
  .line 1
    sget v0, Lc/a/a;->toolbarStyle:I
    invoke-direct { p0, p1, p2, v0 }, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .registers 14
  .line 2
    invoke-direct { p0, p1, p2, p3 }, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    const v0, 8388627
  .line 3
    iput v0, p0, Landroidx/appcompat/widget/Toolbar;->x:I
  .line 4
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->E:Ljava/util/ArrayList;
  .line 5
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->F:Ljava/util/ArrayList;
    const/4 v0, 2
    new-array v0, v0, [I
  .line 6
    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->G:[I
  .line 7
    new-instance v0, Landroidx/appcompat/widget/Toolbar$a;
    invoke-direct { v0, p0 }, Landroidx/appcompat/widget/Toolbar$a;-><init>(Landroidx/appcompat/widget/Toolbar;)V
    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->I:Landroidx/appcompat/widget/ActionMenuView$e;
  .line 8
    new-instance v0, Landroidx/appcompat/widget/Toolbar$b;
    invoke-direct { v0, p0 }, Landroidx/appcompat/widget/Toolbar$b;-><init>(Landroidx/appcompat/widget/Toolbar;)V
    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->P:Ljava/lang/Runnable;
  .line 9
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object v0
    sget-object v1, Lc/a/j;->Toolbar:[I
    const/4 v2, 0
    invoke-static { v0, p2, v1, p3, v2 }, Landroidx/appcompat/widget/u0;->v(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/u0;
    move-result-object v0
  .line 10
    sget-object v5, Lc/a/j;->Toolbar:[I
  .line 11
    invoke-virtual { v0 }, Landroidx/appcompat/widget/u0;->r()Landroid/content/res/TypedArray;
    move-result-object v7
    const/4 v9, 0
    move-object v3, p0
    move-object v4, p1
    move-object v6, p2
    move v8, p3
  .line 12
    invoke-static/range { v3 .. v9 }, Landroidx/core/view/v;->m0(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V
  .line 13
    sget p1, Lc/a/j;->Toolbar_titleTextAppearance:I
    invoke-virtual { v0, p1, v2 }, Landroidx/appcompat/widget/u0;->n(II)I
    move-result p1
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->m:I
  .line 14
    sget p1, Lc/a/j;->Toolbar_subtitleTextAppearance:I
    invoke-virtual { v0, p1, v2 }, Landroidx/appcompat/widget/u0;->n(II)I
    move-result p1
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->n:I
  .line 15
    sget p1, Lc/a/j;->Toolbar_android_gravity:I
    iget p2, p0, Landroidx/appcompat/widget/Toolbar;->x:I
    invoke-virtual { v0, p1, p2 }, Landroidx/appcompat/widget/u0;->l(II)I
    move-result p1
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->x:I
  .line 16
    sget p1, Lc/a/j;->Toolbar_buttonGravity:I
    const/16 p2, 48
    invoke-virtual { v0, p1, p2 }, Landroidx/appcompat/widget/u0;->l(II)I
    move-result p1
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->o:I
  .line 17
    sget p1, Lc/a/j;->Toolbar_titleMargin:I
    invoke-virtual { v0, p1, v2 }, Landroidx/appcompat/widget/u0;->e(II)I
    move-result p1
  .line 18
    sget p2, Lc/a/j;->Toolbar_titleMargins:I
    invoke-virtual { v0, p2 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result p2
    if-eqz p2, :L0
  .line 19
    sget p2, Lc/a/j;->Toolbar_titleMargins:I
    invoke-virtual { v0, p2, p1 }, Landroidx/appcompat/widget/u0;->e(II)I
    move-result p1
  :L0
  .line 20
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->t:I
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->s:I
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->r:I
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->q:I
  .line 21
    sget p1, Lc/a/j;->Toolbar_titleMarginStart:I
    const/4 p2, -1
    invoke-virtual { v0, p1, p2 }, Landroidx/appcompat/widget/u0;->e(II)I
    move-result p1
    if-ltz p1, :L1
  .line 22
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->q:I
  :L1
  .line 23
    sget p1, Lc/a/j;->Toolbar_titleMarginEnd:I
    invoke-virtual { v0, p1, p2 }, Landroidx/appcompat/widget/u0;->e(II)I
    move-result p1
    if-ltz p1, :L2
  .line 24
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->r:I
  :L2
  .line 25
    sget p1, Lc/a/j;->Toolbar_titleMarginTop:I
    invoke-virtual { v0, p1, p2 }, Landroidx/appcompat/widget/u0;->e(II)I
    move-result p1
    if-ltz p1, :L3
  .line 26
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->s:I
  :L3
  .line 27
    sget p1, Lc/a/j;->Toolbar_titleMarginBottom:I
    invoke-virtual { v0, p1, p2 }, Landroidx/appcompat/widget/u0;->e(II)I
    move-result p1
    if-ltz p1, :L4
  .line 28
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->t:I
  :L4
  .line 29
    sget p1, Lc/a/j;->Toolbar_maxButtonHeight:I
    invoke-virtual { v0, p1, p2 }, Landroidx/appcompat/widget/u0;->f(II)I
    move-result p1
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->p:I
  .line 30
    sget p1, Lc/a/j;->Toolbar_contentInsetStart:I
    const/high16 p2, -32768
  .line 31
    invoke-virtual { v0, p1, p2 }, Landroidx/appcompat/widget/u0;->e(II)I
    move-result p1
  .line 32
    sget p3, Lc/a/j;->Toolbar_contentInsetEnd:I
  .line 33
    invoke-virtual { v0, p3, p2 }, Landroidx/appcompat/widget/u0;->e(II)I
    move-result p3
  .line 34
    sget v1, Lc/a/j;->Toolbar_contentInsetLeft:I
  .line 35
    invoke-virtual { v0, v1, v2 }, Landroidx/appcompat/widget/u0;->f(II)I
    move-result v1
  .line 36
    sget v3, Lc/a/j;->Toolbar_contentInsetRight:I
  .line 37
    invoke-virtual { v0, v3, v2 }, Landroidx/appcompat/widget/u0;->f(II)I
    move-result v3
  .line 38
    invoke-direct { p0 }, Landroidx/appcompat/widget/Toolbar;->h()V
  .line 39
    iget-object v4, p0, Landroidx/appcompat/widget/Toolbar;->u:Landroidx/appcompat/widget/m0;
    invoke-virtual { v4, v1, v3 }, Landroidx/appcompat/widget/m0;->e(II)V
    if-ne p1, p2, :L5
    if-eq p3, p2, :L6
  :L5
  .line 40
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->u:Landroidx/appcompat/widget/m0;
    invoke-virtual { v1, p1, p3 }, Landroidx/appcompat/widget/m0;->g(II)V
  :L6
  .line 41
    sget p1, Lc/a/j;->Toolbar_contentInsetStartWithNavigation:I
    invoke-virtual { v0, p1, p2 }, Landroidx/appcompat/widget/u0;->e(II)I
    move-result p1
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->v:I
  .line 42
    sget p1, Lc/a/j;->Toolbar_contentInsetEndWithActions:I
    invoke-virtual { v0, p1, p2 }, Landroidx/appcompat/widget/u0;->e(II)I
    move-result p1
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->w:I
  .line 43
    sget p1, Lc/a/j;->Toolbar_collapseIcon:I
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/u0;->g(I)Landroid/graphics/drawable/Drawable;
    move-result-object p1
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->g:Landroid/graphics/drawable/Drawable;
  .line 44
    sget p1, Lc/a/j;->Toolbar_collapseContentDescription:I
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/u0;->p(I)Ljava/lang/CharSequence;
    move-result-object p1
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->h:Ljava/lang/CharSequence;
  .line 45
    sget p1, Lc/a/j;->Toolbar_title:I
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/u0;->p(I)Ljava/lang/CharSequence;
    move-result-object p1
  .line 46
    invoke-static { p1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result p2
    if-nez p2, :L7
  .line 47
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V
  :L7
  .line 48
    sget p1, Lc/a/j;->Toolbar_subtitle:I
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/u0;->p(I)Ljava/lang/CharSequence;
    move-result-object p1
  .line 49
    invoke-static { p1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result p2
    if-nez p2, :L8
  .line 50
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V
  :L8
  .line 51
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object p1
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->k:Landroid/content/Context;
  .line 52
    sget p1, Lc/a/j;->Toolbar_popupTheme:I
    invoke-virtual { v0, p1, v2 }, Landroidx/appcompat/widget/u0;->n(II)I
    move-result p1
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/Toolbar;->setPopupTheme(I)V
  .line 53
    sget p1, Lc/a/j;->Toolbar_navigationIcon:I
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/u0;->g(I)Landroid/graphics/drawable/Drawable;
    move-result-object p1
    if-eqz p1, :L9
  .line 54
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
  :L9
  .line 55
    sget p1, Lc/a/j;->Toolbar_navigationContentDescription:I
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/u0;->p(I)Ljava/lang/CharSequence;
    move-result-object p1
  .line 56
    invoke-static { p1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result p2
    if-nez p2, :L10
  .line 57
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V
  :L10
  .line 58
    sget p1, Lc/a/j;->Toolbar_logo:I
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/u0;->g(I)Landroid/graphics/drawable/Drawable;
    move-result-object p1
    if-eqz p1, :L11
  .line 59
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V
  :L11
  .line 60
    sget p1, Lc/a/j;->Toolbar_logoDescription:I
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/u0;->p(I)Ljava/lang/CharSequence;
    move-result-object p1
  .line 61
    invoke-static { p1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result p2
    if-nez p2, :L12
  .line 62
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V
  :L12
  .line 63
    sget p1, Lc/a/j;->Toolbar_titleTextColor:I
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result p1
    if-eqz p1, :L13
  .line 64
    sget p1, Lc/a/j;->Toolbar_titleTextColor:I
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/u0;->c(I)Landroid/content/res/ColorStateList;
    move-result-object p1
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/Toolbar;->setTitleTextColor(Landroid/content/res/ColorStateList;)V
  :L13
  .line 65
    sget p1, Lc/a/j;->Toolbar_subtitleTextColor:I
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result p1
    if-eqz p1, :L14
  .line 66
    sget p1, Lc/a/j;->Toolbar_subtitleTextColor:I
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/u0;->c(I)Landroid/content/res/ColorStateList;
    move-result-object p1
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/Toolbar;->setSubtitleTextColor(Landroid/content/res/ColorStateList;)V
  :L14
  .line 67
    sget p1, Lc/a/j;->Toolbar_menu:I
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result p1
    if-eqz p1, :L15
  .line 68
    sget p1, Lc/a/j;->Toolbar_menu:I
    invoke-virtual { v0, p1, v2 }, Landroidx/appcompat/widget/u0;->n(II)I
    move-result p1
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/Toolbar;->x(I)V
  :L15
  .line 69
    invoke-virtual { v0 }, Landroidx/appcompat/widget/u0;->w()V
    return-void
.end method

.method private B(Landroid/view/View;I[II)I
  .registers 9
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
    check-cast v0, Landroidx/appcompat/widget/Toolbar$e;
  .line 2
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I
    const/4 v2, 0
    aget v3, p3, v2
    sub-int/2addr v1, v3
  .line 3
    invoke-static { v2, v1 }, Ljava/lang/Math;->max(II)I
    move-result v3
    add-int/2addr p2, v3
    neg-int v1, v1
  .line 4
    invoke-static { v2, v1 }, Ljava/lang/Math;->max(II)I
    move-result v1
    aput v1, p3, v2
  .line 5
    invoke-direct { p0, p1, p4 }, Landroidx/appcompat/widget/Toolbar;->q(Landroid/view/View;I)I
    move-result p3
  .line 6
    invoke-virtual { p1 }, Landroid/view/View;->getMeasuredWidth()I
    move-result p4
    add-int v1, p2, p4
  .line 7
    invoke-virtual { p1 }, Landroid/view/View;->getMeasuredHeight()I
    move-result v2
    add-int/2addr v2, p3
    invoke-virtual { p1, p2, p3, v1, v2 }, Landroid/view/View;->layout(IIII)V
  .line 8
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I
    add-int/2addr p4, p1
    add-int/2addr p2, p4
    return p2
.end method

.method private C(Landroid/view/View;I[II)I
  .registers 10
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
    check-cast v0, Landroidx/appcompat/widget/Toolbar$e;
  .line 2
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I
    const/4 v2, 1
    aget v3, p3, v2
    sub-int/2addr v1, v3
    const/4 v3, 0
  .line 3
    invoke-static { v3, v1 }, Ljava/lang/Math;->max(II)I
    move-result v4
    sub-int/2addr p2, v4
    neg-int v1, v1
  .line 4
    invoke-static { v3, v1 }, Ljava/lang/Math;->max(II)I
    move-result v1
    aput v1, p3, v2
  .line 5
    invoke-direct { p0, p1, p4 }, Landroidx/appcompat/widget/Toolbar;->q(Landroid/view/View;I)I
    move-result p3
  .line 6
    invoke-virtual { p1 }, Landroid/view/View;->getMeasuredWidth()I
    move-result p4
    sub-int v1, p2, p4
  .line 7
    invoke-virtual { p1 }, Landroid/view/View;->getMeasuredHeight()I
    move-result v2
    add-int/2addr v2, p3
    invoke-virtual { p1, v1, p3, p2, v2 }, Landroid/view/View;->layout(IIII)V
  .line 8
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I
    add-int/2addr p4, p1
    sub-int/2addr p2, p4
    return p2
.end method

.method private D(Landroid/view/View;IIII[I)I
  .registers 14
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;
  .line 2
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I
    const/4 v2, 0
    aget v3, p6, v2
    sub-int/2addr v1, v3
  .line 3
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I
    const/4 v4, 1
    aget v5, p6, v4
    sub-int/2addr v3, v5
  .line 4
    invoke-static { v2, v1 }, Ljava/lang/Math;->max(II)I
    move-result v5
  .line 5
    invoke-static { v2, v3 }, Ljava/lang/Math;->max(II)I
    move-result v6
    add-int/2addr v5, v6
    neg-int v1, v1
  .line 6
    invoke-static { v2, v1 }, Ljava/lang/Math;->max(II)I
    move-result v1
    aput v1, p6, v2
    neg-int v1, v3
  .line 7
    invoke-static { v2, v1 }, Ljava/lang/Math;->max(II)I
    move-result v1
    aput v1, p6, v4
  .line 8
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getPaddingLeft()I
    move-result p6
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getPaddingRight()I
    move-result v1
    add-int/2addr p6, v1
    add-int/2addr p6, v5
    add-int/2addr p6, p3
    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I
  .line 9
    invoke-static { p2, p6, p3 }, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I
    move-result p2
  .line 10
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getPaddingTop()I
    move-result p3
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getPaddingBottom()I
    move-result p6
    add-int/2addr p3, p6
    iget p6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I
    add-int/2addr p3, p6
    iget p6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I
    add-int/2addr p3, p6
    add-int/2addr p3, p5
    iget p5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I
  .line 11
    invoke-static { p4, p3, p5 }, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I
    move-result p3
  .line 12
    invoke-virtual { p1, p2, p3 }, Landroid/view/View;->measure(II)V
  .line 13
    invoke-virtual { p1 }, Landroid/view/View;->getMeasuredWidth()I
    move-result p1
    add-int/2addr p1, v5
    return p1
.end method

.method private E(Landroid/view/View;IIIII)V
  .registers 10
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;
  .line 2
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getPaddingLeft()I
    move-result v1
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getPaddingRight()I
    move-result v2
    add-int/2addr v1, v2
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I
    add-int/2addr v1, v2
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I
    add-int/2addr v1, v2
    add-int/2addr v1, p3
    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I
  .line 3
    invoke-static { p2, v1, p3 }, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I
    move-result p2
  .line 4
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getPaddingTop()I
    move-result p3
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getPaddingBottom()I
    move-result v1
    add-int/2addr p3, v1
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I
    add-int/2addr p3, v1
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I
    add-int/2addr p3, v1
    add-int/2addr p3, p5
    iget p5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I
  .line 5
    invoke-static { p4, p3, p5 }, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I
    move-result p3
  .line 6
    invoke-static { p3 }, Landroid/view/View$MeasureSpec;->getMode(I)I
    move-result p4
    const/high16 p5, 16384
    if-eq p4, p5, :L1
    if-ltz p6, :L1
    if-eqz p4, :L0
  .line 7
    invoke-static { p3 }, Landroid/view/View$MeasureSpec;->getSize(I)I
    move-result p3
    invoke-static { p3, p6 }, Ljava/lang/Math;->min(II)I
    move-result p6
  :L0
  .line 8
    invoke-static { p6, p5 }, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result p3
  :L1
  .line 9
    invoke-virtual { p1, p2, p3 }, Landroid/view/View;->measure(II)V
    return-void
.end method

.method private F()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->P:Ljava/lang/Runnable;
    invoke-virtual { p0, v0 }, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->P:Ljava/lang/Runnable;
    invoke-virtual { p0, v0 }, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z
    return-void
.end method

.method private M()Z
  .registers 6
  .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/Toolbar;->O:Z
    const/4 v1, 0
    if-nez v0, :L0
    return v1
  :L0
  .line 2
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v0
    const/4 v2, 0
  :L1
    if-ge v2, v0, :L3
  .line 3
    invoke-virtual { p0, v2 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v3
  .line 4
    invoke-direct { p0, v3 }, Landroidx/appcompat/widget/Toolbar;->N(Landroid/view/View;)Z
    move-result v4
    if-eqz v4, :L2
    invoke-virtual { v3 }, Landroid/view/View;->getMeasuredWidth()I
    move-result v4
    if-lez v4, :L2
  .line 5
    invoke-virtual { v3 }, Landroid/view/View;->getMeasuredHeight()I
    move-result v3
    if-lez v3, :L2
    return v1
  :L2
    add-int/lit8 v2, v2, 1
    goto :L1
  :L3
    const/4 v0, 1
    return v0
.end method

.method private N(Landroid/view/View;)Z
  .registers 3
    if-eqz p1, :L0
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v0
    if-ne v0, p0, :L0
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

.method private b(Ljava/util/List;I)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/List<",
      "Landroid/view/View;",
      ">;I)V"
    }
  .end annotation
  .registers 8
  .line 1
    invoke-static { p0 }, Landroidx/core/view/v;->C(Landroid/view/View;)I
    move-result v0
    const/4 v1, 0
    const/4 v2, 1
    if-ne v0, v2, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
  .line 2
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v3
  .line 3
    invoke-static { p0 }, Landroidx/core/view/v;->C(Landroid/view/View;)I
    move-result v4
  .line 4
    invoke-static { p2, v4 }, Landroidx/core/view/e;->b(II)I
    move-result p2
  .line 5
    invoke-interface { p1 }, Ljava/util/List;->clear()V
    if-eqz v0, :L4
    sub-int/2addr v3, v2
  :L2
    if-ltz v3, :L6
  .line 6
    invoke-virtual { p0, v3 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v0
  .line 7
    invoke-virtual { v0 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v1
    check-cast v1, Landroidx/appcompat/widget/Toolbar$e;
  .line 8
    iget v2, v1, Landroidx/appcompat/widget/Toolbar$e;->b:I
    if-nez v2, :L3
    invoke-direct { p0, v0 }, Landroidx/appcompat/widget/Toolbar;->N(Landroid/view/View;)Z
    move-result v2
    if-eqz v2, :L3
    iget v1, v1, Landroidx/appcompat/app/a$a;->a:I
  .line 9
    invoke-direct { p0, v1 }, Landroidx/appcompat/widget/Toolbar;->p(I)I
    move-result v1
    if-ne v1, p2, :L3
  .line 10
    invoke-interface { p1, v0 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  :L3
    add-int/lit8 v3, v3, -1
    goto :L2
  :L4
    if-ge v1, v3, :L6
  .line 11
    invoke-virtual { p0, v1 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v0
  .line 12
    invoke-virtual { v0 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v2
    check-cast v2, Landroidx/appcompat/widget/Toolbar$e;
  .line 13
    iget v4, v2, Landroidx/appcompat/widget/Toolbar$e;->b:I
    if-nez v4, :L5
    invoke-direct { p0, v0 }, Landroidx/appcompat/widget/Toolbar;->N(Landroid/view/View;)Z
    move-result v4
    if-eqz v4, :L5
    iget v2, v2, Landroidx/appcompat/app/a$a;->a:I
  .line 14
    invoke-direct { p0, v2 }, Landroidx/appcompat/widget/Toolbar;->p(I)I
    move-result v2
    if-ne v2, p2, :L5
  .line 15
    invoke-interface { p1, v0 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  :L5
    add-int/lit8 v1, v1, 1
    goto :L4
  :L6
    return-void
.end method

.method private c(Landroid/view/View;Z)V
  .registers 5
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
    if-nez v0, :L0
  .line 2
    invoke-virtual { p0 }, Landroidx/appcompat/widget/Toolbar;->m()Landroidx/appcompat/widget/Toolbar$e;
    move-result-object v0
    goto :L2
  :L0
  .line 3
    invoke-virtual { p0, v0 }, Landroidx/appcompat/widget/Toolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    move-result v1
    if-nez v1, :L1
  .line 4
    invoke-virtual { p0, v0 }, Landroidx/appcompat/widget/Toolbar;->o(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/Toolbar$e;
    move-result-object v0
    goto :L2
  :L1
  .line 5
    check-cast v0, Landroidx/appcompat/widget/Toolbar$e;
  :L2
    const/4 v1, 1
  .line 6
    iput v1, v0, Landroidx/appcompat/widget/Toolbar$e;->b:I
    if-eqz p2, :L3
  .line 7
    iget-object p2, p0, Landroidx/appcompat/widget/Toolbar;->j:Landroid/view/View;
    if-eqz p2, :L3
  .line 8
    invoke-virtual { p1, v0 }, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  .line 9
    iget-object p2, p0, Landroidx/appcompat/widget/Toolbar;->F:Ljava/util/ArrayList;
    invoke-virtual { p2, p1 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto :L4
  :L3
  .line 10
    invoke-virtual { p0, p1, v0 }, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  :L4
    return-void
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
  .registers 3
  .line 1
    new-instance v0, Lc/a/o/g;
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object v1
    invoke-direct { v0, v1 }, Lc/a/o/g;-><init>(Landroid/content/Context;)V
    return-object v0
.end method

.method private h()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->u:Landroidx/appcompat/widget/m0;
    if-nez v0, :L0
  .line 2
    new-instance v0, Landroidx/appcompat/widget/m0;
    invoke-direct { v0 }, Landroidx/appcompat/widget/m0;-><init>()V
    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->u:Landroidx/appcompat/widget/m0;
  :L0
    return-void
.end method

.method private i()V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/ImageView;
    if-nez v0, :L0
  .line 2
    new-instance v0, Landroidx/appcompat/widget/AppCompatImageView;
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object v1
    invoke-direct { v0, v1 }, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V
    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/ImageView;
  :L0
    return-void
.end method

.method private j()V
  .registers 4
  .line 1
    invoke-direct { p0 }, Landroidx/appcompat/widget/Toolbar;->k()V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;
    invoke-virtual { v0 }, Landroidx/appcompat/widget/ActionMenuView;->N()Landroidx/appcompat/view/menu/g;
    move-result-object v0
    if-nez v0, :L1
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;
    invoke-virtual { v0 }, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;
    move-result-object v0
    check-cast v0, Landroidx/appcompat/view/menu/g;
  .line 4
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->L:Landroidx/appcompat/widget/Toolbar$d;
    if-nez v1, :L0
  .line 5
    new-instance v1, Landroidx/appcompat/widget/Toolbar$d;
    invoke-direct { v1, p0 }, Landroidx/appcompat/widget/Toolbar$d;-><init>(Landroidx/appcompat/widget/Toolbar;)V
    iput-object v1, p0, Landroidx/appcompat/widget/Toolbar;->L:Landroidx/appcompat/widget/Toolbar$d;
  :L0
  .line 6
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;
    const/4 v2, 1
    invoke-virtual { v1, v2 }, Landroidx/appcompat/widget/ActionMenuView;->setExpandedActionViewsExclusive(Z)V
  .line 7
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->L:Landroidx/appcompat/widget/Toolbar$d;
    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->k:Landroid/content/Context;
    invoke-virtual { v0, v1, v2 }, Landroidx/appcompat/view/menu/g;->c(Landroidx/appcompat/view/menu/m;Landroid/content/Context;)V
  :L1
    return-void
.end method

.method private k()V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;
    if-nez v0, :L0
  .line 2
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView;
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object v1
    invoke-direct { v0, v1 }, Landroidx/appcompat/widget/ActionMenuView;-><init>(Landroid/content/Context;)V
    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;
  .line 3
    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->l:I
    invoke-virtual { v0, v1 }, Landroidx/appcompat/widget/ActionMenuView;->setPopupTheme(I)V
  .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->I:Landroidx/appcompat/widget/ActionMenuView$e;
    invoke-virtual { v0, v1 }, Landroidx/appcompat/widget/ActionMenuView;->setOnMenuItemClickListener(Landroidx/appcompat/widget/ActionMenuView$e;)V
  .line 5
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->M:Landroidx/appcompat/view/menu/m$a;
    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->N:Landroidx/appcompat/view/menu/g$a;
    invoke-virtual { v0, v1, v2 }, Landroidx/appcompat/widget/ActionMenuView;->O(Landroidx/appcompat/view/menu/m$a;Landroidx/appcompat/view/menu/g$a;)V
  .line 6
    invoke-virtual { p0 }, Landroidx/appcompat/widget/Toolbar;->m()Landroidx/appcompat/widget/Toolbar$e;
    move-result-object v0
    const v1, 8388613
  .line 7
    iget v2, p0, Landroidx/appcompat/widget/Toolbar;->o:I
    and-int/lit8 v2, v2, 112
    or-int/2addr v1, v2
    iput v1, v0, Landroidx/appcompat/app/a$a;->a:I
  .line 8
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;
    invoke-virtual { v1, v0 }, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  .line 9
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;
    const/4 v1, 0
    invoke-direct { p0, v0, v1 }, Landroidx/appcompat/widget/Toolbar;->c(Landroid/view/View;Z)V
  :L0
    return-void
.end method

.method private l()V
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageButton;
    if-nez v0, :L0
  .line 2
    new-instance v0, Landroidx/appcompat/widget/l;
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object v1
    const/4 v2, 0
    sget v3, Lc/a/a;->toolbarNavigationButtonStyle:I
    invoke-direct { v0, v1, v2, v3 }, Landroidx/appcompat/widget/l;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageButton;
  .line 3
    invoke-virtual { p0 }, Landroidx/appcompat/widget/Toolbar;->m()Landroidx/appcompat/widget/Toolbar$e;
    move-result-object v0
    const v1, 8388611
  .line 4
    iget v2, p0, Landroidx/appcompat/widget/Toolbar;->o:I
    and-int/lit8 v2, v2, 112
    or-int/2addr v1, v2
    iput v1, v0, Landroidx/appcompat/app/a$a;->a:I
  .line 5
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageButton;
    invoke-virtual { v1, v0 }, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  :L0
    return-void
.end method

.method private p(I)I
  .registers 6
  .line 1
    invoke-static { p0 }, Landroidx/core/view/v;->C(Landroid/view/View;)I
    move-result v0
  .line 2
    invoke-static { p1, v0 }, Landroidx/core/view/e;->b(II)I
    move-result p1
    and-int/lit8 p1, p1, 7
    const/4 v1, 1
    if-eq p1, v1, :L1
    const/4 v2, 3
    if-eq p1, v2, :L1
    const/4 v3, 5
    if-eq p1, v3, :L1
    if-ne v0, v1, :L0
    const/4 v2, 5
  :L0
    return v2
  :L1
    return p1
.end method

.method private q(Landroid/view/View;I)I
  .registers 9
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
    check-cast v0, Landroidx/appcompat/widget/Toolbar$e;
  .line 2
    invoke-virtual { p1 }, Landroid/view/View;->getMeasuredHeight()I
    move-result p1
    const/4 v1, 0
    if-lez p2, :L0
    sub-int p2, p1, p2
  .line 3
    div-int/lit8 p2, p2, 2
    goto :L1
  :L0
    const/4 p2, 0
  :L1
  .line 4
    iget v2, v0, Landroidx/appcompat/app/a$a;->a:I
    invoke-direct { p0, v2 }, Landroidx/appcompat/widget/Toolbar;->r(I)I
    move-result v2
    const/16 v3, 48
    if-eq v2, v3, :L5
    const/16 v3, 80
    if-eq v2, v3, :L4
  .line 5
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getPaddingTop()I
    move-result p2
  .line 6
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getPaddingBottom()I
    move-result v2
  .line 7
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getHeight()I
    move-result v3
    sub-int v4, v3, p2
    sub-int/2addr v4, v2
    sub-int/2addr v4, p1
  .line 8
    div-int/lit8 v4, v4, 2
  .line 9
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I
    if-ge v4, v5, :L2
    move v4, v5
    goto :L3
  :L2
    sub-int/2addr v3, v2
    sub-int/2addr v3, p1
    sub-int/2addr v3, v4
    sub-int/2addr v3, p2
  .line 10
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I
    if-ge v3, p1, :L3
    sub-int/2addr p1, v3
    sub-int/2addr v4, p1
  .line 11
    invoke-static { v1, v4 }, Ljava/lang/Math;->max(II)I
    move-result v4
  :L3
    add-int/2addr p2, v4
    return p2
  :L4
  .line 12
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getHeight()I
    move-result v1
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getPaddingBottom()I
    move-result v2
    sub-int/2addr v1, v2
    sub-int/2addr v1, p1
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I
    sub-int/2addr v1, p1
    sub-int/2addr v1, p2
    return v1
  :L5
  .line 13
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getPaddingTop()I
    move-result p1
    sub-int/2addr p1, p2
    return p1
.end method

.method private r(I)I
  .registers 3
    and-int/lit8 p1, p1, 112
    const/16 v0, 16
    if-eq p1, v0, :L0
    const/16 v0, 48
    if-eq p1, v0, :L0
    const/16 v0, 80
    if-eq p1, v0, :L0
  .line 1
    iget p1, p0, Landroidx/appcompat/widget/Toolbar;->x:I
    and-int/lit8 p1, p1, 112
  :L0
    return p1
.end method

.method private s(Landroid/view/View;)I
  .registers 3
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object p1
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;
  .line 2
    invoke-static { p1 }, Landroidx/core/view/h;->b(Landroid/view/ViewGroup$MarginLayoutParams;)I
    move-result v0
  .line 3
    invoke-static { p1 }, Landroidx/core/view/h;->a(Landroid/view/ViewGroup$MarginLayoutParams;)I
    move-result p1
    add-int/2addr v0, p1
    return v0
.end method

.method private t(Landroid/view/View;)I
  .registers 3
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object p1
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;
  .line 2
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I
    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I
    add-int/2addr v0, p1
    return v0
.end method

.method private u(Ljava/util/List;[I)I
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/List<",
      "Landroid/view/View;",
      ">;[I)I"
    }
  .end annotation
  .registers 11
    const/4 v0, 0
  .line 1
    aget v1, p2, v0
    const/4 v2, 1
  .line 2
    aget p2, p2, v2
  .line 3
    invoke-interface { p1 }, Ljava/util/List;->size()I
    move-result v2
    const/4 v3, 0
    const/4 v4, 0
  :L0
    if-ge v3, v2, :L1
  .line 4
    invoke-interface { p1, v3 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Landroid/view/View;
  .line 5
    invoke-virtual { v5 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v6
    check-cast v6, Landroidx/appcompat/widget/Toolbar$e;
  .line 6
    iget v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I
    sub-int/2addr v7, v1
  .line 7
    iget v1, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I
    sub-int/2addr v1, p2
  .line 8
    invoke-static { v0, v7 }, Ljava/lang/Math;->max(II)I
    move-result p2
  .line 9
    invoke-static { v0, v1 }, Ljava/lang/Math;->max(II)I
    move-result v6
    neg-int v7, v7
  .line 10
    invoke-static { v0, v7 }, Ljava/lang/Math;->max(II)I
    move-result v7
    neg-int v1, v1
  .line 11
    invoke-static { v0, v1 }, Ljava/lang/Math;->max(II)I
    move-result v1
  .line 12
    invoke-virtual { v5 }, Landroid/view/View;->getMeasuredWidth()I
    move-result v5
    add-int/2addr p2, v5
    add-int/2addr p2, v6
    add-int/2addr v4, p2
    add-int/lit8 v3, v3, 1
    move p2, v1
    move v1, v7
    goto :L0
  :L1
    return v4
.end method

.method private y(Landroid/view/View;)Z
  .registers 3
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v0
    if-eq v0, p0, :L1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->F:Ljava/util/ArrayList;
    invoke-virtual { v0, p1 }, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
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

.method public A()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Landroidx/appcompat/widget/ActionMenuView;->J()Z
    move-result v0
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method G()V
  .registers 5
  .line 1
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v0
    add-int/lit8 v0, v0, -1
  :L0
    if-ltz v0, :L2
  .line 2
    invoke-virtual { p0, v0 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v1
  .line 3
    invoke-virtual { v1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v2
    check-cast v2, Landroidx/appcompat/widget/Toolbar$e;
  .line 4
    iget v2, v2, Landroidx/appcompat/widget/Toolbar$e;->b:I
    const/4 v3, 2
    if-eq v2, v3, :L1
    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;
    if-eq v1, v2, :L1
  .line 5
    invoke-virtual { p0, v0 }, Landroid/view/ViewGroup;->removeViewAt(I)V
  .line 6
    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->F:Ljava/util/ArrayList;
    invoke-virtual { v2, v1 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  :L1
    add-int/lit8 v0, v0, -1
    goto :L0
  :L2
    return-void
.end method

.method public H(II)V
  .registers 4
  .line 1
    invoke-direct { p0 }, Landroidx/appcompat/widget/Toolbar;->h()V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->u:Landroidx/appcompat/widget/m0;
    invoke-virtual { v0, p1, p2 }, Landroidx/appcompat/widget/m0;->g(II)V
    return-void
.end method

.method public I(Landroidx/appcompat/view/menu/g;Landroidx/appcompat/widget/c;)V
  .registers 6
    if-nez p1, :L0
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;
    if-nez v0, :L0
    return-void
  :L0
  .line 2
    invoke-direct { p0 }, Landroidx/appcompat/widget/Toolbar;->k()V
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;
    invoke-virtual { v0 }, Landroidx/appcompat/widget/ActionMenuView;->N()Landroidx/appcompat/view/menu/g;
    move-result-object v0
    if-ne v0, p1, :L1
    return-void
  :L1
    if-eqz v0, :L2
  .line 4
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->K:Landroidx/appcompat/widget/c;
    invoke-virtual { v0, v1 }, Landroidx/appcompat/view/menu/g;->O(Landroidx/appcompat/view/menu/m;)V
  .line 5
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->L:Landroidx/appcompat/widget/Toolbar$d;
    invoke-virtual { v0, v1 }, Landroidx/appcompat/view/menu/g;->O(Landroidx/appcompat/view/menu/m;)V
  :L2
  .line 6
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->L:Landroidx/appcompat/widget/Toolbar$d;
    if-nez v0, :L3
  .line 7
    new-instance v0, Landroidx/appcompat/widget/Toolbar$d;
    invoke-direct { v0, p0 }, Landroidx/appcompat/widget/Toolbar$d;-><init>(Landroidx/appcompat/widget/Toolbar;)V
    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->L:Landroidx/appcompat/widget/Toolbar$d;
  :L3
    const/4 v0, 1
  .line 8
    invoke-virtual { p2, v0 }, Landroidx/appcompat/widget/c;->G(Z)V
    if-eqz p1, :L4
  .line 9
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->k:Landroid/content/Context;
    invoke-virtual { p1, p2, v0 }, Landroidx/appcompat/view/menu/g;->c(Landroidx/appcompat/view/menu/m;Landroid/content/Context;)V
  .line 10
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->L:Landroidx/appcompat/widget/Toolbar$d;
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->k:Landroid/content/Context;
    invoke-virtual { p1, v0, v1 }, Landroidx/appcompat/view/menu/g;->c(Landroidx/appcompat/view/menu/m;Landroid/content/Context;)V
    goto :L5
  :L4
  .line 11
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar;->k:Landroid/content/Context;
    const/4 v1, 0
    invoke-virtual { p2, p1, v1 }, Landroidx/appcompat/widget/c;->d(Landroid/content/Context;Landroidx/appcompat/view/menu/g;)V
  .line 12
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar;->L:Landroidx/appcompat/widget/Toolbar$d;
    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->k:Landroid/content/Context;
    invoke-virtual { p1, v2, v1 }, Landroidx/appcompat/widget/Toolbar$d;->d(Landroid/content/Context;Landroidx/appcompat/view/menu/g;)V
  .line 13
    invoke-virtual { p2, v0 }, Landroidx/appcompat/widget/c;->j(Z)V
  .line 14
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar;->L:Landroidx/appcompat/widget/Toolbar$d;
    invoke-virtual { p1, v0 }, Landroidx/appcompat/widget/Toolbar$d;->j(Z)V
  :L5
  .line 15
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->l:I
    invoke-virtual { p1, v0 }, Landroidx/appcompat/widget/ActionMenuView;->setPopupTheme(I)V
  .line 16
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;
    invoke-virtual { p1, p2 }, Landroidx/appcompat/widget/ActionMenuView;->setPresenter(Landroidx/appcompat/widget/c;)V
  .line 17
    iput-object p2, p0, Landroidx/appcompat/widget/Toolbar;->K:Landroidx/appcompat/widget/c;
    return-void
.end method

.method public J(Landroidx/appcompat/view/menu/m$a;Landroidx/appcompat/view/menu/g$a;)V
  .registers 4
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->M:Landroidx/appcompat/view/menu/m$a;
  .line 2
    iput-object p2, p0, Landroidx/appcompat/widget/Toolbar;->N:Landroidx/appcompat/view/menu/g$a;
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;
    if-eqz v0, :L0
  .line 4
    invoke-virtual { v0, p1, p2 }, Landroidx/appcompat/widget/ActionMenuView;->O(Landroidx/appcompat/view/menu/m$a;Landroidx/appcompat/view/menu/g$a;)V
  :L0
    return-void
.end method

.method public K(Landroid/content/Context;I)V
  .registers 4
  .line 1
    iput p2, p0, Landroidx/appcompat/widget/Toolbar;->n:I
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/TextView;
    if-eqz v0, :L0
  .line 3
    invoke-virtual { v0, p1, p2 }, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V
  :L0
    return-void
.end method

.method public L(Landroid/content/Context;I)V
  .registers 4
  .line 1
    iput p2, p0, Landroidx/appcompat/widget/Toolbar;->m:I
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;
    if-eqz v0, :L0
  .line 3
    invoke-virtual { v0, p1, p2 }, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V
  :L0
    return-void
.end method

.method public O()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Landroidx/appcompat/widget/ActionMenuView;->P()Z
    move-result v0
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method a()V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->F:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    add-int/lit8 v0, v0, -1
  :L0
    if-ltz v0, :L1
  .line 2
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->F:Ljava/util/ArrayList;
    invoke-virtual { v1, v0 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroid/view/View;
    invoke-virtual { p0, v1 }, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    add-int/lit8 v0, v0, -1
    goto :L0
  :L1
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->F:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->clear()V
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
  .registers 3
  .line 1
    invoke-super { p0, p1 }, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    move-result v0
    if-eqz v0, :L0
    instance-of p1, p1, Landroidx/appcompat/widget/Toolbar$e;
    if-eqz p1, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    return p1
.end method

.method public d()Z
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getVisibility()I
    move-result v0
    if-nez v0, :L0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Landroidx/appcompat/widget/ActionMenuView;->K()Z
    move-result v0
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public e()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->L:Landroidx/appcompat/widget/Toolbar$d;
    if-nez v0, :L0
    const/4 v0, 0
    goto :L1
  :L0
  .line 2
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar$d;->c:Landroidx/appcompat/view/menu/i;
  :L1
    if-eqz v0, :L2
  .line 3
    invoke-virtual { v0 }, Landroidx/appcompat/view/menu/i;->collapseActionView()Z
  :L2
    return-void
.end method

.method public f()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Landroidx/appcompat/widget/ActionMenuView;->B()V
  :L0
    return-void
.end method

.method g()V
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/widget/ImageButton;
    if-nez v0, :L0
  .line 2
    new-instance v0, Landroidx/appcompat/widget/l;
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object v1
    const/4 v2, 0
    sget v3, Lc/a/a;->toolbarNavigationButtonStyle:I
    invoke-direct { v0, v1, v2, v3 }, Landroidx/appcompat/widget/l;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/widget/ImageButton;
  .line 3
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->g:Landroid/graphics/drawable/Drawable;
    invoke-virtual { v0, v1 }, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
  .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/widget/ImageButton;
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->h:Ljava/lang/CharSequence;
    invoke-virtual { v0, v1 }, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V
  .line 5
    invoke-virtual { p0 }, Landroidx/appcompat/widget/Toolbar;->m()Landroidx/appcompat/widget/Toolbar$e;
    move-result-object v0
    const v1, 8388611
  .line 6
    iget v2, p0, Landroidx/appcompat/widget/Toolbar;->o:I
    and-int/lit8 v2, v2, 112
    or-int/2addr v1, v2
    iput v1, v0, Landroidx/appcompat/app/a$a;->a:I
    const/4 v1, 2
  .line 7
    iput v1, v0, Landroidx/appcompat/widget/Toolbar$e;->b:I
  .line 8
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/widget/ImageButton;
    invoke-virtual { v1, v0 }, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  .line 9
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/widget/ImageButton;
    new-instance v1, Landroidx/appcompat/widget/Toolbar$c;
    invoke-direct { v1, p0 }, Landroidx/appcompat/widget/Toolbar$c;-><init>(Landroidx/appcompat/widget/Toolbar;)V
    invoke-virtual { v0, v1 }, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  :L0
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/widget/Toolbar;->m()Landroidx/appcompat/widget/Toolbar$e;
    move-result-object v0
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/Toolbar;->n(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/Toolbar$e;
    move-result-object p1
    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
  .registers 2
  .line 2
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/Toolbar;->o(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/Toolbar$e;
    move-result-object p1
    return-object p1
.end method

.method public getCollapseContentDescription()Ljava/lang/CharSequence;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/widget/ImageButton;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;
    move-result-object v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return-object v0
.end method

.method public getCollapseIcon()Landroid/graphics/drawable/Drawable;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/widget/ImageButton;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return-object v0
.end method

.method public getContentInsetEnd()I
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->u:Landroidx/appcompat/widget/m0;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Landroidx/appcompat/widget/m0;->a()I
    move-result v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public getContentInsetEndWithActions()I
  .registers 3
  .line 1
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->w:I
    const/high16 v1, -32768
    if-eq v0, v1, :L0
    goto :L1
  :L0
  .line 2
    invoke-virtual { p0 }, Landroidx/appcompat/widget/Toolbar;->getContentInsetEnd()I
    move-result v0
  :L1
    return v0
.end method

.method public getContentInsetLeft()I
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->u:Landroidx/appcompat/widget/m0;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Landroidx/appcompat/widget/m0;->b()I
    move-result v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public getContentInsetRight()I
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->u:Landroidx/appcompat/widget/m0;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Landroidx/appcompat/widget/m0;->c()I
    move-result v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public getContentInsetStart()I
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->u:Landroidx/appcompat/widget/m0;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Landroidx/appcompat/widget/m0;->d()I
    move-result v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public getContentInsetStartWithNavigation()I
  .registers 3
  .line 1
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->v:I
    const/high16 v1, -32768
    if-eq v0, v1, :L0
    goto :L1
  :L0
  .line 2
    invoke-virtual { p0 }, Landroidx/appcompat/widget/Toolbar;->getContentInsetStart()I
    move-result v0
  :L1
    return v0
.end method

.method public getCurrentContentInsetEnd()I
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;
    const/4 v1, 0
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Landroidx/appcompat/widget/ActionMenuView;->N()Landroidx/appcompat/view/menu/g;
    move-result-object v0
    if-eqz v0, :L0
  .line 3
    invoke-virtual { v0 }, Landroidx/appcompat/view/menu/g;->hasVisibleItems()Z
    move-result v0
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    if-eqz v0, :L2
  .line 4
    invoke-virtual { p0 }, Landroidx/appcompat/widget/Toolbar;->getContentInsetEnd()I
    move-result v0
    iget v2, p0, Landroidx/appcompat/widget/Toolbar;->w:I
    invoke-static { v2, v1 }, Ljava/lang/Math;->max(II)I
    move-result v1
    invoke-static { v0, v1 }, Ljava/lang/Math;->max(II)I
    move-result v0
    goto :L3
  :L2
  .line 5
    invoke-virtual { p0 }, Landroidx/appcompat/widget/Toolbar;->getContentInsetEnd()I
    move-result v0
  :L3
    return v0
.end method

.method public getCurrentContentInsetLeft()I
  .registers 3
  .line 1
    invoke-static { p0 }, Landroidx/core/view/v;->C(Landroid/view/View;)I
    move-result v0
    const/4 v1, 1
    if-ne v0, v1, :L0
  .line 2
    invoke-virtual { p0 }, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetEnd()I
    move-result v0
    goto :L1
  :L0
  .line 3
    invoke-virtual { p0 }, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetStart()I
    move-result v0
  :L1
    return v0
.end method

.method public getCurrentContentInsetRight()I
  .registers 3
  .line 1
    invoke-static { p0 }, Landroidx/core/view/v;->C(Landroid/view/View;)I
    move-result v0
    const/4 v1, 1
    if-ne v0, v1, :L0
  .line 2
    invoke-virtual { p0 }, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetStart()I
    move-result v0
    goto :L1
  :L0
  .line 3
    invoke-virtual { p0 }, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetEnd()I
    move-result v0
  :L1
    return v0
.end method

.method public getCurrentContentInsetStart()I
  .registers 4
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    if-eqz v0, :L0
  .line 2
    invoke-virtual { p0 }, Landroidx/appcompat/widget/Toolbar;->getContentInsetStart()I
    move-result v0
    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->v:I
    const/4 v2, 0
    invoke-static { v1, v2 }, Ljava/lang/Math;->max(II)I
    move-result v1
    invoke-static { v0, v1 }, Ljava/lang/Math;->max(II)I
    move-result v0
    goto :L1
  :L0
  .line 3
    invoke-virtual { p0 }, Landroidx/appcompat/widget/Toolbar;->getContentInsetStart()I
    move-result v0
  :L1
    return v0
.end method

.method public getLogo()Landroid/graphics/drawable/Drawable;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/ImageView;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return-object v0
.end method

.method public getLogoDescription()Ljava/lang/CharSequence;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/ImageView;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;
    move-result-object v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
  .registers 2
  .line 1
    invoke-direct { p0 }, Landroidx/appcompat/widget/Toolbar;->j()V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;
    invoke-virtual { v0 }, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;
    move-result-object v0
    return-object v0
.end method

.method public getNavigationContentDescription()Ljava/lang/CharSequence;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageButton;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;
    move-result-object v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return-object v0
.end method

.method public getNavigationIcon()Landroid/graphics/drawable/Drawable;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageButton;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return-object v0
.end method

.method getOuterActionMenuPresenter()Landroidx/appcompat/widget/c;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->K:Landroidx/appcompat/widget/c;
    return-object v0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
  .registers 2
  .line 1
    invoke-direct { p0 }, Landroidx/appcompat/widget/Toolbar;->j()V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;
    invoke-virtual { v0 }, Landroidx/appcompat/widget/ActionMenuView;->getOverflowIcon()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    return-object v0
.end method

.method getPopupContext()Landroid/content/Context;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->k:Landroid/content/Context;
    return-object v0
.end method

.method public getPopupTheme()I
  .registers 2
  .line 1
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->l:I
    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->z:Ljava/lang/CharSequence;
    return-object v0
.end method

.method final getSubtitleTextView()Landroid/widget/TextView;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/TextView;
    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->y:Ljava/lang/CharSequence;
    return-object v0
.end method

.method public getTitleMarginBottom()I
  .registers 2
  .line 1
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->t:I
    return v0
.end method

.method public getTitleMarginEnd()I
  .registers 2
  .line 1
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->r:I
    return v0
.end method

.method public getTitleMarginStart()I
  .registers 2
  .line 1
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->q:I
    return v0
.end method

.method public getTitleMarginTop()I
  .registers 2
  .line 1
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->s:I
    return v0
.end method

.method final getTitleTextView()Landroid/widget/TextView;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;
    return-object v0
.end method

.method public getWrapper()Landroidx/appcompat/widget/b0;
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->J:Landroidx/appcompat/widget/v0;
    if-nez v0, :L0
  .line 2
    new-instance v0, Landroidx/appcompat/widget/v0;
    const/4 v1, 1
    invoke-direct { v0, p0, v1 }, Landroidx/appcompat/widget/v0;-><init>(Landroidx/appcompat/widget/Toolbar;Z)V
    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->J:Landroidx/appcompat/widget/v0;
  :L0
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->J:Landroidx/appcompat/widget/v0;
    return-object v0
.end method

.method protected m()Landroidx/appcompat/widget/Toolbar$e;
  .registers 3
  .line 1
    new-instance v0, Landroidx/appcompat/widget/Toolbar$e;
    const/4 v1, -2
    invoke-direct { v0, v1, v1 }, Landroidx/appcompat/widget/Toolbar$e;-><init>(II)V
    return-object v0
.end method

.method public n(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/Toolbar$e;
  .registers 4
  .line 1
    new-instance v0, Landroidx/appcompat/widget/Toolbar$e;
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object v1
    invoke-direct { v0, v1, p1 }, Landroidx/appcompat/widget/Toolbar$e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    return-object v0
.end method

.method protected o(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/Toolbar$e;
  .registers 3
  .line 1
    instance-of v0, p1, Landroidx/appcompat/widget/Toolbar$e;
    if-eqz v0, :L0
  .line 2
    new-instance v0, Landroidx/appcompat/widget/Toolbar$e;
    check-cast p1, Landroidx/appcompat/widget/Toolbar$e;
    invoke-direct { v0, p1 }, Landroidx/appcompat/widget/Toolbar$e;-><init>(Landroidx/appcompat/widget/Toolbar$e;)V
    return-object v0
  :L0
  .line 3
    instance-of v0, p1, Landroidx/appcompat/app/a$a;
    if-eqz v0, :L1
  .line 4
    new-instance v0, Landroidx/appcompat/widget/Toolbar$e;
    check-cast p1, Landroidx/appcompat/app/a$a;
    invoke-direct { v0, p1 }, Landroidx/appcompat/widget/Toolbar$e;-><init>(Landroidx/appcompat/app/a$a;)V
    return-object v0
  :L1
  .line 5
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v0, :L2
  .line 6
    new-instance v0, Landroidx/appcompat/widget/Toolbar$e;
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-direct { v0, p1 }, Landroidx/appcompat/widget/Toolbar$e;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    return-object v0
  :L2
  .line 7
    new-instance v0, Landroidx/appcompat/widget/Toolbar$e;
    invoke-direct { v0, p1 }, Landroidx/appcompat/widget/Toolbar$e;-><init>(Landroid/view/ViewGroup$LayoutParams;)V
    return-object v0
.end method

.method protected onDetachedFromWindow()V
  .registers 2
  .line 1
    invoke-super { p0 }, Landroid/view/ViewGroup;->onDetachedFromWindow()V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->P:Ljava/lang/Runnable;
    invoke-virtual { p0, v0 }, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
  .registers 7
  .line 1
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getActionMasked()I
    move-result v0
    const/4 v1, 0
    const/16 v2, 9
    if-ne v0, v2, :L0
  .line 2
    iput-boolean v1, p0, Landroidx/appcompat/widget/Toolbar;->D:Z
  :L0
  .line 3
    iget-boolean v3, p0, Landroidx/appcompat/widget/Toolbar;->D:Z
    const/4 v4, 1
    if-nez v3, :L1
  .line 4
    invoke-super { p0, p1 }, Landroid/view/ViewGroup;->onHoverEvent(Landroid/view/MotionEvent;)Z
    move-result p1
    if-ne v0, v2, :L1
    if-nez p1, :L1
  .line 5
    iput-boolean v4, p0, Landroidx/appcompat/widget/Toolbar;->D:Z
  :L1
    const/16 p1, 10
    if-eq v0, p1, :L2
    const/4 p1, 3
    if-ne v0, p1, :L3
  :L2
  .line 6
    iput-boolean v1, p0, Landroidx/appcompat/widget/Toolbar;->D:Z
  :L3
    return v4
.end method

.method protected onLayout(ZIIII)V
  .registers 25
    move-object/from16 v0, p0
  .line 1
    invoke-static/range { p0 .. p0 }, Landroidx/core/view/v;->C(Landroid/view/View;)I
    move-result v1
    const/4 v2, 1
    const/4 v3, 0
    if-ne v1, v2, :L0
    const/4 v1, 1
    goto :L1
  :L0
    const/4 v1, 0
  :L1
  .line 2
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getWidth()I
    move-result v4
  .line 3
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getHeight()I
    move-result v5
  .line 4
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingLeft()I
    move-result v6
  .line 5
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingRight()I
    move-result v7
  .line 6
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingTop()I
    move-result v8
  .line 7
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingBottom()I
    move-result v9
    sub-int v10, v4, v7
  .line 8
    iget-object v11, v0, Landroidx/appcompat/widget/Toolbar;->G:[I
  .line 9
    aput v3, v11, v2
    aput v3, v11, v3
  .line 10
    invoke-static/range { p0 .. p0 }, Landroidx/core/view/v;->D(Landroid/view/View;)I
    move-result v12
    if-ltz v12, :L2
    sub-int v13, p5, p3
  .line 11
    invoke-static { v12, v13 }, Ljava/lang/Math;->min(II)I
    move-result v12
    goto :L3
  :L2
    const/4 v12, 0
  :L3
  .line 12
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageButton;
    invoke-direct { v0, v13 }, Landroidx/appcompat/widget/Toolbar;->N(Landroid/view/View;)Z
    move-result v13
    if-eqz v13, :L5
    if-eqz v1, :L4
  .line 13
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageButton;
    invoke-direct { v0, v13, v10, v11, v12 }, Landroidx/appcompat/widget/Toolbar;->C(Landroid/view/View;I[II)I
    move-result v13
    move v14, v13
    move v13, v6
    goto :L7
  :L4
  .line 14
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageButton;
    invoke-direct { v0, v13, v6, v11, v12 }, Landroidx/appcompat/widget/Toolbar;->B(Landroid/view/View;I[II)I
    move-result v13
    goto :L6
  :L5
    move v13, v6
  :L6
    move v14, v10
  :L7
  .line 15
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/widget/ImageButton;
    invoke-direct { v0, v15 }, Landroidx/appcompat/widget/Toolbar;->N(Landroid/view/View;)Z
    move-result v15
    if-eqz v15, :L9
    if-eqz v1, :L8
  .line 16
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/widget/ImageButton;
    invoke-direct { v0, v15, v14, v11, v12 }, Landroidx/appcompat/widget/Toolbar;->C(Landroid/view/View;I[II)I
    move-result v14
    goto :L9
  :L8
  .line 17
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/widget/ImageButton;
    invoke-direct { v0, v15, v13, v11, v12 }, Landroidx/appcompat/widget/Toolbar;->B(Landroid/view/View;I[II)I
    move-result v13
  :L9
  .line 18
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;
    invoke-direct { v0, v15 }, Landroidx/appcompat/widget/Toolbar;->N(Landroid/view/View;)Z
    move-result v15
    if-eqz v15, :L11
    if-eqz v1, :L10
  .line 19
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;
    invoke-direct { v0, v15, v13, v11, v12 }, Landroidx/appcompat/widget/Toolbar;->B(Landroid/view/View;I[II)I
    move-result v13
    goto :L11
  :L10
  .line 20
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;
    invoke-direct { v0, v15, v14, v11, v12 }, Landroidx/appcompat/widget/Toolbar;->C(Landroid/view/View;I[II)I
    move-result v14
  :L11
  .line 21
    invoke-virtual/range { p0 .. p0 }, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetLeft()I
    move-result v15
  .line 22
    invoke-virtual/range { p0 .. p0 }, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetRight()I
    move-result v16
    sub-int v2, v15, v13
  .line 23
    invoke-static { v3, v2 }, Ljava/lang/Math;->max(II)I
    move-result v2
    aput v2, v11, v3
    sub-int v2, v10, v14
    sub-int v2, v16, v2
  .line 24
    invoke-static { v3, v2 }, Ljava/lang/Math;->max(II)I
    move-result v2
    const/16 v17, 1
    aput v2, v11, v17
  .line 25
    invoke-static { v13, v15 }, Ljava/lang/Math;->max(II)I
    move-result v2
    sub-int v10, v10, v16
  .line 26
    invoke-static { v14, v10 }, Ljava/lang/Math;->min(II)I
    move-result v10
  .line 27
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->j:Landroid/view/View;
    invoke-direct { v0, v13 }, Landroidx/appcompat/widget/Toolbar;->N(Landroid/view/View;)Z
    move-result v13
    if-eqz v13, :L13
    if-eqz v1, :L12
  .line 28
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->j:Landroid/view/View;
    invoke-direct { v0, v13, v10, v11, v12 }, Landroidx/appcompat/widget/Toolbar;->C(Landroid/view/View;I[II)I
    move-result v10
    goto :L13
  :L12
  .line 29
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->j:Landroid/view/View;
    invoke-direct { v0, v13, v2, v11, v12 }, Landroidx/appcompat/widget/Toolbar;->B(Landroid/view/View;I[II)I
    move-result v2
  :L13
  .line 30
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/ImageView;
    invoke-direct { v0, v13 }, Landroidx/appcompat/widget/Toolbar;->N(Landroid/view/View;)Z
    move-result v13
    if-eqz v13, :L15
    if-eqz v1, :L14
  .line 31
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/ImageView;
    invoke-direct { v0, v13, v10, v11, v12 }, Landroidx/appcompat/widget/Toolbar;->C(Landroid/view/View;I[II)I
    move-result v10
    goto :L15
  :L14
  .line 32
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/ImageView;
    invoke-direct { v0, v13, v2, v11, v12 }, Landroidx/appcompat/widget/Toolbar;->B(Landroid/view/View;I[II)I
    move-result v2
  :L15
  .line 33
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;
    invoke-direct { v0, v13 }, Landroidx/appcompat/widget/Toolbar;->N(Landroid/view/View;)Z
    move-result v13
  .line 34
    iget-object v14, v0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/TextView;
    invoke-direct { v0, v14 }, Landroidx/appcompat/widget/Toolbar;->N(Landroid/view/View;)Z
    move-result v14
    if-eqz v13, :L16
  .line 35
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;
    invoke-virtual { v15 }, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v15
    check-cast v15, Landroidx/appcompat/widget/Toolbar$e;
  .line 36
    iget v3, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I
    move/from16 p4, v7
    iget-object v7, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;
    invoke-virtual { v7 }, Landroid/widget/TextView;->getMeasuredHeight()I
    move-result v7
    add-int/2addr v3, v7
    iget v7, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I
    add-int/2addr v3, v7
    const/4 v7, 0
    add-int/2addr v3, v7
    goto :L17
  :L16
    move/from16 p4, v7
    const/4 v3, 0
  :L17
    if-eqz v14, :L18
  .line 37
    iget-object v7, v0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/TextView;
    invoke-virtual { v7 }, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v7
    check-cast v7, Landroidx/appcompat/widget/Toolbar$e;
  .line 38
    iget v15, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I
    move/from16 v16, v4
    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/TextView;
    invoke-virtual { v4 }, Landroid/widget/TextView;->getMeasuredHeight()I
    move-result v4
    add-int/2addr v15, v4
    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I
    add-int/2addr v15, v4
    add-int/2addr v3, v15
    goto :L19
  :L18
    move/from16 v16, v4
  :L19
    if-nez v13, :L22
    if-eqz v14, :L20
    goto :L22
  :L20
    move/from16 v18, v6
    move/from16 p3, v12
  :L21
    const/4 v1, 0
    goto/16 :L50
  :L22
    if-eqz v13, :L23
  .line 39
    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;
    goto :L24
  :L23
    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/TextView;
  :L24
    if-eqz v14, :L25
  .line 40
    iget-object v7, v0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/TextView;
    goto :L26
  :L25
    iget-object v7, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;
  :L26
  .line 41
    invoke-virtual { v4 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v4
    check-cast v4, Landroidx/appcompat/widget/Toolbar$e;
  .line 42
    invoke-virtual { v7 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v7
    check-cast v7, Landroidx/appcompat/widget/Toolbar$e;
    if-eqz v13, :L27
  .line 43
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;
    invoke-virtual { v15 }, Landroid/widget/TextView;->getMeasuredWidth()I
    move-result v15
    if-gtz v15, :L28
  :L27
    if-eqz v14, :L29
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/TextView;
  .line 44
    invoke-virtual { v15 }, Landroid/widget/TextView;->getMeasuredWidth()I
    move-result v15
    if-lez v15, :L29
  :L28
    const/16 v17, 1
    goto :L30
  :L29
    const/16 v17, 0
  :L30
  .line 45
    iget v15, v0, Landroidx/appcompat/widget/Toolbar;->x:I
    and-int/lit8 v15, v15, 112
    move/from16 v18, v6
    const/16 v6, 48
    if-eq v15, v6, :L34
    const/16 v6, 80
    if-eq v15, v6, :L33
    sub-int v6, v5, v8
    sub-int/2addr v6, v9
    sub-int/2addr v6, v3
  .line 46
    div-int/lit8 v6, v6, 2
  .line 47
    iget v15, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I
    move/from16 p3, v12
    iget v12, v0, Landroidx/appcompat/widget/Toolbar;->s:I
    move/from16 p5, v2
    add-int v2, v15, v12
    if-ge v6, v2, :L31
    add-int v6, v15, v12
    goto :L32
  :L31
    sub-int/2addr v5, v9
    sub-int/2addr v5, v3
    sub-int/2addr v5, v6
    sub-int/2addr v5, v8
  .line 48
    iget v2, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I
    iget v3, v0, Landroidx/appcompat/widget/Toolbar;->t:I
    add-int/2addr v2, v3
    if-ge v5, v2, :L32
  .line 49
    iget v2, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I
    add-int/2addr v2, v3
    sub-int/2addr v2, v5
    sub-int/2addr v6, v2
    const/4 v2, 0
    invoke-static { v2, v6 }, Ljava/lang/Math;->max(II)I
    move-result v6
  :L32
    add-int/2addr v8, v6
    goto :L35
  :L33
    move/from16 p5, v2
    move/from16 p3, v12
    sub-int/2addr v5, v9
  .line 50
    iget v2, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I
    sub-int/2addr v5, v2
    iget v2, v0, Landroidx/appcompat/widget/Toolbar;->t:I
    sub-int/2addr v5, v2
    sub-int v8, v5, v3
    goto :L35
  :L34
    move/from16 p5, v2
    move/from16 p3, v12
  .line 51
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingTop()I
    move-result v2
    iget v3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I
    add-int/2addr v2, v3
    iget v3, v0, Landroidx/appcompat/widget/Toolbar;->s:I
    add-int v8, v2, v3
  :L35
    if-eqz v1, :L43
    if-eqz v17, :L36
  .line 52
    iget v1, v0, Landroidx/appcompat/widget/Toolbar;->q:I
    goto :L37
  :L36
    const/4 v1, 0
  :L37
    const/4 v2, 1
    aget v3, v11, v2
    sub-int/2addr v1, v3
    const/4 v3, 0
  .line 53
    invoke-static { v3, v1 }, Ljava/lang/Math;->max(II)I
    move-result v4
    sub-int/2addr v10, v4
    neg-int v1, v1
  .line 54
    invoke-static { v3, v1 }, Ljava/lang/Math;->max(II)I
    move-result v1
    aput v1, v11, v2
    if-eqz v13, :L38
  .line 55
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;
    invoke-virtual { v1 }, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v1
    check-cast v1, Landroidx/appcompat/widget/Toolbar$e;
  .line 56
    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;
    invoke-virtual { v2 }, Landroid/widget/TextView;->getMeasuredWidth()I
    move-result v2
    sub-int v2, v10, v2
  .line 57
    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;
    invoke-virtual { v3 }, Landroid/widget/TextView;->getMeasuredHeight()I
    move-result v3
    add-int/2addr v3, v8
  .line 58
    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;
    invoke-virtual { v4, v2, v8, v10, v3 }, Landroid/widget/TextView;->layout(IIII)V
  .line 59
    iget v4, v0, Landroidx/appcompat/widget/Toolbar;->r:I
    sub-int/2addr v2, v4
  .line 60
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I
    add-int v8, v3, v1
    goto :L39
  :L38
    move v2, v10
  :L39
    if-eqz v14, :L40
  .line 61
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/TextView;
    invoke-virtual { v1 }, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v1
    check-cast v1, Landroidx/appcompat/widget/Toolbar$e;
  .line 62
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I
    add-int/2addr v8, v3
  .line 63
    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/TextView;
    invoke-virtual { v3 }, Landroid/widget/TextView;->getMeasuredWidth()I
    move-result v3
    sub-int v3, v10, v3
  .line 64
    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/TextView;
    invoke-virtual { v4 }, Landroid/widget/TextView;->getMeasuredHeight()I
    move-result v4
    add-int/2addr v4, v8
  .line 65
    iget-object v5, v0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/TextView;
    invoke-virtual { v5, v3, v8, v10, v4 }, Landroid/widget/TextView;->layout(IIII)V
  .line 66
    iget v3, v0, Landroidx/appcompat/widget/Toolbar;->r:I
    sub-int v3, v10, v3
  .line 67
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I
    goto :L41
  :L40
    move v3, v10
  :L41
    if-eqz v17, :L42
  .line 68
    invoke-static { v2, v3 }, Ljava/lang/Math;->min(II)I
    move-result v1
    move v10, v1
  :L42
    move/from16 v2, p5
    goto/16 :L21
  :L43
    if-eqz v17, :L44
  .line 69
    iget v7, v0, Landroidx/appcompat/widget/Toolbar;->q:I
    const/4 v1, 0
    goto :L45
  :L44
    const/4 v1, 0
    const/4 v7, 0
  :L45
    aget v2, v11, v1
    sub-int/2addr v7, v2
  .line 70
    invoke-static { v1, v7 }, Ljava/lang/Math;->max(II)I
    move-result v2
    add-int v2, p5, v2
    neg-int v3, v7
  .line 71
    invoke-static { v1, v3 }, Ljava/lang/Math;->max(II)I
    move-result v3
    aput v3, v11, v1
    if-eqz v13, :L46
  .line 72
    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;
    invoke-virtual { v3 }, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v3
    check-cast v3, Landroidx/appcompat/widget/Toolbar$e;
  .line 73
    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;
    invoke-virtual { v4 }, Landroid/widget/TextView;->getMeasuredWidth()I
    move-result v4
    add-int/2addr v4, v2
  .line 74
    iget-object v5, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;
    invoke-virtual { v5 }, Landroid/widget/TextView;->getMeasuredHeight()I
    move-result v5
    add-int/2addr v5, v8
  .line 75
    iget-object v6, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;
    invoke-virtual { v6, v2, v8, v4, v5 }, Landroid/widget/TextView;->layout(IIII)V
  .line 76
    iget v6, v0, Landroidx/appcompat/widget/Toolbar;->r:I
    add-int/2addr v4, v6
  .line 77
    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I
    add-int v8, v5, v3
    goto :L47
  :L46
    move v4, v2
  :L47
    if-eqz v14, :L48
  .line 78
    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/TextView;
    invoke-virtual { v3 }, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v3
    check-cast v3, Landroidx/appcompat/widget/Toolbar$e;
  .line 79
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I
    add-int/2addr v8, v5
  .line 80
    iget-object v5, v0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/TextView;
    invoke-virtual { v5 }, Landroid/widget/TextView;->getMeasuredWidth()I
    move-result v5
    add-int/2addr v5, v2
  .line 81
    iget-object v6, v0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/TextView;
    invoke-virtual { v6 }, Landroid/widget/TextView;->getMeasuredHeight()I
    move-result v6
    add-int/2addr v6, v8
  .line 82
    iget-object v7, v0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/TextView;
    invoke-virtual { v7, v2, v8, v5, v6 }, Landroid/widget/TextView;->layout(IIII)V
  .line 83
    iget v6, v0, Landroidx/appcompat/widget/Toolbar;->r:I
    add-int/2addr v5, v6
  .line 84
    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I
    goto :L49
  :L48
    move v5, v2
  :L49
    if-eqz v17, :L50
  .line 85
    invoke-static { v4, v5 }, Ljava/lang/Math;->max(II)I
    move-result v2
  :L50
  .line 86
    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->E:Ljava/util/ArrayList;
    const/4 v4, 3
    invoke-direct { v0, v3, v4 }, Landroidx/appcompat/widget/Toolbar;->b(Ljava/util/List;I)V
  .line 87
    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->E:Ljava/util/ArrayList;
    invoke-virtual { v3 }, Ljava/util/ArrayList;->size()I
    move-result v3
    const/4 v7, 0
  :L51
    if-ge v7, v3, :L52
  .line 88
    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->E:Ljava/util/ArrayList;
    invoke-virtual { v4, v7 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Landroid/view/View;
    move/from16 v12, p3
    invoke-direct { v0, v4, v2, v11, v12 }, Landroidx/appcompat/widget/Toolbar;->B(Landroid/view/View;I[II)I
    move-result v2
    add-int/lit8 v7, v7, 1
    goto :L51
  :L52
    move/from16 v12, p3
  .line 89
    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->E:Ljava/util/ArrayList;
    const/4 v4, 5
    invoke-direct { v0, v3, v4 }, Landroidx/appcompat/widget/Toolbar;->b(Ljava/util/List;I)V
  .line 90
    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->E:Ljava/util/ArrayList;
    invoke-virtual { v3 }, Ljava/util/ArrayList;->size()I
    move-result v3
    const/4 v7, 0
  :L53
    if-ge v7, v3, :L54
  .line 91
    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->E:Ljava/util/ArrayList;
    invoke-virtual { v4, v7 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Landroid/view/View;
    invoke-direct { v0, v4, v10, v11, v12 }, Landroidx/appcompat/widget/Toolbar;->C(Landroid/view/View;I[II)I
    move-result v10
    add-int/lit8 v7, v7, 1
    goto :L53
  :L54
  .line 92
    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->E:Ljava/util/ArrayList;
    const/4 v4, 1
    invoke-direct { v0, v3, v4 }, Landroidx/appcompat/widget/Toolbar;->b(Ljava/util/List;I)V
  .line 93
    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->E:Ljava/util/ArrayList;
    invoke-direct { v0, v3, v11 }, Landroidx/appcompat/widget/Toolbar;->u(Ljava/util/List;[I)I
    move-result v3
    sub-int v4, v16, v18
    sub-int v4, v4, p4
  .line 94
    div-int/lit8 v4, v4, 2
    add-int v6, v18, v4
  .line 95
    div-int/lit8 v4, v3, 2
    sub-int/2addr v6, v4
    add-int/2addr v3, v6
    if-ge v6, v2, :L55
    goto :L57
  :L55
    if-le v3, v10, :L56
    sub-int/2addr v3, v10
    sub-int v2, v6, v3
    goto :L57
  :L56
    move v2, v6
  :L57
  .line 96
    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->E:Ljava/util/ArrayList;
    invoke-virtual { v3 }, Ljava/util/ArrayList;->size()I
    move-result v3
  :L58
    if-ge v1, v3, :L59
  .line 97
    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->E:Ljava/util/ArrayList;
    invoke-virtual { v4, v1 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Landroid/view/View;
    invoke-direct { v0, v4, v2, v11, v12 }, Landroidx/appcompat/widget/Toolbar;->B(Landroid/view/View;I[II)I
    move-result v2
    add-int/lit8 v1, v1, 1
    goto :L58
  :L59
  .line 98
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->E:Ljava/util/ArrayList;
    invoke-virtual { v1 }, Ljava/util/ArrayList;->clear()V
    return-void
.end method

.method protected onMeasure(II)V
  .registers 19
    move-object/from16 v7, p0
  .line 1
    iget-object v8, v7, Landroidx/appcompat/widget/Toolbar;->G:[I
  .line 2
    invoke-static/range { p0 .. p0 }, Landroidx/appcompat/widget/a1;->b(Landroid/view/View;)Z
    move-result v0
    const/4 v1, 1
    const/4 v9, 0
    if-eqz v0, :L0
    const/4 v10, 1
    const/4 v11, 0
    goto :L1
  :L0
    const/4 v10, 0
    const/4 v11, 1
  :L1
  .line 3
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageButton;
    invoke-direct { v7, v0 }, Landroidx/appcompat/widget/Toolbar;->N(Landroid/view/View;)Z
    move-result v0
    if-eqz v0, :L2
  .line 4
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageButton;
    const/4 v5, 0
    iget v6, v7, Landroidx/appcompat/widget/Toolbar;->p:I
    const/4 v3, 0
    move-object/from16 v0, p0
    move/from16 v2, p1
    move/from16 v4, p2
    invoke-direct/range { v0 .. v6 }, Landroidx/appcompat/widget/Toolbar;->E(Landroid/view/View;IIIII)V
  .line 5
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageButton;
    invoke-virtual { v0 }, Landroid/widget/ImageButton;->getMeasuredWidth()I
    move-result v0
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageButton;
    invoke-direct { v7, v1 }, Landroidx/appcompat/widget/Toolbar;->s(Landroid/view/View;)I
    move-result v1
    add-int/2addr v0, v1
  .line 6
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageButton;
    invoke-virtual { v1 }, Landroid/widget/ImageButton;->getMeasuredHeight()I
    move-result v1
    iget-object v2, v7, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageButton;
  .line 7
    invoke-direct { v7, v2 }, Landroidx/appcompat/widget/Toolbar;->t(Landroid/view/View;)I
    move-result v2
    add-int/2addr v1, v2
  .line 8
    invoke-static { v9, v1 }, Ljava/lang/Math;->max(II)I
    move-result v1
  .line 9
    iget-object v2, v7, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageButton;
  .line 10
    invoke-virtual { v2 }, Landroid/widget/ImageButton;->getMeasuredState()I
    move-result v2
  .line 11
    invoke-static { v9, v2 }, Landroid/view/View;->combineMeasuredStates(II)I
    move-result v2
    move v12, v1
    move v13, v2
    goto :L3
  :L2
    const/4 v0, 0
    const/4 v12, 0
    const/4 v13, 0
  :L3
  .line 12
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->i:Landroid/widget/ImageButton;
    invoke-direct { v7, v1 }, Landroidx/appcompat/widget/Toolbar;->N(Landroid/view/View;)Z
    move-result v1
    if-eqz v1, :L4
  .line 13
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->i:Landroid/widget/ImageButton;
    const/4 v5, 0
    iget v6, v7, Landroidx/appcompat/widget/Toolbar;->p:I
    const/4 v3, 0
    move-object/from16 v0, p0
    move/from16 v2, p1
    move/from16 v4, p2
    invoke-direct/range { v0 .. v6 }, Landroidx/appcompat/widget/Toolbar;->E(Landroid/view/View;IIIII)V
  .line 14
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->i:Landroid/widget/ImageButton;
    invoke-virtual { v0 }, Landroid/widget/ImageButton;->getMeasuredWidth()I
    move-result v0
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->i:Landroid/widget/ImageButton;
  .line 15
    invoke-direct { v7, v1 }, Landroidx/appcompat/widget/Toolbar;->s(Landroid/view/View;)I
    move-result v1
    add-int/2addr v0, v1
  .line 16
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->i:Landroid/widget/ImageButton;
    invoke-virtual { v1 }, Landroid/widget/ImageButton;->getMeasuredHeight()I
    move-result v1
    iget-object v2, v7, Landroidx/appcompat/widget/Toolbar;->i:Landroid/widget/ImageButton;
  .line 17
    invoke-direct { v7, v2 }, Landroidx/appcompat/widget/Toolbar;->t(Landroid/view/View;)I
    move-result v2
    add-int/2addr v1, v2
  .line 18
    invoke-static { v12, v1 }, Ljava/lang/Math;->max(II)I
    move-result v12
  .line 19
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->i:Landroid/widget/ImageButton;
  .line 20
    invoke-virtual { v1 }, Landroid/widget/ImageButton;->getMeasuredState()I
    move-result v1
  .line 21
    invoke-static { v13, v1 }, Landroid/view/View;->combineMeasuredStates(II)I
    move-result v13
  :L4
  .line 22
    invoke-virtual/range { p0 .. p0 }, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetStart()I
    move-result v1
  .line 23
    invoke-static { v1, v0 }, Ljava/lang/Math;->max(II)I
    move-result v2
    add-int v14, v9, v2
    sub-int/2addr v1, v0
  .line 24
    invoke-static { v9, v1 }, Ljava/lang/Math;->max(II)I
    move-result v0
    aput v0, v8, v10
  .line 25
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;
    invoke-direct { v7, v0 }, Landroidx/appcompat/widget/Toolbar;->N(Landroid/view/View;)Z
    move-result v0
    if-eqz v0, :L5
  .line 26
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;
    const/4 v5, 0
    iget v6, v7, Landroidx/appcompat/widget/Toolbar;->p:I
    move-object/from16 v0, p0
    move/from16 v2, p1
    move v3, v14
    move/from16 v4, p2
    invoke-direct/range { v0 .. v6 }, Landroidx/appcompat/widget/Toolbar;->E(Landroid/view/View;IIIII)V
  .line 27
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;
    invoke-virtual { v0 }, Landroid/view/ViewGroup;->getMeasuredWidth()I
    move-result v0
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;
    invoke-direct { v7, v1 }, Landroidx/appcompat/widget/Toolbar;->s(Landroid/view/View;)I
    move-result v1
    add-int/2addr v0, v1
  .line 28
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;
    invoke-virtual { v1 }, Landroid/view/ViewGroup;->getMeasuredHeight()I
    move-result v1
    iget-object v2, v7, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;
  .line 29
    invoke-direct { v7, v2 }, Landroidx/appcompat/widget/Toolbar;->t(Landroid/view/View;)I
    move-result v2
    add-int/2addr v1, v2
  .line 30
    invoke-static { v12, v1 }, Ljava/lang/Math;->max(II)I
    move-result v12
  .line 31
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;
  .line 32
    invoke-virtual { v1 }, Landroid/view/ViewGroup;->getMeasuredState()I
    move-result v1
  .line 33
    invoke-static { v13, v1 }, Landroid/view/View;->combineMeasuredStates(II)I
    move-result v13
    goto :L6
  :L5
    const/4 v0, 0
  :L6
  .line 34
    invoke-virtual/range { p0 .. p0 }, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetEnd()I
    move-result v1
  .line 35
    invoke-static { v1, v0 }, Ljava/lang/Math;->max(II)I
    move-result v2
    add-int/2addr v14, v2
    sub-int/2addr v1, v0
  .line 36
    invoke-static { v9, v1 }, Ljava/lang/Math;->max(II)I
    move-result v0
    aput v0, v8, v11
  .line 37
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->j:Landroid/view/View;
    invoke-direct { v7, v0 }, Landroidx/appcompat/widget/Toolbar;->N(Landroid/view/View;)Z
    move-result v0
    if-eqz v0, :L7
  .line 38
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->j:Landroid/view/View;
    const/4 v5, 0
    move-object/from16 v0, p0
    move/from16 v2, p1
    move v3, v14
    move/from16 v4, p2
    move-object v6, v8
    invoke-direct/range { v0 .. v6 }, Landroidx/appcompat/widget/Toolbar;->D(Landroid/view/View;IIII[I)I
    move-result v0
    add-int/2addr v14, v0
  .line 39
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->j:Landroid/view/View;
    invoke-virtual { v0 }, Landroid/view/View;->getMeasuredHeight()I
    move-result v0
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->j:Landroid/view/View;
  .line 40
    invoke-direct { v7, v1 }, Landroidx/appcompat/widget/Toolbar;->t(Landroid/view/View;)I
    move-result v1
    add-int/2addr v0, v1
  .line 41
    invoke-static { v12, v0 }, Ljava/lang/Math;->max(II)I
    move-result v12
  .line 42
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->j:Landroid/view/View;
  .line 43
    invoke-virtual { v0 }, Landroid/view/View;->getMeasuredState()I
    move-result v0
  .line 44
    invoke-static { v13, v0 }, Landroid/view/View;->combineMeasuredStates(II)I
    move-result v13
  :L7
  .line 45
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/ImageView;
    invoke-direct { v7, v0 }, Landroidx/appcompat/widget/Toolbar;->N(Landroid/view/View;)Z
    move-result v0
    if-eqz v0, :L8
  .line 46
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/ImageView;
    const/4 v5, 0
    move-object/from16 v0, p0
    move/from16 v2, p1
    move v3, v14
    move/from16 v4, p2
    move-object v6, v8
    invoke-direct/range { v0 .. v6 }, Landroidx/appcompat/widget/Toolbar;->D(Landroid/view/View;IIII[I)I
    move-result v0
    add-int/2addr v14, v0
  .line 47
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/ImageView;
    invoke-virtual { v0 }, Landroid/widget/ImageView;->getMeasuredHeight()I
    move-result v0
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/ImageView;
  .line 48
    invoke-direct { v7, v1 }, Landroidx/appcompat/widget/Toolbar;->t(Landroid/view/View;)I
    move-result v1
    add-int/2addr v0, v1
  .line 49
    invoke-static { v12, v0 }, Ljava/lang/Math;->max(II)I
    move-result v12
  .line 50
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/ImageView;
  .line 51
    invoke-virtual { v0 }, Landroid/widget/ImageView;->getMeasuredState()I
    move-result v0
  .line 52
    invoke-static { v13, v0 }, Landroid/view/View;->combineMeasuredStates(II)I
    move-result v13
  :L8
  .line 53
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v10
    const/4 v11, 0
  :L9
    if-ge v11, v10, :L12
  .line 54
    invoke-virtual { v7, v11 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v15
  .line 55
    invoke-virtual { v15 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
    check-cast v0, Landroidx/appcompat/widget/Toolbar$e;
  .line 56
    iget v0, v0, Landroidx/appcompat/widget/Toolbar$e;->b:I
    if-nez v0, :L11
    invoke-direct { v7, v15 }, Landroidx/appcompat/widget/Toolbar;->N(Landroid/view/View;)Z
    move-result v0
    if-nez v0, :L10
    goto :L11
  :L10
    const/4 v5, 0
    move-object/from16 v0, p0
    move-object v1, v15
    move/from16 v2, p1
    move v3, v14
    move/from16 v4, p2
    move-object v6, v8
  .line 57
    invoke-direct/range { v0 .. v6 }, Landroidx/appcompat/widget/Toolbar;->D(Landroid/view/View;IIII[I)I
    move-result v0
    add-int/2addr v14, v0
  .line 58
    invoke-virtual { v15 }, Landroid/view/View;->getMeasuredHeight()I
    move-result v0
    invoke-direct { v7, v15 }, Landroidx/appcompat/widget/Toolbar;->t(Landroid/view/View;)I
    move-result v1
    add-int/2addr v0, v1
    invoke-static { v12, v0 }, Ljava/lang/Math;->max(II)I
    move-result v0
  .line 59
    invoke-virtual { v15 }, Landroid/view/View;->getMeasuredState()I
    move-result v1
    invoke-static { v13, v1 }, Landroid/view/View;->combineMeasuredStates(II)I
    move-result v1
    move v12, v0
    move v13, v1
  :L11
    add-int/lit8 v11, v11, 1
    goto :L9
  :L12
  .line 60
    iget v0, v7, Landroidx/appcompat/widget/Toolbar;->s:I
    iget v1, v7, Landroidx/appcompat/widget/Toolbar;->t:I
    add-int v10, v0, v1
  .line 61
    iget v0, v7, Landroidx/appcompat/widget/Toolbar;->q:I
    iget v1, v7, Landroidx/appcompat/widget/Toolbar;->r:I
    add-int v11, v0, v1
  .line 62
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;
    invoke-direct { v7, v0 }, Landroidx/appcompat/widget/Toolbar;->N(Landroid/view/View;)Z
    move-result v0
    if-eqz v0, :L13
  .line 63
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;
    add-int v3, v14, v11
    move-object/from16 v0, p0
    move/from16 v2, p1
    move/from16 v4, p2
    move v5, v10
    move-object v6, v8
    invoke-direct/range { v0 .. v6 }, Landroidx/appcompat/widget/Toolbar;->D(Landroid/view/View;IIII[I)I
  .line 64
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;
    invoke-virtual { v0 }, Landroid/widget/TextView;->getMeasuredWidth()I
    move-result v0
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;
    invoke-direct { v7, v1 }, Landroidx/appcompat/widget/Toolbar;->s(Landroid/view/View;)I
    move-result v1
    add-int/2addr v0, v1
  .line 65
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;
    invoke-virtual { v1 }, Landroid/widget/TextView;->getMeasuredHeight()I
    move-result v1
    iget-object v2, v7, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;
    invoke-direct { v7, v2 }, Landroidx/appcompat/widget/Toolbar;->t(Landroid/view/View;)I
    move-result v2
    add-int/2addr v1, v2
  .line 66
    iget-object v2, v7, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;
    invoke-virtual { v2 }, Landroid/widget/TextView;->getMeasuredState()I
    move-result v2
    invoke-static { v13, v2 }, Landroid/view/View;->combineMeasuredStates(II)I
    move-result v13
    move v15, v1
    move v6, v13
    move v13, v0
    goto :L14
  :L13
    move v6, v13
    const/4 v13, 0
    const/4 v15, 0
  :L14
  .line 67
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/TextView;
    invoke-direct { v7, v0 }, Landroidx/appcompat/widget/Toolbar;->N(Landroid/view/View;)Z
    move-result v0
    if-eqz v0, :L15
  .line 68
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/TextView;
    add-int v3, v14, v11
    add-int v5, v15, v10
    move-object/from16 v0, p0
    move/from16 v2, p1
    move/from16 v4, p2
    move v10, v6
    move-object v6, v8
    invoke-direct/range { v0 .. v6 }, Landroidx/appcompat/widget/Toolbar;->D(Landroid/view/View;IIII[I)I
    move-result v0
    invoke-static { v13, v0 }, Ljava/lang/Math;->max(II)I
    move-result v13
  .line 69
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/TextView;
    invoke-virtual { v0 }, Landroid/widget/TextView;->getMeasuredHeight()I
    move-result v0
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/TextView;
  .line 70
    invoke-direct { v7, v1 }, Landroidx/appcompat/widget/Toolbar;->t(Landroid/view/View;)I
    move-result v1
    add-int/2addr v0, v1
    add-int/2addr v15, v0
  .line 71
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/TextView;
  .line 72
    invoke-virtual { v0 }, Landroid/widget/TextView;->getMeasuredState()I
    move-result v0
  .line 73
    invoke-static { v10, v0 }, Landroid/view/View;->combineMeasuredStates(II)I
    move-result v6
    goto :L16
  :L15
    move v10, v6
  :L16
    add-int/2addr v14, v13
  .line 74
    invoke-static { v12, v15 }, Ljava/lang/Math;->max(II)I
    move-result v0
  .line 75
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingLeft()I
    move-result v1
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingRight()I
    move-result v2
    add-int/2addr v1, v2
    add-int/2addr v14, v1
  .line 76
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingTop()I
    move-result v1
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingBottom()I
    move-result v2
    add-int/2addr v1, v2
    add-int/2addr v0, v1
  .line 77
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I
    move-result v1
    invoke-static { v14, v1 }, Ljava/lang/Math;->max(II)I
    move-result v1
    const/high16 v2, -256
    and-int/2addr v2, v6
    move/from16 v3, p1
  .line 78
    invoke-static { v1, v3, v2 }, Landroid/view/View;->resolveSizeAndState(III)I
    move-result v1
  .line 79
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I
    move-result v2
    invoke-static { v0, v2 }, Ljava/lang/Math;->max(II)I
    move-result v0
    shl-int/lit8 v2, v6, 16
    move/from16 v3, p2
  .line 80
    invoke-static { v0, v3, v2 }, Landroid/view/View;->resolveSizeAndState(III)I
    move-result v0
  .line 81
    invoke-direct/range { p0 .. p0 }, Landroidx/appcompat/widget/Toolbar;->M()Z
    move-result v2
    if-eqz v2, :L17
    goto :L18
  :L17
    move v9, v0
  :L18
    invoke-virtual { v7, v1, v9 }, Landroid/view/ViewGroup;->setMeasuredDimension(II)V
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
  .registers 5
  .line 1
    instance-of v0, p1, Landroidx/appcompat/widget/Toolbar$g;
    if-nez v0, :L0
  .line 2
    invoke-super { p0, p1 }, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V
    return-void
  :L0
  .line 3
    check-cast p1, Landroidx/appcompat/widget/Toolbar$g;
  .line 4
    invoke-virtual { p1 }, Lc/i/a/a;->j()Landroid/os/Parcelable;
    move-result-object v0
    invoke-super { p0, v0 }, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V
  .line 5
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;
    if-eqz v0, :L1
    invoke-virtual { v0 }, Landroidx/appcompat/widget/ActionMenuView;->N()Landroidx/appcompat/view/menu/g;
    move-result-object v0
    goto :L2
  :L1
    const/4 v0, 0
  :L2
  .line 6
    iget v1, p1, Landroidx/appcompat/widget/Toolbar$g;->d:I
    if-eqz v1, :L3
    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->L:Landroidx/appcompat/widget/Toolbar$d;
    if-eqz v2, :L3
    if-eqz v0, :L3
  .line 7
    invoke-interface { v0, v1 }, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;
    move-result-object v0
    if-eqz v0, :L3
  .line 8
    invoke-interface { v0 }, Landroid/view/MenuItem;->expandActionView()Z
  :L3
  .line 9
    iget-boolean p1, p1, Landroidx/appcompat/widget/Toolbar$g;->e:Z
    if-eqz p1, :L4
  .line 10
    invoke-direct { p0 }, Landroidx/appcompat/widget/Toolbar;->F()V
  :L4
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 17
    if-lt v0, v1, :L0
  .line 2
    invoke-super { p0, p1 }, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V
  :L0
  .line 3
    invoke-direct { p0 }, Landroidx/appcompat/widget/Toolbar;->h()V
  .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->u:Landroidx/appcompat/widget/m0;
    const/4 v1, 1
    if-ne p1, v1, :L1
    goto :L2
  :L1
    const/4 v1, 0
  :L2
    invoke-virtual { v0, v1 }, Landroidx/appcompat/widget/m0;->f(Z)V
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
  .registers 3
  .line 1
    new-instance v0, Landroidx/appcompat/widget/Toolbar$g;
    invoke-super { p0 }, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;
    move-result-object v1
    invoke-direct { v0, v1 }, Landroidx/appcompat/widget/Toolbar$g;-><init>(Landroid/os/Parcelable;)V
  .line 2
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->L:Landroidx/appcompat/widget/Toolbar$d;
    if-eqz v1, :L0
    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar$d;->c:Landroidx/appcompat/view/menu/i;
    if-eqz v1, :L0
  .line 3
    invoke-virtual { v1 }, Landroidx/appcompat/view/menu/i;->getItemId()I
    move-result v1
    iput v1, v0, Landroidx/appcompat/widget/Toolbar$g;->d:I
  :L0
  .line 4
    invoke-virtual { p0 }, Landroidx/appcompat/widget/Toolbar;->A()Z
    move-result v1
    iput-boolean v1, v0, Landroidx/appcompat/widget/Toolbar$g;->e:Z
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
  .registers 6
  .line 1
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getActionMasked()I
    move-result v0
    const/4 v1, 0
    if-nez v0, :L0
  .line 2
    iput-boolean v1, p0, Landroidx/appcompat/widget/Toolbar;->C:Z
  :L0
  .line 3
    iget-boolean v2, p0, Landroidx/appcompat/widget/Toolbar;->C:Z
    const/4 v3, 1
    if-nez v2, :L1
  .line 4
    invoke-super { p0, p1 }, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z
    move-result p1
    if-nez v0, :L1
    if-nez p1, :L1
  .line 5
    iput-boolean v3, p0, Landroidx/appcompat/widget/Toolbar;->C:Z
  :L1
    if-eq v0, v3, :L2
    const/4 p1, 3
    if-ne v0, p1, :L3
  :L2
  .line 6
    iput-boolean v1, p0, Landroidx/appcompat/widget/Toolbar;->C:Z
  :L3
    return v3
.end method

.method public setCollapseContentDescription(I)V
  .registers 3
    if-eqz p1, :L0
  .line 1
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-virtual { v0, p1 }, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
    move-result-object p1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/Toolbar;->setCollapseContentDescription(Ljava/lang/CharSequence;)V
    return-void
.end method

.method public setCollapseContentDescription(Ljava/lang/CharSequence;)V
  .registers 3
  .line 2
    invoke-static { p1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    if-nez v0, :L0
  .line 3
    invoke-virtual { p0 }, Landroidx/appcompat/widget/Toolbar;->g()V
  :L0
  .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/widget/ImageButton;
    if-eqz v0, :L1
  .line 5
    invoke-virtual { v0, p1 }, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V
  :L1
    return-void
.end method

.method public setCollapseIcon(I)V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-static { v0, p1 }, Lc/a/k/a/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    move-result-object p1
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/Toolbar;->setCollapseIcon(Landroid/graphics/drawable/Drawable;)V
    return-void
.end method

.method public setCollapseIcon(Landroid/graphics/drawable/Drawable;)V
  .registers 3
    if-eqz p1, :L0
  .line 2
    invoke-virtual { p0 }, Landroidx/appcompat/widget/Toolbar;->g()V
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/widget/ImageButton;
    invoke-virtual { v0, p1 }, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    goto :L1
  :L0
  .line 4
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/widget/ImageButton;
    if-eqz p1, :L1
  .line 5
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->g:Landroid/graphics/drawable/Drawable;
    invoke-virtual { p1, v0 }, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
  :L1
    return-void
.end method

.method public setCollapsible(Z)V
  .registers 2
  .line 1
    iput-boolean p1, p0, Landroidx/appcompat/widget/Toolbar;->O:Z
  .line 2
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->requestLayout()V
    return-void
.end method

.method public setContentInsetEndWithActions(I)V
  .registers 3
    if-gez p1, :L0
    const/high16 p1, -32768
  :L0
  .line 1
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->w:I
    if-eq p1, v0, :L1
  .line 2
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->w:I
  .line 3
    invoke-virtual { p0 }, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;
    move-result-object p1
    if-eqz p1, :L1
  .line 4
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->requestLayout()V
  :L1
    return-void
.end method

.method public setContentInsetStartWithNavigation(I)V
  .registers 3
    if-gez p1, :L0
    const/high16 p1, -32768
  :L0
  .line 1
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->v:I
    if-eq p1, v0, :L1
  .line 2
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->v:I
  .line 3
    invoke-virtual { p0 }, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;
    move-result-object p1
    if-eqz p1, :L1
  .line 4
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->requestLayout()V
  :L1
    return-void
.end method

.method public setLogo(I)V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-static { v0, p1 }, Lc/a/k/a/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    move-result-object p1
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
  .registers 4
    if-eqz p1, :L0
  .line 2
    invoke-direct { p0 }, Landroidx/appcompat/widget/Toolbar;->i()V
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/ImageView;
    invoke-direct { p0, v0 }, Landroidx/appcompat/widget/Toolbar;->y(Landroid/view/View;)Z
    move-result v0
    if-nez v0, :L1
  .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/ImageView;
    const/4 v1, 1
    invoke-direct { p0, v0, v1 }, Landroidx/appcompat/widget/Toolbar;->c(Landroid/view/View;Z)V
    goto :L1
  :L0
  .line 5
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/ImageView;
    if-eqz v0, :L1
    invoke-direct { p0, v0 }, Landroidx/appcompat/widget/Toolbar;->y(Landroid/view/View;)Z
    move-result v0
    if-eqz v0, :L1
  .line 6
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/ImageView;
    invoke-virtual { p0, v0 }, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
  .line 7
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->F:Ljava/util/ArrayList;
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/ImageView;
    invoke-virtual { v0, v1 }, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
  :L1
  .line 8
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/ImageView;
    if-eqz v0, :L2
  .line 9
    invoke-virtual { v0, p1 }, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
  :L2
    return-void
.end method

.method public setLogoDescription(I)V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-virtual { v0, p1 }, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
    move-result-object p1
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V
    return-void
.end method

.method public setLogoDescription(Ljava/lang/CharSequence;)V
  .registers 3
  .line 2
    invoke-static { p1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    if-nez v0, :L0
  .line 3
    invoke-direct { p0 }, Landroidx/appcompat/widget/Toolbar;->i()V
  :L0
  .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/ImageView;
    if-eqz v0, :L1
  .line 5
    invoke-virtual { v0, p1 }, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V
  :L1
    return-void
.end method

.method public setNavigationContentDescription(I)V
  .registers 3
    if-eqz p1, :L0
  .line 1
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-virtual { v0, p1 }, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
    move-result-object p1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V
    return-void
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
  .registers 3
  .line 2
    invoke-static { p1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    if-nez v0, :L0
  .line 3
    invoke-direct { p0 }, Landroidx/appcompat/widget/Toolbar;->l()V
  :L0
  .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageButton;
    if-eqz v0, :L1
  .line 5
    invoke-virtual { v0, p1 }, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V
  :L1
    return-void
.end method

.method public setNavigationIcon(I)V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-static { v0, p1 }, Lc/a/k/a/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    move-result-object p1
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
  .registers 4
    if-eqz p1, :L0
  .line 2
    invoke-direct { p0 }, Landroidx/appcompat/widget/Toolbar;->l()V
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageButton;
    invoke-direct { p0, v0 }, Landroidx/appcompat/widget/Toolbar;->y(Landroid/view/View;)Z
    move-result v0
    if-nez v0, :L1
  .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageButton;
    const/4 v1, 1
    invoke-direct { p0, v0, v1 }, Landroidx/appcompat/widget/Toolbar;->c(Landroid/view/View;Z)V
    goto :L1
  :L0
  .line 5
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageButton;
    if-eqz v0, :L1
    invoke-direct { p0, v0 }, Landroidx/appcompat/widget/Toolbar;->y(Landroid/view/View;)Z
    move-result v0
    if-eqz v0, :L1
  .line 6
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageButton;
    invoke-virtual { p0, v0 }, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
  .line 7
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->F:Ljava/util/ArrayList;
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageButton;
    invoke-virtual { v0, v1 }, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
  :L1
  .line 8
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageButton;
    if-eqz v0, :L2
  .line 9
    invoke-virtual { v0, p1 }, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
  :L2
    return-void
.end method

.method public setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Landroidx/appcompat/widget/Toolbar;->l()V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageButton;
    invoke-virtual { v0, p1 }, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    return-void
.end method

.method public setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$f;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->H:Landroidx/appcompat/widget/Toolbar$f;
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Landroidx/appcompat/widget/Toolbar;->j()V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/ActionMenuView;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    return-void
.end method

.method public setPopupTheme(I)V
  .registers 4
  .line 1
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->l:I
    if-eq v0, p1, :L1
  .line 2
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->l:I
    if-nez p1, :L0
  .line 3
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object p1
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->k:Landroid/content/Context;
    goto :L1
  :L0
  .line 4
    new-instance v0, Landroid/view/ContextThemeWrapper;
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object v1
    invoke-direct { v0, v1, p1 }, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V
    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->k:Landroid/content/Context;
  :L1
    return-void
.end method

.method public setSubtitle(I)V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-virtual { v0, p1 }, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
    move-result-object p1
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
  .registers 5
  .line 2
    invoke-static { p1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    if-nez v0, :L2
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/TextView;
    if-nez v0, :L1
  .line 4
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object v0
  .line 5
    new-instance v1, Landroidx/appcompat/widget/x;
    invoke-direct { v1, v0 }, Landroidx/appcompat/widget/x;-><init>(Landroid/content/Context;)V
    iput-object v1, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/TextView;
  .line 6
    invoke-virtual { v1 }, Landroid/widget/TextView;->setSingleLine()V
  .line 7
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/TextView;
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;
    invoke-virtual { v1, v2 }, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
  .line 8
    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->n:I
    if-eqz v1, :L0
  .line 9
    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/TextView;
    invoke-virtual { v2, v0, v1 }, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V
  :L0
  .line 10
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->B:Landroid/content/res/ColorStateList;
    if-eqz v0, :L1
  .line 11
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/TextView;
    invoke-virtual { v1, v0 }, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V
  :L1
  .line 12
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/TextView;
    invoke-direct { p0, v0 }, Landroidx/appcompat/widget/Toolbar;->y(Landroid/view/View;)Z
    move-result v0
    if-nez v0, :L3
  .line 13
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/TextView;
    const/4 v1, 1
    invoke-direct { p0, v0, v1 }, Landroidx/appcompat/widget/Toolbar;->c(Landroid/view/View;Z)V
    goto :L3
  :L2
  .line 14
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/TextView;
    if-eqz v0, :L3
    invoke-direct { p0, v0 }, Landroidx/appcompat/widget/Toolbar;->y(Landroid/view/View;)Z
    move-result v0
    if-eqz v0, :L3
  .line 15
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/TextView;
    invoke-virtual { p0, v0 }, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
  .line 16
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->F:Ljava/util/ArrayList;
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/TextView;
    invoke-virtual { v0, v1 }, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
  :L3
  .line 17
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/TextView;
    if-eqz v0, :L4
  .line 18
    invoke-virtual { v0, p1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  :L4
  .line 19
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->z:Ljava/lang/CharSequence;
    return-void
.end method

.method public setSubtitleTextColor(I)V
  .registers 2
  .line 1
    invoke-static { p1 }, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;
    move-result-object p1
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/Toolbar;->setSubtitleTextColor(Landroid/content/res/ColorStateList;)V
    return-void
.end method

.method public setSubtitleTextColor(Landroid/content/res/ColorStateList;)V
  .registers 3
  .line 2
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->B:Landroid/content/res/ColorStateList;
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/TextView;
    if-eqz v0, :L0
  .line 4
    invoke-virtual { v0, p1 }, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V
  :L0
    return-void
.end method

.method public setTitle(I)V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-virtual { v0, p1 }, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
    move-result-object p1
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
  .registers 5
  .line 2
    invoke-static { p1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    if-nez v0, :L2
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;
    if-nez v0, :L1
  .line 4
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object v0
  .line 5
    new-instance v1, Landroidx/appcompat/widget/x;
    invoke-direct { v1, v0 }, Landroidx/appcompat/widget/x;-><init>(Landroid/content/Context;)V
    iput-object v1, p0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;
  .line 6
    invoke-virtual { v1 }, Landroid/widget/TextView;->setSingleLine()V
  .line 7
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;
    invoke-virtual { v1, v2 }, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
  .line 8
    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->m:I
    if-eqz v1, :L0
  .line 9
    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;
    invoke-virtual { v2, v0, v1 }, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V
  :L0
  .line 10
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->A:Landroid/content/res/ColorStateList;
    if-eqz v0, :L1
  .line 11
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;
    invoke-virtual { v1, v0 }, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V
  :L1
  .line 12
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;
    invoke-direct { p0, v0 }, Landroidx/appcompat/widget/Toolbar;->y(Landroid/view/View;)Z
    move-result v0
    if-nez v0, :L3
  .line 13
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;
    const/4 v1, 1
    invoke-direct { p0, v0, v1 }, Landroidx/appcompat/widget/Toolbar;->c(Landroid/view/View;Z)V
    goto :L3
  :L2
  .line 14
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;
    if-eqz v0, :L3
    invoke-direct { p0, v0 }, Landroidx/appcompat/widget/Toolbar;->y(Landroid/view/View;)Z
    move-result v0
    if-eqz v0, :L3
  .line 15
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;
    invoke-virtual { p0, v0 }, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
  .line 16
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->F:Ljava/util/ArrayList;
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;
    invoke-virtual { v0, v1 }, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
  :L3
  .line 17
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;
    if-eqz v0, :L4
  .line 18
    invoke-virtual { v0, p1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  :L4
  .line 19
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->y:Ljava/lang/CharSequence;
    return-void
.end method

.method public setTitleMarginBottom(I)V
  .registers 2
  .line 1
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->t:I
  .line 2
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->requestLayout()V
    return-void
.end method

.method public setTitleMarginEnd(I)V
  .registers 2
  .line 1
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->r:I
  .line 2
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->requestLayout()V
    return-void
.end method

.method public setTitleMarginStart(I)V
  .registers 2
  .line 1
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->q:I
  .line 2
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->requestLayout()V
    return-void
.end method

.method public setTitleMarginTop(I)V
  .registers 2
  .line 1
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->s:I
  .line 2
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->requestLayout()V
    return-void
.end method

.method public setTitleTextColor(I)V
  .registers 2
  .line 1
    invoke-static { p1 }, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;
    move-result-object p1
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/Toolbar;->setTitleTextColor(Landroid/content/res/ColorStateList;)V
    return-void
.end method

.method public setTitleTextColor(Landroid/content/res/ColorStateList;)V
  .registers 3
  .line 2
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->A:Landroid/content/res/ColorStateList;
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;
    if-eqz v0, :L0
  .line 4
    invoke-virtual { v0, p1 }, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V
  :L0
    return-void
.end method

.method public v()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->L:Landroidx/appcompat/widget/Toolbar$d;
    if-eqz v0, :L0
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar$d;->c:Landroidx/appcompat/view/menu/i;
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public w()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Landroidx/appcompat/widget/ActionMenuView;->H()Z
    move-result v0
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public x(I)V
  .registers 4
  .line 1
    invoke-direct { p0 }, Landroidx/appcompat/widget/Toolbar;->getMenuInflater()Landroid/view/MenuInflater;
    move-result-object v0
    invoke-virtual { p0 }, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;
    move-result-object v1
    invoke-virtual { v0, p1, v1 }, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V
    return-void
.end method

.method public z()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Landroidx/appcompat/widget/ActionMenuView;->I()Z
    move-result v0
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method
