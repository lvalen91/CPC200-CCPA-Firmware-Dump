.class Landroidx/databinding/ViewDataBinding$d;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/databinding/ViewDataBinding;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Landroidx/databinding/ViewDataBinding;

.method constructor <init>(Landroidx/databinding/ViewDataBinding;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/databinding/ViewDataBinding$d;->b:Landroidx/databinding/ViewDataBinding;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .catchall { :L0 .. :L1 } :L3
  .catchall { :L4 .. :L5 } :L3
  .registers 3
  .line 1
    monitor-enter p0
  :L0
  .line 2
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$d;->b:Landroidx/databinding/ViewDataBinding;
    const/4 v1, 0
    invoke-static { v0, v1 }, Landroidx/databinding/ViewDataBinding;->f(Landroidx/databinding/ViewDataBinding;Z)Z
  .line 3
    monitor-exit p0
  :L1
  .line 4
    invoke-static { }, Landroidx/databinding/ViewDataBinding;->g()V
  .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 19
    if-lt v0, v1, :L2
  .line 6
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$d;->b:Landroidx/databinding/ViewDataBinding;
    invoke-static { v0 }, Landroidx/databinding/ViewDataBinding;->h(Landroidx/databinding/ViewDataBinding;)Landroid/view/View;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/view/View;->isAttachedToWindow()Z
    move-result v0
    if-nez v0, :L2
  .line 7
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$d;->b:Landroidx/databinding/ViewDataBinding;
    invoke-static { v0 }, Landroidx/databinding/ViewDataBinding;->h(Landroidx/databinding/ViewDataBinding;)Landroid/view/View;
    move-result-object v0
    invoke-static { }, Landroidx/databinding/ViewDataBinding;->i()Landroid/view/View$OnAttachStateChangeListener;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
  .line 8
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$d;->b:Landroidx/databinding/ViewDataBinding;
    invoke-static { v0 }, Landroidx/databinding/ViewDataBinding;->h(Landroidx/databinding/ViewDataBinding;)Landroid/view/View;
    move-result-object v0
    invoke-static { }, Landroidx/databinding/ViewDataBinding;->i()Landroid/view/View$OnAttachStateChangeListener;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    return-void
  :L2
  .line 9
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$d;->b:Landroidx/databinding/ViewDataBinding;
    invoke-virtual { v0 }, Landroidx/databinding/ViewDataBinding;->p()V
    return-void
  :L3
    move-exception v0
  :L4
  .line 10
    monitor-exit p0
  :L5
    throw v0
.end method
