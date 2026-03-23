.class final Lokhttp3/Cache$Entry;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lokhttp3/Cache;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 26
  name = "Entry"
.end annotation

.field private final static RECEIVED_MILLIS:Ljava/lang/String;

.field private final static SENT_MILLIS:Ljava/lang/String;

.field private final code:I

.field private final handshake:Lokhttp3/Handshake;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
.end field

.field private final message:Ljava/lang/String;

.field private final protocol:Lokhttp3/Protocol;

.field private final receivedResponseMillis:J

.field private final requestMethod:Ljava/lang/String;

.field private final responseHeaders:Lokhttp3/Headers;

.field private final sentRequestMillis:J

.field private final url:Ljava/lang/String;

.field private final varyHeaders:Lokhttp3/Headers;

.method static constructor <clinit>()V
  .registers 2
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-static { }, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;
    move-result-object v1
    invoke-virtual { v1 }, Lokhttp3/internal/platform/Platform;->getPrefix()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, "-Sent-Millis"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    sput-object v0, Lokhttp3/Cache$Entry;->SENT_MILLIS:Ljava/lang/String;
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-static { }, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;
    move-result-object v1
    invoke-virtual { v1 }, Lokhttp3/internal/platform/Platform;->getPrefix()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, "-Received-Millis"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    sput-object v0, Lokhttp3/Cache$Entry;->RECEIVED_MILLIS:Ljava/lang/String;
    return-void
.end method

.method constructor <init>(Lokhttp3/Response;)V
  .registers 4
  .line 39
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 40
    invoke-virtual { p1 }, Lokhttp3/Response;->request()Lokhttp3/Request;
    move-result-object v0
    invoke-virtual { v0 }, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;
    move-result-object v0
    invoke-virtual { v0 }, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;
    move-result-object v0
    iput-object v0, p0, Lokhttp3/Cache$Entry;->url:Ljava/lang/String;
  .line 41
    invoke-static { p1 }, Lokhttp3/internal/http/HttpHeaders;->varyHeaders(Lokhttp3/Response;)Lokhttp3/Headers;
    move-result-object v0
    iput-object v0, p0, Lokhttp3/Cache$Entry;->varyHeaders:Lokhttp3/Headers;
  .line 42
    invoke-virtual { p1 }, Lokhttp3/Response;->request()Lokhttp3/Request;
    move-result-object v0
    invoke-virtual { v0 }, Lokhttp3/Request;->method()Ljava/lang/String;
    move-result-object v0
    iput-object v0, p0, Lokhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;
  .line 43
    invoke-virtual { p1 }, Lokhttp3/Response;->protocol()Lokhttp3/Protocol;
    move-result-object v0
    iput-object v0, p0, Lokhttp3/Cache$Entry;->protocol:Lokhttp3/Protocol;
  .line 44
    invoke-virtual { p1 }, Lokhttp3/Response;->code()I
    move-result v0
    iput v0, p0, Lokhttp3/Cache$Entry;->code:I
  .line 45
    invoke-virtual { p1 }, Lokhttp3/Response;->message()Ljava/lang/String;
    move-result-object v0
    iput-object v0, p0, Lokhttp3/Cache$Entry;->message:Ljava/lang/String;
  .line 46
    invoke-virtual { p1 }, Lokhttp3/Response;->headers()Lokhttp3/Headers;
    move-result-object v0
    iput-object v0, p0, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;
  .line 47
    invoke-virtual { p1 }, Lokhttp3/Response;->handshake()Lokhttp3/Handshake;
    move-result-object v0
    iput-object v0, p0, Lokhttp3/Cache$Entry;->handshake:Lokhttp3/Handshake;
  .line 48
    invoke-virtual { p1 }, Lokhttp3/Response;->sentRequestAtMillis()J
    move-result-wide v0
    iput-wide v0, p0, Lokhttp3/Cache$Entry;->sentRequestMillis:J
  .line 49
    invoke-virtual { p1 }, Lokhttp3/Response;->receivedResponseAtMillis()J
    move-result-wide v0
    iput-wide v0, p0, Lokhttp3/Cache$Entry;->receivedResponseMillis:J
    return-void
.end method

.method constructor <init>(Lokio/Source;)V
  .catchall { :L0 .. :L12 } :L13
  .registers 10
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  :L0
  .line 2
    invoke-static { p1 }, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;
    move-result-object v0
  .line 3
    invoke-interface { v0 }, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;
    move-result-object v1
    iput-object v1, p0, Lokhttp3/Cache$Entry;->url:Ljava/lang/String;
  .line 4
    invoke-interface { v0 }, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;
    move-result-object v1
    iput-object v1, p0, Lokhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;
  .line 5
    new-instance v1, Lokhttp3/Headers$Builder;
    invoke-direct { v1 }, Lokhttp3/Headers$Builder;-><init>()V
  .line 6
    invoke-static { v0 }, Lokhttp3/Cache;->readInt(Lokio/BufferedSource;)I
    move-result v2
    const/4 v3, 0
    const/4 v4, 0
  :L1
    if-ge v4, v2, :L2
  .line 7
    invoke-interface { v0 }, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;
    move-result-object v5
    invoke-virtual { v1, v5 }, Lokhttp3/Headers$Builder;->addLenient(Ljava/lang/String;)Lokhttp3/Headers$Builder;
    add-int/lit8 v4, v4, 1
    goto :L1
  :L2
  .line 8
    invoke-virtual { v1 }, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;
    move-result-object v1
    iput-object v1, p0, Lokhttp3/Cache$Entry;->varyHeaders:Lokhttp3/Headers;
  .line 9
    invoke-interface { v0 }, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lokhttp3/internal/http/StatusLine;->parse(Ljava/lang/String;)Lokhttp3/internal/http/StatusLine;
    move-result-object v1
  .line 10
    iget-object v2, v1, Lokhttp3/internal/http/StatusLine;->protocol:Lokhttp3/Protocol;
    iput-object v2, p0, Lokhttp3/Cache$Entry;->protocol:Lokhttp3/Protocol;
  .line 11
    iget v2, v1, Lokhttp3/internal/http/StatusLine;->code:I
    iput v2, p0, Lokhttp3/Cache$Entry;->code:I
  .line 12
    iget-object v1, v1, Lokhttp3/internal/http/StatusLine;->message:Ljava/lang/String;
    iput-object v1, p0, Lokhttp3/Cache$Entry;->message:Ljava/lang/String;
  .line 13
    new-instance v1, Lokhttp3/Headers$Builder;
    invoke-direct { v1 }, Lokhttp3/Headers$Builder;-><init>()V
  .line 14
    invoke-static { v0 }, Lokhttp3/Cache;->readInt(Lokio/BufferedSource;)I
    move-result v2
  :L3
    if-ge v3, v2, :L4
  .line 15
    invoke-interface { v0 }, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;
    move-result-object v4
    invoke-virtual { v1, v4 }, Lokhttp3/Headers$Builder;->addLenient(Ljava/lang/String;)Lokhttp3/Headers$Builder;
    add-int/lit8 v3, v3, 1
    goto :L3
  :L4
  .line 16
    sget-object v2, Lokhttp3/Cache$Entry;->SENT_MILLIS:Ljava/lang/String;
    invoke-virtual { v1, v2 }, Lokhttp3/Headers$Builder;->get(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
  .line 17
    sget-object v3, Lokhttp3/Cache$Entry;->RECEIVED_MILLIS:Ljava/lang/String;
    invoke-virtual { v1, v3 }, Lokhttp3/Headers$Builder;->get(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
  .line 18
    sget-object v4, Lokhttp3/Cache$Entry;->SENT_MILLIS:Ljava/lang/String;
    invoke-virtual { v1, v4 }, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;
  .line 19
    sget-object v4, Lokhttp3/Cache$Entry;->RECEIVED_MILLIS:Ljava/lang/String;
    invoke-virtual { v1, v4 }, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;
    const-wide/16 v4, 0
    if-eqz v2, :L5
  .line 20
    invoke-static { v2 }, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    move-result-wide v6
    goto :L6
  :L5
    move-wide v6, v4
  :L6
  .line 21
    iput-wide v6, p0, Lokhttp3/Cache$Entry;->sentRequestMillis:J
    if-eqz v3, :L7
  .line 22
    invoke-static { v3 }, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    move-result-wide v4
  :L7
  .line 23
    iput-wide v4, p0, Lokhttp3/Cache$Entry;->receivedResponseMillis:J
  .line 24
    invoke-virtual { v1 }, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;
    move-result-object v1
    iput-object v1, p0, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;
  .line 25
    invoke-direct { p0 }, Lokhttp3/Cache$Entry;->isHttps()Z
    move-result v1
    if-eqz v1, :L11
  .line 26
    invoke-interface { v0 }, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;
    move-result-object v1
  .line 27
    invoke-virtual { v1 }, Ljava/lang/String;->length()I
    move-result v2
    if-gtz v2, :L10
  .line 28
    invoke-interface { v0 }, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;
    move-result-object v1
  .line 29
    invoke-static { v1 }, Lokhttp3/CipherSuite;->forJavaName(Ljava/lang/String;)Lokhttp3/CipherSuite;
    move-result-object v1
  .line 30
    invoke-direct { p0, v0 }, Lokhttp3/Cache$Entry;->readCertificateList(Lokio/BufferedSource;)Ljava/util/List;
    move-result-object v2
  .line 31
    invoke-direct { p0, v0 }, Lokhttp3/Cache$Entry;->readCertificateList(Lokio/BufferedSource;)Ljava/util/List;
    move-result-object v3
  .line 32
    invoke-interface { v0 }, Lokio/BufferedSource;->exhausted()Z
    move-result v4
    if-nez v4, :L8
  .line 33
    invoke-interface { v0 }, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lokhttp3/TlsVersion;->forJavaName(Ljava/lang/String;)Lokhttp3/TlsVersion;
    move-result-object v0
    goto :L9
  :L8
  .line 34
    sget-object v0, Lokhttp3/TlsVersion;->SSL_3_0:Lokhttp3/TlsVersion;
  :L9
  .line 35
    invoke-static { v0, v1, v2, v3 }, Lokhttp3/Handshake;->get(Lokhttp3/TlsVersion;Lokhttp3/CipherSuite;Ljava/util/List;Ljava/util/List;)Lokhttp3/Handshake;
    move-result-object v0
    iput-object v0, p0, Lokhttp3/Cache$Entry;->handshake:Lokhttp3/Handshake;
    goto :L12
  :L10
  .line 36
    new-instance v0, Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "expected \"\" but was \""
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, "\""
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, v1 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw v0
  :L11
    const/4 v0, 0
  .line 37
    iput-object v0, p0, Lokhttp3/Cache$Entry;->handshake:Lokhttp3/Handshake;
  :L12
  .line 38
    invoke-interface { p1 }, Lokio/Source;->close()V
    return-void
  :L13
    move-exception v0
    invoke-interface { p1 }, Lokio/Source;->close()V
    goto :L15
  :L14
    throw v0
  :L15
    goto :L14
.end method

.method private isHttps()Z
  .registers 3
  .line 1
    iget-object v0, p0, Lokhttp3/Cache$Entry;->url:Ljava/lang/String;
    const-string v1, "https://"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v0
    return v0
.end method

.method private readCertificateList(Lokio/BufferedSource;)Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Lokio/BufferedSource;",
      ")",
      "Ljava/util/List<",
      "Ljava/security/cert/Certificate;",
      ">;"
    }
  .end annotation
  .catch Ljava/security/cert/CertificateException; { :L0 .. :L2 } :L4
  .registers 8
  .line 1
    invoke-static { p1 }, Lokhttp3/Cache;->readInt(Lokio/BufferedSource;)I
    move-result v0
    const/4 v1, -1
    if-ne v0, v1, :L0
  .line 2
    invoke-static { }, Ljava/util/Collections;->emptyList()Ljava/util/List;
    move-result-object p1
    return-object p1
  :L0
    const-string v1, "X.509"
  .line 3
    invoke-static { v1 }, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    move-result-object v1
  .line 4
    new-instance v2, Ljava/util/ArrayList;
    invoke-direct { v2, v0 }, Ljava/util/ArrayList;-><init>(I)V
    const/4 v3, 0
  :L1
    if-ge v3, v0, :L3
  .line 5
    invoke-interface { p1 }, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;
    move-result-object v4
  .line 6
    new-instance v5, Lokio/Buffer;
    invoke-direct { v5 }, Lokio/Buffer;-><init>()V
  .line 7
    invoke-static { v4 }, Lokio/ByteString;->decodeBase64(Ljava/lang/String;)Lokio/ByteString;
    move-result-object v4
    invoke-virtual { v5, v4 }, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;
  .line 8
    invoke-virtual { v5 }, Lokio/Buffer;->inputStream()Ljava/io/InputStream;
    move-result-object v4
    invoke-virtual { v1, v4 }, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    move-result-object v4
    invoke-interface { v2, v4 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  :L2
    add-int/lit8 v3, v3, 1
    goto :L1
  :L3
    return-object v2
  :L4
    move-exception p1
  .line 9
    new-instance v0, Ljava/io/IOException;
    invoke-virtual { p1 }, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    goto :L6
  :L5
    throw v0
  :L6
    goto :L5
.end method

.method private writeCertList(Lokio/BufferedSink;Ljava/util/List;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Lokio/BufferedSink;",
      "Ljava/util/List<",
      "Ljava/security/cert/Certificate;",
      ">;)V"
    }
  .end annotation
  .catch Ljava/security/cert/CertificateEncodingException; { :L0 .. :L2 } :L4
  .registers 7
  :L0
  .line 1
    invoke-interface { p2 }, Ljava/util/List;->size()I
    move-result v0
    int-to-long v0, v0
    invoke-interface { p1, v0, v1 }, Lokio/BufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;
    move-result-object v0
    const/16 v1, 10
  .line 2
    invoke-interface { v0, v1 }, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;
    const/4 v0, 0
  .line 3
    invoke-interface { p2 }, Ljava/util/List;->size()I
    move-result v2
  :L1
    if-ge v0, v2, :L3
  .line 4
    invoke-interface { p2, v0 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/security/cert/Certificate;
    invoke-virtual { v3 }, Ljava/security/cert/Certificate;->getEncoded()[B
    move-result-object v3
  .line 5
    invoke-static { v3 }, Lokio/ByteString;->of([B)Lokio/ByteString;
    move-result-object v3
    invoke-virtual { v3 }, Lokio/ByteString;->base64()Ljava/lang/String;
    move-result-object v3
  .line 6
    invoke-interface { p1, v3 }, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
    move-result-object v3
  .line 7
    invoke-interface { v3, v1 }, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;
  :L2
    add-int/lit8 v0, v0, 1
    goto :L1
  :L3
    return-void
  :L4
    move-exception p1
  .line 8
    new-instance p2, Ljava/io/IOException;
    invoke-virtual { p1 }, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;
    move-result-object p1
    invoke-direct { p2, p1 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    goto :L6
  :L5
    throw p2
  :L6
    goto :L5
.end method

.method public matches(Lokhttp3/Request;Lokhttp3/Response;)Z
  .registers 5
  .line 1
    iget-object v0, p0, Lokhttp3/Cache$Entry;->url:Ljava/lang/String;
    invoke-virtual { p1 }, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;
    move-result-object v1
    invoke-virtual { v1 }, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
    iget-object v0, p0, Lokhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;
  .line 2
    invoke-virtual { p1 }, Lokhttp3/Request;->method()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
    iget-object v0, p0, Lokhttp3/Cache$Entry;->varyHeaders:Lokhttp3/Headers;
  .line 3
    invoke-static { p2, v0, p1 }, Lokhttp3/internal/http/HttpHeaders;->varyMatches(Lokhttp3/Response;Lokhttp3/Headers;Lokhttp3/Request;)Z
    move-result p1
    if-eqz p1, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    return p1
.end method

.method public response(Lokhttp3/internal/cache/DiskLruCache$Snapshot;)Lokhttp3/Response;
  .registers 7
  .line 1
    iget-object v0, p0, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;
    const-string v1, "Content-Type"
    invoke-virtual { v0, v1 }, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
  .line 2
    iget-object v1, p0, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;
    const-string v2, "Content-Length"
    invoke-virtual { v1, v2 }, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
  .line 3
    new-instance v2, Lokhttp3/Request$Builder;
    invoke-direct { v2 }, Lokhttp3/Request$Builder;-><init>()V
    iget-object v3, p0, Lokhttp3/Cache$Entry;->url:Ljava/lang/String;
  .line 4
    invoke-virtual { v2, v3 }, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;
    move-result-object v2
    iget-object v3, p0, Lokhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;
    const/4 v4, 0
  .line 5
    invoke-virtual { v2, v3, v4 }, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;
    move-result-object v2
    iget-object v3, p0, Lokhttp3/Cache$Entry;->varyHeaders:Lokhttp3/Headers;
  .line 6
    invoke-virtual { v2, v3 }, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;
    move-result-object v2
  .line 7
    invoke-virtual { v2 }, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;
    move-result-object v2
  .line 8
    new-instance v3, Lokhttp3/Response$Builder;
    invoke-direct { v3 }, Lokhttp3/Response$Builder;-><init>()V
  .line 9
    invoke-virtual { v3, v2 }, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;
    move-result-object v2
    iget-object v3, p0, Lokhttp3/Cache$Entry;->protocol:Lokhttp3/Protocol;
  .line 10
    invoke-virtual { v2, v3 }, Lokhttp3/Response$Builder;->protocol(Lokhttp3/Protocol;)Lokhttp3/Response$Builder;
    move-result-object v2
    iget v3, p0, Lokhttp3/Cache$Entry;->code:I
  .line 11
    invoke-virtual { v2, v3 }, Lokhttp3/Response$Builder;->code(I)Lokhttp3/Response$Builder;
    move-result-object v2
    iget-object v3, p0, Lokhttp3/Cache$Entry;->message:Ljava/lang/String;
  .line 12
    invoke-virtual { v2, v3 }, Lokhttp3/Response$Builder;->message(Ljava/lang/String;)Lokhttp3/Response$Builder;
    move-result-object v2
    iget-object v3, p0, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;
  .line 13
    invoke-virtual { v2, v3 }, Lokhttp3/Response$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Response$Builder;
    move-result-object v2
    new-instance v3, Lokhttp3/Cache$CacheResponseBody;
    invoke-direct { v3, p1, v0, v1 }, Lokhttp3/Cache$CacheResponseBody;-><init>(Lokhttp3/internal/cache/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V
  .line 14
    invoke-virtual { v2, v3 }, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;
    move-result-object p1
    iget-object v0, p0, Lokhttp3/Cache$Entry;->handshake:Lokhttp3/Handshake;
  .line 15
    invoke-virtual { p1, v0 }, Lokhttp3/Response$Builder;->handshake(Lokhttp3/Handshake;)Lokhttp3/Response$Builder;
    move-result-object p1
    iget-wide v0, p0, Lokhttp3/Cache$Entry;->sentRequestMillis:J
  .line 16
    invoke-virtual { p1, v0, v1 }, Lokhttp3/Response$Builder;->sentRequestAtMillis(J)Lokhttp3/Response$Builder;
    move-result-object p1
    iget-wide v0, p0, Lokhttp3/Cache$Entry;->receivedResponseMillis:J
  .line 17
    invoke-virtual { p1, v0, v1 }, Lokhttp3/Response$Builder;->receivedResponseAtMillis(J)Lokhttp3/Response$Builder;
    move-result-object p1
  .line 18
    invoke-virtual { p1 }, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;
    move-result-object p1
    return-object p1
.end method

.method public writeTo(Lokhttp3/internal/cache/DiskLruCache$Editor;)V
  .registers 9
    const/4 v0, 0
  .line 1
    invoke-virtual { p1, v0 }, Lokhttp3/internal/cache/DiskLruCache$Editor;->newSink(I)Lokio/Sink;
    move-result-object p1
    invoke-static { p1 }, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;
    move-result-object p1
  .line 2
    iget-object v1, p0, Lokhttp3/Cache$Entry;->url:Ljava/lang/String;
    invoke-interface { p1, v1 }, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
    move-result-object v1
    const/16 v2, 10
  .line 3
    invoke-interface { v1, v2 }, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;
  .line 4
    iget-object v1, p0, Lokhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;
    invoke-interface { p1, v1 }, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
    move-result-object v1
  .line 5
    invoke-interface { v1, v2 }, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;
  .line 6
    iget-object v1, p0, Lokhttp3/Cache$Entry;->varyHeaders:Lokhttp3/Headers;
    invoke-virtual { v1 }, Lokhttp3/Headers;->size()I
    move-result v1
    int-to-long v3, v1
    invoke-interface { p1, v3, v4 }, Lokio/BufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;
    move-result-object v1
  .line 7
    invoke-interface { v1, v2 }, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;
  .line 8
    iget-object v1, p0, Lokhttp3/Cache$Entry;->varyHeaders:Lokhttp3/Headers;
    invoke-virtual { v1 }, Lokhttp3/Headers;->size()I
    move-result v1
    const/4 v3, 0
  :L0
    const-string v4, ": "
    if-ge v3, v1, :L1
  .line 9
    iget-object v5, p0, Lokhttp3/Cache$Entry;->varyHeaders:Lokhttp3/Headers;
    invoke-virtual { v5, v3 }, Lokhttp3/Headers;->name(I)Ljava/lang/String;
    move-result-object v5
    invoke-interface { p1, v5 }, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
    move-result-object v5
  .line 10
    invoke-interface { v5, v4 }, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
    move-result-object v4
    iget-object v5, p0, Lokhttp3/Cache$Entry;->varyHeaders:Lokhttp3/Headers;
  .line 11
    invoke-virtual { v5, v3 }, Lokhttp3/Headers;->value(I)Ljava/lang/String;
    move-result-object v5
    invoke-interface { v4, v5 }, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
    move-result-object v4
  .line 12
    invoke-interface { v4, v2 }, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;
    add-int/lit8 v3, v3, 1
    goto :L0
  :L1
  .line 13
    new-instance v1, Lokhttp3/internal/http/StatusLine;
    iget-object v3, p0, Lokhttp3/Cache$Entry;->protocol:Lokhttp3/Protocol;
    iget v5, p0, Lokhttp3/Cache$Entry;->code:I
    iget-object v6, p0, Lokhttp3/Cache$Entry;->message:Ljava/lang/String;
    invoke-direct { v1, v3, v5, v6 }, Lokhttp3/internal/http/StatusLine;-><init>(Lokhttp3/Protocol;ILjava/lang/String;)V
    invoke-virtual { v1 }, Lokhttp3/internal/http/StatusLine;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-interface { p1, v1 }, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
    move-result-object v1
  .line 14
    invoke-interface { v1, v2 }, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;
  .line 15
    iget-object v1, p0, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;
    invoke-virtual { v1 }, Lokhttp3/Headers;->size()I
    move-result v1
    add-int/lit8 v1, v1, 2
    int-to-long v5, v1
    invoke-interface { p1, v5, v6 }, Lokio/BufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;
    move-result-object v1
  .line 16
    invoke-interface { v1, v2 }, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;
  .line 17
    iget-object v1, p0, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;
    invoke-virtual { v1 }, Lokhttp3/Headers;->size()I
    move-result v1
  :L2
    if-ge v0, v1, :L3
  .line 18
    iget-object v3, p0, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;
    invoke-virtual { v3, v0 }, Lokhttp3/Headers;->name(I)Ljava/lang/String;
    move-result-object v3
    invoke-interface { p1, v3 }, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
    move-result-object v3
  .line 19
    invoke-interface { v3, v4 }, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
    move-result-object v3
    iget-object v5, p0, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;
  .line 20
    invoke-virtual { v5, v0 }, Lokhttp3/Headers;->value(I)Ljava/lang/String;
    move-result-object v5
    invoke-interface { v3, v5 }, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
    move-result-object v3
  .line 21
    invoke-interface { v3, v2 }, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;
    add-int/lit8 v0, v0, 1
    goto :L2
  :L3
  .line 22
    sget-object v0, Lokhttp3/Cache$Entry;->SENT_MILLIS:Ljava/lang/String;
    invoke-interface { p1, v0 }, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
    move-result-object v0
  .line 23
    invoke-interface { v0, v4 }, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
    move-result-object v0
    iget-wide v5, p0, Lokhttp3/Cache$Entry;->sentRequestMillis:J
  .line 24
    invoke-interface { v0, v5, v6 }, Lokio/BufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;
    move-result-object v0
  .line 25
    invoke-interface { v0, v2 }, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;
  .line 26
    sget-object v0, Lokhttp3/Cache$Entry;->RECEIVED_MILLIS:Ljava/lang/String;
    invoke-interface { p1, v0 }, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
    move-result-object v0
  .line 27
    invoke-interface { v0, v4 }, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
    move-result-object v0
    iget-wide v3, p0, Lokhttp3/Cache$Entry;->receivedResponseMillis:J
  .line 28
    invoke-interface { v0, v3, v4 }, Lokio/BufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;
    move-result-object v0
  .line 29
    invoke-interface { v0, v2 }, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;
  .line 30
    invoke-direct { p0 }, Lokhttp3/Cache$Entry;->isHttps()Z
    move-result v0
    if-eqz v0, :L4
  .line 31
    invoke-interface { p1, v2 }, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;
  .line 32
    iget-object v0, p0, Lokhttp3/Cache$Entry;->handshake:Lokhttp3/Handshake;
    invoke-virtual { v0 }, Lokhttp3/Handshake;->cipherSuite()Lokhttp3/CipherSuite;
    move-result-object v0
    invoke-virtual { v0 }, Lokhttp3/CipherSuite;->javaName()Ljava/lang/String;
    move-result-object v0
    invoke-interface { p1, v0 }, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
    move-result-object v0
  .line 33
    invoke-interface { v0, v2 }, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;
  .line 34
    iget-object v0, p0, Lokhttp3/Cache$Entry;->handshake:Lokhttp3/Handshake;
    invoke-virtual { v0 }, Lokhttp3/Handshake;->peerCertificates()Ljava/util/List;
    move-result-object v0
    invoke-direct { p0, p1, v0 }, Lokhttp3/Cache$Entry;->writeCertList(Lokio/BufferedSink;Ljava/util/List;)V
  .line 35
    iget-object v0, p0, Lokhttp3/Cache$Entry;->handshake:Lokhttp3/Handshake;
    invoke-virtual { v0 }, Lokhttp3/Handshake;->localCertificates()Ljava/util/List;
    move-result-object v0
    invoke-direct { p0, p1, v0 }, Lokhttp3/Cache$Entry;->writeCertList(Lokio/BufferedSink;Ljava/util/List;)V
  .line 36
    iget-object v0, p0, Lokhttp3/Cache$Entry;->handshake:Lokhttp3/Handshake;
    invoke-virtual { v0 }, Lokhttp3/Handshake;->tlsVersion()Lokhttp3/TlsVersion;
    move-result-object v0
    invoke-virtual { v0 }, Lokhttp3/TlsVersion;->javaName()Ljava/lang/String;
    move-result-object v0
    invoke-interface { p1, v0 }, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
    move-result-object v0
    invoke-interface { v0, v2 }, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;
  :L4
  .line 37
    invoke-interface { p1 }, Lokio/Sink;->close()V
    return-void
.end method
