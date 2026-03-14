.class Lc/p/k0;
.super Ljava/lang/Object;
.implements Lc/p/m0;
.source "SourceFile"

.field private final a:Landroid/os/IBinder;

.method constructor <init>(Landroid/os/IBinder;)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Lc/p/k0;->a:Landroid/os/IBinder;
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
  .registers 3
  .line 1
    instance-of v0, p1, Lc/p/k0;
    if-eqz v0, :L0
    check-cast p1, Lc/p/k0;
    iget-object p1, p1, Lc/p/k0;->a:Landroid/os/IBinder;
    iget-object v0, p0, Lc/p/k0;->a:Landroid/os/IBinder;
    invoke-virtual { p1, v0 }, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    move-result p1
    if-eqz p1, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    return p1
.end method

.method public hashCode()I
  .registers 2
  .line 1
    iget-object v0, p0, Lc/p/k0;->a:Landroid/os/IBinder;
    invoke-virtual { v0 }, Ljava/lang/Object;->hashCode()I
    move-result v0
    return v0
.end method
