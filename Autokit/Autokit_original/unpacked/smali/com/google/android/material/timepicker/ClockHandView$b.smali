.class Lcom/google/android/material/timepicker/ClockHandView$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/google/android/material/timepicker/ClockHandView;->l(FZ)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.method constructor <init>(Lcom/google/android/material/timepicker/ClockHandView;)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Landroid/animation/AnimatorListenerAdapter;-><init>()V
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
  .registers 2
  .line 1
    invoke-virtual { p1 }, Landroid/animation/Animator;->end()V
    return-void
.end method
