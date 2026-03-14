.class public final enum Lokhttp3/Protocol;
.super Ljava/lang/Enum;
.source "SourceFile"

.annotation system Ldalvik/annotation/Signature;
  value = {
    "Ljava/lang/Enum<",
    "Lokhttp3/Protocol;",
    ">;"
  }
.end annotation

.field private final static synthetic $VALUES:[Lokhttp3/Protocol;

.field public final static enum H2_PRIOR_KNOWLEDGE:Lokhttp3/Protocol;

.field public final static enum HTTP_1_0:Lokhttp3/Protocol;

.field public final static enum HTTP_1_1:Lokhttp3/Protocol;

.field public final static enum HTTP_2:Lokhttp3/Protocol;

.field public final static enum QUIC:Lokhttp3/Protocol;

.field public final static enum SPDY_3:Lokhttp3/Protocol;

.field private final protocol:Ljava/lang/String;

.method static constructor <clinit>()V
  .registers 10
  .line 1
    new-instance v0, Lokhttp3/Protocol;
    const-string v1, "HTTP_1_0"
    const/4 v2, 0
    const-string v3, "http/1.0"
    invoke-direct { v0, v1, v2, v3 }, Lokhttp3/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V
    sput-object v0, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;
  .line 2
    new-instance v0, Lokhttp3/Protocol;
    const-string v1, "HTTP_1_1"
    const/4 v3, 1
    const-string v4, "http/1.1"
    invoke-direct { v0, v1, v3, v4 }, Lokhttp3/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V
    sput-object v0, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;
  .line 3
    new-instance v0, Lokhttp3/Protocol;
    const-string v1, "SPDY_3"
    const/4 v4, 2
    const-string v5, "spdy/3.1"
    invoke-direct { v0, v1, v4, v5 }, Lokhttp3/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V
    sput-object v0, Lokhttp3/Protocol;->SPDY_3:Lokhttp3/Protocol;
  .line 4
    new-instance v0, Lokhttp3/Protocol;
    const-string v1, "HTTP_2"
    const/4 v5, 3
    const-string v6, "h2"
    invoke-direct { v0, v1, v5, v6 }, Lokhttp3/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V
    sput-object v0, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;
  .line 5
    new-instance v0, Lokhttp3/Protocol;
    const-string v1, "H2_PRIOR_KNOWLEDGE"
    const/4 v6, 4
    const-string v7, "h2_prior_knowledge"
    invoke-direct { v0, v1, v6, v7 }, Lokhttp3/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V
    sput-object v0, Lokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp3/Protocol;
  .line 6
    new-instance v0, Lokhttp3/Protocol;
    const-string v1, "QUIC"
    const/4 v7, 5
    const-string v8, "quic"
    invoke-direct { v0, v1, v7, v8 }, Lokhttp3/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V
    sput-object v0, Lokhttp3/Protocol;->QUIC:Lokhttp3/Protocol;
    const/4 v1, 6
    new-array v1, v1, [Lokhttp3/Protocol;
  .line 7
    sget-object v8, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;
    aput-object v8, v1, v2
    sget-object v2, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;
    aput-object v2, v1, v3
    sget-object v2, Lokhttp3/Protocol;->SPDY_3:Lokhttp3/Protocol;
    aput-object v2, v1, v4
    sget-object v2, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;
    aput-object v2, v1, v5
    sget-object v2, Lokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp3/Protocol;
    aput-object v2, v1, v6
    aput-object v0, v1, v7
    sput-object v1, Lokhttp3/Protocol;->$VALUES:[Lokhttp3/Protocol;
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
    iput-object p3, p0, Lokhttp3/Protocol;->protocol:Ljava/lang/String;
    return-void
.end method

.method public static get(Ljava/lang/String;)Lokhttp3/Protocol;
  .registers 4
  .line 1
    sget-object v0, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;
    iget-object v0, v0, Lokhttp3/Protocol;->protocol:Ljava/lang/String;
    invoke-virtual { p0, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
    sget-object p0, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;
    return-object p0
  :L0
  .line 2
    sget-object v0, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;
    iget-object v0, v0, Lokhttp3/Protocol;->protocol:Ljava/lang/String;
    invoke-virtual { p0, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L1
    sget-object p0, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;
    return-object p0
  :L1
  .line 3
    sget-object v0, Lokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp3/Protocol;
    iget-object v0, v0, Lokhttp3/Protocol;->protocol:Ljava/lang/String;
    invoke-virtual { p0, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L2
    sget-object p0, Lokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp3/Protocol;
    return-object p0
  :L2
  .line 4
    sget-object v0, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;
    iget-object v0, v0, Lokhttp3/Protocol;->protocol:Ljava/lang/String;
    invoke-virtual { p0, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L3
    sget-object p0, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;
    return-object p0
  :L3
  .line 5
    sget-object v0, Lokhttp3/Protocol;->SPDY_3:Lokhttp3/Protocol;
    iget-object v0, v0, Lokhttp3/Protocol;->protocol:Ljava/lang/String;
    invoke-virtual { p0, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L4
    sget-object p0, Lokhttp3/Protocol;->SPDY_3:Lokhttp3/Protocol;
    return-object p0
  :L4
  .line 6
    sget-object v0, Lokhttp3/Protocol;->QUIC:Lokhttp3/Protocol;
    iget-object v0, v0, Lokhttp3/Protocol;->protocol:Ljava/lang/String;
    invoke-virtual { p0, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L5
    sget-object p0, Lokhttp3/Protocol;->QUIC:Lokhttp3/Protocol;
    return-object p0
  :L5
  .line 7
    new-instance v0, Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Unexpected protocol: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    invoke-direct { v0, p0 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lokhttp3/Protocol;
  .registers 2
  .line 1
    const-class v0, Lokhttp3/Protocol;
    invoke-static { v0, p0 }, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    move-result-object p0
    check-cast p0, Lokhttp3/Protocol;
    return-object p0
.end method

.method public static values()[Lokhttp3/Protocol;
  .registers 2
  .line 1
    sget-object v0, Lokhttp3/Protocol;->$VALUES:[Lokhttp3/Protocol;
    invoke-virtual { v0 }, [Lokhttp3/Protocol;->clone()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, [Lokhttp3/Protocol;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/Protocol;->protocol:Ljava/lang/String;
    return-object v0
.end method
