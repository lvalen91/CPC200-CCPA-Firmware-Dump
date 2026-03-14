.class Lc/g/h/g$a$a;
.super Ljava/lang/Thread;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lc/g/h/g$a;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "a"
.end annotation

.field private final b:I

.method constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;I)V
  .registers 4
  .line 1
    invoke-direct { p0, p1, p2 }, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V
  .line 2
    iput p3, p0, Lc/g/h/g$a$a;->b:I
    return-void
.end method

.method public run()V
  .registers 2
  .line 1
    iget v0, p0, Lc/g/h/g$a$a;->b:I
    invoke-static { v0 }, Landroid/os/Process;->setThreadPriority(I)V
  .line 2
    invoke-super { p0 }, Ljava/lang/Thread;->run()V
    return-void
.end method
