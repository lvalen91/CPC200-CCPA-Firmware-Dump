.class Landroidx/appcompat/app/o$c;
.super Ljava/lang/Object;
.implements Landroidx/core/view/c0;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/app/o;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Landroidx/appcompat/app/o;

.method constructor <init>(Landroidx/appcompat/app/o;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/app/o$c;->a:Landroidx/appcompat/app/o;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(Landroid/view/View;)V
  .registers 2
  .line 1
    iget-object p1, p0, Landroidx/appcompat/app/o$c;->a:Landroidx/appcompat/app/o;
    iget-object p1, p1, Landroidx/appcompat/app/o;->d:Landroidx/appcompat/widget/ActionBarContainer;
    invoke-virtual { p1 }, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;
    move-result-object p1
  .line 2
    check-cast p1, Landroid/view/View;
    invoke-virtual { p1 }, Landroid/view/View;->invalidate()V
    return-void
.end method
