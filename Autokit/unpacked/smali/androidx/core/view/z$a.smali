.class Landroidx/core/view/z$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/core/view/z;->g(Landroid/view/View;Landroidx/core/view/a0;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Landroidx/core/view/a0;

.field final synthetic b:Landroid/view/View;

.method constructor <init>(Landroidx/core/view/z;Landroidx/core/view/a0;Landroid/view/View;)V
  .registers 4
  .line 1
    iput-object p2, p0, Landroidx/core/view/z$a;->a:Landroidx/core/view/a0;
    iput-object p3, p0, Landroidx/core/view/z$a;->b:Landroid/view/View;
    invoke-direct { p0 }, Landroid/animation/AnimatorListenerAdapter;-><init>()V
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
  .registers 3
  .line 1
    iget-object p1, p0, Landroidx/core/view/z$a;->a:Landroidx/core/view/a0;
    iget-object v0, p0, Landroidx/core/view/z$a;->b:Landroid/view/View;
    invoke-interface { p1, v0 }, Landroidx/core/view/a0;->c(Landroid/view/View;)V
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
  .registers 3
  .line 1
    iget-object p1, p0, Landroidx/core/view/z$a;->a:Landroidx/core/view/a0;
    iget-object v0, p0, Landroidx/core/view/z$a;->b:Landroid/view/View;
    invoke-interface { p1, v0 }, Landroidx/core/view/a0;->a(Landroid/view/View;)V
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
  .registers 3
  .line 1
    iget-object p1, p0, Landroidx/core/view/z$a;->a:Landroidx/core/view/a0;
    iget-object v0, p0, Landroidx/core/view/z$a;->b:Landroid/view/View;
    invoke-interface { p1, v0 }, Landroidx/core/view/a0;->b(Landroid/view/View;)V
    return-void
.end method
