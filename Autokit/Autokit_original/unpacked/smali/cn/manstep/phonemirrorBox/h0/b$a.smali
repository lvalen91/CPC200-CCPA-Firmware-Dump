.class final Lcn/manstep/phonemirrorBox/h0/b$a;
.super Ljava/lang/Object;
.implements Ljava/util/concurrent/ThreadFactory;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/h0/b;->c(Lcn/manstep/phonemirrorBox/h0/b;)Ljava/util/concurrent/ThreadFactory;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = null
.end annotation

.field final synthetic a:Ljava/util/concurrent/ThreadFactory;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic d:Ljava/lang/Boolean;

.field final synthetic e:Ljava/lang/Integer;

.field final synthetic f:Ljava/lang/Thread$UncaughtExceptionHandler;

.method constructor <init>(Ljava/util/concurrent/ThreadFactory;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicLong;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Thread$UncaughtExceptionHandler;)V
  .registers 7
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/h0/b$a;->a:Ljava/util/concurrent/ThreadFactory;
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/h0/b$a;->b:Ljava/lang/String;
    iput-object p3, p0, Lcn/manstep/phonemirrorBox/h0/b$a;->c:Ljava/util/concurrent/atomic/AtomicLong;
    iput-object p4, p0, Lcn/manstep/phonemirrorBox/h0/b$a;->d:Ljava/lang/Boolean;
    iput-object p5, p0, Lcn/manstep/phonemirrorBox/h0/b$a;->e:Ljava/lang/Integer;
    iput-object p6, p0, Lcn/manstep/phonemirrorBox/h0/b$a;->f:Ljava/lang/Thread$UncaughtExceptionHandler;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
  .registers 7
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/h0/b$a;->a:Ljava/util/concurrent/ThreadFactory;
    invoke-interface { v0, p1 }, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    move-result-object p1
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/h0/b$a;->b:Ljava/lang/String;
    if-eqz v0, :L0
    const/4 v1, 1
    new-array v1, v1, [Ljava/lang/Object;
    const/4 v2, 0
  .line 3
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/h0/b$a;->c:Ljava/util/concurrent/atomic/AtomicLong;
    invoke-static { v3 }, Lcn/manstep/phonemirrorBox/h0/b;->e(Ljava/lang/Object;)Ljava/lang/Object;
    check-cast v3, Ljava/util/concurrent/atomic/AtomicLong;
    invoke-virtual { v3 }, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J
    move-result-wide v3
    invoke-static { v3, v4 }, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v3
    aput-object v3, v1, v2
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/h0/b;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p1, v0 }, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
  :L0
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/h0/b$a;->d:Ljava/lang/Boolean;
    if-eqz v0, :L1
  .line 5
    invoke-virtual { v0 }, Ljava/lang/Boolean;->booleanValue()Z
    move-result v0
    invoke-virtual { p1, v0 }, Ljava/lang/Thread;->setDaemon(Z)V
  :L1
  .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/h0/b$a;->e:Ljava/lang/Integer;
    if-eqz v0, :L2
  .line 7
    invoke-virtual { v0 }, Ljava/lang/Integer;->intValue()I
    move-result v0
    invoke-virtual { p1, v0 }, Ljava/lang/Thread;->setPriority(I)V
  :L2
  .line 8
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/h0/b$a;->f:Ljava/lang/Thread$UncaughtExceptionHandler;
    if-eqz v0, :L3
  .line 9
    invoke-virtual { p1, v0 }, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
  :L3
    return-object p1
.end method
