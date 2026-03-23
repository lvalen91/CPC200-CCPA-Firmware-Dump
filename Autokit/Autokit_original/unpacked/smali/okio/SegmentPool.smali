.class final Lokio/SegmentPool;
.super Ljava/lang/Object;
.source "SourceFile"

.field final static MAX_SIZE:J = 65536L

.field static byteCount:J

.field static next:Lokio/Segment;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
.end field

.method private constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method static recycle(Lokio/Segment;)V
  .catchall { :L1 .. :L4 } :L3
  .registers 9
  .line 1
    iget-object v0, p0, Lokio/Segment;->next:Lokio/Segment;
    if-nez v0, :L5
    iget-object v0, p0, Lokio/Segment;->prev:Lokio/Segment;
    if-nez v0, :L5
  .line 2
    iget-boolean v0, p0, Lokio/Segment;->shared:Z
    if-eqz v0, :L0
    return-void
  :L0
  .line 3
    const-class v0, Lokio/SegmentPool;
    monitor-enter v0
  :L1
  .line 4
    sget-wide v1, Lokio/SegmentPool;->byteCount:J
    const-wide/16 v3, 8192
    add-long/2addr v1, v3
    const-wide/32 v5, 65536
    cmp-long v7, v1, v5
    if-lez v7, :L2
    monitor-exit v0
    return-void
  :L2
  .line 5
    sget-wide v1, Lokio/SegmentPool;->byteCount:J
    add-long/2addr v1, v3
    sput-wide v1, Lokio/SegmentPool;->byteCount:J
  .line 6
    sget-object v1, Lokio/SegmentPool;->next:Lokio/Segment;
    iput-object v1, p0, Lokio/Segment;->next:Lokio/Segment;
    const/4 v1, 0
  .line 7
    iput v1, p0, Lokio/Segment;->limit:I
    iput v1, p0, Lokio/Segment;->pos:I
  .line 8
    sput-object p0, Lokio/SegmentPool;->next:Lokio/Segment;
  .line 9
    monitor-exit v0
    return-void
  :L3
    move-exception p0
    monitor-exit v0
  :L4
    throw p0
  :L5
  .line 10
    new-instance p0, Ljava/lang/IllegalArgumentException;
    invoke-direct { p0 }, Ljava/lang/IllegalArgumentException;-><init>()V
    throw p0
.end method

.method static take()Lokio/Segment;
  .catchall { :L0 .. :L2 } :L3
  .catchall { :L4 .. :L5 } :L3
  .registers 7
  .line 1
    const-class v0, Lokio/SegmentPool;
    monitor-enter v0
  :L0
  .line 2
    sget-object v1, Lokio/SegmentPool;->next:Lokio/Segment;
    if-eqz v1, :L1
  .line 3
    sget-object v1, Lokio/SegmentPool;->next:Lokio/Segment;
  .line 4
    iget-object v2, v1, Lokio/Segment;->next:Lokio/Segment;
    sput-object v2, Lokio/SegmentPool;->next:Lokio/Segment;
    const/4 v2, 0
  .line 5
    iput-object v2, v1, Lokio/Segment;->next:Lokio/Segment;
  .line 6
    sget-wide v2, Lokio/SegmentPool;->byteCount:J
    const-wide/16 v4, 8192
    sub-long/2addr v2, v4
    sput-wide v2, Lokio/SegmentPool;->byteCount:J
  .line 7
    monitor-exit v0
    return-object v1
  :L1
  .line 8
    monitor-exit v0
  :L2
  .line 9
    new-instance v0, Lokio/Segment;
    invoke-direct { v0 }, Lokio/Segment;-><init>()V
    return-object v0
  :L3
    move-exception v1
  :L4
  .line 10
    monitor-exit v0
  :L5
    throw v1
.end method
