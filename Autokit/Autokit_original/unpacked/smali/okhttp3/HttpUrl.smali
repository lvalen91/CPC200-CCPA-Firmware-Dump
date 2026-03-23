.class public final Lokhttp3/HttpUrl;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lokhttp3/HttpUrl$Builder;
  }
.end annotation

.field final static FORM_ENCODE_SET:Ljava/lang/String; = " \"':;<=>@[]^`{}|/\\?#&!$(),~"

.field final static FRAGMENT_ENCODE_SET:Ljava/lang/String; = ""

.field final static FRAGMENT_ENCODE_SET_URI:Ljava/lang/String; = " \"#<>\\^`{|}"

.field private final static HEX_DIGITS:[C

.field final static PASSWORD_ENCODE_SET:Ljava/lang/String; = " \"':;<=>@[]^`{}|/\\?#"

.field final static PATH_SEGMENT_ENCODE_SET:Ljava/lang/String; = " \"<>^`{}|/\\?#"

.field final static PATH_SEGMENT_ENCODE_SET_URI:Ljava/lang/String; = "[]"

.field final static QUERY_COMPONENT_ENCODE_SET:Ljava/lang/String; = " !\"#$&'(),/:;<=>?@[]\\^`{|}~"

.field final static QUERY_COMPONENT_ENCODE_SET_URI:Ljava/lang/String; = "\\^`{|}"

.field final static QUERY_COMPONENT_REENCODE_SET:Ljava/lang/String; = " \"'<>#&="

.field final static QUERY_ENCODE_SET:Ljava/lang/String; = " \"'<>#"

.field final static USERNAME_ENCODE_SET:Ljava/lang/String; = " \"':;<=>@[]^`{}|/\\?#"

.field private final fragment:Ljava/lang/String;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
.end field

.field final host:Ljava/lang/String;

.field private final password:Ljava/lang/String;

.field private final pathSegments:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List<",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
.end field

.field final port:I

.field private final queryNamesAndValues:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List<",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
.end field

.field final scheme:Ljava/lang/String;

.field private final url:Ljava/lang/String;

.field private final username:Ljava/lang/String;

.method static constructor <clinit>()V
  .registers 3
    const/16 v0, 16
    new-array v0, v0, [C
  .line 1
    fill-array-data v0, :L0
    sput-object v0, Lokhttp3/HttpUrl;->HEX_DIGITS:[C
    return-void
  :L0
  .array-data 2
    48t 0t
    49t 0t
    50t 0t
    51t 0t
    52t 0t
    53t 0t
    54t 0t
    55t 0t
    56t 0t
    57t 0t
    65t 0t
    66t 0t
    67t 0t
    68t 0t
    69t 0t
    70t 0t
  .end array-data
.end method

.method constructor <init>(Lokhttp3/HttpUrl$Builder;)V
  .registers 6
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iget-object v0, p1, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;
    iput-object v0, p0, Lokhttp3/HttpUrl;->scheme:Ljava/lang/String;
  .line 3
    iget-object v0, p1, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;
    const/4 v1, 0
    invoke-static { v0, v1 }, Lokhttp3/HttpUrl;->percentDecode(Ljava/lang/String;Z)Ljava/lang/String;
    move-result-object v0
    iput-object v0, p0, Lokhttp3/HttpUrl;->username:Ljava/lang/String;
  .line 4
    iget-object v0, p1, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;
    invoke-static { v0, v1 }, Lokhttp3/HttpUrl;->percentDecode(Ljava/lang/String;Z)Ljava/lang/String;
    move-result-object v0
    iput-object v0, p0, Lokhttp3/HttpUrl;->password:Ljava/lang/String;
  .line 5
    iget-object v0, p1, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;
    iput-object v0, p0, Lokhttp3/HttpUrl;->host:Ljava/lang/String;
  .line 6
    invoke-virtual { p1 }, Lokhttp3/HttpUrl$Builder;->effectivePort()I
    move-result v0
    iput v0, p0, Lokhttp3/HttpUrl;->port:I
  .line 7
    iget-object v0, p1, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;
    invoke-direct { p0, v0, v1 }, Lokhttp3/HttpUrl;->percentDecode(Ljava/util/List;Z)Ljava/util/List;
    move-result-object v0
    iput-object v0, p0, Lokhttp3/HttpUrl;->pathSegments:Ljava/util/List;
  .line 8
    iget-object v0, p1, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;
    const/4 v2, 0
    if-eqz v0, :L0
    const/4 v3, 1
  .line 9
    invoke-direct { p0, v0, v3 }, Lokhttp3/HttpUrl;->percentDecode(Ljava/util/List;Z)Ljava/util/List;
    move-result-object v0
    goto :L1
  :L0
    move-object v0, v2
  :L1
  .line 10
    iput-object v0, p0, Lokhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;
  .line 11
    iget-object v0, p1, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;
    if-eqz v0, :L2
  .line 12
    invoke-static { v0, v1 }, Lokhttp3/HttpUrl;->percentDecode(Ljava/lang/String;Z)Ljava/lang/String;
    move-result-object v2
  :L2
  .line 13
    iput-object v2, p0, Lokhttp3/HttpUrl;->fragment:Ljava/lang/String;
  .line 14
    invoke-virtual { p1 }, Lokhttp3/HttpUrl$Builder;->toString()Ljava/lang/String;
    move-result-object p1
    iput-object p1, p0, Lokhttp3/HttpUrl;->url:Ljava/lang/String;
    return-void
.end method

.method static canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;
  .registers 20
    move-object v1, p0
    move v3, p2
    move v2, p1
  :L0
    if-ge v2, v3, :L6
  .line 1
    invoke-virtual { p0, v2 }, Ljava/lang/String;->codePointAt(I)I
    move-result v0
    const/16 v4, 32
    if-lt v0, v4, :L4
    const/16 v4, 127
    if-eq v0, v4, :L4
    const/16 v4, 128
    if-lt v0, v4, :L1
    if-nez p7, :L4
  :L1
    move-object v4, p3
  .line 2
    invoke-virtual { p3, v0 }, Ljava/lang/String;->indexOf(I)I
    move-result v5
    const/4 v6, -1
    if-ne v5, v6, :L5
    const/16 v5, 37
    if-ne v0, v5, :L2
    if-eqz p4, :L5
    if-eqz p5, :L2
  .line 3
    invoke-static { p0, v2, p2 }, Lokhttp3/HttpUrl;->percentEncoded(Ljava/lang/String;II)Z
    move-result v5
    if-eqz v5, :L5
  :L2
    const/16 v5, 43
    if-ne v0, v5, :L3
    if-eqz p6, :L3
    goto :L5
  :L3
  .line 4
    invoke-static { v0 }, Ljava/lang/Character;->charCount(I)I
    move-result v0
    add-int/2addr v2, v0
    goto :L0
  :L4
    move-object v4, p3
  :L5
  .line 5
    new-instance v10, Lokio/Buffer;
    invoke-direct { v10 }, Lokio/Buffer;-><init>()V
    move v0, p1
  .line 6
    invoke-virtual { v10, p0, p1, v2 }, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;
    move-object v0, v10
    move-object v1, p0
    move v3, p2
    move-object v4, p3
    move v5, p4
    move/from16 v6, p5
    move/from16 v7, p6
    move/from16 v8, p7
    move-object/from16 v9, p8
  .line 7
    invoke-static/range { v0 .. v9 }, Lokhttp3/HttpUrl;->canonicalize(Lokio/Buffer;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)V
  .line 8
    invoke-virtual { v10 }, Lokio/Buffer;->readUtf8()Ljava/lang/String;
    move-result-object v0
    return-object v0
  :L6
    move v0, p1
  .line 9
    invoke-virtual { p0, p1, p2 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method static canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;
  .registers 15
  .line 27
    invoke-virtual { p0 }, Ljava/lang/String;->length()I
    move-result v2
    const/4 v1, 0
    const/4 v8, 0
    move-object v0, p0
    move-object v3, p1
    move v4, p2
    move v5, p3
    move v6, p4
    move v7, p5
  .line 28
    invoke-static/range { v0 .. v8 }, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;
    move-result-object p0
    return-object p0
.end method

.method static canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;
  .registers 16
  .line 25
    invoke-virtual { p0 }, Ljava/lang/String;->length()I
    move-result v2
    const/4 v1, 0
    move-object v0, p0
    move-object v3, p1
    move v4, p2
    move v5, p3
    move v6, p4
    move v7, p5
    move-object v8, p6
  .line 26
    invoke-static/range { v0 .. v8 }, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;
    move-result-object p0
    return-object p0
.end method

.method static canonicalize(Lokio/Buffer;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)V
  .registers 16
    const/4 v0, 0
  :L0
    if-ge p2, p3, :L13
  .line 10
    invoke-virtual { p1, p2 }, Ljava/lang/String;->codePointAt(I)I
    move-result v1
    if-eqz p5, :L1
    const/16 v2, 9
    if-eq v1, v2, :L12
    const/16 v2, 10
    if-eq v1, v2, :L12
    const/16 v2, 12
    if-eq v1, v2, :L12
    const/16 v2, 13
    if-ne v1, v2, :L1
    goto/16 :L12
  :L1
    const/16 v2, 43
    if-ne v1, v2, :L4
    if-eqz p7, :L4
    if-eqz p5, :L2
    const-string v2, "+"
    goto :L3
  :L2
    const-string v2, "%2B"
  :L3
  .line 11
    invoke-virtual { p0, v2 }, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;
    goto/16 :L12
  :L4
    const/16 v2, 32
    const/16 v3, 37
    if-lt v1, v2, :L7
    const/16 v2, 127
    if-eq v1, v2, :L7
    const/16 v2, 128
    if-lt v1, v2, :L5
    if-nez p8, :L7
  :L5
  .line 12
    invoke-virtual { p4, v1 }, Ljava/lang/String;->indexOf(I)I
    move-result v2
    const/4 v4, -1
    if-ne v2, v4, :L7
    if-ne v1, v3, :L6
    if-eqz p5, :L7
    if-eqz p6, :L6
  .line 13
    invoke-static { p1, p2, p3 }, Lokhttp3/HttpUrl;->percentEncoded(Ljava/lang/String;II)Z
    move-result v2
    if-nez v2, :L6
    goto :L7
  :L6
  .line 14
    invoke-virtual { p0, v1 }, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;
    goto :L12
  :L7
    if-nez v0, :L8
  .line 15
    new-instance v0, Lokio/Buffer;
    invoke-direct { v0 }, Lokio/Buffer;-><init>()V
  :L8
    if-eqz p9, :L10
  .line 16
    sget-object v2, Lokhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;
    invoke-virtual { p9, v2 }, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :L9
    goto :L10
  :L9
  .line 17
    invoke-static { v1 }, Ljava/lang/Character;->charCount(I)I
    move-result v2
    add-int/2addr v2, p2
    invoke-virtual { v0, p1, p2, v2, p9 }, Lokio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;
    goto :L11
  :L10
  .line 18
    invoke-virtual { v0, v1 }, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;
  :L11
  .line 19
    invoke-virtual { v0 }, Lokio/Buffer;->exhausted()Z
    move-result v2
    if-nez v2, :L12
  .line 20
    invoke-virtual { v0 }, Lokio/Buffer;->readByte()B
    move-result v2
    and-int/lit16 v2, v2, 255
  .line 21
    invoke-virtual { p0, v3 }, Lokio/Buffer;->writeByte(I)Lokio/Buffer;
  .line 22
    sget-object v4, Lokhttp3/HttpUrl;->HEX_DIGITS:[C
    shr-int/lit8 v5, v2, 4
    and-int/lit8 v5, v5, 15
    aget-char v4, v4, v5
    invoke-virtual { p0, v4 }, Lokio/Buffer;->writeByte(I)Lokio/Buffer;
  .line 23
    sget-object v4, Lokhttp3/HttpUrl;->HEX_DIGITS:[C
    and-int/lit8 v2, v2, 15
    aget-char v2, v4, v2
    invoke-virtual { p0, v2 }, Lokio/Buffer;->writeByte(I)Lokio/Buffer;
    goto :L11
  :L12
  .line 24
    invoke-static { v1 }, Ljava/lang/Character;->charCount(I)I
    move-result v1
    add-int/2addr p2, v1
    goto/16 :L0
  :L13
    return-void
.end method

.method public static defaultPort(Ljava/lang/String;)I
  .registers 2
    const-string v0, "http"
  .line 1
    invoke-virtual { p0, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
    const/16 p0, 80
    return p0
  :L0
    const-string v0, "https"
  .line 2
    invoke-virtual { p0, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p0
    if-eqz p0, :L1
    const/16 p0, 443
    return p0
  :L1
    const/4 p0, -1
    return p0
.end method

.method public static get(Ljava/lang/String;)Lokhttp3/HttpUrl;
  .registers 3
  .line 1
    new-instance v0, Lokhttp3/HttpUrl$Builder;
    invoke-direct { v0 }, Lokhttp3/HttpUrl$Builder;-><init>()V
    const/4 v1, 0
    invoke-virtual { v0, v1, p0 }, Lokhttp3/HttpUrl$Builder;->parse(Lokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    move-result-object p0
    invoke-virtual { p0 }, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;
    move-result-object p0
    return-object p0
.end method

.method public static get(Ljava/net/URI;)Lokhttp3/HttpUrl;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
  .registers 1
  .line 3
    invoke-virtual { p0 }, Ljava/net/URI;->toString()Ljava/lang/String;
    move-result-object p0
    invoke-static { p0 }, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;
    move-result-object p0
    return-object p0
.end method

.method public static get(Ljava/net/URL;)Lokhttp3/HttpUrl;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
  .registers 1
  .line 2
    invoke-virtual { p0 }, Ljava/net/URL;->toString()Ljava/lang/String;
    move-result-object p0
    invoke-static { p0 }, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;
    move-result-object p0
    return-object p0
.end method

.method static namesAndValuesToQueryString(Ljava/lang/StringBuilder;Ljava/util/List;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/StringBuilder;",
      "Ljava/util/List<",
      "Ljava/lang/String;",
      ">;)V"
    }
  .end annotation
  .registers 7
  .line 1
    invoke-interface { p1 }, Ljava/util/List;->size()I
    move-result v0
    const/4 v1, 0
  :L0
    if-ge v1, v0, :L3
  .line 2
    invoke-interface { p1, v1 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/String;
    add-int/lit8 v3, v1, 1
  .line 3
    invoke-interface { p1, v3 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/lang/String;
    if-lez v1, :L1
    const/16 v4, 38
  .line 4
    invoke-virtual { p0, v4 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
  :L1
  .line 5
    invoke-virtual { p0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    if-eqz v3, :L2
    const/16 v2, 61
  .line 6
    invoke-virtual { p0, v2 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
  .line 7
    invoke-virtual { p0, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L2
    add-int/lit8 v1, v1, 2
    goto :L0
  :L3
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lokhttp3/HttpUrl;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
  .catch Ljava/lang/IllegalArgumentException; { :L0 .. :L1 } :L2
  .registers 1
  :L0
  .line 1
    invoke-static { p0 }, Lokhttp3/HttpUrl;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;
    move-result-object p0
  :L1
    return-object p0
  :L2
    const/4 p0, 0
    return-object p0
.end method

.method static pathSegmentsToString(Ljava/lang/StringBuilder;Ljava/util/List;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/StringBuilder;",
      "Ljava/util/List<",
      "Ljava/lang/String;",
      ">;)V"
    }
  .end annotation
  .registers 5
  .line 1
    invoke-interface { p1 }, Ljava/util/List;->size()I
    move-result v0
    const/4 v1, 0
  :L0
    if-ge v1, v0, :L1
    const/16 v2, 47
  .line 2
    invoke-virtual { p0, v2 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
  .line 3
    invoke-interface { p1, v1 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/String;
    invoke-virtual { p0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    add-int/lit8 v1, v1, 1
    goto :L0
  :L1
    return-void
.end method

.method static percentDecode(Ljava/lang/String;IIZ)Ljava/lang/String;
  .registers 7
    move v0, p1
  :L0
    if-ge v0, p2, :L3
  .line 7
    invoke-virtual { p0, v0 }, Ljava/lang/String;->charAt(I)C
    move-result v1
    const/16 v2, 37
    if-eq v1, v2, :L2
    const/16 v2, 43
    if-ne v1, v2, :L1
    if-eqz p3, :L1
    goto :L2
  :L1
    add-int/lit8 v0, v0, 1
    goto :L0
  :L2
  .line 8
    new-instance v1, Lokio/Buffer;
    invoke-direct { v1 }, Lokio/Buffer;-><init>()V
  .line 9
    invoke-virtual { v1, p0, p1, v0 }, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;
  .line 10
    invoke-static { v1, p0, v0, p2, p3 }, Lokhttp3/HttpUrl;->percentDecode(Lokio/Buffer;Ljava/lang/String;IIZ)V
  .line 11
    invoke-virtual { v1 }, Lokio/Buffer;->readUtf8()Ljava/lang/String;
    move-result-object p0
    return-object p0
  :L3
  .line 12
    invoke-virtual { p0, p1, p2 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object p0
    return-object p0
.end method

.method static percentDecode(Ljava/lang/String;Z)Ljava/lang/String;
  .registers 4
  .line 1
    invoke-virtual { p0 }, Ljava/lang/String;->length()I
    move-result v0
    const/4 v1, 0
    invoke-static { p0, v1, v0, p1 }, Lokhttp3/HttpUrl;->percentDecode(Ljava/lang/String;IIZ)Ljava/lang/String;
    move-result-object p0
    return-object p0
.end method

.method private percentDecode(Ljava/util/List;Z)Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/List<",
      "Ljava/lang/String;",
      ">;Z)",
      "Ljava/util/List<",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
  .registers 7
  .line 2
    invoke-interface { p1 }, Ljava/util/List;->size()I
    move-result v0
  .line 3
    new-instance v1, Ljava/util/ArrayList;
    invoke-direct { v1, v0 }, Ljava/util/ArrayList;-><init>(I)V
    const/4 v2, 0
  :L0
    if-ge v2, v0, :L3
  .line 4
    invoke-interface { p1, v2 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/lang/String;
    if-eqz v3, :L1
  .line 5
    invoke-static { v3, p2 }, Lokhttp3/HttpUrl;->percentDecode(Ljava/lang/String;Z)Ljava/lang/String;
    move-result-object v3
    goto :L2
  :L1
    const/4 v3, 0
  :L2
    invoke-interface { v1, v3 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    add-int/lit8 v2, v2, 1
    goto :L0
  :L3
  .line 6
    invoke-static { v1 }, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    move-result-object p1
    return-object p1
.end method

.method static percentDecode(Lokio/Buffer;Ljava/lang/String;IIZ)V
  .registers 10
  :L0
    if-ge p2, p3, :L4
  .line 13
    invoke-virtual { p1, p2 }, Ljava/lang/String;->codePointAt(I)I
    move-result v0
    const/16 v1, 37
    if-ne v0, v1, :L1
    add-int/lit8 v1, p2, 2
    if-ge v1, p3, :L1
    add-int/lit8 v2, p2, 1
  .line 14
    invoke-virtual { p1, v2 }, Ljava/lang/String;->charAt(I)C
    move-result v2
    invoke-static { v2 }, Lokhttp3/internal/Util;->decodeHexDigit(C)I
    move-result v2
  .line 15
    invoke-virtual { p1, v1 }, Ljava/lang/String;->charAt(I)C
    move-result v3
    invoke-static { v3 }, Lokhttp3/internal/Util;->decodeHexDigit(C)I
    move-result v3
    const/4 v4, -1
    if-eq v2, v4, :L2
    if-eq v3, v4, :L2
    shl-int/lit8 p2, v2, 4
    add-int/2addr p2, v3
  .line 16
    invoke-virtual { p0, p2 }, Lokio/Buffer;->writeByte(I)Lokio/Buffer;
    move p2, v1
    goto :L3
  :L1
    const/16 v1, 43
    if-ne v0, v1, :L2
    if-eqz p4, :L2
    const/16 v1, 32
  .line 17
    invoke-virtual { p0, v1 }, Lokio/Buffer;->writeByte(I)Lokio/Buffer;
    goto :L3
  :L2
  .line 18
    invoke-virtual { p0, v0 }, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;
  :L3
  .line 19
    invoke-static { v0 }, Ljava/lang/Character;->charCount(I)I
    move-result v0
    add-int/2addr p2, v0
    goto :L0
  :L4
    return-void
.end method

.method static percentEncoded(Ljava/lang/String;II)Z
  .registers 6
    add-int/lit8 v0, p1, 2
    const/4 v1, 1
    if-ge v0, p2, :L0
  .line 1
    invoke-virtual { p0, p1 }, Ljava/lang/String;->charAt(I)C
    move-result p2
    const/16 v2, 37
    if-ne p2, v2, :L0
    add-int/2addr p1, v1
  .line 2
    invoke-virtual { p0, p1 }, Ljava/lang/String;->charAt(I)C
    move-result p1
    invoke-static { p1 }, Lokhttp3/internal/Util;->decodeHexDigit(C)I
    move-result p1
    const/4 p2, -1
    if-eq p1, p2, :L0
  .line 3
    invoke-virtual { p0, v0 }, Ljava/lang/String;->charAt(I)C
    move-result p0
    invoke-static { p0 }, Lokhttp3/internal/Util;->decodeHexDigit(C)I
    move-result p0
    if-eq p0, p2, :L0
    goto :L1
  :L0
    const/4 v1, 0
  :L1
    return v1
.end method

.method static queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/String;",
      ")",
      "Ljava/util/List<",
      "Ljava/lang/String;",
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
    invoke-virtual { p0 }, Ljava/lang/String;->length()I
    move-result v2
    if-gt v1, v2, :L5
    const/16 v2, 38
  .line 3
    invoke-virtual { p0, v2, v1 }, Ljava/lang/String;->indexOf(II)I
    move-result v2
    const/4 v3, -1
    if-ne v2, v3, :L1
  .line 4
    invoke-virtual { p0 }, Ljava/lang/String;->length()I
    move-result v2
  :L1
    const/16 v4, 61
  .line 5
    invoke-virtual { p0, v4, v1 }, Ljava/lang/String;->indexOf(II)I
    move-result v4
    if-eq v4, v3, :L3
    if-le v4, v2, :L2
    goto :L3
  :L2
  .line 6
    invoke-virtual { p0, v1, v4 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v1
    invoke-interface { v0, v1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    add-int/lit8 v4, v4, 1
  .line 7
    invoke-virtual { p0, v4, v2 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v1
    invoke-interface { v0, v1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    goto :L4
  :L3
  .line 8
    invoke-virtual { p0, v1, v2 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v1
    invoke-interface { v0, v1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const/4 v1, 0
  .line 9
    invoke-interface { v0, v1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  :L4
    add-int/lit8 v1, v2, 1
    goto :L0
  :L5
    return-object v0
.end method

.method public encodedFragment()Ljava/lang/String;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
  .registers 3
  .line 1
    iget-object v0, p0, Lokhttp3/HttpUrl;->fragment:Ljava/lang/String;
    if-nez v0, :L0
    const/4 v0, 0
    return-object v0
  :L0
  .line 2
    iget-object v0, p0, Lokhttp3/HttpUrl;->url:Ljava/lang/String;
    const/16 v1, 35
    invoke-virtual { v0, v1 }, Ljava/lang/String;->indexOf(I)I
    move-result v0
    add-int/lit8 v0, v0, 1
  .line 3
    iget-object v1, p0, Lokhttp3/HttpUrl;->url:Ljava/lang/String;
    invoke-virtual { v1, v0 }, Ljava/lang/String;->substring(I)Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public encodedPassword()Ljava/lang/String;
  .registers 4
  .line 1
    iget-object v0, p0, Lokhttp3/HttpUrl;->password:Ljava/lang/String;
    invoke-virtual { v0 }, Ljava/lang/String;->isEmpty()Z
    move-result v0
    if-eqz v0, :L0
    const-string v0, ""
    return-object v0
  :L0
  .line 2
    iget-object v0, p0, Lokhttp3/HttpUrl;->url:Ljava/lang/String;
    const/16 v1, 58
    iget-object v2, p0, Lokhttp3/HttpUrl;->scheme:Ljava/lang/String;
    invoke-virtual { v2 }, Ljava/lang/String;->length()I
    move-result v2
    add-int/lit8 v2, v2, 3
    invoke-virtual { v0, v1, v2 }, Ljava/lang/String;->indexOf(II)I
    move-result v0
    add-int/lit8 v0, v0, 1
  .line 3
    iget-object v1, p0, Lokhttp3/HttpUrl;->url:Ljava/lang/String;
    const/16 v2, 64
    invoke-virtual { v1, v2 }, Ljava/lang/String;->indexOf(I)I
    move-result v1
  .line 4
    iget-object v2, p0, Lokhttp3/HttpUrl;->url:Ljava/lang/String;
    invoke-virtual { v2, v0, v1 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public encodedPath()Ljava/lang/String;
  .registers 5
  .line 1
    iget-object v0, p0, Lokhttp3/HttpUrl;->url:Ljava/lang/String;
    iget-object v1, p0, Lokhttp3/HttpUrl;->scheme:Ljava/lang/String;
    invoke-virtual { v1 }, Ljava/lang/String;->length()I
    move-result v1
    add-int/lit8 v1, v1, 3
    const/16 v2, 47
    invoke-virtual { v0, v2, v1 }, Ljava/lang/String;->indexOf(II)I
    move-result v0
  .line 2
    iget-object v1, p0, Lokhttp3/HttpUrl;->url:Ljava/lang/String;
    invoke-virtual { v1 }, Ljava/lang/String;->length()I
    move-result v2
    const-string v3, "?#"
    invoke-static { v1, v0, v2, v3 }, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I
    move-result v1
  .line 3
    iget-object v2, p0, Lokhttp3/HttpUrl;->url:Ljava/lang/String;
    invoke-virtual { v2, v0, v1 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public encodedPathSegments()Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Ljava/util/List<",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
  .registers 7
  .line 1
    iget-object v0, p0, Lokhttp3/HttpUrl;->url:Ljava/lang/String;
    iget-object v1, p0, Lokhttp3/HttpUrl;->scheme:Ljava/lang/String;
    invoke-virtual { v1 }, Ljava/lang/String;->length()I
    move-result v1
    add-int/lit8 v1, v1, 3
    const/16 v2, 47
    invoke-virtual { v0, v2, v1 }, Ljava/lang/String;->indexOf(II)I
    move-result v0
  .line 2
    iget-object v1, p0, Lokhttp3/HttpUrl;->url:Ljava/lang/String;
    invoke-virtual { v1 }, Ljava/lang/String;->length()I
    move-result v3
    const-string v4, "?#"
    invoke-static { v1, v0, v3, v4 }, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I
    move-result v1
  .line 3
    new-instance v3, Ljava/util/ArrayList;
    invoke-direct { v3 }, Ljava/util/ArrayList;-><init>()V
  :L0
    if-ge v0, v1, :L1
    add-int/lit8 v0, v0, 1
  .line 4
    iget-object v4, p0, Lokhttp3/HttpUrl;->url:Ljava/lang/String;
    invoke-static { v4, v0, v1, v2 }, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I
    move-result v4
  .line 5
    iget-object v5, p0, Lokhttp3/HttpUrl;->url:Ljava/lang/String;
    invoke-virtual { v5, v0, v4 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v0
    invoke-interface { v3, v0 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    move v0, v4
    goto :L0
  :L1
    return-object v3
.end method

.method public encodedQuery()Ljava/lang/String;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
  .registers 5
  .line 1
    iget-object v0, p0, Lokhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;
    if-nez v0, :L0
    const/4 v0, 0
    return-object v0
  :L0
  .line 2
    iget-object v0, p0, Lokhttp3/HttpUrl;->url:Ljava/lang/String;
    const/16 v1, 63
    invoke-virtual { v0, v1 }, Ljava/lang/String;->indexOf(I)I
    move-result v0
    add-int/lit8 v0, v0, 1
  .line 3
    iget-object v1, p0, Lokhttp3/HttpUrl;->url:Ljava/lang/String;
    invoke-virtual { v1 }, Ljava/lang/String;->length()I
    move-result v2
    const/16 v3, 35
    invoke-static { v1, v0, v2, v3 }, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I
    move-result v1
  .line 4
    iget-object v2, p0, Lokhttp3/HttpUrl;->url:Ljava/lang/String;
    invoke-virtual { v2, v0, v1 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public encodedUsername()Ljava/lang/String;
  .registers 5
  .line 1
    iget-object v0, p0, Lokhttp3/HttpUrl;->username:Ljava/lang/String;
    invoke-virtual { v0 }, Ljava/lang/String;->isEmpty()Z
    move-result v0
    if-eqz v0, :L0
    const-string v0, ""
    return-object v0
  :L0
  .line 2
    iget-object v0, p0, Lokhttp3/HttpUrl;->scheme:Ljava/lang/String;
    invoke-virtual { v0 }, Ljava/lang/String;->length()I
    move-result v0
    add-int/lit8 v0, v0, 3
  .line 3
    iget-object v1, p0, Lokhttp3/HttpUrl;->url:Ljava/lang/String;
    invoke-virtual { v1 }, Ljava/lang/String;->length()I
    move-result v2
    const-string v3, ":@"
    invoke-static { v1, v0, v2, v3 }, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I
    move-result v1
  .line 4
    iget-object v2, p0, Lokhttp3/HttpUrl;->url:Ljava/lang/String;
    invoke-virtual { v2, v0, v1 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
  .parameter # Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
  .end parameter
  .registers 3
  .line 1
    instance-of v0, p1, Lokhttp3/HttpUrl;
    if-eqz v0, :L0
    check-cast p1, Lokhttp3/HttpUrl;
    iget-object p1, p1, Lokhttp3/HttpUrl;->url:Ljava/lang/String;
    iget-object v0, p0, Lokhttp3/HttpUrl;->url:Ljava/lang/String;
    invoke-virtual { p1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p1
    if-eqz p1, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    return p1
.end method

.method public fragment()Ljava/lang/String;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/HttpUrl;->fragment:Ljava/lang/String;
    return-object v0
.end method

.method public hashCode()I
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/HttpUrl;->url:Ljava/lang/String;
    invoke-virtual { v0 }, Ljava/lang/String;->hashCode()I
    move-result v0
    return v0
.end method

.method public host()Ljava/lang/String;
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/HttpUrl;->host:Ljava/lang/String;
    return-object v0
.end method

.method public isHttps()Z
  .registers 3
  .line 1
    iget-object v0, p0, Lokhttp3/HttpUrl;->scheme:Ljava/lang/String;
    const-string v1, "https"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    return v0
.end method

.method public newBuilder()Lokhttp3/HttpUrl$Builder;
  .registers 4
  .line 1
    new-instance v0, Lokhttp3/HttpUrl$Builder;
    invoke-direct { v0 }, Lokhttp3/HttpUrl$Builder;-><init>()V
  .line 2
    iget-object v1, p0, Lokhttp3/HttpUrl;->scheme:Ljava/lang/String;
    iput-object v1, v0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;
  .line 3
    invoke-virtual { p0 }, Lokhttp3/HttpUrl;->encodedUsername()Ljava/lang/String;
    move-result-object v1
    iput-object v1, v0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;
  .line 4
    invoke-virtual { p0 }, Lokhttp3/HttpUrl;->encodedPassword()Ljava/lang/String;
    move-result-object v1
    iput-object v1, v0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;
  .line 5
    iget-object v1, p0, Lokhttp3/HttpUrl;->host:Ljava/lang/String;
    iput-object v1, v0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;
  .line 6
    iget v1, p0, Lokhttp3/HttpUrl;->port:I
    iget-object v2, p0, Lokhttp3/HttpUrl;->scheme:Ljava/lang/String;
    invoke-static { v2 }, Lokhttp3/HttpUrl;->defaultPort(Ljava/lang/String;)I
    move-result v2
    if-eq v1, v2, :L0
    iget v1, p0, Lokhttp3/HttpUrl;->port:I
    goto :L1
  :L0
    const/4 v1, -1
  :L1
    iput v1, v0, Lokhttp3/HttpUrl$Builder;->port:I
  .line 7
    iget-object v1, v0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;
    invoke-interface { v1 }, Ljava/util/List;->clear()V
  .line 8
    iget-object v1, v0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;
    invoke-virtual { p0 }, Lokhttp3/HttpUrl;->encodedPathSegments()Ljava/util/List;
    move-result-object v2
    invoke-interface { v1, v2 }, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
  .line 9
    invoke-virtual { p0 }, Lokhttp3/HttpUrl;->encodedQuery()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Lokhttp3/HttpUrl$Builder;->encodedQuery(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
  .line 10
    invoke-virtual { p0 }, Lokhttp3/HttpUrl;->encodedFragment()Ljava/lang/String;
    move-result-object v1
    iput-object v1, v0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;
    return-object v0
.end method

.method public newBuilder(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
  .catch Ljava/lang/IllegalArgumentException; { :L0 .. :L1 } :L2
  .registers 3
  :L0
  .line 11
    new-instance v0, Lokhttp3/HttpUrl$Builder;
    invoke-direct { v0 }, Lokhttp3/HttpUrl$Builder;-><init>()V
    invoke-virtual { v0, p0, p1 }, Lokhttp3/HttpUrl$Builder;->parse(Lokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    move-result-object p1
  :L1
    return-object p1
  :L2
    const/4 p1, 0
    return-object p1
.end method

.method public password()Ljava/lang/String;
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/HttpUrl;->password:Ljava/lang/String;
    return-object v0
.end method

.method public pathSegments()Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Ljava/util/List<",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/HttpUrl;->pathSegments:Ljava/util/List;
    return-object v0
.end method

.method public pathSize()I
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/HttpUrl;->pathSegments:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->size()I
    move-result v0
    return v0
.end method

.method public port()I
  .registers 2
  .line 1
    iget v0, p0, Lokhttp3/HttpUrl;->port:I
    return v0
.end method

.method public query()Ljava/lang/String;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
  .registers 3
  .line 1
    iget-object v0, p0, Lokhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;
    if-nez v0, :L0
    const/4 v0, 0
    return-object v0
  :L0
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
  .line 3
    iget-object v1, p0, Lokhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;
    invoke-static { v0, v1 }, Lokhttp3/HttpUrl;->namesAndValuesToQueryString(Ljava/lang/StringBuilder;Ljava/util/List;)V
  .line 4
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public queryParameter(Ljava/lang/String;)Ljava/lang/String;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
  .registers 6
  .line 1
    iget-object v0, p0, Lokhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;
    const/4 v1, 0
    if-nez v0, :L0
    return-object v1
  :L0
    const/4 v2, 0
  .line 2
    invoke-interface { v0 }, Ljava/util/List;->size()I
    move-result v0
  :L1
    if-ge v2, v0, :L3
  .line 3
    iget-object v3, p0, Lokhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;
    invoke-interface { v3, v2 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v3
    invoke-virtual { p1, v3 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :L2
  .line 4
    iget-object p1, p0, Lokhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;
    add-int/lit8 v2, v2, 1
    invoke-interface { p1, v2 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Ljava/lang/String;
    return-object p1
  :L2
    add-int/lit8 v2, v2, 2
    goto :L1
  :L3
    return-object v1
.end method

.method public queryParameterName(I)Ljava/lang/String;
  .registers 3
  .line 1
    iget-object v0, p0, Lokhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;
    if-eqz v0, :L0
    mul-int/lit8 p1, p1, 2
  .line 2
    invoke-interface { v0, p1 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Ljava/lang/String;
    return-object p1
  :L0
  .line 3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;
    invoke-direct { p1 }, Ljava/lang/IndexOutOfBoundsException;-><init>()V
    throw p1
.end method

.method public queryParameterNames()Ljava/util/Set;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Ljava/util/Set<",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
  .registers 5
  .line 1
    iget-object v0, p0, Lokhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;
    if-nez v0, :L0
    invoke-static { }, Ljava/util/Collections;->emptySet()Ljava/util/Set;
    move-result-object v0
    return-object v0
  :L0
  .line 2
    new-instance v0, Ljava/util/LinkedHashSet;
    invoke-direct { v0 }, Ljava/util/LinkedHashSet;-><init>()V
    const/4 v1, 0
  .line 3
    iget-object v2, p0, Lokhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;
    invoke-interface { v2 }, Ljava/util/List;->size()I
    move-result v2
  :L1
    if-ge v1, v2, :L2
  .line 4
    iget-object v3, p0, Lokhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;
    invoke-interface { v3, v1 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v3
    invoke-interface { v0, v3 }, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    add-int/lit8 v1, v1, 2
    goto :L1
  :L2
  .line 5
    invoke-static { v0 }, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;
    move-result-object v0
    return-object v0
.end method

.method public queryParameterValue(I)Ljava/lang/String;
  .registers 3
  .line 1
    iget-object v0, p0, Lokhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;
    if-eqz v0, :L0
    mul-int/lit8 p1, p1, 2
    add-int/lit8 p1, p1, 1
  .line 2
    invoke-interface { v0, p1 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Ljava/lang/String;
    return-object p1
  :L0
  .line 3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;
    invoke-direct { p1 }, Ljava/lang/IndexOutOfBoundsException;-><init>()V
    throw p1
.end method

.method public queryParameterValues(Ljava/lang/String;)Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/String;",
      ")",
      "Ljava/util/List<",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
  .registers 7
  .line 1
    iget-object v0, p0, Lokhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;
    if-nez v0, :L0
    invoke-static { }, Ljava/util/Collections;->emptyList()Ljava/util/List;
    move-result-object p1
    return-object p1
  :L0
  .line 2
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    const/4 v1, 0
  .line 3
    iget-object v2, p0, Lokhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;
    invoke-interface { v2 }, Ljava/util/List;->size()I
    move-result v2
  :L1
    if-ge v1, v2, :L3
  .line 4
    iget-object v3, p0, Lokhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;
    invoke-interface { v3, v1 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v3
    invoke-virtual { p1, v3 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :L2
  .line 5
    iget-object v3, p0, Lokhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;
    add-int/lit8 v4, v1, 1
    invoke-interface { v3, v4 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v3
    invoke-interface { v0, v3 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  :L2
    add-int/lit8 v1, v1, 2
    goto :L1
  :L3
  .line 6
    invoke-static { v0 }, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    move-result-object p1
    return-object p1
.end method

.method public querySize()I
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;
    if-eqz v0, :L0
    invoke-interface { v0 }, Ljava/util/List;->size()I
    move-result v0
    div-int/lit8 v0, v0, 2
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public redact()Ljava/lang/String;
  .registers 3
    const-string v0, "/..."
  .line 1
    invoke-virtual { p0, v0 }, Lokhttp3/HttpUrl;->newBuilder(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    move-result-object v0
    const-string v1, ""
  .line 2
    invoke-virtual { v0, v1 }, Lokhttp3/HttpUrl$Builder;->username(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    move-result-object v0
  .line 3
    invoke-virtual { v0, v1 }, Lokhttp3/HttpUrl$Builder;->password(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    move-result-object v0
  .line 4
    invoke-virtual { v0 }, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;
    move-result-object v0
  .line 5
    invoke-virtual { v0 }, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public resolve(Ljava/lang/String;)Lokhttp3/HttpUrl;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Lokhttp3/HttpUrl;->newBuilder(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    move-result-object p1
    if-eqz p1, :L0
  .line 2
    invoke-virtual { p1 }, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;
    move-result-object p1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    return-object p1
.end method

.method public scheme()Ljava/lang/String;
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/HttpUrl;->scheme:Ljava/lang/String;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/HttpUrl;->url:Ljava/lang/String;
    return-object v0
.end method

.method public topPrivateDomain()Ljava/lang/String;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
  .registers 3
  .line 1
    iget-object v0, p0, Lokhttp3/HttpUrl;->host:Ljava/lang/String;
    invoke-static { v0 }, Lokhttp3/internal/Util;->verifyAsIpAddress(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :L0
    const/4 v0, 0
    return-object v0
  :L0
  .line 2
    invoke-static { }, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->get()Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
    move-result-object v0
    iget-object v1, p0, Lokhttp3/HttpUrl;->host:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->getEffectiveTldPlusOne(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public uri()Ljava/net/URI;
  .catch Ljava/net/URISyntaxException; { :L0 .. :L1 } :L2
  .catch Ljava/lang/Exception; { :L3 .. :L4 } :L5
  .registers 5
  .line 1
    invoke-virtual { p0 }, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;
    move-result-object v0
    invoke-virtual { v0 }, Lokhttp3/HttpUrl$Builder;->reencodeForUri()Lokhttp3/HttpUrl$Builder;
    move-result-object v0
    invoke-virtual { v0 }, Lokhttp3/HttpUrl$Builder;->toString()Ljava/lang/String;
    move-result-object v0
  :L0
  .line 2
    new-instance v1, Ljava/net/URI;
    invoke-direct { v1, v0 }, Ljava/net/URI;-><init>(Ljava/lang/String;)V
  :L1
    return-object v1
  :L2
    move-exception v1
  :L3
    const-string v2, "[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]"
    const-string v3, ""
  .line 3
    invoke-virtual { v0, v2, v3 }, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
  .line 4
    invoke-static { v0 }, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;
    move-result-object v0
  :L4
    return-object v0
  :L5
  .line 5
    new-instance v0, Ljava/lang/RuntimeException;
    invoke-direct { v0, v1 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
    throw v0
.end method

.method public url()Ljava/net/URL;
  .catch Ljava/net/MalformedURLException; { :L0 .. :L1 } :L2
  .registers 3
  :L0
  .line 1
    new-instance v0, Ljava/net/URL;
    iget-object v1, p0, Lokhttp3/HttpUrl;->url:Ljava/lang/String;
    invoke-direct { v0, v1 }, Ljava/net/URL;-><init>(Ljava/lang/String;)V
  :L1
    return-object v0
  :L2
    move-exception v0
  .line 2
    new-instance v1, Ljava/lang/RuntimeException;
    invoke-direct { v1, v0 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
    throw v1
.end method

.method public username()Ljava/lang/String;
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/HttpUrl;->username:Ljava/lang/String;
    return-object v0
.end method
