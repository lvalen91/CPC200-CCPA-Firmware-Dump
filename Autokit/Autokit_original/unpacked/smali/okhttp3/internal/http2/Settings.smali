.class public final Lokhttp3/internal/http2/Settings;
.super Ljava/lang/Object;
.source "SourceFile"

.field final static COUNT:I = 10

.field final static DEFAULT_INITIAL_WINDOW_SIZE:I = 65535

.field final static ENABLE_PUSH:I = 2

.field final static HEADER_TABLE_SIZE:I = 1

.field final static INITIAL_WINDOW_SIZE:I = 7

.field final static MAX_CONCURRENT_STREAMS:I = 4

.field final static MAX_FRAME_SIZE:I = 5

.field final static MAX_HEADER_LIST_SIZE:I = 6

.field private set:I

.field private final values:[I

.method public constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/16 v0, 10
    new-array v0, v0, [I
  .line 2
    iput-object v0, p0, Lokhttp3/internal/http2/Settings;->values:[I
    return-void
.end method

.method clear()V
  .registers 3
    const/4 v0, 0
  .line 1
    iput v0, p0, Lokhttp3/internal/http2/Settings;->set:I
  .line 2
    iget-object v1, p0, Lokhttp3/internal/http2/Settings;->values:[I
    invoke-static { v1, v0 }, Ljava/util/Arrays;->fill([II)V
    return-void
.end method

.method get(I)I
  .registers 3
  .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Settings;->values:[I
    aget p1, v0, p1
    return p1
.end method

.method getEnablePush(Z)Z
  .registers 5
  .line 1
    iget v0, p0, Lokhttp3/internal/http2/Settings;->set:I
    and-int/lit8 v0, v0, 4
    const/4 v1, 0
    const/4 v2, 1
    if-eqz v0, :L0
    iget-object p1, p0, Lokhttp3/internal/http2/Settings;->values:[I
    const/4 v0, 2
    aget p1, p1, v0
    goto :L2
  :L0
    if-eqz p1, :L1
    const/4 p1, 1
    goto :L2
  :L1
    const/4 p1, 0
  :L2
    if-ne p1, v2, :L3
    const/4 v1, 1
  :L3
    return v1
.end method

.method getHeaderTableSize()I
  .registers 3
  .line 1
    iget v0, p0, Lokhttp3/internal/http2/Settings;->set:I
    and-int/lit8 v0, v0, 2
    if-eqz v0, :L0
    iget-object v0, p0, Lokhttp3/internal/http2/Settings;->values:[I
    const/4 v1, 1
    aget v0, v0, v1
    goto :L1
  :L0
    const/4 v0, -1
  :L1
    return v0
.end method

.method getInitialWindowSize()I
  .registers 3
  .line 1
    iget v0, p0, Lokhttp3/internal/http2/Settings;->set:I
    and-int/lit16 v0, v0, 128
    if-eqz v0, :L0
    iget-object v0, p0, Lokhttp3/internal/http2/Settings;->values:[I
    const/4 v1, 7
    aget v0, v0, v1
    goto :L1
  :L0
    const v0, 65535
  :L1
    return v0
.end method

.method getMaxConcurrentStreams(I)I
  .registers 3
  .line 1
    iget v0, p0, Lokhttp3/internal/http2/Settings;->set:I
    and-int/lit8 v0, v0, 16
    if-eqz v0, :L0
    iget-object p1, p0, Lokhttp3/internal/http2/Settings;->values:[I
    const/4 v0, 4
    aget p1, p1, v0
  :L0
    return p1
.end method

.method getMaxFrameSize(I)I
  .registers 3
  .line 1
    iget v0, p0, Lokhttp3/internal/http2/Settings;->set:I
    and-int/lit8 v0, v0, 32
    if-eqz v0, :L0
    iget-object p1, p0, Lokhttp3/internal/http2/Settings;->values:[I
    const/4 v0, 5
    aget p1, p1, v0
  :L0
    return p1
.end method

.method getMaxHeaderListSize(I)I
  .registers 3
  .line 1
    iget v0, p0, Lokhttp3/internal/http2/Settings;->set:I
    and-int/lit8 v0, v0, 64
    if-eqz v0, :L0
    iget-object p1, p0, Lokhttp3/internal/http2/Settings;->values:[I
    const/4 v0, 6
    aget p1, p1, v0
  :L0
    return p1
.end method

.method isSet(I)Z
  .registers 4
    const/4 v0, 1
    shl-int p1, v0, p1
  .line 1
    iget v1, p0, Lokhttp3/internal/http2/Settings;->set:I
    and-int/2addr p1, v1
    if-eqz p1, :L0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method merge(Lokhttp3/internal/http2/Settings;)V
  .registers 4
    const/4 v0, 0
  :L0
    const/16 v1, 10
    if-ge v0, v1, :L3
  .line 1
    invoke-virtual { p1, v0 }, Lokhttp3/internal/http2/Settings;->isSet(I)Z
    move-result v1
    if-nez v1, :L1
    goto :L2
  :L1
  .line 2
    invoke-virtual { p1, v0 }, Lokhttp3/internal/http2/Settings;->get(I)I
    move-result v1
    invoke-virtual { p0, v0, v1 }, Lokhttp3/internal/http2/Settings;->set(II)Lokhttp3/internal/http2/Settings;
  :L2
    add-int/lit8 v0, v0, 1
    goto :L0
  :L3
    return-void
.end method

.method set(II)Lokhttp3/internal/http2/Settings;
  .registers 6
    if-ltz p1, :L1
  .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Settings;->values:[I
    array-length v1, v0
    if-lt p1, v1, :L0
    goto :L1
  :L0
    const/4 v1, 1
    shl-int/2addr v1, p1
  .line 2
    iget v2, p0, Lokhttp3/internal/http2/Settings;->set:I
    or-int/2addr v1, v2
    iput v1, p0, Lokhttp3/internal/http2/Settings;->set:I
  .line 3
    aput p2, v0, p1
  :L1
    return-object p0
.end method

.method size()I
  .registers 2
  .line 1
    iget v0, p0, Lokhttp3/internal/http2/Settings;->set:I
    invoke-static { v0 }, Ljava/lang/Integer;->bitCount(I)I
    move-result v0
    return v0
.end method
