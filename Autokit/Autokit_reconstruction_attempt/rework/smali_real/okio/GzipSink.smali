.class public final Lokio/GzipSink;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/Sink;


# instance fields
.field private closed:Z

.field private final crc:Ljava/util/zip/CRC32;

.field private final deflater:Ljava/util/zip/Deflater;

.field private final deflaterSink:Lokio/DeflaterSink;

.field private final sink:Lokio/BufferedSink;


# direct methods
.method public constructor <init>(Lokio/Sink;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lokio/GzipSink;->crc:Ljava/util/zip/CRC32;

    if-eqz p1, :cond_28

    .line 3
    new-instance v0, Ljava/util/zip/Deflater;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object v0, p0, Lokio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    .line 4
    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object p1

    iput-object p1, p0, Lokio/GzipSink;->sink:Lokio/BufferedSink;

    .line 5
    new-instance v0, Lokio/DeflaterSink;

    iget-object v1, p0, Lokio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    invoke-direct {v0, p1, v1}, Lokio/DeflaterSink;-><init>(Lokio/BufferedSink;Ljava/util/zip/Deflater;)V

    iput-object v0, p0, Lokio/GzipSink;->deflaterSink:Lokio/DeflaterSink;

    .line 6
    invoke-direct {p0}, Lokio/GzipSink;->writeHeader()V

    return-void

    .line 7
    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sink == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private updateCrc(Lokio/Buffer;J)V
    .registers 8

    .line 1
    iget-object p1, p1, Lokio/Buffer;->head:Lokio/Segment;

    :goto_2
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_21

    .line 2
    iget v0, p1, Lokio/Segment;->limit:I

    iget v1, p1, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 3
    iget-object v0, p0, Lokio/GzipSink;->crc:Ljava/util/zip/CRC32;

    iget-object v2, p1, Lokio/Segment;->data:[B

    iget v3, p1, Lokio/Segment;->pos:I

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/zip/CRC32;->update([BII)V

    int-to-long v0, v1

    sub-long/2addr p2, v0

    .line 4
    iget-object p1, p1, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_2

    :cond_21
    return-void
.end method

.method private writeFooter()V
    .registers 4

    .line 1
    iget-object v0, p0, Lokio/GzipSink;->sink:Lokio/BufferedSink;

    iget-object v1, p0, Lokio/GzipSink;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-interface {v0, v2}, Lokio/BufferedSink;->writeIntLe(I)Lokio/BufferedSink;

    .line 2
    iget-object v0, p0, Lokio/GzipSink;->sink:Lokio/BufferedSink;

    iget-object v1, p0, Lokio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->getBytesRead()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-interface {v0, v2}, Lokio/BufferedSink;->writeIntLe(I)Lokio/BufferedSink;

    return-void
.end method

.method private writeHeader()V
    .registers 3

    .line 1
    iget-object v0, p0, Lokio/GzipSink;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->buffer()Lokio/Buffer;

    move-result-object v0

    const/16 v1, 0x1f8b

    .line 2
    invoke-virtual {v0, v1}, Lokio/Buffer;->writeShort(I)Lokio/Buffer;

    const/16 v1, 0x8

    .line 3
    invoke-virtual {v0, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 5
    invoke-virtual {v0, v1}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 6
    invoke-virtual {v0, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 7
    invoke-virtual {v0, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lokio/GzipSink;->closed:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 2
    :try_start_6
    iget-object v1, p0, Lokio/GzipSink;->deflaterSink:Lokio/DeflaterSink;

    invoke-virtual {v1}, Lokio/DeflaterSink;->finishDeflate()V

    .line 3
    invoke-direct {p0}, Lokio/GzipSink;->writeFooter()V
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_f

    goto :goto_10

    :catchall_f
    move-exception v0

    .line 4
    :goto_10
    :try_start_10
    iget-object v1, p0, Lokio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_16

    goto :goto_1a

    :catchall_16
    move-exception v1

    if-nez v0, :cond_1a

    move-object v0, v1

    .line 5
    :cond_1a
    :goto_1a
    :try_start_1a
    iget-object v1, p0, Lokio/GzipSink;->sink:Lokio/BufferedSink;

    invoke-interface {v1}, Lokio/Sink;->close()V
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_20

    goto :goto_24

    :catchall_20
    move-exception v1

    if-nez v0, :cond_24

    move-object v0, v1

    :cond_24
    :goto_24
    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lokio/GzipSink;->closed:Z

    if-eqz v0, :cond_2c

    .line 7
    invoke-static {v0}, Lokio/Util;->sneakyRethrow(Ljava/lang/Throwable;)V

    :cond_2c
    return-void
.end method

.method public final deflater()Ljava/util/zip/Deflater;
    .registers 2

    .line 1
    iget-object v0, p0, Lokio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    return-object v0
.end method

.method public flush()V
    .registers 2

    .line 1
    iget-object v0, p0, Lokio/GzipSink;->deflaterSink:Lokio/DeflaterSink;

    invoke-virtual {v0}, Lokio/DeflaterSink;->flush()V

    return-void
.end method

.method public timeout()Lokio/Timeout;
    .registers 2

    .line 1
    iget-object v0, p0, Lokio/GzipSink;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_14

    cmp-long v2, p2, v0

    if-nez v2, :cond_b

    return-void

    .line 1
    :cond_b
    invoke-direct {p0, p1, p2, p3}, Lokio/GzipSink;->updateCrc(Lokio/Buffer;J)V

    .line 2
    iget-object v0, p0, Lokio/GzipSink;->deflaterSink:Lokio/DeflaterSink;

    invoke-virtual {v0, p1, p2, p3}, Lokio/DeflaterSink;->write(Lokio/Buffer;J)V

    return-void

    .line 3
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
