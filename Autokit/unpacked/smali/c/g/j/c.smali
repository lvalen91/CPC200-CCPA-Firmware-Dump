.class public Lc/g/j/c;
.super Ljava/lang/Object;
.source "SourceFile"

.method public constructor <init>()V
  .registers 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Z
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 19
    if-lt v0, v1, :L0
  .line 2
    invoke-static { p0, p1 }, La;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
    move-result p0
    return p0
  :L0
    if-eq p0, p1, :L2
    if-eqz p0, :L1
  .line 3
    invoke-virtual { p0, p1 }, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    move-result p0
    if-eqz p0, :L1
    goto :L2
  :L1
    const/4 p0, 0
    goto :L3
  :L2
    const/4 p0, 1
  :L3
    return p0
.end method

.method public static varargs b([Ljava/lang/Object;)I
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 19
    if-lt v0, v1, :L0
  .line 2
    invoke-static { p0 }, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I
    move-result p0
    return p0
  :L0
  .line 3
    invoke-static { p0 }, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I
    move-result p0
    return p0
.end method
