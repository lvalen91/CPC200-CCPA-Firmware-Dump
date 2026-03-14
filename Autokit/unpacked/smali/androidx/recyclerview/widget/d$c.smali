.class Landroidx/recyclerview/widget/d$c;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/recyclerview/widget/d;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 2
  name = "c"
.end annotation

.field private a:Z

.field final synthetic b:Landroidx/recyclerview/widget/d;

.method constructor <init>(Landroidx/recyclerview/widget/d;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/d$c;->b:Landroidx/recyclerview/widget/d;
    invoke-direct { p0 }, Landroid/animation/AnimatorListenerAdapter;-><init>()V
    const/4 p1, 0
  .line 2
    iput-boolean p1, p0, Landroidx/recyclerview/widget/d$c;->a:Z
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
  .registers 2
    const/4 p1, 1
  .line 1
    iput-boolean p1, p0, Landroidx/recyclerview/widget/d$c;->a:Z
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
  .registers 4
  .line 1
    iget-boolean p1, p0, Landroidx/recyclerview/widget/d$c;->a:Z
    const/4 v0, 0
    if-eqz p1, :L0
  .line 2
    iput-boolean v0, p0, Landroidx/recyclerview/widget/d$c;->a:Z
    return-void
  :L0
  .line 3
    iget-object p1, p0, Landroidx/recyclerview/widget/d$c;->b:Landroidx/recyclerview/widget/d;
    iget-object p1, p1, Landroidx/recyclerview/widget/d;->z:Landroid/animation/ValueAnimator;
    invoke-virtual { p1 }, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Ljava/lang/Float;
    invoke-virtual { p1 }, Ljava/lang/Float;->floatValue()F
    move-result p1
    const/4 v1, 0
    cmpl-float p1, p1, v1
    if-nez p1, :L1
  .line 4
    iget-object p1, p0, Landroidx/recyclerview/widget/d$c;->b:Landroidx/recyclerview/widget/d;
    iput v0, p1, Landroidx/recyclerview/widget/d;->A:I
  .line 5
    invoke-virtual { p1, v0 }, Landroidx/recyclerview/widget/d;->y(I)V
    goto :L2
  :L1
  .line 6
    iget-object p1, p0, Landroidx/recyclerview/widget/d$c;->b:Landroidx/recyclerview/widget/d;
    const/4 v0, 2
    iput v0, p1, Landroidx/recyclerview/widget/d;->A:I
  .line 7
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/d;->v()V
  :L2
    return-void
.end method
