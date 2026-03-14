.class Lcom/google/android/material/appbar/a$a;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcom/google/android/material/appbar/a;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 2
  name = "a"
.end annotation

.field private final b:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field private final c:Landroid/view/View;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "TV;"
    }
  .end annotation
.end field

.field final synthetic d:Lcom/google/android/material/appbar/a;

.method constructor <init>(Lcom/google/android/material/appbar/a;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TV;)V"
    }
  .end annotation
  .registers 4
  .line 1
    iput-object p1, p0, Lcom/google/android/material/appbar/a$a;->d:Lcom/google/android/material/appbar/a;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p2, p0, Lcom/google/android/material/appbar/a$a;->b:Landroidx/coordinatorlayout/widget/CoordinatorLayout;
  .line 3
    iput-object p3, p0, Lcom/google/android/material/appbar/a$a;->c:Landroid/view/View;
    return-void
.end method

.method public run()V
  .registers 5
  .line 1
    iget-object v0, p0, Lcom/google/android/material/appbar/a$a;->c:Landroid/view/View;
    if-eqz v0, :L1
    iget-object v0, p0, Lcom/google/android/material/appbar/a$a;->d:Lcom/google/android/material/appbar/a;
    iget-object v0, v0, Lcom/google/android/material/appbar/a;->e:Landroid/widget/OverScroller;
    if-eqz v0, :L1
  .line 2
    invoke-virtual { v0 }, Landroid/widget/OverScroller;->computeScrollOffset()Z
    move-result v0
    if-eqz v0, :L0
  .line 3
    iget-object v0, p0, Lcom/google/android/material/appbar/a$a;->d:Lcom/google/android/material/appbar/a;
    iget-object v1, p0, Lcom/google/android/material/appbar/a$a;->b:Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    iget-object v2, p0, Lcom/google/android/material/appbar/a$a;->c:Landroid/view/View;
    iget-object v3, v0, Lcom/google/android/material/appbar/a;->e:Landroid/widget/OverScroller;
    invoke-virtual { v3 }, Landroid/widget/OverScroller;->getCurrY()I
    move-result v3
    invoke-virtual { v0, v1, v2, v3 }, Lcom/google/android/material/appbar/a;->P(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)I
  .line 4
    iget-object v0, p0, Lcom/google/android/material/appbar/a$a;->c:Landroid/view/View;
    invoke-static { v0, p0 }, Landroidx/core/view/v;->g0(Landroid/view/View;Ljava/lang/Runnable;)V
    goto :L1
  :L0
  .line 5
    iget-object v0, p0, Lcom/google/android/material/appbar/a$a;->d:Lcom/google/android/material/appbar/a;
    iget-object v1, p0, Lcom/google/android/material/appbar/a$a;->b:Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    iget-object v2, p0, Lcom/google/android/material/appbar/a$a;->c:Landroid/view/View;
    invoke-virtual { v0, v1, v2 }, Lcom/google/android/material/appbar/a;->N(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V
  :L1
    return-void
.end method
