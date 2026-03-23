.class public Lcn/manstep/phonemirrorBox/util/j;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcn/manstep/phonemirrorBox/util/j$a;
  }
.end annotation

.field private static c:Lcn/manstep/phonemirrorBox/util/j;

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

.method private constructor <init>()V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;
    invoke-direct { v0 }, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/util/j;->b:Ljava/util/Map;
  .line 3
    new-instance v0, Landroid/os/Handler;
    invoke-static { }, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
    move-result-object v1
    invoke-direct { v0, v1 }, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/util/j;->a:Landroid/os/Handler;
    return-void
.end method

.method static synthetic a(Lcn/manstep/phonemirrorBox/util/j;)Ljava/util/Map;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/util/j;->b:Ljava/util/Map;
    return-object p0
.end method

.method public static c()Lcn/manstep/phonemirrorBox/util/j;
  .catchall { :L0 .. :L3 } :L2
  .registers 4
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/util/j;->c:Lcn/manstep/phonemirrorBox/util/j;
    if-nez v0, :L4
  .line 2
    const-class v0, Lcn/manstep/phonemirrorBox/util/j;
    monitor-enter v0
  :L0
  .line 3
    sget-object v1, Lcn/manstep/phonemirrorBox/util/j;->c:Lcn/manstep/phonemirrorBox/util/j;
    if-nez v1, :L1
  .line 4
    new-instance v1, Lcn/manstep/phonemirrorBox/util/j;
    invoke-direct { v1 }, Lcn/manstep/phonemirrorBox/util/j;-><init>()V
    sput-object v1, Lcn/manstep/phonemirrorBox/util/j;->c:Lcn/manstep/phonemirrorBox/util/j;
  :L1
  .line 5
    monitor-exit v0
    goto :L4
  :L2
    move-exception v1
    monitor-exit v0
  :L3
    throw v1
  :L4
  .line 6
    sget-object v0, Lcn/manstep/phonemirrorBox/util/j;->c:Lcn/manstep/phonemirrorBox/util/j;
    return-object v0
.end method

.method public static d(Ljava/lang/Runnable;)Lcn/manstep/phonemirrorBox/util/j;
  .registers 5
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/util/j;->c()Lcn/manstep/phonemirrorBox/util/j;
    move-result-object v0
    const-string v1, ""
    const-wide/16 v2, 0
    invoke-virtual { v0, v1, v2, v3, p0 }, Lcn/manstep/phonemirrorBox/util/j;->e(Ljava/lang/String;JLjava/lang/Runnable;)Lcn/manstep/phonemirrorBox/util/j;
    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcn/manstep/phonemirrorBox/util/j;
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/j;->b:Ljava/util/Map;
    invoke-interface { v0, p1 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/Runnable;
    if-eqz v0, :L0
  .line 2
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/util/j;->a:Landroid/os/Handler;
    invoke-virtual { v1, v0 }, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/j;->b:Ljava/util/Map;
    invoke-interface { v0, p1 }, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
  :L0
    return-object p0
.end method

.method public e(Ljava/lang/String;JLjava/lang/Runnable;)Lcn/manstep/phonemirrorBox/util/j;
  .registers 6
  .line 1
    invoke-static { p1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/j;->a:Landroid/os/Handler;
    invoke-virtual { p1, p4 }, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    goto :L1
  :L0
  .line 3
    invoke-virtual { p0, p1 }, Lcn/manstep/phonemirrorBox/util/j;->b(Ljava/lang/String;)Lcn/manstep/phonemirrorBox/util/j;
  .line 4
    new-instance v0, Lcn/manstep/phonemirrorBox/util/j$a;
    invoke-direct { v0, p0, p1, p4 }, Lcn/manstep/phonemirrorBox/util/j$a;-><init>(Lcn/manstep/phonemirrorBox/util/j;Ljava/lang/String;Ljava/lang/Runnable;)V
  .line 5
    iget-object p4, p0, Lcn/manstep/phonemirrorBox/util/j;->b:Ljava/util/Map;
    invoke-interface { p4, p1, v0 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/j;->a:Landroid/os/Handler;
    invoke-virtual { p1, v0, p2, p3 }, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
  :L1
    return-object p0
.end method
