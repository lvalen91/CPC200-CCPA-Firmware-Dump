.class Landroidx/appcompat/app/l$b;
.super Ljava/lang/Object;
.implements Landroidx/appcompat/widget/Toolbar$f;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/app/l;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Landroidx/appcompat/app/l;

.method constructor <init>(Landroidx/appcompat/app/l;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/app/l$b;->a:Landroidx/appcompat/app/l;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/app/l$b;->a:Landroidx/appcompat/app/l;
    iget-object v0, v0, Landroidx/appcompat/app/l;->c:Landroid/view/Window$Callback;
    const/4 v1, 0
    invoke-interface { v0, v1, p1 }, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z
    move-result p1
    return p1
.end method
