.class public final enum Lokhttp3/TlsVersion;
.super Ljava/lang/Enum;
.source "SourceFile"

.annotation system Ldalvik/annotation/Signature;
  value = {
    "Ljava/lang/Enum<",
    "Lokhttp3/TlsVersion;",
    ">;"
  }
.end annotation

.field private final static synthetic $VALUES:[Lokhttp3/TlsVersion;

.field public final static enum SSL_3_0:Lokhttp3/TlsVersion;

.field public final static enum TLS_1_0:Lokhttp3/TlsVersion;

.field public final static enum TLS_1_1:Lokhttp3/TlsVersion;

.field public final static enum TLS_1_2:Lokhttp3/TlsVersion;

.field public final static enum TLS_1_3:Lokhttp3/TlsVersion;

.field final javaName:Ljava/lang/String;

.method static constructor <clinit>()V
  .registers 8
  .line 1
    new-instance v0, Lokhttp3/TlsVersion;
    const-string v1, "TLS_1_3"
    const/4 v2, 0
    const-string v3, "TLSv1.3"
    invoke-direct { v0, v1, v2, v3 }, Lokhttp3/TlsVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V
    sput-object v0, Lokhttp3/TlsVersion;->TLS_1_3:Lokhttp3/TlsVersion;
  .line 2
    new-instance v0, Lokhttp3/TlsVersion;
    const-string v1, "TLS_1_2"
    const/4 v3, 1
    const-string v4, "TLSv1.2"
    invoke-direct { v0, v1, v3, v4 }, Lokhttp3/TlsVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V
    sput-object v0, Lokhttp3/TlsVersion;->TLS_1_2:Lokhttp3/TlsVersion;
  .line 3
    new-instance v0, Lokhttp3/TlsVersion;
    const-string v1, "TLS_1_1"
    const/4 v4, 2
    const-string v5, "TLSv1.1"
    invoke-direct { v0, v1, v4, v5 }, Lokhttp3/TlsVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V
    sput-object v0, Lokhttp3/TlsVersion;->TLS_1_1:Lokhttp3/TlsVersion;
  .line 4
    new-instance v0, Lokhttp3/TlsVersion;
    const-string v1, "TLS_1_0"
    const/4 v5, 3
    const-string v6, "TLSv1"
    invoke-direct { v0, v1, v5, v6 }, Lokhttp3/TlsVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V
    sput-object v0, Lokhttp3/TlsVersion;->TLS_1_0:Lokhttp3/TlsVersion;
  .line 5
    new-instance v0, Lokhttp3/TlsVersion;
    const-string v1, "SSL_3_0"
    const/4 v6, 4
    const-string v7, "SSLv3"
    invoke-direct { v0, v1, v6, v7 }, Lokhttp3/TlsVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V
    sput-object v0, Lokhttp3/TlsVersion;->SSL_3_0:Lokhttp3/TlsVersion;
    const/4 v1, 5
    new-array v1, v1, [Lokhttp3/TlsVersion;
  .line 6
    sget-object v7, Lokhttp3/TlsVersion;->TLS_1_3:Lokhttp3/TlsVersion;
    aput-object v7, v1, v2
    sget-object v2, Lokhttp3/TlsVersion;->TLS_1_2:Lokhttp3/TlsVersion;
    aput-object v2, v1, v3
    sget-object v2, Lokhttp3/TlsVersion;->TLS_1_1:Lokhttp3/TlsVersion;
    aput-object v2, v1, v4
    sget-object v2, Lokhttp3/TlsVersion;->TLS_1_0:Lokhttp3/TlsVersion;
    aput-object v2, v1, v5
    aput-object v0, v1, v6
    sput-object v1, Lokhttp3/TlsVersion;->$VALUES:[Lokhttp3/TlsVersion;
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/String;",
      ")V"
    }
  .end annotation
  .registers 4
  .line 1
    invoke-direct { p0, p1, p2 }, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
  .line 2
    iput-object p3, p0, Lokhttp3/TlsVersion;->javaName:Ljava/lang/String;
    return-void
.end method

.method public static forJavaName(Ljava/lang/String;)Lokhttp3/TlsVersion;
  .registers 7
  .line 1
    invoke-virtual { p0 }, Ljava/lang/String;->hashCode()I
    move-result v0
    const v1, 79201641
    const/4 v2, 4
    const/4 v3, 3
    const/4 v4, 2
    const/4 v5, 1
    if-eq v0, v1, :L4
    const v1, 79923350
    if-eq v0, v1, :L3
    packed-switch v0, :L12
    goto :L5
  :L0
    const-string v0, "TLSv1.3"
    invoke-virtual { p0, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L5
    const/4 v0, 0
    goto :L6
  :L1
    const-string v0, "TLSv1.2"
    invoke-virtual { p0, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L5
    const/4 v0, 1
    goto :L6
  :L2
    const-string v0, "TLSv1.1"
    invoke-virtual { p0, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L5
    const/4 v0, 2
    goto :L6
  :L3
    const-string v0, "TLSv1"
    invoke-virtual { p0, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L5
    const/4 v0, 3
    goto :L6
  :L4
    const-string v0, "SSLv3"
    invoke-virtual { p0, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L5
    const/4 v0, 4
    goto :L6
  :L5
    const/4 v0, -1
  :L6
    if-eqz v0, :L11
    if-eq v0, v5, :L10
    if-eq v0, v4, :L9
    if-eq v0, v3, :L8
    if-ne v0, v2, :L7
  .line 2
    sget-object p0, Lokhttp3/TlsVersion;->SSL_3_0:Lokhttp3/TlsVersion;
    return-object p0
  :L7
  .line 3
    new-instance v0, Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Unexpected TLS version: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    invoke-direct { v0, p0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
  :L8
  .line 4
    sget-object p0, Lokhttp3/TlsVersion;->TLS_1_0:Lokhttp3/TlsVersion;
    return-object p0
  :L9
  .line 5
    sget-object p0, Lokhttp3/TlsVersion;->TLS_1_1:Lokhttp3/TlsVersion;
    return-object p0
  :L10
  .line 6
    sget-object p0, Lokhttp3/TlsVersion;->TLS_1_2:Lokhttp3/TlsVersion;
    return-object p0
  :L11
  .line 7
    sget-object p0, Lokhttp3/TlsVersion;->TLS_1_3:Lokhttp3/TlsVersion;
    return-object p0
  :L12
  .packed-switch -503070503
    :L2
    :L1
    :L0
  .end packed-switch
.end method

.method static varargs forJavaNames([Ljava/lang/String;)Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "([",
      "Ljava/lang/String;",
      ")",
      "Ljava/util/List<",
      "Lokhttp3/TlsVersion;",
      ">;"
    }
  .end annotation
  .registers 5
  .line 1
    new-instance v0, Ljava/util/ArrayList;
    array-length v1, p0
    invoke-direct { v0, v1 }, Ljava/util/ArrayList;-><init>(I)V
  .line 2
    array-length v1, p0
    const/4 v2, 0
  :L0
    if-ge v2, v1, :L1
    aget-object v3, p0, v2
  .line 3
    invoke-static { v3 }, Lokhttp3/TlsVersion;->forJavaName(Ljava/lang/String;)Lokhttp3/TlsVersion;
    move-result-object v3
    invoke-interface { v0, v3 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    add-int/lit8 v2, v2, 1
    goto :L0
  :L1
  .line 4
    invoke-static { v0 }, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    move-result-object p0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lokhttp3/TlsVersion;
  .registers 2
  .line 1
    const-class v0, Lokhttp3/TlsVersion;
    invoke-static { v0, p0 }, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    move-result-object p0
    check-cast p0, Lokhttp3/TlsVersion;
    return-object p0
.end method

.method public static values()[Lokhttp3/TlsVersion;
  .registers 3
  .line 1
    sget-object v0, Lokhttp3/TlsVersion;->$VALUES:[Lokhttp3/TlsVersion;
    invoke-virtual { v0 }, [Lokhttp3/TlsVersion;->clone()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, [Lokhttp3/TlsVersion;
    return-object v0
.end method

.method public javaName()Ljava/lang/String;
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/TlsVersion;->javaName:Ljava/lang/String;
    return-object v0
.end method
