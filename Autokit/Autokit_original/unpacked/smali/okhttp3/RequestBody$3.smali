.class Lokhttp3/RequestBody$3;
.super Lokhttp3/RequestBody;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic val$contentType:Lokhttp3/MediaType;

.field final synthetic val$file:Ljava/io/File;

.method constructor <init>(Lokhttp3/MediaType;Ljava/io/File;)V
  .registers 3
  .line 1
    iput-object p1, p0, Lokhttp3/RequestBody$3;->val$contentType:Lokhttp3/MediaType;
    iput-object p2, p0, Lokhttp3/RequestBody$3;->val$file:Ljava/io/File;
    invoke-direct { p0 }, Lokhttp3/RequestBody;-><init>()V
    return-void
.end method

.method public contentLength()J
  .registers 3
  .line 1
    iget-object v0, p0, Lokhttp3/RequestBody$3;->val$file:Ljava/io/File;
    invoke-virtual { v0 }, Ljava/io/File;->length()J
    move-result-wide v0
    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/RequestBody$3;->val$contentType:Lokhttp3/MediaType;
    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
  .catchall { :L0 .. :L1 } :L2
  .registers 4
    const/4 v0, 0
  :L0
  .line 1
    iget-object v1, p0, Lokhttp3/RequestBody$3;->val$file:Ljava/io/File;
    invoke-static { v1 }, Lokio/Okio;->source(Ljava/io/File;)Lokio/Source;
    move-result-object v0
  .line 2
    invoke-interface { p1, v0 }, Lokio/BufferedSink;->writeAll(Lokio/Source;)J
  :L1
  .line 3
    invoke-static { v0 }, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V
    return-void
  :L2
    move-exception p1
    invoke-static { v0 }, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V
    throw p1
.end method
