.class public final Landroidx/activity/d/a;
.super Ljava/lang/Object;
.source "SourceFile"

.field private final a:Ljava/util/Set;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/Set<",
      "Landroidx/activity/d/b;",
      ">;"
    }
  .end annotation
.end field

.field private volatile b:Landroid/content/Context;

.method public constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;
    invoke-direct { v0 }, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V
    iput-object v0, p0, Landroidx/activity/d/a;->a:Ljava/util/Set;
    return-void
.end method

.method public a(Landroidx/activity/d/b;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/activity/d/a;->b:Landroid/content/Context;
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Landroidx/activity/d/a;->b:Landroid/content/Context;
    invoke-interface { p1, v0 }, Landroidx/activity/d/b;->a(Landroid/content/Context;)V
  :L0
  .line 3
    iget-object v0, p0, Landroidx/activity/d/a;->a:Ljava/util/Set;
    invoke-interface { v0, p1 }, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    return-void
.end method

.method public b()V
  .registers 2
    const/4 v0, 0
  .line 1
    iput-object v0, p0, Landroidx/activity/d/a;->b:Landroid/content/Context;
    return-void
.end method

.method public c(Landroid/content/Context;)V
  .registers 4
  .line 1
    iput-object p1, p0, Landroidx/activity/d/a;->b:Landroid/content/Context;
  .line 2
    iget-object v0, p0, Landroidx/activity/d/a;->a:Ljava/util/Set;
    invoke-interface { v0 }, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/activity/d/b;
  .line 3
    invoke-interface { v1, p1 }, Landroidx/activity/d/b;->a(Landroid/content/Context;)V
    goto :L0
  :L1
    return-void
.end method

.method public d()Landroid/content/Context;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/activity/d/a;->b:Landroid/content/Context;
    return-object v0
.end method

.method public e(Landroidx/activity/d/b;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/activity/d/a;->a:Ljava/util/Set;
    invoke-interface { v0, p1 }, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    return-void
.end method
