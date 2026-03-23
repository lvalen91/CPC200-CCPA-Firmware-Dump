.class Landroidx/appcompat/widget/SearchView$j;
.super Ljava/lang/Object;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/widget/SearchView;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Landroidx/appcompat/widget/SearchView;

.method constructor <init>(Landroidx/appcompat/widget/SearchView;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView$j;->b:Landroidx/appcompat/widget/SearchView;
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
  .line 1
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView$j;->b:Landroidx/appcompat/widget/SearchView;
    invoke-virtual { p1, p3 }, Landroidx/appcompat/widget/SearchView;->T(I)Z
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
