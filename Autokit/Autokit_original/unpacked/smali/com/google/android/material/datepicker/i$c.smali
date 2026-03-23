.class Lcom/google/android/material/datepicker/i$c;
.super Lcom/google/android/material/datepicker/o;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/google/android/material/datepicker/i;->N2()V
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

.field final synthetic a:Lcom/google/android/material/datepicker/i;

.method constructor <init>(Lcom/google/android/material/datepicker/i;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/google/android/material/datepicker/i$c;->a:Lcom/google/android/material/datepicker/i;
    invoke-direct { p0 }, Lcom/google/android/material/datepicker/o;-><init>()V
    return-void
.end method

.method public a(Ljava/lang/Object;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TS;)V"
    }
  .end annotation
  .registers 3
  .line 1
    iget-object p1, p0, Lcom/google/android/material/datepicker/i$c;->a:Lcom/google/android/material/datepicker/i;
    invoke-static { p1 }, Lcom/google/android/material/datepicker/i;->x2(Lcom/google/android/material/datepicker/i;)V
  .line 2
    iget-object p1, p0, Lcom/google/android/material/datepicker/i$c;->a:Lcom/google/android/material/datepicker/i;
    invoke-static { p1 }, Lcom/google/android/material/datepicker/i;->z2(Lcom/google/android/material/datepicker/i;)Landroid/widget/Button;
    move-result-object p1
    iget-object v0, p0, Lcom/google/android/material/datepicker/i$c;->a:Lcom/google/android/material/datepicker/i;
    invoke-static { v0 }, Lcom/google/android/material/datepicker/i;->y2(Lcom/google/android/material/datepicker/i;)Lcom/google/android/material/datepicker/d;
    move-result-object v0
    invoke-interface { v0 }, Lcom/google/android/material/datepicker/d;->f()Z
    move-result v0
    invoke-virtual { p1, v0 }, Landroid/widget/Button;->setEnabled(Z)V
    return-void
.end method
