.class final Lokhttp3/internal/http2/Hpack;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lokhttp3/internal/http2/Hpack$Writer;,
    Lokhttp3/internal/http2/Hpack$Reader;
  }
.end annotation

.field final static NAME_TO_FIRST_INDEX:Ljava/util/Map;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/Map<",
      "Lokio/ByteString;",
      "Ljava/lang/Integer;",
      ">;"
    }
  .end annotation
.end field

.field private final static PREFIX_4_BITS:I = 15

.field private final static PREFIX_5_BITS:I = 31

.field private final static PREFIX_6_BITS:I = 63

.field private final static PREFIX_7_BITS:I = 127

.field final static STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;

.method static constructor <clinit>()V
  .registers 7
    const/16 v0, 61
    new-array v0, v0, [Lokhttp3/internal/http2/Header;
  .line 1
    new-instance v1, Lokhttp3/internal/http2/Header;
    sget-object v2, Lokhttp3/internal/http2/Header;->TARGET_AUTHORITY:Lokio/ByteString;
    const-string v3, ""
    invoke-direct { v1, v2, v3 }, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V
    const/4 v2, 0
    aput-object v1, v0, v2
    new-instance v1, Lokhttp3/internal/http2/Header;
    sget-object v2, Lokhttp3/internal/http2/Header;->TARGET_METHOD:Lokio/ByteString;
    const-string v4, "GET"
    invoke-direct { v1, v2, v4 }, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V
    const/4 v2, 1
    aput-object v1, v0, v2
    new-instance v1, Lokhttp3/internal/http2/Header;
    sget-object v2, Lokhttp3/internal/http2/Header;->TARGET_METHOD:Lokio/ByteString;
    const-string v4, "POST"
    invoke-direct { v1, v2, v4 }, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V
    const/4 v2, 2
    aput-object v1, v0, v2
    new-instance v1, Lokhttp3/internal/http2/Header;
    sget-object v2, Lokhttp3/internal/http2/Header;->TARGET_PATH:Lokio/ByteString;
    const-string v4, "/"
    invoke-direct { v1, v2, v4 }, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V
    const/4 v2, 3
    aput-object v1, v0, v2
    new-instance v1, Lokhttp3/internal/http2/Header;
    sget-object v2, Lokhttp3/internal/http2/Header;->TARGET_PATH:Lokio/ByteString;
    const-string v4, "/index.html"
    invoke-direct { v1, v2, v4 }, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V
    const/4 v2, 4
    aput-object v1, v0, v2
    new-instance v1, Lokhttp3/internal/http2/Header;
    sget-object v2, Lokhttp3/internal/http2/Header;->TARGET_SCHEME:Lokio/ByteString;
    const-string v4, "http"
    invoke-direct { v1, v2, v4 }, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V
    const/4 v2, 5
    aput-object v1, v0, v2
    new-instance v1, Lokhttp3/internal/http2/Header;
    sget-object v2, Lokhttp3/internal/http2/Header;->TARGET_SCHEME:Lokio/ByteString;
    const-string v4, "https"
    invoke-direct { v1, v2, v4 }, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V
    const/4 v2, 6
    aput-object v1, v0, v2
    new-instance v1, Lokhttp3/internal/http2/Header;
    sget-object v2, Lokhttp3/internal/http2/Header;->RESPONSE_STATUS:Lokio/ByteString;
    const-string v4, "200"
    invoke-direct { v1, v2, v4 }, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V
    const/4 v2, 7
    aput-object v1, v0, v2
    new-instance v1, Lokhttp3/internal/http2/Header;
    sget-object v2, Lokhttp3/internal/http2/Header;->RESPONSE_STATUS:Lokio/ByteString;
    const-string v4, "204"
    invoke-direct { v1, v2, v4 }, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V
    const/16 v2, 8
    aput-object v1, v0, v2
    new-instance v1, Lokhttp3/internal/http2/Header;
    sget-object v2, Lokhttp3/internal/http2/Header;->RESPONSE_STATUS:Lokio/ByteString;
    const-string v4, "206"
    invoke-direct { v1, v2, v4 }, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V
    const/16 v2, 9
    aput-object v1, v0, v2
    new-instance v1, Lokhttp3/internal/http2/Header;
    sget-object v2, Lokhttp3/internal/http2/Header;->RESPONSE_STATUS:Lokio/ByteString;
    const-string v4, "304"
    invoke-direct { v1, v2, v4 }, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V
    const/16 v2, 10
    aput-object v1, v0, v2
    new-instance v1, Lokhttp3/internal/http2/Header;
    sget-object v2, Lokhttp3/internal/http2/Header;->RESPONSE_STATUS:Lokio/ByteString;
    const-string v4, "400"
    invoke-direct { v1, v2, v4 }, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V
    const/16 v2, 11
    aput-object v1, v0, v2
    new-instance v1, Lokhttp3/internal/http2/Header;
    sget-object v2, Lokhttp3/internal/http2/Header;->RESPONSE_STATUS:Lokio/ByteString;
    const-string v4, "404"
    invoke-direct { v1, v2, v4 }, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V
    const/16 v2, 12
    aput-object v1, v0, v2
    new-instance v1, Lokhttp3/internal/http2/Header;
    sget-object v2, Lokhttp3/internal/http2/Header;->RESPONSE_STATUS:Lokio/ByteString;
    const-string v4, "500"
    invoke-direct { v1, v2, v4 }, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V
    const/16 v2, 13
    aput-object v1, v0, v2
    new-instance v1, Lokhttp3/internal/http2/Header;
    const-string v2, "accept-charset"
    invoke-direct { v1, v2, v3 }, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    const/16 v2, 14
    aput-object v1, v0, v2
    new-instance v1, Lokhttp3/internal/http2/Header;
    const-string v2, "accept-encoding"
    const-string v4, "gzip, deflate"
    invoke-direct { v1, v2, v4 }, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    const/16 v2, 15
    aput-object v1, v0, v2
    new-instance v1, Lokhttp3/internal/http2/Header;
    const-string v2, "accept-language"
    invoke-direct { v1, v2, v3 }, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    const/16 v2, 16
    aput-object v1, v0, v2
    new-instance v1, Lokhttp3/internal/http2/Header;
    const-string v2, "accept-ranges"
    invoke-direct { v1, v2, v3 }, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    const/16 v2, 17
    aput-object v1, v0, v2
    new-instance v1, Lokhttp3/internal/http2/Header;
    const-string v2, "accept"
    invoke-direct { v1, v2, v3 }, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    const/16 v2, 18
    aput-object v1, v0, v2
    new-instance v1, Lokhttp3/internal/http2/Header;
    const-string v2, "access-control-allow-origin"
    invoke-direct { v1, v2, v3 }, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    const/16 v2, 19
    aput-object v1, v0, v2
    new-instance v1, Lokhttp3/internal/http2/Header;
    const-string v2, "age"
    invoke-direct { v1, v2, v3 }, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    const/16 v2, 20
    aput-object v1, v0, v2
    new-instance v1, Lokhttp3/internal/http2/Header;
    const-string v2, "allow"
    invoke-direct { v1, v2, v3 }, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    const/16 v2, 21
    aput-object v1, v0, v2
    new-instance v1, Lokhttp3/internal/http2/Header;
    const-string v2, "authorization"
    invoke-direct { v1, v2, v3 }, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    const/16 v2, 22
    aput-object v1, v0, v2
    new-instance v1, Lokhttp3/internal/http2/Header;
    const-string v2, "cache-control"
    invoke-direct { v1, v2, v3 }, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    const/16 v2, 23
    aput-object v1, v0, v2
    new-instance v1, Lokhttp3/internal/http2/Header;
    const-string v2, "content-disposition"
    invoke-direct { v1, v2, v3 }, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    const/16 v2, 24
    aput-object v1, v0, v2
    new-instance v1, Lokhttp3/internal/http2/Header;
    const-string v2, "content-encoding"
    invoke-direct { v1, v2, v3 }, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    const/16 v2, 25
    aput-object v1, v0, v2
    new-instance v1, Lokhttp3/internal/http2/Header;
    const-string v2, "content-language"
    invoke-direct { v1, v2, v3 }, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    const/16 v2, 26
    aput-object v1, v0, v2
    new-instance v1, Lokhttp3/internal/http2/Header;
    const-string v2, "content-length"
    invoke-direct { v1, v2, v3 }, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    const/16 v2, 27
    aput-object v1, v0, v2
    new-instance v1, Lokhttp3/internal/http2/Header;
    const-string v2, "content-location"
    invoke-direct { v1, v2, v3 }, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    const/16 v2, 28
    aput-object v1, v0, v2
    new-instance v1, Lokhttp3/internal/http2/Header;
    const-string v2, "content-range"
    invoke-direct { v1, v2, v3 }, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    const/16 v2, 29
    aput-object v1, v0, v2
    new-instance v1, Lokhttp3/internal/http2/Header;
    const-string v2, "content-type"
    invoke-direct { v1, v2, v3 }, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    const/16 v2, 30
    aput-object v1, v0, v2
    new-instance v1, Lokhttp3/internal/http2/Header;
    const-string v2, "cookie"
    invoke-direct { v1, v2, v3 }, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    const/16 v2, 31
    aput-object v1, v0, v2
    new-instance v1, Lokhttp3/internal/http2/Header;
    const-string v2, "date"
    invoke-direct { v1, v2, v3 }, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    const/16 v2, 32
    aput-object v1, v0, v2
    new-instance v1, Lokhttp3/internal/http2/Header;
    const-string v2, "etag"
    invoke-direct { v1, v2, v3 }, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    const/16 v2, 33
    aput-object v1, v0, v2
    new-instance v1, Lokhttp3/internal/http2/Header;
    const-string v2, "expect"
    invoke-direct { v1, v2, v3 }, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    const/16 v2, 34
    aput-object v1, v0, v2
    new-instance v1, Lokhttp3/internal/http2/Header;
    const-string v2, "expires"
    invoke-direct { v1, v2, v3 }, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    const/16 v2, 35
    aput-object v1, v0, v2
    new-instance v1, Lokhttp3/internal/http2/Header;
    const-string v2, "from"
    invoke-direct { v1, v2, v3 }, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    const/16 v2, 36
    aput-object v1, v0, v2
    new-instance v1, Lokhttp3/internal/http2/Header;
    const-string v2, "host"
    invoke-direct { v1, v2, v3 }, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    const/16 v2, 37
    aput-object v1, v0, v2
    new-instance v1, Lokhttp3/internal/http2/Header;
    const-string v2, "if-match"
    invoke-direct { v1, v2, v3 }, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    const/16 v2, 38
    aput-object v1, v0, v2
    new-instance v1, Lokhttp3/internal/http2/Header;
    const-string v2, "if-modified-since"
    invoke-direct { v1, v2, v3 }, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    const/16 v2, 39
    aput-object v1, v0, v2
    new-instance v1, Lokhttp3/internal/http2/Header;
    const-string v2, "if-none-match"
    invoke-direct { v1, v2, v3 }, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    const/16 v2, 40
    aput-object v1, v0, v2
    new-instance v1, Lokhttp3/internal/http2/Header;
    const-string v2, "if-range"
    invoke-direct { v1, v2, v3 }, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    const/16 v2, 41
    aput-object v1, v0, v2
    new-instance v1, Lokhttp3/internal/http2/Header;
    const-string v2, "if-unmodified-since"
    invoke-direct { v1, v2, v3 }, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    const/16 v2, 42
    aput-object v1, v0, v2
    new-instance v1, Lokhttp3/internal/http2/Header;
    const-string v2, "last-modified"
    invoke-direct { v1, v2, v3 }, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    const/16 v2, 43
    aput-object v1, v0, v2
    new-instance v1, Lokhttp3/internal/http2/Header;
    const-string v2, "link"
    invoke-direct { v1, v2, v3 }, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    const/16 v2, 44
    aput-object v1, v0, v2
    new-instance v1, Lokhttp3/internal/http2/Header;
    const-string v2, "location"
    invoke-direct { v1, v2, v3 }, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    const/16 v2, 45
    aput-object v1, v0, v2
    new-instance v1, Lokhttp3/internal/http2/Header;
    const-string v2, "max-forwards"
    invoke-direct { v1, v2, v3 }, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    const/16 v2, 46
    aput-object v1, v0, v2
    new-instance v1, Lokhttp3/internal/http2/Header;
    const-string v2, "proxy-authenticate"
    invoke-direct { v1, v2, v3 }, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    const/16 v2, 47
    aput-object v1, v0, v2
    new-instance v1, Lokhttp3/internal/http2/Header;
    const-string v2, "proxy-authorization"
    invoke-direct { v1, v2, v3 }, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    const/16 v2, 48
    aput-object v1, v0, v2
    new-instance v1, Lokhttp3/internal/http2/Header;
    const-string v2, "range"
    invoke-direct { v1, v2, v3 }, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    const/16 v2, 49
    aput-object v1, v0, v2
    new-instance v1, Lokhttp3/internal/http2/Header;
    const-string v2, "referer"
    invoke-direct { v1, v2, v3 }, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    const/16 v2, 50
    aput-object v1, v0, v2
    new-instance v1, Lokhttp3/internal/http2/Header;
    const-string v2, "refresh"
    invoke-direct { v1, v2, v3 }, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    const/16 v2, 51
    aput-object v1, v0, v2
    new-instance v1, Lokhttp3/internal/http2/Header;
    const-string v2, "retry-after"
    invoke-direct { v1, v2, v3 }, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    const/16 v2, 52
    aput-object v1, v0, v2
    new-instance v1, Lokhttp3/internal/http2/Header;
    const-string v2, "server"
    invoke-direct { v1, v2, v3 }, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    const/16 v2, 53
    aput-object v1, v0, v2
    new-instance v1, Lokhttp3/internal/http2/Header;
    const-string v2, "set-cookie"
    invoke-direct { v1, v2, v3 }, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    const/16 v2, 54
    aput-object v1, v0, v2
    new-instance v1, Lokhttp3/internal/http2/Header;
    const-string v2, "strict-transport-security"
    invoke-direct { v1, v2, v3 }, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    const/16 v2, 55
    aput-object v1, v0, v2
    new-instance v1, Lokhttp3/internal/http2/Header;
    const-string v2, "transfer-encoding"
    invoke-direct { v1, v2, v3 }, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    const/16 v2, 56
    aput-object v1, v0, v2
    new-instance v1, Lokhttp3/internal/http2/Header;
    const-string v2, "user-agent"
    invoke-direct { v1, v2, v3 }, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    const/16 v2, 57
    aput-object v1, v0, v2
    new-instance v1, Lokhttp3/internal/http2/Header;
    const-string v2, "vary"
    invoke-direct { v1, v2, v3 }, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    const/16 v2, 58
    aput-object v1, v0, v2
    new-instance v1, Lokhttp3/internal/http2/Header;
    const-string v2, "via"
    invoke-direct { v1, v2, v3 }, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    const/16 v2, 59
    aput-object v1, v0, v2
    new-instance v1, Lokhttp3/internal/http2/Header;
    const-string v2, "www-authenticate"
    invoke-direct { v1, v2, v3 }, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    const/16 v2, 60
    aput-object v1, v0, v2
    sput-object v0, Lokhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;
  .line 2
    invoke-static { }, Lokhttp3/internal/http2/Hpack;->nameToFirstIndex()Ljava/util/Map;
    move-result-object v0
    sput-object v0, Lokhttp3/internal/http2/Hpack;->NAME_TO_FIRST_INDEX:Ljava/util/Map;
    return-void
.end method

.method private constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method static checkLowercase(Lokio/ByteString;)Lokio/ByteString;
  .registers 5
  .line 1
    invoke-virtual { p0 }, Lokio/ByteString;->size()I
    move-result v0
    const/4 v1, 0
  :L0
    if-ge v1, v0, :L3
  .line 2
    invoke-virtual { p0, v1 }, Lokio/ByteString;->getByte(I)B
    move-result v2
    const/16 v3, 65
    if-lt v2, v3, :L2
    const/16 v3, 90
    if-le v2, v3, :L1
    goto :L2
  :L1
  .line 3
    new-instance v0, Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "PROTOCOL_ERROR response malformed: mixed case name: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Lokio/ByteString;->utf8()Ljava/lang/String;
    move-result-object p0
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    invoke-direct { v0, p0 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw v0
  :L2
    add-int/lit8 v1, v1, 1
    goto :L0
  :L3
    return-object p0
.end method

.method private static nameToFirstIndex()Ljava/util/Map;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Ljava/util/Map<",
      "Lokio/ByteString;",
      "Ljava/lang/Integer;",
      ">;"
    }
  .end annotation
  .registers 4
  .line 1
    new-instance v0, Ljava/util/LinkedHashMap;
    sget-object v1, Lokhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;
    array-length v1, v1
    invoke-direct { v0, v1 }, Ljava/util/LinkedHashMap;-><init>(I)V
    const/4 v1, 0
  :L0
  .line 2
    sget-object v2, Lokhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;
    array-length v3, v2
    if-ge v1, v3, :L2
  .line 3
    aget-object v2, v2, v1
    iget-object v2, v2, Lokhttp3/internal/http2/Header;->name:Lokio/ByteString;
    invoke-interface { v0, v2 }, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    move-result v2
    if-nez v2, :L1
  .line 4
    sget-object v2, Lokhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;
    aget-object v2, v2, v1
    iget-object v2, v2, Lokhttp3/internal/http2/Header;->name:Lokio/ByteString;
    invoke-static { v1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v3
    invoke-interface { v0, v2, v3 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L1
    add-int/lit8 v1, v1, 1
    goto :L0
  :L2
  .line 5
    invoke-static { v0 }, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
    move-result-object v0
    return-object v0
.end method
