.class Landroidx/recyclerview/widget/c$h;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/recyclerview/widget/c;->R(Landroidx/recyclerview/widget/c$i;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Landroidx/recyclerview/widget/c$i;

.field final synthetic b:Landroid/view/ViewPropertyAnimator;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Landroidx/recyclerview/widget/c;

.method constructor <init>(Landroidx/recyclerview/widget/c;Landroidx/recyclerview/widget/c$i;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
  .registers 5
  .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/c$h;->d:Landroidx/recyclerview/widget/c;
    iput-object p2, p0, Landroidx/recyclerview/widget/c$h;->a:Landroidx/recyclerview/widget/c$i;
    iput-object p3, p0, Landroidx/recyclerview/widget/c$h;->b:Landroid/view/ViewPropertyAnimator;
    iput-object p4, p0, Landroidx/recyclerview/widget/c$h;->c:Landroid/view/View;
    invoke-direct { p0 }, Landroid/animation/AnimatorListenerAdapter;-><init>()V
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
  .registers 4
  .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/c$h;->b:Landroid/view/ViewPropertyAnimator;
    const/4 v0, 0
    invoke-virtual { p1, v0 }, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;
  .line 2
    iget-object p1, p0, Landroidx/recyclerview/widget/c$h;->c:Landroid/view/View;
    const/high16 v0, 16256
    invoke-virtual { p1, v0 }, Landroid/view/View;->setAlpha(F)V
  .line 3
    iget-object p1, p0, Landroidx/recyclerview/widget/c$h;->c:Landroid/view/View;
    const/4 v0, 0
    invoke-virtual { p1, v0 }, Landroid/view/View;->setTranslationX(F)V
  .line 4
    iget-object p1, p0, Landroidx/recyclerview/widget/c$h;->c:Landroid/view/View;
    invoke-virtual { p1, v0 }, Landroid/view/View;->setTranslationY(F)V
  .line 5
    iget-object p1, p0, Landroidx/recyclerview/widget/c$h;->d:Landroidx/recyclerview/widget/c;
    iget-object v0, p0, Landroidx/recyclerview/widget/c$h;->a:Landroidx/recyclerview/widget/c$i;
    iget-object v0, v0, Landroidx/recyclerview/widget/c$i;->b:Landroidx/recyclerview/widget/RecyclerView$c0;
    const/4 v1, 0
    invoke-virtual { p1, v0, v1 }, Landroidx/recyclerview/widget/m;->C(Landroidx/recyclerview/widget/RecyclerView$c0;Z)V
  .line 6
    iget-object p1, p0, Landroidx/recyclerview/widget/c$h;->d:Landroidx/recyclerview/widget/c;
    iget-object p1, p1, Landroidx/recyclerview/widget/c;->r:Ljava/util/ArrayList;
    iget-object v0, p0, Landroidx/recyclerview/widget/c$h;->a:Landroidx/recyclerview/widget/c$i;
    iget-object v0, v0, Landroidx/recyclerview/widget/c$i;->b:Landroidx/recyclerview/widget/RecyclerView$c0;
    invoke-virtual { p1, v0 }, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
  .line 7
    iget-object p1, p0, Landroidx/recyclerview/widget/c$h;->d:Landroidx/recyclerview/widget/c;
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/c;->V()V
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
  .registers 4
  .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/c$h;->d:Landroidx/recyclerview/widget/c;
    iget-object v0, p0, Landroidx/recyclerview/widget/c$h;->a:Landroidx/recyclerview/widget/c$i;
    iget-object v0, v0, Landroidx/recyclerview/widget/c$i;->b:Landroidx/recyclerview/widget/RecyclerView$c0;
    const/4 v1, 0
    invoke-virtual { p1, v0, v1 }, Landroidx/recyclerview/widget/m;->D(Landroidx/recyclerview/widget/RecyclerView$c0;Z)V
    return-void
.end method
