.class public Landroidx/appcompat/widget/v0;
.super Ljava/lang/Object;
.implements Landroidx/appcompat/widget/b0;
.source "SourceFile"

.field a:Landroidx/appcompat/widget/Toolbar;

.field private b:I

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Z

.field i:Ljava/lang/CharSequence;

.field private j:Ljava/lang/CharSequence;

.field private k:Ljava/lang/CharSequence;

.field l:Landroid/view/Window$Callback;

.field m:Z

.field private n:Landroidx/appcompat/widget/c;

.field private o:I

.field private p:I

.field private q:Landroid/graphics/drawable/Drawable;

.method public constructor <init>(Landroidx/appcompat/widget/Toolbar;Z)V
  .registers 5
  .line 1
    sget v0, Lc/a/h;->abc_action_bar_up_description:I
    sget v1, Lc/a/e;->abc_ic_ab_back_material:I
    invoke-direct { p0, p1, p2, v0, v1 }, Landroidx/appcompat/widget/v0;-><init>(Landroidx/appcompat/widget/Toolbar;ZII)V
    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/widget/Toolbar;ZII)V
  .registers 8
  .line 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 p4, 0
  .line 3
    iput p4, p0, Landroidx/appcompat/widget/v0;->o:I
  .line 4
    iput p4, p0, Landroidx/appcompat/widget/v0;->p:I
  .line 5
    iput-object p1, p0, Landroidx/appcompat/widget/v0;->a:Landroidx/appcompat/widget/Toolbar;
  .line 6
    invoke-virtual { p1 }, Landroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;
    move-result-object v0
    iput-object v0, p0, Landroidx/appcompat/widget/v0;->i:Ljava/lang/CharSequence;
  .line 7
    invoke-virtual { p1 }, Landroidx/appcompat/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;
    move-result-object v0
    iput-object v0, p0, Landroidx/appcompat/widget/v0;->j:Ljava/lang/CharSequence;
  .line 8
    iget-object v0, p0, Landroidx/appcompat/widget/v0;->i:Ljava/lang/CharSequence;
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    iput-boolean v0, p0, Landroidx/appcompat/widget/v0;->h:Z
  .line 9
    invoke-virtual { p1 }, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    iput-object v0, p0, Landroidx/appcompat/widget/v0;->g:Landroid/graphics/drawable/Drawable;
  .line 10
    invoke-virtual { p1 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object p1
    const/4 v0, 0
    sget-object v1, Lc/a/j;->ActionBar:[I
    sget v2, Lc/a/a;->actionBarStyle:I
    invoke-static { p1, v0, v1, v2, p4 }, Landroidx/appcompat/widget/u0;->v(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/u0;
    move-result-object p1
  .line 11
    sget v0, Lc/a/j;->ActionBar_homeAsUpIndicator:I
    invoke-virtual { p1, v0 }, Landroidx/appcompat/widget/u0;->g(I)Landroid/graphics/drawable/Drawable;
    move-result-object v0
    iput-object v0, p0, Landroidx/appcompat/widget/v0;->q:Landroid/graphics/drawable/Drawable;
    if-eqz p2, :L13
  .line 12
    sget p2, Lc/a/j;->ActionBar_title:I
    invoke-virtual { p1, p2 }, Landroidx/appcompat/widget/u0;->p(I)Ljava/lang/CharSequence;
    move-result-object p2
  .line 13
    invoke-static { p2 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    if-nez v0, :L2
  .line 14
    invoke-virtual { p0, p2 }, Landroidx/appcompat/widget/v0;->G(Ljava/lang/CharSequence;)V
  :L2
  .line 15
    sget p2, Lc/a/j;->ActionBar_subtitle:I
    invoke-virtual { p1, p2 }, Landroidx/appcompat/widget/u0;->p(I)Ljava/lang/CharSequence;
    move-result-object p2
  .line 16
    invoke-static { p2 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    if-nez v0, :L3
  .line 17
    invoke-virtual { p0, p2 }, Landroidx/appcompat/widget/v0;->F(Ljava/lang/CharSequence;)V
  :L3
  .line 18
    sget p2, Lc/a/j;->ActionBar_logo:I
    invoke-virtual { p1, p2 }, Landroidx/appcompat/widget/u0;->g(I)Landroid/graphics/drawable/Drawable;
    move-result-object p2
    if-eqz p2, :L4
  .line 19
    invoke-virtual { p0, p2 }, Landroidx/appcompat/widget/v0;->B(Landroid/graphics/drawable/Drawable;)V
  :L4
  .line 20
    sget p2, Lc/a/j;->ActionBar_icon:I
    invoke-virtual { p1, p2 }, Landroidx/appcompat/widget/u0;->g(I)Landroid/graphics/drawable/Drawable;
    move-result-object p2
    if-eqz p2, :L5
  .line 21
    invoke-virtual { p0, p2 }, Landroidx/appcompat/widget/v0;->setIcon(Landroid/graphics/drawable/Drawable;)V
  :L5
  .line 22
    iget-object p2, p0, Landroidx/appcompat/widget/v0;->g:Landroid/graphics/drawable/Drawable;
    if-nez p2, :L6
    iget-object p2, p0, Landroidx/appcompat/widget/v0;->q:Landroid/graphics/drawable/Drawable;
    if-eqz p2, :L6
  .line 23
    invoke-virtual { p0, p2 }, Landroidx/appcompat/widget/v0;->E(Landroid/graphics/drawable/Drawable;)V
  :L6
  .line 24
    sget p2, Lc/a/j;->ActionBar_displayOptions:I
    invoke-virtual { p1, p2, p4 }, Landroidx/appcompat/widget/u0;->k(II)I
    move-result p2
    invoke-virtual { p0, p2 }, Landroidx/appcompat/widget/v0;->x(I)V
  .line 25
    sget p2, Lc/a/j;->ActionBar_customNavigationLayout:I
    invoke-virtual { p1, p2, p4 }, Landroidx/appcompat/widget/u0;->n(II)I
    move-result p2
    if-eqz p2, :L7
  .line 26
    iget-object v0, p0, Landroidx/appcompat/widget/v0;->a:Landroidx/appcompat/widget/Toolbar;
    invoke-virtual { v0 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-static { v0 }, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
    move-result-object v0
    iget-object v1, p0, Landroidx/appcompat/widget/v0;->a:Landroidx/appcompat/widget/Toolbar;
    invoke-virtual { v0, p2, v1, p4 }, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    move-result-object p2
    invoke-virtual { p0, p2 }, Landroidx/appcompat/widget/v0;->z(Landroid/view/View;)V
  .line 27
    iget p2, p0, Landroidx/appcompat/widget/v0;->b:I
    or-int/lit8 p2, p2, 16
    invoke-virtual { p0, p2 }, Landroidx/appcompat/widget/v0;->x(I)V
  :L7
  .line 28
    sget p2, Lc/a/j;->ActionBar_height:I
    invoke-virtual { p1, p2, p4 }, Landroidx/appcompat/widget/u0;->m(II)I
    move-result p2
    if-lez p2, :L8
  .line 29
    iget-object v0, p0, Landroidx/appcompat/widget/v0;->a:Landroidx/appcompat/widget/Toolbar;
    invoke-virtual { v0 }, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
  .line 30
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I
  .line 31
    iget-object p2, p0, Landroidx/appcompat/widget/v0;->a:Landroidx/appcompat/widget/Toolbar;
    invoke-virtual { p2, v0 }, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  :L8
  .line 32
    sget p2, Lc/a/j;->ActionBar_contentInsetStart:I
    const/4 v0, -1
    invoke-virtual { p1, p2, v0 }, Landroidx/appcompat/widget/u0;->e(II)I
    move-result p2
  .line 33
    sget v1, Lc/a/j;->ActionBar_contentInsetEnd:I
    invoke-virtual { p1, v1, v0 }, Landroidx/appcompat/widget/u0;->e(II)I
    move-result v0
    if-gez p2, :L9
    if-ltz v0, :L10
  :L9
  .line 34
    iget-object v1, p0, Landroidx/appcompat/widget/v0;->a:Landroidx/appcompat/widget/Toolbar;
    invoke-static { p2, p4 }, Ljava/lang/Math;->max(II)I
    move-result p2
  .line 35
    invoke-static { v0, p4 }, Ljava/lang/Math;->max(II)I
    move-result v0
  .line 36
    invoke-virtual { v1, p2, v0 }, Landroidx/appcompat/widget/Toolbar;->H(II)V
  :L10
  .line 37
    sget p2, Lc/a/j;->ActionBar_titleTextStyle:I
    invoke-virtual { p1, p2, p4 }, Landroidx/appcompat/widget/u0;->n(II)I
    move-result p2
    if-eqz p2, :L11
  .line 38
    iget-object v0, p0, Landroidx/appcompat/widget/v0;->a:Landroidx/appcompat/widget/Toolbar;
    invoke-virtual { v0 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object v1
    invoke-virtual { v0, v1, p2 }, Landroidx/appcompat/widget/Toolbar;->L(Landroid/content/Context;I)V
  :L11
  .line 39
    sget p2, Lc/a/j;->ActionBar_subtitleTextStyle:I
    invoke-virtual { p1, p2, p4 }, Landroidx/appcompat/widget/u0;->n(II)I
    move-result p2
    if-eqz p2, :L12
  .line 40
    iget-object v0, p0, Landroidx/appcompat/widget/v0;->a:Landroidx/appcompat/widget/Toolbar;
    invoke-virtual { v0 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object v1
    invoke-virtual { v0, v1, p2 }, Landroidx/appcompat/widget/Toolbar;->K(Landroid/content/Context;I)V
  :L12
  .line 41
    sget p2, Lc/a/j;->ActionBar_popupTheme:I
    invoke-virtual { p1, p2, p4 }, Landroidx/appcompat/widget/u0;->n(II)I
    move-result p2
    if-eqz p2, :L14
  .line 42
    iget-object p4, p0, Landroidx/appcompat/widget/v0;->a:Landroidx/appcompat/widget/Toolbar;
    invoke-virtual { p4, p2 }, Landroidx/appcompat/widget/Toolbar;->setPopupTheme(I)V
    goto :L14
  :L13
  .line 43
    invoke-direct { p0 }, Landroidx/appcompat/widget/v0;->y()I
    move-result p2
    iput p2, p0, Landroidx/appcompat/widget/v0;->b:I
  :L14
  .line 44
    invoke-virtual { p1 }, Landroidx/appcompat/widget/u0;->w()V
  .line 45
    invoke-virtual { p0, p3 }, Landroidx/appcompat/widget/v0;->A(I)V
  .line 46
    iget-object p1, p0, Landroidx/appcompat/widget/v0;->a:Landroidx/appcompat/widget/Toolbar;
    invoke-virtual { p1 }, Landroidx/appcompat/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;
    move-result-object p1
    iput-object p1, p0, Landroidx/appcompat/widget/v0;->k:Ljava/lang/CharSequence;
  .line 47
    iget-object p1, p0, Landroidx/appcompat/widget/v0;->a:Landroidx/appcompat/widget/Toolbar;
    new-instance p2, Landroidx/appcompat/widget/v0$a;
    invoke-direct { p2, p0 }, Landroidx/appcompat/widget/v0$a;-><init>(Landroidx/appcompat/widget/v0;)V
    invoke-virtual { p1, p2 }, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V
    return-void
.end method

.method private H(Ljava/lang/CharSequence;)V
  .registers 3
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/v0;->i:Ljava/lang/CharSequence;
  .line 2
    iget v0, p0, Landroidx/appcompat/widget/v0;->b:I
    and-int/lit8 v0, v0, 8
    if-eqz v0, :L0
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/v0;->a:Landroidx/appcompat/widget/Toolbar;
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V
  :L0
    return-void
.end method

.method private I()V
  .registers 3
  .line 1
    iget v0, p0, Landroidx/appcompat/widget/v0;->b:I
    and-int/lit8 v0, v0, 4
    if-eqz v0, :L1
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/v0;->k:Ljava/lang/CharSequence;
    invoke-static { v0 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    if-eqz v0, :L0
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/v0;->a:Landroidx/appcompat/widget/Toolbar;
    iget v1, p0, Landroidx/appcompat/widget/v0;->p:I
    invoke-virtual { v0, v1 }, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(I)V
    goto :L1
  :L0
  .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/v0;->a:Landroidx/appcompat/widget/Toolbar;
    iget-object v1, p0, Landroidx/appcompat/widget/v0;->k:Ljava/lang/CharSequence;
    invoke-virtual { v0, v1 }, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V
  :L1
    return-void
.end method

.method private J()V
  .registers 3
  .line 1
    iget v0, p0, Landroidx/appcompat/widget/v0;->b:I
    and-int/lit8 v0, v0, 4
    if-eqz v0, :L2
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/v0;->a:Landroidx/appcompat/widget/Toolbar;
    iget-object v1, p0, Landroidx/appcompat/widget/v0;->g:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :L0
    goto :L1
  :L0
    iget-object v1, p0, Landroidx/appcompat/widget/v0;->q:Landroid/graphics/drawable/Drawable;
  :L1
    invoke-virtual { v0, v1 }, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    goto :L3
  :L2
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/v0;->a:Landroidx/appcompat/widget/Toolbar;
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
  :L3
    return-void
.end method

.method private K()V
  .registers 3
  .line 1
    iget v0, p0, Landroidx/appcompat/widget/v0;->b:I
    and-int/lit8 v1, v0, 2
    if-eqz v1, :L2
    and-int/lit8 v0, v0, 1
    if-eqz v0, :L1
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/v0;->f:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L0
    goto :L3
  :L0
    iget-object v0, p0, Landroidx/appcompat/widget/v0;->e:Landroid/graphics/drawable/Drawable;
    goto :L3
  :L1
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/v0;->e:Landroid/graphics/drawable/Drawable;
    goto :L3
  :L2
    const/4 v0, 0
  :L3
  .line 4
    iget-object v1, p0, Landroidx/appcompat/widget/v0;->a:Landroidx/appcompat/widget/Toolbar;
    invoke-virtual { v1, v0 }, Landroidx/appcompat/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V
    return-void
.end method

.method private y()I
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/v0;->a:Landroidx/appcompat/widget/Toolbar;
    invoke-virtual { v0 }, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    if-eqz v0, :L0
    const/16 v0, 15
  .line 2
    iget-object v1, p0, Landroidx/appcompat/widget/v0;->a:Landroidx/appcompat/widget/Toolbar;
    invoke-virtual { v1 }, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;
    move-result-object v1
    iput-object v1, p0, Landroidx/appcompat/widget/v0;->q:Landroid/graphics/drawable/Drawable;
    goto :L1
  :L0
    const/16 v0, 11
  :L1
    return v0
.end method

.method public A(I)V
  .registers 3
  .line 1
    iget v0, p0, Landroidx/appcompat/widget/v0;->p:I
    if-ne p1, v0, :L0
    return-void
  :L0
  .line 2
    iput p1, p0, Landroidx/appcompat/widget/v0;->p:I
  .line 3
    iget-object p1, p0, Landroidx/appcompat/widget/v0;->a:Landroidx/appcompat/widget/Toolbar;
    invoke-virtual { p1 }, Landroidx/appcompat/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;
    move-result-object p1
    invoke-static { p1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result p1
    if-eqz p1, :L1
  .line 4
    iget p1, p0, Landroidx/appcompat/widget/v0;->p:I
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/v0;->C(I)V
  :L1
    return-void
.end method

.method public B(Landroid/graphics/drawable/Drawable;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/v0;->f:Landroid/graphics/drawable/Drawable;
  .line 2
    invoke-direct { p0 }, Landroidx/appcompat/widget/v0;->K()V
    return-void
.end method

.method public C(I)V
  .registers 3
    if-nez p1, :L0
    const/4 p1, 0
    goto :L1
  :L0
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/widget/v0;->q()Landroid/content/Context;
    move-result-object v0
    invoke-virtual { v0, p1 }, Landroid/content/Context;->getString(I)Ljava/lang/String;
    move-result-object p1
  :L1
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/v0;->D(Ljava/lang/CharSequence;)V
    return-void
.end method

.method public D(Ljava/lang/CharSequence;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/v0;->k:Ljava/lang/CharSequence;
  .line 2
    invoke-direct { p0 }, Landroidx/appcompat/widget/v0;->I()V
    return-void
.end method

.method public E(Landroid/graphics/drawable/Drawable;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/v0;->g:Landroid/graphics/drawable/Drawable;
  .line 2
    invoke-direct { p0 }, Landroidx/appcompat/widget/v0;->J()V
    return-void
.end method

.method public F(Ljava/lang/CharSequence;)V
  .registers 3
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/v0;->j:Ljava/lang/CharSequence;
  .line 2
    iget v0, p0, Landroidx/appcompat/widget/v0;->b:I
    and-int/lit8 v0, v0, 8
    if-eqz v0, :L0
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/v0;->a:Landroidx/appcompat/widget/Toolbar;
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V
  :L0
    return-void
.end method

.method public G(Ljava/lang/CharSequence;)V
  .registers 3
    const/4 v0, 1
  .line 1
    iput-boolean v0, p0, Landroidx/appcompat/widget/v0;->h:Z
  .line 2
    invoke-direct { p0, p1 }, Landroidx/appcompat/widget/v0;->H(Ljava/lang/CharSequence;)V
    return-void
.end method

.method public a(Landroid/view/Menu;Landroidx/appcompat/view/menu/m$a;)V
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/v0;->n:Landroidx/appcompat/widget/c;
    if-nez v0, :L0
  .line 2
    new-instance v0, Landroidx/appcompat/widget/c;
    iget-object v1, p0, Landroidx/appcompat/widget/v0;->a:Landroidx/appcompat/widget/Toolbar;
    invoke-virtual { v1 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object v1
    invoke-direct { v0, v1 }, Landroidx/appcompat/widget/c;-><init>(Landroid/content/Context;)V
    iput-object v0, p0, Landroidx/appcompat/widget/v0;->n:Landroidx/appcompat/widget/c;
  .line 3
    sget v1, Lc/a/f;->action_menu_presenter:I
    invoke-virtual { v0, v1 }, Landroidx/appcompat/view/menu/b;->p(I)V
  :L0
  .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/v0;->n:Landroidx/appcompat/widget/c;
    invoke-virtual { v0, p2 }, Landroidx/appcompat/view/menu/b;->h(Landroidx/appcompat/view/menu/m$a;)V
  .line 5
    iget-object p2, p0, Landroidx/appcompat/widget/v0;->a:Landroidx/appcompat/widget/Toolbar;
    check-cast p1, Landroidx/appcompat/view/menu/g;
    iget-object v0, p0, Landroidx/appcompat/widget/v0;->n:Landroidx/appcompat/widget/c;
    invoke-virtual { p2, p1, v0 }, Landroidx/appcompat/widget/Toolbar;->I(Landroidx/appcompat/view/menu/g;Landroidx/appcompat/widget/c;)V
    return-void
.end method

.method public b()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/v0;->a:Landroidx/appcompat/widget/Toolbar;
    invoke-virtual { v0 }, Landroidx/appcompat/widget/Toolbar;->z()Z
    move-result v0
    return v0
.end method

.method public c()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/v0;->a:Landroidx/appcompat/widget/Toolbar;
    invoke-virtual { v0 }, Landroidx/appcompat/widget/Toolbar;->A()Z
    move-result v0
    return v0
.end method

.method public collapseActionView()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/v0;->a:Landroidx/appcompat/widget/Toolbar;
    invoke-virtual { v0 }, Landroidx/appcompat/widget/Toolbar;->e()V
    return-void
.end method

.method public d()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/v0;->a:Landroidx/appcompat/widget/Toolbar;
    invoke-virtual { v0 }, Landroidx/appcompat/widget/Toolbar;->w()Z
    move-result v0
    return v0
.end method

.method public e()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/v0;->a:Landroidx/appcompat/widget/Toolbar;
    invoke-virtual { v0 }, Landroidx/appcompat/widget/Toolbar;->O()Z
    move-result v0
    return v0
.end method

.method public f()V
  .registers 2
    const/4 v0, 1
  .line 1
    iput-boolean v0, p0, Landroidx/appcompat/widget/v0;->m:Z
    return-void
.end method

.method public g()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/v0;->a:Landroidx/appcompat/widget/Toolbar;
    invoke-virtual { v0 }, Landroidx/appcompat/widget/Toolbar;->d()Z
    move-result v0
    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/v0;->a:Landroidx/appcompat/widget/Toolbar;
    invoke-virtual { v0 }, Landroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;
    move-result-object v0
    return-object v0
.end method

.method public h()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/v0;->a:Landroidx/appcompat/widget/Toolbar;
    invoke-virtual { v0 }, Landroidx/appcompat/widget/Toolbar;->f()V
    return-void
.end method

.method public i(Landroidx/appcompat/view/menu/m$a;Landroidx/appcompat/view/menu/g$a;)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/v0;->a:Landroidx/appcompat/widget/Toolbar;
    invoke-virtual { v0, p1, p2 }, Landroidx/appcompat/widget/Toolbar;->J(Landroidx/appcompat/view/menu/m$a;Landroidx/appcompat/view/menu/g$a;)V
    return-void
.end method

.method public j()I
  .registers 2
  .line 1
    iget v0, p0, Landroidx/appcompat/widget/v0;->b:I
    return v0
.end method

.method public k(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/v0;->a:Landroidx/appcompat/widget/Toolbar;
    invoke-virtual { v0, p1 }, Landroid/view/ViewGroup;->setVisibility(I)V
    return-void
.end method

.method public l()Landroid/view/Menu;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/v0;->a:Landroidx/appcompat/widget/Toolbar;
    invoke-virtual { v0 }, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;
    move-result-object v0
    return-object v0
.end method

.method public m(I)V
  .registers 3
    if-eqz p1, :L0
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/widget/v0;->q()Landroid/content/Context;
    move-result-object v0
    invoke-static { v0, p1 }, Lc/a/k/a/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    move-result-object p1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/v0;->B(Landroid/graphics/drawable/Drawable;)V
    return-void
.end method

.method public n(Landroidx/appcompat/widget/n0;)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/v0;->c:Landroid/view/View;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v0
    iget-object v1, p0, Landroidx/appcompat/widget/v0;->a:Landroidx/appcompat/widget/Toolbar;
    if-ne v0, v1, :L0
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/v0;->c:Landroid/view/View;
    invoke-virtual { v1, v0 }, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
  :L0
  .line 3
    iput-object p1, p0, Landroidx/appcompat/widget/v0;->c:Landroid/view/View;
    if-eqz p1, :L1
  .line 4
    iget v0, p0, Landroidx/appcompat/widget/v0;->o:I
    const/4 v1, 2
    if-ne v0, v1, :L1
  .line 5
    iget-object v0, p0, Landroidx/appcompat/widget/v0;->a:Landroidx/appcompat/widget/Toolbar;
    const/4 v1, 0
    invoke-virtual { v0, p1, v1 }, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V
  .line 6
    iget-object v0, p0, Landroidx/appcompat/widget/v0;->c:Landroid/view/View;
    invoke-virtual { v0 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
    check-cast v0, Landroidx/appcompat/widget/Toolbar$e;
    const/4 v1, -2
  .line 7
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I
  .line 8
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I
    const v1, 8388691
  .line 9
    iput v1, v0, Landroidx/appcompat/app/a$a;->a:I
    const/4 v0, 1
  .line 10
    invoke-virtual { p1, v0 }, Landroidx/appcompat/widget/n0;->setAllowCollapse(Z)V
  :L1
    return-void
.end method

.method public o()Landroid/view/ViewGroup;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/v0;->a:Landroidx/appcompat/widget/Toolbar;
    return-object v0
.end method

.method public p(Z)V
  .registers 2
    return-void
.end method

.method public q()Landroid/content/Context;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/v0;->a:Landroidx/appcompat/widget/Toolbar;
    invoke-virtual { v0 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object v0
    return-object v0
.end method

.method public r()I
  .registers 2
  .line 1
    iget v0, p0, Landroidx/appcompat/widget/v0;->o:I
    return v0
.end method

.method public s(IJ)Landroidx/core/view/z;
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/v0;->a:Landroidx/appcompat/widget/Toolbar;
    invoke-static { v0 }, Landroidx/core/view/v;->d(Landroid/view/View;)Landroidx/core/view/z;
    move-result-object v0
    if-nez p1, :L0
    const/high16 v1, 16256
    goto :L1
  :L0
    const/4 v1, 0
  :L1
  .line 2
    invoke-virtual { v0, v1 }, Landroidx/core/view/z;->a(F)Landroidx/core/view/z;
  .line 3
    invoke-virtual { v0, p2, p3 }, Landroidx/core/view/z;->d(J)Landroidx/core/view/z;
    new-instance p2, Landroidx/appcompat/widget/v0$b;
    invoke-direct { p2, p0, p1 }, Landroidx/appcompat/widget/v0$b;-><init>(Landroidx/appcompat/widget/v0;I)V
  .line 4
    invoke-virtual { v0, p2 }, Landroidx/core/view/z;->f(Landroidx/core/view/a0;)Landroidx/core/view/z;
    return-object v0
.end method

.method public setIcon(I)V
  .registers 3
    if-eqz p1, :L0
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/widget/v0;->q()Landroid/content/Context;
    move-result-object v0
    invoke-static { v0, p1 }, Lc/a/k/a/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    move-result-object p1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/v0;->setIcon(Landroid/graphics/drawable/Drawable;)V
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
  .registers 2
  .line 2
    iput-object p1, p0, Landroidx/appcompat/widget/v0;->e:Landroid/graphics/drawable/Drawable;
  .line 3
    invoke-direct { p0 }, Landroidx/appcompat/widget/v0;->K()V
    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/v0;->l:Landroid/view/Window$Callback;
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
  .registers 3
  .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/v0;->h:Z
    if-nez v0, :L0
  .line 2
    invoke-direct { p0, p1 }, Landroidx/appcompat/widget/v0;->H(Ljava/lang/CharSequence;)V
  :L0
    return-void
.end method

.method public t()V
  .registers 1
    return-void
.end method

.method public u()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/v0;->a:Landroidx/appcompat/widget/Toolbar;
    invoke-virtual { v0 }, Landroidx/appcompat/widget/Toolbar;->v()Z
    move-result v0
    return v0
.end method

.method public v()V
  .registers 1
    return-void
.end method

.method public w(Z)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/v0;->a:Landroidx/appcompat/widget/Toolbar;
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/Toolbar;->setCollapsible(Z)V
    return-void
.end method

.method public x(I)V
  .registers 5
  .line 1
    iget v0, p0, Landroidx/appcompat/widget/v0;->b:I
    xor-int/2addr v0, p1
  .line 2
    iput p1, p0, Landroidx/appcompat/widget/v0;->b:I
    if-eqz v0, :L6
    and-int/lit8 v1, v0, 4
    if-eqz v1, :L1
    and-int/lit8 v1, p1, 4
    if-eqz v1, :L0
  .line 3
    invoke-direct { p0 }, Landroidx/appcompat/widget/v0;->I()V
  :L0
  .line 4
    invoke-direct { p0 }, Landroidx/appcompat/widget/v0;->J()V
  :L1
    and-int/lit8 v1, v0, 3
    if-eqz v1, :L2
  .line 5
    invoke-direct { p0 }, Landroidx/appcompat/widget/v0;->K()V
  :L2
    and-int/lit8 v1, v0, 8
    if-eqz v1, :L4
    and-int/lit8 v1, p1, 8
    if-eqz v1, :L3
  .line 6
    iget-object v1, p0, Landroidx/appcompat/widget/v0;->a:Landroidx/appcompat/widget/Toolbar;
    iget-object v2, p0, Landroidx/appcompat/widget/v0;->i:Ljava/lang/CharSequence;
    invoke-virtual { v1, v2 }, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V
  .line 7
    iget-object v1, p0, Landroidx/appcompat/widget/v0;->a:Landroidx/appcompat/widget/Toolbar;
    iget-object v2, p0, Landroidx/appcompat/widget/v0;->j:Ljava/lang/CharSequence;
    invoke-virtual { v1, v2 }, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V
    goto :L4
  :L3
  .line 8
    iget-object v1, p0, Landroidx/appcompat/widget/v0;->a:Landroidx/appcompat/widget/Toolbar;
    const/4 v2, 0
    invoke-virtual { v1, v2 }, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V
  .line 9
    iget-object v1, p0, Landroidx/appcompat/widget/v0;->a:Landroidx/appcompat/widget/Toolbar;
    invoke-virtual { v1, v2 }, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V
  :L4
    and-int/lit8 v0, v0, 16
    if-eqz v0, :L6
  .line 10
    iget-object v0, p0, Landroidx/appcompat/widget/v0;->d:Landroid/view/View;
    if-eqz v0, :L6
    and-int/lit8 p1, p1, 16
    if-eqz p1, :L5
  .line 11
    iget-object p1, p0, Landroidx/appcompat/widget/v0;->a:Landroidx/appcompat/widget/Toolbar;
    invoke-virtual { p1, v0 }, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    goto :L6
  :L5
  .line 12
    iget-object p1, p0, Landroidx/appcompat/widget/v0;->a:Landroidx/appcompat/widget/Toolbar;
    invoke-virtual { p1, v0 }, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
  :L6
    return-void
.end method

.method public z(Landroid/view/View;)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/v0;->d:Landroid/view/View;
    if-eqz v0, :L0
    iget v1, p0, Landroidx/appcompat/widget/v0;->b:I
    and-int/lit8 v1, v1, 16
    if-eqz v1, :L0
  .line 2
    iget-object v1, p0, Landroidx/appcompat/widget/v0;->a:Landroidx/appcompat/widget/Toolbar;
    invoke-virtual { v1, v0 }, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
  :L0
  .line 3
    iput-object p1, p0, Landroidx/appcompat/widget/v0;->d:Landroid/view/View;
    if-eqz p1, :L1
  .line 4
    iget v0, p0, Landroidx/appcompat/widget/v0;->b:I
    and-int/lit8 v0, v0, 16
    if-eqz v0, :L1
  .line 5
    iget-object v0, p0, Landroidx/appcompat/widget/v0;->a:Landroidx/appcompat/widget/Toolbar;
    invoke-virtual { v0, p1 }, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
  :L1
    return-void
.end method
