.class Lcom/google/android/material/textfield/g$a;
.super Ljava/lang/Object;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/google/android/material/textfield/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcom/google/android/material/textfield/g;

.method constructor <init>(Lcom/google/android/material/textfield/g;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/g$a;->b:Lcom/google/android/material/textfield/g;
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
  .registers 12
    if-gez p3, :L0
  .line 1
    iget-object p1, p0, Lcom/google/android/material/textfield/g$a;->b:Lcom/google/android/material/textfield/g;
  .line 2
    invoke-static { p1 }, Lcom/google/android/material/textfield/g;->a(Lcom/google/android/material/textfield/g;)Landroidx/appcompat/widget/h0;
    move-result-object p1
    invoke-virtual { p1 }, Landroidx/appcompat/widget/h0;->v()Ljava/lang/Object;
    move-result-object p1
    goto :L1
  :L0
    iget-object p1, p0, Lcom/google/android/material/textfield/g$a;->b:Lcom/google/android/material/textfield/g;
    invoke-virtual { p1 }, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;
    move-result-object p1
    invoke-interface { p1, p3 }, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;
    move-result-object p1
  :L1
  .line 3
    iget-object v0, p0, Lcom/google/android/material/textfield/g$a;->b:Lcom/google/android/material/textfield/g;
    invoke-static { v0, p1 }, Lcom/google/android/material/textfield/g;->b(Lcom/google/android/material/textfield/g;Ljava/lang/Object;)V
  .line 4
    iget-object p1, p0, Lcom/google/android/material/textfield/g$a;->b:Lcom/google/android/material/textfield/g;
    invoke-virtual { p1 }, Landroid/widget/AutoCompleteTextView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    move-result-object v0
    if-eqz v0, :L4
    if-eqz p2, :L2
    if-gez p3, :L3
  :L2
  .line 5
    iget-object p1, p0, Lcom/google/android/material/textfield/g$a;->b:Lcom/google/android/material/textfield/g;
    invoke-static { p1 }, Lcom/google/android/material/textfield/g;->a(Lcom/google/android/material/textfield/g;)Landroidx/appcompat/widget/h0;
    move-result-object p1
    invoke-virtual { p1 }, Landroidx/appcompat/widget/h0;->y()Landroid/view/View;
    move-result-object p2
  .line 6
    iget-object p1, p0, Lcom/google/android/material/textfield/g$a;->b:Lcom/google/android/material/textfield/g;
    invoke-static { p1 }, Lcom/google/android/material/textfield/g;->a(Lcom/google/android/material/textfield/g;)Landroidx/appcompat/widget/h0;
    move-result-object p1
    invoke-virtual { p1 }, Landroidx/appcompat/widget/h0;->x()I
    move-result p3
  .line 7
    iget-object p1, p0, Lcom/google/android/material/textfield/g$a;->b:Lcom/google/android/material/textfield/g;
    invoke-static { p1 }, Lcom/google/android/material/textfield/g;->a(Lcom/google/android/material/textfield/g;)Landroidx/appcompat/widget/h0;
    move-result-object p1
    invoke-virtual { p1 }, Landroidx/appcompat/widget/h0;->w()J
    move-result-wide p4
  :L3
    move-object v2, p2
    move v3, p3
    move-wide v4, p4
  .line 8
    iget-object p1, p0, Lcom/google/android/material/textfield/g$a;->b:Lcom/google/android/material/textfield/g;
  .line 9
    invoke-static { p1 }, Lcom/google/android/material/textfield/g;->a(Lcom/google/android/material/textfield/g;)Landroidx/appcompat/widget/h0;
    move-result-object p1
    invoke-virtual { p1 }, Landroidx/appcompat/widget/h0;->l()Landroid/widget/ListView;
    move-result-object v1
  .line 10
    invoke-interface/range { v0 .. v5 }, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
  :L4
  .line 11
    iget-object p1, p0, Lcom/google/android/material/textfield/g$a;->b:Lcom/google/android/material/textfield/g;
    invoke-static { p1 }, Lcom/google/android/material/textfield/g;->a(Lcom/google/android/material/textfield/g;)Landroidx/appcompat/widget/h0;
    move-result-object p1
    invoke-virtual { p1 }, Landroidx/appcompat/widget/h0;->dismiss()V
    return-void
.end method
