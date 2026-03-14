.class Landroidx/appcompat/widget/SearchView$f;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnClickListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/widget/SearchView;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Landroidx/appcompat/widget/SearchView;

.method constructor <init>(Landroidx/appcompat/widget/SearchView;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView$f;->b:Landroidx/appcompat/widget/SearchView;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onClick(Landroid/view/View;)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$f;->b:Landroidx/appcompat/widget/SearchView;
    iget-object v1, v0, Landroidx/appcompat/widget/SearchView;->u:Landroid/widget/ImageView;
    if-ne p1, v1, :L0
  .line 2
    invoke-virtual { v0 }, Landroidx/appcompat/widget/SearchView;->V()V
    goto :L4
  :L0
  .line 3
    iget-object v1, v0, Landroidx/appcompat/widget/SearchView;->w:Landroid/widget/ImageView;
    if-ne p1, v1, :L1
  .line 4
    invoke-virtual { v0 }, Landroidx/appcompat/widget/SearchView;->R()V
    goto :L4
  :L1
  .line 5
    iget-object v1, v0, Landroidx/appcompat/widget/SearchView;->v:Landroid/widget/ImageView;
    if-ne p1, v1, :L2
  .line 6
    invoke-virtual { v0 }, Landroidx/appcompat/widget/SearchView;->W()V
    goto :L4
  :L2
  .line 7
    iget-object v1, v0, Landroidx/appcompat/widget/SearchView;->x:Landroid/widget/ImageView;
    if-ne p1, v1, :L3
  .line 8
    invoke-virtual { v0 }, Landroidx/appcompat/widget/SearchView;->a0()V
    goto :L4
  :L3
  .line 9
    iget-object v1, v0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    if-ne p1, v1, :L4
  .line 10
    invoke-virtual { v0 }, Landroidx/appcompat/widget/SearchView;->H()V
  :L4
    return-void
.end method
