.class Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->F(Landroid/view/View;IJLandroid/animation/TimeInterpolator;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;

.method constructor <init>(Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior$a;->a:Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;
    invoke-direct { p0 }, Landroid/animation/AnimatorListenerAdapter;-><init>()V
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
  .registers 3
  .line 1
    iget-object p1, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior$a;->a:Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;
    const/4 v0, 0
    invoke-static { p1, v0 }, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->E(Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;
    return-void
.end method
