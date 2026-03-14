.class Lokhttp3/internal/cache/DiskLruCache$2;
.super Lokhttp3/internal/cache/FaultHidingSink;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lokhttp3/internal/cache/DiskLruCache;->newJournalWriter()Lokio/BufferedSink;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final static synthetic $assertionsDisabled:Z

.field final synthetic this$0:Lokhttp3/internal/cache/DiskLruCache;

.method static constructor <clinit>()V
  .registers 1
  .line 1
    const-class v0, Lokhttp3/internal/cache/DiskLruCache;
    return-void
.end method

.method constructor <init>(Lokhttp3/internal/cache/DiskLruCache;Lokio/Sink;)V
  .registers 3
  .line 1
    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache$2;->this$0:Lokhttp3/internal/cache/DiskLruCache;
    invoke-direct { p0, p2 }, Lokhttp3/internal/cache/FaultHidingSink;-><init>(Lokio/Sink;)V
    return-void
.end method

.method protected onException(Ljava/io/IOException;)V
  .registers 3
  .line 1
    iget-object p1, p0, Lokhttp3/internal/cache/DiskLruCache$2;->this$0:Lokhttp3/internal/cache/DiskLruCache;
    const/4 v0, 1
    iput-boolean v0, p1, Lokhttp3/internal/cache/DiskLruCache;->hasJournalErrors:Z
    return-void
.end method
