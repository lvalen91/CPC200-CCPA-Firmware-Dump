.class Lcn/manstep/phonemirrorBox/n0/a$c$a;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/n0/a$c;->k(Landroid/view/Surface;II)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/n0/a$c;

.method constructor <init>(Lcn/manstep/phonemirrorBox/n0/a$c;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/n0/a$c$a;->b:Lcn/manstep/phonemirrorBox/n0/a$c;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .catchall { :L1 .. :L3 } :L9
  .catch Ljava/lang/InterruptedException; { :L4 .. :L5 } :L6
  .catchall { :L4 .. :L5 } :L9
  .catchall { :L7 .. :L10 } :L9
  .registers 5
  :L0
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/n0/a$c$a;->b:Lcn/manstep/phonemirrorBox/n0/a$c;
    iget-boolean v1, v0, Lcn/manstep/phonemirrorBox/n0/a$c;->a:Z
    if-eqz v1, :L11
  .line 2
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/n0/a$c;->a(Lcn/manstep/phonemirrorBox/n0/a$c;)Ljava/lang/Object;
    move-result-object v0
    monitor-enter v0
  :L1
  .line 3
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/n0/a$c$a;->b:Lcn/manstep/phonemirrorBox/n0/a$c;
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/n0/a$c;->b(Lcn/manstep/phonemirrorBox/n0/a$c;)Lcn/manstep/phonemirrorBox/util/i;
    move-result-object v1
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/util/i;->e()Z
    move-result v1
    if-nez v1, :L2
  .line 4
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/n0/a$c$a;->b:Lcn/manstep/phonemirrorBox/n0/a$c;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/n0/a$c$a;->b:Lcn/manstep/phonemirrorBox/n0/a$c;
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/n0/a$c;->b(Lcn/manstep/phonemirrorBox/n0/a$c;)Lcn/manstep/phonemirrorBox/util/i;
    move-result-object v2
    invoke-virtual { v2 }, Lcn/manstep/phonemirrorBox/util/i;->c()[B
    move-result-object v2
    invoke-static { v1, v2 }, Lcn/manstep/phonemirrorBox/n0/a$c;->c(Lcn/manstep/phonemirrorBox/n0/a$c;[B)V
  .line 5
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/n0/a$c$a;->b:Lcn/manstep/phonemirrorBox/n0/a$c;
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/n0/a$c;->b(Lcn/manstep/phonemirrorBox/n0/a$c;)Lcn/manstep/phonemirrorBox/util/i;
    move-result-object v1
    const/4 v2, 0
    invoke-virtual { v1, v2 }, Lcn/manstep/phonemirrorBox/util/i;->f(I)V
  :L2
  .line 6
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/n0/a$c$a;->b:Lcn/manstep/phonemirrorBox/n0/a$c;
    iget-boolean v1, v1, Lcn/manstep/phonemirrorBox/n0/a$c;->a:Z
  :L3
    if-eqz v1, :L8
  :L4
  .line 7
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/n0/a$c$a;->b:Lcn/manstep/phonemirrorBox/n0/a$c;
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/n0/a$c;->b(Lcn/manstep/phonemirrorBox/n0/a$c;)Lcn/manstep/phonemirrorBox/util/i;
    move-result-object v1
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/util/i;->g()I
    move-result v1
    const/16 v2, 60
    if-gt v1, v2, :L8
  .line 8
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/n0/a$c$a;->b:Lcn/manstep/phonemirrorBox/n0/a$c;
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/n0/a$c;->a(Lcn/manstep/phonemirrorBox/n0/a$c;)Ljava/lang/Object;
    move-result-object v1
    const-wide/16 v2, 33
    invoke-virtual { v1, v2, v3 }, Ljava/lang/Object;->wait(J)V
  :L5
    goto :L8
  :L6
    move-exception v1
  :L7
  .line 9
    invoke-virtual { v1 }, Ljava/lang/InterruptedException;->printStackTrace()V
  .line 10
    invoke-static { v1 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L8
  .line 11
    monitor-exit v0
    goto :L0
  :L9
    move-exception v1
    monitor-exit v0
  :L10
    throw v1
  :L11
    return-void
.end method
