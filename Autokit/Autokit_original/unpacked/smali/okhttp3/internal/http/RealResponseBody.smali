.class public final Lokhttp3/internal/http/RealResponseBody;
.super Lokhttp3/ResponseBody;
.source "SourceFile"

.field private final contentLength:J

.field private final contentTypeString:Ljava/lang/String;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
.end field

.field private final source:Lokio/BufferedSource;

.method public constructor <init>(Ljava/lang/String;JLokio/BufferedSource;)V
  .parameter # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
  .end parameter
  .registers 5
  .line 1
    invoke-direct { p0 }, Lokhttp3/ResponseBody;-><init>()V
  .line 2
    iput-object p1, p0, Lokhttp3/internal/http/RealResponseBody;->contentTypeString:Ljava/lang/String;
  .line 3
    iput-wide p2, p0, Lokhttp3/internal/http/RealResponseBody;->contentLength:J
  .line 4
    iput-object p4, p0, Lokhttp3/internal/http/RealResponseBody;->source:Lokio/BufferedSource;
    return-void
.end method

.method public contentLength()J
  .registers 3
  .line 1
    iget-wide v0, p0, Lokhttp3/internal/http/RealResponseBody;->contentLength:J
    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/internal/http/RealResponseBody;->contentTypeString:Ljava/lang/String;
    if-eqz v0, :L0
    invoke-static { v0 }, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;
    move-result-object v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return-object v0
.end method

.method public source()Lokio/BufferedSource;
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/internal/http/RealResponseBody;->source:Lokio/BufferedSource;
    return-object v0
.end method
