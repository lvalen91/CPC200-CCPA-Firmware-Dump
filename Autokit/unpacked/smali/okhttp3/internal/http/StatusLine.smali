.class public final Lokhttp3/internal/http/StatusLine;
.super Ljava/lang/Object;
.source "SourceFile"

.field public final static HTTP_CONTINUE:I = 100

.field public final static HTTP_PERM_REDIRECT:I = 308

.field public final static HTTP_TEMP_REDIRECT:I = 307

.field public final code:I

.field public final message:Ljava/lang/String;

.field public final protocol:Lokhttp3/Protocol;

.method public constructor <init>(Lokhttp3/Protocol;ILjava/lang/String;)V
  .registers 4
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Lokhttp3/internal/http/StatusLine;->protocol:Lokhttp3/Protocol;
  .line 3
    iput p2, p0, Lokhttp3/internal/http/StatusLine;->code:I
  .line 4
    iput-object p3, p0, Lokhttp3/internal/http/StatusLine;->message:Ljava/lang/String;
    return-void
.end method

.method public static get(Lokhttp3/Response;)Lokhttp3/internal/http/StatusLine;
  .registers 4
  .line 1
    new-instance v0, Lokhttp3/internal/http/StatusLine;
    invoke-virtual { p0 }, Lokhttp3/Response;->protocol()Lokhttp3/Protocol;
    move-result-object v1
    invoke-virtual { p0 }, Lokhttp3/Response;->code()I
    move-result v2
    invoke-virtual { p0 }, Lokhttp3/Response;->message()Ljava/lang/String;
    move-result-object p0
    invoke-direct { v0, v1, v2, p0 }, Lokhttp3/internal/http/StatusLine;-><init>(Lokhttp3/Protocol;ILjava/lang/String;)V
    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lokhttp3/internal/http/StatusLine;
  .catch Ljava/lang/NumberFormatException; { :L5 .. :L6 } :L10
  .registers 9
    const-string v0, "HTTP/1."
  .line 1
    invoke-virtual { p0, v0 }, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v0
    const/16 v1, 32
    const/4 v2, 4
    const/16 v3, 9
    const-string v4, "Unexpected status line: "
    if-eqz v0, :L3
  .line 2
    invoke-virtual { p0 }, Ljava/lang/String;->length()I
    move-result v0
    if-lt v0, v3, :L2
    const/16 v0, 8
    invoke-virtual { p0, v0 }, Ljava/lang/String;->charAt(I)C
    move-result v0
    if-ne v0, v1, :L2
    const/4 v0, 7
  .line 3
    invoke-virtual { p0, v0 }, Ljava/lang/String;->charAt(I)C
    move-result v0
    add-int/lit8 v0, v0, -48
    if-nez v0, :L0
  .line 4
    sget-object v0, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;
    goto :L4
  :L0
    const/4 v5, 1
    if-ne v0, v5, :L1
  .line 5
    sget-object v0, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;
    goto :L4
  :L1
  .line 6
    new-instance v0, Ljava/net/ProtocolException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v1, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    invoke-direct { v0, p0 }, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V
    throw v0
  :L2
  .line 7
    new-instance v0, Ljava/net/ProtocolException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v1, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    invoke-direct { v0, p0 }, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V
    throw v0
  :L3
    const-string v0, "ICY "
  .line 8
    invoke-virtual { p0, v0 }, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :L12
  .line 9
    sget-object v0, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;
    const/4 v3, 4
  :L4
  .line 10
    invoke-virtual { p0 }, Ljava/lang/String;->length()I
    move-result v5
    add-int/lit8 v6, v3, 3
    if-lt v5, v6, :L11
  :L5
  .line 11
    invoke-virtual { p0, v3, v6 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v5
    invoke-static { v5 }, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v5
  :L6
  .line 12
    invoke-virtual { p0 }, Ljava/lang/String;->length()I
    move-result v7
    if-le v7, v6, :L8
  .line 13
    invoke-virtual { p0, v6 }, Ljava/lang/String;->charAt(I)C
    move-result v6
    if-ne v6, v1, :L7
    add-int/2addr v3, v2
  .line 14
    invoke-virtual { p0, v3 }, Ljava/lang/String;->substring(I)Ljava/lang/String;
    move-result-object p0
    goto :L9
  :L7
  .line 15
    new-instance v0, Ljava/net/ProtocolException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v1, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    invoke-direct { v0, p0 }, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V
    throw v0
  :L8
    const-string p0, ""
  :L9
  .line 16
    new-instance v1, Lokhttp3/internal/http/StatusLine;
    invoke-direct { v1, v0, v5, p0 }, Lokhttp3/internal/http/StatusLine;-><init>(Lokhttp3/Protocol;ILjava/lang/String;)V
    return-object v1
  :L10
  .line 17
    new-instance v0, Ljava/net/ProtocolException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v1, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    invoke-direct { v0, p0 }, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V
    throw v0
  :L11
  .line 18
    new-instance v0, Ljava/net/ProtocolException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v1, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    invoke-direct { v0, p0 }, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V
    throw v0
  :L12
  .line 19
    new-instance v0, Ljava/net/ProtocolException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v1, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    invoke-direct { v0, p0 }, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public toString()Ljava/lang/String;
  .registers 4
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
  .line 2
    iget-object v1, p0, Lokhttp3/internal/http/StatusLine;->protocol:Lokhttp3/Protocol;
    sget-object v2, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;
    if-ne v1, v2, :L0
    const-string v1, "HTTP/1.0"
    goto :L1
  :L0
    const-string v1, "HTTP/1.1"
  :L1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const/16 v1, 32
  .line 3
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    iget v2, p0, Lokhttp3/internal/http/StatusLine;->code:I
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
  .line 4
    iget-object v2, p0, Lokhttp3/internal/http/StatusLine;->message:Ljava/lang/String;
    if-eqz v2, :L2
  .line 5
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lokhttp3/internal/http/StatusLine;->message:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L2
  .line 6
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method
