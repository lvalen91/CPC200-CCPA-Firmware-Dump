.class Lcom/google/android/material/timepicker/TimePickerView$c;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/google/android/material/timepicker/TimePickerView;->y()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcom/google/android/material/timepicker/TimePickerView;

.method constructor <init>(Lcom/google/android/material/timepicker/TimePickerView;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerView$c;->b:Lcom/google/android/material/timepicker/TimePickerView;
    invoke-direct { p0 }, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
  .registers 3
  .line 1
    invoke-super { p0, p1 }, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z
    move-result p1
  .line 2
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView$c;->b:Lcom/google/android/material/timepicker/TimePickerView;
    invoke-static { v0 }, Lcom/google/android/material/timepicker/TimePickerView;->w(Lcom/google/android/material/timepicker/TimePickerView;)Lcom/google/android/material/timepicker/TimePickerView$e;
    move-result-object v0
    if-eqz v0, :L0
  .line 3
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView$c;->b:Lcom/google/android/material/timepicker/TimePickerView;
    invoke-static { v0 }, Lcom/google/android/material/timepicker/TimePickerView;->w(Lcom/google/android/material/timepicker/TimePickerView;)Lcom/google/android/material/timepicker/TimePickerView$e;
    move-result-object v0
    invoke-interface { v0 }, Lcom/google/android/material/timepicker/TimePickerView$e;->a()V
  :L0
    return p1
.end method
