.class public final Lokhttp3/HttpUrl$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lokhttp3/HttpUrl;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 25
  name = "Builder"
.end annotation

.field final static INVALID_HOST:Ljava/lang/String; = "Invalid URL host"

.field encodedFragment:Ljava/lang/String;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
.end field

.field encodedPassword:Ljava/lang/String;

.field final encodedPathSegments:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List<",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
.end field

.field encodedQueryNamesAndValues:Ljava/util/List;
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

.field encodedUsername:Ljava/lang/String;

.field host:Ljava/lang/String;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
.end field

.field port:I

.field scheme:Ljava/lang/String;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
.end field

.method public constructor <init>()V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const-string v0, ""
  .line 2
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;
  .line 3
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;
    const/4 v1, -1
  .line 4
    iput v1, p0, Lokhttp3/HttpUrl$Builder;->port:I
  .line 5
    new-instance v1, Ljava/util/ArrayList;
    invoke-direct { v1 }, Ljava/util/ArrayList;-><init>()V
    iput-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;
  .line 6
    invoke-interface { v1, v0 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    return-void
.end method

.method private addPathSegments(Ljava/lang/String;Z)Lokhttp3/HttpUrl$Builder;
  .registers 11
    const/4 v0, 0
    const/4 v3, 0
  :L0
  .line 3
    invoke-virtual { p1 }, Ljava/lang/String;->length()I
    move-result v1
    const-string v2, "/\\"
    invoke-static { p1, v3, v1, v2 }, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I
    move-result v7
  .line 4
    invoke-virtual { p1 }, Ljava/lang/String;->length()I
    move-result v1
    if-ge v7, v1, :L1
    const/4 v1, 1
    const/4 v5, 1
    goto :L2
  :L1
    const/4 v5, 0
  :L2
    move-object v1, p0
    move-object v2, p1
    move v4, v7
    move v6, p2
  .line 5
    invoke-direct/range { v1 .. v6 }, Lokhttp3/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V
    add-int/lit8 v3, v7, 1
  .line 6
    invoke-virtual { p1 }, Ljava/lang/String;->length()I
    move-result v1
    if-le v3, v1, :L0
    return-object p0
.end method

.method private static canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;
  .registers 4
    const/4 v0, 0
  .line 1
    invoke-static { p0, p1, p2, v0 }, Lokhttp3/HttpUrl;->percentDecode(Ljava/lang/String;IIZ)Ljava/lang/String;
    move-result-object p0
  .line 2
    invoke-static { p0 }, Lokhttp3/internal/Util;->canonicalizeHost(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p0
    return-object p0
.end method

.method private isDot(Ljava/lang/String;)Z
  .registers 3
    const-string v0, "."
  .line 1
    invoke-virtual { p1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L1
    const-string v0, "%2e"
    invoke-virtual { p1, v0 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result p1
    if-eqz p1, :L0
    goto :L1
  :L0
    const/4 p1, 0
    goto :L2
  :L1
    const/4 p1, 1
  :L2
    return p1
.end method

.method private isDotDot(Ljava/lang/String;)Z
  .registers 3
    const-string v0, ".."
  .line 1
    invoke-virtual { p1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L1
    const-string v0, "%2e."
  .line 2
    invoke-virtual { p1, v0 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v0
    if-nez v0, :L1
    const-string v0, ".%2e"
  .line 3
    invoke-virtual { p1, v0 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v0
    if-nez v0, :L1
    const-string v0, "%2e%2e"
  .line 4
    invoke-virtual { p1, v0 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result p1
    if-eqz p1, :L0
    goto :L1
  :L0
    const/4 p1, 0
    goto :L2
  :L1
    const/4 p1, 1
  :L2
    return p1
.end method

.method private static parsePort(Ljava/lang/String;II)I
  .catch Ljava/lang/NumberFormatException; { :L0 .. :L1 } :L2
  .registers 13
    const/4 v0, -1
  :L0
    const-string v4, ""
    const/4 v5, 0
    const/4 v6, 0
    const/4 v7, 0
    const/4 v8, 1
    const/4 v9, 0
    move-object v1, p0
    move v2, p1
    move v3, p2
  .line 1
    invoke-static/range { v1 .. v9 }, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;
    move-result-object p0
  .line 2
    invoke-static { p0 }, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result p0
  :L1
    if-lez p0, :L2
    const p1, 65535
    if-gt p0, p1, :L2
    return p0
  :L2
    return v0
.end method

.method private pop()V
  .registers 4
  .line 1
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->size()I
    move-result v1
    add-int/lit8 v1, v1, -1
    invoke-interface { v0, v1 }, Ljava/util/List;->remove(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/String;
  .line 2
    invoke-virtual { v0 }, Ljava/lang/String;->isEmpty()Z
    move-result v0
    const-string v1, ""
    if-eqz v0, :L0
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->isEmpty()Z
    move-result v0
    if-nez v0, :L0
  .line 3
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->size()I
    move-result v2
    add-int/lit8 v2, v2, -1
    invoke-interface { v0, v2, v1 }, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    goto :L1
  :L0
  .line 4
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;
    invoke-interface { v0, v1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  :L1
    return-void
.end method

.method private static portColonOffset(Ljava/lang/String;II)I
  .registers 5
  :L0
    if-ge p1, p2, :L4
  .line 1
    invoke-virtual { p0, p1 }, Ljava/lang/String;->charAt(I)C
    move-result v0
    const/16 v1, 58
    if-eq v0, v1, :L3
    const/16 v1, 91
    if-eq v0, v1, :L1
    goto :L2
  :L1
    add-int/lit8 p1, p1, 1
    if-ge p1, p2, :L2
  .line 2
    invoke-virtual { p0, p1 }, Ljava/lang/String;->charAt(I)C
    move-result v0
    const/16 v1, 93
    if-ne v0, v1, :L1
  :L2
    add-int/lit8 p1, p1, 1
    goto :L0
  :L3
    return p1
  :L4
    return p2
.end method

.method private push(Ljava/lang/String;IIZZ)V
  .registers 15
    const-string v3, " \"<>^`{}|/\\?#"
    const/4 v5, 0
    const/4 v6, 0
    const/4 v7, 1
    const/4 v8, 0
    move-object v0, p1
    move v1, p2
    move v2, p3
    move v4, p5
  .line 1
    invoke-static/range { v0 .. v8 }, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;
    move-result-object p1
  .line 2
    invoke-direct { p0, p1 }, Lokhttp3/HttpUrl$Builder;->isDot(Ljava/lang/String;)Z
    move-result p2
    if-eqz p2, :L0
    return-void
  :L0
  .line 3
    invoke-direct { p0, p1 }, Lokhttp3/HttpUrl$Builder;->isDotDot(Ljava/lang/String;)Z
    move-result p2
    if-eqz p2, :L1
  .line 4
    invoke-direct { p0 }, Lokhttp3/HttpUrl$Builder;->pop()V
    return-void
  :L1
  .line 5
    iget-object p2, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;
    invoke-interface { p2 }, Ljava/util/List;->size()I
    move-result p3
    add-int/lit8 p3, p3, -1
    invoke-interface { p2, p3 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object p2
    check-cast p2, Ljava/lang/String;
    invoke-virtual { p2 }, Ljava/lang/String;->isEmpty()Z
    move-result p2
    if-eqz p2, :L2
  .line 6
    iget-object p2, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;
    invoke-interface { p2 }, Ljava/util/List;->size()I
    move-result p3
    add-int/lit8 p3, p3, -1
    invoke-interface { p2, p3, p1 }, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    goto :L3
  :L2
  .line 7
    iget-object p2, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;
    invoke-interface { p2, p1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  :L3
    if-eqz p4, :L4
  .line 8
    iget-object p1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;
    const-string p2, ""
    invoke-interface { p1, p2 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  :L4
    return-void
.end method

.method private removeAllCanonicalQueryParameters(Ljava/lang/String;)V
  .registers 5
  .line 1
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->size()I
    move-result v0
    add-int/lit8 v0, v0, -2
  :L0
    if-ltz v0, :L2
  .line 2
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;
    invoke-interface { v1, v0 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v1
    invoke-virtual { p1, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L1
  .line 3
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;
    add-int/lit8 v2, v0, 1
    invoke-interface { v1, v2 }, Ljava/util/List;->remove(I)Ljava/lang/Object;
  .line 4
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;
    invoke-interface { v1, v0 }, Ljava/util/List;->remove(I)Ljava/lang/Object;
  .line 5
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;
    invoke-interface { v1 }, Ljava/util/List;->isEmpty()Z
    move-result v1
    if-eqz v1, :L1
    const/4 p1, 0
  .line 6
    iput-object p1, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;
    return-void
  :L1
    add-int/lit8 v0, v0, -2
    goto :L0
  :L2
    return-void
.end method

.method private resolvePath(Ljava/lang/String;II)V
  .registers 14
    if-ne p2, p3, :L0
    return-void
  :L0
  .line 1
    invoke-virtual { p1, p2 }, Ljava/lang/String;->charAt(I)C
    move-result v0
    const/16 v1, 47
    const-string v2, ""
    const/4 v3, 1
    if-eq v0, v1, :L2
    const/16 v1, 92
    if-ne v0, v1, :L1
    goto :L2
  :L1
  .line 2
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->size()I
    move-result v1
    sub-int/2addr v1, v3
    invoke-interface { v0, v1, v2 }, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    goto :L3
  :L2
  .line 3
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->clear()V
  .line 4
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;
    invoke-interface { v0, v2 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    goto :L6
  :L3
    move v6, p2
    if-ge v6, p3, :L7
    const-string p2, "/\\"
  .line 5
    invoke-static { p1, v6, p3, p2 }, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I
    move-result p2
    if-ge p2, p3, :L4
    const/4 v0, 1
    goto :L5
  :L4
    const/4 v0, 0
  :L5
    const/4 v9, 1
    move-object v4, p0
    move-object v5, p1
    move v7, p2
    move v8, v0
  .line 6
    invoke-direct/range { v4 .. v9 }, Lokhttp3/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V
    if-eqz v0, :L3
  :L6
    add-int/lit8 p2, p2, 1
    goto :L3
  :L7
    return-void
.end method

.method private static schemeDelimiterOffset(Ljava/lang/String;II)I
  .registers 10
    sub-int v0, p2, p1
    const/4 v1, -1
    const/4 v2, 2
    if-ge v0, v2, :L0
    return v1
  :L0
  .line 1
    invoke-virtual { p0, p1 }, Ljava/lang/String;->charAt(I)C
    move-result v0
    const/16 v2, 90
    const/16 v3, 122
    const/16 v4, 65
    const/16 v5, 97
    if-lt v0, v5, :L1
    if-le v0, v3, :L2
  :L1
    if-lt v0, v4, :L7
    if-le v0, v2, :L2
    goto :L7
  :L2
    add-int/lit8 p1, p1, 1
    if-ge p1, p2, :L7
  .line 2
    invoke-virtual { p0, p1 }, Ljava/lang/String;->charAt(I)C
    move-result v0
    if-lt v0, v5, :L3
    if-le v0, v3, :L2
  :L3
    if-lt v0, v4, :L4
    if-le v0, v2, :L2
  :L4
    const/16 v6, 48
    if-lt v0, v6, :L5
    const/16 v6, 57
    if-le v0, v6, :L2
  :L5
    const/16 v6, 43
    if-eq v0, v6, :L2
    const/16 v6, 45
    if-eq v0, v6, :L2
    const/16 v6, 46
    if-ne v0, v6, :L6
    goto :L2
  :L6
    const/16 p0, 58
    if-ne v0, p0, :L7
    return p1
  :L7
    return v1
.end method

.method private static slashCount(Ljava/lang/String;II)I
  .registers 6
    const/4 v0, 0
  :L0
    if-ge p1, p2, :L2
  .line 1
    invoke-virtual { p0, p1 }, Ljava/lang/String;->charAt(I)C
    move-result v1
    const/16 v2, 92
    if-eq v1, v2, :L1
    const/16 v2, 47
    if-ne v1, v2, :L2
  :L1
    add-int/lit8 v0, v0, 1
    add-int/lit8 p1, p1, 1
    goto :L0
  :L2
    return v0
.end method

.method public addEncodedPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
  .registers 8
    if-eqz p1, :L0
    const/4 v2, 0
  .line 1
    invoke-virtual { p1 }, Ljava/lang/String;->length()I
    move-result v3
    const/4 v4, 0
    const/4 v5, 1
    move-object v0, p0
    move-object v1, p1
    invoke-direct/range { v0 .. v5 }, Lokhttp3/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V
    return-object p0
  :L0
  .line 2
    new-instance p1, Ljava/lang/NullPointerException;
    const-string v0, "encodedPathSegment == null"
    invoke-direct { p1, v0 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public addEncodedPathSegments(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
  .registers 3
    if-eqz p1, :L0
    const/4 v0, 1
  .line 1
    invoke-direct { p0, p1, v0 }, Lokhttp3/HttpUrl$Builder;->addPathSegments(Ljava/lang/String;Z)Lokhttp3/HttpUrl$Builder;
    move-result-object p1
    return-object p1
  :L0
  .line 2
    new-instance p1, Ljava/lang/NullPointerException;
    const-string v0, "encodedPathSegments == null"
    invoke-direct { p1, v0 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public addEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
  .parameter # Ljava/lang/String;
  .parameter # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
  .end parameter
  .registers 10
    if-eqz p1, :L3
  .line 1
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;
    if-nez v0, :L0
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;
  :L0
  .line 2
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;
    const/4 v3, 1
    const/4 v4, 0
    const/4 v5, 1
    const/4 v6, 1
    const-string v2, " \"'<>#&="
    move-object v1, p1
  .line 3
    invoke-static/range { v1 .. v6 }, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;
    move-result-object p1
  .line 4
    invoke-interface { v0, p1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 5
    iget-object p1, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;
    if-eqz p2, :L1
    const/4 v2, 1
    const/4 v3, 0
    const/4 v4, 1
    const/4 v5, 1
    const-string v1, " \"'<>#&="
    move-object v0, p2
  .line 6
    invoke-static/range { v0 .. v5 }, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;
    move-result-object p2
    goto :L2
  :L1
    const/4 p2, 0
  :L2
  .line 7
    invoke-interface { p1, p2 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    return-object p0
  :L3
  .line 8
    new-instance p1, Ljava/lang/NullPointerException;
    const-string p2, "encodedName == null"
    invoke-direct { p1, p2 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
  .registers 8
    if-eqz p1, :L0
    const/4 v2, 0
  .line 1
    invoke-virtual { p1 }, Ljava/lang/String;->length()I
    move-result v3
    const/4 v4, 0
    const/4 v5, 0
    move-object v0, p0
    move-object v1, p1
    invoke-direct/range { v0 .. v5 }, Lokhttp3/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V
    return-object p0
  :L0
  .line 2
    new-instance p1, Ljava/lang/NullPointerException;
    const-string v0, "pathSegment == null"
    invoke-direct { p1, v0 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public addPathSegments(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
  .registers 3
    if-eqz p1, :L0
    const/4 v0, 0
  .line 1
    invoke-direct { p0, p1, v0 }, Lokhttp3/HttpUrl$Builder;->addPathSegments(Ljava/lang/String;Z)Lokhttp3/HttpUrl$Builder;
    move-result-object p1
    return-object p1
  :L0
  .line 2
    new-instance p1, Ljava/lang/NullPointerException;
    const-string v0, "pathSegments == null"
    invoke-direct { p1, v0 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
  .parameter # Ljava/lang/String;
  .parameter # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
  .end parameter
  .registers 10
    if-eqz p1, :L3
  .line 1
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;
    if-nez v0, :L0
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;
  :L0
  .line 2
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;
    const/4 v3, 0
    const/4 v4, 0
    const/4 v5, 1
    const/4 v6, 1
    const-string v2, " !\"#$&'(),/:;<=>?@[]\\^`{|}~"
    move-object v1, p1
  .line 3
    invoke-static/range { v1 .. v6 }, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;
    move-result-object p1
  .line 4
    invoke-interface { v0, p1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 5
    iget-object p1, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;
    if-eqz p2, :L1
    const/4 v2, 0
    const/4 v3, 0
    const/4 v4, 1
    const/4 v5, 1
    const-string v1, " !\"#$&'(),/:;<=>?@[]\\^`{|}~"
    move-object v0, p2
  .line 6
    invoke-static/range { v0 .. v5 }, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;
    move-result-object p2
    goto :L2
  :L1
    const/4 p2, 0
  :L2
  .line 7
    invoke-interface { p1, p2 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    return-object p0
  :L3
  .line 8
    new-instance p1, Ljava/lang/NullPointerException;
    const-string p2, "name == null"
    invoke-direct { p1, p2 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public build()Lokhttp3/HttpUrl;
  .registers 3
  .line 1
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;
    if-eqz v0, :L1
  .line 2
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;
    if-eqz v0, :L0
  .line 3
    new-instance v0, Lokhttp3/HttpUrl;
    invoke-direct { v0, p0 }, Lokhttp3/HttpUrl;-><init>(Lokhttp3/HttpUrl$Builder;)V
    return-object v0
  :L0
  .line 4
    new-instance v0, Ljava/lang/IllegalStateException;
    const-string v1, "host == null"
    invoke-direct { v0, v1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
  :L1
  .line 5
    new-instance v0, Ljava/lang/IllegalStateException;
    const-string v1, "scheme == null"
    invoke-direct { v0, v1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method effectivePort()I
  .registers 3
  .line 1
    iget v0, p0, Lokhttp3/HttpUrl$Builder;->port:I
    const/4 v1, -1
    if-eq v0, v1, :L0
    goto :L1
  :L0
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;
    invoke-static { v0 }, Lokhttp3/HttpUrl;->defaultPort(Ljava/lang/String;)I
    move-result v0
  :L1
    return v0
.end method

.method public encodedFragment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
  .parameter # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
  .end parameter
  .registers 8
    if-eqz p1, :L0
    const/4 v2, 1
    const/4 v3, 0
    const/4 v4, 0
    const/4 v5, 0
    const-string v1, ""
    move-object v0, p1
  .line 1
    invoke-static/range { v0 .. v5 }, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;
    move-result-object p1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
  .line 2
    iput-object p1, p0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;
    return-object p0
.end method

.method public encodedPassword(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
  .registers 8
    if-eqz p1, :L0
    const/4 v2, 1
    const/4 v3, 0
    const/4 v4, 0
    const/4 v5, 1
    const-string v1, " \"':;<=>@[]^`{}|/\\?#"
    move-object v0, p1
  .line 1
    invoke-static/range { v0 .. v5 }, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;
    move-result-object p1
    iput-object p1, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;
    return-object p0
  :L0
  .line 2
    new-instance p1, Ljava/lang/NullPointerException;
    const-string v0, "encodedPassword == null"
    invoke-direct { p1, v0 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public encodedPath(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
  .registers 5
    if-eqz p1, :L1
    const-string v0, "/"
  .line 1
    invoke-virtual { p1, v0 }, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :L0
    const/4 v0, 0
  .line 2
    invoke-virtual { p1 }, Ljava/lang/String;->length()I
    move-result v1
    invoke-direct { p0, p1, v0, v1 }, Lokhttp3/HttpUrl$Builder;->resolvePath(Ljava/lang/String;II)V
    return-object p0
  :L0
  .line 3
    new-instance v0, Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "unexpected encodedPath: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
  :L1
  .line 4
    new-instance p1, Ljava/lang/NullPointerException;
    const-string v0, "encodedPath == null"
    invoke-direct { p1, v0 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public encodedQuery(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
  .parameter # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
  .end parameter
  .registers 8
    if-eqz p1, :L0
    const/4 v2, 1
    const/4 v3, 0
    const/4 v4, 1
    const/4 v5, 1
    const-string v1, " \"'<>#"
    move-object v0, p1
  .line 1
    invoke-static/range { v0 .. v5 }, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;
    move-result-object p1
  .line 2
    invoke-static { p1 }, Lokhttp3/HttpUrl;->queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;
    move-result-object p1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
  .line 3
    iput-object p1, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;
    return-object p0
.end method

.method public encodedUsername(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
  .registers 8
    if-eqz p1, :L0
    const/4 v2, 1
    const/4 v3, 0
    const/4 v4, 0
    const/4 v5, 1
    const-string v1, " \"':;<=>@[]^`{}|/\\?#"
    move-object v0, p1
  .line 1
    invoke-static/range { v0 .. v5 }, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;
    move-result-object p1
    iput-object p1, p0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;
    return-object p0
  :L0
  .line 2
    new-instance p1, Ljava/lang/NullPointerException;
    const-string v0, "encodedUsername == null"
    invoke-direct { p1, v0 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public fragment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
  .parameter # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
  .end parameter
  .registers 8
    if-eqz p1, :L0
    const/4 v2, 0
    const/4 v3, 0
    const/4 v4, 0
    const/4 v5, 0
    const-string v1, ""
    move-object v0, p1
  .line 1
    invoke-static/range { v0 .. v5 }, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;
    move-result-object p1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
  .line 2
    iput-object p1, p0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;
    return-object p0
.end method

.method public host(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
  .registers 5
    if-eqz p1, :L1
    const/4 v0, 0
  .line 1
    invoke-virtual { p1 }, Ljava/lang/String;->length()I
    move-result v1
    invoke-static { p1, v0, v1 }, Lokhttp3/HttpUrl$Builder;->canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;
    move-result-object v0
    if-eqz v0, :L0
  .line 2
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;
    return-object p0
  :L0
  .line 3
    new-instance v0, Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "unexpected host: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
  :L1
  .line 4
    new-instance p1, Ljava/lang/NullPointerException;
    const-string v0, "host == null"
    invoke-direct { p1, v0 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method parse(Lokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
  .parameter # Lokhttp3/HttpUrl;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
  .end parameter
  .registers 24
    move-object/from16 v0, p0
    move-object/from16 v1, p1
    move-object/from16 v10, p2
  .line 1
    invoke-virtual/range { p2 .. p2 }, Ljava/lang/String;->length()I
    move-result v2
    const/4 v8, 0
    invoke-static { v10, v8, v2 }, Lokhttp3/internal/Util;->skipLeadingAsciiWhitespace(Ljava/lang/String;II)I
    move-result v9
  .line 2
    invoke-virtual/range { p2 .. p2 }, Ljava/lang/String;->length()I
    move-result v2
    invoke-static { v10, v9, v2 }, Lokhttp3/internal/Util;->skipTrailingAsciiWhitespace(Ljava/lang/String;II)I
    move-result v11
  .line 3
    invoke-static { v10, v9, v11 }, Lokhttp3/HttpUrl$Builder;->schemeDelimiterOffset(Ljava/lang/String;II)I
    move-result v12
    const/4 v13, -1
    if-eq v12, v13, :L2
    const/4 v3, 1
    const/4 v6, 0
    const/4 v7, 6
    const-string v5, "https:"
    move-object/from16 v2, p2
    move v4, v9
  .line 4
    invoke-virtual/range { v2 .. v7 }, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z
    move-result v2
    if-eqz v2, :L0
    const-string v2, "https"
  .line 5
    iput-object v2, v0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;
    add-int/lit8 v9, v9, 6
    goto :L3
  :L0
    const/4 v3, 1
    const/4 v6, 0
    const/4 v7, 5
    const-string v5, "http:"
    move-object/from16 v2, p2
    move v4, v9
  .line 6
    invoke-virtual/range { v2 .. v7 }, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z
    move-result v2
    if-eqz v2, :L1
    const-string v2, "http"
  .line 7
    iput-object v2, v0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;
    add-int/lit8 v9, v9, 5
    goto :L3
  :L1
  .line 8
    new-instance v1, Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "Expected URL scheme 'http' or 'https' but was '"
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 9
    invoke-virtual { v10, v8, v12 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v3, "'"
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-direct { v1, v2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v1
  :L2
    if-eqz v1, :L24
  .line 10
    iget-object v2, v1, Lokhttp3/HttpUrl;->scheme:Ljava/lang/String;
    iput-object v2, v0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;
  :L3
  .line 11
    invoke-static { v10, v9, v11 }, Lokhttp3/HttpUrl$Builder;->slashCount(Ljava/lang/String;II)I
    move-result v2
    const/4 v3, 2
    const/16 v12, 63
    const/16 v14, 35
    if-ge v2, v3, :L6
    if-eqz v1, :L6
  .line 12
    iget-object v3, v1, Lokhttp3/HttpUrl;->scheme:Ljava/lang/String;
    iget-object v4, v0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;
    invoke-virtual { v3, v4 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-nez v3, :L4
    goto :L6
  :L4
  .line 13
    invoke-virtual/range { p1 .. p1 }, Lokhttp3/HttpUrl;->encodedUsername()Ljava/lang/String;
    move-result-object v2
    iput-object v2, v0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;
  .line 14
    invoke-virtual/range { p1 .. p1 }, Lokhttp3/HttpUrl;->encodedPassword()Ljava/lang/String;
    move-result-object v2
    iput-object v2, v0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;
  .line 15
    iget-object v2, v1, Lokhttp3/HttpUrl;->host:Ljava/lang/String;
    iput-object v2, v0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;
  .line 16
    iget v2, v1, Lokhttp3/HttpUrl;->port:I
    iput v2, v0, Lokhttp3/HttpUrl$Builder;->port:I
  .line 17
    iget-object v2, v0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;
    invoke-interface { v2 }, Ljava/util/List;->clear()V
  .line 18
    iget-object v2, v0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;
    invoke-virtual/range { p1 .. p1 }, Lokhttp3/HttpUrl;->encodedPathSegments()Ljava/util/List;
    move-result-object v3
    invoke-interface { v2, v3 }, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    if-eq v9, v11, :L5
  .line 19
    invoke-virtual { v10, v9 }, Ljava/lang/String;->charAt(I)C
    move-result v2
    if-ne v2, v14, :L20
  :L5
  .line 20
    invoke-virtual/range { p1 .. p1 }, Lokhttp3/HttpUrl;->encodedQuery()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Lokhttp3/HttpUrl$Builder;->encodedQuery(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    goto/16 :L20
  :L6
    add-int/2addr v9, v2
    move v2, v9
    const/16 v16, 0
    const/16 v17, 0
  :L7
    const-string v1, "@/\\?#"
  .line 21
    invoke-static { v10, v2, v11, v1 }, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I
    move-result v9
    if-eq v9, v11, :L8
  .line 22
    invoke-virtual { v10, v9 }, Ljava/lang/String;->charAt(I)C
    move-result v1
    goto :L9
  :L8
    const/4 v1, -1
  :L9
    if-eq v1, v13, :L16
    if-eq v1, v14, :L16
    const/16 v3, 47
    if-eq v1, v3, :L16
    const/16 v3, 92
    if-eq v1, v3, :L16
    if-eq v1, v12, :L16
    const/16 v3, 64
    if-eq v1, v3, :L10
    goto/16 :L15
  :L10
    const-string v8, "%40"
    if-nez v16, :L13
    const/16 v1, 58
  .line 23
    invoke-static { v10, v2, v9, v1 }, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I
    move-result v7
    const/4 v5, 1
    const/4 v6, 0
    const/16 v18, 0
    const/16 v19, 1
    const/16 v20, 0
    const-string v4, " \"':;<=>@[]^`{}|/\\?#"
    move-object/from16 v1, p2
    move v3, v7
    move v15, v7
    move/from16 v7, v18
    move-object v14, v8
    move/from16 v8, v19
    move v12, v9
    move-object/from16 v9, v20
  .line 24
    invoke-static/range { v1 .. v9 }, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;
    move-result-object v1
    if-eqz v17, :L11
  .line 25
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    iget-object v3, v0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v14 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
  :L11
  .line 26
    iput-object v1, v0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;
    if-eq v15, v12, :L12
    add-int/lit8 v2, v15, 1
    const/4 v5, 1
    const/4 v6, 0
    const/4 v7, 0
    const/4 v8, 1
    const/4 v9, 0
    const-string v4, " \"':;<=>@[]^`{}|/\\?#"
    move-object/from16 v1, p2
    move v3, v12
  .line 27
    invoke-static/range { v1 .. v9 }, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;
    move-result-object v1
    iput-object v1, v0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;
    const/16 v16, 1
  :L12
    const/16 v17, 1
    goto :L14
  :L13
    move-object v14, v8
    move v12, v9
  .line 28
    new-instance v15, Ljava/lang/StringBuilder;
    invoke-direct { v15 }, Ljava/lang/StringBuilder;-><init>()V
    iget-object v1, v0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;
    invoke-virtual { v15, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v15, v14 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const/4 v5, 1
    const/4 v6, 0
    const/4 v7, 0
    const/4 v8, 1
    const/4 v9, 0
    const-string v4, " \"':;<=>@[]^`{}|/\\?#"
    move-object/from16 v1, p2
    move v3, v12
    invoke-static/range { v1 .. v9 }, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v15, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v15 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    iput-object v1, v0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;
  :L14
    add-int/lit8 v2, v12, 1
  :L15
    const/16 v12, 63
    const/16 v14, 35
    goto/16 :L7
  :L16
    move v12, v9
  .line 29
    invoke-static { v10, v2, v12 }, Lokhttp3/HttpUrl$Builder;->portColonOffset(Ljava/lang/String;II)I
    move-result v1
    add-int/lit8 v3, v1, 1
    const/16 v4, 34
    if-ge v3, v12, :L18
  .line 30
    invoke-static { v10, v2, v1 }, Lokhttp3/HttpUrl$Builder;->canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;
    move-result-object v5
    iput-object v5, v0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;
  .line 31
    invoke-static { v10, v3, v12 }, Lokhttp3/HttpUrl$Builder;->parsePort(Ljava/lang/String;II)I
    move-result v5
    iput v5, v0, Lokhttp3/HttpUrl$Builder;->port:I
    if-eq v5, v13, :L17
    goto :L19
  :L17
  .line 32
    new-instance v1, Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "Invalid URL port: \""
    invoke-virtual { v2, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 33
    invoke-virtual { v10, v3, v12 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v4 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-direct { v1, v2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v1
  :L18
  .line 34
    invoke-static { v10, v2, v1 }, Lokhttp3/HttpUrl$Builder;->canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;
    move-result-object v3
    iput-object v3, v0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;
  .line 35
    iget-object v3, v0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;
    invoke-static { v3 }, Lokhttp3/HttpUrl;->defaultPort(Ljava/lang/String;)I
    move-result v3
    iput v3, v0, Lokhttp3/HttpUrl$Builder;->port:I
  :L19
  .line 36
    iget-object v3, v0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;
    if-eqz v3, :L23
    move v9, v12
  :L20
    const-string v1, "?#"
  .line 37
    invoke-static { v10, v9, v11, v1 }, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I
    move-result v1
  .line 38
    invoke-direct { v0, v10, v9, v1 }, Lokhttp3/HttpUrl$Builder;->resolvePath(Ljava/lang/String;II)V
    if-ge v1, v11, :L21
  .line 39
    invoke-virtual { v10, v1 }, Ljava/lang/String;->charAt(I)C
    move-result v2
    const/16 v3, 63
    if-ne v2, v3, :L21
    const/16 v2, 35
  .line 40
    invoke-static { v10, v1, v11, v2 }, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I
    move-result v12
    add-int/lit8 v2, v1, 1
    const/4 v5, 1
    const/4 v6, 0
    const/4 v7, 1
    const/4 v8, 1
    const/4 v9, 0
    const-string v4, " \"'<>#"
    move-object/from16 v1, p2
    move v3, v12
  .line 41
    invoke-static/range { v1 .. v9 }, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lokhttp3/HttpUrl;->queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;
    move-result-object v1
    iput-object v1, v0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;
    move v1, v12
  :L21
    if-ge v1, v11, :L22
  .line 42
    invoke-virtual { v10, v1 }, Ljava/lang/String;->charAt(I)C
    move-result v2
    const/16 v3, 35
    if-ne v2, v3, :L22
    const/4 v2, 1
    add-int/2addr v2, v1
    const/4 v5, 1
    const/4 v6, 0
    const/4 v7, 0
    const/4 v8, 0
    const/4 v9, 0
    const-string v4, ""
    move-object/from16 v1, p2
    move v3, v11
  .line 43
    invoke-static/range { v1 .. v9 }, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;
    move-result-object v1
    iput-object v1, v0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;
  :L22
    return-object v0
  :L23
  .line 44
    new-instance v3, Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct { v5 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v6, "Invalid URL host: \""
    invoke-virtual { v5, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 45
    invoke-virtual { v10, v2, v1 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v5, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v5, v4 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    invoke-virtual { v5 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v3, v1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v3
  :L24
  .line 46
    new-instance v1, Ljava/lang/IllegalArgumentException;
    const-string v2, "Expected URL scheme 'http' or 'https' but no colon was found"
    invoke-direct { v1, v2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    goto :L26
  :L25
    throw v1
  :L26
    goto :L25
.end method

.method public password(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
  .registers 8
    if-eqz p1, :L0
    const/4 v2, 0
    const/4 v3, 0
    const/4 v4, 0
    const/4 v5, 1
    const-string v1, " \"':;<=>@[]^`{}|/\\?#"
    move-object v0, p1
  .line 1
    invoke-static/range { v0 .. v5 }, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;
    move-result-object p1
    iput-object p1, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;
    return-object p0
  :L0
  .line 2
    new-instance p1, Ljava/lang/NullPointerException;
    const-string v0, "password == null"
    invoke-direct { p1, v0 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public port(I)Lokhttp3/HttpUrl$Builder;
  .registers 5
    if-lez p1, :L0
    const v0, 65535
    if-gt p1, v0, :L0
  .line 1
    iput p1, p0, Lokhttp3/HttpUrl$Builder;->port:I
    return-object p0
  :L0
  .line 2
    new-instance v0, Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "unexpected port: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public query(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
  .parameter # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
  .end parameter
  .registers 8
    if-eqz p1, :L0
    const/4 v2, 0
    const/4 v3, 0
    const/4 v4, 1
    const/4 v5, 1
    const-string v1, " \"'<>#"
    move-object v0, p1
  .line 1
    invoke-static/range { v0 .. v5 }, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lokhttp3/HttpUrl;->queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;
    move-result-object p1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
  .line 2
    iput-object p1, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;
    return-object p0
.end method

.method reencodeForUri()Lokhttp3/HttpUrl$Builder;
  .registers 11
  .line 1
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->size()I
    move-result v0
    const/4 v1, 0
    const/4 v2, 0
  :L0
    if-ge v2, v0, :L1
  .line 2
    iget-object v3, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;
    invoke-interface { v3, v2 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v3
    move-object v4, v3
    check-cast v4, Ljava/lang/String;
  .line 3
    iget-object v3, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;
    const/4 v6, 1
    const/4 v7, 1
    const/4 v8, 0
    const/4 v9, 1
    const-string v5, "[]"
  .line 4
    invoke-static/range { v4 .. v9 }, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;
    move-result-object v4
  .line 5
    invoke-interface { v3, v2, v4 }, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    add-int/lit8 v2, v2, 1
    goto :L0
  :L1
  .line 6
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;
    if-eqz v0, :L4
  .line 7
    invoke-interface { v0 }, Ljava/util/List;->size()I
    move-result v0
  :L2
    if-ge v1, v0, :L4
  .line 8
    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;
    invoke-interface { v2, v1 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v2
    move-object v3, v2
    check-cast v3, Ljava/lang/String;
    if-eqz v3, :L3
  .line 9
    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;
    const/4 v5, 1
    const/4 v6, 1
    const/4 v7, 1
    const/4 v8, 1
    const-string v4, "\\^`{|}"
  .line 10
    invoke-static/range { v3 .. v8 }, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;
    move-result-object v3
  .line 11
    invoke-interface { v2, v1, v3 }, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
  :L3
    add-int/lit8 v1, v1, 1
    goto :L2
  :L4
  .line 12
    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;
    if-eqz v2, :L5
    const/4 v4, 1
    const/4 v5, 1
    const/4 v6, 0
    const/4 v7, 0
    const-string v3, " \"#<>\\^`{|}"
  .line 13
    invoke-static/range { v2 .. v7 }, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;
    move-result-object v0
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;
  :L5
    return-object p0
.end method

.method public removeAllEncodedQueryParameters(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
  .registers 9
    if-eqz p1, :L1
  .line 1
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;
    if-nez v0, :L0
    return-object p0
  :L0
    const/4 v3, 1
    const/4 v4, 0
    const/4 v5, 1
    const/4 v6, 1
    const-string v2, " \"'<>#&="
    move-object v1, p1
  .line 2
    invoke-static/range { v1 .. v6 }, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;
    move-result-object p1
  .line 3
    invoke-direct { p0, p1 }, Lokhttp3/HttpUrl$Builder;->removeAllCanonicalQueryParameters(Ljava/lang/String;)V
    return-object p0
  :L1
  .line 4
    new-instance p1, Ljava/lang/NullPointerException;
    const-string v0, "encodedName == null"
    invoke-direct { p1, v0 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public removeAllQueryParameters(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
  .registers 9
    if-eqz p1, :L1
  .line 1
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;
    if-nez v0, :L0
    return-object p0
  :L0
    const/4 v3, 0
    const/4 v4, 0
    const/4 v5, 1
    const/4 v6, 1
    const-string v2, " !\"#$&'(),/:;<=>?@[]\\^`{|}~"
    move-object v1, p1
  .line 2
    invoke-static/range { v1 .. v6 }, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;
    move-result-object p1
  .line 3
    invoke-direct { p0, p1 }, Lokhttp3/HttpUrl$Builder;->removeAllCanonicalQueryParameters(Ljava/lang/String;)V
    return-object p0
  :L1
  .line 4
    new-instance p1, Ljava/lang/NullPointerException;
    const-string v0, "name == null"
    invoke-direct { p1, v0 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public removePathSegment(I)Lokhttp3/HttpUrl$Builder;
  .registers 3
  .line 1
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;
    invoke-interface { v0, p1 }, Ljava/util/List;->remove(I)Ljava/lang/Object;
  .line 2
    iget-object p1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;
    invoke-interface { p1 }, Ljava/util/List;->isEmpty()Z
    move-result p1
    if-eqz p1, :L0
  .line 3
    iget-object p1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;
    const-string v0, ""
    invoke-interface { p1, v0 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  :L0
    return-object p0
.end method

.method public scheme(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
  .registers 5
    if-eqz p1, :L3
    const-string v0, "http"
  .line 1
    invoke-virtual { p1, v0 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :L0
  .line 2
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;
    goto :L1
  :L0
    const-string v0, "https"
  .line 3
    invoke-virtual { p1, v0 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :L2
  .line 4
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;
  :L1
    return-object p0
  :L2
  .line 5
    new-instance v0, Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "unexpected scheme: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
  :L3
  .line 6
    new-instance p1, Ljava/lang/NullPointerException;
    const-string v0, "scheme == null"
    invoke-direct { p1, v0 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public setEncodedPathSegment(ILjava/lang/String;)Lokhttp3/HttpUrl$Builder;
  .registers 12
    if-eqz p2, :L1
    const/4 v1, 0
  .line 1
    invoke-virtual { p2 }, Ljava/lang/String;->length()I
    move-result v2
    const/4 v4, 1
    const/4 v5, 0
    const/4 v6, 0
    const/4 v7, 1
    const/4 v8, 0
    const-string v3, " \"<>^`{}|/\\?#"
    move-object v0, p2
  .line 2
    invoke-static/range { v0 .. v8 }, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;
    move-result-object v0
  .line 3
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;
    invoke-interface { v1, p1, v0 }, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
  .line 4
    invoke-direct { p0, v0 }, Lokhttp3/HttpUrl$Builder;->isDot(Ljava/lang/String;)Z
    move-result p1
    if-nez p1, :L0
    invoke-direct { p0, v0 }, Lokhttp3/HttpUrl$Builder;->isDotDot(Ljava/lang/String;)Z
    move-result p1
    if-nez p1, :L0
    return-object p0
  :L0
  .line 5
    new-instance p1, Ljava/lang/IllegalArgumentException;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "unexpected path segment: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
  :L1
  .line 6
    new-instance p1, Ljava/lang/NullPointerException;
    const-string p2, "encodedPathSegment == null"
    invoke-direct { p1, p2 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public setEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
  .parameter # Ljava/lang/String;
  .parameter # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
  .end parameter
  .registers 3
  .line 1
    invoke-virtual { p0, p1 }, Lokhttp3/HttpUrl$Builder;->removeAllEncodedQueryParameters(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
  .line 2
    invoke-virtual { p0, p1, p2 }, Lokhttp3/HttpUrl$Builder;->addEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    return-object p0
.end method

.method public setPathSegment(ILjava/lang/String;)Lokhttp3/HttpUrl$Builder;
  .registers 12
    if-eqz p2, :L1
    const/4 v1, 0
  .line 1
    invoke-virtual { p2 }, Ljava/lang/String;->length()I
    move-result v2
    const/4 v4, 0
    const/4 v5, 0
    const/4 v6, 0
    const/4 v7, 1
    const/4 v8, 0
    const-string v3, " \"<>^`{}|/\\?#"
    move-object v0, p2
  .line 2
    invoke-static/range { v0 .. v8 }, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;
    move-result-object v0
  .line 3
    invoke-direct { p0, v0 }, Lokhttp3/HttpUrl$Builder;->isDot(Ljava/lang/String;)Z
    move-result v1
    if-nez v1, :L0
    invoke-direct { p0, v0 }, Lokhttp3/HttpUrl$Builder;->isDotDot(Ljava/lang/String;)Z
    move-result v1
    if-nez v1, :L0
  .line 4
    iget-object p2, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;
    invoke-interface { p2, p1, v0 }, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    return-object p0
  :L0
  .line 5
    new-instance p1, Ljava/lang/IllegalArgumentException;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "unexpected path segment: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
  :L1
  .line 6
    new-instance p1, Ljava/lang/NullPointerException;
    const-string p2, "pathSegment == null"
    invoke-direct { p1, p2 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public setQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
  .parameter # Ljava/lang/String;
  .parameter # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
  .end parameter
  .registers 3
  .line 1
    invoke-virtual { p0, p1 }, Lokhttp3/HttpUrl$Builder;->removeAllQueryParameters(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
  .line 2
    invoke-virtual { p0, p1, p2 }, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    return-object p0
.end method

.method public toString()Ljava/lang/String;
  .registers 5
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
  .line 2
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;
    if-eqz v1, :L0
  .line 3
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, "://"
  .line 4
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    goto :L1
  :L0
    const-string v1, "//"
  .line 5
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L1
  .line 6
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;
    invoke-virtual { v1 }, Ljava/lang/String;->isEmpty()Z
    move-result v1
    const/16 v2, 58
    if-eqz v1, :L2
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;
    invoke-virtual { v1 }, Ljava/lang/String;->isEmpty()Z
    move-result v1
    if-nez v1, :L4
  :L2
  .line 7
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 8
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;
    invoke-virtual { v1 }, Ljava/lang/String;->isEmpty()Z
    move-result v1
    if-nez v1, :L3
  .line 9
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
  .line 10
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L3
    const/16 v1, 64
  .line 11
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
  :L4
  .line 12
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;
    const/4 v3, -1
    if-eqz v1, :L6
  .line 13
    invoke-virtual { v1, v2 }, Ljava/lang/String;->indexOf(I)I
    move-result v1
    if-eq v1, v3, :L5
    const/16 v1, 91
  .line 14
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
  .line 15
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const/16 v1, 93
  .line 16
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    goto :L6
  :L5
  .line 17
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L6
  .line 18
    iget v1, p0, Lokhttp3/HttpUrl$Builder;->port:I
    if-ne v1, v3, :L7
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;
    if-eqz v1, :L9
  :L7
  .line 19
    invoke-virtual { p0 }, Lokhttp3/HttpUrl$Builder;->effectivePort()I
    move-result v1
  .line 20
    iget-object v3, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;
    if-eqz v3, :L8
    invoke-static { v3 }, Lokhttp3/HttpUrl;->defaultPort(Ljava/lang/String;)I
    move-result v3
    if-eq v1, v3, :L9
  :L8
  .line 21
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
  .line 22
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
  :L9
  .line 23
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;
    invoke-static { v0, v1 }, Lokhttp3/HttpUrl;->pathSegmentsToString(Ljava/lang/StringBuilder;Ljava/util/List;)V
  .line 24
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;
    if-eqz v1, :L10
    const/16 v1, 63
  .line 25
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
  .line 26
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;
    invoke-static { v0, v1 }, Lokhttp3/HttpUrl;->namesAndValuesToQueryString(Ljava/lang/StringBuilder;Ljava/util/List;)V
  :L10
  .line 27
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;
    if-eqz v1, :L11
    const/16 v1, 35
  .line 28
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
  .line 29
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L11
  .line 30
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public username(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
  .registers 8
    if-eqz p1, :L0
    const/4 v2, 0
    const/4 v3, 0
    const/4 v4, 0
    const/4 v5, 1
    const-string v1, " \"':;<=>@[]^`{}|/\\?#"
    move-object v0, p1
  .line 1
    invoke-static/range { v0 .. v5 }, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;
    move-result-object p1
    iput-object p1, p0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;
    return-object p0
  :L0
  .line 2
    new-instance p1, Ljava/lang/NullPointerException;
    const-string v0, "username == null"
    invoke-direct { p1, v0 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p1
.end method
