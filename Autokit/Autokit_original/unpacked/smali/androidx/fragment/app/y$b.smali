.class Landroidx/fragment/app/y$b;
.super Ljava/lang/Object;
.implements Landroid/transition/Transition$TransitionListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/fragment/app/y;->r(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Landroid/view/View;

.field final synthetic b:Ljava/util/ArrayList;

.method constructor <init>(Landroidx/fragment/app/y;Landroid/view/View;Ljava/util/ArrayList;)V
  .registers 4
  .line 1
    iput-object p2, p0, Landroidx/fragment/app/y$b;->a:Landroid/view/View;
    iput-object p3, p0, Landroidx/fragment/app/y$b;->b:Ljava/util/ArrayList;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onTransitionCancel(Landroid/transition/Transition;)V
  .registers 2
    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
  .registers 5
  .line 1
    invoke-virtual { p1, p0 }, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;
  .line 2
    iget-object p1, p0, Landroidx/fragment/app/y$b;->a:Landroid/view/View;
    const/16 v0, 8
    invoke-virtual { p1, v0 }, Landroid/view/View;->setVisibility(I)V
  .line 3
    iget-object p1, p0, Landroidx/fragment/app/y$b;->b:Ljava/util/ArrayList;
    invoke-virtual { p1 }, Ljava/util/ArrayList;->size()I
    move-result p1
    const/4 v0, 0
    const/4 v1, 0
  :L0
    if-ge v1, p1, :L1
  .line 4
    iget-object v2, p0, Landroidx/fragment/app/y$b;->b:Ljava/util/ArrayList;
    invoke-virtual { v2, v1 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroid/view/View;
    invoke-virtual { v2, v0 }, Landroid/view/View;->setVisibility(I)V
    add-int/lit8 v1, v1, 1
    goto :L0
  :L1
    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
  .registers 2
    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
  .registers 2
    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
  .registers 2
  .line 1
    invoke-virtual { p1, p0 }, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;
  .line 2
    invoke-virtual { p1, p0 }, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;
    return-void
.end method
