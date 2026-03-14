.class final Lokhttp3/internal/http2/Hpack$Writer;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lokhttp3/internal/http2/Hpack;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 24
  name = "Writer"
.end annotation

.field private final static SETTINGS_HEADER_TABLE_SIZE:I = 4096

.field private final static SETTINGS_HEADER_TABLE_SIZE_LIMIT:I = 16384

.field dynamicTable:[Lokhttp3/internal/http2/Header;

.field dynamicTableByteCount:I

.field private emitDynamicTableSizeUpdate:Z

.field headerCount:I

.field headerTableSizeSetting:I

.field maxDynamicTableByteCount:I

.field nextHeaderIndex:I

.field private final out:Lokio/Buffer;

.field private smallestHeaderTableSizeSetting:I

.field private final useCompression:Z

.method constructor <init>(IZLokio/Buffer;)V
  .registers 5
  .line 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const v0, 2147483647
  .line 3
    iput v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->smallestHeaderTableSizeSetting:I
    const/16 v0, 8
    new-array v0, v0, [Lokhttp3/internal/http2/Header;
  .line 4
    iput-object v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;
  .line 5
    array-length v0, v0
    add-int/lit8 v0, v0, -1
    iput v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I
    const/4 v0, 0
  .line 6
    iput v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->headerCount:I
  .line 7
    iput v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I
  .line 8
    iput p1, p0, Lokhttp3/internal/http2/Hpack$Writer;->headerTableSizeSetting:I
  .line 9
    iput p1, p0, Lokhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I
  .line 10
    iput-boolean p2, p0, Lokhttp3/internal/http2/Hpack$Writer;->useCompression:Z
  .line 11
    iput-object p3, p0, Lokhttp3/internal/http2/Hpack$Writer;->out:Lokio/Buffer;
    return-void
.end method

.method constructor <init>(Lokio/Buffer;)V
  .registers 4
    const/16 v0, 4096
    const/4 v1, 1
  .line 1
    invoke-direct { p0, v0, v1, p1 }, Lokhttp3/internal/http2/Hpack$Writer;-><init>(IZLokio/Buffer;)V
    return-void
.end method

.method private adjustDynamicTableByteCount()V
  .registers 3
  .line 1
    iget v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I
    iget v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I
    if-ge v0, v1, :L1
    if-nez v0, :L0
  .line 2
    invoke-direct { p0 }, Lokhttp3/internal/http2/Hpack$Writer;->clearDynamicTable()V
    goto :L1
  :L0
    sub-int/2addr v1, v0
  .line 3
    invoke-direct { p0, v1 }, Lokhttp3/internal/http2/Hpack$Writer;->evictToRecoverBytes(I)I
  :L1
    return-void
.end method

.method private clearDynamicTable()V
  .registers 3
  .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;
    const/4 v1, 0
    invoke-static { v0, v1 }, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V
  .line 2
    iget-object v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;
    array-length v0, v0
    add-int/lit8 v0, v0, -1
    iput v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I
    const/4 v0, 0
  .line 3
    iput v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->headerCount:I
  .line 4
    iput v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I
    return-void
.end method

.method private evictToRecoverBytes(I)I
  .registers 6
    const/4 v0, 0
    if-lez p1, :L2
  .line 1
    iget-object v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;
    array-length v1, v1
    add-int/lit8 v1, v1, -1
  :L0
    iget v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I
    if-lt v1, v2, :L1
    if-lez p1, :L1
  .line 2
    iget-object v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;
    aget-object v3, v2, v1
    iget v3, v3, Lokhttp3/internal/http2/Header;->hpackSize:I
    sub-int/2addr p1, v3
  .line 3
    iget v3, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I
    aget-object v2, v2, v1
    iget v2, v2, Lokhttp3/internal/http2/Header;->hpackSize:I
    sub-int/2addr v3, v2
    iput v3, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I
  .line 4
    iget v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->headerCount:I
    add-int/lit8 v2, v2, -1
    iput v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->headerCount:I
    add-int/lit8 v0, v0, 1
    add-int/lit8 v1, v1, -1
    goto :L0
  :L1
  .line 5
    iget-object p1, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;
    iget v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I
    add-int/lit8 v2, v1, 1
    add-int/lit8 v1, v1, 1
    add-int/2addr v1, v0
    iget v3, p0, Lokhttp3/internal/http2/Hpack$Writer;->headerCount:I
    invoke-static { p1, v2, p1, v1, v3 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  .line 6
    iget-object p1, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;
    iget v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I
    add-int/lit8 v2, v1, 1
    add-int/lit8 v1, v1, 1
    add-int/2addr v1, v0
    const/4 v3, 0
    invoke-static { p1, v2, v1, v3 }, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V
  .line 7
    iget p1, p0, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I
    add-int/2addr p1, v0
    iput p1, p0, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I
  :L2
    return v0
.end method

.method private insertIntoDynamicTable(Lokhttp3/internal/http2/Header;)V
  .registers 8
  .line 1
    iget v0, p1, Lokhttp3/internal/http2/Header;->hpackSize:I
  .line 2
    iget v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I
    if-le v0, v1, :L0
  .line 3
    invoke-direct { p0 }, Lokhttp3/internal/http2/Hpack$Writer;->clearDynamicTable()V
    return-void
  :L0
  .line 4
    iget v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I
    add-int/2addr v2, v0
    sub-int/2addr v2, v1
  .line 5
    invoke-direct { p0, v2 }, Lokhttp3/internal/http2/Hpack$Writer;->evictToRecoverBytes(I)I
  .line 6
    iget v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->headerCount:I
    add-int/lit8 v1, v1, 1
    iget-object v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;
    array-length v3, v2
    if-le v1, v3, :L1
  .line 7
    array-length v1, v2
    mul-int/lit8 v1, v1, 2
    new-array v1, v1, [Lokhttp3/internal/http2/Header;
    const/4 v3, 0
  .line 8
    array-length v4, v2
    array-length v5, v2
    invoke-static { v2, v3, v1, v4, v5 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  .line 9
    iget-object v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;
    array-length v2, v2
    add-int/lit8 v2, v2, -1
    iput v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I
  .line 10
    iput-object v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;
  :L1
  .line 11
    iget v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I
    add-int/lit8 v2, v1, -1
    iput v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I
  .line 12
    iget-object v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;
    aput-object p1, v2, v1
  .line 13
    iget p1, p0, Lokhttp3/internal/http2/Hpack$Writer;->headerCount:I
    add-int/lit8 p1, p1, 1
    iput p1, p0, Lokhttp3/internal/http2/Hpack$Writer;->headerCount:I
  .line 14
    iget p1, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I
    add-int/2addr p1, v0
    iput p1, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I
    return-void
.end method

.method setHeaderTableSizeSetting(I)V
  .registers 3
  .line 1
    iput p1, p0, Lokhttp3/internal/http2/Hpack$Writer;->headerTableSizeSetting:I
    const/16 v0, 16384
  .line 2
    invoke-static { p1, v0 }, Ljava/lang/Math;->min(II)I
    move-result p1
  .line 3
    iget v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I
    if-ne v0, p1, :L0
    return-void
  :L0
    if-ge p1, v0, :L1
  .line 4
    iget v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->smallestHeaderTableSizeSetting:I
    invoke-static { v0, p1 }, Ljava/lang/Math;->min(II)I
    move-result v0
    iput v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->smallestHeaderTableSizeSetting:I
  :L1
    const/4 v0, 1
  .line 5
    iput-boolean v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->emitDynamicTableSizeUpdate:Z
  .line 6
    iput p1, p0, Lokhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I
  .line 7
    invoke-direct { p0 }, Lokhttp3/internal/http2/Hpack$Writer;->adjustDynamicTableByteCount()V
    return-void
.end method

.method writeByteString(Lokio/ByteString;)V
  .registers 5
  .line 1
    iget-boolean v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->useCompression:Z
    const/16 v1, 127
    if-eqz v0, :L0
    invoke-static { }, Lokhttp3/internal/http2/Huffman;->get()Lokhttp3/internal/http2/Huffman;
    move-result-object v0
    invoke-virtual { v0, p1 }, Lokhttp3/internal/http2/Huffman;->encodedLength(Lokio/ByteString;)I
    move-result v0
    invoke-virtual { p1 }, Lokio/ByteString;->size()I
    move-result v2
    if-ge v0, v2, :L0
  .line 2
    new-instance v0, Lokio/Buffer;
    invoke-direct { v0 }, Lokio/Buffer;-><init>()V
  .line 3
    invoke-static { }, Lokhttp3/internal/http2/Huffman;->get()Lokhttp3/internal/http2/Huffman;
    move-result-object v2
    invoke-virtual { v2, p1, v0 }, Lokhttp3/internal/http2/Huffman;->encode(Lokio/ByteString;Lokio/BufferedSink;)V
  .line 4
    invoke-virtual { v0 }, Lokio/Buffer;->readByteString()Lokio/ByteString;
    move-result-object p1
  .line 5
    invoke-virtual { p1 }, Lokio/ByteString;->size()I
    move-result v0
    const/16 v2, 128
    invoke-virtual { p0, v0, v1, v2 }, Lokhttp3/internal/http2/Hpack$Writer;->writeInt(III)V
  .line 6
    iget-object v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->out:Lokio/Buffer;
    invoke-virtual { v0, p1 }, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;
    goto :L1
  :L0
  .line 7
    invoke-virtual { p1 }, Lokio/ByteString;->size()I
    move-result v0
    const/4 v2, 0
    invoke-virtual { p0, v0, v1, v2 }, Lokhttp3/internal/http2/Hpack$Writer;->writeInt(III)V
  .line 8
    iget-object v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->out:Lokio/Buffer;
    invoke-virtual { v0, p1 }, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;
  :L1
    return-void
.end method

.method writeHeaders(Ljava/util/List;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/List<",
      "Lokhttp3/internal/http2/Header;",
      ">;)V"
    }
  .end annotation
  .registers 15
  .line 1
    iget-boolean v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->emitDynamicTableSizeUpdate:Z
    const/4 v1, 0
    if-eqz v0, :L1
  .line 2
    iget v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->smallestHeaderTableSizeSetting:I
    iget v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I
    const/16 v3, 32
    const/16 v4, 31
    if-ge v0, v2, :L0
  .line 3
    invoke-virtual { p0, v0, v4, v3 }, Lokhttp3/internal/http2/Hpack$Writer;->writeInt(III)V
  :L0
  .line 4
    iput-boolean v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->emitDynamicTableSizeUpdate:Z
    const v0, 2147483647
  .line 5
    iput v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->smallestHeaderTableSizeSetting:I
  .line 6
    iget v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I
    invoke-virtual { p0, v0, v4, v3 }, Lokhttp3/internal/http2/Hpack$Writer;->writeInt(III)V
  :L1
  .line 7
    invoke-interface { p1 }, Ljava/util/List;->size()I
    move-result v0
    const/4 v2, 0
  :L2
    if-ge v2, v0, :L15
  .line 8
    invoke-interface { p1, v2 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Lokhttp3/internal/http2/Header;
  .line 9
    iget-object v4, v3, Lokhttp3/internal/http2/Header;->name:Lokio/ByteString;
    invoke-virtual { v4 }, Lokio/ByteString;->toAsciiLowercase()Lokio/ByteString;
    move-result-object v4
  .line 10
    iget-object v5, v3, Lokhttp3/internal/http2/Header;->value:Lokio/ByteString;
  .line 11
    sget-object v6, Lokhttp3/internal/http2/Hpack;->NAME_TO_FIRST_INDEX:Ljava/util/Map;
    invoke-interface { v6, v4 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v6
    check-cast v6, Ljava/lang/Integer;
    const/4 v7, -1
    const/4 v8, 1
    if-eqz v6, :L5
  .line 12
    invoke-virtual { v6 }, Ljava/lang/Integer;->intValue()I
    move-result v6
    add-int/2addr v6, v8
    if-le v6, v8, :L4
    const/16 v9, 8
    if-ge v6, v9, :L4
  .line 13
    sget-object v9, Lokhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;
    add-int/lit8 v10, v6, -1
    aget-object v9, v9, v10
    iget-object v9, v9, Lokhttp3/internal/http2/Header;->value:Lokio/ByteString;
    invoke-static { v9, v5 }, Lokhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    move-result v9
    if-eqz v9, :L3
    move v9, v6
    goto :L6
  :L3
  .line 14
    sget-object v9, Lokhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;
    aget-object v9, v9, v6
    iget-object v9, v9, Lokhttp3/internal/http2/Header;->value:Lokio/ByteString;
    invoke-static { v9, v5 }, Lokhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    move-result v9
    if-eqz v9, :L4
    add-int/lit8 v9, v6, 1
    move v12, v9
    move v9, v6
    move v6, v12
    goto :L6
  :L4
    move v9, v6
    const/4 v6, -1
    goto :L6
  :L5
    const/4 v6, -1
    const/4 v9, -1
  :L6
    if-ne v6, v7, :L10
  .line 15
    iget v10, p0, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I
    add-int/2addr v10, v8
    iget-object v8, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;
    array-length v8, v8
  :L7
    if-ge v10, v8, :L10
  .line 16
    iget-object v11, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;
    aget-object v11, v11, v10
    iget-object v11, v11, Lokhttp3/internal/http2/Header;->name:Lokio/ByteString;
    invoke-static { v11, v4 }, Lokhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    move-result v11
    if-eqz v11, :L9
  .line 17
    iget-object v11, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;
    aget-object v11, v11, v10
    iget-object v11, v11, Lokhttp3/internal/http2/Header;->value:Lokio/ByteString;
    invoke-static { v11, v5 }, Lokhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    move-result v11
    if-eqz v11, :L8
  .line 18
    iget v6, p0, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I
    sub-int/2addr v10, v6
    sget-object v6, Lokhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;
    array-length v6, v6
    add-int/2addr v6, v10
    goto :L10
  :L8
    if-ne v9, v7, :L9
  .line 19
    iget v9, p0, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I
    sub-int v9, v10, v9
    sget-object v11, Lokhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;
    array-length v11, v11
    add-int/2addr v9, v11
  :L9
    add-int/lit8 v10, v10, 1
    goto :L7
  :L10
    if-eq v6, v7, :L11
    const/16 v3, 127
    const/16 v4, 128
  .line 20
    invoke-virtual { p0, v6, v3, v4 }, Lokhttp3/internal/http2/Hpack$Writer;->writeInt(III)V
    goto :L14
  :L11
    const/16 v6, 64
    if-ne v9, v7, :L12
  .line 21
    iget-object v7, p0, Lokhttp3/internal/http2/Hpack$Writer;->out:Lokio/Buffer;
    invoke-virtual { v7, v6 }, Lokio/Buffer;->writeByte(I)Lokio/Buffer;
  .line 22
    invoke-virtual { p0, v4 }, Lokhttp3/internal/http2/Hpack$Writer;->writeByteString(Lokio/ByteString;)V
  .line 23
    invoke-virtual { p0, v5 }, Lokhttp3/internal/http2/Hpack$Writer;->writeByteString(Lokio/ByteString;)V
  .line 24
    invoke-direct { p0, v3 }, Lokhttp3/internal/http2/Hpack$Writer;->insertIntoDynamicTable(Lokhttp3/internal/http2/Header;)V
    goto :L14
  :L12
  .line 25
    sget-object v7, Lokhttp3/internal/http2/Header;->PSEUDO_PREFIX:Lokio/ByteString;
    invoke-virtual { v4, v7 }, Lokio/ByteString;->startsWith(Lokio/ByteString;)Z
    move-result v7
    if-eqz v7, :L13
    sget-object v7, Lokhttp3/internal/http2/Header;->TARGET_AUTHORITY:Lokio/ByteString;
    invoke-virtual { v7, v4 }, Lokio/ByteString;->equals(Ljava/lang/Object;)Z
    move-result v4
    if-nez v4, :L13
    const/16 v3, 15
  .line 26
    invoke-virtual { p0, v9, v3, v1 }, Lokhttp3/internal/http2/Hpack$Writer;->writeInt(III)V
  .line 27
    invoke-virtual { p0, v5 }, Lokhttp3/internal/http2/Hpack$Writer;->writeByteString(Lokio/ByteString;)V
    goto :L14
  :L13
    const/16 v4, 63
  .line 28
    invoke-virtual { p0, v9, v4, v6 }, Lokhttp3/internal/http2/Hpack$Writer;->writeInt(III)V
  .line 29
    invoke-virtual { p0, v5 }, Lokhttp3/internal/http2/Hpack$Writer;->writeByteString(Lokio/ByteString;)V
  .line 30
    invoke-direct { p0, v3 }, Lokhttp3/internal/http2/Hpack$Writer;->insertIntoDynamicTable(Lokhttp3/internal/http2/Header;)V
  :L14
    add-int/lit8 v2, v2, 1
    goto/16 :L2
  :L15
    return-void
.end method

.method writeInt(III)V
  .registers 5
    if-ge p1, p2, :L0
  .line 1
    iget-object p2, p0, Lokhttp3/internal/http2/Hpack$Writer;->out:Lokio/Buffer;
    or-int/2addr p1, p3
    invoke-virtual { p2, p1 }, Lokio/Buffer;->writeByte(I)Lokio/Buffer;
    return-void
  :L0
  .line 2
    iget-object v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->out:Lokio/Buffer;
    or-int/2addr p3, p2
    invoke-virtual { v0, p3 }, Lokio/Buffer;->writeByte(I)Lokio/Buffer;
    sub-int/2addr p1, p2
  :L1
    const/16 p2, 128
    if-lt p1, p2, :L2
    and-int/lit8 p3, p1, 127
  .line 3
    iget-object v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->out:Lokio/Buffer;
    or-int/2addr p2, p3
    invoke-virtual { v0, p2 }, Lokio/Buffer;->writeByte(I)Lokio/Buffer;
    ushr-int/lit8 p1, p1, 7
    goto :L1
  :L2
  .line 4
    iget-object p2, p0, Lokhttp3/internal/http2/Hpack$Writer;->out:Lokio/Buffer;
    invoke-virtual { p2, p1 }, Lokio/Buffer;->writeByte(I)Lokio/Buffer;
    return-void
.end method
