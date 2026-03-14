.class Lcn/manstep/phonemirrorBox/BoxInterface/b$b$a;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->B(Landroid/view/Surface;II)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

.method constructor <init>(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$a;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .catchall { :L1 .. :L5 } :L12
  .catch Ljava/lang/InterruptedException; { :L6 .. :L7 } :L8
  .catchall { :L6 .. :L7 } :L12
  .catchall { :L9 .. :L11 } :L12
  .catchall { :L13 .. :L14 } :L12
  .registers 10
    const/4 v0, 0
    const/4 v1, 0
  :L0
  .line 1
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$a;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
    iget-boolean v3, v2, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->b:Z
    if-eqz v3, :L15
    const/4 v3, 0
    const-wide/16 v4, 0
  .line 2
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->i(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)Ljava/lang/Object;
    move-result-object v2
    monitor-enter v2
  :L1
  .line 3
    iget-object v6, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$a;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
    invoke-static { v6 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->j(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)Lcn/manstep/phonemirrorBox/BoxInterface/h;
    move-result-object v6
    invoke-virtual { v6 }, Lcn/manstep/phonemirrorBox/BoxInterface/h;->e()Z
    move-result v6
    if-nez v6, :L6
  .line 4
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$a;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
    invoke-static { v3 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->j(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)Lcn/manstep/phonemirrorBox/BoxInterface/h;
    move-result-object v3
    invoke-virtual { v3 }, Lcn/manstep/phonemirrorBox/BoxInterface/h;->c()[B
    move-result-object v3
  .line 5
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$a;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
    invoke-static { v4 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->j(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)Lcn/manstep/phonemirrorBox/BoxInterface/h;
    move-result-object v4
    invoke-virtual { v4 }, Lcn/manstep/phonemirrorBox/BoxInterface/h;->d()J
    move-result-wide v4
    if-eqz v1, :L4
    const/4 v6, 4
  .line 6
    aget-byte v7, v3, v6
    and-int/lit8 v7, v7, 31
    const/4 v8, 7
    if-eq v7, v8, :L3
    aget-byte v7, v3, v6
    and-int/lit8 v7, v7, 31
    const/16 v8, 8
    if-eq v7, v8, :L3
    aget-byte v6, v3, v6
    and-int/lit8 v6, v6, 31
    const/4 v7, 5
    if-ne v6, v7, :L2
    goto :L3
  :L2
  .line 7
    monitor-exit v2
    goto :L0
  :L3
    const-string v1, "AvcDecoder"
    const-string v6, "SoftDecoder I Frame Coming!!!"
  .line 8
    invoke-static { v1, v6 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
    const/4 v1, 0
  :L4
  .line 9
    iget-object v6, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$a;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
    invoke-static { v6 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->j(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)Lcn/manstep/phonemirrorBox/BoxInterface/h;
    move-result-object v6
    invoke-virtual { v6 }, Lcn/manstep/phonemirrorBox/BoxInterface/h;->f()I
    move-result v6
    iget-object v7, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$a;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
    iget v7, v7, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->a:I
    mul-int/lit8 v7, v7, 2
    if-le v6, v7, :L10
    const-string v1, "AvcDecoder"
  .line 10
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "SoftDecoder buffer frame cnt = "
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$a;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
    invoke-static { v4 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->j(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)Lcn/manstep/phonemirrorBox/BoxInterface/h;
    move-result-object v4
    invoke-virtual { v4 }, Lcn/manstep/phonemirrorBox/BoxInterface/h;->f()I
    move-result v4
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-static { v1, v3 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
    const/16 v1, 12
  .line 11
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
  .line 12
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$a;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->j(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)Lcn/manstep/phonemirrorBox/BoxInterface/h;
    move-result-object v1
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/h;->b()V
    const/4 v1, 1
  .line 13
    monitor-exit v2
  :L5
    goto/16 :L0
  :L6
  .line 14
    iget-object v6, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$a;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
    invoke-static { v6 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->i(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)Ljava/lang/Object;
    move-result-object v6
    const-wide/16 v7, 10
    invoke-virtual { v6, v7, v8 }, Ljava/lang/Object;->wait(J)V
  :L7
    goto :L10
  :L8
    move-exception v6
  :L9
  .line 15
    invoke-static { v6 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object v6
    invoke-static { v6 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L10
  .line 16
    monitor-exit v2
  :L11
    if-eqz v3, :L0
  .line 17
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$a;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
    invoke-static { v2, v3, v4, v5 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->r(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;[BJ)V
    goto/16 :L0
  :L12
    move-exception v0
  :L13
  .line 18
    monitor-exit v2
  :L14
    throw v0
  :L15
    return-void
.end method
