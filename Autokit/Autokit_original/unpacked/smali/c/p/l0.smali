.class Lc/p/l0;
.super Ljava/lang/Object;
.implements Lc/p/m0;
.source "SourceFile"

.field private final a:Landroid/view/WindowId;

.method constructor <init>(Landroid/view/View;)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    invoke-virtual { p1 }, Landroid/view/View;->getWindowId()Landroid/view/WindowId;
    move-result-object p1
    iput-object p1, p0, Lc/p/l0;->a:Landroid/view/WindowId;
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
  .registers 3
  .line 1
    instance-of v0, p1, Lc/p/l0;
    if-eqz v0, :L0
    check-cast p1, Lc/p/l0;
    iget-object p1, p1, Lc/p/l0;->a:Landroid/view/WindowId;
    iget-object v0, p0, Lc/p/l0;->a:Landroid/view/WindowId;
    invoke-virtual { p1, v0 }, Landroid/view/WindowId;->equals(Ljava/lang/Object;)Z
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
    iget-object v0, p0, Lc/p/l0;->a:Landroid/view/WindowId;
    invoke-virtual { v0 }, Landroid/view/WindowId;->hashCode()I
    move-result v0
    return v0
.end method
