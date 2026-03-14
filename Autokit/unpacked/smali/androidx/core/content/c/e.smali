.class final Landroidx/core/content/c/e;
.super Ljava/lang/Object;
.source "SourceFile"

.method public static a([III)[I
  .registers 5
    add-int/lit8 v0, p1, 1
  .line 1
    array-length v1, p0
    if-le v0, v1, :L0
  .line 2
    invoke-static { p1 }, Landroidx/core/content/c/e;->c(I)I
    move-result v0
    new-array v0, v0, [I
    const/4 v1, 0
  .line 3
    invoke-static { p0, v1, v0, v1, p1 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    move-object p0, v0
  :L0
  .line 4
    aput p2, p0, p1
    return-object p0
.end method

.method public static b([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "<T:",
      "Ljava/lang/Object;",
      ">([TT;ITT;)[TT;"
    }
  .end annotation
  .registers 5
    add-int/lit8 v0, p1, 1
  .line 1
    array-length v1, p0
    if-le v0, v1, :L0
  .line 2
    invoke-virtual { p0 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;
    move-result-object v0
  .line 3
    invoke-static { p1 }, Landroidx/core/content/c/e;->c(I)I
    move-result v1
  .line 4
    invoke-static { v0, v1 }, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, [Ljava/lang/Object;
    const/4 v1, 0
  .line 5
    invoke-static { p0, v1, v0, v1, p1 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    move-object p0, v0
  :L0
  .line 6
    aput-object p2, p0, p1
    return-object p0
.end method

.method public static c(I)I
  .registers 2
    const/4 v0, 4
    if-gt p0, v0, :L0
    const/16 p0, 8
    goto :L1
  :L0
    mul-int/lit8 p0, p0, 2
  :L1
    return p0
.end method
