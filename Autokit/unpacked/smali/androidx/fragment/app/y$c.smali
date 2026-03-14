.class Landroidx/fragment/app/y$c;
.super Ljava/lang/Object;
.implements Landroid/transition/Transition$TransitionListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/fragment/app/y;->t(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Ljava/util/ArrayList;

.field final synthetic e:Ljava/lang/Object;

.field final synthetic f:Ljava/util/ArrayList;

.field final synthetic g:Landroidx/fragment/app/y;

.method constructor <init>(Landroidx/fragment/app/y;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
  .registers 8
  .line 1
    iput-object p1, p0, Landroidx/fragment/app/y$c;->g:Landroidx/fragment/app/y;
    iput-object p2, p0, Landroidx/fragment/app/y$c;->a:Ljava/lang/Object;
    iput-object p3, p0, Landroidx/fragment/app/y$c;->b:Ljava/util/ArrayList;
    iput-object p4, p0, Landroidx/fragment/app/y$c;->c:Ljava/lang/Object;
    iput-object p5, p0, Landroidx/fragment/app/y$c;->d:Ljava/util/ArrayList;
    iput-object p6, p0, Landroidx/fragment/app/y$c;->e:Ljava/lang/Object;
    iput-object p7, p0, Landroidx/fragment/app/y$c;->f:Ljava/util/ArrayList;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onTransitionCancel(Landroid/transition/Transition;)V
  .registers 2
    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
  .registers 2
  .line 1
    invoke-virtual { p1, p0 }, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;
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
  .registers 5
  .line 1
    iget-object p1, p0, Landroidx/fragment/app/y$c;->a:Ljava/lang/Object;
    const/4 v0, 0
    if-eqz p1, :L0
  .line 2
    iget-object v1, p0, Landroidx/fragment/app/y$c;->g:Landroidx/fragment/app/y;
    iget-object v2, p0, Landroidx/fragment/app/y$c;->b:Ljava/util/ArrayList;
    invoke-virtual { v1, p1, v2, v0 }, Landroidx/fragment/app/y;->q(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
  :L0
  .line 3
    iget-object p1, p0, Landroidx/fragment/app/y$c;->c:Ljava/lang/Object;
    if-eqz p1, :L1
  .line 4
    iget-object v1, p0, Landroidx/fragment/app/y$c;->g:Landroidx/fragment/app/y;
    iget-object v2, p0, Landroidx/fragment/app/y$c;->d:Ljava/util/ArrayList;
    invoke-virtual { v1, p1, v2, v0 }, Landroidx/fragment/app/y;->q(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
  :L1
  .line 5
    iget-object p1, p0, Landroidx/fragment/app/y$c;->e:Ljava/lang/Object;
    if-eqz p1, :L2
  .line 6
    iget-object v1, p0, Landroidx/fragment/app/y$c;->g:Landroidx/fragment/app/y;
    iget-object v2, p0, Landroidx/fragment/app/y$c;->f:Ljava/util/ArrayList;
    invoke-virtual { v1, p1, v2, v0 }, Landroidx/fragment/app/y;->q(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
  :L2
    return-void
.end method
