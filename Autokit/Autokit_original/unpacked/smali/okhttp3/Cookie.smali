.class public final Lokhttp3/Cookie;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lokhttp3/Cookie$Builder;
  }
.end annotation

.field private final static DAY_OF_MONTH_PATTERN:Ljava/util/regex/Pattern;

.field private final static MONTH_PATTERN:Ljava/util/regex/Pattern;

.field private final static TIME_PATTERN:Ljava/util/regex/Pattern;

.field private final static YEAR_PATTERN:Ljava/util/regex/Pattern;

.field private final domain:Ljava/lang/String;

.field private final expiresAt:J

.field private final hostOnly:Z

.field private final httpOnly:Z

.field private final name:Ljava/lang/String;

.field private final path:Ljava/lang/String;

.field private final persistent:Z

.field private final secure:Z

.field private final value:Ljava/lang/String;

.method static constructor <clinit>()V
  .registers 1
    const-string v0, "(\\d{2,4})[^\\d]*"
  .line 1
    invoke-static { v0 }, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    move-result-object v0
    sput-object v0, Lokhttp3/Cookie;->YEAR_PATTERN:Ljava/util/regex/Pattern;
    const-string v0, "(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*"
  .line 2
    invoke-static { v0 }, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    move-result-object v0
    sput-object v0, Lokhttp3/Cookie;->MONTH_PATTERN:Ljava/util/regex/Pattern;
    const-string v0, "(\\d{1,2})[^\\d]*"
  .line 3
    invoke-static { v0 }, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    move-result-object v0
    sput-object v0, Lokhttp3/Cookie;->DAY_OF_MONTH_PATTERN:Ljava/util/regex/Pattern;
    const-string v0, "(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*"
  .line 4
    invoke-static { v0 }, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    move-result-object v0
    sput-object v0, Lokhttp3/Cookie;->TIME_PATTERN:Ljava/util/regex/Pattern;
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V
  .registers 11
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Lokhttp3/Cookie;->name:Ljava/lang/String;
  .line 3
    iput-object p2, p0, Lokhttp3/Cookie;->value:Ljava/lang/String;
  .line 4
    iput-wide p3, p0, Lokhttp3/Cookie;->expiresAt:J
  .line 5
    iput-object p5, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;
  .line 6
    iput-object p6, p0, Lokhttp3/Cookie;->path:Ljava/lang/String;
  .line 7
    iput-boolean p7, p0, Lokhttp3/Cookie;->secure:Z
  .line 8
    iput-boolean p8, p0, Lokhttp3/Cookie;->httpOnly:Z
  .line 9
    iput-boolean p9, p0, Lokhttp3/Cookie;->hostOnly:Z
  .line 10
    iput-boolean p10, p0, Lokhttp3/Cookie;->persistent:Z
    return-void
.end method

.method constructor <init>(Lokhttp3/Cookie$Builder;)V
  .registers 5
  .line 11
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 12
    iget-object v0, p1, Lokhttp3/Cookie$Builder;->name:Ljava/lang/String;
    if-eqz v0, :L2
  .line 13
    iget-object v1, p1, Lokhttp3/Cookie$Builder;->value:Ljava/lang/String;
    if-eqz v1, :L1
  .line 14
    iget-object v2, p1, Lokhttp3/Cookie$Builder;->domain:Ljava/lang/String;
    if-eqz v2, :L0
  .line 15
    iput-object v0, p0, Lokhttp3/Cookie;->name:Ljava/lang/String;
  .line 16
    iput-object v1, p0, Lokhttp3/Cookie;->value:Ljava/lang/String;
  .line 17
    iget-wide v0, p1, Lokhttp3/Cookie$Builder;->expiresAt:J
    iput-wide v0, p0, Lokhttp3/Cookie;->expiresAt:J
  .line 18
    iput-object v2, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;
  .line 19
    iget-object v0, p1, Lokhttp3/Cookie$Builder;->path:Ljava/lang/String;
    iput-object v0, p0, Lokhttp3/Cookie;->path:Ljava/lang/String;
  .line 20
    iget-boolean v0, p1, Lokhttp3/Cookie$Builder;->secure:Z
    iput-boolean v0, p0, Lokhttp3/Cookie;->secure:Z
  .line 21
    iget-boolean v0, p1, Lokhttp3/Cookie$Builder;->httpOnly:Z
    iput-boolean v0, p0, Lokhttp3/Cookie;->httpOnly:Z
  .line 22
    iget-boolean v0, p1, Lokhttp3/Cookie$Builder;->persistent:Z
    iput-boolean v0, p0, Lokhttp3/Cookie;->persistent:Z
  .line 23
    iget-boolean p1, p1, Lokhttp3/Cookie$Builder;->hostOnly:Z
    iput-boolean p1, p0, Lokhttp3/Cookie;->hostOnly:Z
    return-void
  :L0
  .line 24
    new-instance p1, Ljava/lang/NullPointerException;
    const-string v0, "builder.domain == null"
    invoke-direct { p1, v0 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p1
  :L1
  .line 25
    new-instance p1, Ljava/lang/NullPointerException;
    const-string v0, "builder.value == null"
    invoke-direct { p1, v0 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p1
  :L2
  .line 26
    new-instance p1, Ljava/lang/NullPointerException;
    const-string v0, "builder.name == null"
    invoke-direct { p1, v0 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method private static dateCharacterOffset(Ljava/lang/String;IIZ)I
  .registers 7
  :L0
    if-ge p1, p2, :L9
  .line 1
    invoke-virtual { p0, p1 }, Ljava/lang/String;->charAt(I)C
    move-result v0
    const/16 v1, 32
    const/4 v2, 1
    if-ge v0, v1, :L1
    const/16 v1, 9
    if-ne v0, v1, :L6
  :L1
    const/16 v1, 127
    if-ge v0, v1, :L6
    const/16 v1, 48
    if-lt v0, v1, :L2
    const/16 v1, 57
    if-le v0, v1, :L6
  :L2
    const/16 v1, 97
    if-lt v0, v1, :L3
    const/16 v1, 122
    if-le v0, v1, :L6
  :L3
    const/16 v1, 65
    if-lt v0, v1, :L4
    const/16 v1, 90
    if-le v0, v1, :L6
  :L4
    const/16 v1, 58
    if-ne v0, v1, :L5
    goto :L6
  :L5
    const/4 v0, 0
    goto :L7
  :L6
    const/4 v0, 1
  :L7
    xor-int/lit8 v1, p3, 1
    if-ne v0, v1, :L8
    return p1
  :L8
    add-int/lit8 p1, p1, 1
    goto :L0
  :L9
    return p2
.end method

.method private static domainMatch(Ljava/lang/String;Ljava/lang/String;)Z
  .registers 4
  .line 1
    invoke-virtual { p0, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    const/4 v1, 1
    if-eqz v0, :L0
    return v1
  :L0
  .line 2
    invoke-virtual { p0, p1 }, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :L1
  .line 3
    invoke-virtual { p0 }, Ljava/lang/String;->length()I
    move-result v0
    invoke-virtual { p1 }, Ljava/lang/String;->length()I
    move-result p1
    sub-int/2addr v0, p1
    sub-int/2addr v0, v1
    invoke-virtual { p0, v0 }, Ljava/lang/String;->charAt(I)C
    move-result p1
    const/16 v0, 46
    if-ne p1, v0, :L1
  .line 4
    invoke-static { p0 }, Lokhttp3/internal/Util;->verifyAsIpAddress(Ljava/lang/String;)Z
    move-result p0
    if-nez p0, :L1
    return v1
  :L1
    const/4 p0, 0
    return p0
.end method

.method static parse(JLokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
  .catch Ljava/lang/IllegalArgumentException; { :L6 .. :L7 } :L17
  .catch Ljava/lang/NumberFormatException; { :L9 .. :L10 } :L17
  .catch Ljava/lang/IllegalArgumentException; { :L12 .. :L13 } :L17
  .registers 27
    move-object/from16 v0, p3
  .line 2
    invoke-virtual/range { p3 .. p3 }, Ljava/lang/String;->length()I
    move-result v1
    const/4 v2, 0
    const/16 v3, 59
  .line 3
    invoke-static { v0, v2, v1, v3 }, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I
    move-result v4
    const/16 v5, 61
  .line 4
    invoke-static { v0, v2, v4, v5 }, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I
    move-result v6
    const/4 v7, 0
    if-ne v6, v4, :L0
    return-object v7
  :L0
  .line 5
    invoke-static { v0, v2, v6 }, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;
    move-result-object v9
  .line 6
    invoke-virtual { v9 }, Ljava/lang/String;->isEmpty()Z
    move-result v8
    if-nez v8, :L34
    invoke-static { v9 }, Lokhttp3/internal/Util;->indexOfControlOrNonAscii(Ljava/lang/String;)I
    move-result v8
    const/4 v10, -1
    if-eq v8, v10, :L1
    goto/16 :L34
  :L1
    const/4 v8, 1
    add-int/2addr v6, v8
  .line 7
    invoke-static { v0, v6, v4 }, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;
    move-result-object v6
  .line 8
    invoke-static { v6 }, Lokhttp3/internal/Util;->indexOfControlOrNonAscii(Ljava/lang/String;)I
    move-result v11
    if-eq v11, v10, :L2
    return-object v7
  :L2
    add-int/2addr v4, v8
    const-wide/16 v10, -1
    const-wide v12, 253402300799999L
    move-object v8, v7
    move-object v14, v8
    move-wide/from16 v19, v10
    move-wide/from16 v21, v12
    const/4 v15, 0
    const/16 v16, 0
    const/16 v17, 1
    const/16 v18, 0
  :L3
    if-ge v4, v1, :L18
  .line 9
    invoke-static { v0, v4, v1, v3 }, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I
    move-result v7
  .line 10
    invoke-static { v0, v4, v7, v5 }, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I
    move-result v3
  .line 11
    invoke-static { v0, v4, v3 }, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;
    move-result-object v4
    if-ge v3, v7, :L4
    add-int/lit8 v3, v3, 1
  .line 12
    invoke-static { v0, v3, v7 }, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;
    move-result-object v3
    goto :L5
  :L4
    const-string v3, ""
  :L5
    const-string v5, "expires"
  .line 13
    invoke-virtual { v4, v5 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v5
    if-eqz v5, :L8
  :L6
  .line 14
    invoke-virtual { v3 }, Ljava/lang/String;->length()I
    move-result v4
    invoke-static { v3, v2, v4 }, Lokhttp3/Cookie;->parseExpires(Ljava/lang/String;II)J
    move-result-wide v21
  :L7
    goto :L10
  :L8
    const-string v5, "max-age"
  .line 15
    invoke-virtual { v4, v5 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v5
    if-eqz v5, :L11
  :L9
  .line 16
    invoke-static { v3 }, Lokhttp3/Cookie;->parseMaxAge(Ljava/lang/String;)J
    move-result-wide v19
  :L10
    const/16 v18, 1
    goto :L17
  :L11
    const-string v5, "domain"
  .line 17
    invoke-virtual { v4, v5 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v5
    if-eqz v5, :L14
  :L12
  .line 18
    invoke-static { v3 }, Lokhttp3/Cookie;->parseDomain(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v14
  :L13
    const/16 v17, 0
    goto :L17
  :L14
    const-string v5, "path"
  .line 19
    invoke-virtual { v4, v5 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v5
    if-eqz v5, :L15
    move-object v8, v3
    goto :L17
  :L15
    const-string v3, "secure"
  .line 20
    invoke-virtual { v4, v3 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v3
    if-eqz v3, :L16
    const/4 v15, 1
    goto :L17
  :L16
    const-string v3, "httponly"
  .line 21
    invoke-virtual { v4, v3 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v3
    if-eqz v3, :L17
    const/16 v16, 1
  :L17
    add-int/lit8 v4, v7, 1
    const/16 v3, 59
    const/16 v5, 61
    const/4 v7, 0
    goto :L3
  :L18
    const-wide/high16 v0, -32768
    cmp-long v3, v19, v0
    if-nez v3, :L20
  :L19
    move-wide v11, v0
    goto :L25
  :L20
    cmp-long v0, v19, v10
    if-eqz v0, :L24
    const-wide v0, 9223372036854775L
    cmp-long v3, v19, v0
    if-gtz v3, :L21
    const-wide/16 v0, 1000
    mul-long v19, v19, v0
    goto :L22
  :L21
    const-wide v19, 9223372036854775807L
  :L22
    add-long v0, p0, v19
    cmp-long v3, v0, p0
    if-ltz v3, :L23
    cmp-long v3, v0, v12
    if-lez v3, :L19
  :L23
    move-wide v11, v12
    goto :L25
  :L24
    move-wide/from16 v11, v21
  :L25
  .line 22
    invoke-virtual/range { p2 .. p2 }, Lokhttp3/HttpUrl;->host()Ljava/lang/String;
    move-result-object v0
    if-nez v14, :L26
    move-object v13, v0
    const/4 v1, 0
    goto :L28
  :L26
  .line 23
    invoke-static { v0, v14 }, Lokhttp3/Cookie;->domainMatch(Ljava/lang/String;Ljava/lang/String;)Z
    move-result v1
    if-nez v1, :L27
    const/4 v1, 0
    return-object v1
  :L27
    const/4 v1, 0
    move-object v13, v14
  :L28
  .line 24
    invoke-virtual { v0 }, Ljava/lang/String;->length()I
    move-result v0
    invoke-virtual { v13 }, Ljava/lang/String;->length()I
    move-result v3
    if-eq v0, v3, :L29
  .line 25
    invoke-static { }, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->get()Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
    move-result-object v0
    invoke-virtual { v0, v13 }, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->getEffectiveTldPlusOne(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    if-nez v0, :L29
    return-object v1
  :L29
    const-string v0, "/"
    if-eqz v8, :L31
  .line 26
    invoke-virtual { v8, v0 }, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v1
    if-nez v1, :L30
    goto :L31
  :L30
    move-object v14, v8
    goto :L33
  :L31
  .line 27
    invoke-virtual/range { p2 .. p2 }, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;
    move-result-object v1
    const/16 v3, 47
  .line 28
    invoke-virtual { v1, v3 }, Ljava/lang/String;->lastIndexOf(I)I
    move-result v3
    if-eqz v3, :L32
  .line 29
    invoke-virtual { v1, v2, v3 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v0
  :L32
    move-object v14, v0
  :L33
  .line 30
    new-instance v0, Lokhttp3/Cookie;
    move-object v8, v0
    move-object v10, v6
    invoke-direct/range { v8 .. v18 }, Lokhttp3/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V
    return-object v0
  :L34
    move-object v0, v7
    return-object v0
.end method

.method public static parse(Lokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
  .registers 4
  .line 1
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v0
    invoke-static { v0, v1, p0, p1 }, Lokhttp3/Cookie;->parse(JLokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;
    move-result-object p0
    return-object p0
.end method

.method public static parseAll(Lokhttp3/HttpUrl;Lokhttp3/Headers;)Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Lokhttp3/HttpUrl;",
      "Lokhttp3/Headers;",
      ")",
      "Ljava/util/List<",
      "Lokhttp3/Cookie;",
      ">;"
    }
  .end annotation
  .registers 6
    const-string v0, "Set-Cookie"
  .line 1
    invoke-virtual { p1, v0 }, Lokhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;
    move-result-object p1
  .line 2
    invoke-interface { p1 }, Ljava/util/List;->size()I
    move-result v0
    const/4 v1, 0
    const/4 v2, 0
  :L0
    if-ge v2, v0, :L4
  .line 3
    invoke-interface { p1, v2 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/lang/String;
    invoke-static { p0, v3 }, Lokhttp3/Cookie;->parse(Lokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;
    move-result-object v3
    if-nez v3, :L1
    goto :L3
  :L1
    if-nez v1, :L2
  .line 4
    new-instance v1, Ljava/util/ArrayList;
    invoke-direct { v1 }, Ljava/util/ArrayList;-><init>()V
  :L2
  .line 5
    invoke-interface { v1, v3 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  :L3
    add-int/lit8 v2, v2, 1
    goto :L0
  :L4
    if-eqz v1, :L5
  .line 6
    invoke-static { v1 }, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    move-result-object p0
    goto :L6
  :L5
  .line 7
    invoke-static { }, Ljava/util/Collections;->emptyList()Ljava/util/List;
    move-result-object p0
  :L6
    return-object p0
.end method

.method private static parseDomain(Ljava/lang/String;)Ljava/lang/String;
  .registers 3
    const-string v0, "."
  .line 1
    invoke-virtual { p0, v0 }, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v1
    if-nez v1, :L2
  .line 2
    invoke-virtual { p0, v0 }, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :L0
    const/4 v0, 1
  .line 3
    invoke-virtual { p0, v0 }, Ljava/lang/String;->substring(I)Ljava/lang/String;
    move-result-object p0
  :L0
  .line 4
    invoke-static { p0 }, Lokhttp3/internal/Util;->canonicalizeHost(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p0
    if-eqz p0, :L1
    return-object p0
  :L1
  .line 5
    new-instance p0, Ljava/lang/IllegalArgumentException;
    invoke-direct { p0 }, Ljava/lang/IllegalArgumentException;-><init>()V
    throw p0
  :L2
  .line 6
    new-instance p0, Ljava/lang/IllegalArgumentException;
    invoke-direct { p0 }, Ljava/lang/IllegalArgumentException;-><init>()V
    throw p0
.end method

.method private static parseExpires(Ljava/lang/String;II)J
  .registers 15
    const/4 v0, 0
  .line 1
    invoke-static { p0, p1, p2, v0 }, Lokhttp3/Cookie;->dateCharacterOffset(Ljava/lang/String;IIZ)I
    move-result p1
  .line 2
    sget-object v1, Lokhttp3/Cookie;->TIME_PATTERN:Ljava/util/regex/Pattern;
    invoke-virtual { v1, p0 }, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    move-result-object v1
    const/4 v2, -1
    const/4 v3, -1
    const/4 v4, -1
    const/4 v5, -1
    const/4 v6, -1
    const/4 v7, -1
    const/4 v8, -1
  :L0
    const/4 v9, 2
    const/4 v10, 1
    if-ge p1, p2, :L5
    add-int/lit8 v11, p1, 1
  .line 3
    invoke-static { p0, v11, p2, v10 }, Lokhttp3/Cookie;->dateCharacterOffset(Ljava/lang/String;IIZ)I
    move-result v11
  .line 4
    invoke-virtual { v1, p1, v11 }, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;
    if-ne v4, v2, :L1
  .line 5
    sget-object p1, Lokhttp3/Cookie;->TIME_PATTERN:Ljava/util/regex/Pattern;
    invoke-virtual { v1, p1 }, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;
    move-result-object p1
    invoke-virtual { p1 }, Ljava/util/regex/Matcher;->matches()Z
    move-result p1
    if-eqz p1, :L1
  .line 6
    invoke-virtual { v1, v10 }, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v4
  .line 7
    invoke-virtual { v1, v9 }, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v7
    const/4 p1, 3
  .line 8
    invoke-virtual { v1, p1 }, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v8
    goto :L4
  :L1
    if-ne v5, v2, :L2
  .line 9
    sget-object p1, Lokhttp3/Cookie;->DAY_OF_MONTH_PATTERN:Ljava/util/regex/Pattern;
    invoke-virtual { v1, p1 }, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;
    move-result-object p1
    invoke-virtual { p1 }, Ljava/util/regex/Matcher;->matches()Z
    move-result p1
    if-eqz p1, :L2
  .line 10
    invoke-virtual { v1, v10 }, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v5
    goto :L4
  :L2
    if-ne v6, v2, :L3
  .line 11
    sget-object p1, Lokhttp3/Cookie;->MONTH_PATTERN:Ljava/util/regex/Pattern;
    invoke-virtual { v1, p1 }, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;
    move-result-object p1
    invoke-virtual { p1 }, Ljava/util/regex/Matcher;->matches()Z
    move-result p1
    if-eqz p1, :L3
  .line 12
    invoke-virtual { v1, v10 }, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    move-result-object p1
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;
    invoke-virtual { p1, v6 }, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
    move-result-object p1
  .line 13
    sget-object v6, Lokhttp3/Cookie;->MONTH_PATTERN:Ljava/util/regex/Pattern;
    invoke-virtual { v6 }, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;
    move-result-object v6
    invoke-virtual { v6, p1 }, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    move-result p1
    div-int/lit8 v6, p1, 4
    goto :L4
  :L3
    if-ne v3, v2, :L4
  .line 14
    sget-object p1, Lokhttp3/Cookie;->YEAR_PATTERN:Ljava/util/regex/Pattern;
    invoke-virtual { v1, p1 }, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;
    move-result-object p1
    invoke-virtual { p1 }, Ljava/util/regex/Matcher;->matches()Z
    move-result p1
    if-eqz p1, :L4
  .line 15
    invoke-virtual { v1, v10 }, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v3
  :L4
    add-int/lit8 v11, v11, 1
  .line 16
    invoke-static { p0, v11, p2, v0 }, Lokhttp3/Cookie;->dateCharacterOffset(Ljava/lang/String;IIZ)I
    move-result p1
    goto/16 :L0
  :L5
    const/16 p0, 70
    if-lt v3, p0, :L6
    const/16 p0, 99
    if-gt v3, p0, :L6
    add-int/lit16 v3, v3, 1900
  :L6
    if-ltz v3, :L7
    const/16 p0, 69
    if-gt v3, p0, :L7
    add-int/lit16 v3, v3, 2000
  :L7
    const/16 p0, 1601
    if-lt v3, p0, :L13
    if-eq v6, v2, :L12
    if-lt v5, v10, :L11
    const/16 p0, 31
    if-gt v5, p0, :L11
    if-ltz v4, :L10
    const/16 p0, 23
    if-gt v4, p0, :L10
    if-ltz v7, :L9
    const/16 p0, 59
    if-gt v7, p0, :L9
    if-ltz v8, :L8
    if-gt v8, p0, :L8
  .line 17
    new-instance p0, Ljava/util/GregorianCalendar;
    sget-object p1, Lokhttp3/internal/Util;->UTC:Ljava/util/TimeZone;
    invoke-direct { p0, p1 }, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V
  .line 18
    invoke-virtual { p0, v0 }, Ljava/util/Calendar;->setLenient(Z)V
  .line 19
    invoke-virtual { p0, v10, v3 }, Ljava/util/Calendar;->set(II)V
    sub-int/2addr v6, v10
  .line 20
    invoke-virtual { p0, v9, v6 }, Ljava/util/Calendar;->set(II)V
    const/4 p1, 5
  .line 21
    invoke-virtual { p0, p1, v5 }, Ljava/util/Calendar;->set(II)V
    const/16 p1, 11
  .line 22
    invoke-virtual { p0, p1, v4 }, Ljava/util/Calendar;->set(II)V
    const/16 p1, 12
  .line 23
    invoke-virtual { p0, p1, v7 }, Ljava/util/Calendar;->set(II)V
    const/16 p1, 13
  .line 24
    invoke-virtual { p0, p1, v8 }, Ljava/util/Calendar;->set(II)V
    const/16 p1, 14
  .line 25
    invoke-virtual { p0, p1, v0 }, Ljava/util/Calendar;->set(II)V
  .line 26
    invoke-virtual { p0 }, Ljava/util/Calendar;->getTimeInMillis()J
    move-result-wide p0
    return-wide p0
  :L8
  .line 27
    new-instance p0, Ljava/lang/IllegalArgumentException;
    invoke-direct { p0 }, Ljava/lang/IllegalArgumentException;-><init>()V
    throw p0
  :L9
  .line 28
    new-instance p0, Ljava/lang/IllegalArgumentException;
    invoke-direct { p0 }, Ljava/lang/IllegalArgumentException;-><init>()V
    throw p0
  :L10
  .line 29
    new-instance p0, Ljava/lang/IllegalArgumentException;
    invoke-direct { p0 }, Ljava/lang/IllegalArgumentException;-><init>()V
    throw p0
  :L11
  .line 30
    new-instance p0, Ljava/lang/IllegalArgumentException;
    invoke-direct { p0 }, Ljava/lang/IllegalArgumentException;-><init>()V
    throw p0
  :L12
  .line 31
    new-instance p0, Ljava/lang/IllegalArgumentException;
    invoke-direct { p0 }, Ljava/lang/IllegalArgumentException;-><init>()V
    throw p0
  :L13
  .line 32
    new-instance p0, Ljava/lang/IllegalArgumentException;
    invoke-direct { p0 }, Ljava/lang/IllegalArgumentException;-><init>()V
    goto :L15
  :L14
    throw p0
  :L15
    goto :L14
.end method

.method private static parseMaxAge(Ljava/lang/String;)J
  .catch Ljava/lang/NumberFormatException; { :L0 .. :L1 } :L4
  .registers 7
    const-wide/high16 v0, -32768
  :L0
  .line 1
    invoke-static { p0 }, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    move-result-wide v2
  :L1
    const-wide/16 v4, 0
    cmp-long p0, v2, v4
    if-gtz p0, :L2
    goto :L3
  :L2
    move-wide v0, v2
  :L3
    return-wide v0
  :L4
    move-exception v2
    const-string v3, "-?\\d+"
  .line 2
    invoke-virtual { p0, v3 }, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    move-result v3
    if-eqz v3, :L7
    const-string v2, "-"
  .line 3
    invoke-virtual { p0, v2 }, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result p0
    if-eqz p0, :L5
    goto :L6
  :L5
    const-wide v0, 9223372036854775807L
  :L6
    return-wide v0
  :L7
  .line 4
    throw v2
.end method

.method private static pathMatch(Lokhttp3/HttpUrl;Ljava/lang/String;)Z
  .registers 4
  .line 1
    invoke-virtual { p0 }, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;
    move-result-object p0
  .line 2
    invoke-virtual { p0, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    const/4 v1, 1
    if-eqz v0, :L0
    return v1
  :L0
  .line 3
    invoke-virtual { p0, p1 }, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :L2
    const-string v0, "/"
  .line 4
    invoke-virtual { p1, v0 }, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :L1
    return v1
  :L1
  .line 5
    invoke-virtual { p1 }, Ljava/lang/String;->length()I
    move-result p1
    invoke-virtual { p0, p1 }, Ljava/lang/String;->charAt(I)C
    move-result p0
    const/16 p1, 47
    if-ne p0, p1, :L2
    return v1
  :L2
    const/4 p0, 0
    return p0
.end method

.method public domain()Ljava/lang/String;
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
  .parameter # Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
  .end parameter
  .registers 8
  .line 1
    instance-of v0, p1, Lokhttp3/Cookie;
    const/4 v1, 0
    if-nez v0, :L0
    return v1
  :L0
  .line 2
    check-cast p1, Lokhttp3/Cookie;
  .line 3
    iget-object v0, p1, Lokhttp3/Cookie;->name:Ljava/lang/String;
    iget-object v2, p0, Lokhttp3/Cookie;->name:Ljava/lang/String;
    invoke-virtual { v0, v2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L1
    iget-object v0, p1, Lokhttp3/Cookie;->value:Ljava/lang/String;
    iget-object v2, p0, Lokhttp3/Cookie;->value:Ljava/lang/String;
  .line 4
    invoke-virtual { v0, v2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L1
    iget-object v0, p1, Lokhttp3/Cookie;->domain:Ljava/lang/String;
    iget-object v2, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;
  .line 5
    invoke-virtual { v0, v2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L1
    iget-object v0, p1, Lokhttp3/Cookie;->path:Ljava/lang/String;
    iget-object v2, p0, Lokhttp3/Cookie;->path:Ljava/lang/String;
  .line 6
    invoke-virtual { v0, v2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L1
    iget-wide v2, p1, Lokhttp3/Cookie;->expiresAt:J
    iget-wide v4, p0, Lokhttp3/Cookie;->expiresAt:J
    cmp-long v0, v2, v4
    if-nez v0, :L1
    iget-boolean v0, p1, Lokhttp3/Cookie;->secure:Z
    iget-boolean v2, p0, Lokhttp3/Cookie;->secure:Z
    if-ne v0, v2, :L1
    iget-boolean v0, p1, Lokhttp3/Cookie;->httpOnly:Z
    iget-boolean v2, p0, Lokhttp3/Cookie;->httpOnly:Z
    if-ne v0, v2, :L1
    iget-boolean v0, p1, Lokhttp3/Cookie;->persistent:Z
    iget-boolean v2, p0, Lokhttp3/Cookie;->persistent:Z
    if-ne v0, v2, :L1
    iget-boolean p1, p1, Lokhttp3/Cookie;->hostOnly:Z
    iget-boolean v0, p0, Lokhttp3/Cookie;->hostOnly:Z
    if-ne p1, v0, :L1
    const/4 v1, 1
  :L1
    return v1
.end method

.method public expiresAt()J
  .registers 3
  .line 1
    iget-wide v0, p0, Lokhttp3/Cookie;->expiresAt:J
    return-wide v0
.end method

.method public hashCode()I
  .registers 7
  .line 1
    iget-object v0, p0, Lokhttp3/Cookie;->name:Ljava/lang/String;
    invoke-virtual { v0 }, Ljava/lang/String;->hashCode()I
    move-result v0
    const/16 v1, 527
    add-int/2addr v1, v0
    mul-int/lit8 v1, v1, 31
  .line 2
    iget-object v0, p0, Lokhttp3/Cookie;->value:Ljava/lang/String;
    invoke-virtual { v0 }, Ljava/lang/String;->hashCode()I
    move-result v0
    add-int/2addr v1, v0
    mul-int/lit8 v1, v1, 31
  .line 3
    iget-object v0, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;
    invoke-virtual { v0 }, Ljava/lang/String;->hashCode()I
    move-result v0
    add-int/2addr v1, v0
    mul-int/lit8 v1, v1, 31
  .line 4
    iget-object v0, p0, Lokhttp3/Cookie;->path:Ljava/lang/String;
    invoke-virtual { v0 }, Ljava/lang/String;->hashCode()I
    move-result v0
    add-int/2addr v1, v0
    mul-int/lit8 v1, v1, 31
  .line 5
    iget-wide v2, p0, Lokhttp3/Cookie;->expiresAt:J
    const/16 v0, 32
    ushr-long v4, v2, v0
    xor-long/2addr v2, v4
    long-to-int v0, v2
    add-int/2addr v1, v0
    mul-int/lit8 v1, v1, 31
  .line 6
    iget-boolean v0, p0, Lokhttp3/Cookie;->secure:Z
    xor-int/lit8 v0, v0, 1
    add-int/2addr v1, v0
    mul-int/lit8 v1, v1, 31
  .line 7
    iget-boolean v0, p0, Lokhttp3/Cookie;->httpOnly:Z
    xor-int/lit8 v0, v0, 1
    add-int/2addr v1, v0
    mul-int/lit8 v1, v1, 31
  .line 8
    iget-boolean v0, p0, Lokhttp3/Cookie;->persistent:Z
    xor-int/lit8 v0, v0, 1
    add-int/2addr v1, v0
    mul-int/lit8 v1, v1, 31
  .line 9
    iget-boolean v0, p0, Lokhttp3/Cookie;->hostOnly:Z
    xor-int/lit8 v0, v0, 1
    add-int/2addr v1, v0
    return v1
.end method

.method public hostOnly()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Lokhttp3/Cookie;->hostOnly:Z
    return v0
.end method

.method public httpOnly()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Lokhttp3/Cookie;->httpOnly:Z
    return v0
.end method

.method public matches(Lokhttp3/HttpUrl;)Z
  .registers 4
  .line 1
    iget-boolean v0, p0, Lokhttp3/Cookie;->hostOnly:Z
    if-eqz v0, :L0
  .line 2
    invoke-virtual { p1 }, Lokhttp3/HttpUrl;->host()Ljava/lang/String;
    move-result-object v0
    iget-object v1, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    goto :L1
  :L0
  .line 3
    invoke-virtual { p1 }, Lokhttp3/HttpUrl;->host()Ljava/lang/String;
    move-result-object v0
    iget-object v1, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;
    invoke-static { v0, v1 }, Lokhttp3/Cookie;->domainMatch(Ljava/lang/String;Ljava/lang/String;)Z
    move-result v0
  :L1
    const/4 v1, 0
    if-nez v0, :L2
    return v1
  :L2
  .line 4
    iget-object v0, p0, Lokhttp3/Cookie;->path:Ljava/lang/String;
    invoke-static { p1, v0 }, Lokhttp3/Cookie;->pathMatch(Lokhttp3/HttpUrl;Ljava/lang/String;)Z
    move-result v0
    if-nez v0, :L3
    return v1
  :L3
  .line 5
    iget-boolean v0, p0, Lokhttp3/Cookie;->secure:Z
    if-eqz v0, :L4
    invoke-virtual { p1 }, Lokhttp3/HttpUrl;->isHttps()Z
    move-result p1
    if-nez p1, :L4
    return v1
  :L4
    const/4 p1, 1
    return p1
.end method

.method public name()Ljava/lang/String;
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/Cookie;->name:Ljava/lang/String;
    return-object v0
.end method

.method public path()Ljava/lang/String;
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/Cookie;->path:Ljava/lang/String;
    return-object v0
.end method

.method public persistent()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Lokhttp3/Cookie;->persistent:Z
    return v0
.end method

.method public secure()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Lokhttp3/Cookie;->secure:Z
    return v0
.end method

.method public toString()Ljava/lang/String;
  .registers 2
    const/4 v0, 0
  .line 1
    invoke-virtual { p0, v0 }, Lokhttp3/Cookie;->toString(Z)Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method toString(Z)Ljava/lang/String;
  .registers 8
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
  .line 3
    iget-object v1, p0, Lokhttp3/Cookie;->name:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const/16 v1, 61
  .line 4
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
  .line 5
    iget-object v1, p0, Lokhttp3/Cookie;->value:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 6
    iget-boolean v1, p0, Lokhttp3/Cookie;->persistent:Z
    if-eqz v1, :L1
  .line 7
    iget-wide v1, p0, Lokhttp3/Cookie;->expiresAt:J
    const-wide/high16 v3, -32768
    cmp-long v5, v1, v3
    if-nez v5, :L0
    const-string v1, "; max-age=0"
  .line 8
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    goto :L1
  :L0
    const-string v1, "; expires="
  .line 9
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/Date;
    iget-wide v2, p0, Lokhttp3/Cookie;->expiresAt:J
    invoke-direct { v1, v2, v3 }, Ljava/util/Date;-><init>(J)V
    invoke-static { v1 }, Lokhttp3/internal/http/HttpDate;->format(Ljava/util/Date;)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L1
  .line 10
    iget-boolean v1, p0, Lokhttp3/Cookie;->hostOnly:Z
    if-nez v1, :L3
    const-string v1, "; domain="
  .line 11
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    if-eqz p1, :L2
    const-string p1, "."
  .line 12
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L2
  .line 13
    iget-object p1, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L3
    const-string p1, "; path="
  .line 14
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object p1, p0, Lokhttp3/Cookie;->path:Ljava/lang/String;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 15
    iget-boolean p1, p0, Lokhttp3/Cookie;->secure:Z
    if-eqz p1, :L4
    const-string p1, "; secure"
  .line 16
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L4
  .line 17
    iget-boolean p1, p0, Lokhttp3/Cookie;->httpOnly:Z
    if-eqz p1, :L5
    const-string p1, "; httponly"
  .line 18
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L5
  .line 19
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    return-object p1
.end method

.method public value()Ljava/lang/String;
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/Cookie;->value:Ljava/lang/String;
    return-object v0
.end method
