.class Lcom/google/android/material/transformation/FabTransformationScrimBehavior$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/google/android/material/transformation/FabTransformationScrimBehavior;->J(Landroid/view/View;Landroid/view/View;ZZ)Landroid/animation/AnimatorSet;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Z

.field final synthetic b:Landroid/view/View;

.method constructor <init>(Lcom/google/android/material/transformation/FabTransformationScrimBehavior;ZLandroid/view/View;)V
  .registers 4
  .line 1
    iput-boolean p2, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior$a;->a:Z
    iput-object p3, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior$a;->b:Landroid/view/View;
    invoke-direct { p0 }, Landroid/animation/AnimatorListenerAdapter;-><init>()V
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
  .registers 3
  .line 1
    iget-boolean p1, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior$a;->a:Z
    if-nez p1, :L0
  .line 2
    iget-object p1, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior$a;->b:Landroid/view/View;
    const/4 v0, 4
    invoke-virtual { p1, v0 }, Landroid/view/View;->setVisibility(I)V
  :L0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
  .registers 3
  .line 1
    iget-boolean p1, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior$a;->a:Z
    if-eqz p1, :L0
  .line 2
    iget-object p1, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior$a;->b:Landroid/view/View;
    const/4 v0, 0
    invoke-virtual { p1, v0 }, Landroid/view/View;->setVisibility(I)V
  :L0
    return-void
.end method
