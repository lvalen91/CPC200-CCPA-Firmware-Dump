.class Lokhttp3/internal/http2/Huffman;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lokhttp3/internal/http2/Huffman$Node;
  }
.end annotation

.field private final static CODES:[I

.field private final static CODE_LENGTHS:[B

.field private final static INSTANCE:Lokhttp3/internal/http2/Huffman;

.field private final root:Lokhttp3/internal/http2/Huffman$Node;

.method static constructor <clinit>()V
  .registers 2
    const/16 v0, 256
    new-array v1, v0, [I
  .line 1
    fill-array-data v1, :L0
    sput-object v1, Lokhttp3/internal/http2/Huffman;->CODES:[I
    new-array v0, v0, [B
  .line 2
    fill-array-data v0, :L1
    sput-object v0, Lokhttp3/internal/http2/Huffman;->CODE_LENGTHS:[B
  .line 3
    new-instance v0, Lokhttp3/internal/http2/Huffman;
    invoke-direct { v0 }, Lokhttp3/internal/http2/Huffman;-><init>()V
    sput-object v0, Lokhttp3/internal/http2/Huffman;->INSTANCE:Lokhttp3/internal/http2/Huffman;
    return-void
  :L0
  .array-data 4
    -8t 31t 0t 0t
    -40t -1t 127t 0t
    -30t -1t -1t 15t
    -29t -1t -1t 15t
    -28t -1t -1t 15t
    -27t -1t -1t 15t
    -26t -1t -1t 15t
    -25t -1t -1t 15t
    -24t -1t -1t 15t
    -22t -1t -1t 0t
    -4t -1t -1t 63t
    -23t -1t -1t 15t
    -22t -1t -1t 15t
    -3t -1t -1t 63t
    -21t -1t -1t 15t
    -20t -1t -1t 15t
    -19t -1t -1t 15t
    -18t -1t -1t 15t
    -17t -1t -1t 15t
    -16t -1t -1t 15t
    -15t -1t -1t 15t
    -14t -1t -1t 15t
    -2t -1t -1t 63t
    -13t -1t -1t 15t
    -12t -1t -1t 15t
    -11t -1t -1t 15t
    -10t -1t -1t 15t
    -9t -1t -1t 15t
    -8t -1t -1t 15t
    -7t -1t -1t 15t
    -6t -1t -1t 15t
    -5t -1t -1t 15t
    20t 0t 0t 0t
    -8t 3t 0t 0t
    -7t 3t 0t 0t
    -6t 15t 0t 0t
    -7t 31t 0t 0t
    21t 0t 0t 0t
    -8t 0t 0t 0t
    -6t 7t 0t 0t
    -6t 3t 0t 0t
    -5t 3t 0t 0t
    -7t 0t 0t 0t
    -5t 7t 0t 0t
    -6t 0t 0t 0t
    22t 0t 0t 0t
    23t 0t 0t 0t
    24t 0t 0t 0t
    0t 0t 0t 0t
    1t 0t 0t 0t
    2t 0t 0t 0t
    25t 0t 0t 0t
    26t 0t 0t 0t
    27t 0t 0t 0t
    28t 0t 0t 0t
    29t 0t 0t 0t
    30t 0t 0t 0t
    31t 0t 0t 0t
    92t 0t 0t 0t
    -5t 0t 0t 0t
    -4t 127t 0t 0t
    32t 0t 0t 0t
    -5t 15t 0t 0t
    -4t 3t 0t 0t
    -6t 31t 0t 0t
    33t 0t 0t 0t
    93t 0t 0t 0t
    94t 0t 0t 0t
    95t 0t 0t 0t
    96t 0t 0t 0t
    97t 0t 0t 0t
    98t 0t 0t 0t
    99t 0t 0t 0t
    100t 0t 0t 0t
    101t 0t 0t 0t
    102t 0t 0t 0t
    103t 0t 0t 0t
    104t 0t 0t 0t
    105t 0t 0t 0t
    106t 0t 0t 0t
    107t 0t 0t 0t
    108t 0t 0t 0t
    109t 0t 0t 0t
    110t 0t 0t 0t
    111t 0t 0t 0t
    112t 0t 0t 0t
    113t 0t 0t 0t
    114t 0t 0t 0t
    -4t 0t 0t 0t
    115t 0t 0t 0t
    -3t 0t 0t 0t
    -5t 31t 0t 0t
    -16t -1t 7t 0t
    -4t 31t 0t 0t
    -4t 63t 0t 0t
    34t 0t 0t 0t
    -3t 127t 0t 0t
    3t 0t 0t 0t
    35t 0t 0t 0t
    4t 0t 0t 0t
    36t 0t 0t 0t
    5t 0t 0t 0t
    37t 0t 0t 0t
    38t 0t 0t 0t
    39t 0t 0t 0t
    6t 0t 0t 0t
    116t 0t 0t 0t
    117t 0t 0t 0t
    40t 0t 0t 0t
    41t 0t 0t 0t
    42t 0t 0t 0t
    7t 0t 0t 0t
    43t 0t 0t 0t
    118t 0t 0t 0t
    44t 0t 0t 0t
    8t 0t 0t 0t
    9t 0t 0t 0t
    45t 0t 0t 0t
    119t 0t 0t 0t
    120t 0t 0t 0t
    121t 0t 0t 0t
    122t 0t 0t 0t
    123t 0t 0t 0t
    -2t 127t 0t 0t
    -4t 7t 0t 0t
    -3t 63t 0t 0t
    -3t 31t 0t 0t
    -4t -1t -1t 15t
    -26t -1t 15t 0t
    -46t -1t 63t 0t
    -25t -1t 15t 0t
    -24t -1t 15t 0t
    -45t -1t 63t 0t
    -44t -1t 63t 0t
    -43t -1t 63t 0t
    -39t -1t 127t 0t
    -42t -1t 63t 0t
    -38t -1t 127t 0t
    -37t -1t 127t 0t
    -36t -1t 127t 0t
    -35t -1t 127t 0t
    -34t -1t 127t 0t
    -21t -1t -1t 0t
    -33t -1t 127t 0t
    -20t -1t -1t 0t
    -19t -1t -1t 0t
    -41t -1t 63t 0t
    -32t -1t 127t 0t
    -18t -1t -1t 0t
    -31t -1t 127t 0t
    -30t -1t 127t 0t
    -29t -1t 127t 0t
    -28t -1t 127t 0t
    -36t -1t 31t 0t
    -40t -1t 63t 0t
    -27t -1t 127t 0t
    -39t -1t 63t 0t
    -26t -1t 127t 0t
    -25t -1t 127t 0t
    -17t -1t -1t 0t
    -38t -1t 63t 0t
    -35t -1t 31t 0t
    -23t -1t 15t 0t
    -37t -1t 63t 0t
    -36t -1t 63t 0t
    -24t -1t 127t 0t
    -23t -1t 127t 0t
    -34t -1t 31t 0t
    -22t -1t 127t 0t
    -35t -1t 63t 0t
    -34t -1t 63t 0t
    -16t -1t -1t 0t
    -33t -1t 31t 0t
    -33t -1t 63t 0t
    -21t -1t 127t 0t
    -20t -1t 127t 0t
    -32t -1t 31t 0t
    -31t -1t 31t 0t
    -32t -1t 63t 0t
    -30t -1t 31t 0t
    -19t -1t 127t 0t
    -31t -1t 63t 0t
    -18t -1t 127t 0t
    -17t -1t 127t 0t
    -22t -1t 15t 0t
    -30t -1t 63t 0t
    -29t -1t 63t 0t
    -28t -1t 63t 0t
    -16t -1t 127t 0t
    -27t -1t 63t 0t
    -26t -1t 63t 0t
    -15t -1t 127t 0t
    -32t -1t -1t 3t
    -31t -1t -1t 3t
    -21t -1t 15t 0t
    -15t -1t 7t 0t
    -25t -1t 63t 0t
    -14t -1t 127t 0t
    -24t -1t 63t 0t
    -20t -1t -1t 1t
    -30t -1t -1t 3t
    -29t -1t -1t 3t
    -28t -1t -1t 3t
    -34t -1t -1t 7t
    -33t -1t -1t 7t
    -27t -1t -1t 3t
    -15t -1t -1t 0t
    -19t -1t -1t 1t
    -14t -1t 7t 0t
    -29t -1t 31t 0t
    -26t -1t -1t 3t
    -32t -1t -1t 7t
    -31t -1t -1t 7t
    -25t -1t -1t 3t
    -30t -1t -1t 7t
    -14t -1t -1t 0t
    -28t -1t 31t 0t
    -27t -1t 31t 0t
    -24t -1t -1t 3t
    -23t -1t -1t 3t
    -3t -1t -1t 15t
    -29t -1t -1t 7t
    -28t -1t -1t 7t
    -27t -1t -1t 7t
    -20t -1t 15t 0t
    -13t -1t -1t 0t
    -19t -1t 15t 0t
    -26t -1t 31t 0t
    -23t -1t 63t 0t
    -25t -1t 31t 0t
    -24t -1t 31t 0t
    -13t -1t 127t 0t
    -22t -1t 63t 0t
    -21t -1t 63t 0t
    -18t -1t -1t 1t
    -17t -1t -1t 1t
    -12t -1t -1t 0t
    -11t -1t -1t 0t
    -22t -1t -1t 3t
    -12t -1t 127t 0t
    -21t -1t -1t 3t
    -26t -1t -1t 7t
    -20t -1t -1t 3t
    -19t -1t -1t 3t
    -25t -1t -1t 7t
    -24t -1t -1t 7t
    -23t -1t -1t 7t
    -22t -1t -1t 7t
    -21t -1t -1t 7t
    -2t -1t -1t 15t
    -20t -1t -1t 7t
    -19t -1t -1t 7t
    -18t -1t -1t 7t
    -17t -1t -1t 7t
    -16t -1t -1t 7t
    -18t -1t -1t 3t
  .end array-data
  :L1
  .array-data 1
    13t
    23t
    28t
    28t
    28t
    28t
    28t
    28t
    28t
    24t
    30t
    28t
    28t
    30t
    28t
    28t
    28t
    28t
    28t
    28t
    28t
    28t
    30t
    28t
    28t
    28t
    28t
    28t
    28t
    28t
    28t
    28t
    6t
    10t
    10t
    12t
    13t
    6t
    8t
    11t
    10t
    10t
    8t
    11t
    8t
    6t
    6t
    6t
    5t
    5t
    5t
    6t
    6t
    6t
    6t
    6t
    6t
    6t
    7t
    8t
    15t
    6t
    12t
    10t
    13t
    6t
    7t
    7t
    7t
    7t
    7t
    7t
    7t
    7t
    7t
    7t
    7t
    7t
    7t
    7t
    7t
    7t
    7t
    7t
    7t
    7t
    7t
    7t
    8t
    7t
    8t
    13t
    19t
    13t
    14t
    6t
    15t
    5t
    6t
    5t
    6t
    5t
    6t
    6t
    6t
    5t
    7t
    7t
    6t
    6t
    6t
    5t
    6t
    7t
    6t
    5t
    5t
    6t
    7t
    7t
    7t
    7t
    7t
    15t
    11t
    14t
    13t
    28t
    20t
    22t
    20t
    20t
    22t
    22t
    22t
    23t
    22t
    23t
    23t
    23t
    23t
    23t
    24t
    23t
    24t
    24t
    22t
    23t
    24t
    23t
    23t
    23t
    23t
    21t
    22t
    23t
    22t
    23t
    23t
    24t
    22t
    21t
    20t
    22t
    22t
    23t
    23t
    21t
    23t
    22t
    22t
    24t
    21t
    22t
    23t
    23t
    21t
    21t
    22t
    21t
    23t
    22t
    23t
    23t
    20t
    22t
    22t
    22t
    23t
    22t
    22t
    23t
    26t
    26t
    20t
    19t
    22t
    23t
    22t
    25t
    26t
    26t
    26t
    27t
    27t
    26t
    24t
    25t
    19t
    21t
    26t
    27t
    27t
    26t
    27t
    24t
    21t
    21t
    26t
    26t
    28t
    27t
    27t
    27t
    20t
    24t
    20t
    21t
    22t
    21t
    21t
    23t
    22t
    22t
    25t
    25t
    24t
    24t
    26t
    23t
    26t
    27t
    26t
    26t
    27t
    27t
    27t
    27t
    27t
    28t
    27t
    27t
    27t
    27t
    27t
    26t
  .end array-data
.end method

.method private constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Lokhttp3/internal/http2/Huffman$Node;
    invoke-direct { v0 }, Lokhttp3/internal/http2/Huffman$Node;-><init>()V
    iput-object v0, p0, Lokhttp3/internal/http2/Huffman;->root:Lokhttp3/internal/http2/Huffman$Node;
  .line 3
    invoke-direct { p0 }, Lokhttp3/internal/http2/Huffman;->buildTree()V
    return-void
.end method

.method private addCode(IIB)V
  .registers 8
  .line 1
    new-instance v0, Lokhttp3/internal/http2/Huffman$Node;
    invoke-direct { v0, p1, p3 }, Lokhttp3/internal/http2/Huffman$Node;-><init>(II)V
  .line 2
    iget-object p1, p0, Lokhttp3/internal/http2/Huffman;->root:Lokhttp3/internal/http2/Huffman$Node;
  :L0
    const/16 v1, 8
    if-le p3, v1, :L3
    add-int/lit8 p3, p3, -8
    int-to-byte p3, p3
    ushr-int v1, p2, p3
    and-int/lit16 v1, v1, 255
  .line 3
    iget-object v2, p1, Lokhttp3/internal/http2/Huffman$Node;->children:[Lokhttp3/internal/http2/Huffman$Node;
    if-eqz v2, :L2
  .line 4
    aget-object v3, v2, v1
    if-nez v3, :L1
  .line 5
    new-instance v3, Lokhttp3/internal/http2/Huffman$Node;
    invoke-direct { v3 }, Lokhttp3/internal/http2/Huffman$Node;-><init>()V
    aput-object v3, v2, v1
  :L1
  .line 6
    iget-object p1, p1, Lokhttp3/internal/http2/Huffman$Node;->children:[Lokhttp3/internal/http2/Huffman$Node;
    aget-object p1, p1, v1
    goto :L0
  :L2
  .line 7
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string p2, "invalid dictionary: prefix not unique"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
  :L3
    sub-int/2addr v1, p3
    shl-int/2addr p2, v1
    and-int/lit16 p2, p2, 255
    const/4 p3, 1
    shl-int/2addr p3, v1
    move v1, p2
  :L4
    add-int v2, p2, p3
    if-ge v1, v2, :L5
  .line 8
    iget-object v2, p1, Lokhttp3/internal/http2/Huffman$Node;->children:[Lokhttp3/internal/http2/Huffman$Node;
    aput-object v0, v2, v1
    add-int/lit8 v1, v1, 1
    goto :L4
  :L5
    return-void
.end method

.method private buildTree()V
  .registers 4
    const/4 v0, 0
  :L0
  .line 1
    sget-object v1, Lokhttp3/internal/http2/Huffman;->CODE_LENGTHS:[B
    array-length v2, v1
    if-ge v0, v2, :L1
  .line 2
    sget-object v2, Lokhttp3/internal/http2/Huffman;->CODES:[I
    aget v2, v2, v0
    aget-byte v1, v1, v0
    invoke-direct { p0, v0, v2, v1 }, Lokhttp3/internal/http2/Huffman;->addCode(IIB)V
    add-int/lit8 v0, v0, 1
    goto :L0
  :L1
    return-void
.end method

.method public static get()Lokhttp3/internal/http2/Huffman;
  .registers 3
  .line 1
    sget-object v0, Lokhttp3/internal/http2/Huffman;->INSTANCE:Lokhttp3/internal/http2/Huffman;
    return-object v0
.end method

.method decode([B)[B
  .registers 8
  .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;
    invoke-direct { v0 }, Ljava/io/ByteArrayOutputStream;-><init>()V
  .line 2
    iget-object v1, p0, Lokhttp3/internal/http2/Huffman;->root:Lokhttp3/internal/http2/Huffman$Node;
    const/4 v2, 0
    const/4 v3, 0
    const/4 v4, 0
  :L0
  .line 3
    array-length v5, p1
    if-ge v2, v5, :L4
  .line 4
    aget-byte v5, p1, v2
    and-int/lit16 v5, v5, 255
    shl-int/lit8 v3, v3, 8
    or-int/2addr v3, v5
    add-int/lit8 v4, v4, 8
  :L1
    const/16 v5, 8
    if-lt v4, v5, :L3
    add-int/lit8 v5, v4, -8
    ushr-int v5, v3, v5
    and-int/lit16 v5, v5, 255
  .line 5
    iget-object v1, v1, Lokhttp3/internal/http2/Huffman$Node;->children:[Lokhttp3/internal/http2/Huffman$Node;
    aget-object v1, v1, v5
  .line 6
    iget-object v5, v1, Lokhttp3/internal/http2/Huffman$Node;->children:[Lokhttp3/internal/http2/Huffman$Node;
    if-nez v5, :L2
  .line 7
    iget v5, v1, Lokhttp3/internal/http2/Huffman$Node;->symbol:I
    invoke-virtual { v0, v5 }, Ljava/io/ByteArrayOutputStream;->write(I)V
  .line 8
    iget v1, v1, Lokhttp3/internal/http2/Huffman$Node;->terminalBits:I
    sub-int/2addr v4, v1
  .line 9
    iget-object v1, p0, Lokhttp3/internal/http2/Huffman;->root:Lokhttp3/internal/http2/Huffman$Node;
    goto :L1
  :L2
    add-int/lit8 v4, v4, -8
    goto :L1
  :L3
    add-int/lit8 v2, v2, 1
    goto :L0
  :L4
    if-lez v4, :L6
    rsub-int/lit8 p1, v4, 8
    shl-int p1, v3, p1
    and-int/lit16 p1, p1, 255
  .line 10
    iget-object v1, v1, Lokhttp3/internal/http2/Huffman$Node;->children:[Lokhttp3/internal/http2/Huffman$Node;
    aget-object p1, v1, p1
  .line 11
    iget-object v1, p1, Lokhttp3/internal/http2/Huffman$Node;->children:[Lokhttp3/internal/http2/Huffman$Node;
    if-nez v1, :L6
    iget v1, p1, Lokhttp3/internal/http2/Huffman$Node;->terminalBits:I
    if-le v1, v4, :L5
    goto :L6
  :L5
  .line 12
    iget v1, p1, Lokhttp3/internal/http2/Huffman$Node;->symbol:I
    invoke-virtual { v0, v1 }, Ljava/io/ByteArrayOutputStream;->write(I)V
  .line 13
    iget p1, p1, Lokhttp3/internal/http2/Huffman$Node;->terminalBits:I
    sub-int/2addr v4, p1
  .line 14
    iget-object v1, p0, Lokhttp3/internal/http2/Huffman;->root:Lokhttp3/internal/http2/Huffman$Node;
    goto :L4
  :L6
  .line 15
    invoke-virtual { v0 }, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    move-result-object p1
    return-object p1
.end method

.method encode(Lokio/ByteString;Lokio/BufferedSink;)V
  .registers 10
    const/4 v0, 0
    const-wide/16 v1, 0
    move-wide v2, v1
    const/4 v1, 0
  :L0
  .line 1
    invoke-virtual { p1 }, Lokio/ByteString;->size()I
    move-result v4
    const/16 v5, 255
    if-ge v0, v4, :L3
  .line 2
    invoke-virtual { p1, v0 }, Lokio/ByteString;->getByte(I)B
    move-result v4
    and-int/2addr v4, v5
  .line 3
    sget-object v5, Lokhttp3/internal/http2/Huffman;->CODES:[I
    aget v5, v5, v4
  .line 4
    sget-object v6, Lokhttp3/internal/http2/Huffman;->CODE_LENGTHS:[B
    aget-byte v4, v6, v4
    shl-long/2addr v2, v4
    int-to-long v5, v5
    or-long/2addr v2, v5
    add-int/2addr v1, v4
  :L1
    const/16 v4, 8
    if-lt v1, v4, :L2
    add-int/lit8 v1, v1, -8
    shr-long v4, v2, v1
    long-to-int v5, v4
  .line 5
    invoke-interface { p2, v5 }, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;
    goto :L1
  :L2
    add-int/lit8 v0, v0, 1
    goto :L0
  :L3
    if-lez v1, :L4
    rsub-int/lit8 p1, v1, 8
    shl-long/2addr v2, p1
    ushr-int p1, v5, v1
    int-to-long v0, p1
    or-long/2addr v0, v2
    long-to-int p1, v0
  .line 6
    invoke-interface { p2, p1 }, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;
  :L4
    return-void
.end method

.method encodedLength(Lokio/ByteString;)I
  .registers 7
    const-wide/16 v0, 0
    const/4 v2, 0
  :L0
  .line 1
    invoke-virtual { p1 }, Lokio/ByteString;->size()I
    move-result v3
    if-ge v2, v3, :L1
  .line 2
    invoke-virtual { p1, v2 }, Lokio/ByteString;->getByte(I)B
    move-result v3
    and-int/lit16 v3, v3, 255
  .line 3
    sget-object v4, Lokhttp3/internal/http2/Huffman;->CODE_LENGTHS:[B
    aget-byte v3, v4, v3
    int-to-long v3, v3
    add-long/2addr v0, v3
    add-int/lit8 v2, v2, 1
    goto :L0
  :L1
    const-wide/16 v2, 7
    add-long/2addr v0, v2
    const/4 p1, 3
    shr-long/2addr v0, p1
    long-to-int p1, v0
    return p1
.end method
