.class public final Landroidx/activity/OnBackPressedDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;,
    Landroidx/activity/OnBackPressedDispatcher$a;
  }
.end annotation

.field private final a:Ljava/lang/Runnable;

.field final b:Ljava/util/ArrayDeque;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayDeque<",
      "Landroidx/activity/b;",
      ">;"
    }
  .end annotation
.end field

.method public constructor <init>(Ljava/lang/Runnable;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Ljava/util/ArrayDeque;
    invoke-direct { v0 }, Ljava/util/ArrayDeque;-><init>()V
    iput-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->b:Ljava/util/ArrayDeque;
  .line 3
    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher;->a:Ljava/lang/Runnable;
    return-void
.end method

.method public a(Landroidx/lifecycle/j;Landroidx/activity/b;)V
  .annotation build Landroid/annotation/SuppressLint;
    value = {
      "LambdaLast"
    }
  .end annotation
  .registers 5
  .line 1
    invoke-interface { p1 }, Landroidx/lifecycle/j;->getLifecycle()Landroidx/lifecycle/f;
    move-result-object p1
  .line 2
    invoke-virtual { p1 }, Landroidx/lifecycle/f;->b()Landroidx/lifecycle/f$c;
    move-result-object v0
    sget-object v1, Landroidx/lifecycle/f$c;->b:Landroidx/lifecycle/f$c;
    if-ne v0, v1, :L0
    return-void
  :L0
  .line 3
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;
    invoke-direct { v0, p0, p1, p2 }, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;-><init>(Landroidx/activity/OnBackPressedDispatcher;Landroidx/lifecycle/f;Landroidx/activity/b;)V
    invoke-virtual { p2, v0 }, Landroidx/activity/b;->a(Landroidx/activity/a;)V
    return-void
.end method

.method b(Landroidx/activity/b;)Landroidx/activity/a;
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->b:Ljava/util/ArrayDeque;
    invoke-virtual { v0, p1 }, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z
  .line 2
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher$a;
    invoke-direct { v0, p0, p1 }, Landroidx/activity/OnBackPressedDispatcher$a;-><init>(Landroidx/activity/OnBackPressedDispatcher;Landroidx/activity/b;)V
  .line 3
    invoke-virtual { p1, v0 }, Landroidx/activity/b;->a(Landroidx/activity/a;)V
    return-object v0
.end method

.method public c()V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->b:Ljava/util/ArrayDeque;
  .line 2
    invoke-virtual { v0 }, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
  .line 3
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L1
  .line 4
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/activity/b;
  .line 5
    invoke-virtual { v1 }, Landroidx/activity/b;->c()Z
    move-result v2
    if-eqz v2, :L0
  .line 6
    invoke-virtual { v1 }, Landroidx/activity/b;->b()V
    return-void
  :L1
  .line 7
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->a:Ljava/lang/Runnable;
    if-eqz v0, :L2
  .line 8
    invoke-interface { v0 }, Ljava/lang/Runnable;->run()V
  :L2
    return-void
.end method
