.class public final Lokio/Pipe;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lokio/Pipe$PipeSource;,
    Lokio/Pipe$PipeSink;
  }
.end annotation

.field final buffer:Lokio/Buffer;

.field final maxBufferSize:J

.field private final sink:Lokio/Sink;

.field sinkClosed:Z

.field private final source:Lokio/Source;

.field sourceClosed:Z

.method public constructor <init>(J)V
  .registers 6
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Lokio/Buffer;
    invoke-direct { v0 }, Lokio/Buffer;-><init>()V
    iput-object v0, p0, Lokio/Pipe;->buffer:Lokio/Buffer;
  .line 3
    new-instance v0, Lokio/Pipe$PipeSink;
    invoke-direct { v0, p0 }, Lokio/Pipe$PipeSink;-><init>(Lokio/Pipe;)V
    iput-object v0, p0, Lokio/Pipe;->sink:Lokio/Sink;
  .line 4
    new-instance v0, Lokio/Pipe$PipeSource;
    invoke-direct { v0, p0 }, Lokio/Pipe$PipeSource;-><init>(Lokio/Pipe;)V
    iput-object v0, p0, Lokio/Pipe;->source:Lokio/Source;
    const-wide/16 v0, 1
    cmp-long v2, p1, v0
    if-ltz v2, :L0
  .line 5
    iput-wide p1, p0, Lokio/Pipe;->maxBufferSize:J
    return-void
  :L0
  .line 6
    new-instance v0, Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "maxBufferSize < 1: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1, p2 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public final sink()Lokio/Sink;
  .registers 2
  .line 1
    iget-object v0, p0, Lokio/Pipe;->sink:Lokio/Sink;
    return-object v0
.end method

.method public final source()Lokio/Source;
  .registers 2
  .line 1
    iget-object v0, p0, Lokio/Pipe;->source:Lokio/Source;
    return-object v0
.end method
