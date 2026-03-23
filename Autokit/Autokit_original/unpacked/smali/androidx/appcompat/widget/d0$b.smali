.class Landroidx/appcompat/widget/d0$b;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/widget/d0;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 2
  name = "b"
.end annotation

.field final synthetic b:Landroidx/appcompat/widget/d0;

.method constructor <init>(Landroidx/appcompat/widget/d0;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/d0$b;->b:Landroidx/appcompat/widget/d0;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a()V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/d0$b;->b:Landroidx/appcompat/widget/d0;
    const/4 v1, 0
    iput-object v1, v0, Landroidx/appcompat/widget/d0;->o:Landroidx/appcompat/widget/d0$b;
  .line 2
    invoke-virtual { v0, p0 }, Landroid/widget/ListView;->removeCallbacks(Ljava/lang/Runnable;)Z
    return-void
.end method

.method public b()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/d0$b;->b:Landroidx/appcompat/widget/d0;
    invoke-virtual { v0, p0 }, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z
    return-void
.end method

.method public run()V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/d0$b;->b:Landroidx/appcompat/widget/d0;
    const/4 v1, 0
    iput-object v1, v0, Landroidx/appcompat/widget/d0;->o:Landroidx/appcompat/widget/d0$b;
  .line 2
    invoke-virtual { v0 }, Landroidx/appcompat/widget/d0;->drawableStateChanged()V
    return-void
.end method
