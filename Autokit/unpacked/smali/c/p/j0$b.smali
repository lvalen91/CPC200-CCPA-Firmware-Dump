.class Lc/p/j0$b;
.super Landroid/animation/AnimatorListenerAdapter;
.implements Lc/p/m$f;
.implements Lc/p/a$a;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lc/p/j0;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "b"
.end annotation

.field private final a:Landroid/view/View;

.field private final b:I

.field private final c:Landroid/view/ViewGroup;

.field private final d:Z

.field private e:Z

.field f:Z

.method constructor <init>(Landroid/view/View;IZ)V
  .registers 5
  .line 1
    invoke-direct { p0 }, Landroid/animation/AnimatorListenerAdapter;-><init>()V
    const/4 v0, 0
  .line 2
    iput-boolean v0, p0, Lc/p/j0$b;->f:Z
  .line 3
    iput-object p1, p0, Lc/p/j0$b;->a:Landroid/view/View;
  .line 4
    iput p2, p0, Lc/p/j0$b;->b:I
  .line 5
    invoke-virtual { p1 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object p1
    check-cast p1, Landroid/view/ViewGroup;
    iput-object p1, p0, Lc/p/j0$b;->c:Landroid/view/ViewGroup;
  .line 6
    iput-boolean p3, p0, Lc/p/j0$b;->d:Z
    const/4 p1, 1
  .line 7
    invoke-direct { p0, p1 }, Lc/p/j0$b;->g(Z)V
    return-void
.end method

.method private f()V
  .registers 3
  .line 1
    iget-boolean v0, p0, Lc/p/j0$b;->f:Z
    if-nez v0, :L0
  .line 2
    iget-object v0, p0, Lc/p/j0$b;->a:Landroid/view/View;
    iget v1, p0, Lc/p/j0$b;->b:I
    invoke-static { v0, v1 }, Lc/p/c0;->h(Landroid/view/View;I)V
  .line 3
    iget-object v0, p0, Lc/p/j0$b;->c:Landroid/view/ViewGroup;
    if-eqz v0, :L0
  .line 4
    invoke-virtual { v0 }, Landroid/view/ViewGroup;->invalidate()V
  :L0
    const/4 v0, 0
  .line 5
    invoke-direct { p0, v0 }, Lc/p/j0$b;->g(Z)V
    return-void
.end method

.method private g(Z)V
  .registers 3
  .line 1
    iget-boolean v0, p0, Lc/p/j0$b;->d:Z
    if-eqz v0, :L0
    iget-boolean v0, p0, Lc/p/j0$b;->e:Z
    if-eq v0, p1, :L0
    iget-object v0, p0, Lc/p/j0$b;->c:Landroid/view/ViewGroup;
    if-eqz v0, :L0
  .line 2
    iput-boolean p1, p0, Lc/p/j0$b;->e:Z
  .line 3
    invoke-static { v0, p1 }, Lc/p/x;->c(Landroid/view/ViewGroup;Z)V
  :L0
    return-void
.end method

.method public a(Lc/p/m;)V
  .registers 2
    const/4 p1, 0
  .line 1
    invoke-direct { p0, p1 }, Lc/p/j0$b;->g(Z)V
    return-void
.end method

.method public b(Lc/p/m;)V
  .registers 2
    const/4 p1, 1
  .line 1
    invoke-direct { p0, p1 }, Lc/p/j0$b;->g(Z)V
    return-void
.end method

.method public c(Lc/p/m;)V
  .registers 2
    return-void
.end method

.method public d(Lc/p/m;)V
  .registers 2
    return-void
.end method

.method public e(Lc/p/m;)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Lc/p/j0$b;->f()V
  .line 2
    invoke-virtual { p1, p0 }, Lc/p/m;->O(Lc/p/m$f;)Lc/p/m;
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
  .registers 2
    const/4 p1, 1
  .line 1
    iput-boolean p1, p0, Lc/p/j0$b;->f:Z
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Lc/p/j0$b;->f()V
    return-void
.end method

.method public onAnimationPause(Landroid/animation/Animator;)V
  .registers 3
  .line 1
    iget-boolean p1, p0, Lc/p/j0$b;->f:Z
    if-nez p1, :L0
  .line 2
    iget-object p1, p0, Lc/p/j0$b;->a:Landroid/view/View;
    iget v0, p0, Lc/p/j0$b;->b:I
    invoke-static { p1, v0 }, Lc/p/c0;->h(Landroid/view/View;I)V
  :L0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
  .registers 2
    return-void
.end method

.method public onAnimationResume(Landroid/animation/Animator;)V
  .registers 3
  .line 1
    iget-boolean p1, p0, Lc/p/j0$b;->f:Z
    if-nez p1, :L0
  .line 2
    iget-object p1, p0, Lc/p/j0$b;->a:Landroid/view/View;
    const/4 v0, 0
    invoke-static { p1, v0 }, Lc/p/c0;->h(Landroid/view/View;I)V
  :L0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
  .registers 2
    return-void
.end method
