.class Landroidx/appcompat/widget/c$b;
.super Landroidx/appcompat/view/menu/ActionMenuItemView$b;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/widget/c;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 2
  name = "b"
.end annotation

.field final synthetic a:Landroidx/appcompat/widget/c;

.method constructor <init>(Landroidx/appcompat/widget/c;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/c$b;->a:Landroidx/appcompat/widget/c;
    invoke-direct { p0 }, Landroidx/appcompat/view/menu/ActionMenuItemView$b;-><init>()V
    return-void
.end method

.method public a()Landroidx/appcompat/view/menu/p;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/c$b;->a:Landroidx/appcompat/widget/c;
    iget-object v0, v0, Landroidx/appcompat/widget/c;->y:Landroidx/appcompat/widget/c$a;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Landroidx/appcompat/view/menu/l;->c()Landroidx/appcompat/view/menu/k;
    move-result-object v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return-object v0
.end method
