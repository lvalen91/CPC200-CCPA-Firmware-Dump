.class public Lcn/manstep/phonemirrorBox/util/h;
.super Ljava/lang/Object;
.implements Ljava/util/concurrent/ThreadFactory;
.source "SourceFile"

.field private final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private b:Ljava/lang/String;

.method public constructor <init>(Ljava/lang/String;)V
  .registers 4
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;
    const/4 v1, 1
    invoke-direct { v0, v1 }, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/util/h;->a:Ljava/util/concurrent/atomic/AtomicInteger;
  .line 3
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p1, "-"
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/h;->b:Ljava/lang/String;
    return-void
.end method

.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
  .registers 5
  .line 1
    new-instance v0, Ljava/lang/Thread;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/util/h;->b:Ljava/lang/String;
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/util/h;->a:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-virtual { v2 }, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I
    move-result v2
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, p1, v1 }, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    return-object v0
.end method
