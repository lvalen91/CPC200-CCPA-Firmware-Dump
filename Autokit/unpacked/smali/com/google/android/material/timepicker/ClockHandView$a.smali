.class Lcom/google/android/material/timepicker/ClockHandView$a;
.super Ljava/lang/Object;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/google/android/material/timepicker/ClockHandView;->l(FZ)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Lcom/google/android/material/timepicker/ClockHandView;

.method constructor <init>(Lcom/google/android/material/timepicker/ClockHandView;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/google/android/material/timepicker/ClockHandView$a;->a:Lcom/google/android/material/timepicker/ClockHandView;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
  .registers 4
  .line 1
    invoke-virtual { p1 }, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Ljava/lang/Float;
    invoke-virtual { p1 }, Ljava/lang/Float;->floatValue()F
    move-result p1
  .line 2
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView$a;->a:Lcom/google/android/material/timepicker/ClockHandView;
    const/4 v1, 1
    invoke-static { v0, p1, v1 }, Lcom/google/android/material/timepicker/ClockHandView;->a(Lcom/google/android/material/timepicker/ClockHandView;FZ)V
    return-void
.end method
