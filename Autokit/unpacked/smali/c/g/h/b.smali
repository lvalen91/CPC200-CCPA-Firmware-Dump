.class Lc/g/h/b;
.super Ljava/lang/Object;
.source "SourceFile"

.method public constructor <init>()V
  .registers 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method static a()Landroid/os/Handler;
  .registers 2
  .line 1
    invoke-static { }, Landroid/os/Looper;->myLooper()Landroid/os/Looper;
    move-result-object v0
    if-nez v0, :L0
  .line 2
    new-instance v0, Landroid/os/Handler;
    invoke-static { }, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
    move-result-object v1
    invoke-direct { v0, v1 }, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    goto :L1
  :L0
  .line 3
    new-instance v0, Landroid/os/Handler;
    invoke-direct { v0 }, Landroid/os/Handler;-><init>()V
  :L1
    return-object v0
.end method
