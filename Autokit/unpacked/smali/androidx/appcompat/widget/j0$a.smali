.class public Landroidx/appcompat/widget/j0$a;
.super Landroidx/appcompat/widget/d0;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/widget/j0;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 9
  name = "a"
.end annotation

.field final p:I

.field final q:I

.field private r:Landroidx/appcompat/widget/i0;

.field private s:Landroid/view/MenuItem;

.method public constructor <init>(Landroid/content/Context;Z)V
  .registers 6
  .line 1
    invoke-direct { p0, p1, p2 }, Landroidx/appcompat/widget/d0;-><init>(Landroid/content/Context;Z)V
  .line 2
    invoke-virtual { p1 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object p1
  .line 3
    invoke-virtual { p1 }, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
    move-result-object p1
  .line 4
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v0, 21
    const/16 v1, 22
    const/16 v2, 17
    if-lt p2, v2, :L0
    const/4 p2, 1
  .line 5
    invoke-virtual { p1 }, Landroid/content/res/Configuration;->getLayoutDirection()I
    move-result p1
    if-ne p2, p1, :L0
  .line 6
    iput v0, p0, Landroidx/appcompat/widget/j0$a;->p:I
  .line 7
    iput v1, p0, Landroidx/appcompat/widget/j0$a;->q:I
    goto :L1
  :L0
  .line 8
    iput v1, p0, Landroidx/appcompat/widget/j0$a;->p:I
  .line 9
    iput v0, p0, Landroidx/appcompat/widget/j0$a;->q:I
  :L1
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
  .registers 7
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/j0$a;->r:Landroidx/appcompat/widget/i0;
    if-eqz v0, :L4
  .line 2
    invoke-virtual { p0 }, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;
    move-result-object v0
  .line 3
    instance-of v1, v0, Landroid/widget/HeaderViewListAdapter;
    if-eqz v1, :L0
  .line 4
    check-cast v0, Landroid/widget/HeaderViewListAdapter;
  .line 5
    invoke-virtual { v0 }, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I
    move-result v1
  .line 6
    invoke-virtual { v0 }, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;
    move-result-object v0
    check-cast v0, Landroidx/appcompat/view/menu/f;
    goto :L1
  :L0
    const/4 v1, 0
  .line 7
    check-cast v0, Landroidx/appcompat/view/menu/f;
  :L1
    const/4 v2, 0
  .line 8
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getAction()I
    move-result v3
    const/16 v4, 10
    if-eq v3, v4, :L2
  .line 9
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getX()F
    move-result v3
    float-to-int v3, v3
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getY()F
    move-result v4
    float-to-int v4, v4
    invoke-virtual { p0, v3, v4 }, Landroid/widget/ListView;->pointToPosition(II)I
    move-result v3
    const/4 v4, -1
    if-eq v3, v4, :L2
    sub-int/2addr v3, v1
    if-ltz v3, :L2
  .line 10
    invoke-virtual { v0 }, Landroidx/appcompat/view/menu/f;->getCount()I
    move-result v1
    if-ge v3, v1, :L2
  .line 11
    invoke-virtual { v0, v3 }, Landroidx/appcompat/view/menu/f;->c(I)Landroidx/appcompat/view/menu/i;
    move-result-object v2
  :L2
  .line 12
    iget-object v1, p0, Landroidx/appcompat/widget/j0$a;->s:Landroid/view/MenuItem;
    if-eq v1, v2, :L4
  .line 13
    invoke-virtual { v0 }, Landroidx/appcompat/view/menu/f;->b()Landroidx/appcompat/view/menu/g;
    move-result-object v0
    if-eqz v1, :L3
  .line 14
    iget-object v3, p0, Landroidx/appcompat/widget/j0$a;->r:Landroidx/appcompat/widget/i0;
    invoke-interface { v3, v0, v1 }, Landroidx/appcompat/widget/i0;->i(Landroidx/appcompat/view/menu/g;Landroid/view/MenuItem;)V
  :L3
  .line 15
    iput-object v2, p0, Landroidx/appcompat/widget/j0$a;->s:Landroid/view/MenuItem;
    if-eqz v2, :L4
  .line 16
    iget-object v1, p0, Landroidx/appcompat/widget/j0$a;->r:Landroidx/appcompat/widget/i0;
    invoke-interface { v1, v0, v2 }, Landroidx/appcompat/widget/i0;->a(Landroidx/appcompat/view/menu/g;Landroid/view/MenuItem;)V
  :L4
  .line 17
    invoke-super { p0, p1 }, Landroidx/appcompat/widget/d0;->onHoverEvent(Landroid/view/MotionEvent;)Z
    move-result p1
    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
  .registers 7
  .line 1
    invoke-virtual { p0 }, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroidx/appcompat/view/menu/ListMenuItemView;
    const/4 v1, 1
    if-eqz v0, :L1
  .line 2
    iget v2, p0, Landroidx/appcompat/widget/j0$a;->p:I
    if-ne p1, v2, :L1
  .line 3
    invoke-virtual { v0 }, Landroid/widget/LinearLayout;->isEnabled()Z
    move-result p1
    if-eqz p1, :L0
    invoke-virtual { v0 }, Landroidx/appcompat/view/menu/ListMenuItemView;->getItemData()Landroidx/appcompat/view/menu/i;
    move-result-object p1
    invoke-virtual { p1 }, Landroidx/appcompat/view/menu/i;->hasSubMenu()Z
    move-result p1
    if-eqz p1, :L0
  .line 4
    invoke-virtual { p0 }, Landroid/widget/ListView;->getSelectedItemPosition()I
    move-result p1
  .line 5
    invoke-virtual { p0 }, Landroid/widget/ListView;->getSelectedItemId()J
    move-result-wide v2
  .line 6
    invoke-virtual { p0, v0, p1, v2, v3 }, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z
  :L0
    return v1
  :L1
    if-eqz v0, :L4
  .line 7
    iget v0, p0, Landroidx/appcompat/widget/j0$a;->q:I
    if-ne p1, v0, :L4
    const/4 p1, -1
  .line 8
    invoke-virtual { p0, p1 }, Landroid/widget/ListView;->setSelection(I)V
  .line 9
    invoke-virtual { p0 }, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;
    move-result-object p1
  .line 10
    instance-of p2, p1, Landroid/widget/HeaderViewListAdapter;
    if-eqz p2, :L2
  .line 11
    check-cast p1, Landroid/widget/HeaderViewListAdapter;
  .line 12
    invoke-virtual { p1 }, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;
    move-result-object p1
    check-cast p1, Landroidx/appcompat/view/menu/f;
    goto :L3
  :L2
  .line 13
    check-cast p1, Landroidx/appcompat/view/menu/f;
  :L3
  .line 14
    invoke-virtual { p1 }, Landroidx/appcompat/view/menu/f;->b()Landroidx/appcompat/view/menu/g;
    move-result-object p1
    const/4 p2, 0
    invoke-virtual { p1, p2 }, Landroidx/appcompat/view/menu/g;->e(Z)V
    return v1
  :L4
  .line 15
    invoke-super { p0, p1, p2 }, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z
    move-result p1
    return p1
.end method

.method public setHoverListener(Landroidx/appcompat/widget/i0;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/j0$a;->r:Landroidx/appcompat/widget/i0;
    return-void
.end method

.method public bridge synthetic setSelector(Landroid/graphics/drawable/Drawable;)V
  .registers 2
  .line 1
    invoke-super { p0, p1 }, Landroidx/appcompat/widget/d0;->setSelector(Landroid/graphics/drawable/Drawable;)V
    return-void
.end method
