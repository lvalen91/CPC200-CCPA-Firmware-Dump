.class Lcom/google/android/material/datepicker/h$a;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/google/android/material/datepicker/h;->y2(I)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:I

.field final synthetic c:Lcom/google/android/material/datepicker/h;

.method constructor <init>(Lcom/google/android/material/datepicker/h;I)V
  .registers 3
  .line 1
    iput-object p1, p0, Lcom/google/android/material/datepicker/h$a;->c:Lcom/google/android/material/datepicker/h;
    iput p2, p0, Lcom/google/android/material/datepicker/h$a;->b:I
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/h$a;->c:Lcom/google/android/material/datepicker/h;
    invoke-static { v0 }, Lcom/google/android/material/datepicker/h;->i2(Lcom/google/android/material/datepicker/h;)Landroidx/recyclerview/widget/RecyclerView;
    move-result-object v0
    iget v1, p0, Lcom/google/android/material/datepicker/h$a;->b:I
    invoke-virtual { v0, v1 }, Landroidx/recyclerview/widget/RecyclerView;->o1(I)V
    return-void
.end method
