.class Lc/p/v;
.super Ljava/lang/Object;
.implements Lc/p/w;
.source "SourceFile"

.field private final a:Landroid/view/ViewGroupOverlay;

.method constructor <init>(Landroid/view/ViewGroup;)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    invoke-virtual { p1 }, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;
    move-result-object p1
    iput-object p1, p0, Lc/p/v;->a:Landroid/view/ViewGroupOverlay;
    return-void
.end method

.method public a(Landroid/view/View;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lc/p/v;->a:Landroid/view/ViewGroupOverlay;
    invoke-virtual { v0, p1 }, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V
    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lc/p/v;->a:Landroid/view/ViewGroupOverlay;
    invoke-virtual { v0, p1 }, Landroid/view/ViewGroupOverlay;->add(Landroid/graphics/drawable/Drawable;)V
    return-void
.end method

.method public c(Landroid/view/View;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lc/p/v;->a:Landroid/view/ViewGroupOverlay;
    invoke-virtual { v0, p1 }, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V
    return-void
.end method

.method public d(Landroid/graphics/drawable/Drawable;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lc/p/v;->a:Landroid/view/ViewGroupOverlay;
    invoke-virtual { v0, p1 }, Landroid/view/ViewGroupOverlay;->remove(Landroid/graphics/drawable/Drawable;)V
    return-void
.end method
