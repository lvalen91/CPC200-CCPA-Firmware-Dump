.class public Lc/g/j/f;
.super Ljava/lang/Object;
.implements Lc/g/j/e;
.source "SourceFile"

.annotation system Ldalvik/annotation/Signature;
  value = {
    "<T:",
    "Ljava/lang/Object;",
    ">",
    "Ljava/lang/Object;",
    "Lc/g/j/e<",
    "TT;>;"
  }
.end annotation

.field private final a:[Ljava/lang/Object;

.field private b:I

.method public constructor <init>(I)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    if-lez p1, :L0
  .line 2
    new-array p1, p1, [Ljava/lang/Object;
    iput-object p1, p0, Lc/g/j/f;->a:[Ljava/lang/Object;
    return-void
  :L0
  .line 3
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string v0, "The max pool size must be > 0"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method private c(Ljava/lang/Object;)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TT;)Z"
    }
  .end annotation
  .registers 5
    const/4 v0, 0
    const/4 v1, 0
  :L0
  .line 1
    iget v2, p0, Lc/g/j/f;->b:I
    if-ge v1, v2, :L2
  .line 2
    iget-object v2, p0, Lc/g/j/f;->a:[Ljava/lang/Object;
    aget-object v2, v2, v1
    if-ne v2, p1, :L1
    const/4 p1, 1
    return p1
  :L1
    add-int/lit8 v1, v1, 1
    goto :L0
  :L2
    return v0
.end method

.method public a(Ljava/lang/Object;)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TT;)Z"
    }
  .end annotation
  .registers 5
  .line 1
    invoke-direct { p0, p1 }, Lc/g/j/f;->c(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L1
  .line 2
    iget v0, p0, Lc/g/j/f;->b:I
    iget-object v1, p0, Lc/g/j/f;->a:[Ljava/lang/Object;
    array-length v2, v1
    if-ge v0, v2, :L0
  .line 3
    aput-object p1, v1, v0
    const/4 p1, 1
    add-int/2addr v0, p1
  .line 4
    iput v0, p0, Lc/g/j/f;->b:I
    return p1
  :L0
    const/4 p1, 0
    return p1
  :L1
  .line 5
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string v0, "Already in the pool!"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public b()Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()TT;"
    }
  .end annotation
  .registers 6
  .line 1
    iget v0, p0, Lc/g/j/f;->b:I
    const/4 v1, 0
    if-lez v0, :L0
    add-int/lit8 v2, v0, -1
  .line 2
    iget-object v3, p0, Lc/g/j/f;->a:[Ljava/lang/Object;
    aget-object v4, v3, v2
  .line 3
    aput-object v1, v3, v2
    add-int/lit8 v0, v0, -1
  .line 4
    iput v0, p0, Lc/g/j/f;->b:I
    return-object v4
  :L0
    return-object v1
.end method
