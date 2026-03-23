.class Landroidx/fragment/app/u$a;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnAttachStateChangeListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/fragment/app/u;->f()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Landroid/view/View;

.method constructor <init>(Landroidx/fragment/app/u;Landroid/view/View;)V
  .registers 3
  .line 1
    iput-object p2, p0, Landroidx/fragment/app/u$a;->b:Landroid/view/View;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
  .registers 2
  .line 1
    iget-object p1, p0, Landroidx/fragment/app/u$a;->b:Landroid/view/View;
    invoke-virtual { p1, p0 }, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
  .line 2
    iget-object p1, p0, Landroidx/fragment/app/u$a;->b:Landroid/view/View;
    invoke-static { p1 }, Landroidx/core/view/v;->l0(Landroid/view/View;)V
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
  .registers 2
    return-void
.end method
