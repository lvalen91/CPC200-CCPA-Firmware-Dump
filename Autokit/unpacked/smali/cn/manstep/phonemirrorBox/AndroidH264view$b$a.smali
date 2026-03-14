.class Lcn/manstep/phonemirrorBox/AndroidH264view$b$a;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/AndroidH264view$b;->t(Landroid/view/Surface;II)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;

.method constructor <init>(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b$a;->b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .catchall { :L1 .. :L4 } :L10
  .catch Ljava/lang/InterruptedException; { :L5 .. :L6 } :L7
  .catchall { :L5 .. :L6 } :L10
  .catchall { :L8 .. :L11 } :L10
  .registers 5
  :L0
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b$a;->b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;
    iget-boolean v1, v0, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->a:Z
    if-eqz v1, :L12
  .line 2
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->a(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)Ljava/lang/Object;
    move-result-object v0
    monitor-enter v0
  :L1
  .line 3
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b$a;->b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->b(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)Ljava/util/Vector;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/util/Vector;->isEmpty()Z
    move-result v1
    if-nez v1, :L3
  .line 4
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b$a;->b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->b(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)Ljava/util/Vector;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/util/Vector;->size()I
    move-result v1
    const/16 v2, 20
    if-le v1, v2, :L2
  .line 5
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "buffer frame cnt = "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b$a;->b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->b(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)Ljava/util/Vector;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/util/Vector;->size()I
    move-result v2
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L2
  .line 6
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b$a;->b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b$a;->b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->b(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)Ljava/util/Vector;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/util/Vector;->firstElement()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, [B
    invoke-static { v1, v2 }, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->c(Lcn/manstep/phonemirrorBox/AndroidH264view$b;[B)V
  .line 7
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b$a;->b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->b(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)Ljava/util/Vector;
    move-result-object v1
    const/4 v2, 0
    invoke-virtual { v1, v2 }, Ljava/util/Vector;->remove(I)Ljava/lang/Object;
  :L3
  .line 8
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b$a;->b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;
    iget-boolean v1, v1, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->a:Z
  :L4
    if-eqz v1, :L9
  :L5
  .line 9
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b$a;->b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->b(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)Ljava/util/Vector;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/util/Vector;->size()I
    move-result v1
    sget v2, Lcn/manstep/phonemirrorBox/p;->F:I
    if-gt v1, v2, :L9
  .line 10
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b$a;->b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->a(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)Ljava/lang/Object;
    move-result-object v1
    const-wide/16 v2, 33
    invoke-virtual { v1, v2, v3 }, Ljava/lang/Object;->wait(J)V
  :L6
    goto :L9
  :L7
    move-exception v1
  :L8
  .line 11
    invoke-virtual { v1 }, Ljava/lang/InterruptedException;->printStackTrace()V
  .line 12
    invoke-static { v1 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L9
  .line 13
    monitor-exit v0
    goto/16 :L0
  :L10
    move-exception v1
    monitor-exit v0
  :L11
    throw v1
  :L12
    return-void
.end method
