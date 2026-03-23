.class Landroidx/appcompat/view/menu/d$c$a;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/appcompat/view/menu/d$c;->a(Landroidx/appcompat/view/menu/g;Landroid/view/MenuItem;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Landroidx/appcompat/view/menu/d$d;

.field final synthetic c:Landroid/view/MenuItem;

.field final synthetic d:Landroidx/appcompat/view/menu/g;

.field final synthetic e:Landroidx/appcompat/view/menu/d$c;

.method constructor <init>(Landroidx/appcompat/view/menu/d$c;Landroidx/appcompat/view/menu/d$d;Landroid/view/MenuItem;Landroidx/appcompat/view/menu/g;)V
  .registers 5
  .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/d$c$a;->e:Landroidx/appcompat/view/menu/d$c;
    iput-object p2, p0, Landroidx/appcompat/view/menu/d$c$a;->b:Landroidx/appcompat/view/menu/d$d;
    iput-object p3, p0, Landroidx/appcompat/view/menu/d$c$a;->c:Landroid/view/MenuItem;
    iput-object p4, p0, Landroidx/appcompat/view/menu/d$c$a;->d:Landroidx/appcompat/view/menu/g;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/d$c$a;->b:Landroidx/appcompat/view/menu/d$d;
    if-eqz v0, :L0
  .line 2
    iget-object v1, p0, Landroidx/appcompat/view/menu/d$c$a;->e:Landroidx/appcompat/view/menu/d$c;
    iget-object v1, v1, Landroidx/appcompat/view/menu/d$c;->b:Landroidx/appcompat/view/menu/d;
    const/4 v2, 1
    iput-boolean v2, v1, Landroidx/appcompat/view/menu/d;->B:Z
  .line 3
    iget-object v0, v0, Landroidx/appcompat/view/menu/d$d;->b:Landroidx/appcompat/view/menu/g;
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Landroidx/appcompat/view/menu/g;->e(Z)V
  .line 4
    iget-object v0, p0, Landroidx/appcompat/view/menu/d$c$a;->e:Landroidx/appcompat/view/menu/d$c;
    iget-object v0, v0, Landroidx/appcompat/view/menu/d$c;->b:Landroidx/appcompat/view/menu/d;
    iput-boolean v1, v0, Landroidx/appcompat/view/menu/d;->B:Z
  :L0
  .line 5
    iget-object v0, p0, Landroidx/appcompat/view/menu/d$c$a;->c:Landroid/view/MenuItem;
    invoke-interface { v0 }, Landroid/view/MenuItem;->isEnabled()Z
    move-result v0
    if-eqz v0, :L1
    iget-object v0, p0, Landroidx/appcompat/view/menu/d$c$a;->c:Landroid/view/MenuItem;
    invoke-interface { v0 }, Landroid/view/MenuItem;->hasSubMenu()Z
    move-result v0
    if-eqz v0, :L1
  .line 6
    iget-object v0, p0, Landroidx/appcompat/view/menu/d$c$a;->d:Landroidx/appcompat/view/menu/g;
    iget-object v1, p0, Landroidx/appcompat/view/menu/d$c$a;->c:Landroid/view/MenuItem;
    const/4 v2, 4
    invoke-virtual { v0, v1, v2 }, Landroidx/appcompat/view/menu/g;->L(Landroid/view/MenuItem;I)Z
  :L1
    return-void
.end method
