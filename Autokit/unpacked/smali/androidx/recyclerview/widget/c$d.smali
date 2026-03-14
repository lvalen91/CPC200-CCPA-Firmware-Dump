.class Landroidx/recyclerview/widget/c$d;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/recyclerview/widget/c;->T(Landroidx/recyclerview/widget/RecyclerView$c0;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Landroidx/recyclerview/widget/RecyclerView$c0;

.field final synthetic b:Landroid/view/ViewPropertyAnimator;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Landroidx/recyclerview/widget/c;

.method constructor <init>(Landroidx/recyclerview/widget/c;Landroidx/recyclerview/widget/RecyclerView$c0;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
  .registers 5
  .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/c$d;->d:Landroidx/recyclerview/widget/c;
    iput-object p2, p0, Landroidx/recyclerview/widget/c$d;->a:Landroidx/recyclerview/widget/RecyclerView$c0;
    iput-object p3, p0, Landroidx/recyclerview/widget/c$d;->b:Landroid/view/ViewPropertyAnimator;
    iput-object p4, p0, Landroidx/recyclerview/widget/c$d;->c:Landroid/view/View;
    invoke-direct { p0 }, Landroid/animation/AnimatorListenerAdapter;-><init>()V
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
  .registers 3
  .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/c$d;->b:Landroid/view/ViewPropertyAnimator;
    const/4 v0, 0
    invoke-virtual { p1, v0 }, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;
  .line 2
    iget-object p1, p0, Landroidx/recyclerview/widget/c$d;->c:Landroid/view/View;
    const/high16 v0, 16256
    invoke-virtual { p1, v0 }, Landroid/view/View;->setAlpha(F)V
  .line 3
    iget-object p1, p0, Landroidx/recyclerview/widget/c$d;->d:Landroidx/recyclerview/widget/c;
    iget-object v0, p0, Landroidx/recyclerview/widget/c$d;->a:Landroidx/recyclerview/widget/RecyclerView$c0;
    invoke-virtual { p1, v0 }, Landroidx/recyclerview/widget/m;->G(Landroidx/recyclerview/widget/RecyclerView$c0;)V
  .line 4
    iget-object p1, p0, Landroidx/recyclerview/widget/c$d;->d:Landroidx/recyclerview/widget/c;
    iget-object p1, p1, Landroidx/recyclerview/widget/c;->q:Ljava/util/ArrayList;
    iget-object v0, p0, Landroidx/recyclerview/widget/c$d;->a:Landroidx/recyclerview/widget/RecyclerView$c0;
    invoke-virtual { p1, v0 }, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
  .line 5
    iget-object p1, p0, Landroidx/recyclerview/widget/c$d;->d:Landroidx/recyclerview/widget/c;
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/c;->V()V
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
  .registers 3
  .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/c$d;->d:Landroidx/recyclerview/widget/c;
    iget-object v0, p0, Landroidx/recyclerview/widget/c$d;->a:Landroidx/recyclerview/widget/RecyclerView$c0;
    invoke-virtual { p1, v0 }, Landroidx/recyclerview/widget/m;->H(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    return-void
.end method
