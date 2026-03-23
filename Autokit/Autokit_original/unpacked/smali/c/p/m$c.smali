.class Lc/p/m$c;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lc/p/m;->e(Landroid/animation/Animator;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Lc/p/m;

.method constructor <init>(Lc/p/m;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lc/p/m$c;->a:Lc/p/m;
    invoke-direct { p0 }, Landroid/animation/AnimatorListenerAdapter;-><init>()V
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lc/p/m$c;->a:Lc/p/m;
    invoke-virtual { v0 }, Lc/p/m;->o()V
  .line 2
    invoke-virtual { p1, p0 }, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V
    return-void
.end method
