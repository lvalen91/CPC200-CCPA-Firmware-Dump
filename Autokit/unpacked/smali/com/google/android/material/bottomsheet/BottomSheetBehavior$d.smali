.class Lcom/google/android/material/bottomsheet/BottomSheetBehavior$d;
.super Ljava/lang/Object;
.implements Lcom/google/android/material/internal/l$c;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->u0(Landroid/view/View;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Z

.field final synthetic b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

.method constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Z)V
  .registers 3
  .line 1
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$d;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$d;->a:Z
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(Landroid/view/View;Landroidx/core/view/d0;Lcom/google/android/material/internal/l$d;)Landroidx/core/view/d0;
  .registers 9
  .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$d;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    invoke-virtual { p2 }, Landroidx/core/view/d0;->i()I
    move-result v1
    invoke-static { v0, v1 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->G(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)I
  .line 2
    invoke-static { p1 }, Lcom/google/android/material/internal/l;->d(Landroid/view/View;)Z
    move-result v0
  .line 3
    invoke-virtual { p1 }, Landroid/view/View;->getPaddingBottom()I
    move-result v1
  .line 4
    invoke-virtual { p1 }, Landroid/view/View;->getPaddingLeft()I
    move-result v2
  .line 5
    invoke-virtual { p1 }, Landroid/view/View;->getPaddingRight()I
    move-result v3
  .line 6
    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$d;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    invoke-static { v4 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->J(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z
    move-result v4
    if-eqz v4, :L0
  .line 7
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$d;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    invoke-virtual { p2 }, Landroidx/core/view/d0;->f()I
    move-result v4
    invoke-static { v1, v4 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->L(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)I
  .line 8
    iget v1, p3, Lcom/google/android/material/internal/l$d;->d:I
    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$d;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    invoke-static { v4 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->K(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)I
    move-result v4
    add-int/2addr v1, v4
  :L0
  .line 9
    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$d;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    invoke-static { v4 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->M(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z
    move-result v4
    if-eqz v4, :L3
    if-eqz v0, :L1
  .line 10
    iget v2, p3, Lcom/google/android/material/internal/l$d;->c:I
    goto :L2
  :L1
    iget v2, p3, Lcom/google/android/material/internal/l$d;->a:I
  :L2
  .line 11
    invoke-virtual { p2 }, Landroidx/core/view/d0;->g()I
    move-result v4
    add-int/2addr v2, v4
  :L3
  .line 12
    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$d;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    invoke-static { v4 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->N(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z
    move-result v4
    if-eqz v4, :L6
    if-eqz v0, :L4
  .line 13
    iget p3, p3, Lcom/google/android/material/internal/l$d;->a:I
    goto :L5
  :L4
    iget p3, p3, Lcom/google/android/material/internal/l$d;->c:I
  :L5
  .line 14
    invoke-virtual { p2 }, Landroidx/core/view/d0;->h()I
    move-result v0
    add-int v3, p3, v0
  :L6
  .line 15
    invoke-virtual { p1 }, Landroid/view/View;->getPaddingTop()I
    move-result p3
    invoke-virtual { p1, v2, p3, v3, v1 }, Landroid/view/View;->setPadding(IIII)V
  .line 16
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$d;->a:Z
    if-eqz p1, :L7
  .line 17
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$d;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    invoke-virtual { p2 }, Landroidx/core/view/d0;->e()Lc/g/d/b;
    move-result-object p3
    iget p3, p3, Lc/g/d/b;->d:I
    invoke-static { p1, p3 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->O(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)I
  :L7
  .line 18
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$d;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    invoke-static { p1 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->J(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z
    move-result p1
    if-nez p1, :L8
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$d;->a:Z
    if-eqz p1, :L9
  :L8
  .line 19
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$d;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    const/4 p3, 0
    invoke-static { p1, p3 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->P(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Z)V
  :L9
    return-object p2
.end method
