.class Landroidx/appcompat/widget/n0$a;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/appcompat/widget/n0;->a(I)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroidx/appcompat/widget/n0;

.method constructor <init>(Landroidx/appcompat/widget/n0;Landroid/view/View;)V
  .registers 3
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/n0$a;->c:Landroidx/appcompat/widget/n0;
    iput-object p2, p0, Landroidx/appcompat/widget/n0$a;->b:Landroid/view/View;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/n0$a;->b:Landroid/view/View;
    invoke-virtual { v0 }, Landroid/view/View;->getLeft()I
    move-result v0
    iget-object v1, p0, Landroidx/appcompat/widget/n0$a;->c:Landroidx/appcompat/widget/n0;
    invoke-virtual { v1 }, Landroid/widget/HorizontalScrollView;->getWidth()I
    move-result v1
    iget-object v2, p0, Landroidx/appcompat/widget/n0$a;->b:Landroid/view/View;
    invoke-virtual { v2 }, Landroid/view/View;->getWidth()I
    move-result v2
    sub-int/2addr v1, v2
    div-int/lit8 v1, v1, 2
    sub-int/2addr v0, v1
  .line 2
    iget-object v1, p0, Landroidx/appcompat/widget/n0$a;->c:Landroidx/appcompat/widget/n0;
    const/4 v2, 0
    invoke-virtual { v1, v0, v2 }, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/n0$a;->c:Landroidx/appcompat/widget/n0;
    const/4 v1, 0
    iput-object v1, v0, Landroidx/appcompat/widget/n0;->b:Ljava/lang/Runnable;
    return-void
.end method
