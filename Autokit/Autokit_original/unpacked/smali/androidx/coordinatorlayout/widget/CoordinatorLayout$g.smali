.class Landroidx/coordinatorlayout/widget/CoordinatorLayout$g;
.super Ljava/lang/Object;
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/coordinatorlayout/widget/CoordinatorLayout;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = "g"
.end annotation

.field final synthetic b:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.method constructor <init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$g;->b:Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onPreDraw()Z
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$g;->b:Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->H(I)V
    const/4 v0, 1
    return v0
.end method
