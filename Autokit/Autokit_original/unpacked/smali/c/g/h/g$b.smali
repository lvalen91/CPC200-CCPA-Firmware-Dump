.class Lc/g/h/g$b;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lc/g/h/g;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "b"
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "<T:",
    "Ljava/lang/Object;",
    ">",
    "Ljava/lang/Object;",
    "Ljava/lang/Runnable;"
  }
.end annotation

.field private b:Ljava/util/concurrent/Callable;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/concurrent/Callable<",
      "TT;>;"
    }
  .end annotation
.end field

.field private c:Lc/g/j/a;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Lc/g/j/a<",
      "TT;>;"
    }
  .end annotation
.end field

.field private d:Landroid/os/Handler;

.method constructor <init>(Landroid/os/Handler;Ljava/util/concurrent/Callable;Lc/g/j/a;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroid/os/Handler;",
      "Ljava/util/concurrent/Callable<",
      "TT;>;",
      "Lc/g/j/a<",
      "TT;>;)V"
    }
  .end annotation
  .registers 4
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p2, p0, Lc/g/h/g$b;->b:Ljava/util/concurrent/Callable;
  .line 3
    iput-object p3, p0, Lc/g/h/g$b;->c:Lc/g/j/a;
  .line 4
    iput-object p1, p0, Lc/g/h/g$b;->d:Landroid/os/Handler;
    return-void
.end method

.method public run()V
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L2
  .registers 5
  :L0
  .line 1
    iget-object v0, p0, Lc/g/h/g$b;->b:Ljava/util/concurrent/Callable;
    invoke-interface { v0 }, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    move-result-object v0
  :L1
    goto :L3
  :L2
    const/4 v0, 0
  :L3
  .line 2
    iget-object v1, p0, Lc/g/h/g$b;->c:Lc/g/j/a;
  .line 3
    iget-object v2, p0, Lc/g/h/g$b;->d:Landroid/os/Handler;
    new-instance v3, Lc/g/h/g$b$a;
    invoke-direct { v3, p0, v1, v0 }, Lc/g/h/g$b$a;-><init>(Lc/g/h/g$b;Lc/g/j/a;Ljava/lang/Object;)V
    invoke-virtual { v2, v3 }, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    return-void
.end method
