.class Landroidx/databinding/ViewDataBinding$j;
.super Ljava/lang/ref/WeakReference;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/databinding/ViewDataBinding;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "j"
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "<T:",
    "Ljava/lang/Object;",
    ">",
    "Ljava/lang/ref/WeakReference<",
    "Landroidx/databinding/ViewDataBinding;",
    ">;"
  }
.end annotation

.field private final a:Landroidx/databinding/ViewDataBinding$i;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Landroidx/databinding/ViewDataBinding$i<",
      "TT;>;"
    }
  .end annotation
.end field

.field protected final b:I

.field private c:Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "TT;"
    }
  .end annotation
.end field

.method public constructor <init>(Landroidx/databinding/ViewDataBinding;ILandroidx/databinding/ViewDataBinding$i;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/databinding/ViewDataBinding;",
      "I",
      "Landroidx/databinding/ViewDataBinding$i<",
      "TT;>;)V"
    }
  .end annotation
  .registers 5
  .line 1
    invoke-static { }, Landroidx/databinding/ViewDataBinding;->j()Ljava/lang/ref/ReferenceQueue;
    move-result-object v0
    invoke-direct { p0, p1, v0 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
  .line 2
    iput p2, p0, Landroidx/databinding/ViewDataBinding$j;->b:I
  .line 3
    iput-object p3, p0, Landroidx/databinding/ViewDataBinding$j;->a:Landroidx/databinding/ViewDataBinding$i;
    return-void
.end method

.method protected a()Landroidx/databinding/ViewDataBinding;
  .registers 2
  .line 1
    invoke-virtual { p0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroidx/databinding/ViewDataBinding;
    if-nez v0, :L0
  .line 2
    invoke-virtual { p0 }, Landroidx/databinding/ViewDataBinding$j;->e()Z
  :L0
    return-object v0
.end method

.method public b()Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()TT;"
    }
  .end annotation
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$j;->c:Ljava/lang/Object;
    return-object v0
.end method

.method public c(Landroidx/lifecycle/j;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$j;->a:Landroidx/databinding/ViewDataBinding$i;
    invoke-interface { v0, p1 }, Landroidx/databinding/ViewDataBinding$i;->b(Landroidx/lifecycle/j;)V
    return-void
.end method

.method public d(Ljava/lang/Object;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TT;)V"
    }
  .end annotation
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroidx/databinding/ViewDataBinding$j;->e()Z
  .line 2
    iput-object p1, p0, Landroidx/databinding/ViewDataBinding$j;->c:Ljava/lang/Object;
    if-eqz p1, :L0
  .line 3
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$j;->a:Landroidx/databinding/ViewDataBinding$i;
    invoke-interface { v0, p1 }, Landroidx/databinding/ViewDataBinding$i;->a(Ljava/lang/Object;)V
  :L0
    return-void
.end method

.method public e()Z
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$j;->c:Ljava/lang/Object;
    if-eqz v0, :L0
  .line 2
    iget-object v1, p0, Landroidx/databinding/ViewDataBinding$j;->a:Landroidx/databinding/ViewDataBinding$i;
    invoke-interface { v1, v0 }, Landroidx/databinding/ViewDataBinding$i;->d(Ljava/lang/Object;)V
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    const/4 v1, 0
  .line 3
    iput-object v1, p0, Landroidx/databinding/ViewDataBinding$j;->c:Ljava/lang/Object;
    return v0
.end method
