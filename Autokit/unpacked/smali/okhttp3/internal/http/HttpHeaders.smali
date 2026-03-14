.class public final Lokhttp3/internal/http/HttpHeaders;
.super Ljava/lang/Object;
.source "SourceFile"

.field private final static QUOTED_STRING_DELIMITERS:Lokio/ByteString;

.field private final static TOKEN_DELIMITERS:Lokio/ByteString;

.method static constructor <clinit>()V
  .registers 3
    const-string v0, "\"\\"
  .line 1
    invoke-static { v0 }, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;
    move-result-object v0
    sput-object v0, Lokhttp3/internal/http/HttpHeaders;->QUOTED_STRING_DELIMITERS:Lokio/ByteString;
    const-string v0, "\t ,="
  .line 2
    invoke-static { v0 }, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;
    move-result-object v0
    sput-object v0, Lokhttp3/internal/http/HttpHeaders;->TOKEN_DELIMITERS:Lokio/ByteString;
    return-void
.end method

.method private constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static contentLength(Lokhttp3/Headers;)J
  .registers 3
    const-string v0, "Content-Length"
  .line 2
    invoke-virtual { p0, v0 }, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p0
    invoke-static { p0 }, Lokhttp3/internal/http/HttpHeaders;->stringToLong(Ljava/lang/String;)J
    move-result-wide v0
    return-wide v0
.end method

.method public static contentLength(Lokhttp3/Response;)J
  .registers 3
  .line 1
    invoke-virtual { p0 }, Lokhttp3/Response;->headers()Lokhttp3/Headers;
    move-result-object p0
    invoke-static { p0 }, Lokhttp3/internal/http/HttpHeaders;->contentLength(Lokhttp3/Headers;)J
    move-result-wide v0
    return-wide v0
.end method

.method public static hasBody(Lokhttp3/Response;)Z
  .registers 9
  .line 1
    invoke-virtual { p0 }, Lokhttp3/Response;->request()Lokhttp3/Request;
    move-result-object v0
    invoke-virtual { v0 }, Lokhttp3/Request;->method()Ljava/lang/String;
    move-result-object v0
    const-string v1, "HEAD"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    const/4 v1, 0
    if-eqz v0, :L0
    return v1
  :L0
  .line 2
    invoke-virtual { p0 }, Lokhttp3/Response;->code()I
    move-result v0
    const/16 v2, 100
    const/4 v3, 1
    if-lt v0, v2, :L1
    const/16 v2, 200
    if-lt v0, v2, :L2
  :L1
    const/16 v2, 204
    if-eq v0, v2, :L2
    const/16 v2, 304
    if-eq v0, v2, :L2
    return v3
  :L2
  .line 3
    invoke-static { p0 }, Lokhttp3/internal/http/HttpHeaders;->contentLength(Lokhttp3/Response;)J
    move-result-wide v4
    const-wide/16 v6, -1
    cmp-long v0, v4, v6
    if-nez v0, :L4
    const-string v0, "Transfer-Encoding"
  .line 4
    invoke-virtual { p0, v0 }, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p0
    const-string v0, "chunked"
    invoke-virtual { v0, p0 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result p0
    if-eqz p0, :L3
    goto :L4
  :L3
    return v1
  :L4
    return v3
.end method

.method public static hasVaryAll(Lokhttp3/Headers;)Z
  .registers 2
  .line 2
    invoke-static { p0 }, Lokhttp3/internal/http/HttpHeaders;->varyFields(Lokhttp3/Headers;)Ljava/util/Set;
    move-result-object p0
    const-string v0, "*"
    invoke-interface { p0, v0 }, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    move-result p0
    return p0
.end method

.method public static hasVaryAll(Lokhttp3/Response;)Z
  .registers 1
  .line 1
    invoke-virtual { p0 }, Lokhttp3/Response;->headers()Lokhttp3/Headers;
    move-result-object p0
    invoke-static { p0 }, Lokhttp3/internal/http/HttpHeaders;->hasVaryAll(Lokhttp3/Headers;)Z
    move-result p0
    return p0
.end method

.method private static parseChallengeHeader(Ljava/util/List;Lokio/Buffer;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/List<",
      "Lokhttp3/Challenge;",
      ">;",
      "Lokio/Buffer;",
      ")V"
    }
  .end annotation
  .registers 10
    const/4 v0, 0
  :L0
    move-object v1, v0
  :L1
    if-nez v1, :L2
  .line 1
    invoke-static { p1 }, Lokhttp3/internal/http/HttpHeaders;->skipWhitespaceAndCommas(Lokio/Buffer;)Z
  .line 2
    invoke-static { p1 }, Lokhttp3/internal/http/HttpHeaders;->readToken(Lokio/Buffer;)Ljava/lang/String;
    move-result-object v1
    if-nez v1, :L2
    return-void
  :L2
  .line 3
    invoke-static { p1 }, Lokhttp3/internal/http/HttpHeaders;->skipWhitespaceAndCommas(Lokio/Buffer;)Z
    move-result v2
  .line 4
    invoke-static { p1 }, Lokhttp3/internal/http/HttpHeaders;->readToken(Lokio/Buffer;)Ljava/lang/String;
    move-result-object v3
    if-nez v3, :L4
  .line 5
    invoke-virtual { p1 }, Lokio/Buffer;->exhausted()Z
    move-result p1
    if-nez p1, :L3
    return-void
  :L3
  .line 6
    new-instance p1, Lokhttp3/Challenge;
    invoke-static { }, Ljava/util/Collections;->emptyMap()Ljava/util/Map;
    move-result-object v0
    invoke-direct { p1, v1, v0 }, Lokhttp3/Challenge;-><init>(Ljava/lang/String;Ljava/util/Map;)V
    invoke-interface { p0, p1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    return-void
  :L4
    const/16 v4, 61
  .line 7
    invoke-static { p1, v4 }, Lokhttp3/internal/http/HttpHeaders;->skipAll(Lokio/Buffer;B)I
    move-result v5
  .line 8
    invoke-static { p1 }, Lokhttp3/internal/http/HttpHeaders;->skipWhitespaceAndCommas(Lokio/Buffer;)Z
    move-result v6
    if-nez v2, :L6
    if-nez v6, :L5
  .line 9
    invoke-virtual { p1 }, Lokio/Buffer;->exhausted()Z
    move-result v2
    if-eqz v2, :L6
  :L5
  .line 10
    new-instance v2, Lokhttp3/Challenge;
    new-instance v6, Ljava/lang/StringBuilder;
    invoke-direct { v6 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v6, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 11
    invoke-static { v4, v5 }, Lokhttp3/internal/http/HttpHeaders;->repeat(CI)Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v6, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v6 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
  .line 12
    invoke-static { v0, v3 }, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;
    move-result-object v3
    invoke-direct { v2, v1, v3 }, Lokhttp3/Challenge;-><init>(Ljava/lang/String;Ljava/util/Map;)V
    invoke-interface { p0, v2 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    goto :L0
  :L6
  .line 13
    new-instance v2, Ljava/util/LinkedHashMap;
    invoke-direct { v2 }, Ljava/util/LinkedHashMap;-><init>()V
  .line 14
    invoke-static { p1, v4 }, Lokhttp3/internal/http/HttpHeaders;->skipAll(Lokio/Buffer;B)I
    move-result v6
    add-int/2addr v5, v6
  :L7
    if-nez v3, :L9
  .line 15
    invoke-static { p1 }, Lokhttp3/internal/http/HttpHeaders;->readToken(Lokio/Buffer;)Ljava/lang/String;
    move-result-object v3
  .line 16
    invoke-static { p1 }, Lokhttp3/internal/http/HttpHeaders;->skipWhitespaceAndCommas(Lokio/Buffer;)Z
    move-result v5
    if-eqz v5, :L8
    goto :L10
  :L8
  .line 17
    invoke-static { p1, v4 }, Lokhttp3/internal/http/HttpHeaders;->skipAll(Lokio/Buffer;B)I
    move-result v5
  :L9
    if-nez v5, :L11
  :L10
  .line 18
    new-instance v4, Lokhttp3/Challenge;
    invoke-direct { v4, v1, v2 }, Lokhttp3/Challenge;-><init>(Ljava/lang/String;Ljava/util/Map;)V
    invoke-interface { p0, v4 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    move-object v1, v3
    goto/16 :L1
  :L11
    const/4 v6, 1
    if-le v5, v6, :L12
    return-void
  :L12
  .line 19
    invoke-static { p1 }, Lokhttp3/internal/http/HttpHeaders;->skipWhitespaceAndCommas(Lokio/Buffer;)Z
    move-result v6
    if-eqz v6, :L13
    return-void
  :L13
  .line 20
    invoke-virtual { p1 }, Lokio/Buffer;->exhausted()Z
    move-result v6
    if-nez v6, :L14
    const-wide/16 v6, 0
    invoke-virtual { p1, v6, v7 }, Lokio/Buffer;->getByte(J)B
    move-result v6
    const/16 v7, 34
    if-ne v6, v7, :L14
  .line 21
    invoke-static { p1 }, Lokhttp3/internal/http/HttpHeaders;->readQuotedString(Lokio/Buffer;)Ljava/lang/String;
    move-result-object v6
    goto :L15
  :L14
  .line 22
    invoke-static { p1 }, Lokhttp3/internal/http/HttpHeaders;->readToken(Lokio/Buffer;)Ljava/lang/String;
    move-result-object v6
  :L15
    if-nez v6, :L16
    return-void
  :L16
  .line 23
    invoke-interface { v2, v3, v6 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/lang/String;
    if-eqz v3, :L17
    return-void
  :L17
  .line 24
    invoke-static { p1 }, Lokhttp3/internal/http/HttpHeaders;->skipWhitespaceAndCommas(Lokio/Buffer;)Z
    move-result v3
    if-nez v3, :L18
    invoke-virtual { p1 }, Lokio/Buffer;->exhausted()Z
    move-result v3
    if-nez v3, :L18
    return-void
  :L18
    move-object v3, v0
    goto :L7
.end method

.method public static parseChallenges(Lokhttp3/Headers;Ljava/lang/String;)Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Lokhttp3/Headers;",
      "Ljava/lang/String;",
      ")",
      "Ljava/util/List<",
      "Lokhttp3/Challenge;",
      ">;"
    }
  .end annotation
  .registers 6
  .line 1
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    const/4 v1, 0
  :L0
  .line 2
    invoke-virtual { p0 }, Lokhttp3/Headers;->size()I
    move-result v2
    if-ge v1, v2, :L2
  .line 3
    invoke-virtual { p0, v1 }, Lokhttp3/Headers;->name(I)Ljava/lang/String;
    move-result-object v2
    invoke-virtual { p1, v2 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v2
    if-eqz v2, :L1
  .line 4
    new-instance v2, Lokio/Buffer;
    invoke-direct { v2 }, Lokio/Buffer;-><init>()V
    invoke-virtual { p0, v1 }, Lokhttp3/Headers;->value(I)Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v2, v3 }, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;
    move-result-object v2
  .line 5
    invoke-static { v0, v2 }, Lokhttp3/internal/http/HttpHeaders;->parseChallengeHeader(Ljava/util/List;Lokio/Buffer;)V
  :L1
    add-int/lit8 v1, v1, 1
    goto :L0
  :L2
    return-object v0
.end method

.method public static parseSeconds(Ljava/lang/String;I)I
  .catch Ljava/lang/NumberFormatException; { :L0 .. :L1 } :L4
  .registers 5
  :L0
  .line 1
    invoke-static { p0 }, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    move-result-wide p0
  :L1
    const-wide/32 v0, 2147483647
    cmp-long v2, p0, v0
    if-lez v2, :L2
    const p0, 2147483647
    return p0
  :L2
    const-wide/16 v0, 0
    cmp-long v2, p0, v0
    if-gez v2, :L3
    const/4 p0, 0
    return p0
  :L3
    long-to-int p1, p0
  :L4
    return p1
.end method

.method private static readQuotedString(Lokio/Buffer;)Ljava/lang/String;
  .registers 13
  .line 1
    invoke-virtual { p0 }, Lokio/Buffer;->readByte()B
    move-result v0
    const/16 v1, 34
    if-ne v0, v1, :L4
  .line 2
    new-instance v0, Lokio/Buffer;
    invoke-direct { v0 }, Lokio/Buffer;-><init>()V
  :L0
  .line 3
    sget-object v2, Lokhttp3/internal/http/HttpHeaders;->QUOTED_STRING_DELIMITERS:Lokio/ByteString;
    invoke-virtual { p0, v2 }, Lokio/Buffer;->indexOfElement(Lokio/ByteString;)J
    move-result-wide v2
    const-wide/16 v4, -1
    const/4 v6, 0
    cmp-long v7, v2, v4
    if-nez v7, :L1
    return-object v6
  :L1
  .line 4
    invoke-virtual { p0, v2, v3 }, Lokio/Buffer;->getByte(J)B
    move-result v4
    if-ne v4, v1, :L2
  .line 5
    invoke-virtual { v0, p0, v2, v3 }, Lokio/Buffer;->write(Lokio/Buffer;J)V
  .line 6
    invoke-virtual { p0 }, Lokio/Buffer;->readByte()B
  .line 7
    invoke-virtual { v0 }, Lokio/Buffer;->readUtf8()Ljava/lang/String;
    move-result-object p0
    return-object p0
  :L2
  .line 8
    invoke-virtual { p0 }, Lokio/Buffer;->size()J
    move-result-wide v4
    const-wide/16 v7, 1
    add-long v9, v2, v7
    cmp-long v11, v4, v9
    if-nez v11, :L3
    return-object v6
  :L3
  .line 9
    invoke-virtual { v0, p0, v2, v3 }, Lokio/Buffer;->write(Lokio/Buffer;J)V
  .line 10
    invoke-virtual { p0 }, Lokio/Buffer;->readByte()B
  .line 11
    invoke-virtual { v0, p0, v7, v8 }, Lokio/Buffer;->write(Lokio/Buffer;J)V
    goto :L0
  :L4
  .line 12
    new-instance p0, Ljava/lang/IllegalArgumentException;
    invoke-direct { p0 }, Ljava/lang/IllegalArgumentException;-><init>()V
    goto :L6
  :L5
    throw p0
  :L6
    goto :L5
.end method

.method private static readToken(Lokio/Buffer;)Ljava/lang/String;
  .catch Ljava/io/EOFException; { :L0 .. :L2 } :L5
  .registers 6
  :L0
  .line 1
    sget-object v0, Lokhttp3/internal/http/HttpHeaders;->TOKEN_DELIMITERS:Lokio/ByteString;
    invoke-virtual { p0, v0 }, Lokio/Buffer;->indexOfElement(Lokio/ByteString;)J
    move-result-wide v0
    const-wide/16 v2, -1
    cmp-long v4, v0, v2
    if-nez v4, :L1
  .line 2
    invoke-virtual { p0 }, Lokio/Buffer;->size()J
    move-result-wide v0
  :L1
    const-wide/16 v2, 0
    cmp-long v4, v0, v2
    if-eqz v4, :L3
  .line 3
    invoke-virtual { p0, v0, v1 }, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;
    move-result-object p0
  :L2
    goto :L4
  :L3
    const/4 p0, 0
  :L4
    return-object p0
  :L5
  .line 4
    new-instance p0, Ljava/lang/AssertionError;
    invoke-direct { p0 }, Ljava/lang/AssertionError;-><init>()V
    throw p0
.end method

.method public static receiveHeaders(Lokhttp3/CookieJar;Lokhttp3/HttpUrl;Lokhttp3/Headers;)V
  .registers 4
  .line 1
    sget-object v0, Lokhttp3/CookieJar;->NO_COOKIES:Lokhttp3/CookieJar;
    if-ne p0, v0, :L0
    return-void
  :L0
  .line 2
    invoke-static { p1, p2 }, Lokhttp3/Cookie;->parseAll(Lokhttp3/HttpUrl;Lokhttp3/Headers;)Ljava/util/List;
    move-result-object p2
  .line 3
    invoke-interface { p2 }, Ljava/util/List;->isEmpty()Z
    move-result v0
    if-eqz v0, :L1
    return-void
  :L1
  .line 4
    invoke-interface { p0, p1, p2 }, Lokhttp3/CookieJar;->saveFromResponse(Lokhttp3/HttpUrl;Ljava/util/List;)V
    return-void
.end method

.method private static repeat(CI)Ljava/lang/String;
  .registers 2
  .line 1
    new-array p1, p1, [C
  .line 2
    invoke-static { p1, p0 }, Ljava/util/Arrays;->fill([CC)V
  .line 3
    new-instance p0, Ljava/lang/String;
    invoke-direct { p0, p1 }, Ljava/lang/String;-><init>([C)V
    return-object p0
.end method

.method private static skipAll(Lokio/Buffer;B)I
  .registers 5
    const/4 v0, 0
  :L0
  .line 1
    invoke-virtual { p0 }, Lokio/Buffer;->exhausted()Z
    move-result v1
    if-nez v1, :L1
    const-wide/16 v1, 0
    invoke-virtual { p0, v1, v2 }, Lokio/Buffer;->getByte(J)B
    move-result v1
    if-ne v1, p1, :L1
    add-int/lit8 v0, v0, 1
  .line 2
    invoke-virtual { p0 }, Lokio/Buffer;->readByte()B
    goto :L0
  :L1
    return v0
.end method

.method public static skipUntil(Ljava/lang/String;ILjava/lang/String;)I
  .registers 5
  :L0
  .line 1
    invoke-virtual { p0 }, Ljava/lang/String;->length()I
    move-result v0
    if-ge p1, v0, :L2
  .line 2
    invoke-virtual { p0, p1 }, Ljava/lang/String;->charAt(I)C
    move-result v0
    invoke-virtual { p2, v0 }, Ljava/lang/String;->indexOf(I)I
    move-result v0
    const/4 v1, -1
    if-eq v0, v1, :L1
    goto :L2
  :L1
    add-int/lit8 p1, p1, 1
    goto :L0
  :L2
    return p1
.end method

.method public static skipWhitespace(Ljava/lang/String;I)I
  .registers 4
  :L0
  .line 1
    invoke-virtual { p0 }, Ljava/lang/String;->length()I
    move-result v0
    if-ge p1, v0, :L2
  .line 2
    invoke-virtual { p0, p1 }, Ljava/lang/String;->charAt(I)C
    move-result v0
    const/16 v1, 32
    if-eq v0, v1, :L1
    const/16 v1, 9
    if-eq v0, v1, :L1
    goto :L2
  :L1
    add-int/lit8 p1, p1, 1
    goto :L0
  :L2
    return p1
.end method

.method private static skipWhitespaceAndCommas(Lokio/Buffer;)Z
  .registers 4
    const/4 v0, 0
  :L0
  .line 1
    invoke-virtual { p0 }, Lokio/Buffer;->exhausted()Z
    move-result v1
    if-nez v1, :L3
    const-wide/16 v1, 0
  .line 2
    invoke-virtual { p0, v1, v2 }, Lokio/Buffer;->getByte(J)B
    move-result v1
    const/16 v2, 44
    if-ne v1, v2, :L1
  .line 3
    invoke-virtual { p0 }, Lokio/Buffer;->readByte()B
    const/4 v0, 1
    goto :L0
  :L1
    const/16 v2, 32
    if-eq v1, v2, :L2
    const/16 v2, 9
    if-ne v1, v2, :L3
  :L2
  .line 4
    invoke-virtual { p0 }, Lokio/Buffer;->readByte()B
    goto :L0
  :L3
    return v0
.end method

.method private static stringToLong(Ljava/lang/String;)J
  .catch Ljava/lang/NumberFormatException; { :L0 .. :L1 } :L1
  .registers 3
    const-wide/16 v0, -1
    if-nez p0, :L0
    return-wide v0
  :L0
  .line 1
    invoke-static { p0 }, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    move-result-wide v0
  :L1
    return-wide v0
.end method

.method public static varyFields(Lokhttp3/Headers;)Ljava/util/Set;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Lokhttp3/Headers;",
      ")",
      "Ljava/util/Set<",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
  .registers 9
  .line 2
    invoke-static { }, Ljava/util/Collections;->emptySet()Ljava/util/Set;
    move-result-object v0
  .line 3
    invoke-virtual { p0 }, Lokhttp3/Headers;->size()I
    move-result v1
    const/4 v2, 0
    const/4 v3, 0
  :L0
    if-ge v3, v1, :L5
  .line 4
    invoke-virtual { p0, v3 }, Lokhttp3/Headers;->name(I)Ljava/lang/String;
    move-result-object v4
    const-string v5, "Vary"
    invoke-virtual { v5, v4 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v4
    if-nez v4, :L1
    goto :L4
  :L1
  .line 5
    invoke-virtual { p0, v3 }, Lokhttp3/Headers;->value(I)Ljava/lang/String;
    move-result-object v4
  .line 6
    invoke-interface { v0 }, Ljava/util/Set;->isEmpty()Z
    move-result v5
    if-eqz v5, :L2
  .line 7
    new-instance v0, Ljava/util/TreeSet;
    sget-object v5, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;
    invoke-direct { v0, v5 }, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V
  :L2
    const-string v5, ","
  .line 8
    invoke-virtual { v4, v5 }, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object v4
    array-length v5, v4
    const/4 v6, 0
  :L3
    if-ge v6, v5, :L4
    aget-object v7, v4, v6
  .line 9
    invoke-virtual { v7 }, Ljava/lang/String;->trim()Ljava/lang/String;
    move-result-object v7
    invoke-interface { v0, v7 }, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    add-int/lit8 v6, v6, 1
    goto :L3
  :L4
    add-int/lit8 v3, v3, 1
    goto :L0
  :L5
    return-object v0
.end method

.method private static varyFields(Lokhttp3/Response;)Ljava/util/Set;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Lokhttp3/Response;",
      ")",
      "Ljava/util/Set<",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
  .registers 1
  .line 1
    invoke-virtual { p0 }, Lokhttp3/Response;->headers()Lokhttp3/Headers;
    move-result-object p0
    invoke-static { p0 }, Lokhttp3/internal/http/HttpHeaders;->varyFields(Lokhttp3/Headers;)Ljava/util/Set;
    move-result-object p0
    return-object p0
.end method

.method public static varyHeaders(Lokhttp3/Headers;Lokhttp3/Headers;)Lokhttp3/Headers;
  .registers 7
  .line 4
    invoke-static { p1 }, Lokhttp3/internal/http/HttpHeaders;->varyFields(Lokhttp3/Headers;)Ljava/util/Set;
    move-result-object p1
  .line 5
    invoke-interface { p1 }, Ljava/util/Set;->isEmpty()Z
    move-result v0
    if-eqz v0, :L0
    new-instance p0, Lokhttp3/Headers$Builder;
    invoke-direct { p0 }, Lokhttp3/Headers$Builder;-><init>()V
    invoke-virtual { p0 }, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;
    move-result-object p0
    return-object p0
  :L0
  .line 6
    new-instance v0, Lokhttp3/Headers$Builder;
    invoke-direct { v0 }, Lokhttp3/Headers$Builder;-><init>()V
    const/4 v1, 0
  .line 7
    invoke-virtual { p0 }, Lokhttp3/Headers;->size()I
    move-result v2
  :L1
    if-ge v1, v2, :L3
  .line 8
    invoke-virtual { p0, v1 }, Lokhttp3/Headers;->name(I)Ljava/lang/String;
    move-result-object v3
  .line 9
    invoke-interface { p1, v3 }, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    move-result v4
    if-eqz v4, :L2
  .line 10
    invoke-virtual { p0, v1 }, Lokhttp3/Headers;->value(I)Ljava/lang/String;
    move-result-object v4
    invoke-virtual { v0, v3, v4 }, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;
  :L2
    add-int/lit8 v1, v1, 1
    goto :L1
  :L3
  .line 11
    invoke-virtual { v0 }, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;
    move-result-object p0
    return-object p0
.end method

.method public static varyHeaders(Lokhttp3/Response;)Lokhttp3/Headers;
  .registers 2
  .line 1
    invoke-virtual { p0 }, Lokhttp3/Response;->networkResponse()Lokhttp3/Response;
    move-result-object v0
    invoke-virtual { v0 }, Lokhttp3/Response;->request()Lokhttp3/Request;
    move-result-object v0
    invoke-virtual { v0 }, Lokhttp3/Request;->headers()Lokhttp3/Headers;
    move-result-object v0
  .line 2
    invoke-virtual { p0 }, Lokhttp3/Response;->headers()Lokhttp3/Headers;
    move-result-object p0
  .line 3
    invoke-static { v0, p0 }, Lokhttp3/internal/http/HttpHeaders;->varyHeaders(Lokhttp3/Headers;Lokhttp3/Headers;)Lokhttp3/Headers;
    move-result-object p0
    return-object p0
.end method

.method public static varyMatches(Lokhttp3/Response;Lokhttp3/Headers;Lokhttp3/Request;)Z
  .registers 5
  .line 1
    invoke-static { p0 }, Lokhttp3/internal/http/HttpHeaders;->varyFields(Lokhttp3/Response;)Ljava/util/Set;
    move-result-object p0
    invoke-interface { p0 }, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object p0
  :L0
    invoke-interface { p0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :L1
    invoke-interface { p0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/String;
  .line 2
    invoke-virtual { p1, v0 }, Lokhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;
    move-result-object v1
    invoke-virtual { p2, v0 }, Lokhttp3/Request;->headers(Ljava/lang/String;)Ljava/util/List;
    move-result-object v0
    invoke-static { v1, v0 }, Lokhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L0
    const/4 p0, 0
    return p0
  :L1
    const/4 p0, 1
    return p0
.end method
