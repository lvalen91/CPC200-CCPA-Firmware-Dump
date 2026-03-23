.class Lc/g/h/e$d;
.super Ljava/lang/Object;
.implements Lc/g/j/a;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lc/g/h/e;->d(Landroid/content/Context;Lc/g/h/d;ILjava/util/concurrent/Executor;Lc/g/h/a;)Landroid/graphics/Typeface;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "Ljava/lang/Object;",
    "Lc/g/j/a<",
    "Lc/g/h/e$e;",
    ">;"
  }
.end annotation

.field final synthetic a:Ljava/lang/String;

.method constructor <init>(Ljava/lang/String;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lc/g/h/e$d;->a:Ljava/lang/String;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
  .registers 2
  .line 1
    check-cast p1, Lc/g/h/e$e;
    invoke-virtual { p0, p1 }, Lc/g/h/e$d;->b(Lc/g/h/e$e;)V
    return-void
.end method

.method public b(Lc/g/h/e$e;)V
  .catchall { :L0 .. :L2 } :L5
  .catchall { :L6 .. :L7 } :L5
  .registers 6
  .line 1
    sget-object v0, Lc/g/h/e;->c:Ljava/lang/Object;
    monitor-enter v0
  :L0
  .line 2
    sget-object v1, Lc/g/h/e;->d:Lc/d/g;
    iget-object v2, p0, Lc/g/h/e$d;->a:Ljava/lang/String;
    invoke-virtual { v1, v2 }, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/util/ArrayList;
    if-nez v1, :L1
  .line 3
    monitor-exit v0
    return-void
  :L1
  .line 4
    sget-object v2, Lc/g/h/e;->d:Lc/d/g;
    iget-object v3, p0, Lc/g/h/e$d;->a:Ljava/lang/String;
    invoke-virtual { v2, v3 }, Lc/d/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;
  .line 5
    monitor-exit v0
  :L2
    const/4 v0, 0
  :L3
  .line 6
    invoke-virtual { v1 }, Ljava/util/ArrayList;->size()I
    move-result v2
    if-ge v0, v2, :L4
  .line 7
    invoke-virtual { v1, v0 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lc/g/j/a;
    invoke-interface { v2, p1 }, Lc/g/j/a;->a(Ljava/lang/Object;)V
    add-int/lit8 v0, v0, 1
    goto :L3
  :L4
    return-void
  :L5
    move-exception p1
  :L6
  .line 8
    monitor-exit v0
  :L7
    goto :L9
  :L8
    throw p1
  :L9
    goto :L8
.end method
