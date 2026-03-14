.class Lcom/google/android/material/datepicker/h$i;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnClickListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/google/android/material/datepicker/h;->p2(Landroid/view/View;Lcom/google/android/material/datepicker/n;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcom/google/android/material/datepicker/n;

.field final synthetic c:Lcom/google/android/material/datepicker/h;

.method constructor <init>(Lcom/google/android/material/datepicker/h;Lcom/google/android/material/datepicker/n;)V
  .registers 3
  .line 1
    iput-object p1, p0, Lcom/google/android/material/datepicker/h$i;->c:Lcom/google/android/material/datepicker/h;
    iput-object p2, p0, Lcom/google/android/material/datepicker/h$i;->b:Lcom/google/android/material/datepicker/n;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onClick(Landroid/view/View;)V
  .registers 4
  .line 1
    iget-object p1, p0, Lcom/google/android/material/datepicker/h$i;->c:Lcom/google/android/material/datepicker/h;
    invoke-virtual { p1 }, Lcom/google/android/material/datepicker/h;->w2()Landroidx/recyclerview/widget/LinearLayoutManager;
    move-result-object p1
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/LinearLayoutManager;->Z1()I
    move-result p1
    add-int/lit8 p1, p1, 1
  .line 2
    iget-object v0, p0, Lcom/google/android/material/datepicker/h$i;->c:Lcom/google/android/material/datepicker/h;
    invoke-static { v0 }, Lcom/google/android/material/datepicker/h;->i2(Lcom/google/android/material/datepicker/h;)Landroidx/recyclerview/widget/RecyclerView;
    move-result-object v0
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$f;
    move-result-object v0
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView$f;->c()I
    move-result v0
    if-ge p1, v0, :L0
  .line 3
    iget-object v0, p0, Lcom/google/android/material/datepicker/h$i;->c:Lcom/google/android/material/datepicker/h;
    iget-object v1, p0, Lcom/google/android/material/datepicker/h$i;->b:Lcom/google/android/material/datepicker/n;
    invoke-virtual { v1, p1 }, Lcom/google/android/material/datepicker/n;->v(I)Lcom/google/android/material/datepicker/l;
    move-result-object p1
    invoke-virtual { v0, p1 }, Lcom/google/android/material/datepicker/h;->z2(Lcom/google/android/material/datepicker/l;)V
  :L0
    return-void
.end method
