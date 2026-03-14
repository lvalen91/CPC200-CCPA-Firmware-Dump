.class Lcom/google/android/material/timepicker/ClockFaceView$a;
.super Ljava/lang/Object;
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/google/android/material/timepicker/ClockFaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcom/google/android/material/timepicker/ClockFaceView;

.method constructor <init>(Lcom/google/android/material/timepicker/ClockFaceView;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/google/android/material/timepicker/ClockFaceView$a;->b:Lcom/google/android/material/timepicker/ClockFaceView;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onPreDraw()Z
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView$a;->b:Lcom/google/android/material/timepicker/ClockFaceView;
    invoke-virtual { v0 }, Landroid/view/ViewGroup;->isShown()Z
    move-result v0
    const/4 v1, 1
    if-nez v0, :L0
    return v1
  :L0
  .line 2
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView$a;->b:Lcom/google/android/material/timepicker/ClockFaceView;
    invoke-virtual { v0 }, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
    move-result-object v0
    invoke-virtual { v0, p0 }, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
  .line 3
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView$a;->b:Lcom/google/android/material/timepicker/ClockFaceView;
  .line 4
    invoke-virtual { v0 }, Landroid/view/ViewGroup;->getHeight()I
    move-result v0
    div-int/lit8 v0, v0, 2
    iget-object v2, p0, Lcom/google/android/material/timepicker/ClockFaceView$a;->b:Lcom/google/android/material/timepicker/ClockFaceView;
    invoke-static { v2 }, Lcom/google/android/material/timepicker/ClockFaceView;->A(Lcom/google/android/material/timepicker/ClockFaceView;)Lcom/google/android/material/timepicker/ClockHandView;
    move-result-object v2
    invoke-virtual { v2 }, Lcom/google/android/material/timepicker/ClockHandView;->g()I
    move-result v2
    sub-int/2addr v0, v2
    iget-object v2, p0, Lcom/google/android/material/timepicker/ClockFaceView$a;->b:Lcom/google/android/material/timepicker/ClockFaceView;
    invoke-static { v2 }, Lcom/google/android/material/timepicker/ClockFaceView;->B(Lcom/google/android/material/timepicker/ClockFaceView;)I
    move-result v2
    sub-int/2addr v0, v2
  .line 5
    iget-object v2, p0, Lcom/google/android/material/timepicker/ClockFaceView$a;->b:Lcom/google/android/material/timepicker/ClockFaceView;
    invoke-virtual { v2, v0 }, Lcom/google/android/material/timepicker/ClockFaceView;->w(I)V
    return v1
.end method
