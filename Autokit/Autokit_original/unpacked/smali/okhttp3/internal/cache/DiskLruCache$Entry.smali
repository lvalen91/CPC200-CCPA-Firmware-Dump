.class final Lokhttp3/internal/cache/DiskLruCache$Entry;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lokhttp3/internal/cache/DiskLruCache;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 18
  name = "Entry"
.end annotation

.field final cleanFiles:[Ljava/io/File;

.field currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;

.field final dirtyFiles:[Ljava/io/File;

.field final key:Ljava/lang/String;

.field final lengths:[J

.field readable:Z

.field sequenceNumber:J

.field final synthetic this$0:Lokhttp3/internal/cache/DiskLruCache;

.method constructor <init>(Lokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;)V
  .registers 9
  .line 1
    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lokhttp3/internal/cache/DiskLruCache;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p2, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;
  .line 3
    iget v0, p1, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I
    new-array v1, v0, [J
    iput-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J
  .line 4
    new-array v1, v0, [Ljava/io/File;
    iput-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;
  .line 5
    new-array v0, v0, [Ljava/io/File;
    iput-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;
  .line 6
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0, p2 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    const/16 p2, 46
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
  .line 7
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->length()I
    move-result p2
    const/4 v1, 0
  :L0
  .line 8
    iget v2, p1, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I
    if-ge v1, v2, :L1
  .line 9
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
  .line 10
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;
    new-instance v3, Ljava/io/File;
    iget-object v4, p1, Lokhttp3/internal/cache/DiskLruCache;->directory:Ljava/io/File;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-direct { v3, v4, v5 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    aput-object v3, v2, v1
    const-string v2, ".tmp"
  .line 11
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 12
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;
    new-instance v3, Ljava/io/File;
    iget-object v4, p1, Lokhttp3/internal/cache/DiskLruCache;->directory:Ljava/io/File;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-direct { v3, v4, v5 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    aput-object v3, v2, v1
  .line 13
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->setLength(I)V
    add-int/lit8 v1, v1, 1
    goto :L0
  :L1
    return-void
.end method

.method private invalidLengths([Ljava/lang/String;)Ljava/io/IOException;
  .registers 5
  .line 1
    new-instance v0, Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "unexpected journal line: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { p1 }, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method setLengths([Ljava/lang/String;)V
  .catch Ljava/lang/NumberFormatException; { :L0 .. :L1 } :L3
  .registers 6
  .line 1
    array-length v0, p1
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lokhttp3/internal/cache/DiskLruCache;
    iget v1, v1, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I
    if-ne v0, v1, :L4
    const/4 v0, 0
  :L0
  .line 2
    array-length v1, p1
    if-ge v0, v1, :L2
  .line 3
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J
    aget-object v2, p1, v0
    invoke-static { v2 }, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    move-result-wide v2
    aput-wide v2, v1, v0
  :L1
    add-int/lit8 v0, v0, 1
    goto :L0
  :L2
    return-void
  :L3
  .line 4
    invoke-direct { p0, p1 }, Lokhttp3/internal/cache/DiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;
    move-result-object p1
    throw p1
  :L4
  .line 5
    invoke-direct { p0, p1 }, Lokhttp3/internal/cache/DiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;
    move-result-object p1
    goto :L6
  :L5
    throw p1
  :L6
    goto :L5
.end method

.method snapshot()Lokhttp3/internal/cache/DiskLruCache$Snapshot;
  .catch Ljava/io/FileNotFoundException; { :L0 .. :L2 } :L3
  .catch Ljava/io/IOException; { :L5 .. :L6 } :L6
  .registers 11
  .line 1
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lokhttp3/internal/cache/DiskLruCache;
    invoke-static { v0 }, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L7
  .line 2
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lokhttp3/internal/cache/DiskLruCache;
    iget v0, v0, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I
    new-array v0, v0, [Lokio/Source;
  .line 3
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J
    invoke-virtual { v1 }, [J->clone()Ljava/lang/Object;
    move-result-object v1
    move-object v7, v1
    check-cast v7, [J
    const/4 v8, 0
    const/4 v1, 0
  :L0
  .line 4
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lokhttp3/internal/cache/DiskLruCache;
    iget v2, v2, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I
    if-ge v1, v2, :L1
  .line 5
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lokhttp3/internal/cache/DiskLruCache;
    iget-object v2, v2, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;
    iget-object v3, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;
    aget-object v3, v3, v1
    invoke-interface { v2, v3 }, Lokhttp3/internal/io/FileSystem;->source(Ljava/io/File;)Lokio/Source;
    move-result-object v2
    aput-object v2, v0, v1
    add-int/lit8 v1, v1, 1
    goto :L0
  :L1
  .line 6
    new-instance v9, Lokhttp3/internal/cache/DiskLruCache$Snapshot;
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lokhttp3/internal/cache/DiskLruCache;
    iget-object v3, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;
    iget-wide v4, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->sequenceNumber:J
    move-object v1, v9
    move-object v6, v0
    invoke-direct/range { v1 .. v7 }, Lokhttp3/internal/cache/DiskLruCache$Snapshot;-><init>(Lokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;J[Lokio/Source;[J)V
  :L2
    return-object v9
  :L3
    nop
  :L4
  .line 7
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lokhttp3/internal/cache/DiskLruCache;
    iget v1, v1, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I
    if-ge v8, v1, :L5
  .line 8
    aget-object v1, v0, v8
    if-eqz v1, :L5
  .line 9
    aget-object v1, v0, v8
    invoke-static { v1 }, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V
    add-int/lit8 v8, v8, 1
    goto :L4
  :L5
  .line 10
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lokhttp3/internal/cache/DiskLruCache;
    invoke-virtual { v0, p0 }, Lokhttp3/internal/cache/DiskLruCache;->removeEntry(Lokhttp3/internal/cache/DiskLruCache$Entry;)Z
  :L6
    const/4 v0, 0
    return-object v0
  :L7
  .line 11
    new-instance v0, Ljava/lang/AssertionError;
    invoke-direct { v0 }, Ljava/lang/AssertionError;-><init>()V
    goto :L9
  :L8
    throw v0
  :L9
    goto :L8
.end method

.method writeLengths(Lokio/BufferedSink;)V
  .registers 8
  .line 1
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J
    array-length v1, v0
    const/4 v2, 0
  :L0
    if-ge v2, v1, :L1
    aget-wide v3, v0, v2
    const/16 v5, 32
  .line 2
    invoke-interface { p1, v5 }, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;
    move-result-object v5
    invoke-interface { v5, v3, v4 }, Lokio/BufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;
    add-int/lit8 v2, v2, 1
    goto :L0
  :L1
    return-void
.end method
