.class Lc/p/a0;
.super Ljava/lang/Object;
.implements Lc/p/b0;
.source "SourceFile"

.field private final a:Landroid/view/ViewOverlay;

.method constructor <init>(Landroid/view/View;)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    invoke-virtual { p1 }, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;
    move-result-object p1
    iput-object p1, p0, Lc/p/a0;->a:Landroid/view/ViewOverlay;
    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lc/p/a0;->a:Landroid/view/ViewOverlay;
    invoke-virtual { v0, p1 }, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V
    return-void
.end method

.method public d(Landroid/graphics/drawable/Drawable;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lc/p/a0;->a:Landroid/view/ViewOverlay;
    invoke-virtual { v0, p1 }, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V
    return-void
.end method
