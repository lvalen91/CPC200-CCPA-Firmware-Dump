.class Landroidx/appcompat/view/menu/q$a;
.super Ljava/lang/Object;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/view/menu/q;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Landroidx/appcompat/view/menu/q;

.method constructor <init>(Landroidx/appcompat/view/menu/q;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/q$a;->b:Landroidx/appcompat/view/menu/q;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onGlobalLayout()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/q$a;->b:Landroidx/appcompat/view/menu/q;
    invoke-virtual { v0 }, Landroidx/appcompat/view/menu/q;->b()Z
    move-result v0
    if-eqz v0, :L2
    iget-object v0, p0, Landroidx/appcompat/view/menu/q$a;->b:Landroidx/appcompat/view/menu/q;
    iget-object v0, v0, Landroidx/appcompat/view/menu/q;->j:Landroidx/appcompat/widget/j0;
    invoke-virtual { v0 }, Landroidx/appcompat/widget/h0;->B()Z
    move-result v0
    if-nez v0, :L2
  .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/q$a;->b:Landroidx/appcompat/view/menu/q;
    iget-object v0, v0, Landroidx/appcompat/view/menu/q;->o:Landroid/view/View;
    if-eqz v0, :L1
  .line 3
    invoke-virtual { v0 }, Landroid/view/View;->isShown()Z
    move-result v0
    if-nez v0, :L0
    goto :L1
  :L0
  .line 4
    iget-object v0, p0, Landroidx/appcompat/view/menu/q$a;->b:Landroidx/appcompat/view/menu/q;
    iget-object v0, v0, Landroidx/appcompat/view/menu/q;->j:Landroidx/appcompat/widget/j0;
    invoke-virtual { v0 }, Landroidx/appcompat/widget/h0;->g()V
    goto :L2
  :L1
  .line 5
    iget-object v0, p0, Landroidx/appcompat/view/menu/q$a;->b:Landroidx/appcompat/view/menu/q;
    invoke-virtual { v0 }, Landroidx/appcompat/view/menu/q;->dismiss()V
  :L2
    return-void
.end method
