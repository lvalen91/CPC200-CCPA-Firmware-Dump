.class Landroidx/appcompat/view/menu/q$b;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnAttachStateChangeListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/view/menu/q;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Landroidx/appcompat/view/menu/q;

.method constructor <init>(Landroidx/appcompat/view/menu/q;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/q$b;->b:Landroidx/appcompat/view/menu/q;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
  .registers 2
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/q$b;->b:Landroidx/appcompat/view/menu/q;
    iget-object v0, v0, Landroidx/appcompat/view/menu/q;->q:Landroid/view/ViewTreeObserver;
    if-eqz v0, :L1
  .line 2
    invoke-virtual { v0 }, Landroid/view/ViewTreeObserver;->isAlive()Z
    move-result v0
    if-nez v0, :L0
    iget-object v0, p0, Landroidx/appcompat/view/menu/q$b;->b:Landroidx/appcompat/view/menu/q;
    invoke-virtual { p1 }, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
    move-result-object v1
    iput-object v1, v0, Landroidx/appcompat/view/menu/q;->q:Landroid/view/ViewTreeObserver;
  :L0
  .line 3
    iget-object v0, p0, Landroidx/appcompat/view/menu/q$b;->b:Landroidx/appcompat/view/menu/q;
    iget-object v1, v0, Landroidx/appcompat/view/menu/q;->q:Landroid/view/ViewTreeObserver;
    iget-object v0, v0, Landroidx/appcompat/view/menu/q;->k:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-virtual { v1, v0 }, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
  :L1
  .line 4
    invoke-virtual { p1, p0 }, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    return-void
.end method
