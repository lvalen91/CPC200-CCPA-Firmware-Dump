.class public final Lokhttp3/internal/connection/RouteSelector$Selection;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lokhttp3/internal/connection/RouteSelector;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 25
  name = "Selection"
.end annotation

.field private nextRouteIndex:I

.field private final routes:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List<",
      "Lokhttp3/Route;",
      ">;"
    }
  .end annotation
.end field

.method constructor <init>(Ljava/util/List;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/List<",
      "Lokhttp3/Route;",
      ">;)V"
    }
  .end annotation
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 0
  .line 2
    iput v0, p0, Lokhttp3/internal/connection/RouteSelector$Selection;->nextRouteIndex:I
  .line 3
    iput-object p1, p0, Lokhttp3/internal/connection/RouteSelector$Selection;->routes:Ljava/util/List;
    return-void
.end method

.method public getAll()Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Ljava/util/List<",
      "Lokhttp3/Route;",
      ">;"
    }
  .end annotation
  .registers 3
  .line 1
    new-instance v0, Ljava/util/ArrayList;
    iget-object v1, p0, Lokhttp3/internal/connection/RouteSelector$Selection;->routes:Ljava/util/List;
    invoke-direct { v0, v1 }, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    return-object v0
.end method

.method public hasNext()Z
  .registers 3
  .line 1
    iget v0, p0, Lokhttp3/internal/connection/RouteSelector$Selection;->nextRouteIndex:I
    iget-object v1, p0, Lokhttp3/internal/connection/RouteSelector$Selection;->routes:Ljava/util/List;
    invoke-interface { v1 }, Ljava/util/List;->size()I
    move-result v1
    if-ge v0, v1, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public next()Lokhttp3/Route;
  .registers 4
  .line 1
    invoke-virtual { p0 }, Lokhttp3/internal/connection/RouteSelector$Selection;->hasNext()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Lokhttp3/internal/connection/RouteSelector$Selection;->routes:Ljava/util/List;
    iget v1, p0, Lokhttp3/internal/connection/RouteSelector$Selection;->nextRouteIndex:I
    add-int/lit8 v2, v1, 1
    iput v2, p0, Lokhttp3/internal/connection/RouteSelector$Selection;->nextRouteIndex:I
    invoke-interface { v0, v1 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lokhttp3/Route;
    return-object v0
  :L0
  .line 3
    new-instance v0, Ljava/util/NoSuchElementException;
    invoke-direct { v0 }, Ljava/util/NoSuchElementException;-><init>()V
    throw v0
.end method
