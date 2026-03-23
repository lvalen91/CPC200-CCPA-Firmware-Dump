.class Landroidx/appcompat/widget/h0$f;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/widget/h0;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 2
  name = "f"
.end annotation

.field final synthetic b:Landroidx/appcompat/widget/h0;

.method constructor <init>(Landroidx/appcompat/widget/h0;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/h0$f;->b:Landroidx/appcompat/widget/h0;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/h0$f;->b:Landroidx/appcompat/widget/h0;
    iget-object v0, v0, Landroidx/appcompat/widget/h0;->d:Landroidx/appcompat/widget/d0;
    if-eqz v0, :L0
    invoke-static { v0 }, Landroidx/core/view/v;->S(Landroid/view/View;)Z
    move-result v0
    if-eqz v0, :L0
    iget-object v0, p0, Landroidx/appcompat/widget/h0$f;->b:Landroidx/appcompat/widget/h0;
    iget-object v0, v0, Landroidx/appcompat/widget/h0;->d:Landroidx/appcompat/widget/d0;
  .line 2
    invoke-virtual { v0 }, Landroid/widget/ListView;->getCount()I
    move-result v0
    iget-object v1, p0, Landroidx/appcompat/widget/h0$f;->b:Landroidx/appcompat/widget/h0;
    iget-object v1, v1, Landroidx/appcompat/widget/h0;->d:Landroidx/appcompat/widget/d0;
    invoke-virtual { v1 }, Landroid/widget/ListView;->getChildCount()I
    move-result v1
    if-le v0, v1, :L0
    iget-object v0, p0, Landroidx/appcompat/widget/h0$f;->b:Landroidx/appcompat/widget/h0;
    iget-object v0, v0, Landroidx/appcompat/widget/h0;->d:Landroidx/appcompat/widget/d0;
  .line 3
    invoke-virtual { v0 }, Landroid/widget/ListView;->getChildCount()I
    move-result v0
    iget-object v1, p0, Landroidx/appcompat/widget/h0$f;->b:Landroidx/appcompat/widget/h0;
    iget v2, v1, Landroidx/appcompat/widget/h0;->p:I
    if-gt v0, v2, :L0
  .line 4
    iget-object v0, v1, Landroidx/appcompat/widget/h0;->F:Landroid/widget/PopupWindow;
    const/4 v1, 2
    invoke-virtual { v0, v1 }, Landroid/widget/PopupWindow;->setInputMethodMode(I)V
  .line 5
    iget-object v0, p0, Landroidx/appcompat/widget/h0$f;->b:Landroidx/appcompat/widget/h0;
    invoke-virtual { v0 }, Landroidx/appcompat/widget/h0;->g()V
  :L0
    return-void
.end method
