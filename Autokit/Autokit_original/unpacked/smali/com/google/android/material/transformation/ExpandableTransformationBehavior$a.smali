.class Lcom/google/android/material/transformation/ExpandableTransformationBehavior$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/google/android/material/transformation/ExpandableTransformationBehavior;->H(Landroid/view/View;Landroid/view/View;ZZ)Z
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Lcom/google/android/material/transformation/ExpandableTransformationBehavior;

.method constructor <init>(Lcom/google/android/material/transformation/ExpandableTransformationBehavior;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/google/android/material/transformation/ExpandableTransformationBehavior$a;->a:Lcom/google/android/material/transformation/ExpandableTransformationBehavior;
    invoke-direct { p0 }, Landroid/animation/AnimatorListenerAdapter;-><init>()V
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
  .registers 3
  .line 1
    iget-object p1, p0, Lcom/google/android/material/transformation/ExpandableTransformationBehavior$a;->a:Lcom/google/android/material/transformation/ExpandableTransformationBehavior;
    const/4 v0, 0
    invoke-static { p1, v0 }, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;->I(Lcom/google/android/material/transformation/ExpandableTransformationBehavior;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    return-void
.end method
