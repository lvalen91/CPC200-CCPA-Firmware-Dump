.class Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;
.super Ljava/lang/Object;
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/coordinatorlayout/widget/CoordinatorLayout;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 2
  name = "e"
.end annotation

.field final synthetic b:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.method constructor <init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->b:Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->b:Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    iget-object v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->s:Landroid/view/ViewGroup$OnHierarchyChangeListener;
    if-eqz v0, :L0
  .line 2
    invoke-interface { v0, p1, p2 }, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
  :L0
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->b:Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    const/4 v1, 2
    invoke-virtual { v0, v1 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->H(I)V
  .line 2
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->b:Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    iget-object v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->s:Landroid/view/ViewGroup$OnHierarchyChangeListener;
    if-eqz v0, :L0
  .line 3
    invoke-interface { v0, p1, p2 }, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
  :L0
    return-void
.end method
