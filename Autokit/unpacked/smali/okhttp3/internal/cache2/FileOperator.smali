.class final Lokhttp3/internal/cache2/FileOperator;
.super Ljava/lang/Object;
.source "SourceFile"

.field private final fileChannel:Ljava/nio/channels/FileChannel;

.method constructor <init>(Ljava/nio/channels/FileChannel;)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Lokhttp3/internal/cache2/FileOperator;->fileChannel:Ljava/nio/channels/FileChannel;
    return-void
.end method

.method public read(JLokio/Buffer;J)V
  .registers 15
    const-wide/16 v0, 0
    cmp-long v2, p4, v0
    if-ltz v2, :L2
  :L0
    cmp-long v2, p4, v0
    if-lez v2, :L1
  .line 1
    iget-object v3, p0, Lokhttp3/internal/cache2/FileOperator;->fileChannel:Ljava/nio/channels/FileChannel;
    move-wide v4, p1
    move-wide v6, p4
    move-object v8, p3
    invoke-virtual/range { v3 .. v8 }, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    move-result-wide v2
    add-long/2addr p1, v2
    sub-long/2addr p4, v2
    goto :L0
  :L1
    return-void
  :L2
  .line 2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;
    invoke-direct { p1 }, Ljava/lang/IndexOutOfBoundsException;-><init>()V
    goto :L4
  :L3
    throw p1
  :L4
    goto :L3
.end method

.method public write(JLokio/Buffer;J)V
  .registers 19
    const-wide/16 v0, 0
    cmp-long v2, p4, v0
    if-ltz v2, :L2
  .line 1
    invoke-virtual/range { p3 .. p3 }, Lokio/Buffer;->size()J
    move-result-wide v2
    cmp-long v4, p4, v2
    if-gtz v4, :L2
    move-wide v2, p1
    move-wide/from16 v11, p4
  :L0
    cmp-long v4, v11, v0
    if-lez v4, :L1
    move-object v4, p0
  .line 2
    iget-object v5, v4, Lokhttp3/internal/cache2/FileOperator;->fileChannel:Ljava/nio/channels/FileChannel;
    move-object/from16 v6, p3
    move-wide v7, v2
    move-wide v9, v11
    invoke-virtual/range { v5 .. v10 }, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    move-result-wide v5
    add-long/2addr v2, v5
    sub-long/2addr v11, v5
    goto :L0
  :L1
    move-object v4, p0
    return-void
  :L2
    move-object v4, p0
  .line 3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;
    invoke-direct { v0 }, Ljava/lang/IndexOutOfBoundsException;-><init>()V
    goto :L4
  :L3
    throw v0
  :L4
    goto :L3
.end method
