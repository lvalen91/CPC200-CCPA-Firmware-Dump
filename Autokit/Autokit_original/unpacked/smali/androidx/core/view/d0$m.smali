.class public final Landroidx/core/view/d0$m;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/core/view/d0;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 25
  name = "m"
.end annotation

.method static a(I)I
  .registers 4
    const/4 v0, 1
    if-eq p0, v0, :L8
    const/4 v1, 2
    if-eq p0, v1, :L7
    const/4 v0, 4
    if-eq p0, v0, :L6
    const/16 v1, 8
    if-eq p0, v1, :L5
    const/16 v2, 16
    if-eq p0, v2, :L4
    const/16 v0, 32
    if-eq p0, v0, :L3
    const/16 v0, 64
    if-eq p0, v0, :L2
    const/16 v0, 128
    if-eq p0, v0, :L1
    const/16 v0, 256
    if-ne p0, v0, :L0
    return v1
  :L0
  .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "type needs to be >= FIRST and <= LAST, type="
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    invoke-direct { v0, p0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
  :L1
    const/4 p0, 7
    return p0
  :L2
    const/4 p0, 6
    return p0
  :L3
    const/4 p0, 5
    return p0
  :L4
    return v0
  :L5
    const/4 p0, 3
    return p0
  :L6
    return v1
  :L7
    return v0
  :L8
    const/4 p0, 0
    return p0
.end method
