.class Landroidx/recyclerview/widget/d$d;
.super Ljava/lang/Object;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/recyclerview/widget/d;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 2
  name = "d"
.end annotation

.field final synthetic a:Landroidx/recyclerview/widget/d;

.method constructor <init>(Landroidx/recyclerview/widget/d;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/d$d;->a:Landroidx/recyclerview/widget/d;
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
    const/high16 v0, 17279
    mul-float p1, p1, v0
    float-to-int p1, p1
  .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/d$d;->a:Landroidx/recyclerview/widget/d;
    iget-object v0, v0, Landroidx/recyclerview/widget/d;->c:Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual { v0, p1 }, Landroid/graphics/drawable/StateListDrawable;->setAlpha(I)V
  .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/d$d;->a:Landroidx/recyclerview/widget/d;
    iget-object v0, v0, Landroidx/recyclerview/widget/d;->d:Landroid/graphics/drawable/Drawable;
    invoke-virtual { v0, p1 }, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
  .line 4
    iget-object p1, p0, Landroidx/recyclerview/widget/d$d;->a:Landroidx/recyclerview/widget/d;
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/d;->v()V
    return-void
.end method
