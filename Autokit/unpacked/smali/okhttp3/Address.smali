.class public final Lokhttp3/Address;
.super Ljava/lang/Object;
.source "SourceFile"

.field final certificatePinner:Lokhttp3/CertificatePinner;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
.end field

.field final connectionSpecs:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List<",
      "Lokhttp3/ConnectionSpec;",
      ">;"
    }
  .end annotation
.end field

.field final dns:Lokhttp3/Dns;

.field final hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
.end field

.field final protocols:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List<",
      "Lokhttp3/Protocol;",
      ">;"
    }
  .end annotation
.end field

.field final proxy:Ljava/net/Proxy;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
.end field

.field final proxyAuthenticator:Lokhttp3/Authenticator;

.field final proxySelector:Ljava/net/ProxySelector;

.field final socketFactory:Ljavax/net/SocketFactory;

.field final sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
.end field

.field final url:Lokhttp3/HttpUrl;

.method public constructor <init>(Ljava/lang/String;ILokhttp3/Dns;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lokhttp3/CertificatePinner;Lokhttp3/Authenticator;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/String;",
      "I",
      "Lokhttp3/Dns;",
      "Ljavax/net/SocketFactory;",
      "Ljavax/net/ssl/SSLSocketFactory;",
      "Ljavax/net/ssl/HostnameVerifier;",
      "Lokhttp3/CertificatePinner;",
      "Lokhttp3/Authenticator;",
      "Ljava/net/Proxy;",
      "Ljava/util/List<",
      "Lokhttp3/Protocol;",
      ">;",
      "Ljava/util/List<",
      "Lokhttp3/ConnectionSpec;",
      ">;",
      "Ljava/net/ProxySelector;",
      ")V"
    }
  .end annotation
  .parameter # Ljava/lang/String;
  .parameter # I
  .parameter # Lokhttp3/Dns;
  .parameter # Ljavax/net/SocketFactory;
  .parameter # Ljavax/net/ssl/SSLSocketFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
  .end parameter
  .parameter # Ljavax/net/ssl/HostnameVerifier;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
  .end parameter
  .parameter # Lokhttp3/CertificatePinner;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
  .end parameter
  .parameter # Lokhttp3/Authenticator;
  .parameter # Ljava/net/Proxy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
  .end parameter
  .registers 15
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Lokhttp3/HttpUrl$Builder;
    invoke-direct { v0 }, Lokhttp3/HttpUrl$Builder;-><init>()V
    if-eqz p5, :L0
    const-string v1, "https"
    goto :L1
  :L0
    const-string v1, "http"
  :L1
  .line 3
    invoke-virtual { v0, v1 }, Lokhttp3/HttpUrl$Builder;->scheme(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    move-result-object v0
  .line 4
    invoke-virtual { v0, p1 }, Lokhttp3/HttpUrl$Builder;->host(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    move-result-object p1
  .line 5
    invoke-virtual { p1, p2 }, Lokhttp3/HttpUrl$Builder;->port(I)Lokhttp3/HttpUrl$Builder;
    move-result-object p1
  .line 6
    invoke-virtual { p1 }, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;
    move-result-object p1
    iput-object p1, p0, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;
    if-eqz p3, :L7
  .line 7
    iput-object p3, p0, Lokhttp3/Address;->dns:Lokhttp3/Dns;
    if-eqz p4, :L6
  .line 8
    iput-object p4, p0, Lokhttp3/Address;->socketFactory:Ljavax/net/SocketFactory;
    if-eqz p8, :L5
  .line 9
    iput-object p8, p0, Lokhttp3/Address;->proxyAuthenticator:Lokhttp3/Authenticator;
    if-eqz p10, :L4
  .line 10
    invoke-static { p10 }, Lokhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;
    move-result-object p1
    iput-object p1, p0, Lokhttp3/Address;->protocols:Ljava/util/List;
    if-eqz p11, :L3
  .line 11
    invoke-static { p11 }, Lokhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;
    move-result-object p1
    iput-object p1, p0, Lokhttp3/Address;->connectionSpecs:Ljava/util/List;
    if-eqz p12, :L2
  .line 12
    iput-object p12, p0, Lokhttp3/Address;->proxySelector:Ljava/net/ProxySelector;
  .line 13
    iput-object p9, p0, Lokhttp3/Address;->proxy:Ljava/net/Proxy;
  .line 14
    iput-object p5, p0, Lokhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
  .line 15
    iput-object p6, p0, Lokhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;
  .line 16
    iput-object p7, p0, Lokhttp3/Address;->certificatePinner:Lokhttp3/CertificatePinner;
    return-void
  :L2
  .line 17
    new-instance p1, Ljava/lang/NullPointerException;
    const-string p2, "proxySelector == null"
    invoke-direct { p1, p2 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p1
  :L3
  .line 18
    new-instance p1, Ljava/lang/NullPointerException;
    const-string p2, "connectionSpecs == null"
    invoke-direct { p1, p2 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p1
  :L4
  .line 19
    new-instance p1, Ljava/lang/NullPointerException;
    const-string p2, "protocols == null"
    invoke-direct { p1, p2 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p1
  :L5
  .line 20
    new-instance p1, Ljava/lang/NullPointerException;
    const-string p2, "proxyAuthenticator == null"
    invoke-direct { p1, p2 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p1
  :L6
  .line 21
    new-instance p1, Ljava/lang/NullPointerException;
    const-string p2, "socketFactory == null"
    invoke-direct { p1, p2 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p1
  :L7
  .line 22
    new-instance p1, Ljava/lang/NullPointerException;
    const-string p2, "dns == null"
    invoke-direct { p1, p2 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public certificatePinner()Lokhttp3/CertificatePinner;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/Address;->certificatePinner:Lokhttp3/CertificatePinner;
    return-object v0
.end method

.method public connectionSpecs()Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Ljava/util/List<",
      "Lokhttp3/ConnectionSpec;",
      ">;"
    }
  .end annotation
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/Address;->connectionSpecs:Ljava/util/List;
    return-object v0
.end method

.method public dns()Lokhttp3/Dns;
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/Address;->dns:Lokhttp3/Dns;
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
  .parameter # Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
  .end parameter
  .registers 4
  .line 1
    instance-of v0, p1, Lokhttp3/Address;
    if-eqz v0, :L0
    iget-object v0, p0, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;
    check-cast p1, Lokhttp3/Address;
    iget-object v1, p1, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;
  .line 2
    invoke-virtual { v0, v1 }, Lokhttp3/HttpUrl;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
  .line 3
    invoke-virtual { p0, p1 }, Lokhttp3/Address;->equalsNonHost(Lokhttp3/Address;)Z
    move-result p1
    if-eqz p1, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    return p1
.end method

.method equalsNonHost(Lokhttp3/Address;)Z
  .registers 4
  .line 1
    iget-object v0, p0, Lokhttp3/Address;->dns:Lokhttp3/Dns;
    iget-object v1, p1, Lokhttp3/Address;->dns:Lokhttp3/Dns;
    invoke-virtual { v0, v1 }, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
    iget-object v0, p0, Lokhttp3/Address;->proxyAuthenticator:Lokhttp3/Authenticator;
    iget-object v1, p1, Lokhttp3/Address;->proxyAuthenticator:Lokhttp3/Authenticator;
  .line 2
    invoke-virtual { v0, v1 }, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
    iget-object v0, p0, Lokhttp3/Address;->protocols:Ljava/util/List;
    iget-object v1, p1, Lokhttp3/Address;->protocols:Ljava/util/List;
  .line 3
    invoke-interface { v0, v1 }, Ljava/util/List;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
    iget-object v0, p0, Lokhttp3/Address;->connectionSpecs:Ljava/util/List;
    iget-object v1, p1, Lokhttp3/Address;->connectionSpecs:Ljava/util/List;
  .line 4
    invoke-interface { v0, v1 }, Ljava/util/List;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
    iget-object v0, p0, Lokhttp3/Address;->proxySelector:Ljava/net/ProxySelector;
    iget-object v1, p1, Lokhttp3/Address;->proxySelector:Ljava/net/ProxySelector;
  .line 5
    invoke-virtual { v0, v1 }, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
    iget-object v0, p0, Lokhttp3/Address;->proxy:Ljava/net/Proxy;
    iget-object v1, p1, Lokhttp3/Address;->proxy:Ljava/net/Proxy;
  .line 6
    invoke-static { v0, v1 }, Lokhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
    iget-object v0, p0, Lokhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    iget-object v1, p1, Lokhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
  .line 7
    invoke-static { v0, v1 }, Lokhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
    iget-object v0, p0, Lokhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;
    iget-object v1, p1, Lokhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;
  .line 8
    invoke-static { v0, v1 }, Lokhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
    iget-object v0, p0, Lokhttp3/Address;->certificatePinner:Lokhttp3/CertificatePinner;
    iget-object v1, p1, Lokhttp3/Address;->certificatePinner:Lokhttp3/CertificatePinner;
  .line 9
    invoke-static { v0, v1 }, Lokhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
  .line 10
    invoke-virtual { p0 }, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;
    move-result-object v0
    invoke-virtual { v0 }, Lokhttp3/HttpUrl;->port()I
    move-result v0
    invoke-virtual { p1 }, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;
    move-result-object p1
    invoke-virtual { p1 }, Lokhttp3/HttpUrl;->port()I
    move-result p1
    if-ne v0, p1, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    return p1
.end method

.method public hashCode()I
  .registers 4
  .line 1
    iget-object v0, p0, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;
    invoke-virtual { v0 }, Lokhttp3/HttpUrl;->hashCode()I
    move-result v0
    const/16 v1, 527
    add-int/2addr v1, v0
    mul-int/lit8 v1, v1, 31
  .line 2
    iget-object v0, p0, Lokhttp3/Address;->dns:Lokhttp3/Dns;
    invoke-virtual { v0 }, Ljava/lang/Object;->hashCode()I
    move-result v0
    add-int/2addr v1, v0
    mul-int/lit8 v1, v1, 31
  .line 3
    iget-object v0, p0, Lokhttp3/Address;->proxyAuthenticator:Lokhttp3/Authenticator;
    invoke-virtual { v0 }, Ljava/lang/Object;->hashCode()I
    move-result v0
    add-int/2addr v1, v0
    mul-int/lit8 v1, v1, 31
  .line 4
    iget-object v0, p0, Lokhttp3/Address;->protocols:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->hashCode()I
    move-result v0
    add-int/2addr v1, v0
    mul-int/lit8 v1, v1, 31
  .line 5
    iget-object v0, p0, Lokhttp3/Address;->connectionSpecs:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->hashCode()I
    move-result v0
    add-int/2addr v1, v0
    mul-int/lit8 v1, v1, 31
  .line 6
    iget-object v0, p0, Lokhttp3/Address;->proxySelector:Ljava/net/ProxySelector;
    invoke-virtual { v0 }, Ljava/lang/Object;->hashCode()I
    move-result v0
    add-int/2addr v1, v0
    mul-int/lit8 v1, v1, 31
  .line 7
    iget-object v0, p0, Lokhttp3/Address;->proxy:Ljava/net/Proxy;
    const/4 v2, 0
    if-eqz v0, :L0
    invoke-virtual { v0 }, Ljava/net/Proxy;->hashCode()I
    move-result v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    add-int/2addr v1, v0
    mul-int/lit8 v1, v1, 31
  .line 8
    iget-object v0, p0, Lokhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    if-eqz v0, :L2
    invoke-virtual { v0 }, Ljava/lang/Object;->hashCode()I
    move-result v0
    goto :L3
  :L2
    const/4 v0, 0
  :L3
    add-int/2addr v1, v0
    mul-int/lit8 v1, v1, 31
  .line 9
    iget-object v0, p0, Lokhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;
    if-eqz v0, :L4
    invoke-virtual { v0 }, Ljava/lang/Object;->hashCode()I
    move-result v0
    goto :L5
  :L4
    const/4 v0, 0
  :L5
    add-int/2addr v1, v0
    mul-int/lit8 v1, v1, 31
  .line 10
    iget-object v0, p0, Lokhttp3/Address;->certificatePinner:Lokhttp3/CertificatePinner;
    if-eqz v0, :L6
    invoke-virtual { v0 }, Lokhttp3/CertificatePinner;->hashCode()I
    move-result v2
  :L6
    add-int/2addr v1, v2
    return v1
.end method

.method public hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;
    return-object v0
.end method

.method public protocols()Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Ljava/util/List<",
      "Lokhttp3/Protocol;",
      ">;"
    }
  .end annotation
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/Address;->protocols:Ljava/util/List;
    return-object v0
.end method

.method public proxy()Ljava/net/Proxy;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/Address;->proxy:Ljava/net/Proxy;
    return-object v0
.end method

.method public proxyAuthenticator()Lokhttp3/Authenticator;
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/Address;->proxyAuthenticator:Lokhttp3/Authenticator;
    return-object v0
.end method

.method public proxySelector()Ljava/net/ProxySelector;
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/Address;->proxySelector:Ljava/net/ProxySelector;
    return-object v0
.end method

.method public socketFactory()Ljavax/net/SocketFactory;
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/Address;->socketFactory:Ljavax/net/SocketFactory;
    return-object v0
.end method

.method public sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
  .registers 3
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Address{"
  .line 2
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;
  .line 3
    invoke-virtual { v1 }, Lokhttp3/HttpUrl;->host()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, ":"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;
    invoke-virtual { v1 }, Lokhttp3/HttpUrl;->port()I
    move-result v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
  .line 4
    iget-object v1, p0, Lokhttp3/Address;->proxy:Ljava/net/Proxy;
    if-eqz v1, :L0
    const-string v1, ", proxy="
  .line 5
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lokhttp3/Address;->proxy:Ljava/net/Proxy;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    goto :L1
  :L0
    const-string v1, ", proxySelector="
  .line 6
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lokhttp3/Address;->proxySelector:Ljava/net/ProxySelector;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
  :L1
    const-string v1, "}"
  .line 7
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 8
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public url()Lokhttp3/HttpUrl;
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;
    return-object v0
.end method
