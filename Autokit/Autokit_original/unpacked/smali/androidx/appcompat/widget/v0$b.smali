.class Landroidx/appcompat/widget/v0$b;
.super Landroidx/core/view/b0;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/appcompat/widget/v0;->s(IJ)Landroidx/core/view/z;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field private a:Z

.field final synthetic b:I

.field final synthetic c:Landroidx/appcompat/widget/v0;

.method constructor <init>(Landroidx/appcompat/widget/v0;I)V
  .registers 3
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/v0$b;->c:Landroidx/appcompat/widget/v0;
    iput p2, p0, Landroidx/appcompat/widget/v0$b;->b:I
    invoke-direct { p0 }, Landroidx/core/view/b0;-><init>()V
    const/4 p1, 0
  .line 2
    iput-boolean p1, p0, Landroidx/appcompat/widget/v0$b;->a:Z
    return-void
.end method

.method public a(Landroid/view/View;)V
  .registers 3
  .line 1
    iget-boolean p1, p0, Landroidx/appcompat/widget/v0$b;->a:Z
    if-nez p1, :L0
  .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/v0$b;->c:Landroidx/appcompat/widget/v0;
    iget-object p1, p1, Landroidx/appcompat/widget/v0;->a:Landroidx/appcompat/widget/Toolbar;
    iget v0, p0, Landroidx/appcompat/widget/v0$b;->b:I
    invoke-virtual { p1, v0 }, Landroid/view/ViewGroup;->setVisibility(I)V
  :L0
    return-void
.end method

.method public b(Landroid/view/View;)V
  .registers 3
  .line 1
    iget-object p1, p0, Landroidx/appcompat/widget/v0$b;->c:Landroidx/appcompat/widget/v0;
    iget-object p1, p1, Landroidx/appcompat/widget/v0;->a:Landroidx/appcompat/widget/Toolbar;
    const/4 v0, 0
    invoke-virtual { p1, v0 }, Landroid/view/ViewGroup;->setVisibility(I)V
    return-void
.end method

.method public c(Landroid/view/View;)V
  .registers 2
    const/4 p1, 1
  .line 1
    iput-boolean p1, p0, Landroidx/appcompat/widget/v0$b;->a:Z
    return-void
.end method
