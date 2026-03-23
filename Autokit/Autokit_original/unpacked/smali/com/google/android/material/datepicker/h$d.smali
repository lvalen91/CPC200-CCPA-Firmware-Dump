.class Lcom/google/android/material/datepicker/h$d;
.super Ljava/lang/Object;
.implements Lcom/google/android/material/datepicker/h$l;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/google/android/material/datepicker/h;->L0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Lcom/google/android/material/datepicker/h;

.method constructor <init>(Lcom/google/android/material/datepicker/h;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/google/android/material/datepicker/h$d;->a:Lcom/google/android/material/datepicker/h;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(J)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/h$d;->a:Lcom/google/android/material/datepicker/h;
    invoke-static { v0 }, Lcom/google/android/material/datepicker/h;->j2(Lcom/google/android/material/datepicker/h;)Lcom/google/android/material/datepicker/a;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/google/android/material/datepicker/a;->o()Lcom/google/android/material/datepicker/a$c;
    move-result-object v0
    invoke-interface { v0, p1, p2 }, Lcom/google/android/material/datepicker/a$c;->e(J)Z
    move-result v0
    if-eqz v0, :L2
  .line 2
    iget-object v0, p0, Lcom/google/android/material/datepicker/h$d;->a:Lcom/google/android/material/datepicker/h;
    invoke-static { v0 }, Lcom/google/android/material/datepicker/h;->k2(Lcom/google/android/material/datepicker/h;)Lcom/google/android/material/datepicker/d;
    move-result-object v0
    invoke-interface { v0, p1, p2 }, Lcom/google/android/material/datepicker/d;->g(J)V
  .line 3
    iget-object p1, p0, Lcom/google/android/material/datepicker/h$d;->a:Lcom/google/android/material/datepicker/h;
    iget-object p1, p1, Lcom/google/android/material/datepicker/p;->a0:Ljava/util/LinkedHashSet;
    invoke-virtual { p1 }, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;
    move-result-object p1
  :L0
    invoke-interface { p1 }, Ljava/util/Iterator;->hasNext()Z
    move-result p2
    if-eqz p2, :L1
    invoke-interface { p1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object p2
    check-cast p2, Lcom/google/android/material/datepicker/o;
  .line 4
    iget-object v0, p0, Lcom/google/android/material/datepicker/h$d;->a:Lcom/google/android/material/datepicker/h;
    invoke-static { v0 }, Lcom/google/android/material/datepicker/h;->k2(Lcom/google/android/material/datepicker/h;)Lcom/google/android/material/datepicker/d;
    move-result-object v0
    invoke-interface { v0 }, Lcom/google/android/material/datepicker/d;->a()Ljava/lang/Object;
    move-result-object v0
    invoke-virtual { p2, v0 }, Lcom/google/android/material/datepicker/o;->a(Ljava/lang/Object;)V
    goto :L0
  :L1
  .line 5
    iget-object p1, p0, Lcom/google/android/material/datepicker/h$d;->a:Lcom/google/android/material/datepicker/h;
    invoke-static { p1 }, Lcom/google/android/material/datepicker/h;->i2(Lcom/google/android/material/datepicker/h;)Landroidx/recyclerview/widget/RecyclerView;
    move-result-object p1
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$f;
    move-result-object p1
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$f;->h()V
  .line 6
    iget-object p1, p0, Lcom/google/android/material/datepicker/h$d;->a:Lcom/google/android/material/datepicker/h;
    invoke-static { p1 }, Lcom/google/android/material/datepicker/h;->l2(Lcom/google/android/material/datepicker/h;)Landroidx/recyclerview/widget/RecyclerView;
    move-result-object p1
    if-eqz p1, :L2
  .line 7
    iget-object p1, p0, Lcom/google/android/material/datepicker/h$d;->a:Lcom/google/android/material/datepicker/h;
    invoke-static { p1 }, Lcom/google/android/material/datepicker/h;->l2(Lcom/google/android/material/datepicker/h;)Landroidx/recyclerview/widget/RecyclerView;
    move-result-object p1
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$f;
    move-result-object p1
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$f;->h()V
  :L2
    return-void
.end method
