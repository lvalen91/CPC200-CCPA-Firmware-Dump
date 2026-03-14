.class public Landroidx/appcompat/view/menu/ListMenuItemView;
.super Landroid/widget/LinearLayout;
.implements Landroidx/appcompat/view/menu/n$a;
.implements Landroid/widget/AbsListView$SelectionBoundsAdjuster;
.source "SourceFile"

.field private b:Landroidx/appcompat/view/menu/i;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/RadioButton;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/CheckBox;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/graphics/drawable/Drawable;

.field private l:I

.field private m:Landroid/content/Context;

.field private n:Z

.field private o:Landroid/graphics/drawable/Drawable;

.field private p:Z

.field private q:Landroid/view/LayoutInflater;

.field private r:Z

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 4
  .line 1
    sget v0, Lc/a/a;->listMenuViewStyle:I
    invoke-direct { p0, p1, p2, v0 }, Landroidx/appcompat/view/menu/ListMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .registers 7
  .line 2
    invoke-direct { p0, p1, p2 }, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .line 3
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;
    move-result-object v0
    sget-object v1, Lc/a/j;->MenuView:[I
    const/4 v2, 0
    invoke-static { v0, p2, v1, p3, v2 }, Landroidx/appcompat/widget/u0;->v(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/u0;
    move-result-object p2
  .line 4
    sget p3, Lc/a/j;->MenuView_android_itemBackground:I
    invoke-virtual { p2, p3 }, Landroidx/appcompat/widget/u0;->g(I)Landroid/graphics/drawable/Drawable;
    move-result-object p3
    iput-object p3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->k:Landroid/graphics/drawable/Drawable;
  .line 5
    sget p3, Lc/a/j;->MenuView_android_itemTextAppearance:I
    const/4 v0, -1
    invoke-virtual { p2, p3, v0 }, Landroidx/appcompat/widget/u0;->n(II)I
    move-result p3
    iput p3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->l:I
  .line 6
    sget p3, Lc/a/j;->MenuView_preserveIconSpacing:I
    invoke-virtual { p2, p3, v2 }, Landroidx/appcompat/widget/u0;->a(IZ)Z
    move-result p3
    iput-boolean p3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->n:Z
  .line 7
    iput-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->m:Landroid/content/Context;
  .line 8
    sget p3, Lc/a/j;->MenuView_subMenuArrow:I
    invoke-virtual { p2, p3 }, Landroidx/appcompat/widget/u0;->g(I)Landroid/graphics/drawable/Drawable;
    move-result-object p3
    iput-object p3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->o:Landroid/graphics/drawable/Drawable;
  .line 9
    invoke-virtual { p1 }, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;
    move-result-object p1
    const/4 p3, 1
    new-array p3, p3, [I
    const v0, 16843049
    aput v0, p3, v2
    sget v0, Lc/a/a;->dropDownListViewStyle:I
    const/4 v1, 0
  .line 10
    invoke-virtual { p1, v1, p3, v0, v2 }, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    move-result-object p1
  .line 11
    invoke-virtual { p1, v2 }, Landroid/content/res/TypedArray;->hasValue(I)Z
    move-result p3
    iput-boolean p3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->p:Z
  .line 12
    invoke-virtual { p2 }, Landroidx/appcompat/widget/u0;->w()V
  .line 13
    invoke-virtual { p1 }, Landroid/content/res/TypedArray;->recycle()V
    return-void
.end method

.method private a(Landroid/view/View;)V
  .registers 3
    const/4 v0, -1
  .line 1
    invoke-direct { p0, p1, v0 }, Landroidx/appcompat/view/menu/ListMenuItemView;->b(Landroid/view/View;I)V
    return-void
.end method

.method private b(Landroid/view/View;I)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->j:Landroid/widget/LinearLayout;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1, p2 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V
    goto :L1
  :L0
  .line 3
    invoke-virtual { p0, p1, p2 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V
  :L1
    return-void
.end method

.method private c()V
  .registers 4
  .line 1
    invoke-direct { p0 }, Landroidx/appcompat/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;
    move-result-object v0
  .line 2
    sget v1, Lc/a/g;->abc_list_menu_item_checkbox:I
    const/4 v2, 0
  .line 3
    invoke-virtual { v0, v1, p0, v2 }, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/CheckBox;
    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->f:Landroid/widget/CheckBox;
  .line 4
    invoke-direct { p0, v0 }, Landroidx/appcompat/view/menu/ListMenuItemView;->a(Landroid/view/View;)V
    return-void
.end method

.method private d()V
  .registers 4
  .line 1
    invoke-direct { p0 }, Landroidx/appcompat/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;
    move-result-object v0
  .line 2
    sget v1, Lc/a/g;->abc_list_menu_item_icon:I
    const/4 v2, 0
    invoke-virtual { v0, v1, p0, v2 }, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/ImageView;
    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->c:Landroid/widget/ImageView;
  .line 3
    invoke-direct { p0, v0, v2 }, Landroidx/appcompat/view/menu/ListMenuItemView;->b(Landroid/view/View;I)V
    return-void
.end method

.method private g()V
  .registers 4
  .line 1
    invoke-direct { p0 }, Landroidx/appcompat/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;
    move-result-object v0
  .line 2
    sget v1, Lc/a/g;->abc_list_menu_item_radio:I
    const/4 v2, 0
  .line 3
    invoke-virtual { v0, v1, p0, v2 }, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/RadioButton;
    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->d:Landroid/widget/RadioButton;
  .line 4
    invoke-direct { p0, v0 }, Landroidx/appcompat/view/menu/ListMenuItemView;->a(Landroid/view/View;)V
    return-void
.end method

.method private getInflater()Landroid/view/LayoutInflater;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->q:Landroid/view/LayoutInflater;
    if-nez v0, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-static { v0 }, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
    move-result-object v0
    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->q:Landroid/view/LayoutInflater;
  :L0
  .line 3
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->q:Landroid/view/LayoutInflater;
    return-object v0
.end method

.method private setSubMenuArrowVisible(Z)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->h:Landroid/widget/ImageView;
    if-eqz v0, :L2
    if-eqz p1, :L0
    const/4 p1, 0
    goto :L1
  :L0
    const/16 p1, 8
  :L1
  .line 2
    invoke-virtual { v0, p1 }, Landroid/widget/ImageView;->setVisibility(I)V
  :L2
    return-void
.end method

.method public adjustListItemSelectionBounds(Landroid/graphics/Rect;)V
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->i:Landroid/widget/ImageView;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Landroid/widget/ImageView;->getVisibility()I
    move-result v0
    if-nez v0, :L0
  .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->i:Landroid/widget/ImageView;
    invoke-virtual { v0 }, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;
  .line 3
    iget v1, p1, Landroid/graphics/Rect;->top:I
    iget-object v2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->i:Landroid/widget/ImageView;
    invoke-virtual { v2 }, Landroid/widget/ImageView;->getHeight()I
    move-result v2
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I
    add-int/2addr v2, v3
    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I
    add-int/2addr v2, v0
    add-int/2addr v1, v2
    iput v1, p1, Landroid/graphics/Rect;->top:I
  :L0
    return-void
.end method

.method public e()Z
  .registers 2
    const/4 v0, 0
    return v0
.end method

.method public f(Landroidx/appcompat/view/menu/i;I)V
  .registers 4
  .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->b:Landroidx/appcompat/view/menu/i;
  .line 2
    invoke-virtual { p1 }, Landroidx/appcompat/view/menu/i;->isVisible()Z
    move-result p2
    if-eqz p2, :L0
    const/4 p2, 0
    goto :L1
  :L0
    const/16 p2, 8
  :L1
    invoke-virtual { p0, p2 }, Landroid/widget/LinearLayout;->setVisibility(I)V
  .line 3
    invoke-virtual { p1, p0 }, Landroidx/appcompat/view/menu/i;->i(Landroidx/appcompat/view/menu/n$a;)Ljava/lang/CharSequence;
    move-result-object p2
    invoke-virtual { p0, p2 }, Landroidx/appcompat/view/menu/ListMenuItemView;->setTitle(Ljava/lang/CharSequence;)V
  .line 4
    invoke-virtual { p1 }, Landroidx/appcompat/view/menu/i;->isCheckable()Z
    move-result p2
    invoke-virtual { p0, p2 }, Landroidx/appcompat/view/menu/ListMenuItemView;->setCheckable(Z)V
  .line 5
    invoke-virtual { p1 }, Landroidx/appcompat/view/menu/i;->A()Z
    move-result p2
    invoke-virtual { p1 }, Landroidx/appcompat/view/menu/i;->g()C
    move-result v0
    invoke-virtual { p0, p2, v0 }, Landroidx/appcompat/view/menu/ListMenuItemView;->h(ZC)V
  .line 6
    invoke-virtual { p1 }, Landroidx/appcompat/view/menu/i;->getIcon()Landroid/graphics/drawable/Drawable;
    move-result-object p2
    invoke-virtual { p0, p2 }, Landroidx/appcompat/view/menu/ListMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V
  .line 7
    invoke-virtual { p1 }, Landroidx/appcompat/view/menu/i;->isEnabled()Z
    move-result p2
    invoke-virtual { p0, p2 }, Landroid/widget/LinearLayout;->setEnabled(Z)V
  .line 8
    invoke-virtual { p1 }, Landroidx/appcompat/view/menu/i;->hasSubMenu()Z
    move-result p2
    invoke-direct { p0, p2 }, Landroidx/appcompat/view/menu/ListMenuItemView;->setSubMenuArrowVisible(Z)V
  .line 9
    invoke-virtual { p1 }, Landroidx/appcompat/view/menu/i;->getContentDescription()Ljava/lang/CharSequence;
    move-result-object p1
    invoke-virtual { p0, p1 }, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V
    return-void
.end method

.method public getItemData()Landroidx/appcompat/view/menu/i;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->b:Landroidx/appcompat/view/menu/i;
    return-object v0
.end method

.method public h(ZC)V
  .registers 4
    if-eqz p1, :L0
  .line 1
    iget-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->b:Landroidx/appcompat/view/menu/i;
    invoke-virtual { p1 }, Landroidx/appcompat/view/menu/i;->A()Z
    move-result p1
    if-eqz p1, :L0
    const/4 p1, 0
    goto :L1
  :L0
    const/16 p1, 8
  :L1
    if-nez p1, :L2
  .line 2
    iget-object p2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->g:Landroid/widget/TextView;
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->b:Landroidx/appcompat/view/menu/i;
    invoke-virtual { v0 }, Landroidx/appcompat/view/menu/i;->h()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p2, v0 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  :L2
  .line 3
    iget-object p2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->g:Landroid/widget/TextView;
    invoke-virtual { p2 }, Landroid/widget/TextView;->getVisibility()I
    move-result p2
    if-eq p2, p1, :L3
  .line 4
    iget-object p2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->g:Landroid/widget/TextView;
    invoke-virtual { p2, p1 }, Landroid/widget/TextView;->setVisibility(I)V
  :L3
    return-void
.end method

.method protected onFinishInflate()V
  .registers 4
  .line 1
    invoke-super { p0 }, Landroid/widget/LinearLayout;->onFinishInflate()V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->k:Landroid/graphics/drawable/Drawable;
    invoke-static { p0, v0 }, Landroidx/core/view/v;->r0(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
  .line 3
    sget v0, Lc/a/f;->title:I
    invoke-virtual { p0, v0 }, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/TextView;
    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->e:Landroid/widget/TextView;
  .line 4
    iget v1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->l:I
    const/4 v2, -1
    if-eq v1, v2, :L0
  .line 5
    iget-object v2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->m:Landroid/content/Context;
    invoke-virtual { v0, v2, v1 }, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V
  :L0
  .line 6
    sget v0, Lc/a/f;->shortcut:I
    invoke-virtual { p0, v0 }, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/TextView;
    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->g:Landroid/widget/TextView;
  .line 7
    sget v0, Lc/a/f;->submenuarrow:I
    invoke-virtual { p0, v0 }, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/ImageView;
    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->h:Landroid/widget/ImageView;
    if-eqz v0, :L1
  .line 8
    iget-object v1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->o:Landroid/graphics/drawable/Drawable;
    invoke-virtual { v0, v1 }, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
  :L1
  .line 9
    sget v0, Lc/a/f;->group_divider:I
    invoke-virtual { p0, v0 }, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/ImageView;
    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->i:Landroid/widget/ImageView;
  .line 10
    sget v0, Lc/a/f;->content:I
    invoke-virtual { p0, v0 }, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/LinearLayout;
    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->j:Landroid/widget/LinearLayout;
    return-void
.end method

.method protected onMeasure(II)V
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->c:Landroid/widget/ImageView;
    if-eqz v0, :L0
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->n:Z
    if-eqz v0, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
  .line 3
    iget-object v1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->c:Landroid/widget/ImageView;
    invoke-virtual { v1 }, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v1
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;
  .line 4
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I
    if-lez v0, :L0
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I
    if-gtz v2, :L0
  .line 5
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I
  :L0
  .line 6
    invoke-super { p0, p1, p2 }, Landroid/widget/LinearLayout;->onMeasure(II)V
    return-void
.end method

.method public setCheckable(Z)V
  .registers 5
    if-nez p1, :L0
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->d:Landroid/widget/RadioButton;
    if-nez v0, :L0
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->f:Landroid/widget/CheckBox;
    if-nez v0, :L0
    return-void
  :L0
  .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->b:Landroidx/appcompat/view/menu/i;
    invoke-virtual { v0 }, Landroidx/appcompat/view/menu/i;->m()Z
    move-result v0
    if-eqz v0, :L2
  .line 3
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->d:Landroid/widget/RadioButton;
    if-nez v0, :L1
  .line 4
    invoke-direct { p0 }, Landroidx/appcompat/view/menu/ListMenuItemView;->g()V
  :L1
  .line 5
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->d:Landroid/widget/RadioButton;
  .line 6
    iget-object v1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->f:Landroid/widget/CheckBox;
    goto :L4
  :L2
  .line 7
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->f:Landroid/widget/CheckBox;
    if-nez v0, :L3
  .line 8
    invoke-direct { p0 }, Landroidx/appcompat/view/menu/ListMenuItemView;->c()V
  :L3
  .line 9
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->f:Landroid/widget/CheckBox;
  .line 10
    iget-object v1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->d:Landroid/widget/RadioButton;
  :L4
    const/16 v2, 8
    if-eqz p1, :L6
  .line 11
    iget-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->b:Landroidx/appcompat/view/menu/i;
    invoke-virtual { p1 }, Landroidx/appcompat/view/menu/i;->isChecked()Z
    move-result p1
    invoke-virtual { v0, p1 }, Landroid/widget/CompoundButton;->setChecked(Z)V
  .line 12
    invoke-virtual { v0 }, Landroid/widget/CompoundButton;->getVisibility()I
    move-result p1
    if-eqz p1, :L5
    const/4 p1, 0
  .line 13
    invoke-virtual { v0, p1 }, Landroid/widget/CompoundButton;->setVisibility(I)V
  :L5
    if-eqz v1, :L8
  .line 14
    invoke-virtual { v1 }, Landroid/widget/CompoundButton;->getVisibility()I
    move-result p1
    if-eq p1, v2, :L8
  .line 15
    invoke-virtual { v1, v2 }, Landroid/widget/CompoundButton;->setVisibility(I)V
    goto :L8
  :L6
  .line 16
    iget-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->f:Landroid/widget/CheckBox;
    if-eqz p1, :L7
  .line 17
    invoke-virtual { p1, v2 }, Landroid/widget/CheckBox;->setVisibility(I)V
  :L7
  .line 18
    iget-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->d:Landroid/widget/RadioButton;
    if-eqz p1, :L8
  .line 19
    invoke-virtual { p1, v2 }, Landroid/widget/RadioButton;->setVisibility(I)V
  :L8
    return-void
.end method

.method public setChecked(Z)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->b:Landroidx/appcompat/view/menu/i;
    invoke-virtual { v0 }, Landroidx/appcompat/view/menu/i;->m()Z
    move-result v0
    if-eqz v0, :L1
  .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->d:Landroid/widget/RadioButton;
    if-nez v0, :L0
  .line 3
    invoke-direct { p0 }, Landroidx/appcompat/view/menu/ListMenuItemView;->g()V
  :L0
  .line 4
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->d:Landroid/widget/RadioButton;
    goto :L3
  :L1
  .line 5
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->f:Landroid/widget/CheckBox;
    if-nez v0, :L2
  .line 6
    invoke-direct { p0 }, Landroidx/appcompat/view/menu/ListMenuItemView;->c()V
  :L2
  .line 7
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->f:Landroid/widget/CheckBox;
  :L3
  .line 8
    invoke-virtual { v0, p1 }, Landroid/widget/CompoundButton;->setChecked(Z)V
    return-void
.end method

.method public setForceShowIcon(Z)V
  .registers 2
  .line 1
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->r:Z
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->n:Z
    return-void
.end method

.method public setGroupDividerEnabled(Z)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->i:Landroid/widget/ImageView;
    if-eqz v0, :L2
  .line 2
    iget-boolean v1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->p:Z
    if-nez v1, :L0
    if-eqz p1, :L0
    const/4 p1, 0
    goto :L1
  :L0
    const/16 p1, 8
  :L1
  .line 3
    invoke-virtual { v0, p1 }, Landroid/widget/ImageView;->setVisibility(I)V
  :L2
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->b:Landroidx/appcompat/view/menu/i;
    invoke-virtual { v0 }, Landroidx/appcompat/view/menu/i;->z()Z
    move-result v0
    const/4 v1, 0
    if-nez v0, :L1
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->r:Z
    if-eqz v0, :L0
    goto :L1
  :L0
    const/4 v0, 0
    goto :L2
  :L1
    const/4 v0, 1
  :L2
    if-nez v0, :L3
  .line 2
    iget-boolean v2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->n:Z
    if-nez v2, :L3
    return-void
  :L3
  .line 3
    iget-object v2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->c:Landroid/widget/ImageView;
    if-nez v2, :L4
    if-nez p1, :L4
    iget-boolean v2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->n:Z
    if-nez v2, :L4
    return-void
  :L4
  .line 4
    iget-object v2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->c:Landroid/widget/ImageView;
    if-nez v2, :L5
  .line 5
    invoke-direct { p0 }, Landroidx/appcompat/view/menu/ListMenuItemView;->d()V
  :L5
    if-nez p1, :L7
  .line 6
    iget-boolean v2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->n:Z
    if-eqz v2, :L6
    goto :L7
  :L6
  .line 7
    iget-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->c:Landroid/widget/ImageView;
    const/16 v0, 8
    invoke-virtual { p1, v0 }, Landroid/widget/ImageView;->setVisibility(I)V
    goto :L10
  :L7
  .line 8
    iget-object v2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->c:Landroid/widget/ImageView;
    if-eqz v0, :L8
    goto :L9
  :L8
    const/4 p1, 0
  :L9
    invoke-virtual { v2, p1 }, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
  .line 9
    iget-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->c:Landroid/widget/ImageView;
    invoke-virtual { p1 }, Landroid/widget/ImageView;->getVisibility()I
    move-result p1
    if-eqz p1, :L10
  .line 10
    iget-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->c:Landroid/widget/ImageView;
    invoke-virtual { p1, v1 }, Landroid/widget/ImageView;->setVisibility(I)V
  :L10
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
  .registers 3
    if-eqz p1, :L0
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->e:Landroid/widget/TextView;
    invoke-virtual { v0, p1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 2
    iget-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->e:Landroid/widget/TextView;
    invoke-virtual { p1 }, Landroid/widget/TextView;->getVisibility()I
    move-result p1
    if-eqz p1, :L1
    iget-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->e:Landroid/widget/TextView;
    const/4 v0, 0
    invoke-virtual { p1, v0 }, Landroid/widget/TextView;->setVisibility(I)V
    goto :L1
  :L0
  .line 3
    iget-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->e:Landroid/widget/TextView;
    invoke-virtual { p1 }, Landroid/widget/TextView;->getVisibility()I
    move-result p1
    const/16 v0, 8
    if-eq p1, v0, :L1
    iget-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->e:Landroid/widget/TextView;
    invoke-virtual { p1, v0 }, Landroid/widget/TextView;->setVisibility(I)V
  :L1
    return-void
.end method
