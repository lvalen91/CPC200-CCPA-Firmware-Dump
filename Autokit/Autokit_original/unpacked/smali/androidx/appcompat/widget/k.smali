.class Landroidx/appcompat/widget/k;
.super Ljava/lang/Object;
.source "SourceFile"

.method static a(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/view/View;)Landroid/view/inputmethod/InputConnection;
  .registers 4
    if-eqz p0, :L2
  .line 1
    iget-object v0, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;
    if-nez v0, :L2
  .line 2
    invoke-virtual { p2 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object p2
  :L0
  .line 3
    instance-of v0, p2, Landroid/view/View;
    if-eqz v0, :L2
  .line 4
    instance-of v0, p2, Landroidx/appcompat/widget/b1;
    if-eqz v0, :L1
  .line 5
    check-cast p2, Landroidx/appcompat/widget/b1;
    invoke-interface { p2 }, Landroidx/appcompat/widget/b1;->a()Ljava/lang/CharSequence;
    move-result-object p2
    iput-object p2, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;
    goto :L2
  :L1
  .line 6
    invoke-interface { p2 }, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;
    move-result-object p2
    goto :L0
  :L2
    return-object p0
.end method
