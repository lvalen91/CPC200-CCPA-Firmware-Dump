.class Lokhttp3/Cache$1;
.super Ljava/lang/Object;
.implements Lokhttp3/internal/cache/InternalCache;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lokhttp3/Cache;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic this$0:Lokhttp3/Cache;

.method constructor <init>(Lokhttp3/Cache;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lokhttp3/Cache$1;->this$0:Lokhttp3/Cache;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public get(Lokhttp3/Request;)Lokhttp3/Response;
  .registers 3
  .line 1
    iget-object v0, p0, Lokhttp3/Cache$1;->this$0:Lokhttp3/Cache;
    invoke-virtual { v0, p1 }, Lokhttp3/Cache;->get(Lokhttp3/Request;)Lokhttp3/Response;
    move-result-object p1
    return-object p1
.end method

.method public put(Lokhttp3/Response;)Lokhttp3/internal/cache/CacheRequest;
  .registers 3
  .line 1
    iget-object v0, p0, Lokhttp3/Cache$1;->this$0:Lokhttp3/Cache;
    invoke-virtual { v0, p1 }, Lokhttp3/Cache;->put(Lokhttp3/Response;)Lokhttp3/internal/cache/CacheRequest;
    move-result-object p1
    return-object p1
.end method

.method public remove(Lokhttp3/Request;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lokhttp3/Cache$1;->this$0:Lokhttp3/Cache;
    invoke-virtual { v0, p1 }, Lokhttp3/Cache;->remove(Lokhttp3/Request;)V
    return-void
.end method

.method public trackConditionalCacheHit()V
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/Cache$1;->this$0:Lokhttp3/Cache;
    invoke-virtual { v0 }, Lokhttp3/Cache;->trackConditionalCacheHit()V
    return-void
.end method

.method public trackResponse(Lokhttp3/internal/cache/CacheStrategy;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lokhttp3/Cache$1;->this$0:Lokhttp3/Cache;
    invoke-virtual { v0, p1 }, Lokhttp3/Cache;->trackResponse(Lokhttp3/internal/cache/CacheStrategy;)V
    return-void
.end method

.method public update(Lokhttp3/Response;Lokhttp3/Response;)V
  .registers 4
  .line 1
    iget-object v0, p0, Lokhttp3/Cache$1;->this$0:Lokhttp3/Cache;
    invoke-virtual { v0, p1, p2 }, Lokhttp3/Cache;->update(Lokhttp3/Response;Lokhttp3/Response;)V
    return-void
.end method
