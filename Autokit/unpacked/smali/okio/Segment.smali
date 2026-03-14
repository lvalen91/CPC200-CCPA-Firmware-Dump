.class final Lokio/Segment;
.super Ljava/lang/Object;
.source "SourceFile"

.field final static SHARE_MINIMUM:I = 1024

.field final static SIZE:I = 8192

.field final data:[B

.field limit:I

.field next:Lokio/Segment;

.field owner:Z

.field pos:I

.field prev:Lokio/Segment;

.field shared:Z

.method constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/16 v0, 8192
    new-array v0, v0, [B
  .line 2
    iput-object v0, p0, Lokio/Segment;->data:[B
    const/4 v0, 1
  .line 3
    iput-boolean v0, p0, Lokio/Segment;->owner:Z
    const/4 v0, 0
  .line 4
    iput-boolean v0, p0, Lokio/Segment;->shared:Z
    return-void
.end method

.method constructor <init>([BIIZZ)V
  .registers 6
  .line 5
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 6
    iput-object p1, p0, Lokio/Segment;->data:[B
  .line 7
    iput p2, p0, Lokio/Segment;->pos:I
  .line 8
    iput p3, p0, Lokio/Segment;->limit:I
  .line 9
    iput-boolean p4, p0, Lokio/Segment;->shared:Z
  .line 10
    iput-boolean p5, p0, Lokio/Segment;->owner:Z
    return-void
.end method

.method public final compact()V
  .registers 5
  .line 1
    iget-object v0, p0, Lokio/Segment;->prev:Lokio/Segment;
    if-eq v0, p0, :L4
  .line 2
    iget-boolean v1, v0, Lokio/Segment;->owner:Z
    if-nez v1, :L0
    return-void
  :L0
  .line 3
    iget v1, p0, Lokio/Segment;->limit:I
    iget v2, p0, Lokio/Segment;->pos:I
    sub-int/2addr v1, v2
  .line 4
    iget v2, v0, Lokio/Segment;->limit:I
    rsub-int v2, v2, 8192
    iget-boolean v3, v0, Lokio/Segment;->shared:Z
    if-eqz v3, :L1
    const/4 v0, 0
    goto :L2
  :L1
    iget v0, v0, Lokio/Segment;->pos:I
  :L2
    add-int/2addr v2, v0
    if-le v1, v2, :L3
    return-void
  :L3
  .line 5
    iget-object v0, p0, Lokio/Segment;->prev:Lokio/Segment;
    invoke-virtual { p0, v0, v1 }, Lokio/Segment;->writeTo(Lokio/Segment;I)V
  .line 6
    invoke-virtual { p0 }, Lokio/Segment;->pop()Lokio/Segment;
  .line 7
    invoke-static { p0 }, Lokio/SegmentPool;->recycle(Lokio/Segment;)V
    return-void
  :L4
  .line 8
    new-instance v0, Ljava/lang/IllegalStateException;
    invoke-direct { v0 }, Ljava/lang/IllegalStateException;-><init>()V
    throw v0
.end method

.method public final pop()Lokio/Segment;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
  .registers 5
  .line 1
    iget-object v0, p0, Lokio/Segment;->next:Lokio/Segment;
    const/4 v1, 0
    if-eq v0, p0, :L0
    goto :L1
  :L0
    move-object v0, v1
  :L1
  .line 2
    iget-object v2, p0, Lokio/Segment;->prev:Lokio/Segment;
    iget-object v3, p0, Lokio/Segment;->next:Lokio/Segment;
    iput-object v3, v2, Lokio/Segment;->next:Lokio/Segment;
  .line 3
    iget-object v3, p0, Lokio/Segment;->next:Lokio/Segment;
    iput-object v2, v3, Lokio/Segment;->prev:Lokio/Segment;
  .line 4
    iput-object v1, p0, Lokio/Segment;->next:Lokio/Segment;
  .line 5
    iput-object v1, p0, Lokio/Segment;->prev:Lokio/Segment;
    return-object v0
.end method

.method public final push(Lokio/Segment;)Lokio/Segment;
  .registers 3
  .line 1
    iput-object p0, p1, Lokio/Segment;->prev:Lokio/Segment;
  .line 2
    iget-object v0, p0, Lokio/Segment;->next:Lokio/Segment;
    iput-object v0, p1, Lokio/Segment;->next:Lokio/Segment;
  .line 3
    iget-object v0, p0, Lokio/Segment;->next:Lokio/Segment;
    iput-object p1, v0, Lokio/Segment;->prev:Lokio/Segment;
  .line 4
    iput-object p1, p0, Lokio/Segment;->next:Lokio/Segment;
    return-object p1
.end method

.method final sharedCopy()Lokio/Segment;
  .registers 8
    const/4 v0, 1
  .line 1
    iput-boolean v0, p0, Lokio/Segment;->shared:Z
  .line 2
    new-instance v0, Lokio/Segment;
    iget-object v2, p0, Lokio/Segment;->data:[B
    iget v3, p0, Lokio/Segment;->pos:I
    iget v4, p0, Lokio/Segment;->limit:I
    const/4 v5, 1
    const/4 v6, 0
    move-object v1, v0
    invoke-direct/range { v1 .. v6 }, Lokio/Segment;-><init>([BIIZZ)V
    return-object v0
.end method

.method public final split(I)Lokio/Segment;
  .registers 7
    if-lez p1, :L2
  .line 1
    iget v0, p0, Lokio/Segment;->limit:I
    iget v1, p0, Lokio/Segment;->pos:I
    sub-int/2addr v0, v1
    if-gt p1, v0, :L2
    const/16 v0, 1024
    if-lt p1, v0, :L0
  .line 2
    invoke-virtual { p0 }, Lokio/Segment;->sharedCopy()Lokio/Segment;
    move-result-object v0
    goto :L1
  :L0
  .line 3
    invoke-static { }, Lokio/SegmentPool;->take()Lokio/Segment;
    move-result-object v0
  .line 4
    iget-object v1, p0, Lokio/Segment;->data:[B
    iget v2, p0, Lokio/Segment;->pos:I
    iget-object v3, v0, Lokio/Segment;->data:[B
    const/4 v4, 0
    invoke-static { v1, v2, v3, v4, p1 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  :L1
  .line 5
    iget v1, v0, Lokio/Segment;->pos:I
    add-int/2addr v1, p1
    iput v1, v0, Lokio/Segment;->limit:I
  .line 6
    iget v1, p0, Lokio/Segment;->pos:I
    add-int/2addr v1, p1
    iput v1, p0, Lokio/Segment;->pos:I
  .line 7
    iget-object p1, p0, Lokio/Segment;->prev:Lokio/Segment;
    invoke-virtual { p1, v0 }, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;
    return-object v0
  :L2
  .line 8
    new-instance p1, Ljava/lang/IllegalArgumentException;
    invoke-direct { p1 }, Ljava/lang/IllegalArgumentException;-><init>()V
    throw p1
.end method

.method final unsharedCopy()Lokio/Segment;
  .registers 8
  .line 1
    new-instance v6, Lokio/Segment;
    iget-object v0, p0, Lokio/Segment;->data:[B
    invoke-virtual { v0 }, [B->clone()Ljava/lang/Object;
    move-result-object v0
    move-object v1, v0
    check-cast v1, [B
    iget v2, p0, Lokio/Segment;->pos:I
    iget v3, p0, Lokio/Segment;->limit:I
    const/4 v4, 0
    const/4 v5, 1
    move-object v0, v6
    invoke-direct/range { v0 .. v5 }, Lokio/Segment;-><init>([BIIZZ)V
    return-object v6
.end method

.method public final writeTo(Lokio/Segment;I)V
  .registers 7
  .line 1
    iget-boolean v0, p1, Lokio/Segment;->owner:Z
    if-eqz v0, :L3
  .line 2
    iget v0, p1, Lokio/Segment;->limit:I
    add-int v1, v0, p2
    const/16 v2, 8192
    if-le v1, v2, :L2
  .line 3
    iget-boolean v1, p1, Lokio/Segment;->shared:Z
    if-nez v1, :L1
    add-int v1, v0, p2
  .line 4
    iget v3, p1, Lokio/Segment;->pos:I
    sub-int/2addr v1, v3
    if-gt v1, v2, :L0
  .line 5
    iget-object v1, p1, Lokio/Segment;->data:[B
    sub-int/2addr v0, v3
    const/4 v2, 0
    invoke-static { v1, v3, v1, v2, v0 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  .line 6
    iget v0, p1, Lokio/Segment;->limit:I
    iget v1, p1, Lokio/Segment;->pos:I
    sub-int/2addr v0, v1
    iput v0, p1, Lokio/Segment;->limit:I
  .line 7
    iput v2, p1, Lokio/Segment;->pos:I
    goto :L2
  :L0
  .line 8
    new-instance p1, Ljava/lang/IllegalArgumentException;
    invoke-direct { p1 }, Ljava/lang/IllegalArgumentException;-><init>()V
    throw p1
  :L1
  .line 9
    new-instance p1, Ljava/lang/IllegalArgumentException;
    invoke-direct { p1 }, Ljava/lang/IllegalArgumentException;-><init>()V
    throw p1
  :L2
  .line 10
    iget-object v0, p0, Lokio/Segment;->data:[B
    iget v1, p0, Lokio/Segment;->pos:I
    iget-object v2, p1, Lokio/Segment;->data:[B
    iget v3, p1, Lokio/Segment;->limit:I
    invoke-static { v0, v1, v2, v3, p2 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  .line 11
    iget v0, p1, Lokio/Segment;->limit:I
    add-int/2addr v0, p2
    iput v0, p1, Lokio/Segment;->limit:I
  .line 12
    iget p1, p0, Lokio/Segment;->pos:I
    add-int/2addr p1, p2
    iput p1, p0, Lokio/Segment;->pos:I
    return-void
  :L3
  .line 13
    new-instance p1, Ljava/lang/IllegalArgumentException;
    invoke-direct { p1 }, Ljava/lang/IllegalArgumentException;-><init>()V
    throw p1
.end method
