.class Lcom/google/android/material/timepicker/TimePickerView$a;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnClickListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcom/google/android/material/timepicker/TimePickerView;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcom/google/android/material/timepicker/TimePickerView;

.method constructor <init>(Lcom/google/android/material/timepicker/TimePickerView;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerView$a;->b:Lcom/google/android/material/timepicker/TimePickerView;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onClick(Landroid/view/View;)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView$a;->b:Lcom/google/android/material/timepicker/TimePickerView;
    invoke-static { v0 }, Lcom/google/android/material/timepicker/TimePickerView;->u(Lcom/google/android/material/timepicker/TimePickerView;)Lcom/google/android/material/timepicker/TimePickerView$g;
    move-result-object v0
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView$a;->b:Lcom/google/android/material/timepicker/TimePickerView;
    invoke-static { v0 }, Lcom/google/android/material/timepicker/TimePickerView;->u(Lcom/google/android/material/timepicker/TimePickerView;)Lcom/google/android/material/timepicker/TimePickerView$g;
    move-result-object v0
    sget v1, Ld/c/a/a/f;->selection_type:I
    invoke-virtual { p1, v1 }, Landroid/view/View;->getTag(I)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Ljava/lang/Integer;
    invoke-virtual { p1 }, Ljava/lang/Integer;->intValue()I
    move-result p1
    invoke-interface { v0, p1 }, Lcom/google/android/material/timepicker/TimePickerView$g;->a(I)V
  :L0
    return-void
.end method
