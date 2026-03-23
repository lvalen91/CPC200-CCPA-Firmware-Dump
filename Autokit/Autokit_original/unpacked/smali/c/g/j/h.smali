.class public final Lc/g/j/h;
.super Ljava/lang/Object;
.source "SourceFile"

.method public constructor <init>()V
  .registers 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static a(ZLjava/lang/Object;)V
  .registers 2
    if-eqz p0, :L0
    return-void
  :L0
  .line 1
    new-instance p0, Ljava/lang/IllegalArgumentException;
    invoke-static { p1 }, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    move-result-object p1
    invoke-direct { p0, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p0
.end method

.method public static b(IIILjava/lang/String;)I
  .registers 9
    const/4 v0, 2
    const/4 v1, 1
    const/4 v2, 0
    const/4 v3, 3
    if-lt p0, p1, :L1
    if-gt p0, p2, :L0
    return p0
  :L0
  .line 1
    new-instance p0, Ljava/lang/IllegalArgumentException;
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;
    new-array v3, v3, [Ljava/lang/Object;
    aput-object p3, v3, v2
  .line 2
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p1
    aput-object p1, v3, v1
    invoke-static { p2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p1
    aput-object p1, v3, v0
    const-string p1, "%s is out of range of [%d, %d] (too high)"
  .line 3
    invoke-static { v4, p1, v3 }, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object p1
    invoke-direct { p0, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p0
  :L1
  .line 4
    new-instance p0, Ljava/lang/IllegalArgumentException;
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;
    new-array v3, v3, [Ljava/lang/Object;
    aput-object p3, v3, v2
  .line 5
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p1
    aput-object p1, v3, v1
    invoke-static { p2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p1
    aput-object p1, v3, v0
    const-string p1, "%s is out of range of [%d, %d] (too low)"
  .line 6
    invoke-static { v4, p1, v3 }, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object p1
    invoke-direct { p0, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p0
.end method

.method public static c(I)I
  .registers 1
    if-ltz p0, :L0
    return p0
  :L0
  .line 1
    new-instance p0, Ljava/lang/IllegalArgumentException;
    invoke-direct { p0 }, Ljava/lang/IllegalArgumentException;-><init>()V
    throw p0
.end method

.method public static d(II)I
  .registers 5
    and-int v0, p0, p1
    if-ne v0, p0, :L0
    return p0
  :L0
  .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Requested flags 0x"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 2
    invoke-static { p0 }, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
    move-result-object p0
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p0, ", but only 0x"
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 3
    invoke-static { p1 }, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
    move-result-object p0
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p0, " are allowed"
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    invoke-direct { v0, p0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public static e(Ljava/lang/Object;)Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "<T:",
      "Ljava/lang/Object;",
      ">(TT;)TT;"
    }
  .end annotation
  .registers 1
    if-eqz p0, :L0
    return-object p0
  :L0
    const/4 p0, 0
  .line 1
    throw p0
.end method

.method public static f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "<T:",
      "Ljava/lang/Object;",
      ">(TT;",
      "Ljava/lang/Object;",
      ")TT;"
    }
  .end annotation
  .registers 2
    if-eqz p0, :L0
    return-object p0
  :L0
  .line 1
    new-instance p0, Ljava/lang/NullPointerException;
    invoke-static { p1 }, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    move-result-object p1
    invoke-direct { p0, p1 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p0
.end method
