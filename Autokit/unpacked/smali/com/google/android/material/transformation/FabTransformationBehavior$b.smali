.class Lcom/google/android/material/transformation/FabTransformationBehavior$b;
.super Ljava/lang/Object;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/google/android/material/transformation/FabTransformationBehavior;->Z(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$e;Ljava/util/List;Ljava/util/List;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Landroid/view/View;

.method constructor <init>(Lcom/google/android/material/transformation/FabTransformationBehavior;Landroid/view/View;)V
  .registers 3
  .line 1
    iput-object p2, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->a:Landroid/view/View;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
  .registers 2
  .line 1
    iget-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->a:Landroid/view/View;
    invoke-virtual { p1 }, Landroid/view/View;->invalidate()V
    return-void
.end method
