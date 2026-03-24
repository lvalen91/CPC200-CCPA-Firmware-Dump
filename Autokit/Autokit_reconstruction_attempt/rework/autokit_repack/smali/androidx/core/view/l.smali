.class public Landroidx/core/view/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/ViewParent;

.field private b:Landroid/view/ViewParent;

.field private final c:Landroid/view/View;

.field private d:Z

.field private e:[I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/core/view/l;->c:Landroid/view/View;

    return-void
.end method

.method private g(IIII[II[I)Z
    .registers 23

    move-object v0, p0

    move-object/from16 v1, p5

    .line 1
    invoke-virtual {p0}, Landroidx/core/view/l;->l()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_63

    move/from16 v2, p6

    .line 2
    invoke-direct {p0, v2}, Landroidx/core/view/l;->h(I)Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_13

    return v3

    :cond_13
    const/4 v12, 0x1

    if-nez p1, :cond_24

    if-nez p2, :cond_24

    if-nez p3, :cond_24

    if-eqz p4, :cond_1d

    goto :goto_24

    :cond_1d
    if-eqz v1, :cond_63

    .line 3
    aput v3, v1, v3

    .line 4
    aput v3, v1, v12

    goto :goto_63

    :cond_24
    :goto_24
    if-eqz v1, :cond_32

    .line 5
    iget-object v5, v0, Landroidx/core/view/l;->c:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 6
    aget v5, v1, v3

    .line 7
    aget v6, v1, v12

    move v13, v5

    move v14, v6

    goto :goto_34

    :cond_32
    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_34
    if-nez p7, :cond_40

    .line 8
    invoke-direct {p0}, Landroidx/core/view/l;->i()[I

    move-result-object v5

    .line 9
    aput v3, v5, v3

    .line 10
    aput v3, v5, v12

    move-object v11, v5

    goto :goto_42

    :cond_40
    move-object/from16 v11, p7

    .line 11
    :goto_42
    iget-object v5, v0, Landroidx/core/view/l;->c:Landroid/view/View;

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p6

    invoke-static/range {v4 .. v11}, Landroidx/core/view/y;->d(Landroid/view/ViewParent;Landroid/view/View;IIIII[I)V

    if-eqz v1, :cond_62

    .line 12
    iget-object v2, v0, Landroidx/core/view/l;->c:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 13
    aget v2, v1, v3

    sub-int/2addr v2, v13

    aput v2, v1, v3

    .line 14
    aget v2, v1, v12

    sub-int/2addr v2, v14

    aput v2, v1, v12

    :cond_62
    return v12

    :cond_63
    :goto_63
    return v3
.end method

.method private h(I)Landroid/view/ViewParent;
    .registers 3

    if-eqz p1, :cond_a

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_7
    iget-object p1, p0, Landroidx/core/view/l;->b:Landroid/view/ViewParent;

    return-object p1

    .line 2
    :cond_a
    iget-object p1, p0, Landroidx/core/view/l;->a:Landroid/view/ViewParent;

    return-object p1
.end method

.method private i()[I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/l;->e:[I

    if-nez v0, :cond_9

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2
    iput-object v0, p0, Landroidx/core/view/l;->e:[I

    .line 3
    :cond_9
    iget-object v0, p0, Landroidx/core/view/l;->e:[I

    return-object v0
.end method

.method private n(ILandroid/view/ViewParent;)V
    .registers 4

    if-eqz p1, :cond_9

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    goto :goto_b

    .line 1
    :cond_6
    iput-object p2, p0, Landroidx/core/view/l;->b:Landroid/view/ViewParent;

    goto :goto_b

    .line 2
    :cond_9
    iput-object p2, p0, Landroidx/core/view/l;->a:Landroid/view/ViewParent;

    :goto_b
    return-void
.end method


# virtual methods
.method public a(FFZ)Z
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroidx/core/view/l;->l()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 2
    invoke-direct {p0, v1}, Landroidx/core/view/l;->h(I)Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 3
    iget-object v1, p0, Landroidx/core/view/l;->c:Landroid/view/View;

    invoke-static {v0, v1, p1, p2, p3}, Landroidx/core/view/y;->a(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    move-result p1

    return p1

    :cond_14
    return v1
.end method

.method public b(FF)Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/core/view/l;->l()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 2
    invoke-direct {p0, v1}, Landroidx/core/view/l;->h(I)Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 3
    iget-object v1, p0, Landroidx/core/view/l;->c:Landroid/view/View;

    invoke-static {v0, v1, p1, p2}, Landroidx/core/view/y;->b(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    move-result p1

    return p1

    :cond_14
    return v1
.end method

.method public c(II[I[I)Z
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/l;->d(II[I[II)Z

    move-result p1

    return p1
.end method

.method public d(II[I[II)Z
    .registers 16

    .line 1
    invoke-virtual {p0}, Landroidx/core/view/l;->l()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_58

    .line 2
    invoke-direct {p0, p5}, Landroidx/core/view/l;->h(I)Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_e

    return v1

    :cond_e
    const/4 v0, 0x1

    if-nez p1, :cond_1b

    if-eqz p2, :cond_14

    goto :goto_1b

    :cond_14
    if-eqz p4, :cond_58

    .line 3
    aput v1, p4, v1

    .line 4
    aput v1, p4, v0

    goto :goto_58

    :cond_1b
    :goto_1b
    if-eqz p4, :cond_29

    .line 5
    iget-object v3, p0, Landroidx/core/view/l;->c:Landroid/view/View;

    invoke-virtual {v3, p4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 6
    aget v3, p4, v1

    .line 7
    aget v4, p4, v0

    move v8, v3

    move v9, v4

    goto :goto_2b

    :cond_29
    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_2b
    if-nez p3, :cond_31

    .line 8
    invoke-direct {p0}, Landroidx/core/view/l;->i()[I

    move-result-object p3

    .line 9
    :cond_31
    aput v1, p3, v1

    .line 10
    aput v1, p3, v0

    .line 11
    iget-object v3, p0, Landroidx/core/view/l;->c:Landroid/view/View;

    move v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p5

    invoke-static/range {v2 .. v7}, Landroidx/core/view/y;->c(Landroid/view/ViewParent;Landroid/view/View;II[II)V

    if-eqz p4, :cond_4f

    .line 12
    iget-object p1, p0, Landroidx/core/view/l;->c:Landroid/view/View;

    invoke-virtual {p1, p4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 13
    aget p1, p4, v1

    sub-int/2addr p1, v8

    aput p1, p4, v1

    .line 14
    aget p1, p4, v0

    sub-int/2addr p1, v9

    aput p1, p4, v0

    .line 15
    :cond_4f
    aget p1, p3, v1

    if-nez p1, :cond_57

    aget p1, p3, v0

    if-eqz p1, :cond_58

    :cond_57
    const/4 v1, 0x1

    :cond_58
    :goto_58
    return v1
.end method

.method public e(IIII[II[I)V
    .registers 8

    .line 1
    invoke-direct/range {p0 .. p7}, Landroidx/core/view/l;->g(IIII[II[I)Z

    return-void
.end method

.method public f(IIII[I)Z
    .registers 14

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 1
    invoke-direct/range {v0 .. v7}, Landroidx/core/view/l;->g(IIII[II[I)Z

    move-result p1

    return p1
.end method

.method public j()Z
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroidx/core/view/l;->k(I)Z

    move-result v0

    return v0
.end method

.method public k(I)Z
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/core/view/l;->h(I)Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public l()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/core/view/l;->d:Z

    return v0
.end method

.method public m(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/core/view/l;->d:Z

    if-eqz v0, :cond_9

    .line 2
    iget-object v0, p0, Landroidx/core/view/l;->c:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/v;->G0(Landroid/view/View;)V

    .line 3
    :cond_9
    iput-boolean p1, p0, Landroidx/core/view/l;->d:Z

    return-void
.end method

.method public o(I)Z
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroidx/core/view/l;->p(II)Z

    move-result p1

    return p1
.end method

.method public p(II)Z
    .registers 7

    .line 1
    invoke-virtual {p0, p2}, Landroidx/core/view/l;->k(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 2
    :cond_8
    invoke-virtual {p0}, Landroidx/core/view/l;->l()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 3
    iget-object v0, p0, Landroidx/core/view/l;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 4
    iget-object v2, p0, Landroidx/core/view/l;->c:Landroid/view/View;

    :goto_16
    if-eqz v0, :cond_35

    .line 5
    iget-object v3, p0, Landroidx/core/view/l;->c:Landroid/view/View;

    invoke-static {v0, v2, v3, p1, p2}, Landroidx/core/view/y;->f(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 6
    invoke-direct {p0, p2, v0}, Landroidx/core/view/l;->n(ILandroid/view/ViewParent;)V

    .line 7
    iget-object v3, p0, Landroidx/core/view/l;->c:Landroid/view/View;

    invoke-static {v0, v2, v3, p1, p2}, Landroidx/core/view/y;->e(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)V

    return v1

    .line 8
    :cond_29
    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_30

    .line 9
    move-object v2, v0

    check-cast v2, Landroid/view/View;

    .line 10
    :cond_30
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_16

    :cond_35
    const/4 p1, 0x0

    return p1
.end method

.method public q()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroidx/core/view/l;->r(I)V

    return-void
.end method

.method public r(I)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Landroidx/core/view/l;->h(I)Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 2
    iget-object v1, p0, Landroidx/core/view/l;->c:Landroid/view/View;

    invoke-static {v0, v1, p1}, Landroidx/core/view/y;->g(Landroid/view/ViewParent;Landroid/view/View;I)V

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Landroidx/core/view/l;->n(ILandroid/view/ViewParent;)V

    :cond_f
    return-void
.end method
