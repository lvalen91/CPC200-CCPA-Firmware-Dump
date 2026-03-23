.class public final Lokhttp3/internal/tls/OkHostnameVerifier;
.super Ljava/lang/Object;
.implements Ljavax/net/ssl/HostnameVerifier;
.source "SourceFile"

.field private final static ALT_DNS_NAME:I = 2

.field private final static ALT_IPA_NAME:I = 7

.field public final static INSTANCE:Lokhttp3/internal/tls/OkHostnameVerifier;

.method static constructor <clinit>()V
  .registers 1
  .line 1
    new-instance v0, Lokhttp3/internal/tls/OkHostnameVerifier;
    invoke-direct { v0 }, Lokhttp3/internal/tls/OkHostnameVerifier;-><init>()V
    sput-object v0, Lokhttp3/internal/tls/OkHostnameVerifier;->INSTANCE:Lokhttp3/internal/tls/OkHostnameVerifier;
    return-void
.end method

.method private constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static allSubjectAltNames(Ljava/security/cert/X509Certificate;)Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/security/cert/X509Certificate;",
      ")",
      "Ljava/util/List<",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
  .registers 5
    const/4 v0, 7
  .line 1
    invoke-static { p0, v0 }, Lokhttp3/internal/tls/OkHostnameVerifier;->getSubjectAltNames(Ljava/security/cert/X509Certificate;I)Ljava/util/List;
    move-result-object v0
    const/4 v1, 2
  .line 2
    invoke-static { p0, v1 }, Lokhttp3/internal/tls/OkHostnameVerifier;->getSubjectAltNames(Ljava/security/cert/X509Certificate;I)Ljava/util/List;
    move-result-object p0
  .line 3
    new-instance v1, Ljava/util/ArrayList;
    invoke-interface { v0 }, Ljava/util/List;->size()I
    move-result v2
    invoke-interface { p0 }, Ljava/util/List;->size()I
    move-result v3
    add-int/2addr v2, v3
    invoke-direct { v1, v2 }, Ljava/util/ArrayList;-><init>(I)V
  .line 4
    invoke-interface { v1, v0 }, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
  .line 5
    invoke-interface { v1, p0 }, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    return-object v1
.end method

.method private static getSubjectAltNames(Ljava/security/cert/X509Certificate;I)Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/security/cert/X509Certificate;",
      "I)",
      "Ljava/util/List<",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
  .catch Ljava/security/cert/CertificateParsingException; { :L0 .. :L5 } :L7
  .registers 6
  .line 1
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
  :L0
  .line 2
    invoke-virtual { p0 }, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;
    move-result-object p0
    if-nez p0, :L1
  .line 3
    invoke-static { }, Ljava/util/Collections;->emptyList()Ljava/util/List;
    move-result-object p0
    return-object p0
  :L1
  .line 4
    invoke-interface { p0 }, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    move-result-object p0
  :L2
    invoke-interface { p0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L6
    invoke-interface { p0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
  .line 5
    check-cast v1, Ljava/util/List;
    if-eqz v1, :L2
  .line 6
    invoke-interface { v1 }, Ljava/util/List;->size()I
    move-result v2
    const/4 v3, 2
    if-ge v2, v3, :L3
    goto :L2
  :L3
    const/4 v2, 0
  .line 7
    invoke-interface { v1, v2 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/Integer;
    if-nez v2, :L4
    goto :L2
  :L4
  .line 8
    invoke-virtual { v2 }, Ljava/lang/Integer;->intValue()I
    move-result v2
    if-ne v2, p1, :L2
    const/4 v2, 1
  .line 9
    invoke-interface { v1, v2 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/String;
    if-eqz v1, :L2
  .line 10
    invoke-interface { v0, v1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  :L5
    goto :L2
  :L6
    return-object v0
  :L7
  .line 11
    invoke-static { }, Ljava/util/Collections;->emptyList()Ljava/util/List;
    move-result-object p0
    return-object p0
.end method

.method private verifyHostname(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
  .registers 4
  .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;
    invoke-virtual { p1, v0 }, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
    move-result-object p1
    const/4 v0, 2
  .line 2
    invoke-static { p2, v0 }, Lokhttp3/internal/tls/OkHostnameVerifier;->getSubjectAltNames(Ljava/security/cert/X509Certificate;I)Ljava/util/List;
    move-result-object p2
  .line 3
    invoke-interface { p2 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object p2
  :L0
    invoke-interface { p2 }, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :L1
    invoke-interface { p2 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/String;
  .line 4
    invoke-virtual { p0, p1, v0 }, Lokhttp3/internal/tls/OkHostnameVerifier;->verifyHostname(Ljava/lang/String;Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :L0
    const/4 p1, 1
    return p1
  :L1
    const/4 p1, 0
    return p1
.end method

.method private verifyIpAddress(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
  .registers 7
    const/4 v0, 7
  .line 1
    invoke-static { p2, v0 }, Lokhttp3/internal/tls/OkHostnameVerifier;->getSubjectAltNames(Ljava/security/cert/X509Certificate;I)Ljava/util/List;
    move-result-object p2
  .line 2
    invoke-interface { p2 }, Ljava/util/List;->size()I
    move-result v0
    const/4 v1, 0
    const/4 v2, 0
  :L0
    if-ge v2, v0, :L2
  .line 3
    invoke-interface { p2, v2 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/lang/String;
    invoke-virtual { p1, v3 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v3
    if-eqz v3, :L1
    const/4 p1, 1
    return p1
  :L1
    add-int/lit8 v2, v2, 1
    goto :L0
  :L2
    return v1
.end method

.method public verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
  .registers 4
  .line 3
    invoke-static { p1 }, Lokhttp3/internal/Util;->verifyAsIpAddress(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :L0
  .line 4
    invoke-direct { p0, p1, p2 }, Lokhttp3/internal/tls/OkHostnameVerifier;->verifyIpAddress(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
    move-result p1
    goto :L1
  :L0
  .line 5
    invoke-direct { p0, p1, p2 }, Lokhttp3/internal/tls/OkHostnameVerifier;->verifyHostname(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
    move-result p1
  :L1
    return p1
.end method

.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
  .catch Ljavax/net/ssl/SSLException; { :L0 .. :L1 } :L2
  .registers 4
    const/4 v0, 0
  :L0
  .line 1
    invoke-interface { p2 }, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;
    move-result-object p2
  .line 2
    aget-object p2, p2, v0
    check-cast p2, Ljava/security/cert/X509Certificate;
    invoke-virtual { p0, p1, p2 }, Lokhttp3/internal/tls/OkHostnameVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
    move-result p1
  :L1
    return p1
  :L2
    return v0
.end method

.method public verifyHostname(Ljava/lang/String;Ljava/lang/String;)Z
  .registers 10
    const/4 v0, 0
    if-eqz p1, :L10
  .line 5
    invoke-virtual { p1 }, Ljava/lang/String;->length()I
    move-result v1
    if-eqz v1, :L10
    const-string v1, "."
    invoke-virtual { p1, v1 }, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v2
    if-nez v2, :L10
    const-string v2, ".."
  .line 6
    invoke-virtual { p1, v2 }, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v3
    if-eqz v3, :L0
    goto/16 :L10
  :L0
    if-eqz p2, :L10
  .line 7
    invoke-virtual { p2 }, Ljava/lang/String;->length()I
    move-result v3
    if-eqz v3, :L10
    invoke-virtual { p2, v1 }, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v3
    if-nez v3, :L10
  .line 8
    invoke-virtual { p2, v2 }, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v2
    if-eqz v2, :L1
    goto/16 :L10
  :L1
  .line 9
    invoke-virtual { p1, v1 }, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v2
    const/16 v3, 46
    if-nez v2, :L2
  .line 10
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
  :L2
  .line 11
    invoke-virtual { p2, v1 }, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v1
    if-nez v1, :L3
  .line 12
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v3 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
  :L3
  .line 13
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;
    invoke-virtual { p2, v1 }, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
    move-result-object p2
    const-string v1, "*"
  .line 14
    invoke-virtual { p2, v1 }, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v1
    if-nez v1, :L4
  .line 15
    invoke-virtual { p1, p2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p1
    return p1
  :L4
    const-string v1, "*."
  .line 16
    invoke-virtual { p2, v1 }, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v2
    if-eqz v2, :L10
    const/16 v2, 42
    const/4 v4, 1
    invoke-virtual { p2, v2, v4 }, Ljava/lang/String;->indexOf(II)I
    move-result v2
    const/4 v5, -1
    if-eq v2, v5, :L5
    goto :L10
  :L5
  .line 17
    invoke-virtual { p1 }, Ljava/lang/String;->length()I
    move-result v2
    invoke-virtual { p2 }, Ljava/lang/String;->length()I
    move-result v6
    if-ge v2, v6, :L6
    return v0
  :L6
  .line 18
    invoke-virtual { v1, p2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L7
    return v0
  :L7
  .line 19
    invoke-virtual { p2, v4 }, Ljava/lang/String;->substring(I)Ljava/lang/String;
    move-result-object p2
  .line 20
    invoke-virtual { p1, p2 }, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v1
    if-nez v1, :L8
    return v0
  :L8
  .line 21
    invoke-virtual { p1 }, Ljava/lang/String;->length()I
    move-result v1
    invoke-virtual { p2 }, Ljava/lang/String;->length()I
    move-result p2
    sub-int/2addr v1, p2
    if-lez v1, :L9
    sub-int/2addr v1, v4
  .line 22
    invoke-virtual { p1, v3, v1 }, Ljava/lang/String;->lastIndexOf(II)I
    move-result p1
    if-eq p1, v5, :L9
    return v0
  :L9
    return v4
  :L10
    return v0
.end method
