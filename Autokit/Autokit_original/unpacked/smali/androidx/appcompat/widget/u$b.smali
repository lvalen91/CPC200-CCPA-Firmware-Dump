.class Landroidx/appcompat/widget/u$b;
.super Ljava/lang/Object;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/appcompat/widget/u;->onRestoreInstanceState(Landroid/os/Parcelable;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Landroidx/appcompat/widget/u;

.method constructor <init>(Landroidx/appcompat/widget/u;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/u$b;->b:Landroidx/appcompat/widget/u;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onGlobalLayout()V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u$b;->b:Landroidx/appcompat/widget/u;
    invoke-virtual { v0 }, Landroidx/appcompat/widget/u;->getInternalPopup()Landroidx/appcompat/widget/u$g;
    move-result-object v0
    invoke-interface { v0 }, Landroidx/appcompat/widget/u$g;->b()Z
    move-result v0
    if-nez v0, :L0
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/u$b;->b:Landroidx/appcompat/widget/u;
    invoke-virtual { v0 }, Landroidx/appcompat/widget/u;->b()V
  :L0
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/u$b;->b:Landroidx/appcompat/widget/u;
    invoke-virtual { v0 }, Landroid/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
    move-result-object v0
    if-eqz v0, :L2
  .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 16
    if-lt v1, v2, :L1
  .line 5
    invoke-virtual { v0, p0 }, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    goto :L2
  :L1
  .line 6
    invoke-virtual { v0, p0 }, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
  :L2
    return-void
.end method
