.class Lokhttp3/CipherSuite$1;
.super Ljava/lang/Object;
.implements Ljava/util/Comparator;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lokhttp3/CipherSuite;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "Ljava/lang/Object;",
    "Ljava/util/Comparator<",
    "Ljava/lang/String;",
    ">;"
  }
.end annotation

.method constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
  .registers 3
  .line 1
    check-cast p1, Ljava/lang/String;
    check-cast p2, Ljava/lang/String;
    invoke-virtual { p0, p1, p2 }, Lokhttp3/CipherSuite$1;->compare(Ljava/lang/String;Ljava/lang/String;)I
    move-result p1
    return p1
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
  .registers 9
  .line 2
    invoke-virtual { p1 }, Ljava/lang/String;->length()I
    move-result v0
    invoke-virtual { p2 }, Ljava/lang/String;->length()I
    move-result v1
    invoke-static { v0, v1 }, Ljava/lang/Math;->min(II)I
    move-result v0
    const/4 v1, 4
  :L0
    const/4 v2, -1
    const/4 v3, 1
    if-ge v1, v0, :L4
  .line 3
    invoke-virtual { p1, v1 }, Ljava/lang/String;->charAt(I)C
    move-result v4
  .line 4
    invoke-virtual { p2, v1 }, Ljava/lang/String;->charAt(I)C
    move-result v5
    if-eq v4, v5, :L3
    if-ge v4, v5, :L1
    goto :L2
  :L1
    const/4 v2, 1
  :L2
    return v2
  :L3
    add-int/lit8 v1, v1, 1
    goto :L0
  :L4
  .line 5
    invoke-virtual { p1 }, Ljava/lang/String;->length()I
    move-result p1
  .line 6
    invoke-virtual { p2 }, Ljava/lang/String;->length()I
    move-result p2
    if-eq p1, p2, :L7
    if-ge p1, p2, :L5
    goto :L6
  :L5
    const/4 v2, 1
  :L6
    return v2
  :L7
    const/4 p1, 0
    return p1
.end method
