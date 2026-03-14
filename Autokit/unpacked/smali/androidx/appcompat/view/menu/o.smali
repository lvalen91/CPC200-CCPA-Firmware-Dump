.class public Landroidx/appcompat/view/menu/o;
.super Landroidx/appcompat/view/menu/c;
.implements Landroid/view/Menu;
.source "SourceFile"

.field private final d:Lc/g/e/a/a;

.method public constructor <init>(Landroid/content/Context;Lc/g/e/a/a;)V
  .registers 3
  .line 1
    invoke-direct { p0, p1 }, Landroidx/appcompat/view/menu/c;-><init>(Landroid/content/Context;)V
    if-eqz p2, :L0
  .line 2
    iput-object p2, p0, Landroidx/appcompat/view/menu/o;->d:Lc/g/e/a/a;
    return-void
  :L0
  .line 3
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string p2, "Wrapped Object can not be null."
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public add(I)Landroid/view/MenuItem;
  .registers 3
  .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->d:Lc/g/e/a/a;
    invoke-interface { v0, p1 }, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;
    move-result-object p1
    invoke-virtual { p0, p1 }, Landroidx/appcompat/view/menu/c;->c(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    move-result-object p1
    return-object p1
.end method

.method public add(IIII)Landroid/view/MenuItem;
  .registers 6
  .line 4
    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->d:Lc/g/e/a/a;
    invoke-interface { v0, p1, p2, p3, p4 }, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;
    move-result-object p1
    invoke-virtual { p0, p1 }, Landroidx/appcompat/view/menu/c;->c(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    move-result-object p1
    return-object p1
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
  .registers 6
  .line 3
    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->d:Lc/g/e/a/a;
    invoke-interface { v0, p1, p2, p3, p4 }, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    move-result-object p1
    invoke-virtual { p0, p1 }, Landroidx/appcompat/view/menu/c;->c(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    move-result-object p1
    return-object p1
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->d:Lc/g/e/a/a;
    invoke-interface { v0, p1 }, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    move-result-object p1
    invoke-virtual { p0, p1 }, Landroidx/appcompat/view/menu/c;->c(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    move-result-object p1
    return-object p1
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
  .registers 21
    move-object v0, p0
    move-object/from16 v1, p8
    if-eqz v1, :L0
  .line 1
    array-length v2, v1
    new-array v2, v2, [Landroid/view/MenuItem;
    goto :L1
  :L0
    const/4 v2, 0
  :L1
  .line 2
    iget-object v3, v0, Landroidx/appcompat/view/menu/o;->d:Lc/g/e/a/a;
    move v4, p1
    move v5, p2
    move v6, p3
    move-object/from16 v7, p4
    move-object/from16 v8, p5
    move-object/from16 v9, p6
    move/from16 v10, p7
    move-object v11, v2
  .line 3
    invoke-interface/range { v3 .. v11 }, Landroid/view/Menu;->addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    move-result v3
    if-eqz v2, :L3
    const/4 v4, 0
  .line 4
    array-length v5, v2
  :L2
    if-ge v4, v5, :L3
  .line 5
    aget-object v6, v2, v4
    invoke-virtual { p0, v6 }, Landroidx/appcompat/view/menu/c;->c(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    move-result-object v6
    aput-object v6, v1, v4
    add-int/lit8 v4, v4, 1
    goto :L2
  :L3
    return v3
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
  .registers 3
  .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->d:Lc/g/e/a/a;
    invoke-interface { v0, p1 }, Landroid/view/Menu;->addSubMenu(I)Landroid/view/SubMenu;
    move-result-object p1
    invoke-virtual { p0, p1 }, Landroidx/appcompat/view/menu/c;->d(Landroid/view/SubMenu;)Landroid/view/SubMenu;
    move-result-object p1
    return-object p1
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
  .registers 6
  .line 4
    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->d:Lc/g/e/a/a;
  .line 5
    invoke-interface { v0, p1, p2, p3, p4 }, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;
    move-result-object p1
  .line 6
    invoke-virtual { p0, p1 }, Landroidx/appcompat/view/menu/c;->d(Landroid/view/SubMenu;)Landroid/view/SubMenu;
    move-result-object p1
    return-object p1
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
  .registers 6
  .line 3
    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->d:Lc/g/e/a/a;
    invoke-interface { v0, p1, p2, p3, p4 }, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    move-result-object p1
    invoke-virtual { p0, p1 }, Landroidx/appcompat/view/menu/c;->d(Landroid/view/SubMenu;)Landroid/view/SubMenu;
    move-result-object p1
    return-object p1
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->d:Lc/g/e/a/a;
    invoke-interface { v0, p1 }, Landroid/view/Menu;->addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    move-result-object p1
    invoke-virtual { p0, p1 }, Landroidx/appcompat/view/menu/c;->d(Landroid/view/SubMenu;)Landroid/view/SubMenu;
    move-result-object p1
    return-object p1
.end method

.method public clear()V
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/view/menu/c;->e()V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->d:Lc/g/e/a/a;
    invoke-interface { v0 }, Landroid/view/Menu;->clear()V
    return-void
.end method

.method public close()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->d:Lc/g/e/a/a;
    invoke-interface { v0 }, Landroid/view/Menu;->close()V
    return-void
.end method

.method public findItem(I)Landroid/view/MenuItem;
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->d:Lc/g/e/a/a;
    invoke-interface { v0, p1 }, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;
    move-result-object p1
    invoke-virtual { p0, p1 }, Landroidx/appcompat/view/menu/c;->c(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    move-result-object p1
    return-object p1
.end method

.method public getItem(I)Landroid/view/MenuItem;
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->d:Lc/g/e/a/a;
    invoke-interface { v0, p1 }, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;
    move-result-object p1
    invoke-virtual { p0, p1 }, Landroidx/appcompat/view/menu/c;->c(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    move-result-object p1
    return-object p1
.end method

.method public hasVisibleItems()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->d:Lc/g/e/a/a;
    invoke-interface { v0 }, Landroid/view/Menu;->hasVisibleItems()Z
    move-result v0
    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->d:Lc/g/e/a/a;
    invoke-interface { v0, p1, p2 }, Landroid/view/Menu;->isShortcutKey(ILandroid/view/KeyEvent;)Z
    move-result p1
    return p1
.end method

.method public performIdentifierAction(II)Z
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->d:Lc/g/e/a/a;
    invoke-interface { v0, p1, p2 }, Landroid/view/Menu;->performIdentifierAction(II)Z
    move-result p1
    return p1
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->d:Lc/g/e/a/a;
    invoke-interface { v0, p1, p2, p3 }, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z
    move-result p1
    return p1
.end method

.method public removeGroup(I)V
  .registers 3
  .line 1
    invoke-virtual { p0, p1 }, Landroidx/appcompat/view/menu/c;->f(I)V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->d:Lc/g/e/a/a;
    invoke-interface { v0, p1 }, Landroid/view/Menu;->removeGroup(I)V
    return-void
.end method

.method public removeItem(I)V
  .registers 3
  .line 1
    invoke-virtual { p0, p1 }, Landroidx/appcompat/view/menu/c;->g(I)V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->d:Lc/g/e/a/a;
    invoke-interface { v0, p1 }, Landroid/view/Menu;->removeItem(I)V
    return-void
.end method

.method public setGroupCheckable(IZZ)V
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->d:Lc/g/e/a/a;
    invoke-interface { v0, p1, p2, p3 }, Landroid/view/Menu;->setGroupCheckable(IZZ)V
    return-void
.end method

.method public setGroupEnabled(IZ)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->d:Lc/g/e/a/a;
    invoke-interface { v0, p1, p2 }, Landroid/view/Menu;->setGroupEnabled(IZ)V
    return-void
.end method

.method public setGroupVisible(IZ)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->d:Lc/g/e/a/a;
    invoke-interface { v0, p1, p2 }, Landroid/view/Menu;->setGroupVisible(IZ)V
    return-void
.end method

.method public setQwertyMode(Z)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->d:Lc/g/e/a/a;
    invoke-interface { v0, p1 }, Landroid/view/Menu;->setQwertyMode(Z)V
    return-void
.end method

.method public size()I
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->d:Lc/g/e/a/a;
    invoke-interface { v0 }, Landroid/view/Menu;->size()I
    move-result v0
    return v0
.end method
