.class Landroidx/appcompat/widget/u$e$b;
.super Ljava/lang/Object;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/appcompat/widget/u$e;->f(II)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Landroidx/appcompat/widget/u$e;

.method constructor <init>(Landroidx/appcompat/widget/u$e;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/u$e$b;->b:Landroidx/appcompat/widget/u$e;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onGlobalLayout()V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u$e$b;->b:Landroidx/appcompat/widget/u$e;
    iget-object v1, v0, Landroidx/appcompat/widget/u$e;->N:Landroidx/appcompat/widget/u;
    invoke-virtual { v0, v1 }, Landroidx/appcompat/widget/u$e;->U(Landroid/view/View;)Z
    move-result v0
    if-nez v0, :L0
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/u$e$b;->b:Landroidx/appcompat/widget/u$e;
    invoke-virtual { v0 }, Landroidx/appcompat/widget/h0;->dismiss()V
    goto :L1
  :L0
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/u$e$b;->b:Landroidx/appcompat/widget/u$e;
    invoke-virtual { v0 }, Landroidx/appcompat/widget/u$e;->S()V
  .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/u$e$b;->b:Landroidx/appcompat/widget/u$e;
    invoke-static { v0 }, Landroidx/appcompat/widget/u$e;->R(Landroidx/appcompat/widget/u$e;)V
  :L1
    return-void
.end method
