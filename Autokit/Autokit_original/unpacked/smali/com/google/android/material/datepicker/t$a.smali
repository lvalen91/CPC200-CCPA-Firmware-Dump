.class Lcom/google/android/material/datepicker/t$a;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnClickListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/google/android/material/datepicker/t;->v(I)Landroid/view/View$OnClickListener;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:I

.field final synthetic c:Lcom/google/android/material/datepicker/t;

.method constructor <init>(Lcom/google/android/material/datepicker/t;I)V
  .registers 3
  .line 1
    iput-object p1, p0, Lcom/google/android/material/datepicker/t$a;->c:Lcom/google/android/material/datepicker/t;
    iput p2, p0, Lcom/google/android/material/datepicker/t$a;->b:I
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onClick(Landroid/view/View;)V
  .registers 3
  .line 1
    iget p1, p0, Lcom/google/android/material/datepicker/t$a;->b:I
    iget-object v0, p0, Lcom/google/android/material/datepicker/t$a;->c:Lcom/google/android/material/datepicker/t;
    invoke-static { v0 }, Lcom/google/android/material/datepicker/t;->u(Lcom/google/android/material/datepicker/t;)Lcom/google/android/material/datepicker/h;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/google/android/material/datepicker/h;->t2()Lcom/google/android/material/datepicker/l;
    move-result-object v0
    iget v0, v0, Lcom/google/android/material/datepicker/l;->c:I
    invoke-static { p1, v0 }, Lcom/google/android/material/datepicker/l;->k(II)Lcom/google/android/material/datepicker/l;
    move-result-object p1
  .line 2
    iget-object v0, p0, Lcom/google/android/material/datepicker/t$a;->c:Lcom/google/android/material/datepicker/t;
    invoke-static { v0 }, Lcom/google/android/material/datepicker/t;->u(Lcom/google/android/material/datepicker/t;)Lcom/google/android/material/datepicker/h;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/google/android/material/datepicker/h;->r2()Lcom/google/android/material/datepicker/a;
    move-result-object v0
  .line 3
    invoke-virtual { v0, p1 }, Lcom/google/android/material/datepicker/a;->n(Lcom/google/android/material/datepicker/l;)Lcom/google/android/material/datepicker/l;
    move-result-object p1
  .line 4
    iget-object v0, p0, Lcom/google/android/material/datepicker/t$a;->c:Lcom/google/android/material/datepicker/t;
    invoke-static { v0 }, Lcom/google/android/material/datepicker/t;->u(Lcom/google/android/material/datepicker/t;)Lcom/google/android/material/datepicker/h;
    move-result-object v0
    invoke-virtual { v0, p1 }, Lcom/google/android/material/datepicker/h;->z2(Lcom/google/android/material/datepicker/l;)V
  .line 5
    iget-object p1, p0, Lcom/google/android/material/datepicker/t$a;->c:Lcom/google/android/material/datepicker/t;
    invoke-static { p1 }, Lcom/google/android/material/datepicker/t;->u(Lcom/google/android/material/datepicker/t;)Lcom/google/android/material/datepicker/h;
    move-result-object p1
    sget-object v0, Lcom/google/android/material/datepicker/h$k;->b:Lcom/google/android/material/datepicker/h$k;
    invoke-virtual { p1, v0 }, Lcom/google/android/material/datepicker/h;->A2(Lcom/google/android/material/datepicker/h$k;)V
    return-void
.end method
