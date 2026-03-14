.class Landroidx/lifecycle/g;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/lifecycle/g$a;
  }
.end annotation

.field private static a:Ljava/util/concurrent/atomic/AtomicBoolean;

.method static constructor <clinit>()V
  .registers 2
  .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;
    const/4 v1, 0
    invoke-direct { v0, v1 }, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V
    sput-object v0, Landroidx/lifecycle/g;->a:Ljava/util/concurrent/atomic/AtomicBoolean;
    return-void
.end method

.method static a(Landroid/content/Context;)V
  .registers 3
  .line 1
    sget-object v0, Landroidx/lifecycle/g;->a:Ljava/util/concurrent/atomic/AtomicBoolean;
    const/4 v1, 1
    invoke-virtual { v0, v1 }, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z
    move-result v0
    if-eqz v0, :L0
    return-void
  :L0
  .line 2
    invoke-virtual { p0 }, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
    move-result-object p0
    check-cast p0, Landroid/app/Application;
    new-instance v0, Landroidx/lifecycle/g$a;
    invoke-direct { v0 }, Landroidx/lifecycle/g$a;-><init>()V
  .line 3
    invoke-virtual { p0, v0 }, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    return-void
.end method
