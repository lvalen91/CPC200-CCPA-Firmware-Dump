.class Landroidx/core/view/z$c;
.super Ljava/lang/Object;
.implements Landroidx/core/view/a0;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/core/view/z;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = "c"
.end annotation

.field a:Landroidx/core/view/z;

.field b:Z

.method constructor <init>(Landroidx/core/view/z;)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Landroidx/core/view/z$c;->a:Landroidx/core/view/z;
    return-void
.end method

.method public a(Landroid/view/View;)V
  .annotation build Landroid/annotation/SuppressLint;
    value = {
      "WrongConstant"
    }
  .end annotation
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/core/view/z$c;->a:Landroidx/core/view/z;
    iget v0, v0, Landroidx/core/view/z;->d:I
    const/4 v1, -1
    const/4 v2, 0
    if-le v0, v1, :L0
  .line 2
    invoke-virtual { p1, v0, v2 }, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V
  .line 3
    iget-object v0, p0, Landroidx/core/view/z$c;->a:Landroidx/core/view/z;
    iput v1, v0, Landroidx/core/view/z;->d:I
  :L0
  .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 16
    if-ge v0, v1, :L1
    iget-boolean v0, p0, Landroidx/core/view/z$c;->b:Z
    if-nez v0, :L5
  :L1
  .line 5
    iget-object v0, p0, Landroidx/core/view/z$c;->a:Landroidx/core/view/z;
    iget-object v1, v0, Landroidx/core/view/z;->c:Ljava/lang/Runnable;
    if-eqz v1, :L2
  .line 6
    iput-object v2, v0, Landroidx/core/view/z;->c:Ljava/lang/Runnable;
  .line 7
    invoke-interface { v1 }, Ljava/lang/Runnable;->run()V
  :L2
    const/high16 v0, 32256
  .line 8
    invoke-virtual { p1, v0 }, Landroid/view/View;->getTag(I)Ljava/lang/Object;
    move-result-object v0
  .line 9
    instance-of v1, v0, Landroidx/core/view/a0;
    if-eqz v1, :L3
  .line 10
    move-object v2, v0
    check-cast v2, Landroidx/core/view/a0;
  :L3
    if-eqz v2, :L4
  .line 11
    invoke-interface { v2, p1 }, Landroidx/core/view/a0;->a(Landroid/view/View;)V
  :L4
    const/4 p1, 1
  .line 12
    iput-boolean p1, p0, Landroidx/core/view/z$c;->b:Z
  :L5
    return-void
.end method

.method public b(Landroid/view/View;)V
  .registers 5
    const/4 v0, 0
  .line 1
    iput-boolean v0, p0, Landroidx/core/view/z$c;->b:Z
  .line 2
    iget-object v0, p0, Landroidx/core/view/z$c;->a:Landroidx/core/view/z;
    iget v0, v0, Landroidx/core/view/z;->d:I
    const/4 v1, 0
    const/4 v2, -1
    if-le v0, v2, :L0
    const/4 v0, 2
  .line 3
    invoke-virtual { p1, v0, v1 }, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V
  :L0
  .line 4
    iget-object v0, p0, Landroidx/core/view/z$c;->a:Landroidx/core/view/z;
    iget-object v2, v0, Landroidx/core/view/z;->b:Ljava/lang/Runnable;
    if-eqz v2, :L1
  .line 5
    iput-object v1, v0, Landroidx/core/view/z;->b:Ljava/lang/Runnable;
  .line 6
    invoke-interface { v2 }, Ljava/lang/Runnable;->run()V
  :L1
    const/high16 v0, 32256
  .line 7
    invoke-virtual { p1, v0 }, Landroid/view/View;->getTag(I)Ljava/lang/Object;
    move-result-object v0
  .line 8
    instance-of v2, v0, Landroidx/core/view/a0;
    if-eqz v2, :L2
  .line 9
    move-object v1, v0
    check-cast v1, Landroidx/core/view/a0;
  :L2
    if-eqz v1, :L3
  .line 10
    invoke-interface { v1, p1 }, Landroidx/core/view/a0;->b(Landroid/view/View;)V
  :L3
    return-void
.end method

.method public c(Landroid/view/View;)V
  .registers 4
    const/high16 v0, 32256
  .line 1
    invoke-virtual { p1, v0 }, Landroid/view/View;->getTag(I)Ljava/lang/Object;
    move-result-object v0
  .line 2
    instance-of v1, v0, Landroidx/core/view/a0;
    if-eqz v1, :L0
  .line 3
    check-cast v0, Landroidx/core/view/a0;
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    if-eqz v0, :L2
  .line 4
    invoke-interface { v0, p1 }, Landroidx/core/view/a0;->c(Landroid/view/View;)V
  :L2
    return-void
.end method
