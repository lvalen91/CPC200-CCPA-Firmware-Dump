.class final Lokio/Okio$3;
.super Ljava/lang/Object;
.implements Lokio/Sink;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lokio/Okio;->blackhole()Lokio/Sink;
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

.method public close()V
  .registers 1
    return-void
.end method

.method public flush()V
  .registers 1
    return-void
.end method

.method public timeout()Lokio/Timeout;
  .registers 2
  .line 1
    sget-object v0, Lokio/Timeout;->NONE:Lokio/Timeout;
    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
  .registers 4
  .line 1
    invoke-virtual { p1, p2, p3 }, Lokio/Buffer;->skip(J)V
    return-void
.end method
