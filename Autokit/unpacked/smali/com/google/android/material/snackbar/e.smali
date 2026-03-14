.class Lcom/google/android/material/snackbar/e;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcom/google/android/material/snackbar/e$c;,
    Lcom/google/android/material/snackbar/e$b;
  }
.end annotation

.field private static e:Lcom/google/android/material/snackbar/e;

.field private final a:Ljava/lang/Object;

.field private final b:Landroid/os/Handler;

.field private c:Lcom/google/android/material/snackbar/e$c;

.field private d:Lcom/google/android/material/snackbar/e$c;

.method private constructor <init>()V
  .registers 4
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Ljava/lang/Object;
    invoke-direct { v0 }, Ljava/lang/Object;-><init>()V
    iput-object v0, p0, Lcom/google/android/material/snackbar/e;->a:Ljava/lang/Object;
  .line 3
    new-instance v0, Landroid/os/Handler;
  .line 4
    invoke-static { }, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
    move-result-object v1
    new-instance v2, Lcom/google/android/material/snackbar/e$a;
    invoke-direct { v2, p0 }, Lcom/google/android/material/snackbar/e$a;-><init>(Lcom/google/android/material/snackbar/e;)V
    invoke-direct { v0, v1, v2 }, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V
    iput-object v0, p0, Lcom/google/android/material/snackbar/e;->b:Landroid/os/Handler;
    return-void
.end method

.method private a(Lcom/google/android/material/snackbar/e$c;I)Z
  .registers 5
  .line 1
    iget-object v0, p1, Lcom/google/android/material/snackbar/e$c;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/google/android/material/snackbar/e$b;
    if-eqz v0, :L0
  .line 2
    iget-object v1, p0, Lcom/google/android/material/snackbar/e;->b:Landroid/os/Handler;
    invoke-virtual { v1, p1 }, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
  .line 3
    invoke-interface { v0, p2 }, Lcom/google/android/material/snackbar/e$b;->a(I)V
    const/4 p1, 1
    return p1
  :L0
    const/4 p1, 0
    return p1
.end method

.method static b()Lcom/google/android/material/snackbar/e;
  .registers 3
  .line 1
    sget-object v0, Lcom/google/android/material/snackbar/e;->e:Lcom/google/android/material/snackbar/e;
    if-nez v0, :L0
  .line 2
    new-instance v0, Lcom/google/android/material/snackbar/e;
    invoke-direct { v0 }, Lcom/google/android/material/snackbar/e;-><init>()V
    sput-object v0, Lcom/google/android/material/snackbar/e;->e:Lcom/google/android/material/snackbar/e;
  :L0
  .line 3
    sget-object v0, Lcom/google/android/material/snackbar/e;->e:Lcom/google/android/material/snackbar/e;
    return-object v0
.end method

.method private d(Lcom/google/android/material/snackbar/e$b;)Z
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/snackbar/e;->c:Lcom/google/android/material/snackbar/e$c;
    if-eqz v0, :L0
    invoke-virtual { v0, p1 }, Lcom/google/android/material/snackbar/e$c;->a(Lcom/google/android/material/snackbar/e$b;)Z
    move-result p1
    if-eqz p1, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    return p1
.end method

.method private g(Lcom/google/android/material/snackbar/e$c;)V
  .registers 6
  .line 1
    iget v0, p1, Lcom/google/android/material/snackbar/e$c;->b:I
    const/4 v1, -2
    if-ne v0, v1, :L0
    return-void
  :L0
    const/16 v1, 2750
    if-lez v0, :L1
    goto :L3
  :L1
    const/4 v2, -1
    if-ne v0, v2, :L2
    const/16 v0, 1500
    goto :L3
  :L2
    const/16 v0, 2750
  :L3
  .line 2
    iget-object v1, p0, Lcom/google/android/material/snackbar/e;->b:Landroid/os/Handler;
    invoke-virtual { v1, p1 }, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
  .line 3
    iget-object v1, p0, Lcom/google/android/material/snackbar/e;->b:Landroid/os/Handler;
    const/4 v2, 0
    invoke-static { v1, v2, p1 }, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;
    move-result-object p1
    int-to-long v2, v0
    invoke-virtual { v1, p1, v2, v3 }, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    return-void
.end method

.method c(Lcom/google/android/material/snackbar/e$c;)V
  .catchall { :L0 .. :L4 } :L3
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/google/android/material/snackbar/e;->a:Ljava/lang/Object;
    monitor-enter v0
  :L0
  .line 2
    iget-object v1, p0, Lcom/google/android/material/snackbar/e;->c:Lcom/google/android/material/snackbar/e$c;
    if-eq v1, p1, :L1
    iget-object v1, p0, Lcom/google/android/material/snackbar/e;->d:Lcom/google/android/material/snackbar/e$c;
    if-ne v1, p1, :L2
  :L1
    const/4 v1, 2
  .line 3
    invoke-direct { p0, p1, v1 }, Lcom/google/android/material/snackbar/e;->a(Lcom/google/android/material/snackbar/e$c;I)Z
  :L2
  .line 4
    monitor-exit v0
    return-void
  :L3
    move-exception p1
    monitor-exit v0
  :L4
    throw p1
.end method

.method public e(Lcom/google/android/material/snackbar/e$b;)V
  .catchall { :L0 .. :L3 } :L2
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/google/android/material/snackbar/e;->a:Ljava/lang/Object;
    monitor-enter v0
  :L0
  .line 2
    invoke-direct { p0, p1 }, Lcom/google/android/material/snackbar/e;->d(Lcom/google/android/material/snackbar/e$b;)Z
    move-result p1
    if-eqz p1, :L1
    iget-object p1, p0, Lcom/google/android/material/snackbar/e;->c:Lcom/google/android/material/snackbar/e$c;
    iget-boolean p1, p1, Lcom/google/android/material/snackbar/e$c;->c:Z
    if-nez p1, :L1
  .line 3
    iget-object p1, p0, Lcom/google/android/material/snackbar/e;->c:Lcom/google/android/material/snackbar/e$c;
    const/4 v1, 1
    iput-boolean v1, p1, Lcom/google/android/material/snackbar/e$c;->c:Z
  .line 4
    iget-object p1, p0, Lcom/google/android/material/snackbar/e;->b:Landroid/os/Handler;
    iget-object v1, p0, Lcom/google/android/material/snackbar/e;->c:Lcom/google/android/material/snackbar/e$c;
    invoke-virtual { p1, v1 }, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
  :L1
  .line 5
    monitor-exit v0
    return-void
  :L2
    move-exception p1
    monitor-exit v0
  :L3
    throw p1
.end method

.method public f(Lcom/google/android/material/snackbar/e$b;)V
  .catchall { :L0 .. :L3 } :L2
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/google/android/material/snackbar/e;->a:Ljava/lang/Object;
    monitor-enter v0
  :L0
  .line 2
    invoke-direct { p0, p1 }, Lcom/google/android/material/snackbar/e;->d(Lcom/google/android/material/snackbar/e$b;)Z
    move-result p1
    if-eqz p1, :L1
    iget-object p1, p0, Lcom/google/android/material/snackbar/e;->c:Lcom/google/android/material/snackbar/e$c;
    iget-boolean p1, p1, Lcom/google/android/material/snackbar/e$c;->c:Z
    if-eqz p1, :L1
  .line 3
    iget-object p1, p0, Lcom/google/android/material/snackbar/e;->c:Lcom/google/android/material/snackbar/e$c;
    const/4 v1, 0
    iput-boolean v1, p1, Lcom/google/android/material/snackbar/e$c;->c:Z
  .line 4
    iget-object p1, p0, Lcom/google/android/material/snackbar/e;->c:Lcom/google/android/material/snackbar/e$c;
    invoke-direct { p0, p1 }, Lcom/google/android/material/snackbar/e;->g(Lcom/google/android/material/snackbar/e$c;)V
  :L1
  .line 5
    monitor-exit v0
    return-void
  :L2
    move-exception p1
    monitor-exit v0
  :L3
    throw p1
.end method
