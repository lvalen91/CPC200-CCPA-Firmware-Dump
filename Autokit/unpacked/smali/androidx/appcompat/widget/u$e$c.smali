.class Landroidx/appcompat/widget/u$e$c;
.super Ljava/lang/Object;
.implements Landroid/widget/PopupWindow$OnDismissListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/appcompat/widget/u$e;->f(II)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field final synthetic c:Landroidx/appcompat/widget/u$e;

.method constructor <init>(Landroidx/appcompat/widget/u$e;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
  .registers 3
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/u$e$c;->c:Landroidx/appcompat/widget/u$e;
    iput-object p2, p0, Landroidx/appcompat/widget/u$e$c;->b:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onDismiss()V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u$e$c;->c:Landroidx/appcompat/widget/u$e;
    iget-object v0, v0, Landroidx/appcompat/widget/u$e;->N:Landroidx/appcompat/widget/u;
    invoke-virtual { v0 }, Landroid/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
    move-result-object v0
    if-eqz v0, :L0
  .line 2
    iget-object v1, p0, Landroidx/appcompat/widget/u$e$c;->b:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-virtual { v0, v1 }, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
  :L0
    return-void
.end method
