.class Landroidx/appcompat/widget/n0$c;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnClickListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/widget/n0;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 2
  name = "c"
.end annotation

.field final synthetic b:Landroidx/appcompat/widget/n0;

.method constructor <init>(Landroidx/appcompat/widget/n0;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/n0$c;->b:Landroidx/appcompat/widget/n0;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onClick(Landroid/view/View;)V
  .registers 7
  .line 1
    move-object v0, p1
    check-cast v0, Landroidx/appcompat/widget/n0$d;
  .line 2
    invoke-virtual { v0 }, Landroidx/appcompat/widget/n0$d;->b()Landroidx/appcompat/app/a$c;
    move-result-object v0
    invoke-virtual { v0 }, Landroidx/appcompat/app/a$c;->e()V
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/n0$c;->b:Landroidx/appcompat/widget/n0;
    iget-object v0, v0, Landroidx/appcompat/widget/n0;->d:Landroidx/appcompat/widget/g0;
    invoke-virtual { v0 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v0
    const/4 v1, 0
    const/4 v2, 0
  :L0
    if-ge v2, v0, :L3
  .line 4
    iget-object v3, p0, Landroidx/appcompat/widget/n0$c;->b:Landroidx/appcompat/widget/n0;
    iget-object v3, v3, Landroidx/appcompat/widget/n0;->d:Landroidx/appcompat/widget/g0;
    invoke-virtual { v3, v2 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v3
    if-ne v3, p1, :L1
    const/4 v4, 1
    goto :L2
  :L1
    const/4 v4, 0
  :L2
  .line 5
    invoke-virtual { v3, v4 }, Landroid/view/View;->setSelected(Z)V
    add-int/lit8 v2, v2, 1
    goto :L0
  :L3
    return-void
.end method
