.class public final Lokhttp3/internal/cache/DiskLruCache;
.super Ljava/lang/Object;
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lokhttp3/internal/cache/DiskLruCache$Entry;,
    Lokhttp3/internal/cache/DiskLruCache$Editor;,
    Lokhttp3/internal/cache/DiskLruCache$Snapshot;
  }
.end annotation

.field final static synthetic $assertionsDisabled:Z = false

.field final static ANY_SEQUENCE_NUMBER:J = -1L

.field private final static CLEAN:Ljava/lang/String; = "CLEAN"

.field private final static DIRTY:Ljava/lang/String; = "DIRTY"

.field final static JOURNAL_FILE:Ljava/lang/String; = "journal"

.field final static JOURNAL_FILE_BACKUP:Ljava/lang/String; = "journal.bkp"

.field final static JOURNAL_FILE_TEMP:Ljava/lang/String; = "journal.tmp"

.field final static LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

.field final static MAGIC:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field private final static READ:Ljava/lang/String; = "READ"

.field private final static REMOVE:Ljava/lang/String; = "REMOVE"

.field final static VERSION_1:Ljava/lang/String; = "1"

.field private final appVersion:I

.field private final cleanupRunnable:Ljava/lang/Runnable;

.field closed:Z

.field final directory:Ljava/io/File;

.field private final executor:Ljava/util/concurrent/Executor;

.field final fileSystem:Lokhttp3/internal/io/FileSystem;

.field hasJournalErrors:Z

.field initialized:Z

.field private final journalFile:Ljava/io/File;

.field private final journalFileBackup:Ljava/io/File;

.field private final journalFileTmp:Ljava/io/File;

.field journalWriter:Lokio/BufferedSink;

.field final lruEntries:Ljava/util/LinkedHashMap;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/LinkedHashMap<",
      "Ljava/lang/String;",
      "Lokhttp3/internal/cache/DiskLruCache$Entry;",
      ">;"
    }
  .end annotation
.end field

.field private maxSize:J

.field mostRecentRebuildFailed:Z

.field mostRecentTrimFailed:Z

.field private nextSequenceNumber:J

.field redundantOpCount:I

.field private size:J

.field final valueCount:I

.method static constructor <clinit>()V
  .registers 3
  .line 1
    const-class v0, Lokhttp3/internal/cache/DiskLruCache;
    const-string v0, "[a-z0-9_-]{1,120}"
  .line 2
    invoke-static { v0 }, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    move-result-object v0
    sput-object v0, Lokhttp3/internal/cache/DiskLruCache;->LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;
    return-void
.end method

.method constructor <init>(Lokhttp3/internal/io/FileSystem;Ljava/io/File;IIJLjava/util/concurrent/Executor;)V
  .registers 14
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const-wide/16 v0, 0
  .line 2
    iput-wide v0, p0, Lokhttp3/internal/cache/DiskLruCache;->size:J
  .line 3
    new-instance v2, Ljava/util/LinkedHashMap;
    const/4 v3, 0
    const/high16 v4, 16192
    const/4 v5, 1
    invoke-direct { v2, v3, v4, v5 }, Ljava/util/LinkedHashMap;-><init>(IFZ)V
    iput-object v2, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;
  .line 4
    iput-wide v0, p0, Lokhttp3/internal/cache/DiskLruCache;->nextSequenceNumber:J
  .line 5
    new-instance v0, Lokhttp3/internal/cache/DiskLruCache$1;
    invoke-direct { v0, p0 }, Lokhttp3/internal/cache/DiskLruCache$1;-><init>(Lokhttp3/internal/cache/DiskLruCache;)V
    iput-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;
  .line 6
    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;
  .line 7
    iput-object p2, p0, Lokhttp3/internal/cache/DiskLruCache;->directory:Ljava/io/File;
  .line 8
    iput p3, p0, Lokhttp3/internal/cache/DiskLruCache;->appVersion:I
  .line 9
    new-instance p1, Ljava/io/File;
    const-string p3, "journal"
    invoke-direct { p1, p2, p3 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;
  .line 10
    new-instance p1, Ljava/io/File;
    const-string p3, "journal.tmp"
    invoke-direct { p1, p2, p3 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFileTmp:Ljava/io/File;
  .line 11
    new-instance p1, Ljava/io/File;
    const-string p3, "journal.bkp"
    invoke-direct { p1, p2, p3 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFileBackup:Ljava/io/File;
  .line 12
    iput p4, p0, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I
  .line 13
    iput-wide p5, p0, Lokhttp3/internal/cache/DiskLruCache;->maxSize:J
  .line 14
    iput-object p7, p0, Lokhttp3/internal/cache/DiskLruCache;->executor:Ljava/util/concurrent/Executor;
    return-void
.end method

.method private declared-synchronized checkNotClosed()V
  .catchall { :L0 .. :L1 } :L3
  .catchall { :L2 .. :L3 } :L3
  .registers 3
    monitor-enter p0
  :L0
  .line 1
    invoke-virtual { p0 }, Lokhttp3/internal/cache/DiskLruCache;->isClosed()Z
    move-result v0
  :L1
    if-nez v0, :L2
  .line 2
    monitor-exit p0
    return-void
  :L2
  .line 3
    new-instance v0, Ljava/lang/IllegalStateException;
    const-string v1, "cache is closed"
    invoke-direct { v0, v1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
  :L3
    move-exception v0
    monitor-exit p0
    throw v0
.end method

.method public static create(Lokhttp3/internal/io/FileSystem;Ljava/io/File;IIJ)Lokhttp3/internal/cache/DiskLruCache;
  .registers 16
    const-wide/16 v0, 0
    cmp-long v2, p4, v0
    if-lez v2, :L1
    if-lez p3, :L0
  .line 1
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;
    const/4 v1, 0
    const/4 v2, 1
    const-wide/16 v3, 60
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;
    invoke-direct { v6 }, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V
    const/4 v0, 1
    const-string v7, "OkHttp DiskLruCache"
  .line 2
    invoke-static { v7, v0 }, Lokhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;
    move-result-object v7
    move-object v0, v9
    invoke-direct/range { v0 .. v7 }, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
  .line 3
    new-instance v0, Lokhttp3/internal/cache/DiskLruCache;
    move-object v2, v0
    move-object v3, p0
    move-object v4, p1
    move v5, p2
    move v6, p3
    move-wide v7, p4
    invoke-direct/range { v2 .. v9 }, Lokhttp3/internal/cache/DiskLruCache;-><init>(Lokhttp3/internal/io/FileSystem;Ljava/io/File;IIJLjava/util/concurrent/Executor;)V
    return-object v0
  :L0
  .line 4
    new-instance v0, Ljava/lang/IllegalArgumentException;
    const-string v1, "valueCount <= 0"
    invoke-direct { v0, v1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
  :L1
  .line 5
    new-instance v0, Ljava/lang/IllegalArgumentException;
    const-string v1, "maxSize <= 0"
    invoke-direct { v0, v1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method private newJournalWriter()Lokio/BufferedSink;
  .registers 3
  .line 1
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;
    invoke-interface { v0, v1 }, Lokhttp3/internal/io/FileSystem;->appendingSink(Ljava/io/File;)Lokio/Sink;
    move-result-object v0
  .line 2
    new-instance v1, Lokhttp3/internal/cache/DiskLruCache$2;
    invoke-direct { v1, p0, v0 }, Lokhttp3/internal/cache/DiskLruCache$2;-><init>(Lokhttp3/internal/cache/DiskLruCache;Lokio/Sink;)V
  .line 3
    invoke-static { v1 }, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;
    move-result-object v0
    return-object v0
.end method

.method private processJournal()V
  .registers 9
  .line 1
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFileTmp:Ljava/io/File;
    invoke-interface { v0, v1 }, Lokhttp3/internal/io/FileSystem;->delete(Ljava/io/File;)V
  .line 2
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;
    invoke-virtual { v0 }, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;
    move-result-object v0
    invoke-interface { v0 }, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L5
  .line 3
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lokhttp3/internal/cache/DiskLruCache$Entry;
  .line 4
    iget-object v2, v1, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;
    const/4 v3, 0
    if-nez v2, :L2
  :L1
  .line 5
    iget v2, p0, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I
    if-ge v3, v2, :L0
  .line 6
    iget-wide v4, p0, Lokhttp3/internal/cache/DiskLruCache;->size:J
    iget-object v2, v1, Lokhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J
    aget-wide v6, v2, v3
    add-long/2addr v4, v6
    iput-wide v4, p0, Lokhttp3/internal/cache/DiskLruCache;->size:J
    add-int/lit8 v3, v3, 1
    goto :L1
  :L2
    const/4 v2, 0
  .line 7
    iput-object v2, v1, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;
  :L3
  .line 8
    iget v2, p0, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I
    if-ge v3, v2, :L4
  .line 9
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;
    iget-object v4, v1, Lokhttp3/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;
    aget-object v4, v4, v3
    invoke-interface { v2, v4 }, Lokhttp3/internal/io/FileSystem;->delete(Ljava/io/File;)V
  .line 10
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;
    iget-object v4, v1, Lokhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;
    aget-object v4, v4, v3
    invoke-interface { v2, v4 }, Lokhttp3/internal/io/FileSystem;->delete(Ljava/io/File;)V
    add-int/lit8 v3, v3, 1
    goto :L3
  :L4
  .line 11
    invoke-interface { v0 }, Ljava/util/Iterator;->remove()V
    goto :L0
  :L5
    return-void
.end method

.method private readJournal()V
  .catchall { :L0 .. :L1 } :L8
  .catch Ljava/io/EOFException; { :L2 .. :L3 } :L4
  .catchall { :L2 .. :L3 } :L8
  .catchall { :L4 .. :L6 } :L8
  .catchall { :L7 .. :L8 } :L8
  .registers 10
    const-string v0, ", "
  .line 1
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;
    invoke-interface { v1, v2 }, Lokhttp3/internal/io/FileSystem;->source(Ljava/io/File;)Lokio/Source;
    move-result-object v1
    invoke-static { v1 }, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;
    move-result-object v1
  :L0
  .line 2
    invoke-interface { v1 }, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;
    move-result-object v2
  .line 3
    invoke-interface { v1 }, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;
    move-result-object v3
  .line 4
    invoke-interface { v1 }, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;
    move-result-object v4
  .line 5
    invoke-interface { v1 }, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;
    move-result-object v5
  .line 6
    invoke-interface { v1 }, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;
    move-result-object v6
    const-string v7, "libcore.io.DiskLruCache"
  .line 7
    invoke-virtual { v7, v2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v7
    if-eqz v7, :L7
    const-string v7, "1"
  .line 8
    invoke-virtual { v7, v3 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v7
    if-eqz v7, :L7
    iget v7, p0, Lokhttp3/internal/cache/DiskLruCache;->appVersion:I
  .line 9
    invoke-static { v7 }, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    move-result-object v7
    invoke-virtual { v7, v4 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v4
    if-eqz v4, :L7
    iget v4, p0, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I
  .line 10
    invoke-static { v4 }, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    move-result-object v4
    invoke-virtual { v4, v5 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v4
    if-eqz v4, :L7
    const-string v4, ""
  .line 11
    invoke-virtual { v4, v6 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v4
  :L1
    if-eqz v4, :L7
    const/4 v0, 0
  :L2
  .line 12
    invoke-interface { v1 }, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;
    move-result-object v2
    invoke-direct { p0, v2 }, Lokhttp3/internal/cache/DiskLruCache;->readJournalLine(Ljava/lang/String;)V
  :L3
    add-int/lit8 v0, v0, 1
    goto :L2
  :L4
  .line 13
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;
    invoke-virtual { v2 }, Ljava/util/LinkedHashMap;->size()I
    move-result v2
    sub-int/2addr v0, v2
    iput v0, p0, Lokhttp3/internal/cache/DiskLruCache;->redundantOpCount:I
  .line 14
    invoke-interface { v1 }, Lokio/BufferedSource;->exhausted()Z
    move-result v0
    if-nez v0, :L5
  .line 15
    invoke-virtual { p0 }, Lokhttp3/internal/cache/DiskLruCache;->rebuildJournal()V
    goto :L6
  :L5
  .line 16
    invoke-direct { p0 }, Lokhttp3/internal/cache/DiskLruCache;->newJournalWriter()Lokio/BufferedSink;
    move-result-object v0
    iput-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;
  :L6
  .line 17
    invoke-static { v1 }, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V
    return-void
  :L7
  .line 18
    new-instance v4, Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;
    invoke-direct { v7 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v8, "unexpected journal header: ["
    invoke-virtual { v7, v8 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v7, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v7, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v7, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v7, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v7, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v7, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v7, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, "]"
    invoke-virtual { v7, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v7 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-direct { v4, v0 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw v4
  :L8
    move-exception v0
  .line 19
    invoke-static { v1 }, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V
    goto :L10
  :L9
    throw v0
  :L10
    goto :L9
.end method

.method private readJournalLine(Ljava/lang/String;)V
  .registers 9
    const/16 v0, 32
  .line 1
    invoke-virtual { p1, v0 }, Ljava/lang/String;->indexOf(I)I
    move-result v1
    const-string v2, "unexpected journal line: "
    const/4 v3, -1
    if-eq v1, v3, :L7
    add-int/lit8 v4, v1, 1
  .line 2
    invoke-virtual { p1, v0, v4 }, Ljava/lang/String;->indexOf(II)I
    move-result v0
    if-ne v0, v3, :L0
  .line 3
    invoke-virtual { p1, v4 }, Ljava/lang/String;->substring(I)Ljava/lang/String;
    move-result-object v4
    const/4 v5, 6
    if-ne v1, v5, :L1
    const-string v5, "REMOVE"
  .line 4
    invoke-virtual { p1, v5 }, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v5
    if-eqz v5, :L1
  .line 5
    iget-object p1, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;
    invoke-virtual { p1, v4 }, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    return-void
  :L0
  .line 6
    invoke-virtual { p1, v4, v0 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v4
  :L1
  .line 7
    iget-object v5, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;
    invoke-virtual { v5, v4 }, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Lokhttp3/internal/cache/DiskLruCache$Entry;
    if-nez v5, :L2
  .line 8
    new-instance v5, Lokhttp3/internal/cache/DiskLruCache$Entry;
    invoke-direct { v5, p0, v4 }, Lokhttp3/internal/cache/DiskLruCache$Entry;-><init>(Lokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;)V
  .line 9
    iget-object v6, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;
    invoke-virtual { v6, v4, v5 }, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L2
    const/4 v4, 5
    if-eq v0, v3, :L3
    if-ne v1, v4, :L3
    const-string v6, "CLEAN"
  .line 10
    invoke-virtual { p1, v6 }, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v6
    if-eqz v6, :L3
    const/4 v1, 1
    add-int/2addr v0, v1
  .line 11
    invoke-virtual { p1, v0 }, Ljava/lang/String;->substring(I)Ljava/lang/String;
    move-result-object p1
    const-string v0, " "
    invoke-virtual { p1, v0 }, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object p1
  .line 12
    iput-boolean v1, v5, Lokhttp3/internal/cache/DiskLruCache$Entry;->readable:Z
    const/4 v0, 0
  .line 13
    iput-object v0, v5, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;
  .line 14
    invoke-virtual { v5, p1 }, Lokhttp3/internal/cache/DiskLruCache$Entry;->setLengths([Ljava/lang/String;)V
    goto :L5
  :L3
    if-ne v0, v3, :L4
    if-ne v1, v4, :L4
    const-string v4, "DIRTY"
  .line 15
    invoke-virtual { p1, v4 }, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v4
    if-eqz v4, :L4
  .line 16
    new-instance p1, Lokhttp3/internal/cache/DiskLruCache$Editor;
    invoke-direct { p1, p0, v5 }, Lokhttp3/internal/cache/DiskLruCache$Editor;-><init>(Lokhttp3/internal/cache/DiskLruCache;Lokhttp3/internal/cache/DiskLruCache$Entry;)V
    iput-object p1, v5, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;
    goto :L5
  :L4
    if-ne v0, v3, :L6
    const/4 v0, 4
    if-ne v1, v0, :L6
    const-string v0, "READ"
  .line 17
    invoke-virtual { p1, v0 }, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :L6
  :L5
    return-void
  :L6
  .line 18
    new-instance v0, Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw v0
  :L7
  .line 19
    new-instance v0, Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method private validateKey(Ljava/lang/String;)V
  .registers 5
  .line 1
    sget-object v0, Lokhttp3/internal/cache/DiskLruCache;->LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;
    invoke-virtual { v0, p1 }, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    move-result-object v0
  .line 2
    invoke-virtual { v0 }, Ljava/util/regex/Matcher;->matches()Z
    move-result v0
    if-eqz v0, :L0
    return-void
  :L0
  .line 3
    new-instance v0, Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "keys must match regex [a-z0-9_-]{1,120}: \""
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p1, "\""
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public declared-synchronized close()V
  .catchall { :L0 .. :L5 } :L8
  .catchall { :L6 .. :L7 } :L8
  .registers 7
    monitor-enter p0
  :L0
  .line 1
    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->initialized:Z
    const/4 v1, 1
    if-eqz v0, :L6
    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->closed:Z
    if-eqz v0, :L1
    goto :L6
  :L1
  .line 2
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;
    invoke-virtual { v0 }, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;
    move-result-object v0
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;
    invoke-virtual { v2 }, Ljava/util/LinkedHashMap;->size()I
    move-result v2
    new-array v2, v2, [Lokhttp3/internal/cache/DiskLruCache$Entry;
    invoke-interface { v0, v2 }, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    move-result-object v0
    check-cast v0, [Lokhttp3/internal/cache/DiskLruCache$Entry;
    array-length v2, v0
    const/4 v3, 0
  :L2
    if-ge v3, v2, :L4
    aget-object v4, v0, v3
  .line 3
    iget-object v5, v4, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;
    if-eqz v5, :L3
  .line 4
    iget-object v4, v4, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;
    invoke-virtual { v4 }, Lokhttp3/internal/cache/DiskLruCache$Editor;->abort()V
  :L3
    add-int/lit8 v3, v3, 1
    goto :L2
  :L4
  .line 5
    invoke-virtual { p0 }, Lokhttp3/internal/cache/DiskLruCache;->trimToSize()V
  .line 6
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;
    invoke-interface { v0 }, Lokio/Sink;->close()V
    const/4 v0, 0
  .line 7
    iput-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;
  .line 8
    iput-boolean v1, p0, Lokhttp3/internal/cache/DiskLruCache;->closed:Z
  :L5
  .line 9
    monitor-exit p0
    return-void
  :L6
  .line 10
    iput-boolean v1, p0, Lokhttp3/internal/cache/DiskLruCache;->closed:Z
  :L7
  .line 11
    monitor-exit p0
    return-void
  :L8
    move-exception v0
    monitor-exit p0
    goto :L10
  :L9
    throw v0
  :L10
    goto :L9
.end method

.method declared-synchronized completeEdit(Lokhttp3/internal/cache/DiskLruCache$Editor;Z)V
  .catchall { :L0 .. :L2 } :L14
  .catchall { :L4 .. :L12 } :L14
  .catchall { :L13 .. :L14 } :L14
  .registers 12
    monitor-enter p0
  :L0
  .line 1
    iget-object v0, p1, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;
  .line 2
    iget-object v1, v0, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;
    if-ne v1, p1, :L13
    const/4 v1, 0
    if-eqz p2, :L5
  .line 3
    iget-boolean v2, v0, Lokhttp3/internal/cache/DiskLruCache$Entry;->readable:Z
    if-nez v2, :L5
    const/4 v2, 0
  :L1
  .line 4
    iget v3, p0, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I
    if-ge v2, v3, :L5
  .line 5
    iget-object v3, p1, Lokhttp3/internal/cache/DiskLruCache$Editor;->written:[Z
    aget-boolean v3, v3, v2
    if-eqz v3, :L4
  .line 6
    iget-object v3, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;
    iget-object v4, v0, Lokhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;
    aget-object v4, v4, v2
    invoke-interface { v3, v4 }, Lokhttp3/internal/io/FileSystem;->exists(Ljava/io/File;)Z
    move-result v3
    if-nez v3, :L3
  .line 7
    invoke-virtual { p1 }, Lokhttp3/internal/cache/DiskLruCache$Editor;->abort()V
  :L2
  .line 8
    monitor-exit p0
    return-void
  :L3
    add-int/lit8 v2, v2, 1
    goto :L1
  :L4
  .line 9
    invoke-virtual { p1 }, Lokhttp3/internal/cache/DiskLruCache$Editor;->abort()V
  .line 10
    new-instance p1, Ljava/lang/IllegalStateException;
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "Newly created entry didn't create value for index "
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
  :L5
  .line 11
    iget p1, p0, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I
    if-ge v1, p1, :L8
  .line 12
    iget-object p1, v0, Lokhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;
    aget-object p1, p1, v1
    if-eqz p2, :L6
  .line 13
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;
    invoke-interface { v2, p1 }, Lokhttp3/internal/io/FileSystem;->exists(Ljava/io/File;)Z
    move-result v2
    if-eqz v2, :L7
  .line 14
    iget-object v2, v0, Lokhttp3/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;
    aget-object v2, v2, v1
  .line 15
    iget-object v3, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;
    invoke-interface { v3, p1, v2 }, Lokhttp3/internal/io/FileSystem;->rename(Ljava/io/File;Ljava/io/File;)V
  .line 16
    iget-object p1, v0, Lokhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J
    aget-wide v3, p1, v1
  .line 17
    iget-object p1, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;
    invoke-interface { p1, v2 }, Lokhttp3/internal/io/FileSystem;->size(Ljava/io/File;)J
    move-result-wide v5
  .line 18
    iget-object p1, v0, Lokhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J
    aput-wide v5, p1, v1
  .line 19
    iget-wide v7, p0, Lokhttp3/internal/cache/DiskLruCache;->size:J
    sub-long/2addr v7, v3
    add-long/2addr v7, v5
    iput-wide v7, p0, Lokhttp3/internal/cache/DiskLruCache;->size:J
    goto :L7
  :L6
  .line 20
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;
    invoke-interface { v2, p1 }, Lokhttp3/internal/io/FileSystem;->delete(Ljava/io/File;)V
  :L7
    add-int/lit8 v1, v1, 1
    goto :L5
  :L8
  .line 21
    iget p1, p0, Lokhttp3/internal/cache/DiskLruCache;->redundantOpCount:I
    const/4 v1, 1
    add-int/2addr p1, v1
    iput p1, p0, Lokhttp3/internal/cache/DiskLruCache;->redundantOpCount:I
    const/4 p1, 0
  .line 22
    iput-object p1, v0, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;
  .line 23
    iget-boolean p1, v0, Lokhttp3/internal/cache/DiskLruCache$Entry;->readable:Z
    or-int/2addr p1, p2
    const/16 v2, 10
    const/16 v3, 32
    if-eqz p1, :L9
  .line 24
    iput-boolean v1, v0, Lokhttp3/internal/cache/DiskLruCache$Entry;->readable:Z
  .line 25
    iget-object p1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;
    const-string v1, "CLEAN"
    invoke-interface { p1, v1 }, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
    move-result-object p1
    invoke-interface { p1, v3 }, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;
  .line 26
    iget-object p1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;
    iget-object v1, v0, Lokhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-interface { p1, v1 }, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
  .line 27
    iget-object p1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;
    invoke-virtual { v0, p1 }, Lokhttp3/internal/cache/DiskLruCache$Entry;->writeLengths(Lokio/BufferedSink;)V
  .line 28
    iget-object p1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;
    invoke-interface { p1, v2 }, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;
    if-eqz p2, :L10
  .line 29
    iget-wide p1, p0, Lokhttp3/internal/cache/DiskLruCache;->nextSequenceNumber:J
    const-wide/16 v1, 1
    add-long/2addr v1, p1
    iput-wide v1, p0, Lokhttp3/internal/cache/DiskLruCache;->nextSequenceNumber:J
    iput-wide p1, v0, Lokhttp3/internal/cache/DiskLruCache$Entry;->sequenceNumber:J
    goto :L10
  :L9
  .line 30
    iget-object p1, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;
    iget-object p2, v0, Lokhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-virtual { p1, p2 }, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
  .line 31
    iget-object p1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;
    const-string p2, "REMOVE"
    invoke-interface { p1, p2 }, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
    move-result-object p1
    invoke-interface { p1, v3 }, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;
  .line 32
    iget-object p1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;
    iget-object p2, v0, Lokhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-interface { p1, p2 }, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
  .line 33
    iget-object p1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;
    invoke-interface { p1, v2 }, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;
  :L10
  .line 34
    iget-object p1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;
    invoke-interface { p1 }, Lokio/BufferedSink;->flush()V
  .line 35
    iget-wide p1, p0, Lokhttp3/internal/cache/DiskLruCache;->size:J
    iget-wide v0, p0, Lokhttp3/internal/cache/DiskLruCache;->maxSize:J
    cmp-long v2, p1, v0
    if-gtz v2, :L11
    invoke-virtual { p0 }, Lokhttp3/internal/cache/DiskLruCache;->journalRebuildRequired()Z
    move-result p1
    if-eqz p1, :L12
  :L11
  .line 36
    iget-object p1, p0, Lokhttp3/internal/cache/DiskLruCache;->executor:Ljava/util/concurrent/Executor;
    iget-object p2, p0, Lokhttp3/internal/cache/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;
    invoke-interface { p1, p2 }, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
  :L12
  .line 37
    monitor-exit p0
    return-void
  :L13
  .line 38
    new-instance p1, Ljava/lang/IllegalStateException;
    invoke-direct { p1 }, Ljava/lang/IllegalStateException;-><init>()V
    throw p1
  :L14
    move-exception p1
    monitor-exit p0
    goto :L16
  :L15
    throw p1
  :L16
    goto :L15
.end method

.method public delete()V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Lokhttp3/internal/cache/DiskLruCache;->close()V
  .line 2
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->directory:Ljava/io/File;
    invoke-interface { v0, v1 }, Lokhttp3/internal/io/FileSystem;->deleteContents(Ljava/io/File;)V
    return-void
.end method

.method public edit(Ljava/lang/String;)Lokhttp3/internal/cache/DiskLruCache$Editor;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
  .registers 4
    const-wide/16 v0, -1
  .line 1
    invoke-virtual { p0, p1, v0, v1 }, Lokhttp3/internal/cache/DiskLruCache;->edit(Ljava/lang/String;J)Lokhttp3/internal/cache/DiskLruCache$Editor;
    move-result-object p1
    return-object p1
.end method

.method declared-synchronized edit(Ljava/lang/String;J)Lokhttp3/internal/cache/DiskLruCache$Editor;
  .catchall { :L0 .. :L1 } :L15
  .catchall { :L4 .. :L5 } :L15
  .catchall { :L6 .. :L8 } :L15
  .catchall { :L10 .. :L12 } :L15
  .catchall { :L13 .. :L14 } :L15
  .registers 9
    monitor-enter p0
  :L0
  .line 2
    invoke-virtual { p0 }, Lokhttp3/internal/cache/DiskLruCache;->initialize()V
  .line 3
    invoke-direct { p0 }, Lokhttp3/internal/cache/DiskLruCache;->checkNotClosed()V
  .line 4
    invoke-direct { p0, p1 }, Lokhttp3/internal/cache/DiskLruCache;->validateKey(Ljava/lang/String;)V
  .line 5
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;
    invoke-virtual { v0, p1 }, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lokhttp3/internal/cache/DiskLruCache$Entry;
    const-wide/16 v1, -1
    const/4 v3, 0
    cmp-long v4, p2, v1
    if-eqz v4, :L3
    if-eqz v0, :L2
  .line 6
    iget-wide v1, v0, Lokhttp3/internal/cache/DiskLruCache$Entry;->sequenceNumber:J
  :L1
    cmp-long v4, v1, p2
    if-eqz v4, :L3
  :L2
  .line 7
    monitor-exit p0
    return-object v3
  :L3
    if-eqz v0, :L6
  :L4
  .line 8
    iget-object p2, v0, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;
  :L5
    if-eqz p2, :L6
  .line 9
    monitor-exit p0
    return-object v3
  :L6
  .line 10
    iget-boolean p2, p0, Lokhttp3/internal/cache/DiskLruCache;->mostRecentTrimFailed:Z
    if-nez p2, :L13
    iget-boolean p2, p0, Lokhttp3/internal/cache/DiskLruCache;->mostRecentRebuildFailed:Z
    if-eqz p2, :L7
    goto :L13
  :L7
  .line 11
    iget-object p2, p0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;
    const-string p3, "DIRTY"
    invoke-interface { p2, p3 }, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
    move-result-object p2
    const/16 p3, 32
    invoke-interface { p2, p3 }, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;
    move-result-object p2
    invoke-interface { p2, p1 }, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
    move-result-object p2
    const/16 p3, 10
    invoke-interface { p2, p3 }, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;
  .line 12
    iget-object p2, p0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;
    invoke-interface { p2 }, Lokio/BufferedSink;->flush()V
  .line 13
    iget-boolean p2, p0, Lokhttp3/internal/cache/DiskLruCache;->hasJournalErrors:Z
  :L8
    if-eqz p2, :L9
  .line 14
    monitor-exit p0
    return-object v3
  :L9
    if-nez v0, :L11
  :L10
  .line 15
    new-instance v0, Lokhttp3/internal/cache/DiskLruCache$Entry;
    invoke-direct { v0, p0, p1 }, Lokhttp3/internal/cache/DiskLruCache$Entry;-><init>(Lokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;)V
  .line 16
    iget-object p2, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;
    invoke-virtual { p2, p1, v0 }, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L11
  .line 17
    new-instance p1, Lokhttp3/internal/cache/DiskLruCache$Editor;
    invoke-direct { p1, p0, v0 }, Lokhttp3/internal/cache/DiskLruCache$Editor;-><init>(Lokhttp3/internal/cache/DiskLruCache;Lokhttp3/internal/cache/DiskLruCache$Entry;)V
  .line 18
    iput-object p1, v0, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;
  :L12
  .line 19
    monitor-exit p0
    return-object p1
  :L13
  .line 20
    iget-object p1, p0, Lokhttp3/internal/cache/DiskLruCache;->executor:Ljava/util/concurrent/Executor;
    iget-object p2, p0, Lokhttp3/internal/cache/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;
    invoke-interface { p1, p2 }, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
  :L14
  .line 21
    monitor-exit p0
    return-object v3
  :L15
    move-exception p1
    monitor-exit p0
    throw p1
.end method

.method public declared-synchronized evictAll()V
  .catchall { :L0 .. :L3 } :L4
  .registers 6
    monitor-enter p0
  :L0
  .line 1
    invoke-virtual { p0 }, Lokhttp3/internal/cache/DiskLruCache;->initialize()V
  .line 2
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;
    invoke-virtual { v0 }, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;
    move-result-object v0
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;
    invoke-virtual { v1 }, Ljava/util/LinkedHashMap;->size()I
    move-result v1
    new-array v1, v1, [Lokhttp3/internal/cache/DiskLruCache$Entry;
    invoke-interface { v0, v1 }, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    move-result-object v0
    check-cast v0, [Lokhttp3/internal/cache/DiskLruCache$Entry;
    array-length v1, v0
    const/4 v2, 0
    const/4 v3, 0
  :L1
    if-ge v3, v1, :L2
    aget-object v4, v0, v3
  .line 3
    invoke-virtual { p0, v4 }, Lokhttp3/internal/cache/DiskLruCache;->removeEntry(Lokhttp3/internal/cache/DiskLruCache$Entry;)Z
    add-int/lit8 v3, v3, 1
    goto :L1
  :L2
  .line 4
    iput-boolean v2, p0, Lokhttp3/internal/cache/DiskLruCache;->mostRecentTrimFailed:Z
  :L3
  .line 5
    monitor-exit p0
    return-void
  :L4
    move-exception v0
    monitor-exit p0
    goto :L6
  :L5
    throw v0
  :L6
    goto :L5
.end method

.method public declared-synchronized flush()V
  .catchall { :L0 .. :L1 } :L4
  .catchall { :L2 .. :L3 } :L4
  .registers 2
    monitor-enter p0
  :L0
  .line 1
    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->initialized:Z
  :L1
    if-nez v0, :L2
    monitor-exit p0
    return-void
  :L2
  .line 2
    invoke-direct { p0 }, Lokhttp3/internal/cache/DiskLruCache;->checkNotClosed()V
  .line 3
    invoke-virtual { p0 }, Lokhttp3/internal/cache/DiskLruCache;->trimToSize()V
  .line 4
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;
    invoke-interface { v0 }, Lokio/BufferedSink;->flush()V
  :L3
  .line 5
    monitor-exit p0
    return-void
  :L4
    move-exception v0
    monitor-exit p0
    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lokhttp3/internal/cache/DiskLruCache$Snapshot;
  .catchall { :L0 .. :L2 } :L6
  .catchall { :L3 .. :L4 } :L6
  .registers 5
    monitor-enter p0
  :L0
  .line 1
    invoke-virtual { p0 }, Lokhttp3/internal/cache/DiskLruCache;->initialize()V
  .line 2
    invoke-direct { p0 }, Lokhttp3/internal/cache/DiskLruCache;->checkNotClosed()V
  .line 3
    invoke-direct { p0, p1 }, Lokhttp3/internal/cache/DiskLruCache;->validateKey(Ljava/lang/String;)V
  .line 4
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;
    invoke-virtual { v0, p1 }, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lokhttp3/internal/cache/DiskLruCache$Entry;
    const/4 v1, 0
    if-eqz v0, :L5
  .line 5
    iget-boolean v2, v0, Lokhttp3/internal/cache/DiskLruCache$Entry;->readable:Z
    if-nez v2, :L1
    goto :L5
  :L1
  .line 6
    invoke-virtual { v0 }, Lokhttp3/internal/cache/DiskLruCache$Entry;->snapshot()Lokhttp3/internal/cache/DiskLruCache$Snapshot;
    move-result-object v0
  :L2
    if-nez v0, :L3
  .line 7
    monitor-exit p0
    return-object v1
  :L3
  .line 8
    iget v1, p0, Lokhttp3/internal/cache/DiskLruCache;->redundantOpCount:I
    add-int/lit8 v1, v1, 1
    iput v1, p0, Lokhttp3/internal/cache/DiskLruCache;->redundantOpCount:I
  .line 9
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;
    const-string v2, "READ"
    invoke-interface { v1, v2 }, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
    move-result-object v1
    const/16 v2, 32
    invoke-interface { v1, v2 }, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;
    move-result-object v1
    invoke-interface { v1, p1 }, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
    move-result-object p1
    const/16 v1, 10
    invoke-interface { p1, v1 }, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;
  .line 10
    invoke-virtual { p0 }, Lokhttp3/internal/cache/DiskLruCache;->journalRebuildRequired()Z
    move-result p1
    if-eqz p1, :L4
  .line 11
    iget-object p1, p0, Lokhttp3/internal/cache/DiskLruCache;->executor:Ljava/util/concurrent/Executor;
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;
    invoke-interface { p1, v1 }, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
  :L4
  .line 12
    monitor-exit p0
    return-object v0
  :L5
  .line 13
    monitor-exit p0
    return-object v1
  :L6
    move-exception p1
    monitor-exit p0
    throw p1
.end method

.method public getDirectory()Ljava/io/File;
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->directory:Ljava/io/File;
    return-object v0
.end method

.method public declared-synchronized getMaxSize()J
  .catchall { :L0 .. :L1 } :L2
  .registers 3
    monitor-enter p0
  :L0
  .line 1
    iget-wide v0, p0, Lokhttp3/internal/cache/DiskLruCache;->maxSize:J
  :L1
    monitor-exit p0
    return-wide v0
  :L2
    move-exception v0
    monitor-exit p0
    throw v0
.end method

.method public declared-synchronized initialize()V
  .catchall { :L0 .. :L1 } :L16
  .catchall { :L2 .. :L5 } :L16
  .catch Ljava/io/IOException; { :L6 .. :L7 } :L8
  .catchall { :L6 .. :L7 } :L16
  .catchall { :L9 .. :L10 } :L16
  .catchall { :L11 .. :L12 } :L13
  .catchall { :L12 .. :L15 } :L16
  .registers 7
    monitor-enter p0
  :L0
  .line 1
    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->initialized:Z
  :L1
    if-eqz v0, :L2
  .line 2
    monitor-exit p0
    return-void
  :L2
  .line 3
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFileBackup:Ljava/io/File;
    invoke-interface { v0, v1 }, Lokhttp3/internal/io/FileSystem;->exists(Ljava/io/File;)Z
    move-result v0
    if-eqz v0, :L4
  .line 4
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;
    invoke-interface { v0, v1 }, Lokhttp3/internal/io/FileSystem;->exists(Ljava/io/File;)Z
    move-result v0
    if-eqz v0, :L3
  .line 5
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFileBackup:Ljava/io/File;
    invoke-interface { v0, v1 }, Lokhttp3/internal/io/FileSystem;->delete(Ljava/io/File;)V
    goto :L4
  :L3
  .line 6
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFileBackup:Ljava/io/File;
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;
    invoke-interface { v0, v1, v2 }, Lokhttp3/internal/io/FileSystem;->rename(Ljava/io/File;Ljava/io/File;)V
  :L4
  .line 7
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;
    invoke-interface { v0, v1 }, Lokhttp3/internal/io/FileSystem;->exists(Ljava/io/File;)Z
    move-result v0
  :L5
    const/4 v1, 1
    if-eqz v0, :L14
  :L6
  .line 8
    invoke-direct { p0 }, Lokhttp3/internal/cache/DiskLruCache;->readJournal()V
  .line 9
    invoke-direct { p0 }, Lokhttp3/internal/cache/DiskLruCache;->processJournal()V
  .line 10
    iput-boolean v1, p0, Lokhttp3/internal/cache/DiskLruCache;->initialized:Z
  :L7
  .line 11
    monitor-exit p0
    return-void
  :L8
    move-exception v0
  :L9
  .line 12
    invoke-static { }, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;
    move-result-object v2
    const/4 v3, 5
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "DiskLruCache "
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v5, p0, Lokhttp3/internal/cache/DiskLruCache;->directory:Ljava/io/File;
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v5, " is corrupt: "
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 13
    invoke-virtual { v0 }, Ljava/io/IOException;->getMessage()Ljava/lang/String;
    move-result-object v5
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v5, ", removing"
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
  .line 14
    invoke-virtual { v2, v3, v4, v0 }, Lokhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V
  :L10
    const/4 v0, 0
  :L11
  .line 15
    invoke-virtual { p0 }, Lokhttp3/internal/cache/DiskLruCache;->delete()V
  :L12
  .line 16
    iput-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->closed:Z
    goto :L14
  :L13
    move-exception v1
    iput-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->closed:Z
    throw v1
  :L14
  .line 17
    invoke-virtual { p0 }, Lokhttp3/internal/cache/DiskLruCache;->rebuildJournal()V
  .line 18
    iput-boolean v1, p0, Lokhttp3/internal/cache/DiskLruCache;->initialized:Z
  :L15
  .line 19
    monitor-exit p0
    return-void
  :L16
    move-exception v0
    monitor-exit p0
    throw v0
.end method

.method public declared-synchronized isClosed()Z
  .catchall { :L0 .. :L1 } :L2
  .registers 2
    monitor-enter p0
  :L0
  .line 1
    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->closed:Z
  :L1
    monitor-exit p0
    return v0
  :L2
    move-exception v0
    monitor-exit p0
    throw v0
.end method

.method journalRebuildRequired()Z
  .registers 3
  .line 1
    iget v0, p0, Lokhttp3/internal/cache/DiskLruCache;->redundantOpCount:I
    const/16 v1, 2000
    if-lt v0, v1, :L0
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;
  .line 2
    invoke-virtual { v1 }, Ljava/util/LinkedHashMap;->size()I
    move-result v1
    if-lt v0, v1, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method declared-synchronized rebuildJournal()V
  .catchall { :L0 .. :L2 } :L11
  .catchall { :L2 .. :L5 } :L9
  .catchall { :L6 .. :L8 } :L11
  .catchall { :L10 .. :L11 } :L11
  .registers 7
    monitor-enter p0
  :L0
  .line 1
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;
    if-eqz v0, :L1
  .line 2
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;
    invoke-interface { v0 }, Lokio/Sink;->close()V
  :L1
  .line 3
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFileTmp:Ljava/io/File;
    invoke-interface { v0, v1 }, Lokhttp3/internal/io/FileSystem;->sink(Ljava/io/File;)Lokio/Sink;
    move-result-object v0
    invoke-static { v0 }, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;
    move-result-object v0
  :L2
    const-string v1, "libcore.io.DiskLruCache"
  .line 4
    invoke-interface { v0, v1 }, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
    move-result-object v1
    const/16 v2, 10
    invoke-interface { v1, v2 }, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;
    const-string v1, "1"
  .line 5
    invoke-interface { v0, v1 }, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
    move-result-object v1
    invoke-interface { v1, v2 }, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;
  .line 6
    iget v1, p0, Lokhttp3/internal/cache/DiskLruCache;->appVersion:I
    int-to-long v3, v1
    invoke-interface { v0, v3, v4 }, Lokio/BufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;
    move-result-object v1
    invoke-interface { v1, v2 }, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;
  .line 7
    iget v1, p0, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I
    int-to-long v3, v1
    invoke-interface { v0, v3, v4 }, Lokio/BufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;
    move-result-object v1
    invoke-interface { v1, v2 }, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;
  .line 8
    invoke-interface { v0, v2 }, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;
  .line 9
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;
    invoke-virtual { v1 }, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;
    move-result-object v1
    invoke-interface { v1 }, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    move-result-object v1
  :L3
    invoke-interface { v1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v3
    if-eqz v3, :L6
    invoke-interface { v1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Lokhttp3/internal/cache/DiskLruCache$Entry;
  .line 10
    iget-object v4, v3, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;
    const/16 v5, 32
    if-eqz v4, :L4
    const-string v4, "DIRTY"
  .line 11
    invoke-interface { v0, v4 }, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
    move-result-object v4
    invoke-interface { v4, v5 }, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;
  .line 12
    iget-object v3, v3, Lokhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-interface { v0, v3 }, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
  .line 13
    invoke-interface { v0, v2 }, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;
    goto :L3
  :L4
    const-string v4, "CLEAN"
  .line 14
    invoke-interface { v0, v4 }, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
    move-result-object v4
    invoke-interface { v4, v5 }, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;
  .line 15
    iget-object v4, v3, Lokhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-interface { v0, v4 }, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
  .line 16
    invoke-virtual { v3, v0 }, Lokhttp3/internal/cache/DiskLruCache$Entry;->writeLengths(Lokio/BufferedSink;)V
  .line 17
    invoke-interface { v0, v2 }, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;
  :L5
    goto :L3
  :L6
  .line 18
    invoke-interface { v0 }, Lokio/Sink;->close()V
  .line 19
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;
    invoke-interface { v0, v1 }, Lokhttp3/internal/io/FileSystem;->exists(Ljava/io/File;)Z
    move-result v0
    if-eqz v0, :L7
  .line 20
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFileBackup:Ljava/io/File;
    invoke-interface { v0, v1, v2 }, Lokhttp3/internal/io/FileSystem;->rename(Ljava/io/File;Ljava/io/File;)V
  :L7
  .line 21
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFileTmp:Ljava/io/File;
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;
    invoke-interface { v0, v1, v2 }, Lokhttp3/internal/io/FileSystem;->rename(Ljava/io/File;Ljava/io/File;)V
  .line 22
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFileBackup:Ljava/io/File;
    invoke-interface { v0, v1 }, Lokhttp3/internal/io/FileSystem;->delete(Ljava/io/File;)V
  .line 23
    invoke-direct { p0 }, Lokhttp3/internal/cache/DiskLruCache;->newJournalWriter()Lokio/BufferedSink;
    move-result-object v0
    iput-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;
    const/4 v0, 0
  .line 24
    iput-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->hasJournalErrors:Z
  .line 25
    iput-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->mostRecentRebuildFailed:Z
  :L8
  .line 26
    monitor-exit p0
    return-void
  :L9
    move-exception v1
  :L10
  .line 27
    invoke-interface { v0 }, Lokio/Sink;->close()V
    throw v1
  :L11
    move-exception v0
    monitor-exit p0
    goto :L13
  :L12
    throw v0
  :L13
    goto :L12
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Z
  .catchall { :L0 .. :L1 } :L4
  .catchall { :L2 .. :L3 } :L4
  .registers 8
    monitor-enter p0
  :L0
  .line 1
    invoke-virtual { p0 }, Lokhttp3/internal/cache/DiskLruCache;->initialize()V
  .line 2
    invoke-direct { p0 }, Lokhttp3/internal/cache/DiskLruCache;->checkNotClosed()V
  .line 3
    invoke-direct { p0, p1 }, Lokhttp3/internal/cache/DiskLruCache;->validateKey(Ljava/lang/String;)V
  .line 4
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;
    invoke-virtual { v0, p1 }, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Lokhttp3/internal/cache/DiskLruCache$Entry;
  :L1
    const/4 v0, 0
    if-nez p1, :L2
  .line 5
    monitor-exit p0
    return v0
  :L2
  .line 6
    invoke-virtual { p0, p1 }, Lokhttp3/internal/cache/DiskLruCache;->removeEntry(Lokhttp3/internal/cache/DiskLruCache$Entry;)Z
    move-result p1
    if-eqz p1, :L3
  .line 7
    iget-wide v1, p0, Lokhttp3/internal/cache/DiskLruCache;->size:J
    iget-wide v3, p0, Lokhttp3/internal/cache/DiskLruCache;->maxSize:J
    cmp-long v5, v1, v3
    if-gtz v5, :L3
    iput-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->mostRecentTrimFailed:Z
  :L3
  .line 8
    monitor-exit p0
    return p1
  :L4
    move-exception p1
    monitor-exit p0
    throw p1
.end method

.method removeEntry(Lokhttp3/internal/cache/DiskLruCache$Entry;)Z
  .registers 8
  .line 1
    iget-object v0, p1, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Lokhttp3/internal/cache/DiskLruCache$Editor;->detach()V
  :L0
    const/4 v0, 0
  :L1
  .line 3
    iget v1, p0, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I
    if-ge v0, v1, :L2
  .line 4
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;
    iget-object v2, p1, Lokhttp3/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;
    aget-object v2, v2, v0
    invoke-interface { v1, v2 }, Lokhttp3/internal/io/FileSystem;->delete(Ljava/io/File;)V
  .line 5
    iget-wide v1, p0, Lokhttp3/internal/cache/DiskLruCache;->size:J
    iget-object v3, p1, Lokhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J
    aget-wide v4, v3, v0
    sub-long/2addr v1, v4
    iput-wide v1, p0, Lokhttp3/internal/cache/DiskLruCache;->size:J
    const-wide/16 v1, 0
  .line 6
    aput-wide v1, v3, v0
    add-int/lit8 v0, v0, 1
    goto :L1
  :L2
  .line 7
    iget v0, p0, Lokhttp3/internal/cache/DiskLruCache;->redundantOpCount:I
    const/4 v1, 1
    add-int/2addr v0, v1
    iput v0, p0, Lokhttp3/internal/cache/DiskLruCache;->redundantOpCount:I
  .line 8
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;
    const-string v2, "REMOVE"
    invoke-interface { v0, v2 }, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
    move-result-object v0
    const/16 v2, 32
    invoke-interface { v0, v2 }, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;
    move-result-object v0
    iget-object v2, p1, Lokhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-interface { v0, v2 }, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
    move-result-object v0
    const/16 v2, 10
    invoke-interface { v0, v2 }, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;
  .line 9
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;
    iget-object p1, p1, Lokhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-virtual { v0, p1 }, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
  .line 10
    invoke-virtual { p0 }, Lokhttp3/internal/cache/DiskLruCache;->journalRebuildRequired()Z
    move-result p1
    if-eqz p1, :L3
  .line 11
    iget-object p1, p0, Lokhttp3/internal/cache/DiskLruCache;->executor:Ljava/util/concurrent/Executor;
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;
    invoke-interface { p1, v0 }, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
  :L3
    return v1
.end method

.method public declared-synchronized setMaxSize(J)V
  .catchall { :L0 .. :L1 } :L2
  .registers 3
    monitor-enter p0
  :L0
  .line 1
    iput-wide p1, p0, Lokhttp3/internal/cache/DiskLruCache;->maxSize:J
  .line 2
    iget-boolean p1, p0, Lokhttp3/internal/cache/DiskLruCache;->initialized:Z
    if-eqz p1, :L1
  .line 3
    iget-object p1, p0, Lokhttp3/internal/cache/DiskLruCache;->executor:Ljava/util/concurrent/Executor;
    iget-object p2, p0, Lokhttp3/internal/cache/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;
    invoke-interface { p1, p2 }, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
  :L1
  .line 4
    monitor-exit p0
    return-void
  :L2
    move-exception p1
    monitor-exit p0
    throw p1
.end method

.method public declared-synchronized size()J
  .catchall { :L0 .. :L1 } :L2
  .registers 3
    monitor-enter p0
  :L0
  .line 1
    invoke-virtual { p0 }, Lokhttp3/internal/cache/DiskLruCache;->initialize()V
  .line 2
    iget-wide v0, p0, Lokhttp3/internal/cache/DiskLruCache;->size:J
  :L1
    monitor-exit p0
    return-wide v0
  :L2
    move-exception v0
    monitor-exit p0
    throw v0
.end method

.method public declared-synchronized snapshots()Ljava/util/Iterator;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Ljava/util/Iterator<",
      "Lokhttp3/internal/cache/DiskLruCache$Snapshot;",
      ">;"
    }
  .end annotation
  .catchall { :L0 .. :L1 } :L2
  .registers 2
    monitor-enter p0
  :L0
  .line 1
    invoke-virtual { p0 }, Lokhttp3/internal/cache/DiskLruCache;->initialize()V
  .line 2
    new-instance v0, Lokhttp3/internal/cache/DiskLruCache$3;
    invoke-direct { v0, p0 }, Lokhttp3/internal/cache/DiskLruCache$3;-><init>(Lokhttp3/internal/cache/DiskLruCache;)V
  :L1
    monitor-exit p0
    return-object v0
  :L2
    move-exception v0
    monitor-exit p0
    throw v0
.end method

.method trimToSize()V
  .registers 6
  :L0
  .line 1
    iget-wide v0, p0, Lokhttp3/internal/cache/DiskLruCache;->size:J
    iget-wide v2, p0, Lokhttp3/internal/cache/DiskLruCache;->maxSize:J
    cmp-long v4, v0, v2
    if-lez v4, :L1
  .line 2
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;
    invoke-virtual { v0 }, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;
    move-result-object v0
    invoke-interface { v0 }, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    move-result-object v0
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lokhttp3/internal/cache/DiskLruCache$Entry;
  .line 3
    invoke-virtual { p0, v0 }, Lokhttp3/internal/cache/DiskLruCache;->removeEntry(Lokhttp3/internal/cache/DiskLruCache$Entry;)Z
    goto :L0
  :L1
    const/4 v0, 0
  .line 4
    iput-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->mostRecentTrimFailed:Z
    return-void
.end method
