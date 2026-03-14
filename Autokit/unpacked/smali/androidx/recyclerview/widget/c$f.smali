.class Landroidx/recyclerview/widget/c$f;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/recyclerview/widget/c;->S(Landroidx/recyclerview/widget/RecyclerView$c0;IIII)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Landroidx/recyclerview/widget/RecyclerView$c0;

.field final synthetic b:I

.field final synthetic c:Landroid/view/View;

.field final synthetic d:I

.field final synthetic e:Landroid/view/ViewPropertyAnimator;

.field final synthetic f:Landroidx/recyclerview/widget/c;

.method constructor <init>(Landroidx/recyclerview/widget/c;Landroidx/recyclerview/widget/RecyclerView$c0;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V
  .registers 7
  .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/c$f;->f:Landroidx/recyclerview/widget/c;
    iput-object p2, p0, Landroidx/recyclerview/widget/c$f;->a:Landroidx/recyclerview/widget/RecyclerView$c0;
    iput p3, p0, Landroidx/recyclerview/widget/c$f;->b:I
    iput-object p4, p0, Landroidx/recyclerview/widget/c$f;->c:Landroid/view/View;
    iput p5, p0, Landroidx/recyclerview/widget/c$f;->d:I
    iput-object p6, p0, Landroidx/recyclerview/widget/c$f;->e:Landroid/view/ViewPropertyAnimator;
    invoke-direct { p0 }, Landroid/animation/AnimatorListenerAdapter;-><init>()V
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
  .registers 3
  .line 1
    iget p1, p0, Landroidx/recyclerview/widget/c$f;->b:I
    const/4 v0, 0
    if-eqz p1, :L0
  .line 2
    iget-object p1, p0, Landroidx/recyclerview/widget/c$f;->c:Landroid/view/View;
    invoke-virtual { p1, v0 }, Landroid/view/View;->setTranslationX(F)V
  :L0
  .line 3
    iget p1, p0, Landroidx/recyclerview/widget/c$f;->d:I
    if-eqz p1, :L1
  .line 4
    iget-object p1, p0, Landroidx/recyclerview/widget/c$f;->c:Landroid/view/View;
    invoke-virtual { p1, v0 }, Landroid/view/View;->setTranslationY(F)V
  :L1
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
  .registers 3
  .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/c$f;->e:Landroid/view/ViewPropertyAnimator;
    const/4 v0, 0
    invoke-virtual { p1, v0 }, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;
  .line 2
    iget-object p1, p0, Landroidx/recyclerview/widget/c$f;->f:Landroidx/recyclerview/widget/c;
    iget-object v0, p0, Landroidx/recyclerview/widget/c$f;->a:Landroidx/recyclerview/widget/RecyclerView$c0;
    invoke-virtual { p1, v0 }, Landroidx/recyclerview/widget/m;->E(Landroidx/recyclerview/widget/RecyclerView$c0;)V
  .line 3
    iget-object p1, p0, Landroidx/recyclerview/widget/c$f;->f:Landroidx/recyclerview/widget/c;
    iget-object p1, p1, Landroidx/recyclerview/widget/c;->p:Ljava/util/ArrayList;
    iget-object v0, p0, Landroidx/recyclerview/widget/c$f;->a:Landroidx/recyclerview/widget/RecyclerView$c0;
    invoke-virtual { p1, v0 }, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
  .line 4
    iget-object p1, p0, Landroidx/recyclerview/widget/c$f;->f:Landroidx/recyclerview/widget/c;
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/c;->V()V
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
  .registers 3
  .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/c$f;->f:Landroidx/recyclerview/widget/c;
    iget-object v0, p0, Landroidx/recyclerview/widget/c$f;->a:Landroidx/recyclerview/widget/RecyclerView$c0;
    invoke-virtual { p1, v0 }, Landroidx/recyclerview/widget/m;->F(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    return-void
.end method
