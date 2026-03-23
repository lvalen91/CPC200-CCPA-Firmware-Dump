.class public final Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
.super Ljava/lang/Object;
.source "SourceFile"

.field private final static EMPTY_RULE:[Ljava/lang/String;

.field private final static EXCEPTION_MARKER:B = 33t

.field private final static PREVAILING_RULE:[Ljava/lang/String;

.field public final static PUBLIC_SUFFIX_RESOURCE:Ljava/lang/String; = "publicsuffixes.gz"

.field private final static WILDCARD_LABEL:[B

.field private final static instance:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

.field private final listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private publicSuffixExceptionListBytes:[B

.field private publicSuffixListBytes:[B

.field private final readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

.method static constructor <clinit>()V
  .registers 4
    const/4 v0, 1
    new-array v1, v0, [B
    const/16 v2, 42
    const/4 v3, 0
    aput-byte v2, v1, v3
  .line 1
    sput-object v1, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->WILDCARD_LABEL:[B
    new-array v1, v3, [Ljava/lang/String;
  .line 2
    sput-object v1, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->EMPTY_RULE:[Ljava/lang/String;
    new-array v0, v0, [Ljava/lang/String;
    const-string v1, "*"
    aput-object v1, v0, v3
  .line 3
    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->PREVAILING_RULE:[Ljava/lang/String;
  .line 4
    new-instance v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
    invoke-direct { v0 }, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;-><init>()V
    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->instance:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
    return-void
.end method

.method public constructor <init>()V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;
    const/4 v1, 0
    invoke-direct { v0, v1 }, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V
    iput-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;
  .line 3
    new-instance v0, Ljava/util/concurrent/CountDownLatch;
    const/4 v1, 1
    invoke-direct { v0, v1 }, Ljava/util/concurrent/CountDownLatch;-><init>(I)V
    iput-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;
    return-void
.end method

.method private static binarySearchBytes([B[[BI)Ljava/lang/String;
  .registers 20
    move-object/from16 v0, p0
    move-object/from16 v1, p1
  .line 1
    array-length v2, v0
    const/4 v3, 0
    const/4 v4, 0
  :L0
    if-ge v4, v2, :L21
    add-int v5, v4, v2
  .line 2
    div-int/lit8 v5, v5, 2
  :L1
    const/16 v6, 10
    const/4 v7, -1
    if-le v5, v7, :L2
  .line 3
    aget-byte v8, v0, v5
    if-eq v8, v6, :L2
    add-int/lit8 v5, v5, -1
    goto :L1
  :L2
    add-int/lit8 v5, v5, 1
    const/4 v8, 1
    const/4 v9, 1
  :L3
    add-int v10, v5, v9
  .line 4
    aget-byte v11, v0, v10
    if-eq v11, v6, :L4
    add-int/lit8 v9, v9, 1
    goto :L3
  :L4
    sub-int v6, v10, v5
    move/from16 v11, p2
    const/4 v9, 0
    const/4 v12, 0
    const/4 v13, 0
  :L5
    if-eqz v9, :L6
    const/16 v9, 46
    const/4 v14, 0
    goto :L7
  :L6
  .line 5
    aget-object v14, v1, v11
    aget-byte v14, v14, v12
    and-int/lit16 v14, v14, 255
    move/from16 v16, v14
    move v14, v9
    move/from16 v9, v16
  :L7
    add-int v15, v5, v13
  .line 6
    aget-byte v15, v0, v15
    and-int/lit16 v15, v15, 255
    sub-int/2addr v9, v15
    if-eqz v9, :L8
    goto :L10
  :L8
    add-int/lit8 v13, v13, 1
    add-int/lit8 v12, v12, 1
    if-ne v13, v6, :L9
    goto :L10
  :L9
  .line 7
    aget-object v15, v1, v11
    array-length v15, v15
    if-ne v15, v12, :L20
  .line 8
    array-length v14, v1
    sub-int/2addr v14, v8
    if-ne v11, v14, :L19
  :L10
    if-gez v9, :L12
  :L11
    add-int/lit8 v5, v5, -1
    move v2, v5
    goto :L0
  :L12
    if-lez v9, :L14
  :L13
    add-int/lit8 v4, v10, 1
    goto :L0
  :L14
    sub-int v7, v6, v13
  .line 9
    aget-object v8, v1, v11
    array-length v8, v8
    sub-int/2addr v8, v12
  :L15
    add-int/lit8 v11, v11, 1
  .line 10
    array-length v9, v1
    if-ge v11, v9, :L16
  .line 11
    aget-object v9, v1, v11
    array-length v9, v9
    add-int/2addr v8, v9
    goto :L15
  :L16
    if-ge v8, v7, :L17
    goto :L11
  :L17
    if-le v8, v7, :L18
    goto :L13
  :L18
  .line 12
    new-instance v1, Ljava/lang/String;
    sget-object v2, Lokhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;
    invoke-direct { v1, v0, v5, v6, v2 }, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V
    goto :L22
  :L19
    add-int/lit8 v11, v11, 1
    const/4 v9, 1
    const/4 v12, -1
    goto :L5
  :L20
    move v9, v14
    goto :L5
  :L21
    const/4 v1, 0
  :L22
    return-object v1
.end method

.method private findMatchingRule([Ljava/lang/String;)[Ljava/lang/String;
  .catch Ljava/lang/InterruptedException; { :L0 .. :L1 } :L2
  .catchall { :L4 .. :L5 } :L28
  .catchall { :L27 .. :L29 } :L28
  .registers 10
  .line 1
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-virtual { v0 }, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    move-result v0
    const/4 v1, 0
    const/4 v2, 1
    if-nez v0, :L0
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-virtual { v0, v1, v2 }, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    invoke-direct { p0 }, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readTheListUninterruptibly()V
    goto :L3
  :L0
  .line 3
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-virtual { v0 }, Ljava/util/concurrent/CountDownLatch;->await()V
  :L1
    goto :L3
  :L2
  .line 4
    invoke-static { }, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/Thread;->interrupt()V
  :L3
  .line 5
    monitor-enter p0
  :L4
  .line 6
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B
    if-eqz v0, :L27
  .line 7
    monitor-exit p0
  :L5
  .line 8
    array-length v0, p1
    new-array v3, v0, [[B
    const/4 v4, 0
  :L6
  .line 9
    array-length v5, p1
    if-ge v4, v5, :L7
  .line 10
    aget-object v5, p1, v4
    sget-object v6, Lokhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;
    invoke-virtual { v5, v6 }, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
    move-result-object v5
    aput-object v5, v3, v4
    add-int/lit8 v4, v4, 1
    goto :L6
  :L7
    const/4 p1, 0
  :L8
    const/4 v4, 0
    if-ge p1, v0, :L10
  .line 11
    iget-object v5, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B
    invoke-static { v5, v3, p1 }, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->binarySearchBytes([B[[BI)Ljava/lang/String;
    move-result-object v5
    if-eqz v5, :L9
    goto :L11
  :L9
    add-int/lit8 p1, p1, 1
    goto :L8
  :L10
    move-object v5, v4
  :L11
    if-le v0, v2, :L14
  .line 12
    invoke-virtual { v3 }, [[B->clone()Ljava/lang/Object;
    move-result-object p1
    check-cast p1, [[B
    const/4 v6, 0
  :L12
  .line 13
    array-length v7, p1
    sub-int/2addr v7, v2
    if-ge v6, v7, :L14
  .line 14
    sget-object v7, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->WILDCARD_LABEL:[B
    aput-object v7, p1, v6
  .line 15
    iget-object v7, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B
    invoke-static { v7, p1, v6 }, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->binarySearchBytes([B[[BI)Ljava/lang/String;
    move-result-object v7
    if-eqz v7, :L13
    goto :L15
  :L13
    add-int/lit8 v6, v6, 1
    goto :L12
  :L14
    move-object v7, v4
  :L15
    if-eqz v7, :L18
  :L16
    add-int/lit8 p1, v0, -1
    if-ge v1, p1, :L18
  .line 16
    iget-object p1, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixExceptionListBytes:[B
    invoke-static { p1, v3, v1 }, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->binarySearchBytes([B[[BI)Ljava/lang/String;
    move-result-object p1
    if-eqz p1, :L17
    move-object v4, p1
    goto :L18
  :L17
    add-int/lit8 v1, v1, 1
    goto :L16
  :L18
    if-eqz v4, :L19
  .line 17
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "!"
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    const-string v0, "\\."
  .line 18
    invoke-virtual { p1, v0 }, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object p1
    return-object p1
  :L19
    if-nez v5, :L20
    if-nez v7, :L20
  .line 19
    sget-object p1, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->PREVAILING_RULE:[Ljava/lang/String;
    return-object p1
  :L20
    if-eqz v5, :L21
    const-string p1, "\\."
  .line 20
    invoke-virtual { v5, p1 }, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object p1
    goto :L22
  :L21
  .line 21
    sget-object p1, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->EMPTY_RULE:[Ljava/lang/String;
  :L22
    if-eqz v7, :L23
    const-string v0, "\\."
  .line 22
    invoke-virtual { v7, v0 }, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object v0
    goto :L24
  :L23
  .line 23
    sget-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->EMPTY_RULE:[Ljava/lang/String;
  :L24
  .line 24
    array-length v1, p1
    array-length v2, v0
    if-le v1, v2, :L25
    goto :L26
  :L25
    move-object p1, v0
  :L26
    return-object p1
  :L27
  .line 25
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string v0, "Unable to load publicsuffixes.gz resource from the classpath."
    invoke-direct { p1, v0 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
  :L28
    move-exception p1
  .line 26
    monitor-exit p0
  :L29
    goto :L31
  :L30
    throw p1
  :L31
    goto :L30
.end method

.method public static get()Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
  .registers 3
  .line 1
    sget-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->instance:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
    return-object v0
.end method

.method private readTheList()V
  .catchall { :L1 .. :L2 } :L8
  .catchall { :L3 .. :L4 } :L5
  .catchall { :L6 .. :L7 } :L5
  .registers 4
  .line 1
    const-class v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
    const-string v1, "publicsuffixes.gz"
    invoke-virtual { v0, v1 }, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    move-result-object v0
    if-nez v0, :L0
    return-void
  :L0
  .line 2
    new-instance v1, Lokio/GzipSource;
    invoke-static { v0 }, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;
    move-result-object v0
    invoke-direct { v1, v0 }, Lokio/GzipSource;-><init>(Lokio/Source;)V
    invoke-static { v1 }, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;
    move-result-object v0
  :L1
  .line 3
    invoke-interface { v0 }, Lokio/BufferedSource;->readInt()I
    move-result v1
  .line 4
    new-array v1, v1, [B
  .line 5
    invoke-interface { v0, v1 }, Lokio/BufferedSource;->readFully([B)V
  .line 6
    invoke-interface { v0 }, Lokio/BufferedSource;->readInt()I
    move-result v2
  .line 7
    new-array v2, v2, [B
  .line 8
    invoke-interface { v0, v2 }, Lokio/BufferedSource;->readFully([B)V
  :L2
  .line 9
    invoke-static { v0 }, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V
  .line 10
    monitor-enter p0
  :L3
  .line 11
    iput-object v1, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B
  .line 12
    iput-object v2, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixExceptionListBytes:[B
  .line 13
    monitor-exit p0
  :L4
  .line 14
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-virtual { v0 }, Ljava/util/concurrent/CountDownLatch;->countDown()V
    return-void
  :L5
    move-exception v0
  :L6
  .line 15
    monitor-exit p0
  :L7
    throw v0
  :L8
    move-exception v1
  .line 16
    invoke-static { v0 }, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V
    throw v1
.end method

.method private readTheListUninterruptibly()V
  .catch Ljava/io/InterruptedIOException; { :L0 .. :L1 } :L8
  .catch Ljava/io/IOException; { :L0 .. :L1 } :L4
  .catchall { :L0 .. :L1 } :L3
  .catchall { :L5 .. :L6 } :L3
  .catchall { :L8 .. :L9 } :L3
  .registers 6
    const/4 v0, 0
  :L0
  .line 1
    invoke-direct { p0 }, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readTheList()V
  :L1
    if-eqz v0, :L2
  .line 2
    invoke-static { }, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/Thread;->interrupt()V
  :L2
    return-void
  :L3
    move-exception v1
    goto :L10
  :L4
    move-exception v1
  :L5
  .line 3
    invoke-static { }, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;
    move-result-object v2
    const/4 v3, 5
    const-string v4, "Failed to read public suffix list"
    invoke-virtual { v2, v3, v4, v1 }, Lokhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V
  :L6
    if-eqz v0, :L7
  .line 4
    invoke-static { }, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/Thread;->interrupt()V
  :L7
    return-void
  :L8
  .line 5
    invoke-static { }, Ljava/lang/Thread;->interrupted()Z
  :L9
    const/4 v0, 1
    goto :L0
  :L10
    if-eqz v0, :L11
  .line 6
    invoke-static { }, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/Thread;->interrupt()V
  :L11
    goto :L13
  :L12
    throw v1
  :L13
    goto :L12
.end method

.method public getEffectiveTldPlusOne(Ljava/lang/String;)Ljava/lang/String;
  .registers 9
    if-eqz p1, :L5
  .line 1
    invoke-static { p1 }, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    const-string v1, "\\."
  .line 2
    invoke-virtual { v0, v1 }, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object v0
  .line 3
    invoke-direct { p0, v0 }, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->findMatchingRule([Ljava/lang/String;)[Ljava/lang/String;
    move-result-object v2
  .line 4
    array-length v3, v0
    array-length v4, v2
    const/16 v5, 33
    const/4 v6, 0
    if-ne v3, v4, :L0
    aget-object v3, v2, v6
    invoke-virtual { v3, v6 }, Ljava/lang/String;->charAt(I)C
    move-result v3
    if-eq v3, v5, :L0
    const/4 p1, 0
    return-object p1
  :L0
  .line 5
    aget-object v3, v2, v6
    invoke-virtual { v3, v6 }, Ljava/lang/String;->charAt(I)C
    move-result v3
    if-ne v3, v5, :L1
  .line 6
    array-length v0, v0
    array-length v2, v2
    goto :L2
  :L1
  .line 7
    array-length v0, v0
    array-length v2, v2
    add-int/lit8 v2, v2, 1
  :L2
    sub-int/2addr v0, v2
  .line 8
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
  .line 9
    invoke-virtual { p1, v1 }, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object p1
  :L3
  .line 10
    array-length v1, p1
    if-ge v0, v1, :L4
  .line 11
    aget-object v1, p1, v0
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const/16 v1, 46
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    add-int/lit8 v0, v0, 1
    goto :L3
  :L4
  .line 12
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->length()I
    move-result p1
    add-int/lit8 p1, p1, -1
    invoke-virtual { v2, p1 }, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;
  .line 13
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    return-object p1
  :L5
  .line 14
    new-instance p1, Ljava/lang/NullPointerException;
    const-string v0, "domain == null"
    invoke-direct { p1, v0 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    goto :L7
  :L6
    throw p1
  :L7
    goto :L6
.end method

.method setListBytes([B[B)V
  .registers 3
  .line 1
    iput-object p1, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B
  .line 2
    iput-object p2, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixExceptionListBytes:[B
  .line 3
    iget-object p1, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;
    const/4 p2, 1
    invoke-virtual { p1, p2 }, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
  .line 4
    iget-object p1, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-virtual { p1 }, Ljava/util/concurrent/CountDownLatch;->countDown()V
    return-void
.end method
