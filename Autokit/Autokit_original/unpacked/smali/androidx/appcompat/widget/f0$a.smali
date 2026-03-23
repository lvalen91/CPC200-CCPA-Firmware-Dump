.class Landroidx/appcompat/widget/f0$a;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/widget/f0;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 2
  name = "a"
.end annotation

.field final synthetic b:Landroidx/appcompat/widget/f0;

.method constructor <init>(Landroidx/appcompat/widget/f0;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/f0$a;->b:Landroidx/appcompat/widget/f0;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/f0$a;->b:Landroidx/appcompat/widget/f0;
    iget-object v0, v0, Landroidx/appcompat/widget/f0;->e:Landroid/view/View;
    invoke-virtual { v0 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v0
    if-eqz v0, :L0
    const/4 v1, 1
  .line 2
    invoke-interface { v0, v1 }, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V
  :L0
    return-void
.end method
