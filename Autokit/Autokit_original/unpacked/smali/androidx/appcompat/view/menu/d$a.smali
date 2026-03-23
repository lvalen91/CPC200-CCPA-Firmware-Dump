.class Landroidx/appcompat/view/menu/d$a;
.super Ljava/lang/Object;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/view/menu/d;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Landroidx/appcompat/view/menu/d;

.method constructor <init>(Landroidx/appcompat/view/menu/d;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/d$a;->b:Landroidx/appcompat/view/menu/d;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onGlobalLayout()V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/d$a;->b:Landroidx/appcompat/view/menu/d;
    invoke-virtual { v0 }, Landroidx/appcompat/view/menu/d;->b()Z
    move-result v0
    if-eqz v0, :L3
    iget-object v0, p0, Landroidx/appcompat/view/menu/d$a;->b:Landroidx/appcompat/view/menu/d;
    iget-object v0, v0, Landroidx/appcompat/view/menu/d;->j:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->size()I
    move-result v0
    if-lez v0, :L3
    iget-object v0, p0, Landroidx/appcompat/view/menu/d$a;->b:Landroidx/appcompat/view/menu/d;
    iget-object v0, v0, Landroidx/appcompat/view/menu/d;->j:Ljava/util/List;
    const/4 v1, 0
  .line 2
    invoke-interface { v0, v1 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroidx/appcompat/view/menu/d$d;
    iget-object v0, v0, Landroidx/appcompat/view/menu/d$d;->a:Landroidx/appcompat/widget/j0;
    invoke-virtual { v0 }, Landroidx/appcompat/widget/h0;->B()Z
    move-result v0
    if-nez v0, :L3
  .line 3
    iget-object v0, p0, Landroidx/appcompat/view/menu/d$a;->b:Landroidx/appcompat/view/menu/d;
    iget-object v0, v0, Landroidx/appcompat/view/menu/d;->q:Landroid/view/View;
    if-eqz v0, :L2
  .line 4
    invoke-virtual { v0 }, Landroid/view/View;->isShown()Z
    move-result v0
    if-nez v0, :L0
    goto :L2
  :L0
  .line 5
    iget-object v0, p0, Landroidx/appcompat/view/menu/d$a;->b:Landroidx/appcompat/view/menu/d;
    iget-object v0, v0, Landroidx/appcompat/view/menu/d;->j:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L3
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/appcompat/view/menu/d$d;
  .line 6
    iget-object v1, v1, Landroidx/appcompat/view/menu/d$d;->a:Landroidx/appcompat/widget/j0;
    invoke-virtual { v1 }, Landroidx/appcompat/widget/h0;->g()V
    goto :L1
  :L2
  .line 7
    iget-object v0, p0, Landroidx/appcompat/view/menu/d$a;->b:Landroidx/appcompat/view/menu/d;
    invoke-virtual { v0 }, Landroidx/appcompat/view/menu/d;->dismiss()V
  :L3
    return-void
.end method
