.class Lcom/google/android/material/bottomsheet/BottomSheetBehavior$e;
.super Lc/i/b/c$c;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

.method constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$e;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    invoke-direct { p0 }, Lc/i/b/c$c;-><init>()V
    return-void
.end method

.method private n(Landroid/view/View;)Z
  .registers 4
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getTop()I
    move-result p1
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$e;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    iget v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->N:I
    invoke-virtual { v0 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b0()I
    move-result v0
    add-int/2addr v1, v0
    div-int/lit8 v1, v1, 2
    if-le p1, v1, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    return p1
.end method

.method public a(Landroid/view/View;II)I
  .registers 4
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getLeft()I
    move-result p1
    return p1
.end method

.method public b(Landroid/view/View;II)I
  .registers 5
  .line 1
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$e;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
  .line 2
    invoke-virtual { p1 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b0()I
    move-result p1
    iget-object p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$e;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    iget-boolean v0, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D:Z
    if-eqz v0, :L0
    iget p3, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->N:I
    goto :L1
  :L0
    iget p3, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:I
  :L1
  .line 3
    invoke-static { p2, p1, p3 }, Lc/g/f/a;->b(III)I
    move-result p1
    return p1
.end method

.method public e(Landroid/view/View;)I
  .registers 3
  .line 1
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$e;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    iget-boolean v0, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D:Z
    if-eqz v0, :L0
  .line 2
    iget p1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->N:I
    return p1
  :L0
  .line 3
    iget p1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:I
    return p1
.end method

.method public j(I)V
  .registers 3
    const/4 v0, 1
    if-ne p1, v0, :L0
  .line 1
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$e;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    invoke-static { p1 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->Q(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z
    move-result p1
    if-eqz p1, :L0
  .line 2
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$e;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    invoke-virtual { p1, v0 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->t0(I)V
  :L0
    return-void
.end method

.method public k(Landroid/view/View;IIII)V
  .registers 6
  .line 1
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$e;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    invoke-virtual { p1, p3 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->Z(I)V
    return-void
.end method

.method public l(Landroid/view/View;FF)V
  .registers 10
    const/4 v0, 0
    const/4 v1, 4
    const/4 v2, 6
    const/4 v3, 3
    cmpg-float v4, p3, v0
    if-gez v4, :L3
  .line 1
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$e;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    invoke-static { p2 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->F(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z
    move-result p2
    if-eqz p2, :L1
  .line 2
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$e;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    iget p2, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->y:I
  :L0
    const/4 v1, 3
    goto/16 :L20
  :L1
  .line 3
    invoke-virtual { p1 }, Landroid/view/View;->getTop()I
    move-result p2
  .line 4
    iget-object p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$e;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    iget v0, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->z:I
    if-le p2, v0, :L2
    move p2, v0
    goto/16 :L12
  :L2
  .line 5
    invoke-virtual { p3 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b0()I
    move-result p2
    goto :L0
  :L3
  .line 6
    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$e;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    iget-boolean v5, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D:Z
    if-eqz v5, :L9
    invoke-virtual { v4, p1, p3 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->x0(Landroid/view/View;F)Z
    move-result v4
    if-eqz v4, :L9
  .line 7
    invoke-static { p2 }, Ljava/lang/Math;->abs(F)F
    move-result p2
    invoke-static { p3 }, Ljava/lang/Math;->abs(F)F
    move-result v0
    cmpg-float p2, p2, v0
    if-gez p2, :L4
    const/high16 p2, 17402
    cmpl-float p2, p3, p2
    if-gtz p2, :L5
  :L4
  .line 8
    invoke-direct { p0, p1 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$e;->n(Landroid/view/View;)Z
    move-result p2
    if-eqz p2, :L6
  :L5
  .line 9
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$e;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    iget p2, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->N:I
    const/4 v1, 5
    goto/16 :L20
  :L6
  .line 10
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$e;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    invoke-static { p2 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->F(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z
    move-result p2
    if-eqz p2, :L7
  .line 11
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$e;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    iget p2, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->y:I
    goto :L0
  :L7
  .line 12
    invoke-virtual { p1 }, Landroid/view/View;->getTop()I
    move-result p2
    iget-object p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$e;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    invoke-virtual { p3 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b0()I
    move-result p3
    sub-int/2addr p2, p3
    invoke-static { p2 }, Ljava/lang/Math;->abs(I)I
    move-result p2
  .line 13
    invoke-virtual { p1 }, Landroid/view/View;->getTop()I
    move-result p3
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$e;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    iget v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->z:I
    sub-int/2addr p3, v0
    invoke-static { p3 }, Ljava/lang/Math;->abs(I)I
    move-result p3
    if-ge p2, p3, :L8
  .line 14
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$e;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    invoke-virtual { p2 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b0()I
    move-result p2
    goto :L0
  :L8
  .line 15
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$e;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    iget p2, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->z:I
    goto :L12
  :L9
    cmpl-float v0, p3, v0
    if-eqz v0, :L14
  .line 16
    invoke-static { p2 }, Ljava/lang/Math;->abs(F)F
    move-result p2
    invoke-static { p3 }, Ljava/lang/Math;->abs(F)F
    move-result p3
    cmpl-float p2, p2, p3
    if-lez p2, :L10
    goto :L14
  :L10
  .line 17
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$e;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    invoke-static { p2 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->F(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z
    move-result p2
    if-eqz p2, :L11
  .line 18
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$e;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    iget p2, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:I
    goto/16 :L20
  :L11
  .line 19
    invoke-virtual { p1 }, Landroid/view/View;->getTop()I
    move-result p2
  .line 20
    iget-object p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$e;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    iget p3, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->z:I
    sub-int p3, p2, p3
    invoke-static { p3 }, Ljava/lang/Math;->abs(I)I
    move-result p3
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$e;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    iget v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:I
    sub-int/2addr p2, v0
  .line 21
    invoke-static { p2 }, Ljava/lang/Math;->abs(I)I
    move-result p2
    if-ge p3, p2, :L13
  .line 22
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$e;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    iget p2, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->z:I
  :L12
    const/4 v1, 6
    goto :L20
  :L13
  .line 23
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$e;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    iget p2, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:I
    goto :L20
  :L14
  .line 24
    invoke-virtual { p1 }, Landroid/view/View;->getTop()I
    move-result p2
  .line 25
    iget-object p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$e;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    invoke-static { p3 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->F(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z
    move-result p3
    if-eqz p3, :L16
  .line 26
    iget-object p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$e;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    iget p3, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->y:I
    sub-int p3, p2, p3
    invoke-static { p3 }, Ljava/lang/Math;->abs(I)I
    move-result p3
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$e;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    iget v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:I
    sub-int/2addr p2, v0
  .line 27
    invoke-static { p2 }, Ljava/lang/Math;->abs(I)I
    move-result p2
    if-ge p3, p2, :L15
  .line 28
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$e;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    iget p2, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->y:I
    goto/16 :L0
  :L15
  .line 29
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$e;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    iget p2, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:I
    goto :L20
  :L16
  .line 30
    iget-object p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$e;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    iget v0, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->z:I
    if-ge p2, v0, :L18
  .line 31
    iget p3, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:I
    sub-int p3, p2, p3
    invoke-static { p3 }, Ljava/lang/Math;->abs(I)I
    move-result p3
    if-ge p2, p3, :L17
  .line 32
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$e;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    invoke-virtual { p2 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b0()I
    move-result p2
    goto/16 :L0
  :L17
  .line 33
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$e;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    iget p2, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->z:I
    goto :L12
  :L18
    sub-int p3, p2, v0
  .line 34
    invoke-static { p3 }, Ljava/lang/Math;->abs(I)I
    move-result p3
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$e;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    iget v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:I
    sub-int/2addr p2, v0
  .line 35
    invoke-static { p2 }, Ljava/lang/Math;->abs(I)I
    move-result p2
    if-ge p3, p2, :L19
  .line 36
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$e;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    iget p2, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->z:I
    goto :L12
  :L19
  .line 37
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$e;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    iget p2, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:I
  :L20
  .line 38
    iget-object p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$e;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    const/4 v0, 1
    invoke-virtual { p3, p1, v1, p2, v0 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->y0(Landroid/view/View;IIZ)V
    return-void
.end method

.method public m(Landroid/view/View;I)Z
  .registers 8
  .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$e;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    iget v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->G:I
    const/4 v2, 1
    const/4 v3, 0
    if-ne v1, v2, :L0
    return v3
  :L0
  .line 2
    iget-boolean v4, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->U:Z
    if-eqz v4, :L1
    return v3
  :L1
    const/4 v4, 3
    if-ne v1, v4, :L4
  .line 3
    iget v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->S:I
    if-ne v1, p2, :L4
  .line 4
    iget-object p2, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->P:Ljava/lang/ref/WeakReference;
    if-eqz p2, :L2
    invoke-virtual { p2 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object p2
    check-cast p2, Landroid/view/View;
    goto :L3
  :L2
    const/4 p2, 0
  :L3
    if-eqz p2, :L4
    const/4 v0, -1
  .line 5
    invoke-virtual { p2, v0 }, Landroid/view/View;->canScrollVertically(I)Z
    move-result p2
    if-eqz p2, :L4
    return v3
  :L4
  .line 6
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$e;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    iget-object p2, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->O:Ljava/lang/ref/WeakReference;
    if-eqz p2, :L5
    invoke-virtual { p2 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object p2
    if-ne p2, p1, :L5
    goto :L6
  :L5
    const/4 v2, 0
  :L6
    return v2
.end method
