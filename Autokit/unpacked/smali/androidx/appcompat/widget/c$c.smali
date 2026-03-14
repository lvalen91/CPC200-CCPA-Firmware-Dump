.class Landroidx/appcompat/widget/c$c;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/widget/c;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 2
  name = "c"
.end annotation

.field private b:Landroidx/appcompat/widget/c$e;

.field final synthetic c:Landroidx/appcompat/widget/c;

.method public constructor <init>(Landroidx/appcompat/widget/c;Landroidx/appcompat/widget/c$e;)V
  .registers 3
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/c$c;->c:Landroidx/appcompat/widget/c;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p2, p0, Landroidx/appcompat/widget/c$c;->b:Landroidx/appcompat/widget/c$e;
    return-void
.end method

.method public run()V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/c$c;->c:Landroidx/appcompat/widget/c;
    invoke-static { v0 }, Landroidx/appcompat/widget/c;->v(Landroidx/appcompat/widget/c;)Landroidx/appcompat/view/menu/g;
    move-result-object v0
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/c$c;->c:Landroidx/appcompat/widget/c;
    invoke-static { v0 }, Landroidx/appcompat/widget/c;->w(Landroidx/appcompat/widget/c;)Landroidx/appcompat/view/menu/g;
    move-result-object v0
    invoke-virtual { v0 }, Landroidx/appcompat/view/menu/g;->d()V
  :L0
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/c$c;->c:Landroidx/appcompat/widget/c;
    invoke-static { v0 }, Landroidx/appcompat/widget/c;->x(Landroidx/appcompat/widget/c;)Landroidx/appcompat/view/menu/n;
    move-result-object v0
    check-cast v0, Landroid/view/View;
    if-eqz v0, :L1
  .line 4
    invoke-virtual { v0 }, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;
    move-result-object v0
    if-eqz v0, :L1
    iget-object v0, p0, Landroidx/appcompat/widget/c$c;->b:Landroidx/appcompat/widget/c$e;
    invoke-virtual { v0 }, Landroidx/appcompat/view/menu/l;->m()Z
    move-result v0
    if-eqz v0, :L1
  .line 5
    iget-object v0, p0, Landroidx/appcompat/widget/c$c;->c:Landroidx/appcompat/widget/c;
    iget-object v1, p0, Landroidx/appcompat/widget/c$c;->b:Landroidx/appcompat/widget/c$e;
    iput-object v1, v0, Landroidx/appcompat/widget/c;->x:Landroidx/appcompat/widget/c$e;
  :L1
  .line 6
    iget-object v0, p0, Landroidx/appcompat/widget/c$c;->c:Landroidx/appcompat/widget/c;
    const/4 v1, 0
    iput-object v1, v0, Landroidx/appcompat/widget/c;->z:Landroidx/appcompat/widget/c$c;
    return-void
.end method
