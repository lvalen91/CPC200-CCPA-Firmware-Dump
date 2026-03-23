.class Landroidx/appcompat/widget/h0$a;
.super Ljava/lang/Object;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/appcompat/widget/h0;->q()I
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Landroidx/appcompat/widget/h0;

.method constructor <init>(Landroidx/appcompat/widget/h0;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/h0$a;->b:Landroidx/appcompat/widget/h0;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroid/widget/AdapterView<",
      "*>;",
      "Landroid/view/View;",
      "IJ)V"
    }
  .end annotation
  .registers 6
    const/4 p1, -1
    if-eq p3, p1, :L0
  .line 1
    iget-object p1, p0, Landroidx/appcompat/widget/h0$a;->b:Landroidx/appcompat/widget/h0;
    iget-object p1, p1, Landroidx/appcompat/widget/h0;->d:Landroidx/appcompat/widget/d0;
    if-eqz p1, :L0
    const/4 p2, 0
  .line 2
    invoke-virtual { p1, p2 }, Landroidx/appcompat/widget/d0;->setListSelectionHidden(Z)V
  :L0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroid/widget/AdapterView<",
      "*>;)V"
    }
  .end annotation
  .registers 2
    return-void
.end method
