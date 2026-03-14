.class Lc/e/b/g;
.super Ljava/lang/Object;
.implements Lc/e/b/f;
.source "SourceFile"

.annotation system Ldalvik/annotation/Signature;
  value = {
    "<T:",
    "Ljava/lang/Object;",
    ">",
    "Ljava/lang/Object;",
    "Lc/e/b/f<",
    "TT;>;"
  }
.end annotation

.field private final a:[Ljava/lang/Object;

.field private b:I

.method constructor <init>(I)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    if-lez p1, :L0
  .line 2
    new-array p1, p1, [Ljava/lang/Object;
    iput-object p1, p0, Lc/e/b/g;->a:[Ljava/lang/Object;
    return-void
  :L0
  .line 3
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string v0, "The max pool size must be > 0"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public a(Ljava/lang/Object;)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TT;)Z"
    }
  .end annotation
  .registers 5
  .line 1
    iget v0, p0, Lc/e/b/g;->b:I
    iget-object v1, p0, Lc/e/b/g;->a:[Ljava/lang/Object;
    array-length v2, v1
    if-ge v0, v2, :L0
  .line 2
    aput-object p1, v1, v0
    const/4 p1, 1
    add-int/2addr v0, p1
  .line 3
    iput v0, p0, Lc/e/b/g;->b:I
    return p1
  :L0
    const/4 p1, 0
    return p1
.end method

.method public b()Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()TT;"
    }
  .end annotation
  .registers 6
  .line 1
    iget v0, p0, Lc/e/b/g;->b:I
    const/4 v1, 0
    if-lez v0, :L0
    add-int/lit8 v2, v0, -1
  .line 2
    iget-object v3, p0, Lc/e/b/g;->a:[Ljava/lang/Object;
    aget-object v4, v3, v2
  .line 3
    aput-object v1, v3, v2
    add-int/lit8 v0, v0, -1
  .line 4
    iput v0, p0, Lc/e/b/g;->b:I
    return-object v4
  :L0
    return-object v1
.end method

.method public c([Ljava/lang/Object;I)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "([TT;I)V"
    }
  .end annotation
  .registers 8
  .line 1
    array-length v0, p1
    if-le p2, v0, :L0
  .line 2
    array-length p2, p1
  :L0
    const/4 v0, 0
  :L1
    if-ge v0, p2, :L3
  .line 3
    aget-object v1, p1, v0
  .line 4
    iget v2, p0, Lc/e/b/g;->b:I
    iget-object v3, p0, Lc/e/b/g;->a:[Ljava/lang/Object;
    array-length v4, v3
    if-ge v2, v4, :L2
  .line 5
    aput-object v1, v3, v2
    add-int/lit8 v2, v2, 1
  .line 6
    iput v2, p0, Lc/e/b/g;->b:I
  :L2
    add-int/lit8 v0, v0, 1
    goto :L1
  :L3
    return-void
.end method
