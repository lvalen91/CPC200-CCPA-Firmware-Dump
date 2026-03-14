.class Landroidx/fragment/app/l$a;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnAttachStateChangeListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/fragment/app/l;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Landroidx/fragment/app/u;

.field final synthetic c:Landroidx/fragment/app/l;

.method constructor <init>(Landroidx/fragment/app/l;Landroidx/fragment/app/u;)V
  .registers 3
  .line 1
    iput-object p1, p0, Landroidx/fragment/app/l$a;->c:Landroidx/fragment/app/l;
    iput-object p2, p0, Landroidx/fragment/app/l$a;->b:Landroidx/fragment/app/u;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
  .registers 3
  .line 1
    iget-object p1, p0, Landroidx/fragment/app/l$a;->b:Landroidx/fragment/app/u;
    invoke-virtual { p1 }, Landroidx/fragment/app/u;->k()Landroidx/fragment/app/Fragment;
    move-result-object p1
  .line 2
    iget-object v0, p0, Landroidx/fragment/app/l$a;->b:Landroidx/fragment/app/u;
    invoke-virtual { v0 }, Landroidx/fragment/app/u;->m()V
  .line 3
    iget-object p1, p1, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
  .line 4
    invoke-virtual { p1 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object p1
    check-cast p1, Landroid/view/ViewGroup;
    iget-object v0, p0, Landroidx/fragment/app/l$a;->c:Landroidx/fragment/app/l;
    iget-object v0, v0, Landroidx/fragment/app/l;->b:Landroidx/fragment/app/n;
    invoke-static { p1, v0 }, Landroidx/fragment/app/c0;->n(Landroid/view/ViewGroup;Landroidx/fragment/app/n;)Landroidx/fragment/app/c0;
    move-result-object p1
  .line 5
    invoke-virtual { p1 }, Landroidx/fragment/app/c0;->j()V
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
  .registers 2
    return-void
.end method
