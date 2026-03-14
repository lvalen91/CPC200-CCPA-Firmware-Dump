.class Lc/g/h/c$a;
.super Ljava/lang/Object;
.implements Ljava/util/Comparator;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lc/g/h/c;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "Ljava/lang/Object;",
    "Ljava/util/Comparator<",
    "[B>;"
  }
.end annotation

.method constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a([B[B)I
  .registers 7
  .line 1
    array-length v0, p1
    array-length v1, p2
    if-eq v0, v1, :L1
  .line 2
    array-length p1, p1
    array-length p2, p2
  :L0
    sub-int/2addr p1, p2
    return p1
  :L1
    const/4 v0, 0
    const/4 v1, 0
  :L2
  .line 3
    array-length v2, p1
    if-ge v1, v2, :L4
  .line 4
    aget-byte v2, p1, v1
    aget-byte v3, p2, v1
    if-eq v2, v3, :L3
  .line 5
    aget-byte p1, p1, v1
    aget-byte p2, p2, v1
    goto :L0
  :L3
    add-int/lit8 v1, v1, 1
    goto :L2
  :L4
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
  .registers 3
  .line 1
    check-cast p1, [B
    check-cast p2, [B
    invoke-virtual { p0, p1, p2 }, Lc/g/h/c$a;->a([B[B)I
    move-result p1
    return p1
.end method
