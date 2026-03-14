.class Landroidx/appcompat/widget/u$e;
.super Landroidx/appcompat/widget/h0;
.implements Landroidx/appcompat/widget/u$g;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/widget/u;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = "e"
.end annotation

.field private J:Ljava/lang/CharSequence;

.field K:Landroid/widget/ListAdapter;

.field private final L:Landroid/graphics/Rect;

.field private M:I

.field final synthetic N:Landroidx/appcompat/widget/u;

.method public constructor <init>(Landroidx/appcompat/widget/u;Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .registers 5
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/u$e;->N:Landroidx/appcompat/widget/u;
  .line 2
    invoke-direct { p0, p2, p3, p4 }, Landroidx/appcompat/widget/h0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .line 3
    new-instance p2, Landroid/graphics/Rect;
    invoke-direct { p2 }, Landroid/graphics/Rect;-><init>()V
    iput-object p2, p0, Landroidx/appcompat/widget/u$e;->L:Landroid/graphics/Rect;
  .line 4
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/h0;->D(Landroid/view/View;)V
    const/4 p2, 1
  .line 5
    invoke-virtual { p0, p2 }, Landroidx/appcompat/widget/h0;->J(Z)V
    const/4 p2, 0
  .line 6
    invoke-virtual { p0, p2 }, Landroidx/appcompat/widget/h0;->O(I)V
  .line 7
    new-instance p2, Landroidx/appcompat/widget/u$e$a;
    invoke-direct { p2, p0, p1 }, Landroidx/appcompat/widget/u$e$a;-><init>(Landroidx/appcompat/widget/u$e;Landroidx/appcompat/widget/u;)V
    invoke-virtual { p0, p2 }, Landroidx/appcompat/widget/h0;->L(Landroid/widget/AdapterView$OnItemClickListener;)V
    return-void
.end method

.method static synthetic R(Landroidx/appcompat/widget/u$e;)V
  .registers 1
  .line 1
    invoke-super { p0 }, Landroidx/appcompat/widget/h0;->g()V
    return-void
.end method

.method S()V
  .registers 9
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/widget/h0;->j()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    const/4 v1, 0
    if-eqz v0, :L2
  .line 2
    iget-object v1, p0, Landroidx/appcompat/widget/u$e;->N:Landroidx/appcompat/widget/u;
    iget-object v1, v1, Landroidx/appcompat/widget/u;->i:Landroid/graphics/Rect;
    invoke-virtual { v0, v1 }, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/u$e;->N:Landroidx/appcompat/widget/u;
    invoke-static { v0 }, Landroidx/appcompat/widget/a1;->b(Landroid/view/View;)Z
    move-result v0
    if-eqz v0, :L0
    iget-object v0, p0, Landroidx/appcompat/widget/u$e;->N:Landroidx/appcompat/widget/u;
    iget-object v0, v0, Landroidx/appcompat/widget/u;->i:Landroid/graphics/Rect;
    iget v0, v0, Landroid/graphics/Rect;->right:I
    goto :L1
  :L0
  .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/u$e;->N:Landroidx/appcompat/widget/u;
    iget-object v0, v0, Landroidx/appcompat/widget/u;->i:Landroid/graphics/Rect;
    iget v0, v0, Landroid/graphics/Rect;->left:I
    neg-int v0, v0
  :L1
    move v1, v0
    goto :L3
  :L2
  .line 5
    iget-object v0, p0, Landroidx/appcompat/widget/u$e;->N:Landroidx/appcompat/widget/u;
    iget-object v0, v0, Landroidx/appcompat/widget/u;->i:Landroid/graphics/Rect;
    iput v1, v0, Landroid/graphics/Rect;->right:I
    iput v1, v0, Landroid/graphics/Rect;->left:I
  :L3
  .line 6
    iget-object v0, p0, Landroidx/appcompat/widget/u$e;->N:Landroidx/appcompat/widget/u;
    invoke-virtual { v0 }, Landroid/widget/Spinner;->getPaddingLeft()I
    move-result v0
  .line 7
    iget-object v2, p0, Landroidx/appcompat/widget/u$e;->N:Landroidx/appcompat/widget/u;
    invoke-virtual { v2 }, Landroid/widget/Spinner;->getPaddingRight()I
    move-result v2
  .line 8
    iget-object v3, p0, Landroidx/appcompat/widget/u$e;->N:Landroidx/appcompat/widget/u;
    invoke-virtual { v3 }, Landroid/widget/Spinner;->getWidth()I
    move-result v3
  .line 9
    iget-object v4, p0, Landroidx/appcompat/widget/u$e;->N:Landroidx/appcompat/widget/u;
    iget v5, v4, Landroidx/appcompat/widget/u;->h:I
    const/4 v6, -2
    if-ne v5, v6, :L5
  .line 10
    iget-object v5, p0, Landroidx/appcompat/widget/u$e;->K:Landroid/widget/ListAdapter;
    check-cast v5, Landroid/widget/SpinnerAdapter;
  .line 11
    invoke-virtual { p0 }, Landroidx/appcompat/widget/h0;->j()Landroid/graphics/drawable/Drawable;
    move-result-object v6
  .line 12
    invoke-virtual { v4, v5, v6 }, Landroidx/appcompat/widget/u;->a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    move-result v4
  .line 13
    iget-object v5, p0, Landroidx/appcompat/widget/u$e;->N:Landroidx/appcompat/widget/u;
    invoke-virtual { v5 }, Landroid/widget/Spinner;->getContext()Landroid/content/Context;
    move-result-object v5
    invoke-virtual { v5 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v5
  .line 14
    invoke-virtual { v5 }, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
    move-result-object v5
    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I
    iget-object v6, p0, Landroidx/appcompat/widget/u$e;->N:Landroidx/appcompat/widget/u;
    iget-object v6, v6, Landroidx/appcompat/widget/u;->i:Landroid/graphics/Rect;
    iget v7, v6, Landroid/graphics/Rect;->left:I
    sub-int/2addr v5, v7
    iget v6, v6, Landroid/graphics/Rect;->right:I
    sub-int/2addr v5, v6
    if-le v4, v5, :L4
    move v4, v5
  :L4
    sub-int v5, v3, v0
    sub-int/2addr v5, v2
  .line 15
    invoke-static { v4, v5 }, Ljava/lang/Math;->max(II)I
    move-result v4
    invoke-virtual { p0, v4 }, Landroidx/appcompat/widget/h0;->F(I)V
    goto :L7
  :L5
    const/4 v4, -1
    if-ne v5, v4, :L6
    sub-int v4, v3, v0
    sub-int/2addr v4, v2
  .line 16
    invoke-virtual { p0, v4 }, Landroidx/appcompat/widget/h0;->F(I)V
    goto :L7
  :L6
  .line 17
    invoke-virtual { p0, v5 }, Landroidx/appcompat/widget/h0;->F(I)V
  :L7
  .line 18
    iget-object v4, p0, Landroidx/appcompat/widget/u$e;->N:Landroidx/appcompat/widget/u;
    invoke-static { v4 }, Landroidx/appcompat/widget/a1;->b(Landroid/view/View;)Z
    move-result v4
    if-eqz v4, :L8
    sub-int/2addr v3, v2
  .line 19
    invoke-virtual { p0 }, Landroidx/appcompat/widget/h0;->z()I
    move-result v0
    sub-int/2addr v3, v0
  .line 20
    invoke-virtual { p0 }, Landroidx/appcompat/widget/u$e;->T()I
    move-result v0
    sub-int/2addr v3, v0
    add-int/2addr v1, v3
    goto :L9
  :L8
  .line 21
    invoke-virtual { p0 }, Landroidx/appcompat/widget/u$e;->T()I
    move-result v2
    add-int/2addr v0, v2
    add-int/2addr v1, v0
  :L9
  .line 22
    invoke-virtual { p0, v1 }, Landroidx/appcompat/widget/h0;->d(I)V
    return-void
.end method

.method public T()I
  .registers 2
  .line 1
    iget v0, p0, Landroidx/appcompat/widget/u$e;->M:I
    return v0
.end method

.method U(Landroid/view/View;)Z
  .registers 3
  .line 1
    invoke-static { p1 }, Landroidx/core/view/v;->S(Landroid/view/View;)Z
    move-result v0
    if-eqz v0, :L0
    iget-object v0, p0, Landroidx/appcompat/widget/u$e;->L:Landroid/graphics/Rect;
    invoke-virtual { p1, v0 }, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z
    move-result p1
    if-eqz p1, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    return p1
.end method

.method public f(II)V
  .registers 7
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/widget/h0;->b()Z
    move-result v0
  .line 2
    invoke-virtual { p0 }, Landroidx/appcompat/widget/u$e;->S()V
    const/4 v1, 2
  .line 3
    invoke-virtual { p0, v1 }, Landroidx/appcompat/widget/h0;->I(I)V
  .line 4
    invoke-super { p0 }, Landroidx/appcompat/widget/h0;->g()V
  .line 5
    invoke-virtual { p0 }, Landroidx/appcompat/widget/h0;->l()Landroid/widget/ListView;
    move-result-object v1
    const/4 v2, 1
  .line 6
    invoke-virtual { v1, v2 }, Landroid/widget/ListView;->setChoiceMode(I)V
  .line 7
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v3, 17
    if-lt v2, v3, :L0
  .line 8
    invoke-virtual { v1, p1 }, Landroid/widget/ListView;->setTextDirection(I)V
  .line 9
    invoke-virtual { v1, p2 }, Landroid/widget/ListView;->setTextAlignment(I)V
  :L0
  .line 10
    iget-object p1, p0, Landroidx/appcompat/widget/u$e;->N:Landroidx/appcompat/widget/u;
    invoke-virtual { p1 }, Landroid/widget/Spinner;->getSelectedItemPosition()I
    move-result p1
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/h0;->P(I)V
    if-eqz v0, :L1
    return-void
  :L1
  .line 11
    iget-object p1, p0, Landroidx/appcompat/widget/u$e;->N:Landroidx/appcompat/widget/u;
    invoke-virtual { p1 }, Landroid/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
    move-result-object p1
    if-eqz p1, :L2
  .line 12
    new-instance p2, Landroidx/appcompat/widget/u$e$b;
    invoke-direct { p2, p0 }, Landroidx/appcompat/widget/u$e$b;-><init>(Landroidx/appcompat/widget/u$e;)V
  .line 13
    invoke-virtual { p1, p2 }, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
  .line 14
    new-instance p1, Landroidx/appcompat/widget/u$e$c;
    invoke-direct { p1, p0, p2 }, Landroidx/appcompat/widget/u$e$c;-><init>(Landroidx/appcompat/widget/u$e;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/h0;->K(Landroid/widget/PopupWindow$OnDismissListener;)V
  :L2
    return-void
.end method

.method public k()Ljava/lang/CharSequence;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u$e;->J:Ljava/lang/CharSequence;
    return-object v0
.end method

.method public m(Ljava/lang/CharSequence;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/u$e;->J:Ljava/lang/CharSequence;
    return-void
.end method

.method public o(Landroid/widget/ListAdapter;)V
  .registers 2
  .line 1
    invoke-super { p0, p1 }, Landroidx/appcompat/widget/h0;->o(Landroid/widget/ListAdapter;)V
  .line 2
    iput-object p1, p0, Landroidx/appcompat/widget/u$e;->K:Landroid/widget/ListAdapter;
    return-void
.end method

.method public p(I)V
  .registers 2
  .line 1
    iput p1, p0, Landroidx/appcompat/widget/u$e;->M:I
    return-void
.end method
