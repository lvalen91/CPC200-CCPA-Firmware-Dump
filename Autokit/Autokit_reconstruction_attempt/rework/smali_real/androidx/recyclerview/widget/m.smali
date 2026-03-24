.class public abstract Landroidx/recyclerview/widget/m;
.super Landroidx/recyclerview/widget/RecyclerView$k;
.source "SourceFile"


# instance fields
.field g:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$k;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/recyclerview/widget/m;->g:Z

    return-void
.end method


# virtual methods
.method public final A(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/m;->I(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    .line 2
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$k;->h(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    return-void
.end method

.method public final B(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/m;->J(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    return-void
.end method

.method public final C(Landroidx/recyclerview/widget/RecyclerView$c0;Z)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/m;->K(Landroidx/recyclerview/widget/RecyclerView$c0;Z)V

    .line 2
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$k;->h(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    return-void
.end method

.method public final D(Landroidx/recyclerview/widget/RecyclerView$c0;Z)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/m;->L(Landroidx/recyclerview/widget/RecyclerView$c0;Z)V

    return-void
.end method

.method public final E(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/m;->M(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    .line 2
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$k;->h(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    return-void
.end method

.method public final F(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/m;->N(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    return-void
.end method

.method public final G(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/m;->O(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    .line 2
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$k;->h(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    return-void
.end method

.method public final H(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/m;->P(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    return-void
.end method

.method public I(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .registers 2

    return-void
.end method

.method public J(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .registers 2

    return-void
.end method

.method public K(Landroidx/recyclerview/widget/RecyclerView$c0;Z)V
    .registers 3

    return-void
.end method

.method public L(Landroidx/recyclerview/widget/RecyclerView$c0;Z)V
    .registers 3

    return-void
.end method

.method public M(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .registers 2

    return-void
.end method

.method public N(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .registers 2

    return-void
.end method

.method public O(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .registers 2

    return-void
.end method

.method public P(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .registers 2

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$c0;Landroidx/recyclerview/widget/RecyclerView$k$c;Landroidx/recyclerview/widget/RecyclerView$k$c;)Z
    .registers 12

    if-eqz p2, :cond_1d

    .line 1
    iget v0, p2, Landroidx/recyclerview/widget/RecyclerView$k$c;->a:I

    iget v1, p3, Landroidx/recyclerview/widget/RecyclerView$k$c;->a:I

    if-ne v0, v1, :cond_e

    iget v0, p2, Landroidx/recyclerview/widget/RecyclerView$k$c;->b:I

    iget v1, p3, Landroidx/recyclerview/widget/RecyclerView$k$c;->b:I

    if-eq v0, v1, :cond_1d

    .line 2
    :cond_e
    iget v4, p2, Landroidx/recyclerview/widget/RecyclerView$k$c;->a:I

    iget v5, p2, Landroidx/recyclerview/widget/RecyclerView$k$c;->b:I

    iget v6, p3, Landroidx/recyclerview/widget/RecyclerView$k$c;->a:I

    iget v7, p3, Landroidx/recyclerview/widget/RecyclerView$k$c;->b:I

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroidx/recyclerview/widget/m;->y(Landroidx/recyclerview/widget/RecyclerView$c0;IIII)Z

    move-result p1

    return p1

    .line 3
    :cond_1d
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/m;->w(Landroidx/recyclerview/widget/RecyclerView$c0;)Z

    move-result p1

    return p1
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$c0;Landroidx/recyclerview/widget/RecyclerView$c0;Landroidx/recyclerview/widget/RecyclerView$k$c;Landroidx/recyclerview/widget/RecyclerView$k$c;)Z
    .registers 12

    .line 1
    iget v3, p3, Landroidx/recyclerview/widget/RecyclerView$k$c;->a:I

    .line 2
    iget v4, p3, Landroidx/recyclerview/widget/RecyclerView$k$c;->b:I

    .line 3
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$c0;->J()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4
    iget p4, p3, Landroidx/recyclerview/widget/RecyclerView$k$c;->a:I

    .line 5
    iget p3, p3, Landroidx/recyclerview/widget/RecyclerView$k$c;->b:I

    move v6, p3

    move v5, p4

    goto :goto_17

    .line 6
    :cond_11
    iget p3, p4, Landroidx/recyclerview/widget/RecyclerView$k$c;->a:I

    .line 7
    iget p4, p4, Landroidx/recyclerview/widget/RecyclerView$k$c;->b:I

    move v5, p3

    move v6, p4

    :goto_17
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 8
    invoke-virtual/range {v0 .. v6}, Landroidx/recyclerview/widget/m;->x(Landroidx/recyclerview/widget/RecyclerView$c0;Landroidx/recyclerview/widget/RecyclerView$c0;IIII)Z

    move-result p1

    return p1
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView$c0;Landroidx/recyclerview/widget/RecyclerView$k$c;Landroidx/recyclerview/widget/RecyclerView$k$c;)Z
    .registers 10

    .line 1
    iget v2, p2, Landroidx/recyclerview/widget/RecyclerView$k$c;->a:I

    .line 2
    iget v3, p2, Landroidx/recyclerview/widget/RecyclerView$k$c;->b:I

    .line 3
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->a:Landroid/view/View;

    if-nez p3, :cond_d

    .line 4
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_f

    :cond_d
    iget v0, p3, Landroidx/recyclerview/widget/RecyclerView$k$c;->a:I

    :goto_f
    move v4, v0

    if-nez p3, :cond_17

    .line 5
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p3

    goto :goto_19

    :cond_17
    iget p3, p3, Landroidx/recyclerview/widget/RecyclerView$k$c;->b:I

    :goto_19
    move v5, p3

    .line 6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->v()Z

    move-result p3

    if-nez p3, :cond_38

    if-ne v2, v4, :cond_24

    if-eq v3, v5, :cond_38

    .line 7
    :cond_24
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p3

    add-int/2addr p3, v4

    .line 8
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, v5

    .line 9
    invoke-virtual {p2, v4, v5, p3, v0}, Landroid/view/View;->layout(IIII)V

    move-object v0, p0

    move-object v1, p1

    .line 10
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/m;->y(Landroidx/recyclerview/widget/RecyclerView$c0;IIII)Z

    move-result p1

    return p1

    .line 11
    :cond_38
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/m;->z(Landroidx/recyclerview/widget/RecyclerView$c0;)Z

    move-result p1

    return p1
.end method

.method public d(Landroidx/recyclerview/widget/RecyclerView$c0;Landroidx/recyclerview/widget/RecyclerView$k$c;Landroidx/recyclerview/widget/RecyclerView$k$c;)Z
    .registers 10

    .line 1
    iget v0, p2, Landroidx/recyclerview/widget/RecyclerView$k$c;->a:I

    iget v1, p3, Landroidx/recyclerview/widget/RecyclerView$k$c;->a:I

    if-ne v0, v1, :cond_12

    iget v0, p2, Landroidx/recyclerview/widget/RecyclerView$k$c;->b:I

    iget v1, p3, Landroidx/recyclerview/widget/RecyclerView$k$c;->b:I

    if-eq v0, v1, :cond_d

    goto :goto_12

    .line 2
    :cond_d
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/m;->E(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_12
    :goto_12
    iget v2, p2, Landroidx/recyclerview/widget/RecyclerView$k$c;->a:I

    iget v3, p2, Landroidx/recyclerview/widget/RecyclerView$k$c;->b:I

    iget v4, p3, Landroidx/recyclerview/widget/RecyclerView$k$c;->a:I

    iget v5, p3, Landroidx/recyclerview/widget/RecyclerView$k$c;->b:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/m;->y(Landroidx/recyclerview/widget/RecyclerView$c0;IIII)Z

    move-result p1

    return p1
.end method

.method public f(Landroidx/recyclerview/widget/RecyclerView$c0;)Z
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/m;->g:Z

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->t()Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_d

    :cond_b
    const/4 p1, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p1, 0x1

    :goto_e
    return p1
.end method

.method public abstract w(Landroidx/recyclerview/widget/RecyclerView$c0;)Z
.end method

.method public abstract x(Landroidx/recyclerview/widget/RecyclerView$c0;Landroidx/recyclerview/widget/RecyclerView$c0;IIII)Z
.end method

.method public abstract y(Landroidx/recyclerview/widget/RecyclerView$c0;IIII)Z
.end method

.method public abstract z(Landroidx/recyclerview/widget/RecyclerView$c0;)Z
.end method
