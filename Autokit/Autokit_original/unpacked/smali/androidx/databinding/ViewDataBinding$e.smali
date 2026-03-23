.class Landroidx/databinding/ViewDataBinding$e;
.super Ljava/lang/Object;
.implements Landroid/view/Choreographer$FrameCallback;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/databinding/ViewDataBinding;-><init>(Landroidx/databinding/e;Landroid/view/View;I)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Landroidx/databinding/ViewDataBinding;

.method constructor <init>(Landroidx/databinding/ViewDataBinding;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/databinding/ViewDataBinding$e;->a:Landroidx/databinding/ViewDataBinding;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public doFrame(J)V
  .registers 3
  .line 1
    iget-object p1, p0, Landroidx/databinding/ViewDataBinding$e;->a:Landroidx/databinding/ViewDataBinding;
    invoke-static { p1 }, Landroidx/databinding/ViewDataBinding;->e(Landroidx/databinding/ViewDataBinding;)Ljava/lang/Runnable;
    move-result-object p1
    invoke-interface { p1 }, Ljava/lang/Runnable;->run()V
    return-void
.end method
