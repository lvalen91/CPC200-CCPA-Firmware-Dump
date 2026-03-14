.class public Landroidx/appcompat/app/c;
.super Landroidx/appcompat/app/h;
.implements Landroid/content/DialogInterface;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/appcompat/app/c$a;
  }
.end annotation

.field final d:Landroidx/appcompat/app/AlertController;

.method protected constructor <init>(Landroid/content/Context;I)V
  .registers 4
  .line 1
    invoke-static { p1, p2 }, Landroidx/appcompat/app/c;->f(Landroid/content/Context;I)I
    move-result p2
    invoke-direct { p0, p1, p2 }, Landroidx/appcompat/app/h;-><init>(Landroid/content/Context;I)V
  .line 2
    new-instance p1, Landroidx/appcompat/app/AlertController;
    invoke-virtual { p0 }, Landroid/app/Dialog;->getContext()Landroid/content/Context;
    move-result-object p2
    invoke-virtual { p0 }, Landroid/app/Dialog;->getWindow()Landroid/view/Window;
    move-result-object v0
    invoke-direct { p1, p2, p0, v0 }, Landroidx/appcompat/app/AlertController;-><init>(Landroid/content/Context;Landroidx/appcompat/app/h;Landroid/view/Window;)V
    iput-object p1, p0, Landroidx/appcompat/app/c;->d:Landroidx/appcompat/app/AlertController;
    return-void
.end method

.method static f(Landroid/content/Context;I)I
  .registers 4
    ushr-int/lit8 v0, p1, 24
    and-int/lit16 v0, v0, 255
    const/4 v1, 1
    if-lt v0, v1, :L0
    return p1
  :L0
  .line 1
    new-instance p1, Landroid/util/TypedValue;
    invoke-direct { p1 }, Landroid/util/TypedValue;-><init>()V
  .line 2
    invoke-virtual { p0 }, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;
    move-result-object p0
    sget v0, Lc/a/a;->alertDialogTheme:I
    invoke-virtual { p0, v0, p1, v1 }, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z
  .line 3
    iget p0, p1, Landroid/util/TypedValue;->resourceId:I
    return p0
.end method

.method public e()Landroid/widget/ListView;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/app/c;->d:Landroidx/appcompat/app/AlertController;
    invoke-virtual { v0 }, Landroidx/appcompat/app/AlertController;->d()Landroid/widget/ListView;
    move-result-object v0
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
  .registers 2
  .line 1
    invoke-super { p0, p1 }, Landroidx/appcompat/app/h;->onCreate(Landroid/os/Bundle;)V
  .line 2
    iget-object p1, p0, Landroidx/appcompat/app/c;->d:Landroidx/appcompat/app/AlertController;
    invoke-virtual { p1 }, Landroidx/appcompat/app/AlertController;->e()V
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/app/c;->d:Landroidx/appcompat/app/AlertController;
    invoke-virtual { v0, p1, p2 }, Landroidx/appcompat/app/AlertController;->g(ILandroid/view/KeyEvent;)Z
    move-result v0
    if-eqz v0, :L0
    const/4 p1, 1
    return p1
  :L0
  .line 2
    invoke-super { p0, p1, p2 }, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z
    move-result p1
    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/app/c;->d:Landroidx/appcompat/app/AlertController;
    invoke-virtual { v0, p1, p2 }, Landroidx/appcompat/app/AlertController;->h(ILandroid/view/KeyEvent;)Z
    move-result v0
    if-eqz v0, :L0
    const/4 p1, 1
    return p1
  :L0
  .line 2
    invoke-super { p0, p1, p2 }, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z
    move-result p1
    return p1
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
  .registers 3
  .line 1
    invoke-super { p0, p1 }, Landroidx/appcompat/app/h;->setTitle(Ljava/lang/CharSequence;)V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/app/c;->d:Landroidx/appcompat/app/AlertController;
    invoke-virtual { v0, p1 }, Landroidx/appcompat/app/AlertController;->q(Ljava/lang/CharSequence;)V
    return-void
.end method
