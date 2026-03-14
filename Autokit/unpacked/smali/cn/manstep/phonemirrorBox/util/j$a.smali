.class Lcn/manstep/phonemirrorBox/util/j$a;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcn/manstep/phonemirrorBox/util/j;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 2
  name = "a"
.end annotation

.field private final b:Ljava/lang/Runnable;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic e:Lcn/manstep/phonemirrorBox/util/j;

.method public constructor <init>(Lcn/manstep/phonemirrorBox/util/j;Ljava/lang/String;Ljava/lang/Runnable;)V
  .registers 5
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/j$a;->e:Lcn/manstep/phonemirrorBox/util/j;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;
    const/4 v0, 0
    invoke-direct { p1, v0 }, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/j$a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;
  .line 3
    iput-object p3, p0, Lcn/manstep/phonemirrorBox/util/j$a;->b:Ljava/lang/Runnable;
  .line 4
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/util/j$a;->c:Ljava/lang/String;
    return-void
.end method

.method public run()V
  .catchall { :L0 .. :L1 } :L3
  .registers 4
  :L0
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/j$a;->b:Ljava/lang/Runnable;
    invoke-interface { v0 }, Ljava/lang/Runnable;->run()V
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/j$a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;
    const/4 v1, 1
    invoke-virtual { v0, v1 }, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
  :L1
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/j$a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-virtual { v0 }, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    move-result v0
    if-eqz v0, :L2
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/j$a;->e:Lcn/manstep/phonemirrorBox/util/j;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/j;->a(Lcn/manstep/phonemirrorBox/util/j;)Ljava/util/Map;
    move-result-object v0
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/util/j$a;->c:Ljava/lang/String;
    invoke-interface { v0, v1 }, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
  :L2
    return-void
  :L3
    move-exception v0
  .line 5
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/util/j$a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-virtual { v1 }, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    move-result v1
    if-eqz v1, :L4
  .line 6
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/util/j$a;->e:Lcn/manstep/phonemirrorBox/util/j;
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/util/j;->a(Lcn/manstep/phonemirrorBox/util/j;)Ljava/util/Map;
    move-result-object v1
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/util/j$a;->c:Ljava/lang/String;
    invoke-interface { v1, v2 }, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
  :L4
  .line 7
    throw v0
.end method
