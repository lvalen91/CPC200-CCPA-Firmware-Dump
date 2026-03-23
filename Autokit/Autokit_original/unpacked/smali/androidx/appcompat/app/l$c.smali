.class final Landroidx/appcompat/app/l$c;
.super Ljava/lang/Object;
.implements Landroidx/appcompat/view/menu/m$a;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/app/l;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 18
  name = "c"
.end annotation

.field private b:Z

.field final synthetic c:Landroidx/appcompat/app/l;

.method constructor <init>(Landroidx/appcompat/app/l;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/app/l$c;->c:Landroidx/appcompat/app/l;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/g;Z)V
  .registers 4
  .line 1
    iget-boolean p2, p0, Landroidx/appcompat/app/l$c;->b:Z
    if-eqz p2, :L0
    return-void
  :L0
    const/4 p2, 1
  .line 2
    iput-boolean p2, p0, Landroidx/appcompat/app/l$c;->b:Z
  .line 3
    iget-object p2, p0, Landroidx/appcompat/app/l$c;->c:Landroidx/appcompat/app/l;
    iget-object p2, p2, Landroidx/appcompat/app/l;->a:Landroidx/appcompat/widget/b0;
    invoke-interface { p2 }, Landroidx/appcompat/widget/b0;->h()V
  .line 4
    iget-object p2, p0, Landroidx/appcompat/app/l$c;->c:Landroidx/appcompat/app/l;
    iget-object p2, p2, Landroidx/appcompat/app/l;->c:Landroid/view/Window$Callback;
    if-eqz p2, :L1
    const/16 v0, 108
  .line 5
    invoke-interface { p2, v0, p1 }, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V
  :L1
    const/4 p1, 0
  .line 6
    iput-boolean p1, p0, Landroidx/appcompat/app/l$c;->b:Z
    return-void
.end method

.method public b(Landroidx/appcompat/view/menu/g;)Z
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/app/l$c;->c:Landroidx/appcompat/app/l;
    iget-object v0, v0, Landroidx/appcompat/app/l;->c:Landroid/view/Window$Callback;
    if-eqz v0, :L0
    const/16 v1, 108
  .line 2
    invoke-interface { v0, v1, p1 }, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z
    const/4 p1, 1
    return p1
  :L0
    const/4 p1, 0
    return p1
.end method
