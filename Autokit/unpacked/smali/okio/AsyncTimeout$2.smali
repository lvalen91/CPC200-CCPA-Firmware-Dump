.class Lokio/AsyncTimeout$2;
.super Ljava/lang/Object;
.implements Lokio/Source;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lokio/AsyncTimeout;->source(Lokio/Source;)Lokio/Source;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic this$0:Lokio/AsyncTimeout;

.field final synthetic val$source:Lokio/Source;

.method constructor <init>(Lokio/AsyncTimeout;Lokio/Source;)V
  .registers 3
  .line 1
    iput-object p1, p0, Lokio/AsyncTimeout$2;->this$0:Lokio/AsyncTimeout;
    iput-object p2, p0, Lokio/AsyncTimeout$2;->val$source:Lokio/Source;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public close()V
  .catch Ljava/io/IOException; { :L0 .. :L1 } :L3
  .catchall { :L0 .. :L1 } :L2
  .catchall { :L4 .. :L5 } :L2
  .registers 4
  :L0
  .line 1
    iget-object v0, p0, Lokio/AsyncTimeout$2;->val$source:Lokio/Source;
    invoke-interface { v0 }, Lokio/Source;->close()V
  :L1
    const/4 v0, 1
  .line 2
    iget-object v1, p0, Lokio/AsyncTimeout$2;->this$0:Lokio/AsyncTimeout;
    invoke-virtual { v1, v0 }, Lokio/AsyncTimeout;->exit(Z)V
    return-void
  :L2
    move-exception v0
    goto :L5
  :L3
    move-exception v0
  :L4
  .line 3
    iget-object v1, p0, Lokio/AsyncTimeout$2;->this$0:Lokio/AsyncTimeout;
    invoke-virtual { v1, v0 }, Lokio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;
    move-result-object v0
    throw v0
  :L5
  .line 4
    iget-object v1, p0, Lokio/AsyncTimeout$2;->this$0:Lokio/AsyncTimeout;
    const/4 v2, 0
    invoke-virtual { v1, v2 }, Lokio/AsyncTimeout;->exit(Z)V
    throw v0
.end method

.method public read(Lokio/Buffer;J)J
  .catch Ljava/io/IOException; { :L0 .. :L1 } :L3
  .catchall { :L0 .. :L1 } :L2
  .catchall { :L4 .. :L5 } :L2
  .registers 5
  .line 1
    iget-object v0, p0, Lokio/AsyncTimeout$2;->this$0:Lokio/AsyncTimeout;
    invoke-virtual { v0 }, Lokio/AsyncTimeout;->enter()V
  :L0
  .line 2
    iget-object v0, p0, Lokio/AsyncTimeout$2;->val$source:Lokio/Source;
    invoke-interface { v0, p1, p2, p3 }, Lokio/Source;->read(Lokio/Buffer;J)J
    move-result-wide p1
  :L1
    const/4 p3, 1
  .line 3
    iget-object v0, p0, Lokio/AsyncTimeout$2;->this$0:Lokio/AsyncTimeout;
    invoke-virtual { v0, p3 }, Lokio/AsyncTimeout;->exit(Z)V
    return-wide p1
  :L2
    move-exception p1
    goto :L5
  :L3
    move-exception p1
  :L4
  .line 4
    iget-object p2, p0, Lokio/AsyncTimeout$2;->this$0:Lokio/AsyncTimeout;
    invoke-virtual { p2, p1 }, Lokio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;
    move-result-object p1
    throw p1
  :L5
  .line 5
    iget-object p2, p0, Lokio/AsyncTimeout$2;->this$0:Lokio/AsyncTimeout;
    const/4 p3, 0
    invoke-virtual { p2, p3 }, Lokio/AsyncTimeout;->exit(Z)V
    throw p1
.end method

.method public timeout()Lokio/Timeout;
  .registers 2
  .line 1
    iget-object v0, p0, Lokio/AsyncTimeout$2;->this$0:Lokio/AsyncTimeout;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
  .registers 3
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "AsyncTimeout.source("
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lokio/AsyncTimeout$2;->val$source:Lokio/Source;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v1, ")"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method
