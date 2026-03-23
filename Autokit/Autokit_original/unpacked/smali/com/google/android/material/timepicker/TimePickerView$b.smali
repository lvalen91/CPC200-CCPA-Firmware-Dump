.class Lcom/google/android/material/timepicker/TimePickerView$b;
.super Ljava/lang/Object;
.implements Lcom/google/android/material/button/MaterialButtonToggleGroup$e;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/google/android/material/timepicker/TimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Lcom/google/android/material/timepicker/TimePickerView;

.method constructor <init>(Lcom/google/android/material/timepicker/TimePickerView;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerView$b;->a:Lcom/google/android/material/timepicker/TimePickerView;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(Lcom/google/android/material/button/MaterialButtonToggleGroup;IZ)V
  .registers 4
  .line 1
    sget p1, Ld/c/a/a/f;->material_clock_period_pm_button:I
    if-ne p2, p1, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
  .line 2
    iget-object p2, p0, Lcom/google/android/material/timepicker/TimePickerView$b;->a:Lcom/google/android/material/timepicker/TimePickerView;
    invoke-static { p2 }, Lcom/google/android/material/timepicker/TimePickerView;->v(Lcom/google/android/material/timepicker/TimePickerView;)Lcom/google/android/material/timepicker/TimePickerView$f;
    move-result-object p2
    if-eqz p2, :L2
    if-eqz p3, :L2
  .line 3
    iget-object p2, p0, Lcom/google/android/material/timepicker/TimePickerView$b;->a:Lcom/google/android/material/timepicker/TimePickerView;
    invoke-static { p2 }, Lcom/google/android/material/timepicker/TimePickerView;->v(Lcom/google/android/material/timepicker/TimePickerView;)Lcom/google/android/material/timepicker/TimePickerView$f;
    move-result-object p2
    invoke-interface { p2, p1 }, Lcom/google/android/material/timepicker/TimePickerView$f;->a(I)V
  :L2
    return-void
.end method
