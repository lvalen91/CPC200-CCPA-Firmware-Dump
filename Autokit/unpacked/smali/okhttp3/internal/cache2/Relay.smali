.class final Lokhttp3/internal/cache2/Relay;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lokhttp3/internal/cache2/Relay$RelaySource;
  }
.end annotation

.field private final static FILE_HEADER_SIZE:J = 32L

.field final static PREFIX_CLEAN:Lokio/ByteString;

.field final static PREFIX_DIRTY:Lokio/ByteString;

.field private final static SOURCE_FILE:I = 2

.field private final static SOURCE_UPSTREAM:I = 1

.field final buffer:Lokio/Buffer;

.field final bufferMaxSize:J

.field complete:Z

.field file:Ljava/io/RandomAccessFile;

.field private final metadata:Lokio/ByteString;

.field sourceCount:I

.field upstream:Lokio/Source;

.field final upstreamBuffer:Lokio/Buffer;

.field upstreamPos:J

.field upstreamReader:Ljava/lang/Thread;

.method static constructor <clinit>()V
  .registers 3
    const-string v0, "OkHttp cache v1\n"
  .line 1
    invoke-static { v0 }, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;
    move-result-object v0
    sput-object v0, Lokhttp3/internal/cache2/Relay;->PREFIX_CLEAN:Lokio/ByteString;
    const-string v0, "OkHttp DIRTY :(\n"
  .line 2
    invoke-static { v0 }, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;
    move-result-object v0
    sput-object v0, Lokhttp3/internal/cache2/Relay;->PREFIX_DIRTY:Lokio/ByteString;
    return-void
.end method

.method private constructor <init>(Ljava/io/RandomAccessFile;Lokio/Source;JLokio/ByteString;J)V
  .registers 9
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Lokio/Buffer;
    invoke-direct { v0 }, Lokio/Buffer;-><init>()V
    iput-object v0, p0, Lokhttp3/internal/cache2/Relay;->upstreamBuffer:Lokio/Buffer;
  .line 3
    new-instance v0, Lokio/Buffer;
    invoke-direct { v0 }, Lokio/Buffer;-><init>()V
    iput-object v0, p0, Lokhttp3/internal/cache2/Relay;->buffer:Lokio/Buffer;
  .line 4
    iput-object p1, p0, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;
  .line 5
    iput-object p2, p0, Lokhttp3/internal/cache2/Relay;->upstream:Lokio/Source;
    if-nez p2, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
  .line 6
    iput-boolean p1, p0, Lokhttp3/internal/cache2/Relay;->complete:Z
  .line 7
    iput-wide p3, p0, Lokhttp3/internal/cache2/Relay;->upstreamPos:J
  .line 8
    iput-object p5, p0, Lokhttp3/internal/cache2/Relay;->metadata:Lokio/ByteString;
  .line 9
    iput-wide p6, p0, Lokhttp3/internal/cache2/Relay;->bufferMaxSize:J
    return-void
.end method

.method public static edit(Ljava/io/File;Lokio/Source;Lokio/ByteString;J)Lokhttp3/internal/cache2/Relay;
  .registers 14
  .line 1
    new-instance v8, Ljava/io/RandomAccessFile;
    const-string v0, "rw"
    invoke-direct { v8, p0, v0 }, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
  .line 2
    new-instance p0, Lokhttp3/internal/cache2/Relay;
    const-wide/16 v3, 0
    move-object v0, p0
    move-object v1, v8
    move-object v2, p1
    move-object v5, p2
    move-wide v6, p3
    invoke-direct/range { v0 .. v7 }, Lokhttp3/internal/cache2/Relay;-><init>(Ljava/io/RandomAccessFile;Lokio/Source;JLokio/ByteString;J)V
    const-wide/16 p1, 0
  .line 3
    invoke-virtual { v8, p1, p2 }, Ljava/io/RandomAccessFile;->setLength(J)V
  .line 4
    sget-object v2, Lokhttp3/internal/cache2/Relay;->PREFIX_DIRTY:Lokio/ByteString;
    const-wide/16 v3, -1
    const-wide/16 v5, -1
    move-object v1, p0
    invoke-direct/range { v1 .. v6 }, Lokhttp3/internal/cache2/Relay;->writeHeader(Lokio/ByteString;JJ)V
    return-object p0
.end method

.method public static read(Ljava/io/File;)Lokhttp3/internal/cache2/Relay;
  .registers 11
  .line 1
    new-instance v1, Ljava/io/RandomAccessFile;
    const-string v0, "rw"
    invoke-direct { v1, p0, v0 }, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
  .line 2
    new-instance p0, Lokhttp3/internal/cache2/FileOperator;
    invoke-virtual { v1 }, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;
    move-result-object v0
    invoke-direct { p0, v0 }, Lokhttp3/internal/cache2/FileOperator;-><init>(Ljava/nio/channels/FileChannel;)V
  .line 3
    new-instance v0, Lokio/Buffer;
    invoke-direct { v0 }, Lokio/Buffer;-><init>()V
    const-wide/16 v3, 0
    const-wide/16 v6, 32
    move-object v2, p0
    move-object v5, v0
  .line 4
    invoke-virtual/range { v2 .. v7 }, Lokhttp3/internal/cache2/FileOperator;->read(JLokio/Buffer;J)V
  .line 5
    sget-object v2, Lokhttp3/internal/cache2/Relay;->PREFIX_CLEAN:Lokio/ByteString;
    invoke-virtual { v2 }, Lokio/ByteString;->size()I
    move-result v2
    int-to-long v2, v2
    invoke-virtual { v0, v2, v3 }, Lokio/Buffer;->readByteString(J)Lokio/ByteString;
    move-result-object v2
  .line 6
    sget-object v3, Lokhttp3/internal/cache2/Relay;->PREFIX_CLEAN:Lokio/ByteString;
    invoke-virtual { v2, v3 }, Lokio/ByteString;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :L0
  .line 7
    invoke-virtual { v0 }, Lokio/Buffer;->readLong()J
    move-result-wide v8
  .line 8
    invoke-virtual { v0 }, Lokio/Buffer;->readLong()J
    move-result-wide v6
  .line 9
    new-instance v0, Lokio/Buffer;
    invoke-direct { v0 }, Lokio/Buffer;-><init>()V
    const-wide/16 v2, 32
    add-long v4, v8, v2
    move-object v2, p0
    move-wide v3, v4
    move-object v5, v0
  .line 10
    invoke-virtual/range { v2 .. v7 }, Lokhttp3/internal/cache2/FileOperator;->read(JLokio/Buffer;J)V
  .line 11
    invoke-virtual { v0 }, Lokio/Buffer;->readByteString()Lokio/ByteString;
    move-result-object v5
  .line 12
    new-instance p0, Lokhttp3/internal/cache2/Relay;
    const/4 v2, 0
    const-wide/16 v6, 0
    move-object v0, p0
    move-wide v3, v8
    invoke-direct/range { v0 .. v7 }, Lokhttp3/internal/cache2/Relay;-><init>(Ljava/io/RandomAccessFile;Lokio/Source;JLokio/ByteString;J)V
    return-object p0
  :L0
  .line 13
    new-instance p0, Ljava/io/IOException;
    const-string v0, "unreadable cache file"
    invoke-direct { p0, v0 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw p0
.end method

.method private writeHeader(Lokio/ByteString;JJ)V
  .registers 12
  .line 1
    new-instance v3, Lokio/Buffer;
    invoke-direct { v3 }, Lokio/Buffer;-><init>()V
  .line 2
    invoke-virtual { v3, p1 }, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;
  .line 3
    invoke-virtual { v3, p2, p3 }, Lokio/Buffer;->writeLong(J)Lokio/Buffer;
  .line 4
    invoke-virtual { v3, p4, p5 }, Lokio/Buffer;->writeLong(J)Lokio/Buffer;
  .line 5
    invoke-virtual { v3 }, Lokio/Buffer;->size()J
    move-result-wide p1
    const-wide/16 p3, 32
    cmp-long p5, p1, p3
    if-nez p5, :L0
  .line 6
    new-instance v0, Lokhttp3/internal/cache2/FileOperator;
    iget-object p1, p0, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;
    invoke-virtual { p1 }, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;
    move-result-object p1
    invoke-direct { v0, p1 }, Lokhttp3/internal/cache2/FileOperator;-><init>(Ljava/nio/channels/FileChannel;)V
    const-wide/16 v1, 0
    const-wide/16 v4, 32
  .line 7
    invoke-virtual/range { v0 .. v5 }, Lokhttp3/internal/cache2/FileOperator;->write(JLokio/Buffer;J)V
    return-void
  :L0
  .line 8
    new-instance p1, Ljava/lang/IllegalArgumentException;
    invoke-direct { p1 }, Ljava/lang/IllegalArgumentException;-><init>()V
    throw p1
.end method

.method private writeMetadata(J)V
  .registers 9
  .line 1
    new-instance v3, Lokio/Buffer;
    invoke-direct { v3 }, Lokio/Buffer;-><init>()V
  .line 2
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay;->metadata:Lokio/ByteString;
    invoke-virtual { v3, v0 }, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;
  .line 3
    new-instance v0, Lokhttp3/internal/cache2/FileOperator;
    iget-object v1, p0, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;
    invoke-virtual { v1 }, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;
    move-result-object v1
    invoke-direct { v0, v1 }, Lokhttp3/internal/cache2/FileOperator;-><init>(Ljava/nio/channels/FileChannel;)V
    const-wide/16 v1, 32
    add-long/2addr v1, p1
  .line 4
    iget-object p1, p0, Lokhttp3/internal/cache2/Relay;->metadata:Lokio/ByteString;
    invoke-virtual { p1 }, Lokio/ByteString;->size()I
    move-result p1
    int-to-long v4, p1
    invoke-virtual/range { v0 .. v5 }, Lokhttp3/internal/cache2/FileOperator;->write(JLokio/Buffer;J)V
    return-void
.end method

.method commit(J)V
  .catchall { :L0 .. :L1 } :L2
  .catchall { :L3 .. :L4 } :L2
  .registers 11
  .line 1
    invoke-direct { p0, p1, p2 }, Lokhttp3/internal/cache2/Relay;->writeMetadata(J)V
  .line 2
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;
    invoke-virtual { v0 }, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;
    move-result-object v0
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Ljava/nio/channels/FileChannel;->force(Z)V
  .line 3
    sget-object v3, Lokhttp3/internal/cache2/Relay;->PREFIX_CLEAN:Lokio/ByteString;
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay;->metadata:Lokio/ByteString;
    invoke-virtual { v0 }, Lokio/ByteString;->size()I
    move-result v0
    int-to-long v6, v0
    move-object v2, p0
    move-wide v4, p1
    invoke-direct/range { v2 .. v7 }, Lokhttp3/internal/cache2/Relay;->writeHeader(Lokio/ByteString;JJ)V
  .line 4
    iget-object p1, p0, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;
    invoke-virtual { p1 }, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;
    move-result-object p1
    invoke-virtual { p1, v1 }, Ljava/nio/channels/FileChannel;->force(Z)V
  .line 5
    monitor-enter p0
    const/4 p1, 1
  :L0
  .line 6
    iput-boolean p1, p0, Lokhttp3/internal/cache2/Relay;->complete:Z
  .line 7
    monitor-exit p0
  :L1
  .line 8
    iget-object p1, p0, Lokhttp3/internal/cache2/Relay;->upstream:Lokio/Source;
    invoke-static { p1 }, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V
    const/4 p1, 0
  .line 9
    iput-object p1, p0, Lokhttp3/internal/cache2/Relay;->upstream:Lokio/Source;
    return-void
  :L2
    move-exception p1
  :L3
  .line 10
    monitor-exit p0
  :L4
    throw p1
.end method

.method isClosed()Z
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;
    if-nez v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public metadata()Lokio/ByteString;
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay;->metadata:Lokio/ByteString;
    return-object v0
.end method

.method public newSource()Lokio/Source;
  .catchall { :L0 .. :L2 } :L3
  .catchall { :L4 .. :L5 } :L3
  .registers 2
  .line 1
    monitor-enter p0
  :L0
  .line 2
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;
    if-nez v0, :L1
    const/4 v0, 0
    monitor-exit p0
    return-object v0
  :L1
  .line 3
    iget v0, p0, Lokhttp3/internal/cache2/Relay;->sourceCount:I
    add-int/lit8 v0, v0, 1
    iput v0, p0, Lokhttp3/internal/cache2/Relay;->sourceCount:I
  .line 4
    monitor-exit p0
  :L2
  .line 5
    new-instance v0, Lokhttp3/internal/cache2/Relay$RelaySource;
    invoke-direct { v0, p0 }, Lokhttp3/internal/cache2/Relay$RelaySource;-><init>(Lokhttp3/internal/cache2/Relay;)V
    return-object v0
  :L3
    move-exception v0
  :L4
  .line 6
    monitor-exit p0
  :L5
    throw v0
.end method
