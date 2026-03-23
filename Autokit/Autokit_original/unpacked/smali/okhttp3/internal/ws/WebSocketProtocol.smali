.class public final Lokhttp3/internal/ws/WebSocketProtocol;
.super Ljava/lang/Object;
.source "SourceFile"

.field final static ACCEPT_MAGIC:Ljava/lang/String; = "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

.field final static B0_FLAG_FIN:I = 128

.field final static B0_FLAG_RSV1:I = 64

.field final static B0_FLAG_RSV2:I = 32

.field final static B0_FLAG_RSV3:I = 16

.field final static B0_MASK_OPCODE:I = 15

.field final static B1_FLAG_MASK:I = 128

.field final static B1_MASK_LENGTH:I = 127

.field final static CLOSE_CLIENT_GOING_AWAY:I = 1001

.field final static CLOSE_MESSAGE_MAX:J = 123L

.field final static CLOSE_NO_STATUS_CODE:I = 1005

.field final static OPCODE_BINARY:I = 2

.field final static OPCODE_CONTINUATION:I = 0

.field final static OPCODE_CONTROL_CLOSE:I = 8

.field final static OPCODE_CONTROL_PING:I = 9

.field final static OPCODE_CONTROL_PONG:I = 10

.field final static OPCODE_FLAG_CONTROL:I = 8

.field final static OPCODE_TEXT:I = 1

.field final static PAYLOAD_BYTE_MAX:J = 125L

.field final static PAYLOAD_LONG:I = 127

.field final static PAYLOAD_SHORT:I = 126

.field final static PAYLOAD_SHORT_MAX:J = 65535L

.method private constructor <init>()V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Ljava/lang/AssertionError;
    const-string v1, "No instances."
    invoke-direct { v0, v1 }, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
    throw v0
.end method

.method public static acceptHeader(Ljava/lang/String;)Ljava/lang/String;
  .registers 2
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p0, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    invoke-static { p0 }, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;
    move-result-object p0
    invoke-virtual { p0 }, Lokio/ByteString;->sha1()Lokio/ByteString;
    move-result-object p0
    invoke-virtual { p0 }, Lokio/ByteString;->base64()Ljava/lang/String;
    move-result-object p0
    return-object p0
.end method

.method static closeCodeExceptionMessage(I)Ljava/lang/String;
  .registers 3
    const/16 v0, 1000
    if-lt p0, v0, :L4
    const/16 v0, 5000
    if-lt p0, v0, :L0
    goto :L4
  :L0
    const/16 v0, 1004
    if-lt p0, v0, :L1
    const/16 v0, 1006
    if-le p0, v0, :L2
  :L1
    const/16 v0, 1012
    if-lt p0, v0, :L3
    const/16 v0, 2999
    if-gt p0, v0, :L3
  :L2
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Code "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p0, " is reserved and may not be used."
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    return-object p0
  :L3
    const/4 p0, 0
    return-object p0
  :L4
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Code must be in range [1000,5000): "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    return-object p0
.end method

.method static toggleMask(Lokio/Buffer$UnsafeCursor;[B)V
  .registers 9
  .line 1
    array-length v0, p1
    const/4 v1, 0
  :L0
  .line 2
    iget-object v2, p0, Lokio/Buffer$UnsafeCursor;->data:[B
  .line 3
    iget v3, p0, Lokio/Buffer$UnsafeCursor;->start:I
    iget v4, p0, Lokio/Buffer$UnsafeCursor;->end:I
  :L1
    if-ge v3, v4, :L2
  .line 4
    rem-int/2addr v1, v0
  .line 5
    aget-byte v5, v2, v3
    aget-byte v6, p1, v1
    xor-int/2addr v5, v6
    int-to-byte v5, v5
    aput-byte v5, v2, v3
    add-int/lit8 v3, v3, 1
    add-int/lit8 v1, v1, 1
    goto :L1
  :L2
  .line 6
    invoke-virtual { p0 }, Lokio/Buffer$UnsafeCursor;->next()I
    move-result v2
    const/4 v3, -1
    if-ne v2, v3, :L0
    return-void
.end method

.method static validateCloseCode(I)V
  .registers 2
  .line 1
    invoke-static { p0 }, Lokhttp3/internal/ws/WebSocketProtocol;->closeCodeExceptionMessage(I)Ljava/lang/String;
    move-result-object p0
    if-nez p0, :L0
    return-void
  :L0
  .line 2
    new-instance v0, Ljava/lang/IllegalArgumentException;
    invoke-direct { v0, p0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
.end method
