.class public final Lokhttp3/internal/cache/DiskLruCache$Snapshot;
.super Ljava/lang/Object;
.implements Ljava/io/Closeable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lokhttp3/internal/cache/DiskLruCache;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 17
  name = "Snapshot"
.end annotation

.field private final key:Ljava/lang/String;

.field private final lengths:[J

.field private final sequenceNumber:J

.field private final sources:[Lokio/Source;

.field final synthetic this$0:Lokhttp3/internal/cache/DiskLruCache;

.method constructor <init>(Lokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;J[Lokio/Source;[J)V
  .registers 7
  .line 1
    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->this$0:Lokhttp3/internal/cache/DiskLruCache;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p2, p0, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->key:Ljava/lang/String;
  .line 3
    iput-wide p3, p0, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->sequenceNumber:J
  .line 4
    iput-object p5, p0, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->sources:[Lokio/Source;
  .line 5
    iput-object p6, p0, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->lengths:[J
    return-void
.end method

.method static synthetic access$000(Lokhttp3/internal/cache/DiskLruCache$Snapshot;)Ljava/lang/String;
  .registers 1
  .line 1
    iget-object p0, p0, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->key:Ljava/lang/String;
    return-object p0
.end method

.method public close()V
  .registers 5
  .line 1
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->sources:[Lokio/Source;
    array-length v1, v0
    const/4 v2, 0
  :L0
    if-ge v2, v1, :L1
    aget-object v3, v0, v2
  .line 2
    invoke-static { v3 }, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V
    add-int/lit8 v2, v2, 1
    goto :L0
  :L1
    return-void
.end method

.method public edit()Lokhttp3/internal/cache/DiskLruCache$Editor;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
  .registers 5
  .line 1
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->this$0:Lokhttp3/internal/cache/DiskLruCache;
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->key:Ljava/lang/String;
    iget-wide v2, p0, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->sequenceNumber:J
    invoke-virtual { v0, v1, v2, v3 }, Lokhttp3/internal/cache/DiskLruCache;->edit(Ljava/lang/String;J)Lokhttp3/internal/cache/DiskLruCache$Editor;
    move-result-object v0
    return-object v0
.end method

.method public getLength(I)J
  .registers 5
  .line 1
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->lengths:[J
    aget-wide v1, v0, p1
    return-wide v1
.end method

.method public getSource(I)Lokio/Source;
  .registers 3
  .line 1
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->sources:[Lokio/Source;
    aget-object p1, v0, p1
    return-object p1
.end method

.method public key()Ljava/lang/String;
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->key:Ljava/lang/String;
    return-object v0
.end method
