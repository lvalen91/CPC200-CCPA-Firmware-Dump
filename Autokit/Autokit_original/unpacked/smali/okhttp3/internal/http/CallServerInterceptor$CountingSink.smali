.class final Lokhttp3/internal/http/CallServerInterceptor$CountingSink;
.super Lokio/ForwardingSink;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lokhttp3/internal/http/CallServerInterceptor;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 24
  name = "CountingSink"
.end annotation

.field successfulCount:J

.method constructor <init>(Lokio/Sink;)V
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Lokio/ForwardingSink;-><init>(Lokio/Sink;)V
    return-void
.end method

.method public write(Lokio/Buffer;J)V
  .registers 6
  .line 1
    invoke-super { p0, p1, p2, p3 }, Lokio/ForwardingSink;->write(Lokio/Buffer;J)V
  .line 2
    iget-wide v0, p0, Lokhttp3/internal/http/CallServerInterceptor$CountingSink;->successfulCount:J
    add-long/2addr v0, p2
    iput-wide v0, p0, Lokhttp3/internal/http/CallServerInterceptor$CountingSink;->successfulCount:J
    return-void
.end method
