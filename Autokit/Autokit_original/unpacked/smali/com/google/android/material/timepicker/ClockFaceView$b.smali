.class Lcom/google/android/material/timepicker/ClockFaceView$b;
.super Landroidx/core/view/a;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/google/android/material/timepicker/ClockFaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic d:Lcom/google/android/material/timepicker/ClockFaceView;

.method constructor <init>(Lcom/google/android/material/timepicker/ClockFaceView;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/google/android/material/timepicker/ClockFaceView$b;->d:Lcom/google/android/material/timepicker/ClockFaceView;
    invoke-direct { p0 }, Landroidx/core/view/a;-><init>()V
    return-void
.end method

.method public g(Landroid/view/View;Landroidx/core/view/e0/c;)V
  .registers 10
  .line 1
    invoke-super { p0, p1, p2 }, Landroidx/core/view/a;->g(Landroid/view/View;Landroidx/core/view/e0/c;)V
  .line 2
    sget v0, Ld/c/a/a/f;->material_value_index:I
    invoke-virtual { p1, v0 }, Landroid/view/View;->getTag(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/Integer;
    invoke-virtual { v0 }, Ljava/lang/Integer;->intValue()I
    move-result v3
    if-lez v3, :L0
  .line 3
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView$b;->d:Lcom/google/android/material/timepicker/ClockFaceView;
    invoke-static { v0 }, Lcom/google/android/material/timepicker/ClockFaceView;->C(Lcom/google/android/material/timepicker/ClockFaceView;)Landroid/util/SparseArray;
    move-result-object v0
    add-int/lit8 v1, v3, -1
    invoke-virtual { v0, v1 }, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/view/View;
    invoke-virtual { p2, v0 }, Landroidx/core/view/e0/c;->s0(Landroid/view/View;)V
  :L0
    const/4 v1, 0
    const/4 v2, 1
    const/4 v4, 1
    const/4 v5, 0
  .line 4
    invoke-virtual { p1 }, Landroid/view/View;->isSelected()Z
    move-result v6
  .line 5
    invoke-static/range { v1 .. v6 }, Landroidx/core/view/e0/c$c;->a(IIIIZZ)Landroidx/core/view/e0/c$c;
    move-result-object p1
  .line 6
    invoke-virtual { p2, p1 }, Landroidx/core/view/e0/c;->Z(Ljava/lang/Object;)V
    return-void
.end method
