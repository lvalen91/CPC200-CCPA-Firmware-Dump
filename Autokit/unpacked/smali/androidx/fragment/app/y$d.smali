.class Landroidx/fragment/app/y$d;
.super Ljava/lang/Object;
.implements Landroid/transition/Transition$TransitionListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/fragment/app/y;->w(Landroidx/fragment/app/Fragment;Ljava/lang/Object;Lc/g/g/b;Ljava/lang/Runnable;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Ljava/lang/Runnable;

.method constructor <init>(Landroidx/fragment/app/y;Ljava/lang/Runnable;)V
  .registers 3
  .line 1
    iput-object p2, p0, Landroidx/fragment/app/y$d;->a:Ljava/lang/Runnable;
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
    iget-object p1, p0, Landroidx/fragment/app/y$d;->a:Ljava/lang/Runnable;
    invoke-interface { p1 }, Ljava/lang/Runnable;->run()V
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
    return-void
.end method
