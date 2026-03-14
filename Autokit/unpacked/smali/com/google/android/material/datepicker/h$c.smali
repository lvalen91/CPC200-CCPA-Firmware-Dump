.class Lcom/google/android/material/datepicker/h$c;
.super Lcom/google/android/material/datepicker/q;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/google/android/material/datepicker/h;->L0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic I:I

.field final synthetic J:Lcom/google/android/material/datepicker/h;

.method constructor <init>(Lcom/google/android/material/datepicker/h;Landroid/content/Context;IZI)V
  .registers 6
  .line 1
    iput-object p1, p0, Lcom/google/android/material/datepicker/h$c;->J:Lcom/google/android/material/datepicker/h;
    iput p5, p0, Lcom/google/android/material/datepicker/h$c;->I:I
    invoke-direct { p0, p2, p3, p4 }, Lcom/google/android/material/datepicker/q;-><init>(Landroid/content/Context;IZ)V
    return-void
.end method

.method protected M1(Landroidx/recyclerview/widget/RecyclerView$z;[I)V
  .registers 5
  .line 1
    iget p1, p0, Lcom/google/android/material/datepicker/h$c;->I:I
    const/4 v0, 1
    const/4 v1, 0
    if-nez p1, :L0
  .line 2
    iget-object p1, p0, Lcom/google/android/material/datepicker/h$c;->J:Lcom/google/android/material/datepicker/h;
    invoke-static { p1 }, Lcom/google/android/material/datepicker/h;->i2(Lcom/google/android/material/datepicker/h;)Landroidx/recyclerview/widget/RecyclerView;
    move-result-object p1
    invoke-virtual { p1 }, Landroid/view/ViewGroup;->getWidth()I
    move-result p1
    aput p1, p2, v1
  .line 3
    iget-object p1, p0, Lcom/google/android/material/datepicker/h$c;->J:Lcom/google/android/material/datepicker/h;
    invoke-static { p1 }, Lcom/google/android/material/datepicker/h;->i2(Lcom/google/android/material/datepicker/h;)Landroidx/recyclerview/widget/RecyclerView;
    move-result-object p1
    invoke-virtual { p1 }, Landroid/view/ViewGroup;->getWidth()I
    move-result p1
    aput p1, p2, v0
    goto :L1
  :L0
  .line 4
    iget-object p1, p0, Lcom/google/android/material/datepicker/h$c;->J:Lcom/google/android/material/datepicker/h;
    invoke-static { p1 }, Lcom/google/android/material/datepicker/h;->i2(Lcom/google/android/material/datepicker/h;)Landroidx/recyclerview/widget/RecyclerView;
    move-result-object p1
    invoke-virtual { p1 }, Landroid/view/ViewGroup;->getHeight()I
    move-result p1
    aput p1, p2, v1
  .line 5
    iget-object p1, p0, Lcom/google/android/material/datepicker/h$c;->J:Lcom/google/android/material/datepicker/h;
    invoke-static { p1 }, Lcom/google/android/material/datepicker/h;->i2(Lcom/google/android/material/datepicker/h;)Landroidx/recyclerview/widget/RecyclerView;
    move-result-object p1
    invoke-virtual { p1 }, Landroid/view/ViewGroup;->getHeight()I
    move-result p1
    aput p1, p2, v0
  :L1
    return-void
.end method
