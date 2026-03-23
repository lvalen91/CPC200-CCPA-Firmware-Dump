.class Lokio/AsyncTimeout$1;
.super Ljava/lang/Object;
.implements Lokio/Sink;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lokio/AsyncTimeout;->sink(Lokio/Sink;)Lokio/Sink;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic this$0:Lokio/AsyncTimeout;

.field final synthetic val$sink:Lokio/Sink;

.method constructor <init>(Lokio/AsyncTimeout;Lokio/Sink;)V
  .registers 3
  .line 1
    iput-object p1, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;
    iput-object p2, p0, Lokio/AsyncTimeout$1;->val$sink:Lokio/Sink;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public close()V
  .catch Ljava/io/IOException; { :L0 .. :L1 } :L3
  .catchall { :L0 .. :L1 } :L2
  .catchall { :L4 .. :L5 } :L2
  .registers 4
  .line 1
    iget-object v0, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;
    invoke-virtual { v0 }, Lokio/AsyncTimeout;->enter()V
  :L0
  .line 2
    iget-object v0, p0, Lokio/AsyncTimeout$1;->val$sink:Lokio/Sink;
    invoke-interface { v0 }, Lokio/Sink;->close()V
  :L1
    const/4 v0, 1
  .line 3
    iget-object v1, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;
    invoke-virtual { v1, v0 }, Lokio/AsyncTimeout;->exit(Z)V
    return-void
  :L2
    move-exception v0
    goto :L5
  :L3
    move-exception v0
  :L4
  .line 4
    iget-object v1, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;
    invoke-virtual { v1, v0 }, Lokio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;
    move-result-object v0
    throw v0
  :L5
  .line 5
    iget-object v1, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;
    const/4 v2, 0
    invoke-virtual { v1, v2 }, Lokio/AsyncTimeout;->exit(Z)V
    throw v0
.end method

.method public flush()V
  .catch Ljava/io/IOException; { :L0 .. :L1 } :L3
  .catchall { :L0 .. :L1 } :L2
  .catchall { :L4 .. :L5 } :L2
  .registers 4
  .line 1
    iget-object v0, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;
    invoke-virtual { v0 }, Lokio/AsyncTimeout;->enter()V
  :L0
  .line 2
    iget-object v0, p0, Lokio/AsyncTimeout$1;->val$sink:Lokio/Sink;
    invoke-interface { v0 }, Lokio/Sink;->flush()V
  :L1
    const/4 v0, 1
  .line 3
    iget-object v1, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;
    invoke-virtual { v1, v0 }, Lokio/AsyncTimeout;->exit(Z)V
    return-void
  :L2
    move-exception v0
    goto :L5
  :L3
    move-exception v0
  :L4
  .line 4
    iget-object v1, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;
    invoke-virtual { v1, v0 }, Lokio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;
    move-result-object v0
    throw v0
  :L5
  .line 5
    iget-object v1, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;
    const/4 v2, 0
    invoke-virtual { v1, v2 }, Lokio/AsyncTimeout;->exit(Z)V
    throw v0
.end method

.method public timeout()Lokio/Timeout;
  .registers 2
  .line 1
    iget-object v0, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
  .registers 3
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "AsyncTimeout.sink("
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lokio/AsyncTimeout$1;->val$sink:Lokio/Sink;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v1, ")"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
  .catch Ljava/io/IOException; { :L4 .. :L5 } :L7
  .catchall { :L4 .. :L5 } :L6
  .catchall { :L8 .. :L9 } :L6
  .registers 10
  .line 1
    iget-wide v0, p1, Lokio/Buffer;->size:J
    const-wide/16 v2, 0
    move-wide v4, p2
    invoke-static/range { v0 .. v5 }, Lokio/Util;->checkOffsetAndCount(JJJ)V
  :L0
    const-wide/16 v0, 0
    cmp-long v2, p2, v0
    if-lez v2, :L10
  .line 2
    iget-object v2, p1, Lokio/Buffer;->head:Lokio/Segment;
  :L1
    const-wide/32 v3, 65536
    cmp-long v5, v0, v3
    if-gez v5, :L3
  .line 3
    iget v3, v2, Lokio/Segment;->limit:I
    iget v4, v2, Lokio/Segment;->pos:I
    sub-int/2addr v3, v4
    int-to-long v3, v3
    add-long/2addr v0, v3
    cmp-long v3, v0, p2
    if-ltz v3, :L2
    move-wide v0, p2
    goto :L3
  :L2
  .line 4
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;
    goto :L1
  :L3
    const/4 v2, 0
  .line 5
    iget-object v3, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;
    invoke-virtual { v3 }, Lokio/AsyncTimeout;->enter()V
  :L4
  .line 6
    iget-object v3, p0, Lokio/AsyncTimeout$1;->val$sink:Lokio/Sink;
    invoke-interface { v3, p1, v0, v1 }, Lokio/Sink;->write(Lokio/Buffer;J)V
  :L5
    sub-long/2addr p2, v0
    const/4 v0, 1
  .line 7
    iget-object v1, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;
    invoke-virtual { v1, v0 }, Lokio/AsyncTimeout;->exit(Z)V
    goto :L0
  :L6
    move-exception p1
    goto :L9
  :L7
    move-exception p1
  :L8
  .line 8
    iget-object p2, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;
    invoke-virtual { p2, p1 }, Lokio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;
    move-result-object p1
    throw p1
  :L9
  .line 9
    iget-object p2, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;
    invoke-virtual { p2, v2 }, Lokio/AsyncTimeout;->exit(Z)V
    throw p1
  :L10
    return-void
.end method
