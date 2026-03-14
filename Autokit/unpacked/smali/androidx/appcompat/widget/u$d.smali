.class Landroidx/appcompat/widget/u$d;
.super Ljava/lang/Object;
.implements Landroid/widget/ListAdapter;
.implements Landroid/widget/SpinnerAdapter;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/widget/u;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "d"
.end annotation

.field private b:Landroid/widget/SpinnerAdapter;

.field private c:Landroid/widget/ListAdapter;

.method public constructor <init>(Landroid/widget/SpinnerAdapter;Landroid/content/res/Resources$Theme;)V
  .registers 5
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Landroidx/appcompat/widget/u$d;->b:Landroid/widget/SpinnerAdapter;
  .line 3
    instance-of v0, p1, Landroid/widget/ListAdapter;
    if-eqz v0, :L0
  .line 4
    move-object v0, p1
    check-cast v0, Landroid/widget/ListAdapter;
    iput-object v0, p0, Landroidx/appcompat/widget/u$d;->c:Landroid/widget/ListAdapter;
  :L0
    if-eqz p2, :L2
  .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 23
    if-lt v0, v1, :L1
    instance-of v0, p1, Landroid/widget/ThemedSpinnerAdapter;
    if-eqz v0, :L1
  .line 6
    check-cast p1, Landroid/widget/ThemedSpinnerAdapter;
  .line 7
    invoke-interface { p1 }, Landroid/widget/ThemedSpinnerAdapter;->getDropDownViewTheme()Landroid/content/res/Resources$Theme;
    move-result-object v0
    if-eq v0, p2, :L2
  .line 8
    invoke-interface { p1, p2 }, Landroid/widget/ThemedSpinnerAdapter;->setDropDownViewTheme(Landroid/content/res/Resources$Theme;)V
    goto :L2
  :L1
  .line 9
    instance-of v0, p1, Landroidx/appcompat/widget/q0;
    if-eqz v0, :L2
  .line 10
    check-cast p1, Landroidx/appcompat/widget/q0;
  .line 11
    invoke-interface { p1 }, Landroidx/appcompat/widget/q0;->getDropDownViewTheme()Landroid/content/res/Resources$Theme;
    move-result-object v0
    if-nez v0, :L2
  .line 12
    invoke-interface { p1, p2 }, Landroidx/appcompat/widget/q0;->setDropDownViewTheme(Landroid/content/res/Resources$Theme;)V
  :L2
    return-void
.end method

.method public areAllItemsEnabled()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u$d;->c:Landroid/widget/ListAdapter;
    if-eqz v0, :L0
  .line 2
    invoke-interface { v0 }, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z
    move-result v0
    return v0
  :L0
    const/4 v0, 1
    return v0
.end method

.method public getCount()I
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u$d;->b:Landroid/widget/SpinnerAdapter;
    if-nez v0, :L0
    const/4 v0, 0
    goto :L1
  :L0
    invoke-interface { v0 }, Landroid/widget/SpinnerAdapter;->getCount()I
    move-result v0
  :L1
    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u$d;->b:Landroid/widget/SpinnerAdapter;
    if-nez v0, :L0
    const/4 p1, 0
    goto :L1
  :L0
  .line 2
    invoke-interface { v0, p1, p2, p3 }, Landroid/widget/SpinnerAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    move-result-object p1
  :L1
    return-object p1
.end method

.method public getItem(I)Ljava/lang/Object;
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u$d;->b:Landroid/widget/SpinnerAdapter;
    if-nez v0, :L0
    const/4 p1, 0
    goto :L1
  :L0
    invoke-interface { v0, p1 }, Landroid/widget/SpinnerAdapter;->getItem(I)Ljava/lang/Object;
    move-result-object p1
  :L1
    return-object p1
.end method

.method public getItemId(I)J
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u$d;->b:Landroid/widget/SpinnerAdapter;
    if-nez v0, :L0
    const-wide/16 v0, -1
    goto :L1
  :L0
    invoke-interface { v0, p1 }, Landroid/widget/SpinnerAdapter;->getItemId(I)J
    move-result-wide v0
  :L1
    return-wide v0
.end method

.method public getItemViewType(I)I
  .registers 2
    const/4 p1, 0
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
  .registers 4
  .line 1
    invoke-virtual { p0, p1, p2, p3 }, Landroidx/appcompat/widget/u$d;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    move-result-object p1
    return-object p1
.end method

.method public getViewTypeCount()I
  .registers 2
    const/4 v0, 1
    return v0
.end method

.method public hasStableIds()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u$d;->b:Landroid/widget/SpinnerAdapter;
    if-eqz v0, :L0
    invoke-interface { v0 }, Landroid/widget/SpinnerAdapter;->hasStableIds()Z
    move-result v0
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public isEmpty()Z
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/widget/u$d;->getCount()I
    move-result v0
    if-nez v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public isEnabled(I)Z
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u$d;->c:Landroid/widget/ListAdapter;
    if-eqz v0, :L0
  .line 2
    invoke-interface { v0, p1 }, Landroid/widget/ListAdapter;->isEnabled(I)Z
    move-result p1
    return p1
  :L0
    const/4 p1, 1
    return p1
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u$d;->b:Landroid/widget/SpinnerAdapter;
    if-eqz v0, :L0
  .line 2
    invoke-interface { v0, p1 }, Landroid/widget/SpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V
  :L0
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u$d;->b:Landroid/widget/SpinnerAdapter;
    if-eqz v0, :L0
  .line 2
    invoke-interface { v0, p1 }, Landroid/widget/SpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
  :L0
    return-void
.end method
