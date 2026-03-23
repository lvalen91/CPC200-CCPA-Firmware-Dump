.class Landroidx/appcompat/widget/u$e$a;
.super Ljava/lang/Object;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/appcompat/widget/u$e;-><init>(Landroidx/appcompat/widget/u;Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Landroidx/appcompat/widget/u$e;

.method constructor <init>(Landroidx/appcompat/widget/u$e;Landroidx/appcompat/widget/u;)V
  .registers 3
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/u$e$a;->b:Landroidx/appcompat/widget/u$e;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroid/widget/AdapterView<",
      "*>;",
      "Landroid/view/View;",
      "IJ)V"
    }
  .end annotation
  .registers 8
  .line 1
    iget-object p1, p0, Landroidx/appcompat/widget/u$e$a;->b:Landroidx/appcompat/widget/u$e;
    iget-object p1, p1, Landroidx/appcompat/widget/u$e;->N:Landroidx/appcompat/widget/u;
    invoke-virtual { p1, p3 }, Landroid/widget/Spinner;->setSelection(I)V
  .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/u$e$a;->b:Landroidx/appcompat/widget/u$e;
    iget-object p1, p1, Landroidx/appcompat/widget/u$e;->N:Landroidx/appcompat/widget/u;
    invoke-virtual { p1 }, Landroid/widget/Spinner;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    move-result-object p1
    if-eqz p1, :L0
  .line 3
    iget-object p1, p0, Landroidx/appcompat/widget/u$e$a;->b:Landroidx/appcompat/widget/u$e;
    iget-object p4, p1, Landroidx/appcompat/widget/u$e;->N:Landroidx/appcompat/widget/u;
    iget-object p1, p1, Landroidx/appcompat/widget/u$e;->K:Landroid/widget/ListAdapter;
  .line 4
    invoke-interface { p1, p3 }, Landroid/widget/ListAdapter;->getItemId(I)J
    move-result-wide v0
    invoke-virtual { p4, p2, p3, v0, v1 }, Landroid/widget/Spinner;->performItemClick(Landroid/view/View;IJ)Z
  :L0
  .line 5
    iget-object p1, p0, Landroidx/appcompat/widget/u$e$a;->b:Landroidx/appcompat/widget/u$e;
    invoke-virtual { p1 }, Landroidx/appcompat/widget/h0;->dismiss()V
    return-void
.end method
