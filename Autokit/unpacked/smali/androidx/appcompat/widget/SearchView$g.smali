.class Landroidx/appcompat/widget/SearchView$g;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnKeyListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/widget/SearchView;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Landroidx/appcompat/widget/SearchView;

.method constructor <init>(Landroidx/appcompat/widget/SearchView;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView$g;->b:Landroidx/appcompat/widget/SearchView;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
  .registers 7
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$g;->b:Landroidx/appcompat/widget/SearchView;
    iget-object v1, v0, Landroidx/appcompat/widget/SearchView;->g0:Landroid/app/SearchableInfo;
    const/4 v2, 0
    if-nez v1, :L0
    return v2
  :L0
  .line 2
    iget-object v0, v0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    invoke-virtual { v0 }, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z
    move-result v0
    if-eqz v0, :L1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$g;->b:Landroidx/appcompat/widget/SearchView;
    iget-object v0, v0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
  .line 3
    invoke-virtual { v0 }, Landroid/widget/AutoCompleteTextView;->getListSelection()I
    move-result v0
    const/4 v1, -1
    if-eq v0, v1, :L1
  .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$g;->b:Landroidx/appcompat/widget/SearchView;
    invoke-virtual { v0, p1, p2, p3 }, Landroidx/appcompat/widget/SearchView;->X(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    move-result p1
    return p1
  :L1
  .line 5
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$g;->b:Landroidx/appcompat/widget/SearchView;
    iget-object v0, v0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    invoke-virtual { v0 }, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->b()Z
    move-result v0
    if-nez v0, :L2
    invoke-virtual { p3 }, Landroid/view/KeyEvent;->hasNoModifiers()Z
    move-result v0
    if-eqz v0, :L2
  .line 6
    invoke-virtual { p3 }, Landroid/view/KeyEvent;->getAction()I
    move-result p3
    const/4 v0, 1
    if-ne p3, v0, :L2
    const/16 p3, 66
    if-ne p2, p3, :L2
  .line 7
    invoke-virtual { p1 }, Landroid/view/View;->cancelLongPress()V
  .line 8
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView$g;->b:Landroidx/appcompat/widget/SearchView;
    const/4 p2, 0
    iget-object p3, p1, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    invoke-virtual { p3 }, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;
    move-result-object p3
  .line 9
    invoke-virtual { p3 }, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object p3
  .line 10
    invoke-virtual { p1, v2, p2, p3 }, Landroidx/appcompat/widget/SearchView;->P(ILjava/lang/String;Ljava/lang/String;)V
    return v0
  :L2
    return v2
.end method
