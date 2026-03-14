.class Lokhttp3/internal/http1/Http1Codec$UnknownLengthSource;
.super Lokhttp3/internal/http1/Http1Codec$AbstractSource;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lokhttp3/internal/http1/Http1Codec;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 2
  name = "UnknownLengthSource"
.end annotation

.field private inputExhausted:Z

.field final synthetic this$0:Lokhttp3/internal/http1/Http1Codec;

.method constructor <init>(Lokhttp3/internal/http1/Http1Codec;)V
  .registers 3
  .line 1
    iput-object p1, p0, Lokhttp3/internal/http1/Http1Codec$UnknownLengthSource;->this$0:Lokhttp3/internal/http1/Http1Codec;
    const/4 v0, 0
    invoke-direct { p0, p1, v0 }, Lokhttp3/internal/http1/Http1Codec$AbstractSource;-><init>(Lokhttp3/internal/http1/Http1Codec;Lokhttp3/internal/http1/Http1Codec$1;)V
    return-void
.end method

.method public close()V
  .registers 3
  .line 1
    iget-boolean v0, p0, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->closed:Z
    if-eqz v0, :L0
    return-void
  :L0
  .line 2
    iget-boolean v0, p0, Lokhttp3/internal/http1/Http1Codec$UnknownLengthSource;->inputExhausted:Z
    if-nez v0, :L1
    const/4 v0, 0
    const/4 v1, 0
  .line 3
    invoke-virtual { p0, v0, v1 }, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->endOfInput(ZLjava/io/IOException;)V
  :L1
    const/4 v0, 1
  .line 4
    iput-boolean v0, p0, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->closed:Z
    return-void
.end method

.method public read(Lokio/Buffer;J)J
  .registers 7
    const-wide/16 v0, 0
    cmp-long v2, p2, v0
    if-ltz v2, :L3
  .line 1
    iget-boolean v0, p0, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->closed:Z
    if-nez v0, :L2
  .line 2
    iget-boolean v0, p0, Lokhttp3/internal/http1/Http1Codec$UnknownLengthSource;->inputExhausted:Z
    const-wide/16 v1, -1
    if-eqz v0, :L0
    return-wide v1
  :L0
  .line 3
    invoke-super { p0, p1, p2, p3 }, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->read(Lokio/Buffer;J)J
    move-result-wide p1
    cmp-long p3, p1, v1
    if-nez p3, :L1
    const/4 p1, 1
  .line 4
    iput-boolean p1, p0, Lokhttp3/internal/http1/Http1Codec$UnknownLengthSource;->inputExhausted:Z
    const/4 p2, 0
  .line 5
    invoke-virtual { p0, p1, p2 }, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->endOfInput(ZLjava/io/IOException;)V
    return-wide v1
  :L1
    return-wide p1
  :L2
  .line 6
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string p2, "closed"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
  :L3
  .line 7
    new-instance p1, Ljava/lang/IllegalArgumentException;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "byteCount < 0: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p2, p3 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
.end method
