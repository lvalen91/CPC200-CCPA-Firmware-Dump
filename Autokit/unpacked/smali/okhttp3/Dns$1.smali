.class Lokhttp3/Dns$1;
.super Ljava/lang/Object;
.implements Lokhttp3/Dns;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lokhttp3/Dns;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.method constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public lookup(Ljava/lang/String;)Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/String;",
      ")",
      "Ljava/util/List<",
      "Ljava/net/InetAddress;",
      ">;"
    }
  .end annotation
  .catch Ljava/lang/NullPointerException; { :L0 .. :L1 } :L2
  .registers 6
    if-eqz p1, :L3
  :L0
  .line 1
    invoke-static { p1 }, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    move-result-object v0
    invoke-static { v0 }, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    move-result-object p1
  :L1
    return-object p1
  :L2
    move-exception v0
  .line 2
    new-instance v1, Ljava/net/UnknownHostException;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "Broken system behaviour for dns lookup of "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v1, p1 }, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V
  .line 3
    invoke-virtual { v1, v0 }, Ljava/net/UnknownHostException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
  .line 4
    throw v1
  :L3
  .line 5
    new-instance p1, Ljava/net/UnknownHostException;
    const-string v0, "hostname == null"
    invoke-direct { p1, v0 }, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V
    throw p1
.end method
