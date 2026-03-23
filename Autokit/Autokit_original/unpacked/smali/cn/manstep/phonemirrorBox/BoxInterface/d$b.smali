.class Lcn/manstep/phonemirrorBox/BoxInterface/d$b;
.super Ljava/lang/Thread;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/BoxInterface/d;->Z()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.method constructor <init>(Lcn/manstep/phonemirrorBox/BoxInterface/d;)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Thread;-><init>()V
    return-void
.end method

.method public run()V
  .catch Ljava/lang/InterruptedException; { :L1 .. :L2 } :L4
  .catchall { :L1 .. :L2 } :L3
  .catchall { :L5 .. :L7 } :L3
  .catch Ljava/lang/Exception; { :L8 .. :L9 } :L10
  .catchall { :L8 .. :L9 } :L3
  .catchall { :L11 .. :L14 } :L3
  .registers 6
  :L0
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    if-eqz v0, :L15
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->b()Ljava/util/Vector;
    move-result-object v0
    monitor-enter v0
  :L1
  .line 3
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->b()Ljava/util/Vector;
    move-result-object v1
    const-wide/16 v2, 1000
    invoke-virtual { v1, v2, v3 }, Ljava/lang/Object;->wait(J)V
  :L2
    goto :L6
  :L3
    move-exception v1
    goto :L13
  :L4
    move-exception v1
  :L5
  .line 4
    invoke-virtual { v1 }, Ljava/lang/InterruptedException;->printStackTrace()V
  :L6
  .line 5
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->b()Ljava/util/Vector;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/util/Vector;->isEmpty()Z
    move-result v1
  :L7
    if-nez v1, :L12
  :L8
  .line 6
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->c()Ljava/net/Socket;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;
    move-result-object v1
  .line 7
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->b()Ljava/util/Vector;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/util/Vector;->firstElement()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lcn/manstep/phonemirrorBox/BoxInterface/d$e;
  .line 8
    iget-object v3, v2, Lcn/manstep/phonemirrorBox/BoxInterface/d$e;->b:[B
    iget v2, v2, Lcn/manstep/phonemirrorBox/BoxInterface/d$e;->a:I
    const/4 v4, 0
    invoke-virtual { v1, v3, v4, v2 }, Ljava/io/OutputStream;->write([BII)V
  .line 9
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->b()Ljava/util/Vector;
    move-result-object v1
    invoke-virtual { v1, v4 }, Ljava/util/Vector;->remove(I)Ljava/lang/Object;
  :L9
    goto :L6
  :L10
    move-exception v1
  :L11
  .line 10
    invoke-virtual { v1 }, Ljava/lang/Exception;->printStackTrace()V
    goto :L6
  :L12
  .line 11
    monitor-exit v0
    goto :L0
  :L13
    monitor-exit v0
  :L14
    throw v1
  :L15
    return-void
.end method
