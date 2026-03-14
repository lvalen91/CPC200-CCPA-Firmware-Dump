.class public final Lokhttp3/internal/connection/RealConnection;
.super Lokhttp3/internal/http2/Http2Connection$Listener;
.implements Lokhttp3/Connection;
.source "SourceFile"

.field private final static MAX_TUNNEL_ATTEMPTS:I = 21

.field private final static NPE_THROW_WITH_NULL:Ljava/lang/String; = "throw with null exception"

.field public allocationLimit:I

.field public final allocations:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List<",
      "Ljava/lang/ref/Reference<",
      "Lokhttp3/internal/connection/StreamAllocation;",
      ">;>;"
    }
  .end annotation
.end field

.field private final connectionPool:Lokhttp3/ConnectionPool;

.field private handshake:Lokhttp3/Handshake;

.field private http2Connection:Lokhttp3/internal/http2/Http2Connection;

.field public idleAtNanos:J

.field public noNewStreams:Z

.field private protocol:Lokhttp3/Protocol;

.field private rawSocket:Ljava/net/Socket;

.field private final route:Lokhttp3/Route;

.field private sink:Lokio/BufferedSink;

.field private socket:Ljava/net/Socket;

.field private source:Lokio/BufferedSource;

.field public successCount:I

.method public constructor <init>(Lokhttp3/ConnectionPool;Lokhttp3/Route;)V
  .registers 5
  .line 1
    invoke-direct { p0 }, Lokhttp3/internal/http2/Http2Connection$Listener;-><init>()V
    const/4 v0, 1
  .line 2
    iput v0, p0, Lokhttp3/internal/connection/RealConnection;->allocationLimit:I
  .line 3
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;
    const-wide v0, 9223372036854775807L
  .line 4
    iput-wide v0, p0, Lokhttp3/internal/connection/RealConnection;->idleAtNanos:J
  .line 5
    iput-object p1, p0, Lokhttp3/internal/connection/RealConnection;->connectionPool:Lokhttp3/ConnectionPool;
  .line 6
    iput-object p2, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;
    return-void
.end method

.method private connectSocket(IILokhttp3/Call;Lokhttp3/EventListener;)V
  .catch Ljava/net/ConnectException; { :L3 .. :L4 } :L9
  .catch Ljava/lang/NullPointerException; { :L4 .. :L5 } :L6
  .registers 9
  .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;
    invoke-virtual { v0 }, Lokhttp3/Route;->proxy()Ljava/net/Proxy;
    move-result-object v0
  .line 2
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;
    invoke-virtual { v1 }, Lokhttp3/Route;->address()Lokhttp3/Address;
    move-result-object v1
  .line 3
    invoke-virtual { v0 }, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;
    move-result-object v2
    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;
    if-eq v2, v3, :L1
    invoke-virtual { v0 }, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;
    move-result-object v2
    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;
    if-ne v2, v3, :L0
    goto :L1
  :L0
  .line 4
    new-instance v1, Ljava/net/Socket;
    invoke-direct { v1, v0 }, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V
    goto :L2
  :L1
  .line 5
    invoke-virtual { v1 }, Lokhttp3/Address;->socketFactory()Ljavax/net/SocketFactory;
    move-result-object v1
    invoke-virtual { v1 }, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;
    move-result-object v1
  :L2
  .line 6
    iput-object v1, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;
  .line 7
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;
    invoke-virtual { v1 }, Lokhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;
    move-result-object v1
    invoke-virtual { p4, p3, v1, v0 }, Lokhttp3/EventListener;->connectStart(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V
  .line 8
    iget-object p3, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;
    invoke-virtual { p3, p2 }, Ljava/net/Socket;->setSoTimeout(I)V
  :L3
  .line 9
    invoke-static { }, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;
    move-result-object p2
    iget-object p3, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;
    iget-object p4, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;
    invoke-virtual { p4 }, Lokhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;
    move-result-object p4
    invoke-virtual { p2, p3, p4, p1 }, Lokhttp3/internal/platform/Platform;->connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
  :L4
  .line 10
    iget-object p1, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;
    invoke-static { p1 }, Lokio/Okio;->source(Ljava/net/Socket;)Lokio/Source;
    move-result-object p1
    invoke-static { p1 }, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;
    move-result-object p1
    iput-object p1, p0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/BufferedSource;
  .line 11
    iget-object p1, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;
    invoke-static { p1 }, Lokio/Okio;->sink(Ljava/net/Socket;)Lokio/Sink;
    move-result-object p1
    invoke-static { p1 }, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;
    move-result-object p1
    iput-object p1, p0, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/BufferedSink;
  :L5
    goto :L7
  :L6
    move-exception p1
  .line 12
    invoke-virtual { p1 }, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;
    move-result-object p2
    const-string p3, "throw with null exception"
    invoke-virtual { p3, p2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p2
    if-nez p2, :L8
  :L7
    return-void
  :L8
  .line 13
    new-instance p2, Ljava/io/IOException;
    invoke-direct { p2, p1 }, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V
    throw p2
  :L9
    move-exception p1
  .line 14
    new-instance p2, Ljava/net/ConnectException;
    new-instance p3, Ljava/lang/StringBuilder;
    invoke-direct { p3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p4, "Failed to connect to "
    invoke-virtual { p3, p4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object p4, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;
    invoke-virtual { p4 }, Lokhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;
    move-result-object p4
    invoke-virtual { p3, p4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { p3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p3
    invoke-direct { p2, p3 }, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V
  .line 15
    invoke-virtual { p2, p1 }, Ljava/net/ConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
  .line 16
    throw p2
.end method

.method private connectTls(Lokhttp3/internal/connection/ConnectionSpecSelector;)V
  .catch Ljava/lang/AssertionError; { :L0 .. :L1 } :L12
  .catchall { :L0 .. :L1 } :L11
  .catch Ljava/lang/AssertionError; { :L1 .. :L6 } :L10
  .catchall { :L1 .. :L6 } :L9
  .catch Ljava/lang/AssertionError; { :L8 .. :L9 } :L10
  .catchall { :L8 .. :L9 } :L9
  .catchall { :L13 .. :L15 } :L11
  .registers 9
  .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;
    invoke-virtual { v0 }, Lokhttp3/Route;->address()Lokhttp3/Address;
    move-result-object v0
  .line 2
    invoke-virtual { v0 }, Lokhttp3/Address;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    move-result-object v1
    const/4 v2, 0
  :L0
  .line 3
    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;
  .line 4
    invoke-virtual { v0 }, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;
    move-result-object v4
    invoke-virtual { v4 }, Lokhttp3/HttpUrl;->host()Ljava/lang/String;
    move-result-object v4
    invoke-virtual { v0 }, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;
    move-result-object v5
    invoke-virtual { v5 }, Lokhttp3/HttpUrl;->port()I
    move-result v5
    const/4 v6, 1
  .line 5
    invoke-virtual { v1, v3, v4, v5, v6 }, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    move-result-object v1
    check-cast v1, Ljavax/net/ssl/SSLSocket;
  :L1
  .line 6
    invoke-virtual { p1, v1 }, Lokhttp3/internal/connection/ConnectionSpecSelector;->configureSecureSocket(Ljavax/net/ssl/SSLSocket;)Lokhttp3/ConnectionSpec;
    move-result-object p1
  .line 7
    invoke-virtual { p1 }, Lokhttp3/ConnectionSpec;->supportsTlsExtensions()Z
    move-result v3
    if-eqz v3, :L2
  .line 8
    invoke-static { }, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;
    move-result-object v3
  .line 9
    invoke-virtual { v0 }, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;
    move-result-object v4
    invoke-virtual { v4 }, Lokhttp3/HttpUrl;->host()Ljava/lang/String;
    move-result-object v4
    invoke-virtual { v0 }, Lokhttp3/Address;->protocols()Ljava/util/List;
    move-result-object v5
  .line 10
    invoke-virtual { v3, v1, v4, v5 }, Lokhttp3/internal/platform/Platform;->configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
  :L2
  .line 11
    invoke-virtual { v1 }, Ljavax/net/ssl/SSLSocket;->startHandshake()V
  .line 12
    invoke-virtual { v1 }, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;
    move-result-object v3
  .line 13
    invoke-static { v3 }, Lokhttp3/Handshake;->get(Ljavax/net/ssl/SSLSession;)Lokhttp3/Handshake;
    move-result-object v4
  .line 14
    invoke-virtual { v0 }, Lokhttp3/Address;->hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    move-result-object v5
    invoke-virtual { v0 }, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;
    move-result-object v6
    invoke-virtual { v6 }, Lokhttp3/HttpUrl;->host()Ljava/lang/String;
    move-result-object v6
    invoke-interface { v5, v6, v3 }, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    move-result v3
    if-eqz v3, :L8
  .line 15
    invoke-virtual { v0 }, Lokhttp3/Address;->certificatePinner()Lokhttp3/CertificatePinner;
    move-result-object v3
    invoke-virtual { v0 }, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;
    move-result-object v0
    invoke-virtual { v0 }, Lokhttp3/HttpUrl;->host()Ljava/lang/String;
    move-result-object v0
  .line 16
    invoke-virtual { v4 }, Lokhttp3/Handshake;->peerCertificates()Ljava/util/List;
    move-result-object v5
  .line 17
    invoke-virtual { v3, v0, v5 }, Lokhttp3/CertificatePinner;->check(Ljava/lang/String;Ljava/util/List;)V
  .line 18
    invoke-virtual { p1 }, Lokhttp3/ConnectionSpec;->supportsTlsExtensions()Z
    move-result p1
    if-eqz p1, :L3
  .line 19
    invoke-static { }, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;
    move-result-object p1
    invoke-virtual { p1, v1 }, Lokhttp3/internal/platform/Platform;->getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    move-result-object v2
  :L3
  .line 20
    iput-object v1, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;
  .line 21
    invoke-static { v1 }, Lokio/Okio;->source(Ljava/net/Socket;)Lokio/Source;
    move-result-object p1
    invoke-static { p1 }, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;
    move-result-object p1
    iput-object p1, p0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/BufferedSource;
  .line 22
    iget-object p1, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;
    invoke-static { p1 }, Lokio/Okio;->sink(Ljava/net/Socket;)Lokio/Sink;
    move-result-object p1
    invoke-static { p1 }, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;
    move-result-object p1
    iput-object p1, p0, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/BufferedSink;
  .line 23
    iput-object v4, p0, Lokhttp3/internal/connection/RealConnection;->handshake:Lokhttp3/Handshake;
    if-eqz v2, :L4
  .line 24
    invoke-static { v2 }, Lokhttp3/Protocol;->get(Ljava/lang/String;)Lokhttp3/Protocol;
    move-result-object p1
    goto :L5
  :L4
  .line 25
    sget-object p1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;
  :L5
    iput-object p1, p0, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;
  :L6
    if-eqz v1, :L7
  .line 26
    invoke-static { }, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;
    move-result-object p1
    invoke-virtual { p1, v1 }, Lokhttp3/internal/platform/Platform;->afterHandshake(Ljavax/net/ssl/SSLSocket;)V
  :L7
    return-void
  :L8
  .line 27
    invoke-virtual { v4 }, Lokhttp3/Handshake;->peerCertificates()Ljava/util/List;
    move-result-object p1
    const/4 v2, 0
    invoke-interface { p1, v2 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Ljava/security/cert/X509Certificate;
  .line 28
    new-instance v2, Ljavax/net/ssl/SSLPeerUnverifiedException;
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "Hostname "
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;
    move-result-object v0
    invoke-virtual { v0 }, Lokhttp3/HttpUrl;->host()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, " not verified:\n    certificate: "
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 29
    invoke-static { p1 }, Lokhttp3/CertificatePinner;->pin(Ljava/security/cert/Certificate;)Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, "\n    DN: "
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 30
    invoke-virtual { p1 }, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;
    move-result-object v0
    invoke-interface { v0 }, Ljava/security/Principal;->getName()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, "\n    subjectAltNames: "
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 31
    invoke-static { p1 }, Lokhttp3/internal/tls/OkHostnameVerifier;->allSubjectAltNames(Ljava/security/cert/X509Certificate;)Ljava/util/List;
    move-result-object p1
    invoke-virtual { v3, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v2, p1 }, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V
    throw v2
  :L9
    move-exception p1
    move-object v2, v1
    goto :L15
  :L10
    move-exception p1
    move-object v2, v1
    goto :L13
  :L11
    move-exception p1
    goto :L15
  :L12
    move-exception p1
  :L13
  .line 32
    invoke-static { p1 }, Lokhttp3/internal/Util;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z
    move-result v0
    if-eqz v0, :L14
    new-instance v0, Ljava/io/IOException;
    invoke-direct { v0, p1 }, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V
    throw v0
  :L14
  .line 33
    throw p1
  :L15
    if-eqz v2, :L16
  .line 34
    invoke-static { }, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;
    move-result-object v0
    invoke-virtual { v0, v2 }, Lokhttp3/internal/platform/Platform;->afterHandshake(Ljavax/net/ssl/SSLSocket;)V
  :L16
  .line 35
    invoke-static { v2 }, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V
    throw p1
.end method

.method private connectTunnel(IIILokhttp3/Call;Lokhttp3/EventListener;)V
  .registers 12
  .line 1
    invoke-direct { p0 }, Lokhttp3/internal/connection/RealConnection;->createTunnelRequest()Lokhttp3/Request;
    move-result-object v0
  .line 2
    invoke-virtual { v0 }, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;
    move-result-object v1
    const/4 v2, 0
  :L0
    const/16 v3, 21
    if-ge v2, v3, :L2
  .line 3
    invoke-direct { p0, p1, p2, p4, p5 }, Lokhttp3/internal/connection/RealConnection;->connectSocket(IILokhttp3/Call;Lokhttp3/EventListener;)V
  .line 4
    invoke-direct { p0, p2, p3, v0, v1 }, Lokhttp3/internal/connection/RealConnection;->createTunnel(IILokhttp3/Request;Lokhttp3/HttpUrl;)Lokhttp3/Request;
    move-result-object v0
    if-nez v0, :L1
    goto :L2
  :L1
  .line 5
    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;
    invoke-static { v3 }, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V
    const/4 v3, 0
  .line 6
    iput-object v3, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;
  .line 7
    iput-object v3, p0, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/BufferedSink;
  .line 8
    iput-object v3, p0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/BufferedSource;
  .line 9
    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;
    invoke-virtual { v4 }, Lokhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;
    move-result-object v4
    iget-object v5, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;
    invoke-virtual { v5 }, Lokhttp3/Route;->proxy()Ljava/net/Proxy;
    move-result-object v5
    invoke-virtual { p5, p4, v4, v5, v3 }, Lokhttp3/EventListener;->connectEnd(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;)V
    add-int/lit8 v2, v2, 1
    goto :L0
  :L2
    return-void
.end method

.method private createTunnel(IILokhttp3/Request;Lokhttp3/HttpUrl;)Lokhttp3/Request;
  .registers 12
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "CONNECT "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const/4 v1, 1
    invoke-static { p4, v1 }, Lokhttp3/internal/Util;->hostHeader(Lokhttp3/HttpUrl;Z)Ljava/lang/String;
    move-result-object p4
    invoke-virtual { v0, p4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p4, " HTTP/1.1"
    invoke-virtual { v0, p4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p4
  :L0
  .line 2
    new-instance v0, Lokhttp3/internal/http1/Http1Codec;
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/BufferedSource;
    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/BufferedSink;
    const/4 v3, 0
    invoke-direct { v0, v3, v3, v1, v2 }, Lokhttp3/internal/http1/Http1Codec;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/internal/connection/StreamAllocation;Lokio/BufferedSource;Lokio/BufferedSink;)V
  .line 3
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/BufferedSource;
    invoke-interface { v1 }, Lokio/Source;->timeout()Lokio/Timeout;
    move-result-object v1
    int-to-long v4, p1
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
    invoke-virtual { v1, v4, v5, v2 }, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;
  .line 4
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/BufferedSink;
    invoke-interface { v1 }, Lokio/Sink;->timeout()Lokio/Timeout;
    move-result-object v1
    int-to-long v4, p2
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
    invoke-virtual { v1, v4, v5, v2 }, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;
  .line 5
    invoke-virtual { p3 }, Lokhttp3/Request;->headers()Lokhttp3/Headers;
    move-result-object v1
    invoke-virtual { v0, v1, p4 }, Lokhttp3/internal/http1/Http1Codec;->writeRequest(Lokhttp3/Headers;Ljava/lang/String;)V
  .line 6
    invoke-virtual { v0 }, Lokhttp3/internal/http1/Http1Codec;->finishRequest()V
    const/4 v1, 0
  .line 7
    invoke-virtual { v0, v1 }, Lokhttp3/internal/http1/Http1Codec;->readResponseHeaders(Z)Lokhttp3/Response$Builder;
    move-result-object v1
  .line 8
    invoke-virtual { v1, p3 }, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;
    move-result-object p3
  .line 9
    invoke-virtual { p3 }, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;
    move-result-object p3
  .line 10
    invoke-static { p3 }, Lokhttp3/internal/http/HttpHeaders;->contentLength(Lokhttp3/Response;)J
    move-result-wide v1
    const-wide/16 v4, -1
    cmp-long v6, v1, v4
    if-nez v6, :L1
    const-wide/16 v1, 0
  :L1
  .line 11
    invoke-virtual { v0, v1, v2 }, Lokhttp3/internal/http1/Http1Codec;->newFixedLengthSource(J)Lokio/Source;
    move-result-object v0
    const v1, 2147483647
  .line 12
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
    invoke-static { v0, v1, v2 }, Lokhttp3/internal/Util;->skipAll(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z
  .line 13
    invoke-interface { v0 }, Lokio/Source;->close()V
  .line 14
    invoke-virtual { p3 }, Lokhttp3/Response;->code()I
    move-result v0
    const/16 v1, 200
    if-eq v0, v1, :L5
    const/16 v1, 407
    if-ne v0, v1, :L4
  .line 15
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;
    invoke-virtual { v0 }, Lokhttp3/Route;->address()Lokhttp3/Address;
    move-result-object v0
    invoke-virtual { v0 }, Lokhttp3/Address;->proxyAuthenticator()Lokhttp3/Authenticator;
    move-result-object v0
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;
    invoke-interface { v0, v1, p3 }, Lokhttp3/Authenticator;->authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;
    move-result-object v0
    if-eqz v0, :L3
    const-string v1, "Connection"
  .line 16
    invoke-virtual { p3, v1 }, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p3
    const-string v1, "close"
    invoke-virtual { v1, p3 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result p3
    if-eqz p3, :L2
    return-object v0
  :L2
    move-object p3, v0
    goto/16 :L0
  :L3
  .line 17
    new-instance p1, Ljava/io/IOException;
    const-string p2, "Failed to authenticate with proxy"
    invoke-direct { p1, p2 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw p1
  :L4
  .line 18
    new-instance p1, Ljava/io/IOException;
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p4, "Unexpected response code for CONNECT: "
    invoke-virtual { p2, p4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 19
    invoke-virtual { p3 }, Lokhttp3/Response;->code()I
    move-result p3
    invoke-virtual { p2, p3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw p1
  :L5
  .line 20
    iget-object p1, p0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/BufferedSource;
    invoke-interface { p1 }, Lokio/BufferedSource;->buffer()Lokio/Buffer;
    move-result-object p1
    invoke-virtual { p1 }, Lokio/Buffer;->exhausted()Z
    move-result p1
    if-eqz p1, :L6
    iget-object p1, p0, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/BufferedSink;
    invoke-interface { p1 }, Lokio/BufferedSink;->buffer()Lokio/Buffer;
    move-result-object p1
    invoke-virtual { p1 }, Lokio/Buffer;->exhausted()Z
    move-result p1
    if-eqz p1, :L6
    return-object v3
  :L6
  .line 21
    new-instance p1, Ljava/io/IOException;
    const-string p2, "TLS tunnel buffered too many bytes!"
    invoke-direct { p1, p2 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    goto :L8
  :L7
    throw p1
  :L8
    goto :L7
.end method

.method private createTunnelRequest()Lokhttp3/Request;
  .registers 5
  .line 1
    new-instance v0, Lokhttp3/Request$Builder;
    invoke-direct { v0 }, Lokhttp3/Request$Builder;-><init>()V
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;
  .line 2
    invoke-virtual { v1 }, Lokhttp3/Route;->address()Lokhttp3/Address;
    move-result-object v1
    invoke-virtual { v1 }, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;
    move-result-object v1
    invoke-virtual { v0, v1 }, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;
    move-result-object v0
    const-string v1, "CONNECT"
    const/4 v2, 0
  .line 3
    invoke-virtual { v0, v1, v2 }, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;
    move-result-object v0
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;
  .line 4
    invoke-virtual { v1 }, Lokhttp3/Route;->address()Lokhttp3/Address;
    move-result-object v1
    invoke-virtual { v1 }, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;
    move-result-object v1
    const/4 v2, 1
    invoke-static { v1, v2 }, Lokhttp3/internal/Util;->hostHeader(Lokhttp3/HttpUrl;Z)Ljava/lang/String;
    move-result-object v1
    const-string v2, "Host"
    invoke-virtual { v0, v2, v1 }, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;
    move-result-object v0
    const-string v1, "Proxy-Connection"
    const-string v2, "Keep-Alive"
  .line 5
    invoke-virtual { v0, v1, v2 }, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;
    move-result-object v0
  .line 6
    invoke-static { }, Lokhttp3/internal/Version;->userAgent()Ljava/lang/String;
    move-result-object v1
    const-string v2, "User-Agent"
    invoke-virtual { v0, v2, v1 }, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;
    move-result-object v0
  .line 7
    invoke-virtual { v0 }, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;
    move-result-object v0
  .line 8
    new-instance v1, Lokhttp3/Response$Builder;
    invoke-direct { v1 }, Lokhttp3/Response$Builder;-><init>()V
  .line 9
    invoke-virtual { v1, v0 }, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;
    move-result-object v1
    sget-object v2, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;
  .line 10
    invoke-virtual { v1, v2 }, Lokhttp3/Response$Builder;->protocol(Lokhttp3/Protocol;)Lokhttp3/Response$Builder;
    move-result-object v1
    const/16 v2, 407
  .line 11
    invoke-virtual { v1, v2 }, Lokhttp3/Response$Builder;->code(I)Lokhttp3/Response$Builder;
    move-result-object v1
    const-string v2, "Preemptive Authenticate"
  .line 12
    invoke-virtual { v1, v2 }, Lokhttp3/Response$Builder;->message(Ljava/lang/String;)Lokhttp3/Response$Builder;
    move-result-object v1
    sget-object v2, Lokhttp3/internal/Util;->EMPTY_RESPONSE:Lokhttp3/ResponseBody;
  .line 13
    invoke-virtual { v1, v2 }, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;
    move-result-object v1
    const-wide/16 v2, -1
  .line 14
    invoke-virtual { v1, v2, v3 }, Lokhttp3/Response$Builder;->sentRequestAtMillis(J)Lokhttp3/Response$Builder;
    move-result-object v1
  .line 15
    invoke-virtual { v1, v2, v3 }, Lokhttp3/Response$Builder;->receivedResponseAtMillis(J)Lokhttp3/Response$Builder;
    move-result-object v1
    const-string v2, "Proxy-Authenticate"
    const-string v3, "OkHttp-Preemptive"
  .line 16
    invoke-virtual { v1, v2, v3 }, Lokhttp3/Response$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response$Builder;
    move-result-object v1
  .line 17
    invoke-virtual { v1 }, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;
    move-result-object v1
  .line 18
    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;
    invoke-virtual { v2 }, Lokhttp3/Route;->address()Lokhttp3/Address;
    move-result-object v2
    invoke-virtual { v2 }, Lokhttp3/Address;->proxyAuthenticator()Lokhttp3/Authenticator;
    move-result-object v2
    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;
  .line 19
    invoke-interface { v2, v3, v1 }, Lokhttp3/Authenticator;->authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;
    move-result-object v1
    if-eqz v1, :L0
    move-object v0, v1
  :L0
    return-object v0
.end method

.method private establishProtocol(Lokhttp3/internal/connection/ConnectionSpecSelector;ILokhttp3/Call;Lokhttp3/EventListener;)V
  .registers 6
  .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;
    invoke-virtual { v0 }, Lokhttp3/Route;->address()Lokhttp3/Address;
    move-result-object v0
    invoke-virtual { v0 }, Lokhttp3/Address;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    move-result-object v0
    if-nez v0, :L1
  .line 2
    iget-object p1, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;
    invoke-virtual { p1 }, Lokhttp3/Route;->address()Lokhttp3/Address;
    move-result-object p1
    invoke-virtual { p1 }, Lokhttp3/Address;->protocols()Ljava/util/List;
    move-result-object p1
    sget-object p3, Lokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp3/Protocol;
    invoke-interface { p1, p3 }, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    move-result p1
    if-eqz p1, :L0
  .line 3
    iget-object p1, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;
    iput-object p1, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;
  .line 4
    sget-object p1, Lokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp3/Protocol;
    iput-object p1, p0, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;
  .line 5
    invoke-direct { p0, p2 }, Lokhttp3/internal/connection/RealConnection;->startHttp2(I)V
    return-void
  :L0
  .line 6
    iget-object p1, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;
    iput-object p1, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;
  .line 7
    sget-object p1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;
    iput-object p1, p0, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;
    return-void
  :L1
  .line 8
    invoke-virtual { p4, p3 }, Lokhttp3/EventListener;->secureConnectStart(Lokhttp3/Call;)V
  .line 9
    invoke-direct { p0, p1 }, Lokhttp3/internal/connection/RealConnection;->connectTls(Lokhttp3/internal/connection/ConnectionSpecSelector;)V
  .line 10
    iget-object p1, p0, Lokhttp3/internal/connection/RealConnection;->handshake:Lokhttp3/Handshake;
    invoke-virtual { p4, p3, p1 }, Lokhttp3/EventListener;->secureConnectEnd(Lokhttp3/Call;Lokhttp3/Handshake;)V
  .line 11
    iget-object p1, p0, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;
    sget-object p3, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;
    if-ne p1, p3, :L2
  .line 12
    invoke-direct { p0, p2 }, Lokhttp3/internal/connection/RealConnection;->startHttp2(I)V
  :L2
    return-void
.end method

.method private startHttp2(I)V
  .registers 7
  .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Ljava/net/Socket;->setSoTimeout(I)V
  .line 2
    new-instance v0, Lokhttp3/internal/http2/Http2Connection$Builder;
    const/4 v1, 1
    invoke-direct { v0, v1 }, Lokhttp3/internal/http2/Http2Connection$Builder;-><init>(Z)V
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;
    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;
  .line 3
    invoke-virtual { v2 }, Lokhttp3/Route;->address()Lokhttp3/Address;
    move-result-object v2
    invoke-virtual { v2 }, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;
    move-result-object v2
    invoke-virtual { v2 }, Lokhttp3/HttpUrl;->host()Ljava/lang/String;
    move-result-object v2
    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/BufferedSource;
    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/BufferedSink;
    invoke-virtual { v0, v1, v2, v3, v4 }, Lokhttp3/internal/http2/Http2Connection$Builder;->socket(Ljava/net/Socket;Ljava/lang/String;Lokio/BufferedSource;Lokio/BufferedSink;)Lokhttp3/internal/http2/Http2Connection$Builder;
    move-result-object v0
  .line 4
    invoke-virtual { v0, p0 }, Lokhttp3/internal/http2/Http2Connection$Builder;->listener(Lokhttp3/internal/http2/Http2Connection$Listener;)Lokhttp3/internal/http2/Http2Connection$Builder;
    move-result-object v0
  .line 5
    invoke-virtual { v0, p1 }, Lokhttp3/internal/http2/Http2Connection$Builder;->pingIntervalMillis(I)Lokhttp3/internal/http2/Http2Connection$Builder;
    move-result-object p1
  .line 6
    invoke-virtual { p1 }, Lokhttp3/internal/http2/Http2Connection$Builder;->build()Lokhttp3/internal/http2/Http2Connection;
    move-result-object p1
    iput-object p1, p0, Lokhttp3/internal/connection/RealConnection;->http2Connection:Lokhttp3/internal/http2/Http2Connection;
  .line 7
    invoke-virtual { p1 }, Lokhttp3/internal/http2/Http2Connection;->start()V
    return-void
.end method

.method public static testConnection(Lokhttp3/ConnectionPool;Lokhttp3/Route;Ljava/net/Socket;J)Lokhttp3/internal/connection/RealConnection;
  .registers 6
  .line 1
    new-instance v0, Lokhttp3/internal/connection/RealConnection;
    invoke-direct { v0, p0, p1 }, Lokhttp3/internal/connection/RealConnection;-><init>(Lokhttp3/ConnectionPool;Lokhttp3/Route;)V
  .line 2
    iput-object p2, v0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;
  .line 3
    iput-wide p3, v0, Lokhttp3/internal/connection/RealConnection;->idleAtNanos:J
    return-object v0
.end method

.method public cancel()V
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;
    invoke-static { v0 }, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V
    return-void
.end method

.method public connect(IIIIZLokhttp3/Call;Lokhttp3/EventListener;)V
  .catch Ljava/io/IOException; { :L4 .. :L5 } :L20
  .catch Ljava/io/IOException; { :L8 .. :L9 } :L19
  .catch Ljava/io/IOException; { :L10 .. :L11 } :L18
  .catchall { :L14 .. :L16 } :L15
  .registers 24
    move-object/from16 v7, p0
    move-object/from16 v8, p6
    move-object/from16 v9, p7
  .line 1
    iget-object v0, v7, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;
    if-nez v0, :L27
  .line 2
    iget-object v0, v7, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;
    invoke-virtual { v0 }, Lokhttp3/Route;->address()Lokhttp3/Address;
    move-result-object v0
    invoke-virtual { v0 }, Lokhttp3/Address;->connectionSpecs()Ljava/util/List;
    move-result-object v0
  .line 3
    new-instance v10, Lokhttp3/internal/connection/ConnectionSpecSelector;
    invoke-direct { v10, v0 }, Lokhttp3/internal/connection/ConnectionSpecSelector;-><init>(Ljava/util/List;)V
  .line 4
    iget-object v1, v7, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;
    invoke-virtual { v1 }, Lokhttp3/Route;->address()Lokhttp3/Address;
    move-result-object v1
    invoke-virtual { v1 }, Lokhttp3/Address;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    move-result-object v1
    if-nez v1, :L2
  .line 5
    sget-object v1, Lokhttp3/ConnectionSpec;->CLEARTEXT:Lokhttp3/ConnectionSpec;
    invoke-interface { v0, v1 }, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L1
  .line 6
    iget-object v0, v7, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;
    invoke-virtual { v0 }, Lokhttp3/Route;->address()Lokhttp3/Address;
    move-result-object v0
    invoke-virtual { v0 }, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;
    move-result-object v0
    invoke-virtual { v0 }, Lokhttp3/HttpUrl;->host()Ljava/lang/String;
    move-result-object v0
  .line 7
    invoke-static { }, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;
    move-result-object v1
    invoke-virtual { v1, v0 }, Lokhttp3/internal/platform/Platform;->isCleartextTrafficPermitted(Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :L0
    goto :L3
  :L0
  .line 8
    new-instance v1, Lokhttp3/internal/connection/RouteException;
    new-instance v2, Ljava/net/UnknownServiceException;
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "CLEARTEXT communication to "
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, " not permitted by network security policy"
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-direct { v2, v0 }, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V
    invoke-direct { v1, v2 }, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V
    throw v1
  :L1
  .line 9
    new-instance v0, Lokhttp3/internal/connection/RouteException;
    new-instance v1, Ljava/net/UnknownServiceException;
    const-string v2, "CLEARTEXT communication not enabled for client"
    invoke-direct { v1, v2 }, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V
    invoke-direct { v0, v1 }, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V
    throw v0
  :L2
  .line 10
    iget-object v0, v7, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;
    invoke-virtual { v0 }, Lokhttp3/Route;->address()Lokhttp3/Address;
    move-result-object v0
    invoke-virtual { v0 }, Lokhttp3/Address;->protocols()Ljava/util/List;
    move-result-object v0
    sget-object v1, Lokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp3/Protocol;
    invoke-interface { v0, v1 }, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L26
  :L3
    const/4 v11, 0
    move-object v12, v11
  :L4
  .line 11
    iget-object v0, v7, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;
    invoke-virtual { v0 }, Lokhttp3/Route;->requiresTunnel()Z
    move-result v0
    if-eqz v0, :L7
    move-object/from16 v1, p0
    move/from16 v2, p1
    move/from16 v3, p2
    move/from16 v4, p3
    move-object/from16 v5, p6
    move-object/from16 v6, p7
  .line 12
    invoke-direct/range { v1 .. v6 }, Lokhttp3/internal/connection/RealConnection;->connectTunnel(IIILokhttp3/Call;Lokhttp3/EventListener;)V
  .line 13
    iget-object v0, v7, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;
  :L5
    if-nez v0, :L6
    goto :L11
  :L6
    move/from16 v13, p1
    move/from16 v14, p2
    goto :L9
  :L7
    move/from16 v13, p1
    move/from16 v14, p2
  :L8
  .line 14
    invoke-direct { v7, v13, v14, v8, v9 }, Lokhttp3/internal/connection/RealConnection;->connectSocket(IILokhttp3/Call;Lokhttp3/EventListener;)V
  :L9
    move/from16 v15, p4
  :L10
  .line 15
    invoke-direct { v7, v10, v15, v8, v9 }, Lokhttp3/internal/connection/RealConnection;->establishProtocol(Lokhttp3/internal/connection/ConnectionSpecSelector;ILokhttp3/Call;Lokhttp3/EventListener;)V
  .line 16
    iget-object v0, v7, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;
    invoke-virtual { v0 }, Lokhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;
    move-result-object v0
    iget-object v1, v7, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;
    invoke-virtual { v1 }, Lokhttp3/Route;->proxy()Ljava/net/Proxy;
    move-result-object v1
    iget-object v2, v7, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;
    invoke-virtual { v9, v8, v0, v1, v2 }, Lokhttp3/EventListener;->connectEnd(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;)V
  :L11
  .line 17
    iget-object v0, v7, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;
    invoke-virtual { v0 }, Lokhttp3/Route;->requiresTunnel()Z
    move-result v0
    if-eqz v0, :L13
    iget-object v0, v7, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;
    if-eqz v0, :L12
    goto :L13
  :L12
  .line 18
    new-instance v0, Ljava/net/ProtocolException;
    const-string v1, "Too many tunnel connections attempted: 21"
    invoke-direct { v0, v1 }, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V
  .line 19
    new-instance v1, Lokhttp3/internal/connection/RouteException;
    invoke-direct { v1, v0 }, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V
    throw v1
  :L13
  .line 20
    iget-object v0, v7, Lokhttp3/internal/connection/RealConnection;->http2Connection:Lokhttp3/internal/http2/Http2Connection;
    if-eqz v0, :L17
  .line 21
    iget-object v1, v7, Lokhttp3/internal/connection/RealConnection;->connectionPool:Lokhttp3/ConnectionPool;
    monitor-enter v1
  :L14
  .line 22
    iget-object v0, v7, Lokhttp3/internal/connection/RealConnection;->http2Connection:Lokhttp3/internal/http2/Http2Connection;
    invoke-virtual { v0 }, Lokhttp3/internal/http2/Http2Connection;->maxConcurrentStreams()I
    move-result v0
    iput v0, v7, Lokhttp3/internal/connection/RealConnection;->allocationLimit:I
  .line 23
    monitor-exit v1
    goto :L17
  :L15
    move-exception v0
    monitor-exit v1
  :L16
    throw v0
  :L17
    return-void
  :L18
    move-exception v0
    goto :L22
  :L19
    move-exception v0
    goto :L21
  :L20
    move-exception v0
    move/from16 v13, p1
    move/from16 v14, p2
  :L21
    move/from16 v15, p4
  :L22
  .line 24
    iget-object v1, v7, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;
    invoke-static { v1 }, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V
  .line 25
    iget-object v1, v7, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;
    invoke-static { v1 }, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V
  .line 26
    iput-object v11, v7, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;
  .line 27
    iput-object v11, v7, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;
  .line 28
    iput-object v11, v7, Lokhttp3/internal/connection/RealConnection;->source:Lokio/BufferedSource;
  .line 29
    iput-object v11, v7, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/BufferedSink;
  .line 30
    iput-object v11, v7, Lokhttp3/internal/connection/RealConnection;->handshake:Lokhttp3/Handshake;
  .line 31
    iput-object v11, v7, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;
  .line 32
    iput-object v11, v7, Lokhttp3/internal/connection/RealConnection;->http2Connection:Lokhttp3/internal/http2/Http2Connection;
  .line 33
    iget-object v1, v7, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;
    invoke-virtual { v1 }, Lokhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;
    move-result-object v3
    iget-object v1, v7, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;
    invoke-virtual { v1 }, Lokhttp3/Route;->proxy()Ljava/net/Proxy;
    move-result-object v4
    const/4 v5, 0
    move-object/from16 v1, p7
    move-object/from16 v2, p6
    move-object v6, v0
    invoke-virtual/range { v1 .. v6 }, Lokhttp3/EventListener;->connectFailed(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;Ljava/io/IOException;)V
    if-nez v12, :L23
  .line 34
    new-instance v12, Lokhttp3/internal/connection/RouteException;
    invoke-direct { v12, v0 }, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V
    goto :L24
  :L23
  .line 35
    invoke-virtual { v12, v0 }, Lokhttp3/internal/connection/RouteException;->addConnectException(Ljava/io/IOException;)V
  :L24
    if-eqz p5, :L25
  .line 36
    invoke-virtual { v10, v0 }, Lokhttp3/internal/connection/ConnectionSpecSelector;->connectionFailed(Ljava/io/IOException;)Z
    move-result v0
    if-eqz v0, :L25
    goto/16 :L4
  :L25
  .line 37
    throw v12
  :L26
  .line 38
    new-instance v0, Lokhttp3/internal/connection/RouteException;
    new-instance v1, Ljava/net/UnknownServiceException;
    const-string v2, "H2_PRIOR_KNOWLEDGE cannot be used with HTTPS"
    invoke-direct { v1, v2 }, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V
    invoke-direct { v0, v1 }, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V
    throw v0
  :L27
  .line 39
    new-instance v0, Ljava/lang/IllegalStateException;
    const-string v1, "already connected"
    invoke-direct { v0, v1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    goto :L29
  :L28
    throw v0
  :L29
    goto :L28
.end method

.method public handshake()Lokhttp3/Handshake;
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->handshake:Lokhttp3/Handshake;
    return-object v0
.end method

.method public isEligible(Lokhttp3/Address;Lokhttp3/Route;)Z
  .parameter # Lokhttp3/Address;
  .parameter # Lokhttp3/Route;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
  .end parameter
  .catch Ljavax/net/ssl/SSLPeerUnverifiedException; { :L9 .. :L10 } :L11
  .registers 7
  .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->size()I
    move-result v0
    iget v1, p0, Lokhttp3/internal/connection/RealConnection;->allocationLimit:I
    const/4 v2, 0
    if-ge v0, v1, :L11
    iget-boolean v0, p0, Lokhttp3/internal/connection/RealConnection;->noNewStreams:Z
    if-eqz v0, :L0
    goto/16 :L11
  :L0
  .line 2
    sget-object v0, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;
    invoke-virtual { v1 }, Lokhttp3/Route;->address()Lokhttp3/Address;
    move-result-object v1
    invoke-virtual { v0, v1, p1 }, Lokhttp3/internal/Internal;->equalsNonHost(Lokhttp3/Address;Lokhttp3/Address;)Z
    move-result v0
    if-nez v0, :L1
    return v2
  :L1
  .line 3
    invoke-virtual { p1 }, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;
    move-result-object v0
    invoke-virtual { v0 }, Lokhttp3/HttpUrl;->host()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p0 }, Lokhttp3/internal/connection/RealConnection;->route()Lokhttp3/Route;
    move-result-object v1
    invoke-virtual { v1 }, Lokhttp3/Route;->address()Lokhttp3/Address;
    move-result-object v1
    invoke-virtual { v1 }, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;
    move-result-object v1
    invoke-virtual { v1 }, Lokhttp3/HttpUrl;->host()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    const/4 v1, 1
    if-eqz v0, :L2
    return v1
  :L2
  .line 4
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->http2Connection:Lokhttp3/internal/http2/Http2Connection;
    if-nez v0, :L3
    return v2
  :L3
    if-nez p2, :L4
    return v2
  :L4
  .line 5
    invoke-virtual { p2 }, Lokhttp3/Route;->proxy()Ljava/net/Proxy;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;
    move-result-object v0
    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;
    if-eq v0, v3, :L5
    return v2
  :L5
  .line 6
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;
    invoke-virtual { v0 }, Lokhttp3/Route;->proxy()Ljava/net/Proxy;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;
    move-result-object v0
    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;
    if-eq v0, v3, :L6
    return v2
  :L6
  .line 7
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;
    invoke-virtual { v0 }, Lokhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;
    move-result-object v0
    invoke-virtual { p2 }, Lokhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;
    move-result-object v3
    invoke-virtual { v0, v3 }, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L7
    return v2
  :L7
  .line 8
    invoke-virtual { p2 }, Lokhttp3/Route;->address()Lokhttp3/Address;
    move-result-object p2
    invoke-virtual { p2 }, Lokhttp3/Address;->hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    move-result-object p2
    sget-object v0, Lokhttp3/internal/tls/OkHostnameVerifier;->INSTANCE:Lokhttp3/internal/tls/OkHostnameVerifier;
    if-eq p2, v0, :L8
    return v2
  :L8
  .line 9
    invoke-virtual { p1 }, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;
    move-result-object p2
    invoke-virtual { p0, p2 }, Lokhttp3/internal/connection/RealConnection;->supportsUrl(Lokhttp3/HttpUrl;)Z
    move-result p2
    if-nez p2, :L9
    return v2
  :L9
  .line 10
    invoke-virtual { p1 }, Lokhttp3/Address;->certificatePinner()Lokhttp3/CertificatePinner;
    move-result-object p2
    invoke-virtual { p1 }, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;
    move-result-object p1
    invoke-virtual { p1 }, Lokhttp3/HttpUrl;->host()Ljava/lang/String;
    move-result-object p1
    invoke-virtual { p0 }, Lokhttp3/internal/connection/RealConnection;->handshake()Lokhttp3/Handshake;
    move-result-object v0
    invoke-virtual { v0 }, Lokhttp3/Handshake;->peerCertificates()Ljava/util/List;
    move-result-object v0
    invoke-virtual { p2, p1, v0 }, Lokhttp3/CertificatePinner;->check(Ljava/lang/String;Ljava/util/List;)V
  :L10
    return v1
  :L11
    return v2
.end method

.method public isHealthy(Z)Z
  .catch Ljava/net/SocketTimeoutException; { :L2 .. :L3 } :L9
  .catch Ljava/io/IOException; { :L2 .. :L3 } :L8
  .catchall { :L3 .. :L4 } :L7
  .catch Ljava/net/SocketTimeoutException; { :L5 .. :L8 } :L9
  .catch Ljava/io/IOException; { :L5 .. :L8 } :L8
  .registers 6
  .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;
    invoke-virtual { v0 }, Ljava/net/Socket;->isClosed()Z
    move-result v0
    const/4 v1, 0
    if-nez v0, :L10
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;
    invoke-virtual { v0 }, Ljava/net/Socket;->isInputShutdown()Z
    move-result v0
    if-nez v0, :L10
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;
    invoke-virtual { v0 }, Ljava/net/Socket;->isOutputShutdown()Z
    move-result v0
    if-eqz v0, :L0
    goto :L10
  :L0
  .line 2
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->http2Connection:Lokhttp3/internal/http2/Http2Connection;
    const/4 v2, 1
    if-eqz v0, :L1
  .line 3
    invoke-virtual { v0 }, Lokhttp3/internal/http2/Http2Connection;->isShutdown()Z
    move-result p1
    xor-int/2addr p1, v2
    return p1
  :L1
    if-eqz p1, :L9
  :L2
  .line 4
    iget-object p1, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;
    invoke-virtual { p1 }, Ljava/net/Socket;->getSoTimeout()I
    move-result p1
  :L3
  .line 5
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;
    invoke-virtual { v0, v2 }, Ljava/net/Socket;->setSoTimeout(I)V
  .line 6
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/BufferedSource;
    invoke-interface { v0 }, Lokio/BufferedSource;->exhausted()Z
    move-result v0
  :L4
    if-eqz v0, :L6
  :L5
  .line 7
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;
    invoke-virtual { v0, p1 }, Ljava/net/Socket;->setSoTimeout(I)V
    return v1
  :L6
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;
    invoke-virtual { v0, p1 }, Ljava/net/Socket;->setSoTimeout(I)V
    return v2
  :L7
    move-exception v0
    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;
    invoke-virtual { v3, p1 }, Ljava/net/Socket;->setSoTimeout(I)V
    throw v0
  :L8
    return v1
  :L9
    return v2
  :L10
    return v1
.end method

.method public isMultiplexed()Z
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->http2Connection:Lokhttp3/internal/http2/Http2Connection;
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public newCodec(Lokhttp3/OkHttpClient;Lokhttp3/Interceptor$Chain;Lokhttp3/internal/connection/StreamAllocation;)Lokhttp3/internal/http/HttpCodec;
  .registers 8
  .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->http2Connection:Lokhttp3/internal/http2/Http2Connection;
    if-eqz v0, :L0
  .line 2
    new-instance v0, Lokhttp3/internal/http2/Http2Codec;
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->http2Connection:Lokhttp3/internal/http2/Http2Connection;
    invoke-direct { v0, p1, p2, p3, v1 }, Lokhttp3/internal/http2/Http2Codec;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Interceptor$Chain;Lokhttp3/internal/connection/StreamAllocation;Lokhttp3/internal/http2/Http2Connection;)V
    return-object v0
  :L0
  .line 3
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;
    invoke-interface { p2 }, Lokhttp3/Interceptor$Chain;->readTimeoutMillis()I
    move-result v1
    invoke-virtual { v0, v1 }, Ljava/net/Socket;->setSoTimeout(I)V
  .line 4
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/BufferedSource;
    invoke-interface { v0 }, Lokio/Source;->timeout()Lokio/Timeout;
    move-result-object v0
    invoke-interface { p2 }, Lokhttp3/Interceptor$Chain;->readTimeoutMillis()I
    move-result v1
    int-to-long v1, v1
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
    invoke-virtual { v0, v1, v2, v3 }, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;
  .line 5
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/BufferedSink;
    invoke-interface { v0 }, Lokio/Sink;->timeout()Lokio/Timeout;
    move-result-object v0
    invoke-interface { p2 }, Lokhttp3/Interceptor$Chain;->writeTimeoutMillis()I
    move-result p2
    int-to-long v1, p2
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
    invoke-virtual { v0, v1, v2, p2 }, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;
  .line 6
    new-instance p2, Lokhttp3/internal/http1/Http1Codec;
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/BufferedSource;
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/BufferedSink;
    invoke-direct { p2, p1, p3, v0, v1 }, Lokhttp3/internal/http1/Http1Codec;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/internal/connection/StreamAllocation;Lokio/BufferedSource;Lokio/BufferedSink;)V
    return-object p2
.end method

.method public newWebSocketStreams(Lokhttp3/internal/connection/StreamAllocation;)Lokhttp3/internal/ws/RealWebSocket$Streams;
  .registers 9
  .line 1
    new-instance v6, Lokhttp3/internal/connection/RealConnection$1;
    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/BufferedSource;
    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/BufferedSink;
    const/4 v2, 1
    move-object v0, v6
    move-object v1, p0
    move-object v5, p1
    invoke-direct/range { v0 .. v5 }, Lokhttp3/internal/connection/RealConnection$1;-><init>(Lokhttp3/internal/connection/RealConnection;ZLokio/BufferedSource;Lokio/BufferedSink;Lokhttp3/internal/connection/StreamAllocation;)V
    return-object v6
.end method

.method public onSettings(Lokhttp3/internal/http2/Http2Connection;)V
  .catchall { :L0 .. :L2 } :L1
  .registers 3
  .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->connectionPool:Lokhttp3/ConnectionPool;
    monitor-enter v0
  :L0
  .line 2
    invoke-virtual { p1 }, Lokhttp3/internal/http2/Http2Connection;->maxConcurrentStreams()I
    move-result p1
    iput p1, p0, Lokhttp3/internal/connection/RealConnection;->allocationLimit:I
  .line 3
    monitor-exit v0
    return-void
  :L1
    move-exception p1
    monitor-exit v0
  :L2
    throw p1
.end method

.method public onStream(Lokhttp3/internal/http2/Http2Stream;)V
  .registers 3
  .line 1
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;
    invoke-virtual { p1, v0 }, Lokhttp3/internal/http2/Http2Stream;->close(Lokhttp3/internal/http2/ErrorCode;)V
    return-void
.end method

.method public protocol()Lokhttp3/Protocol;
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;
    return-object v0
.end method

.method public route()Lokhttp3/Route;
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;
    return-object v0
.end method

.method public socket()Ljava/net/Socket;
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;
    return-object v0
.end method

.method public supportsUrl(Lokhttp3/HttpUrl;)Z
  .registers 6
  .line 1
    invoke-virtual { p1 }, Lokhttp3/HttpUrl;->port()I
    move-result v0
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;
    invoke-virtual { v1 }, Lokhttp3/Route;->address()Lokhttp3/Address;
    move-result-object v1
    invoke-virtual { v1 }, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;
    move-result-object v1
    invoke-virtual { v1 }, Lokhttp3/HttpUrl;->port()I
    move-result v1
    const/4 v2, 0
    if-eq v0, v1, :L0
    return v2
  :L0
  .line 2
    invoke-virtual { p1 }, Lokhttp3/HttpUrl;->host()Ljava/lang/String;
    move-result-object v0
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;
    invoke-virtual { v1 }, Lokhttp3/Route;->address()Lokhttp3/Address;
    move-result-object v1
    invoke-virtual { v1 }, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;
    move-result-object v1
    invoke-virtual { v1 }, Lokhttp3/HttpUrl;->host()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    const/4 v1, 1
    if-nez v0, :L2
  .line 3
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->handshake:Lokhttp3/Handshake;
    if-eqz v0, :L1
    sget-object v0, Lokhttp3/internal/tls/OkHostnameVerifier;->INSTANCE:Lokhttp3/internal/tls/OkHostnameVerifier;
  .line 4
    invoke-virtual { p1 }, Lokhttp3/HttpUrl;->host()Ljava/lang/String;
    move-result-object p1
    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->handshake:Lokhttp3/Handshake;
    invoke-virtual { v3 }, Lokhttp3/Handshake;->peerCertificates()Ljava/util/List;
    move-result-object v3
    invoke-interface { v3, v2 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/security/cert/X509Certificate;
  .line 5
    invoke-virtual { v0, p1, v3 }, Lokhttp3/internal/tls/OkHostnameVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
    move-result p1
    if-eqz p1, :L1
    const/4 v2, 1
  :L1
    return v2
  :L2
    return v1
.end method

.method public toString()Ljava/lang/String;
  .registers 3
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Connection{"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;
  .line 2
    invoke-virtual { v1 }, Lokhttp3/Route;->address()Lokhttp3/Address;
    move-result-object v1
    invoke-virtual { v1 }, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;
    move-result-object v1
    invoke-virtual { v1 }, Lokhttp3/HttpUrl;->host()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, ":"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;
    invoke-virtual { v1 }, Lokhttp3/Route;->address()Lokhttp3/Address;
    move-result-object v1
    invoke-virtual { v1 }, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;
    move-result-object v1
    invoke-virtual { v1 }, Lokhttp3/HttpUrl;->port()I
    move-result v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, ", proxy="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;
  .line 3
    invoke-virtual { v1 }, Lokhttp3/Route;->proxy()Ljava/net/Proxy;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v1, " hostAddress="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;
  .line 4
    invoke-virtual { v1 }, Lokhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v1, " cipherSuite="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 5
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->handshake:Lokhttp3/Handshake;
    if-eqz v1, :L0
    invoke-virtual { v1 }, Lokhttp3/Handshake;->cipherSuite()Lokhttp3/CipherSuite;
    move-result-object v1
    goto :L1
  :L0
    const-string v1, "none"
  :L1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v1, " protocol="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const/16 v1, 125
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method
