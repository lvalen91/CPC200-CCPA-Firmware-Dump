.class Landroidx/appcompat/widget/v0$a;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnClickListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/appcompat/widget/v0;-><init>(Landroidx/appcompat/widget/Toolbar;ZII)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final b:Landroidx/appcompat/view/menu/a;

.field final synthetic c:Landroidx/appcompat/widget/v0;

.method constructor <init>(Landroidx/appcompat/widget/v0;)V
  .registers 9
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/v0$a;->c:Landroidx/appcompat/widget/v0;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance p1, Landroidx/appcompat/view/menu/a;
    iget-object v0, p0, Landroidx/appcompat/widget/v0$a;->c:Landroidx/appcompat/widget/v0;
    iget-object v0, v0, Landroidx/appcompat/widget/v0;->a:Landroidx/appcompat/widget/Toolbar;
    invoke-virtual { v0 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object v1
    iget-object v0, p0, Landroidx/appcompat/widget/v0$a;->c:Landroidx/appcompat/widget/v0;
    iget-object v6, v0, Landroidx/appcompat/widget/v0;->i:Ljava/lang/CharSequence;
    const/4 v2, 0
    const v3, 16908332
    const/4 v4, 0
    const/4 v5, 0
    move-object v0, p1
    invoke-direct/range { v0 .. v6 }, Landroidx/appcompat/view/menu/a;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V
    iput-object p1, p0, Landroidx/appcompat/widget/v0$a;->b:Landroidx/appcompat/view/menu/a;
    return-void
.end method

.method public onClick(Landroid/view/View;)V
  .registers 4
  .line 1
    iget-object p1, p0, Landroidx/appcompat/widget/v0$a;->c:Landroidx/appcompat/widget/v0;
    iget-object v0, p1, Landroidx/appcompat/widget/v0;->l:Landroid/view/Window$Callback;
    if-eqz v0, :L0
    iget-boolean p1, p1, Landroidx/appcompat/widget/v0;->m:Z
    if-eqz p1, :L0
    const/4 p1, 0
  .line 2
    iget-object v1, p0, Landroidx/appcompat/widget/v0$a;->b:Landroidx/appcompat/view/menu/a;
    invoke-interface { v0, p1, v1 }, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z
  :L0
    return-void
.end method
