.class Lcom/google/android/material/textfield/d$b;
.super Ljava/lang/Object;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/google/android/material/textfield/d;->z(I[F)Landroid/animation/ValueAnimator;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Lcom/google/android/material/textfield/d;

.method constructor <init>(Lcom/google/android/material/textfield/d;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/d$b;->a:Lcom/google/android/material/textfield/d;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
  .registers 3
  .line 1
    invoke-virtual { p1 }, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Ljava/lang/Float;
    invoke-virtual { p1 }, Ljava/lang/Float;->floatValue()F
    move-result p1
  .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/d$b;->a:Lcom/google/android/material/textfield/d;
    iget-object v0, v0, Lcom/google/android/material/textfield/e;->c:Lcom/google/android/material/internal/CheckableImageButton;
    invoke-virtual { v0, p1 }, Landroid/widget/ImageButton;->setAlpha(F)V
    return-void
.end method
