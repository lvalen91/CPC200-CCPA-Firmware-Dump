.class Lcom/google/android/material/datepicker/i$a;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnClickListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/google/android/material/datepicker/i;->L0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcom/google/android/material/datepicker/i;

.method constructor <init>(Lcom/google/android/material/datepicker/i;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/google/android/material/datepicker/i$a;->b:Lcom/google/android/material/datepicker/i;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onClick(Landroid/view/View;)V
  .registers 4
  .line 1
    iget-object p1, p0, Lcom/google/android/material/datepicker/i$a;->b:Lcom/google/android/material/datepicker/i;
    invoke-static { p1 }, Lcom/google/android/material/datepicker/i;->v2(Lcom/google/android/material/datepicker/i;)Ljava/util/LinkedHashSet;
    move-result-object p1
    invoke-virtual { p1 }, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;
    move-result-object p1
  :L0
    invoke-interface { p1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :L1
    invoke-interface { p1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/google/android/material/datepicker/j;
  .line 2
    iget-object v1, p0, Lcom/google/android/material/datepicker/i$a;->b:Lcom/google/android/material/datepicker/i;
    invoke-virtual { v1 }, Lcom/google/android/material/datepicker/i;->H2()Ljava/lang/Object;
    move-result-object v1
    invoke-interface { v0, v1 }, Lcom/google/android/material/datepicker/j;->a(Ljava/lang/Object;)V
    goto :L0
  :L1
  .line 3
    iget-object p1, p0, Lcom/google/android/material/datepicker/i$a;->b:Lcom/google/android/material/datepicker/i;
    invoke-virtual { p1 }, Landroidx/fragment/app/d;->j2()V
    return-void
.end method
