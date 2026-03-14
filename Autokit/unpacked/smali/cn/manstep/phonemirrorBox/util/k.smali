.class public Lcn/manstep/phonemirrorBox/util/k;
.super Ljava/lang/Object;
.source "SourceFile"

.field private final a:Landroid/os/Handler;

.field private final b:Ljava/util/Map;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/Map<",
      "Ljava/lang/String;",
      "Ljava/lang/Runnable;",
      ">;"
    }
  .end annotation
.end field

.method public constructor <init>(Landroid/os/Handler;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;
    invoke-direct { v0 }, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/util/k;->b:Ljava/util/Map;
  .line 3
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/k;->a:Landroid/os/Handler;
    return-void
.end method

.method public a(Ljava/lang/String;)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/k;->b:Ljava/util/Map;
    invoke-interface { v0, p1 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/Runnable;
    if-eqz v0, :L0
  .line 2
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/util/k;->a:Landroid/os/Handler;
    invoke-virtual { v1, v0 }, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/k;->b:Ljava/util/Map;
    invoke-interface { v0, p1 }, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
  :L0
    return-void
.end method

.method public b(Ljava/lang/String;JLjava/lang/Runnable;)V
  .registers 6
  .line 1
    invoke-virtual { p0, p1 }, Lcn/manstep/phonemirrorBox/util/k;->a(Ljava/lang/String;)V
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/k;->b:Ljava/util/Map;
    invoke-interface { v0, p1, p4 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/k;->a:Landroid/os/Handler;
    invoke-virtual { p1, p4, p2, p3 }, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    return-void
.end method
