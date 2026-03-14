.class final Lokhttp3/internal/http2/Hpack$Reader;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lokhttp3/internal/http2/Hpack;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 24
  name = "Reader"
.end annotation

.field dynamicTable:[Lokhttp3/internal/http2/Header;

.field dynamicTableByteCount:I

.field headerCount:I

.field private final headerList:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List<",
      "Lokhttp3/internal/http2/Header;",
      ">;"
    }
  .end annotation
.end field

.field private final headerTableSizeSetting:I

.field private maxDynamicTableByteCount:I

.field nextHeaderIndex:I

.field private final source:Lokio/BufferedSource;

.method constructor <init>(IILokio/Source;)V
  .registers 5
  .line 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 3
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Lokhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;
    const/16 v0, 8
    new-array v0, v0, [Lokhttp3/internal/http2/Header;
  .line 4
    iput-object v0, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;
  .line 5
    array-length v0, v0
    add-int/lit8 v0, v0, -1
    iput v0, p0, Lokhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I
    const/4 v0, 0
  .line 6
    iput v0, p0, Lokhttp3/internal/http2/Hpack$Reader;->headerCount:I
  .line 7
    iput v0, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I
  .line 8
    iput p1, p0, Lokhttp3/internal/http2/Hpack$Reader;->headerTableSizeSetting:I
  .line 9
    iput p2, p0, Lokhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I
  .line 10
    invoke-static { p3 }, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;
    move-result-object p1
    iput-object p1, p0, Lokhttp3/internal/http2/Hpack$Reader;->source:Lokio/BufferedSource;
    return-void
.end method

.method constructor <init>(ILokio/Source;)V
  .registers 3
  .line 1
    invoke-direct { p0, p1, p1, p2 }, Lokhttp3/internal/http2/Hpack$Reader;-><init>(IILokio/Source;)V
    return-void
.end method

.method private adjustDynamicTableByteCount()V
  .registers 3
  .line 1
    iget v0, p0, Lokhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I
    iget v1, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I
    if-ge v0, v1, :L1
    if-nez v0, :L0
  .line 2
    invoke-direct { p0 }, Lokhttp3/internal/http2/Hpack$Reader;->clearDynamicTable()V
    goto :L1
  :L0
    sub-int/2addr v1, v0
  .line 3
    invoke-direct { p0, v1 }, Lokhttp3/internal/http2/Hpack$Reader;->evictToRecoverBytes(I)I
  :L1
    return-void
.end method

.method private clearDynamicTable()V
  .registers 3
  .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;
    const/4 v1, 0
    invoke-static { v0, v1 }, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V
  .line 2
    iget-object v0, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;
    array-length v0, v0
    add-int/lit8 v0, v0, -1
    iput v0, p0, Lokhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I
    const/4 v0, 0
  .line 3
    iput v0, p0, Lokhttp3/internal/http2/Hpack$Reader;->headerCount:I
  .line 4
    iput v0, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I
    return-void
.end method

.method private dynamicTableIndex(I)I
  .registers 3
  .line 1
    iget v0, p0, Lokhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I
    add-int/lit8 v0, v0, 1
    add-int/2addr v0, p1
    return v0
.end method

.method private evictToRecoverBytes(I)I
  .registers 6
    const/4 v0, 0
    if-lez p1, :L2
  .line 1
    iget-object v1, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;
    array-length v1, v1
    add-int/lit8 v1, v1, -1
  :L0
    iget v2, p0, Lokhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I
    if-lt v1, v2, :L1
    if-lez p1, :L1
  .line 2
    iget-object v2, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;
    aget-object v3, v2, v1
    iget v3, v3, Lokhttp3/internal/http2/Header;->hpackSize:I
    sub-int/2addr p1, v3
  .line 3
    iget v3, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I
    aget-object v2, v2, v1
    iget v2, v2, Lokhttp3/internal/http2/Header;->hpackSize:I
    sub-int/2addr v3, v2
    iput v3, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I
  .line 4
    iget v2, p0, Lokhttp3/internal/http2/Hpack$Reader;->headerCount:I
    add-int/lit8 v2, v2, -1
    iput v2, p0, Lokhttp3/internal/http2/Hpack$Reader;->headerCount:I
    add-int/lit8 v0, v0, 1
    add-int/lit8 v1, v1, -1
    goto :L0
  :L1
  .line 5
    iget-object p1, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;
    iget v1, p0, Lokhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I
    add-int/lit8 v2, v1, 1
    add-int/lit8 v1, v1, 1
    add-int/2addr v1, v0
    iget v3, p0, Lokhttp3/internal/http2/Hpack$Reader;->headerCount:I
    invoke-static { p1, v2, p1, v1, v3 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  .line 6
    iget p1, p0, Lokhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I
    add-int/2addr p1, v0
    iput p1, p0, Lokhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I
  :L2
    return v0
.end method

.method private getName(I)Lokio/ByteString;
  .registers 5
  .line 1
    invoke-direct { p0, p1 }, Lokhttp3/internal/http2/Hpack$Reader;->isStaticHeader(I)Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    sget-object v0, Lokhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;
    aget-object p1, v0, p1
    iget-object p1, p1, Lokhttp3/internal/http2/Header;->name:Lokio/ByteString;
    return-object p1
  :L0
  .line 3
    sget-object v0, Lokhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;
    array-length v0, v0
    sub-int v0, p1, v0
    invoke-direct { p0, v0 }, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTableIndex(I)I
    move-result v0
    if-ltz v0, :L1
  .line 4
    iget-object v1, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;
    array-length v2, v1
    if-ge v0, v2, :L1
  .line 5
    aget-object p1, v1, v0
    iget-object p1, p1, Lokhttp3/internal/http2/Header;->name:Lokio/ByteString;
    return-object p1
  :L1
  .line 6
    new-instance v0, Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Header index too large "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    add-int/lit8 p1, p1, 1
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method private insertIntoDynamicTable(ILokhttp3/internal/http2/Header;)V
  .registers 8
  .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;
    invoke-interface { v0, p2 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 2
    iget v0, p2, Lokhttp3/internal/http2/Header;->hpackSize:I
    const/4 v1, -1
    if-eq p1, v1, :L0
  .line 3
    iget-object v2, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;
    invoke-direct { p0, p1 }, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTableIndex(I)I
    move-result v3
    aget-object v2, v2, v3
    iget v2, v2, Lokhttp3/internal/http2/Header;->hpackSize:I
    sub-int/2addr v0, v2
  :L0
  .line 4
    iget v2, p0, Lokhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I
    if-le v0, v2, :L1
  .line 5
    invoke-direct { p0 }, Lokhttp3/internal/http2/Hpack$Reader;->clearDynamicTable()V
    return-void
  :L1
  .line 6
    iget v3, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I
    add-int/2addr v3, v0
    sub-int/2addr v3, v2
  .line 7
    invoke-direct { p0, v3 }, Lokhttp3/internal/http2/Hpack$Reader;->evictToRecoverBytes(I)I
    move-result v2
    if-ne p1, v1, :L3
  .line 8
    iget p1, p0, Lokhttp3/internal/http2/Hpack$Reader;->headerCount:I
    add-int/lit8 p1, p1, 1
    iget-object v1, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;
    array-length v2, v1
    if-le p1, v2, :L2
  .line 9
    array-length p1, v1
    mul-int/lit8 p1, p1, 2
    new-array p1, p1, [Lokhttp3/internal/http2/Header;
    const/4 v2, 0
  .line 10
    array-length v3, v1
    array-length v4, v1
    invoke-static { v1, v2, p1, v3, v4 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  .line 11
    iget-object v1, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;
    array-length v1, v1
    add-int/lit8 v1, v1, -1
    iput v1, p0, Lokhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I
  .line 12
    iput-object p1, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;
  :L2
  .line 13
    iget p1, p0, Lokhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I
    add-int/lit8 v1, p1, -1
    iput v1, p0, Lokhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I
  .line 14
    iget-object v1, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;
    aput-object p2, v1, p1
  .line 15
    iget p1, p0, Lokhttp3/internal/http2/Hpack$Reader;->headerCount:I
    add-int/lit8 p1, p1, 1
    iput p1, p0, Lokhttp3/internal/http2/Hpack$Reader;->headerCount:I
    goto :L4
  :L3
  .line 16
    invoke-direct { p0, p1 }, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTableIndex(I)I
    move-result v1
    add-int/2addr v1, v2
    add-int/2addr p1, v1
  .line 17
    iget-object v1, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;
    aput-object p2, v1, p1
  :L4
  .line 18
    iget p1, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I
    add-int/2addr p1, v0
    iput p1, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I
    return-void
.end method

.method private isStaticHeader(I)Z
  .registers 4
    const/4 v0, 1
    if-ltz p1, :L0
  .line 1
    sget-object v1, Lokhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;
    array-length v1, v1
    sub-int/2addr v1, v0
    if-gt p1, v1, :L0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method private readByte()I
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Hpack$Reader;->source:Lokio/BufferedSource;
    invoke-interface { v0 }, Lokio/BufferedSource;->readByte()B
    move-result v0
    and-int/lit16 v0, v0, 255
    return v0
.end method

.method private readIndexedHeader(I)V
  .registers 5
  .line 1
    invoke-direct { p0, p1 }, Lokhttp3/internal/http2/Hpack$Reader;->isStaticHeader(I)Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    sget-object v0, Lokhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;
    aget-object p1, v0, p1
  .line 3
    iget-object v0, p0, Lokhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;
    invoke-interface { v0, p1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    goto :L1
  :L0
  .line 4
    sget-object v0, Lokhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;
    array-length v0, v0
    sub-int v0, p1, v0
    invoke-direct { p0, v0 }, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTableIndex(I)I
    move-result v0
    if-ltz v0, :L2
  .line 5
    iget-object v1, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;
    array-length v2, v1
    if-ge v0, v2, :L2
  .line 6
    iget-object p1, p0, Lokhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;
    aget-object v0, v1, v0
    invoke-interface { p1, v0 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  :L1
    return-void
  :L2
  .line 7
    new-instance v0, Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Header index too large "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    add-int/lit8 p1, p1, 1
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method private readLiteralHeaderWithIncrementalIndexingIndexedName(I)V
  .registers 4
  .line 1
    invoke-direct { p0, p1 }, Lokhttp3/internal/http2/Hpack$Reader;->getName(I)Lokio/ByteString;
    move-result-object p1
  .line 2
    invoke-virtual { p0 }, Lokhttp3/internal/http2/Hpack$Reader;->readByteString()Lokio/ByteString;
    move-result-object v0
  .line 3
    new-instance v1, Lokhttp3/internal/http2/Header;
    invoke-direct { v1, p1, v0 }, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V
    const/4 p1, -1
    invoke-direct { p0, p1, v1 }, Lokhttp3/internal/http2/Hpack$Reader;->insertIntoDynamicTable(ILokhttp3/internal/http2/Header;)V
    return-void
.end method

.method private readLiteralHeaderWithIncrementalIndexingNewName()V
  .registers 4
  .line 1
    invoke-virtual { p0 }, Lokhttp3/internal/http2/Hpack$Reader;->readByteString()Lokio/ByteString;
    move-result-object v0
    invoke-static { v0 }, Lokhttp3/internal/http2/Hpack;->checkLowercase(Lokio/ByteString;)Lokio/ByteString;
    move-result-object v0
  .line 2
    invoke-virtual { p0 }, Lokhttp3/internal/http2/Hpack$Reader;->readByteString()Lokio/ByteString;
    move-result-object v1
  .line 3
    new-instance v2, Lokhttp3/internal/http2/Header;
    invoke-direct { v2, v0, v1 }, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V
    const/4 v0, -1
    invoke-direct { p0, v0, v2 }, Lokhttp3/internal/http2/Hpack$Reader;->insertIntoDynamicTable(ILokhttp3/internal/http2/Header;)V
    return-void
.end method

.method private readLiteralHeaderWithoutIndexingIndexedName(I)V
  .registers 5
  .line 1
    invoke-direct { p0, p1 }, Lokhttp3/internal/http2/Hpack$Reader;->getName(I)Lokio/ByteString;
    move-result-object p1
  .line 2
    invoke-virtual { p0 }, Lokhttp3/internal/http2/Hpack$Reader;->readByteString()Lokio/ByteString;
    move-result-object v0
  .line 3
    iget-object v1, p0, Lokhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;
    new-instance v2, Lokhttp3/internal/http2/Header;
    invoke-direct { v2, p1, v0 }, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V
    invoke-interface { v1, v2 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    return-void
.end method

.method private readLiteralHeaderWithoutIndexingNewName()V
  .registers 5
  .line 1
    invoke-virtual { p0 }, Lokhttp3/internal/http2/Hpack$Reader;->readByteString()Lokio/ByteString;
    move-result-object v0
    invoke-static { v0 }, Lokhttp3/internal/http2/Hpack;->checkLowercase(Lokio/ByteString;)Lokio/ByteString;
    move-result-object v0
  .line 2
    invoke-virtual { p0 }, Lokhttp3/internal/http2/Hpack$Reader;->readByteString()Lokio/ByteString;
    move-result-object v1
  .line 3
    iget-object v2, p0, Lokhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;
    new-instance v3, Lokhttp3/internal/http2/Header;
    invoke-direct { v3, v0, v1 }, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V
    invoke-interface { v2, v3 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    return-void
.end method

.method public getAndResetHeaderList()Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Ljava/util/List<",
      "Lokhttp3/internal/http2/Header;",
      ">;"
    }
  .end annotation
  .registers 3
  .line 1
    new-instance v0, Ljava/util/ArrayList;
    iget-object v1, p0, Lokhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;
    invoke-direct { v0, v1 }, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
  .line 2
    iget-object v1, p0, Lokhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;
    invoke-interface { v1 }, Ljava/util/List;->clear()V
    return-object v0
.end method

.method maxDynamicTableByteCount()I
  .registers 2
  .line 1
    iget v0, p0, Lokhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I
    return v0
.end method

.method readByteString()Lokio/ByteString;
  .registers 6
  .line 1
    invoke-direct { p0 }, Lokhttp3/internal/http2/Hpack$Reader;->readByte()I
    move-result v0
    and-int/lit16 v1, v0, 128
    const/16 v2, 128
    if-ne v1, v2, :L0
    const/4 v1, 1
    goto :L1
  :L0
    const/4 v1, 0
  :L1
    const/16 v2, 127
  .line 2
    invoke-virtual { p0, v0, v2 }, Lokhttp3/internal/http2/Hpack$Reader;->readInt(II)I
    move-result v0
    if-eqz v1, :L2
  .line 3
    invoke-static { }, Lokhttp3/internal/http2/Huffman;->get()Lokhttp3/internal/http2/Huffman;
    move-result-object v1
    iget-object v2, p0, Lokhttp3/internal/http2/Hpack$Reader;->source:Lokio/BufferedSource;
    int-to-long v3, v0
    invoke-interface { v2, v3, v4 }, Lokio/BufferedSource;->readByteArray(J)[B
    move-result-object v0
    invoke-virtual { v1, v0 }, Lokhttp3/internal/http2/Huffman;->decode([B)[B
    move-result-object v0
    invoke-static { v0 }, Lokio/ByteString;->of([B)Lokio/ByteString;
    move-result-object v0
    return-object v0
  :L2
  .line 4
    iget-object v1, p0, Lokhttp3/internal/http2/Hpack$Reader;->source:Lokio/BufferedSource;
    int-to-long v2, v0
    invoke-interface { v1, v2, v3 }, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;
    move-result-object v0
    return-object v0
.end method

.method readHeaders()V
  .registers 4
  :L0
  .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Hpack$Reader;->source:Lokio/BufferedSource;
    invoke-interface { v0 }, Lokio/BufferedSource;->exhausted()Z
    move-result v0
    if-nez v0, :L9
  .line 2
    iget-object v0, p0, Lokhttp3/internal/http2/Hpack$Reader;->source:Lokio/BufferedSource;
    invoke-interface { v0 }, Lokio/BufferedSource;->readByte()B
    move-result v0
    and-int/lit16 v0, v0, 255
    const/16 v1, 128
    if-eq v0, v1, :L8
    and-int/lit16 v2, v0, 128
    if-ne v2, v1, :L1
    const/16 v1, 127
  .line 3
    invoke-virtual { p0, v0, v1 }, Lokhttp3/internal/http2/Hpack$Reader;->readInt(II)I
    move-result v0
    add-int/lit8 v0, v0, -1
  .line 4
    invoke-direct { p0, v0 }, Lokhttp3/internal/http2/Hpack$Reader;->readIndexedHeader(I)V
    goto :L0
  :L1
    const/16 v1, 64
    if-ne v0, v1, :L2
  .line 5
    invoke-direct { p0 }, Lokhttp3/internal/http2/Hpack$Reader;->readLiteralHeaderWithIncrementalIndexingNewName()V
    goto :L0
  :L2
    and-int/lit8 v2, v0, 64
    if-ne v2, v1, :L3
    const/16 v1, 63
  .line 6
    invoke-virtual { p0, v0, v1 }, Lokhttp3/internal/http2/Hpack$Reader;->readInt(II)I
    move-result v0
    add-int/lit8 v0, v0, -1
  .line 7
    invoke-direct { p0, v0 }, Lokhttp3/internal/http2/Hpack$Reader;->readLiteralHeaderWithIncrementalIndexingIndexedName(I)V
    goto :L0
  :L3
    and-int/lit8 v1, v0, 32
    const/16 v2, 32
    if-ne v1, v2, :L5
    const/16 v1, 31
  .line 8
    invoke-virtual { p0, v0, v1 }, Lokhttp3/internal/http2/Hpack$Reader;->readInt(II)I
    move-result v0
    iput v0, p0, Lokhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I
    if-ltz v0, :L4
  .line 9
    iget v1, p0, Lokhttp3/internal/http2/Hpack$Reader;->headerTableSizeSetting:I
    if-gt v0, v1, :L4
  .line 10
    invoke-direct { p0 }, Lokhttp3/internal/http2/Hpack$Reader;->adjustDynamicTableByteCount()V
    goto :L0
  :L4
  .line 11
    new-instance v0, Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Invalid dynamic table size update "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v2, p0, Lokhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, v1 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw v0
  :L5
    const/16 v1, 16
    if-eq v0, v1, :L7
    if-nez v0, :L6
    goto :L7
  :L6
    const/16 v1, 15
  .line 12
    invoke-virtual { p0, v0, v1 }, Lokhttp3/internal/http2/Hpack$Reader;->readInt(II)I
    move-result v0
    add-int/lit8 v0, v0, -1
  .line 13
    invoke-direct { p0, v0 }, Lokhttp3/internal/http2/Hpack$Reader;->readLiteralHeaderWithoutIndexingIndexedName(I)V
    goto :L0
  :L7
  .line 14
    invoke-direct { p0 }, Lokhttp3/internal/http2/Hpack$Reader;->readLiteralHeaderWithoutIndexingNewName()V
    goto/16 :L0
  :L8
  .line 15
    new-instance v0, Ljava/io/IOException;
    const-string v1, "index == 0"
    invoke-direct { v0, v1 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw v0
  :L9
    return-void
.end method

.method readInt(II)I
  .registers 5
    and-int/2addr p1, p2
    if-ge p1, p2, :L0
    return p1
  :L0
    const/4 p1, 0
  :L1
  .line 1
    invoke-direct { p0 }, Lokhttp3/internal/http2/Hpack$Reader;->readByte()I
    move-result v0
    and-int/lit16 v1, v0, 128
    if-eqz v1, :L2
    and-int/lit8 v0, v0, 127
    shl-int/2addr v0, p1
    add-int/2addr p2, v0
    add-int/lit8 p1, p1, 7
    goto :L1
  :L2
    shl-int p1, v0, p1
    add-int/2addr p2, p1
    return p2
.end method
