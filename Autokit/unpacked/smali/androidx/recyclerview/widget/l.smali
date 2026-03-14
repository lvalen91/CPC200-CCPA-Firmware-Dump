.class Landroidx/recyclerview/widget/l;
.super Ljava/lang/Object;
.source "SourceFile"

.method static a(Landroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/i;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$n;Z)I
  .registers 7
  .line 1
    invoke-virtual { p4 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result v0
    if-eqz v0, :L2
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$z;->b()I
    move-result p0
    if-eqz p0, :L2
    if-eqz p2, :L2
    if-nez p3, :L0
    goto :L2
  :L0
    if-nez p5, :L1
  .line 2
    invoke-virtual { p4, p2 }, Landroidx/recyclerview/widget/RecyclerView$n;->h0(Landroid/view/View;)I
    move-result p0
    invoke-virtual { p4, p3 }, Landroidx/recyclerview/widget/RecyclerView$n;->h0(Landroid/view/View;)I
    move-result p1
    sub-int/2addr p0, p1
    invoke-static { p0 }, Ljava/lang/Math;->abs(I)I
    move-result p0
    add-int/lit8 p0, p0, 1
    return p0
  :L1
  .line 3
    invoke-virtual { p1, p3 }, Landroidx/recyclerview/widget/i;->d(Landroid/view/View;)I
    move-result p0
  .line 4
    invoke-virtual { p1, p2 }, Landroidx/recyclerview/widget/i;->g(Landroid/view/View;)I
    move-result p2
    sub-int/2addr p0, p2
  .line 5
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/i;->n()I
    move-result p1
    invoke-static { p1, p0 }, Ljava/lang/Math;->min(II)I
    move-result p0
    return p0
  :L2
    const/4 p0, 0
    return p0
.end method

.method static b(Landroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/i;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$n;ZZ)I
  .registers 11
  .line 1
    invoke-virtual { p4 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result v0
    const/4 v1, 0
    if-eqz v0, :L4
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$z;->b()I
    move-result v0
    if-eqz v0, :L4
    if-eqz p2, :L4
    if-nez p3, :L0
    goto :L4
  :L0
  .line 2
    invoke-virtual { p4, p2 }, Landroidx/recyclerview/widget/RecyclerView$n;->h0(Landroid/view/View;)I
    move-result v0
  .line 3
    invoke-virtual { p4, p3 }, Landroidx/recyclerview/widget/RecyclerView$n;->h0(Landroid/view/View;)I
    move-result v2
  .line 4
    invoke-static { v0, v2 }, Ljava/lang/Math;->min(II)I
    move-result v0
  .line 5
    invoke-virtual { p4, p2 }, Landroidx/recyclerview/widget/RecyclerView$n;->h0(Landroid/view/View;)I
    move-result v2
  .line 6
    invoke-virtual { p4, p3 }, Landroidx/recyclerview/widget/RecyclerView$n;->h0(Landroid/view/View;)I
    move-result v3
  .line 7
    invoke-static { v2, v3 }, Ljava/lang/Math;->max(II)I
    move-result v2
    if-eqz p6, :L1
  .line 8
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$z;->b()I
    move-result p0
    sub-int/2addr p0, v2
    add-int/lit8 p0, p0, -1
    invoke-static { v1, p0 }, Ljava/lang/Math;->max(II)I
    move-result p0
    goto :L2
  :L1
  .line 9
    invoke-static { v1, v0 }, Ljava/lang/Math;->max(II)I
    move-result p0
  :L2
    if-nez p5, :L3
    return p0
  :L3
  .line 10
    invoke-virtual { p1, p3 }, Landroidx/recyclerview/widget/i;->d(Landroid/view/View;)I
    move-result p5
  .line 11
    invoke-virtual { p1, p2 }, Landroidx/recyclerview/widget/i;->g(Landroid/view/View;)I
    move-result p6
    sub-int/2addr p5, p6
  .line 12
    invoke-static { p5 }, Ljava/lang/Math;->abs(I)I
    move-result p5
  .line 13
    invoke-virtual { p4, p2 }, Landroidx/recyclerview/widget/RecyclerView$n;->h0(Landroid/view/View;)I
    move-result p6
  .line 14
    invoke-virtual { p4, p3 }, Landroidx/recyclerview/widget/RecyclerView$n;->h0(Landroid/view/View;)I
    move-result p3
    sub-int/2addr p6, p3
  .line 15
    invoke-static { p6 }, Ljava/lang/Math;->abs(I)I
    move-result p3
    add-int/lit8 p3, p3, 1
    int-to-float p4, p5
    int-to-float p3, p3
    div-float/2addr p4, p3
    int-to-float p0, p0
    mul-float p0, p0, p4
  .line 16
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/i;->m()I
    move-result p3
  .line 17
    invoke-virtual { p1, p2 }, Landroidx/recyclerview/widget/i;->g(Landroid/view/View;)I
    move-result p1
    sub-int/2addr p3, p1
    int-to-float p1, p3
    add-float/2addr p0, p1
  .line 18
    invoke-static { p0 }, Ljava/lang/Math;->round(F)I
    move-result p0
    return p0
  :L4
    return v1
.end method

.method static c(Landroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/i;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$n;Z)I
  .registers 7
  .line 1
    invoke-virtual { p4 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result v0
    if-eqz v0, :L2
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$z;->b()I
    move-result v0
    if-eqz v0, :L2
    if-eqz p2, :L2
    if-nez p3, :L0
    goto :L2
  :L0
    if-nez p5, :L1
  .line 2
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$z;->b()I
    move-result p0
    return p0
  :L1
  .line 3
    invoke-virtual { p1, p3 }, Landroidx/recyclerview/widget/i;->d(Landroid/view/View;)I
    move-result p5
  .line 4
    invoke-virtual { p1, p2 }, Landroidx/recyclerview/widget/i;->g(Landroid/view/View;)I
    move-result p1
    sub-int/2addr p5, p1
  .line 5
    invoke-virtual { p4, p2 }, Landroidx/recyclerview/widget/RecyclerView$n;->h0(Landroid/view/View;)I
    move-result p1
  .line 6
    invoke-virtual { p4, p3 }, Landroidx/recyclerview/widget/RecyclerView$n;->h0(Landroid/view/View;)I
    move-result p2
    sub-int/2addr p1, p2
  .line 7
    invoke-static { p1 }, Ljava/lang/Math;->abs(I)I
    move-result p1
    add-int/lit8 p1, p1, 1
    int-to-float p2, p5
    int-to-float p1, p1
    div-float/2addr p2, p1
  .line 8
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$z;->b()I
    move-result p0
    int-to-float p0, p0
    mul-float p2, p2, p0
    float-to-int p0, p2
    return p0
  :L2
    const/4 p0, 0
    return p0
.end method
