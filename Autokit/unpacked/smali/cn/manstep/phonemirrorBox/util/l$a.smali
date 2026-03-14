.class Lcn/manstep/phonemirrorBox/util/l$a;
.super Ljava/util/TimerTask;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/util/l;->B()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/util/l;

.method constructor <init>(Lcn/manstep/phonemirrorBox/util/l;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/l$a;->b:Lcn/manstep/phonemirrorBox/util/l;
    invoke-direct { p0 }, Ljava/util/TimerTask;-><init>()V
    return-void
.end method

.method public run()V
  .registers 4
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "DeviceCheck,startMicCheckTimer: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { }, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/Thread;->getName()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/l$a;->b:Lcn/manstep/phonemirrorBox/util/l;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/l;->a(Lcn/manstep/phonemirrorBox/util/l;)I
    move-result v1
    invoke-static { v1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    const/4 v2, 1
    invoke-static { v0, v2, v1 }, Lcn/manstep/phonemirrorBox/util/l;->b(Lcn/manstep/phonemirrorBox/util/l;ILjava/lang/Object;)V
    return-void
.end method
