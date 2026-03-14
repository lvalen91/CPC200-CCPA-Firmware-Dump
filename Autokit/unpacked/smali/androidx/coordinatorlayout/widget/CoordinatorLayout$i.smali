.class Landroidx/coordinatorlayout/widget/CoordinatorLayout$i;
.super Ljava/lang/Object;
.implements Ljava/util/Comparator;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/coordinatorlayout/widget/CoordinatorLayout;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = "i"
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "Ljava/lang/Object;",
    "Ljava/util/Comparator<",
    "Landroid/view/View;",
    ">;"
  }
.end annotation

.method constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/View;)I
  .registers 4
  .line 1
    invoke-static { p1 }, Landroidx/core/view/v;->N(Landroid/view/View;)F
    move-result p1
  .line 2
    invoke-static { p2 }, Landroidx/core/view/v;->N(Landroid/view/View;)F
    move-result p2
    cmpl-float v0, p1, p2
    if-lez v0, :L0
    const/4 p1, -1
    return p1
  :L0
    cmpg-float p1, p1, p2
    if-gez p1, :L1
    const/4 p1, 1
    return p1
  :L1
    const/4 p1, 0
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
  .registers 3
  .line 1
    check-cast p1, Landroid/view/View;
    check-cast p2, Landroid/view/View;
    invoke-virtual { p0, p1, p2 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$i;->a(Landroid/view/View;Landroid/view/View;)I
    move-result p1
    return p1
.end method
