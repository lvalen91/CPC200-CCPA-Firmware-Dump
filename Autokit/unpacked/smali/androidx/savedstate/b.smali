.class public final Landroidx/savedstate/b;
.super Ljava/lang/Object;
.source "SourceFile"

.field private final a:Landroidx/savedstate/c;

.field private final b:Landroidx/savedstate/SavedStateRegistry;

.method private constructor <init>(Landroidx/savedstate/c;)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Landroidx/savedstate/b;->a:Landroidx/savedstate/c;
  .line 3
    new-instance p1, Landroidx/savedstate/SavedStateRegistry;
    invoke-direct { p1 }, Landroidx/savedstate/SavedStateRegistry;-><init>()V
    iput-object p1, p0, Landroidx/savedstate/b;->b:Landroidx/savedstate/SavedStateRegistry;
    return-void
.end method

.method public static a(Landroidx/savedstate/c;)Landroidx/savedstate/b;
  .registers 2
  .line 1
    new-instance v0, Landroidx/savedstate/b;
    invoke-direct { v0, p0 }, Landroidx/savedstate/b;-><init>(Landroidx/savedstate/c;)V
    return-object v0
.end method

.method public b()Landroidx/savedstate/SavedStateRegistry;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/savedstate/b;->b:Landroidx/savedstate/SavedStateRegistry;
    return-object v0
.end method

.method public c(Landroid/os/Bundle;)V
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/savedstate/b;->a:Landroidx/savedstate/c;
    invoke-interface { v0 }, Landroidx/lifecycle/j;->getLifecycle()Landroidx/lifecycle/f;
    move-result-object v0
  .line 2
    invoke-virtual { v0 }, Landroidx/lifecycle/f;->b()Landroidx/lifecycle/f$c;
    move-result-object v1
    sget-object v2, Landroidx/lifecycle/f$c;->c:Landroidx/lifecycle/f$c;
    if-ne v1, v2, :L0
  .line 3
    new-instance v1, Landroidx/savedstate/Recreator;
    iget-object v2, p0, Landroidx/savedstate/b;->a:Landroidx/savedstate/c;
    invoke-direct { v1, v2 }, Landroidx/savedstate/Recreator;-><init>(Landroidx/savedstate/c;)V
    invoke-virtual { v0, v1 }, Landroidx/lifecycle/f;->a(Landroidx/lifecycle/i;)V
  .line 4
    iget-object v1, p0, Landroidx/savedstate/b;->b:Landroidx/savedstate/SavedStateRegistry;
    invoke-virtual { v1, v0, p1 }, Landroidx/savedstate/SavedStateRegistry;->b(Landroidx/lifecycle/f;Landroid/os/Bundle;)V
    return-void
  :L0
  .line 5
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string v0, "Restarter must be created only during owner's initialization stage"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public d(Landroid/os/Bundle;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/savedstate/b;->b:Landroidx/savedstate/SavedStateRegistry;
    invoke-virtual { v0, p1 }, Landroidx/savedstate/SavedStateRegistry;->c(Landroid/os/Bundle;)V
    return-void
.end method
