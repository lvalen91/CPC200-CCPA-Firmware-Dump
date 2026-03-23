.class Landroidx/appcompat/app/g$o;
.super Lc/a/o/i;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/app/g;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = "o"
.end annotation

.field final synthetic c:Landroidx/appcompat/app/g;

.method constructor <init>(Landroidx/appcompat/app/g;Landroid/view/Window$Callback;)V
  .registers 3
  .line 1
    iput-object p1, p0, Landroidx/appcompat/app/g$o;->c:Landroidx/appcompat/app/g;
  .line 2
    invoke-direct { p0, p2 }, Lc/a/o/i;-><init>(Landroid/view/Window$Callback;)V
    return-void
.end method

.method final b(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
  .registers 4
  .line 1
    new-instance v0, Lc/a/o/f$a;
    iget-object v1, p0, Landroidx/appcompat/app/g$o;->c:Landroidx/appcompat/app/g;
    iget-object v1, v1, Landroidx/appcompat/app/g;->f:Landroid/content/Context;
    invoke-direct { v0, v1, p1 }, Lc/a/o/f$a;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V
  .line 2
    iget-object p1, p0, Landroidx/appcompat/app/g$o;->c:Landroidx/appcompat/app/g;
  .line 3
    invoke-virtual { p1, v0 }, Landroidx/appcompat/app/g;->L(Lc/a/o/b$a;)Lc/a/o/b;
    move-result-object p1
    if-eqz p1, :L0
  .line 4
    invoke-virtual { v0, p1 }, Lc/a/o/f$a;->e(Lc/a/o/b;)Landroid/view/ActionMode;
    move-result-object p1
    return-object p1
  :L0
    const/4 p1, 0
    return-object p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g$o;->c:Landroidx/appcompat/app/g;
    invoke-virtual { v0, p1 }, Landroidx/appcompat/app/g;->Z(Landroid/view/KeyEvent;)Z
    move-result v0
    if-nez v0, :L1
  .line 2
    invoke-super { p0, p1 }, Lc/a/o/i;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z
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

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
  .registers 4
  .line 1
    invoke-super { p0, p1 }, Lc/a/o/i;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    move-result v0
    if-nez v0, :L1
    iget-object v0, p0, Landroidx/appcompat/app/g$o;->c:Landroidx/appcompat/app/g;
  .line 2
    invoke-virtual { p1 }, Landroid/view/KeyEvent;->getKeyCode()I
    move-result v1
    invoke-virtual { v0, v1, p1 }, Landroidx/appcompat/app/g;->x0(ILandroid/view/KeyEvent;)Z
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

.method public onContentChanged()V
  .registers 1
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
  .registers 4
    if-nez p1, :L0
  .line 1
    instance-of v0, p2, Landroidx/appcompat/view/menu/g;
    if-nez v0, :L0
    const/4 p1, 0
    return p1
  :L0
  .line 2
    invoke-super { p0, p1, p2 }, Lc/a/o/i;->onCreatePanelMenu(ILandroid/view/Menu;)Z
    move-result p1
    return p1
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
  .registers 3
  .line 1
    invoke-super { p0, p1, p2 }, Lc/a/o/i;->onMenuOpened(ILandroid/view/Menu;)Z
  .line 2
    iget-object p2, p0, Landroidx/appcompat/app/g$o;->c:Landroidx/appcompat/app/g;
    invoke-virtual { p2, p1 }, Landroidx/appcompat/app/g;->A0(I)V
    const/4 p1, 1
    return p1
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
  .registers 3
  .line 1
    invoke-super { p0, p1, p2 }, Lc/a/o/i;->onPanelClosed(ILandroid/view/Menu;)V
  .line 2
    iget-object p2, p0, Landroidx/appcompat/app/g$o;->c:Landroidx/appcompat/app/g;
    invoke-virtual { p2, p1 }, Landroidx/appcompat/app/g;->B0(I)V
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
  .registers 7
  .line 1
    instance-of v0, p3, Landroidx/appcompat/view/menu/g;
    if-eqz v0, :L0
    move-object v0, p3
    check-cast v0, Landroidx/appcompat/view/menu/g;
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    const/4 v1, 0
    if-nez p1, :L2
    if-nez v0, :L2
    return v1
  :L2
    if-eqz v0, :L3
    const/4 v2, 1
  .line 2
    invoke-virtual { v0, v2 }, Landroidx/appcompat/view/menu/g;->a0(Z)V
  :L3
  .line 3
    invoke-super { p0, p1, p2, p3 }, Lc/a/o/i;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    move-result p1
    if-eqz v0, :L4
  .line 4
    invoke-virtual { v0, v1 }, Landroidx/appcompat/view/menu/g;->a0(Z)V
  :L4
    return p1
.end method

.method public onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/List<",
      "Landroid/view/KeyboardShortcutGroup;",
      ">;",
      "Landroid/view/Menu;",
      "I)V"
    }
  .end annotation
  .registers 7
  .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g$o;->c:Landroidx/appcompat/app/g;
    const/4 v1, 0
    const/4 v2, 1
    invoke-virtual { v0, v1, v2 }, Landroidx/appcompat/app/g;->j0(IZ)Landroidx/appcompat/app/g$u;
    move-result-object v0
    if-eqz v0, :L0
  .line 2
    iget-object v0, v0, Landroidx/appcompat/app/g$u;->j:Landroidx/appcompat/view/menu/g;
    if-eqz v0, :L0
  .line 3
    invoke-super { p0, p1, v0, p3 }, Lc/a/o/i;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    goto :L1
  :L0
  .line 4
    invoke-super { p0, p1, p2, p3 }, Lc/a/o/i;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
  :L1
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 23
    if-lt v0, v1, :L0
    const/4 p1, 0
    return-object p1
  :L0
  .line 2
    iget-object v0, p0, Landroidx/appcompat/app/g$o;->c:Landroidx/appcompat/app/g;
    invoke-virtual { v0 }, Landroidx/appcompat/app/g;->s0()Z
    move-result v0
    if-eqz v0, :L1
  .line 3
    invoke-virtual { p0, p1 }, Landroidx/appcompat/app/g$o;->b(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    move-result-object p1
    return-object p1
  :L1
  .line 4
    invoke-super { p0, p1 }, Lc/a/o/i;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    move-result-object p1
    return-object p1
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
  .registers 4
  .line 5
    iget-object v0, p0, Landroidx/appcompat/app/g$o;->c:Landroidx/appcompat/app/g;
    invoke-virtual { v0 }, Landroidx/appcompat/app/g;->s0()Z
    move-result v0
    if-eqz v0, :L1
    if-eqz p2, :L0
    goto :L1
  :L0
  .line 6
    invoke-virtual { p0, p1 }, Landroidx/appcompat/app/g$o;->b(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    move-result-object p1
    return-object p1
  :L1
  .line 7
    invoke-super { p0, p1, p2 }, Lc/a/o/i;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    move-result-object p1
    return-object p1
.end method
