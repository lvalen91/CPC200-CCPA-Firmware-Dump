.class Lc/p/d$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lc/p/d;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "b"
.end annotation

.field private final a:Landroid/view/View;

.field private b:Z

.method constructor <init>(Landroid/view/View;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Landroid/animation/AnimatorListenerAdapter;-><init>()V
    const/4 v0, 0
  .line 2
    iput-boolean v0, p0, Lc/p/d$b;->b:Z
  .line 3
    iput-object p1, p0, Lc/p/d$b;->a:Landroid/view/View;
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
  .registers 4
  .line 1
    iget-object p1, p0, Lc/p/d$b;->a:Landroid/view/View;
    const/high16 v0, 16256
    invoke-static { p1, v0 }, Lc/p/c0;->g(Landroid/view/View;F)V
  .line 2
    iget-boolean p1, p0, Lc/p/d$b;->b:Z
    if-eqz p1, :L0
  .line 3
    iget-object p1, p0, Lc/p/d$b;->a:Landroid/view/View;
    const/4 v0, 0
    const/4 v1, 0
    invoke-virtual { p1, v0, v1 }, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V
  :L0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
  .registers 4
  .line 1
    iget-object p1, p0, Lc/p/d$b;->a:Landroid/view/View;
    invoke-static { p1 }, Landroidx/core/view/v;->P(Landroid/view/View;)Z
    move-result p1
    if-eqz p1, :L0
    iget-object p1, p0, Lc/p/d$b;->a:Landroid/view/View;
  .line 2
    invoke-virtual { p1 }, Landroid/view/View;->getLayerType()I
    move-result p1
    if-nez p1, :L0
    const/4 p1, 1
  .line 3
    iput-boolean p1, p0, Lc/p/d$b;->b:Z
  .line 4
    iget-object p1, p0, Lc/p/d$b;->a:Landroid/view/View;
    const/4 v0, 2
    const/4 v1, 0
    invoke-virtual { p1, v0, v1 }, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V
  :L0
    return-void
.end method
