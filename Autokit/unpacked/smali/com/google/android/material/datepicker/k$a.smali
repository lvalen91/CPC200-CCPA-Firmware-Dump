.class Lcom/google/android/material/datepicker/k$a;
.super Lcom/google/android/material/datepicker/o;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/google/android/material/datepicker/k;->L0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "Lcom/google/android/material/datepicker/o<",
    "TS;>;"
  }
.end annotation

.field final synthetic a:Lcom/google/android/material/datepicker/k;

.method constructor <init>(Lcom/google/android/material/datepicker/k;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/google/android/material/datepicker/k$a;->a:Lcom/google/android/material/datepicker/k;
    invoke-direct { p0 }, Lcom/google/android/material/datepicker/o;-><init>()V
    return-void
.end method

.method public a(Ljava/lang/Object;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TS;)V"
    }
  .end annotation
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/k$a;->a:Lcom/google/android/material/datepicker/k;
    iget-object v0, v0, Lcom/google/android/material/datepicker/p;->a0:Ljava/util/LinkedHashSet;
    invoke-virtual { v0 }, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcom/google/android/material/datepicker/o;
  .line 2
    invoke-virtual { v1, p1 }, Lcom/google/android/material/datepicker/o;->a(Ljava/lang/Object;)V
    goto :L0
  :L1
    return-void
.end method
