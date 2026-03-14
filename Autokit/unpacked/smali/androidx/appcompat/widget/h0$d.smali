.class Landroidx/appcompat/widget/h0$d;
.super Ljava/lang/Object;
.implements Landroid/widget/AbsListView$OnScrollListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/widget/h0;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 2
  name = "d"
.end annotation

.field final synthetic a:Landroidx/appcompat/widget/h0;

.method constructor <init>(Landroidx/appcompat/widget/h0;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/h0$d;->a:Landroidx/appcompat/widget/h0;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
  .registers 5
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
  .registers 3
    const/4 p1, 1
    if-ne p2, p1, :L0
  .line 1
    iget-object p1, p0, Landroidx/appcompat/widget/h0$d;->a:Landroidx/appcompat/widget/h0;
  .line 2
    invoke-virtual { p1 }, Landroidx/appcompat/widget/h0;->A()Z
    move-result p1
    if-nez p1, :L0
    iget-object p1, p0, Landroidx/appcompat/widget/h0$d;->a:Landroidx/appcompat/widget/h0;
    iget-object p1, p1, Landroidx/appcompat/widget/h0;->F:Landroid/widget/PopupWindow;
    invoke-virtual { p1 }, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;
    move-result-object p1
    if-eqz p1, :L0
  .line 3
    iget-object p1, p0, Landroidx/appcompat/widget/h0$d;->a:Landroidx/appcompat/widget/h0;
    iget-object p2, p1, Landroidx/appcompat/widget/h0;->B:Landroid/os/Handler;
    iget-object p1, p1, Landroidx/appcompat/widget/h0;->x:Landroidx/appcompat/widget/h0$f;
    invoke-virtual { p2, p1 }, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
  .line 4
    iget-object p1, p0, Landroidx/appcompat/widget/h0$d;->a:Landroidx/appcompat/widget/h0;
    iget-object p1, p1, Landroidx/appcompat/widget/h0;->x:Landroidx/appcompat/widget/h0$f;
    invoke-virtual { p1 }, Landroidx/appcompat/widget/h0$f;->run()V
  :L0
    return-void
.end method
