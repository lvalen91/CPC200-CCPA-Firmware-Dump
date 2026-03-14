.class Lcom/google/android/material/appbar/c;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
.source "SourceFile"

.annotation system Ldalvik/annotation/Signature;
  value = {
    "<V:",
    "Landroid/view/View;",
    ">",
    "Landroidx/coordinatorlayout/widget/CoordinatorLayout$c<",
    "TV;>;"
  }
.end annotation

.field private a:Lcom/google/android/material/appbar/d;

.field private b:I

.field private c:I

.method public constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;-><init>()V
    const/4 v0, 0
  .line 2
    iput v0, p0, Lcom/google/android/material/appbar/c;->b:I
  .line 3
    iput v0, p0, Lcom/google/android/material/appbar/c;->c:I
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 3
  .line 4
    invoke-direct { p0, p1, p2 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    const/4 p1, 0
  .line 5
    iput p1, p0, Lcom/google/android/material/appbar/c;->b:I
  .line 6
    iput p1, p0, Lcom/google/android/material/appbar/c;->c:I
    return-void
.end method

.method public E()I
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/appbar/c;->a:Lcom/google/android/material/appbar/d;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Lcom/google/android/material/appbar/d;->b()I
    move-result v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method protected F(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TV;I)V"
    }
  .end annotation
  .registers 4
  .line 1
    invoke-virtual { p1, p2, p3 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->I(Landroid/view/View;I)V
    return-void
.end method

.method public G(I)Z
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/appbar/c;->a:Lcom/google/android/material/appbar/d;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Lcom/google/android/material/appbar/d;->e(I)Z
    move-result p1
    return p1
  :L0
  .line 3
    iput p1, p0, Lcom/google/android/material/appbar/c;->b:I
    const/4 p1, 0
    return p1
.end method

.method public l(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TV;I)Z"
    }
  .end annotation
  .registers 4
  .line 1
    invoke-virtual { p0, p1, p2, p3 }, Lcom/google/android/material/appbar/c;->F(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V
  .line 2
    iget-object p1, p0, Lcom/google/android/material/appbar/c;->a:Lcom/google/android/material/appbar/d;
    if-nez p1, :L0
  .line 3
    new-instance p1, Lcom/google/android/material/appbar/d;
    invoke-direct { p1, p2 }, Lcom/google/android/material/appbar/d;-><init>(Landroid/view/View;)V
    iput-object p1, p0, Lcom/google/android/material/appbar/c;->a:Lcom/google/android/material/appbar/d;
  :L0
  .line 4
    iget-object p1, p0, Lcom/google/android/material/appbar/c;->a:Lcom/google/android/material/appbar/d;
    invoke-virtual { p1 }, Lcom/google/android/material/appbar/d;->c()V
  .line 5
    iget-object p1, p0, Lcom/google/android/material/appbar/c;->a:Lcom/google/android/material/appbar/d;
    invoke-virtual { p1 }, Lcom/google/android/material/appbar/d;->a()V
  .line 6
    iget p1, p0, Lcom/google/android/material/appbar/c;->b:I
    const/4 p2, 0
    if-eqz p1, :L1
  .line 7
    iget-object p3, p0, Lcom/google/android/material/appbar/c;->a:Lcom/google/android/material/appbar/d;
    invoke-virtual { p3, p1 }, Lcom/google/android/material/appbar/d;->e(I)Z
  .line 8
    iput p2, p0, Lcom/google/android/material/appbar/c;->b:I
  :L1
  .line 9
    iget p1, p0, Lcom/google/android/material/appbar/c;->c:I
    if-eqz p1, :L2
  .line 10
    iget-object p3, p0, Lcom/google/android/material/appbar/c;->a:Lcom/google/android/material/appbar/d;
    invoke-virtual { p3, p1 }, Lcom/google/android/material/appbar/d;->d(I)Z
  .line 11
    iput p2, p0, Lcom/google/android/material/appbar/c;->c:I
  :L2
    const/4 p1, 1
    return p1
.end method
