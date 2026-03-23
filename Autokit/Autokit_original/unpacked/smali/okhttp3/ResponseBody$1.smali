.class Lokhttp3/ResponseBody$1;
.super Lokhttp3/ResponseBody;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lokhttp3/ResponseBody;->create(Lokhttp3/MediaType;JLokio/BufferedSource;)Lokhttp3/ResponseBody;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic val$content:Lokio/BufferedSource;

.field final synthetic val$contentLength:J

.field final synthetic val$contentType:Lokhttp3/MediaType;

.method constructor <init>(Lokhttp3/MediaType;JLokio/BufferedSource;)V
  .registers 5
  .line 1
    iput-object p1, p0, Lokhttp3/ResponseBody$1;->val$contentType:Lokhttp3/MediaType;
    iput-wide p2, p0, Lokhttp3/ResponseBody$1;->val$contentLength:J
    iput-object p4, p0, Lokhttp3/ResponseBody$1;->val$content:Lokio/BufferedSource;
    invoke-direct { p0 }, Lokhttp3/ResponseBody;-><init>()V
    return-void
.end method

.method public contentLength()J
  .registers 3
  .line 1
    iget-wide v0, p0, Lokhttp3/ResponseBody$1;->val$contentLength:J
    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/ResponseBody$1;->val$contentType:Lokhttp3/MediaType;
    return-object v0
.end method

.method public source()Lokio/BufferedSource;
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/ResponseBody$1;->val$content:Lokio/BufferedSource;
    return-object v0
.end method
