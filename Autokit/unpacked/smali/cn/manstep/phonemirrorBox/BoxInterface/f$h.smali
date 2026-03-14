.class Lcn/manstep/phonemirrorBox/BoxInterface/f$h;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcn/manstep/phonemirrorBox/BoxInterface/f;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = "h"
.end annotation

.field private a:Lcn/manstep/phonemirrorBox/BoxInterface/f$l;

.field private b:Lcn/manstep/phonemirrorBox/util/i;

.field final synthetic c:Lcn/manstep/phonemirrorBox/BoxInterface/f;

.method public constructor <init>(Lcn/manstep/phonemirrorBox/BoxInterface/f;)V
  .registers 3
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$h;->c:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance p1, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$h;->c:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-direct { p1, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/f;)V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$h;->a:Lcn/manstep/phonemirrorBox/BoxInterface/f$l;
  .line 3
    new-instance p1, Lcn/manstep/phonemirrorBox/util/i;
    invoke-direct { p1 }, Lcn/manstep/phonemirrorBox/util/i;-><init>()V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$h;->b:Lcn/manstep/phonemirrorBox/util/i;
    return-void
.end method

.method public declared-synchronized a()Lcn/manstep/phonemirrorBox/BoxInterface/f$l;
  .catchall { :L0 .. :L3 } :L4
  .registers 5
    monitor-enter p0
    const/4 v0, 0
  :L0
  .line 1
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$h;->b:Lcn/manstep/phonemirrorBox/util/i;
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/util/i;->g()I
    move-result v1
    const/16 v2, 10
    const/4 v3, 0
    if-le v1, v2, :L1
  .line 2
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "dataVec_.size = "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$h;->b:Lcn/manstep/phonemirrorBox/util/i;
    invoke-virtual { v2 }, Lcn/manstep/phonemirrorBox/util/i;->g()I
    move-result v2
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  .line 3
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$h;->b:Lcn/manstep/phonemirrorBox/util/i;
    invoke-virtual { v1, v3 }, Lcn/manstep/phonemirrorBox/util/i;->f(I)V
    goto :L0
  :L1
  .line 4
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$h;->b:Lcn/manstep/phonemirrorBox/util/i;
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/util/i;->e()Z
    move-result v1
    if-nez v1, :L2
  .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$h;->a:Lcn/manstep/phonemirrorBox/BoxInterface/f$l;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)Lcn/manstep/phonemirrorBox/BoxInterface/f$i;
    move-result-object v0
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$h;->b:Lcn/manstep/phonemirrorBox/util/i;
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/util/i;->c()[B
    move-result-object v1
    array-length v1, v1
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->f(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;I)I
  .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$h;->a:Lcn/manstep/phonemirrorBox/BoxInterface/f$l;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->b(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)Ljava/nio/ByteBuffer;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
  .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$h;->a:Lcn/manstep/phonemirrorBox/BoxInterface/f$l;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->b(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)Ljava/nio/ByteBuffer;
    move-result-object v0
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$h;->b:Lcn/manstep/phonemirrorBox/util/i;
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/util/i;->c()[B
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
  .line 8
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$h;->b:Lcn/manstep/phonemirrorBox/util/i;
    invoke-virtual { v0, v3 }, Lcn/manstep/phonemirrorBox/util/i;->f(I)V
  .line 9
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$h;->a:Lcn/manstep/phonemirrorBox/BoxInterface/f$l;
    goto :L3
  :L2
    const-wide/16 v1, 100
  .line 10
    invoke-virtual { p0, v1, v2 }, Ljava/lang/Object;->wait(J)V
  :L3
  .line 11
    monitor-exit p0
    return-object v0
  :L4
    move-exception v0
    monitor-exit p0
    goto :L6
  :L5
    throw v0
  :L6
    goto :L5
.end method

.method public declared-synchronized b()V
  .catchall { :L0 .. :L1 } :L2
  .registers 2
    monitor-enter p0
  :L0
  .line 1
    invoke-virtual { p0 }, Ljava/lang/Object;->notify()V
  :L1
  .line 2
    monitor-exit p0
    return-void
  :L2
    move-exception v0
    monitor-exit p0
    throw v0
.end method
