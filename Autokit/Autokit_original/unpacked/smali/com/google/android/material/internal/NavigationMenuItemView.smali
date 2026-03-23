.class public Lcom/google/android/material/internal/NavigationMenuItemView;
.super Lcom/google/android/material/internal/d;
.implements Landroidx/appcompat/view/menu/n$a;
.source "SourceFile"

.field private final static G:[I

.field private A:Landroid/widget/FrameLayout;

.field private B:Landroidx/appcompat/view/menu/i;

.field private C:Landroid/content/res/ColorStateList;

.field private D:Z

.field private E:Landroid/graphics/drawable/Drawable;

.field private final F:Landroidx/core/view/a;

.field private w:I

.field private x:Z

.field y:Z

.field private final z:Landroid/widget/CheckedTextView;

.method static constructor <clinit>()V
  .registers 5
    const/4 v0, 1
    new-array v0, v0, [I
    const/4 v1, 0
    const v2, 16842912
    aput v2, v0, v1
  .line 1
    sput-object v0, Lcom/google/android/material/internal/NavigationMenuItemView;->G:[I
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 4
    const/4 v0, 0
  .line 1
    invoke-direct { p0, p1, p2, v0 }, Lcom/google/android/material/internal/NavigationMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .registers 5
  .line 2
    invoke-direct { p0, p1, p2, p3 }, Lcom/google/android/material/internal/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .line 3
    new-instance p2, Lcom/google/android/material/internal/NavigationMenuItemView$a;
    invoke-direct { p2, p0 }, Lcom/google/android/material/internal/NavigationMenuItemView$a;-><init>(Lcom/google/android/material/internal/NavigationMenuItemView;)V
    iput-object p2, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->F:Landroidx/core/view/a;
    const/4 p2, 0
  .line 4
    invoke-virtual { p0, p2 }, Landroidx/appcompat/widget/g0;->setOrientation(I)V
  .line 5
    invoke-static { p1 }, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
    move-result-object p2
    sget p3, Ld/c/a/a/h;->design_navigation_menu_item:I
    const/4 v0, 1
    invoke-virtual { p2, p3, p0, v0 }, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
  .line 6
    invoke-virtual { p1 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object p1
    sget p2, Ld/c/a/a/d;->design_navigation_icon_size:I
    invoke-virtual { p1, p2 }, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    move-result p1
    invoke-virtual { p0, p1 }, Lcom/google/android/material/internal/NavigationMenuItemView;->setIconSize(I)V
  .line 7
    sget p1, Ld/c/a/a/f;->design_menu_item_text:I
    invoke-virtual { p0, p1 }, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
    move-result-object p1
    check-cast p1, Landroid/widget/CheckedTextView;
    iput-object p1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->z:Landroid/widget/CheckedTextView;
  .line 8
    invoke-virtual { p1, v0 }, Landroid/widget/CheckedTextView;->setDuplicateParentStateEnabled(Z)V
  .line 9
    iget-object p1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->z:Landroid/widget/CheckedTextView;
    iget-object p2, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->F:Landroidx/core/view/a;
    invoke-static { p1, p2 }, Landroidx/core/view/v;->o0(Landroid/view/View;Landroidx/core/view/a;)V
    return-void
.end method

.method private B()V
  .registers 3
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/internal/NavigationMenuItemView;->D()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->z:Landroid/widget/CheckedTextView;
    const/16 v1, 8
    invoke-virtual { v0, v1 }, Landroid/widget/CheckedTextView;->setVisibility(I)V
  .line 3
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->A:Landroid/widget/FrameLayout;
    if-eqz v0, :L1
  .line 4
    invoke-virtual { v0 }, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
    check-cast v0, Landroidx/appcompat/widget/g0$a;
    const/4 v1, -1
  .line 5
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I
  .line 6
    iget-object v1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->A:Landroid/widget/FrameLayout;
    invoke-virtual { v1, v0 }, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    goto :L1
  :L0
  .line 7
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->z:Landroid/widget/CheckedTextView;
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Landroid/widget/CheckedTextView;->setVisibility(I)V
  .line 8
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->A:Landroid/widget/FrameLayout;
    if-eqz v0, :L1
  .line 9
    invoke-virtual { v0 }, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
    check-cast v0, Landroidx/appcompat/widget/g0$a;
    const/4 v1, -2
  .line 10
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I
  .line 11
    iget-object v1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->A:Landroid/widget/FrameLayout;
    invoke-virtual { v1, v0 }, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  :L1
    return-void
.end method

.method private C()Landroid/graphics/drawable/StateListDrawable;
  .registers 5
  .line 1
    new-instance v0, Landroid/util/TypedValue;
    invoke-direct { v0 }, Landroid/util/TypedValue;-><init>()V
  .line 2
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object v1
  .line 3
    invoke-virtual { v1 }, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;
    move-result-object v1
    sget v2, Lc/a/a;->colorControlHighlight:I
    const/4 v3, 1
  .line 4
    invoke-virtual { v1, v2, v0, v3 }, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z
    move-result v1
    if-eqz v1, :L0
  .line 5
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;
    invoke-direct { v1 }, Landroid/graphics/drawable/StateListDrawable;-><init>()V
  .line 6
    sget-object v2, Lcom/google/android/material/internal/NavigationMenuItemView;->G:[I
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;
    iget v0, v0, Landroid/util/TypedValue;->data:I
    invoke-direct { v3, v0 }, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V
    invoke-virtual { v1, v2, v3 }, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V
  .line 7
    sget-object v0, Landroid/view/ViewGroup;->EMPTY_STATE_SET:[I
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;
    const/4 v3, 0
    invoke-direct { v2, v3 }, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V
    invoke-virtual { v1, v0, v2 }, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V
    return-object v1
  :L0
    const/4 v0, 0
    return-object v0
.end method

.method private D()Z
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->B:Landroidx/appcompat/view/menu/i;
    invoke-virtual { v0 }, Landroidx/appcompat/view/menu/i;->getTitle()Ljava/lang/CharSequence;
    move-result-object v0
    if-nez v0, :L0
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->B:Landroidx/appcompat/view/menu/i;
  .line 2
    invoke-virtual { v0 }, Landroidx/appcompat/view/menu/i;->getIcon()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    if-nez v0, :L0
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->B:Landroidx/appcompat/view/menu/i;
  .line 3
    invoke-virtual { v0 }, Landroidx/appcompat/view/menu/i;->getActionView()Landroid/view/View;
    move-result-object v0
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method private setActionView(Landroid/view/View;)V
  .registers 3
    if-eqz p1, :L1
  .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->A:Landroid/widget/FrameLayout;
    if-nez v0, :L0
  .line 2
    sget v0, Ld/c/a/a/f;->design_menu_item_action_area_stub:I
  .line 3
    invoke-virtual { p0, v0 }, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/view/ViewStub;
    invoke-virtual { v0 }, Landroid/view/ViewStub;->inflate()Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/FrameLayout;
    iput-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->A:Landroid/widget/FrameLayout;
  :L0
  .line 4
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->A:Landroid/widget/FrameLayout;
    invoke-virtual { v0 }, Landroid/widget/FrameLayout;->removeAllViews()V
  .line 5
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->A:Landroid/widget/FrameLayout;
    invoke-virtual { v0, p1 }, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V
  :L1
    return-void
.end method

.method public e()Z
  .registers 2
    const/4 v0, 0
    return v0
.end method

.method public f(Landroidx/appcompat/view/menu/i;I)V
  .registers 3
  .line 1
    iput-object p1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->B:Landroidx/appcompat/view/menu/i;
  .line 2
    invoke-virtual { p1 }, Landroidx/appcompat/view/menu/i;->getItemId()I
    move-result p2
    if-lez p2, :L0
  .line 3
    invoke-virtual { p1 }, Landroidx/appcompat/view/menu/i;->getItemId()I
    move-result p2
    invoke-virtual { p0, p2 }, Landroid/view/ViewGroup;->setId(I)V
  :L0
  .line 4
    invoke-virtual { p1 }, Landroidx/appcompat/view/menu/i;->isVisible()Z
    move-result p2
    if-eqz p2, :L1
    const/4 p2, 0
    goto :L2
  :L1
    const/16 p2, 8
  :L2
    invoke-virtual { p0, p2 }, Landroid/view/ViewGroup;->setVisibility(I)V
  .line 5
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;
    move-result-object p2
    if-nez p2, :L3
  .line 6
    invoke-direct { p0 }, Lcom/google/android/material/internal/NavigationMenuItemView;->C()Landroid/graphics/drawable/StateListDrawable;
    move-result-object p2
    invoke-static { p0, p2 }, Landroidx/core/view/v;->r0(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
  :L3
  .line 7
    invoke-virtual { p1 }, Landroidx/appcompat/view/menu/i;->isCheckable()Z
    move-result p2
    invoke-virtual { p0, p2 }, Lcom/google/android/material/internal/NavigationMenuItemView;->setCheckable(Z)V
  .line 8
    invoke-virtual { p1 }, Landroidx/appcompat/view/menu/i;->isChecked()Z
    move-result p2
    invoke-virtual { p0, p2 }, Lcom/google/android/material/internal/NavigationMenuItemView;->setChecked(Z)V
  .line 9
    invoke-virtual { p1 }, Landroidx/appcompat/view/menu/i;->isEnabled()Z
    move-result p2
    invoke-virtual { p0, p2 }, Landroid/view/ViewGroup;->setEnabled(Z)V
  .line 10
    invoke-virtual { p1 }, Landroidx/appcompat/view/menu/i;->getTitle()Ljava/lang/CharSequence;
    move-result-object p2
    invoke-virtual { p0, p2 }, Lcom/google/android/material/internal/NavigationMenuItemView;->setTitle(Ljava/lang/CharSequence;)V
  .line 11
    invoke-virtual { p1 }, Landroidx/appcompat/view/menu/i;->getIcon()Landroid/graphics/drawable/Drawable;
    move-result-object p2
    invoke-virtual { p0, p2 }, Lcom/google/android/material/internal/NavigationMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V
  .line 12
    invoke-virtual { p1 }, Landroidx/appcompat/view/menu/i;->getActionView()Landroid/view/View;
    move-result-object p2
    invoke-direct { p0, p2 }, Lcom/google/android/material/internal/NavigationMenuItemView;->setActionView(Landroid/view/View;)V
  .line 13
    invoke-virtual { p1 }, Landroidx/appcompat/view/menu/i;->getContentDescription()Ljava/lang/CharSequence;
    move-result-object p2
    invoke-virtual { p0, p2 }, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V
  .line 14
    invoke-virtual { p1 }, Landroidx/appcompat/view/menu/i;->getTooltipText()Ljava/lang/CharSequence;
    move-result-object p1
    invoke-static { p0, p1 }, Landroidx/appcompat/widget/w0;->a(Landroid/view/View;Ljava/lang/CharSequence;)V
  .line 15
    invoke-direct { p0 }, Lcom/google/android/material/internal/NavigationMenuItemView;->B()V
    return-void
.end method

.method public getItemData()Landroidx/appcompat/view/menu/i;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->B:Landroidx/appcompat/view/menu/i;
    return-object v0
.end method

.method protected onCreateDrawableState(I)[I
  .registers 3
    add-int/lit8 p1, p1, 1
  .line 1
    invoke-super { p0, p1 }, Landroid/view/ViewGroup;->onCreateDrawableState(I)[I
    move-result-object p1
  .line 2
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->B:Landroidx/appcompat/view/menu/i;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Landroidx/appcompat/view/menu/i;->isCheckable()Z
    move-result v0
    if-eqz v0, :L0
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->B:Landroidx/appcompat/view/menu/i;
    invoke-virtual { v0 }, Landroidx/appcompat/view/menu/i;->isChecked()Z
    move-result v0
    if-eqz v0, :L0
  .line 3
    sget-object v0, Lcom/google/android/material/internal/NavigationMenuItemView;->G:[I
    invoke-static { p1, v0 }, Landroid/view/ViewGroup;->mergeDrawableStates([I[I)[I
  :L0
    return-object p1
.end method

.method public setCheckable(Z)V
  .registers 4
  .line 1
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->refreshDrawableState()V
  .line 2
    iget-boolean v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->y:Z
    if-eq v0, p1, :L0
  .line 3
    iput-boolean p1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->y:Z
  .line 4
    iget-object p1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->F:Landroidx/core/view/a;
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->z:Landroid/widget/CheckedTextView;
    const/16 v1, 2048
    invoke-virtual { p1, v0, v1 }, Landroidx/core/view/a;->l(Landroid/view/View;I)V
  :L0
    return-void
.end method

.method public setChecked(Z)V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->refreshDrawableState()V
  .line 2
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->z:Landroid/widget/CheckedTextView;
    invoke-virtual { v0, p1 }, Landroid/widget/CheckedTextView;->setChecked(Z)V
    return-void
.end method

.method public setHorizontalPadding(I)V
  .registers 3
    const/4 v0, 0
  .line 1
    invoke-virtual { p0, p1, v0, p1, v0 }, Landroid/view/ViewGroup;->setPadding(IIII)V
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
  .registers 5
    const/4 v0, 0
    if-eqz p1, :L3
  .line 1
    iget-boolean v1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->D:Z
    if-eqz v1, :L2
  .line 2
    invoke-virtual { p1 }, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    move-result-object v1
    if-nez v1, :L0
    goto :L1
  :L0
  .line 3
    invoke-virtual { v1 }, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;
    move-result-object p1
  :L1
    invoke-static { p1 }, Landroidx/core/graphics/drawable/a;->r(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    move-result-object p1
    invoke-virtual { p1 }, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
    move-result-object p1
  .line 4
    iget-object v1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->C:Landroid/content/res/ColorStateList;
    invoke-static { p1, v1 }, Landroidx/core/graphics/drawable/a;->o(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
  :L2
  .line 5
    iget v1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->w:I
    invoke-virtual { p1, v0, v0, v1, v1 }, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
    goto :L5
  :L3
  .line 6
    iget-boolean v1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->x:Z
    if-eqz v1, :L5
  .line 7
    iget-object p1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->E:Landroid/graphics/drawable/Drawable;
    if-nez p1, :L4
  .line 8
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;
    move-result-object p1
    sget v1, Ld/c/a/a/e;->navigation_empty_icon:I
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object v2
    invoke-virtual { v2 }, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;
    move-result-object v2
  .line 9
    invoke-static { p1, v1, v2 }, Landroidx/core/content/c/f;->b(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    move-result-object p1
    iput-object p1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->E:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :L4
  .line 10
    iget v1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->w:I
    invoke-virtual { p1, v0, v0, v1, v1 }, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
  :L4
  .line 11
    iget-object p1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->E:Landroid/graphics/drawable/Drawable;
  :L5
  .line 12
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->z:Landroid/widget/CheckedTextView;
    const/4 v1, 0
    invoke-static { v0, p1, v1, v1, v1 }, Landroidx/core/widget/i;->i(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    return-void
.end method

.method public setIconPadding(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->z:Landroid/widget/CheckedTextView;
    invoke-virtual { v0, p1 }, Landroid/widget/CheckedTextView;->setCompoundDrawablePadding(I)V
    return-void
.end method

.method public setIconSize(I)V
  .registers 2
  .line 1
    iput p1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->w:I
    return-void
.end method

.method setIconTintList(Landroid/content/res/ColorStateList;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->C:Landroid/content/res/ColorStateList;
    if-eqz p1, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
  .line 2
    iput-boolean p1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->D:Z
  .line 3
    iget-object p1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->B:Landroidx/appcompat/view/menu/i;
    if-eqz p1, :L2
  .line 4
    invoke-virtual { p1 }, Landroidx/appcompat/view/menu/i;->getIcon()Landroid/graphics/drawable/Drawable;
    move-result-object p1
    invoke-virtual { p0, p1 }, Lcom/google/android/material/internal/NavigationMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V
  :L2
    return-void
.end method

.method public setMaxLines(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->z:Landroid/widget/CheckedTextView;
    invoke-virtual { v0, p1 }, Landroid/widget/CheckedTextView;->setMaxLines(I)V
    return-void
.end method

.method public setNeedsEmptyIcon(Z)V
  .registers 2
  .line 1
    iput-boolean p1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->x:Z
    return-void
.end method

.method public setTextAppearance(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->z:Landroid/widget/CheckedTextView;
    invoke-static { v0, p1 }, Landroidx/core/widget/i;->n(Landroid/widget/TextView;I)V
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->z:Landroid/widget/CheckedTextView;
    invoke-virtual { v0, p1 }, Landroid/widget/CheckedTextView;->setTextColor(Landroid/content/res/ColorStateList;)V
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->z:Landroid/widget/CheckedTextView;
    invoke-virtual { v0, p1 }, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V
    return-void
.end method
