.class Landroidx/databinding/ViewDataBinding$OnStartListener;
.super Ljava/lang/Object;
.implements Landroidx/lifecycle/i;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/databinding/ViewDataBinding;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = "OnStartListener"
.end annotation

.field final a:Ljava/lang/ref/WeakReference;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/ref/WeakReference<",
      "Landroidx/databinding/ViewDataBinding;",
      ">;"
    }
  .end annotation
.end field

.method private constructor <init>(Landroidx/databinding/ViewDataBinding;)V
  .registers 3
  .line 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;
    invoke-direct { v0, p1 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    iput-object v0, p0, Landroidx/databinding/ViewDataBinding$OnStartListener;->a:Ljava/lang/ref/WeakReference;
    return-void
.end method

.method synthetic constructor <init>(Landroidx/databinding/ViewDataBinding;Landroidx/databinding/ViewDataBinding$a;)V
  .registers 3
  .line 1
    invoke-direct { p0, p1 }, Landroidx/databinding/ViewDataBinding$OnStartListener;-><init>(Landroidx/databinding/ViewDataBinding;)V
    return-void
.end method

.method public onStart()V
  .annotation runtime Landroidx/lifecycle/q;
    value = .enum Landroidx/lifecycle/f$b;->ON_START:Landroidx/lifecycle/f$b;
  .end annotation
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$OnStartListener;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroidx/databinding/ViewDataBinding;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Landroidx/databinding/ViewDataBinding;->p()V
  :L0
    return-void
.end method
