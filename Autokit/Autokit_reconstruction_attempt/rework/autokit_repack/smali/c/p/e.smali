.class public Lc/p/e;
.super Landroidx/fragment/app/z;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/z;-><init>()V

    return-void
.end method

.method private static C(Lc/p/m;)Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lc/p/m;->y()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroidx/fragment/app/z;->l(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2
    invoke-virtual {p0}, Lc/p/m;->z()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroidx/fragment/app/z;->l(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 3
    invoke-virtual {p0}, Lc/p/m;->A()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Landroidx/fragment/app/z;->l(Ljava/util/List;)Z

    move-result p0

    if-nez p0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 p0, 0x1

    :goto_22
    return p0
.end method


# virtual methods
.method public A(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    check-cast p1, Lc/p/q;

    if-eqz p1, :cond_15

    .line 2
    invoke-virtual {p1}, Lc/p/m;->B()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    invoke-virtual {p1}, Lc/p/m;->B()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lc/p/e;->q(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_15
    return-void
.end method

.method public B(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_4
    new-instance v0, Lc/p/q;

    invoke-direct {v0}, Lc/p/q;-><init>()V

    .line 2
    check-cast p1, Lc/p/m;

    invoke-virtual {v0, p1}, Lc/p/q;->d0(Lc/p/m;)Lc/p/q;

    return-object v0
.end method

.method public a(Ljava/lang/Object;Landroid/view/View;)V
    .registers 3

    if-eqz p1, :cond_7

    .line 1
    check-cast p1, Lc/p/m;

    .line 2
    invoke-virtual {p1, p2}, Lc/p/m;->b(Landroid/view/View;)Lc/p/m;

    :cond_7
    return-void
.end method

.method public b(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    check-cast p1, Lc/p/m;

    if-nez p1, :cond_5

    return-void

    .line 2
    :cond_5
    instance-of v0, p1, Lc/p/q;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 3
    check-cast p1, Lc/p/q;

    .line 4
    invoke-virtual {p1}, Lc/p/q;->g0()I

    move-result v0

    :goto_10
    if-ge v1, v0, :cond_3e

    .line 5
    invoke-virtual {p1, v1}, Lc/p/q;->f0(I)Lc/p/m;

    move-result-object v2

    .line 6
    invoke-virtual {p0, v2, p2}, Lc/p/e;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 7
    :cond_1c
    invoke-static {p1}, Lc/p/e;->C(Lc/p/m;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 8
    invoke-virtual {p1}, Lc/p/m;->B()Ljava/util/List;

    move-result-object v0

    .line 9
    invoke-static {v0}, Landroidx/fragment/app/z;->l(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 10
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_30
    if-ge v1, v0, :cond_3e

    .line 11
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p1, v2}, Lc/p/m;->b(Landroid/view/View;)Lc/p/m;

    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    :cond_3e
    return-void
.end method

.method public c(Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p2, Lc/p/m;

    invoke-static {p1, p2}, Lc/p/o;->a(Landroid/view/ViewGroup;Lc/p/m;)V

    return-void
.end method

.method public e(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    instance-of p1, p1, Lc/p/m;

    return p1
.end method

.method public g(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    if-eqz p1, :cond_9

    .line 1
    check-cast p1, Lc/p/m;

    invoke-virtual {p1}, Lc/p/m;->l()Lc/p/m;

    move-result-object p1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return-object p1
.end method

.method public m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    check-cast p1, Lc/p/m;

    .line 2
    check-cast p2, Lc/p/m;

    .line 3
    check-cast p3, Lc/p/m;

    if-eqz p1, :cond_1b

    if-eqz p2, :cond_1b

    .line 4
    new-instance v0, Lc/p/q;

    invoke-direct {v0}, Lc/p/q;-><init>()V

    .line 5
    invoke-virtual {v0, p1}, Lc/p/q;->d0(Lc/p/m;)Lc/p/q;

    .line 6
    invoke-virtual {v0, p2}, Lc/p/q;->d0(Lc/p/m;)Lc/p/q;

    const/4 p1, 0x1

    .line 7
    invoke-virtual {v0, p1}, Lc/p/q;->l0(I)Lc/p/q;

    move-object p1, v0

    goto :goto_23

    :cond_1b
    if-eqz p1, :cond_1e

    goto :goto_23

    :cond_1e
    if-eqz p2, :cond_22

    move-object p1, p2

    goto :goto_23

    :cond_22
    const/4 p1, 0x0

    :goto_23
    if-eqz p3, :cond_33

    .line 8
    new-instance p2, Lc/p/q;

    invoke-direct {p2}, Lc/p/q;-><init>()V

    if-eqz p1, :cond_2f

    .line 9
    invoke-virtual {p2, p1}, Lc/p/q;->d0(Lc/p/m;)Lc/p/q;

    .line 10
    :cond_2f
    invoke-virtual {p2, p3}, Lc/p/q;->d0(Lc/p/m;)Lc/p/q;

    return-object p2

    :cond_33
    return-object p1
.end method

.method public n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    new-instance v0, Lc/p/q;

    invoke-direct {v0}, Lc/p/q;-><init>()V

    if-eqz p1, :cond_c

    .line 2
    check-cast p1, Lc/p/m;

    invoke-virtual {v0, p1}, Lc/p/q;->d0(Lc/p/m;)Lc/p/q;

    :cond_c
    if-eqz p2, :cond_13

    .line 3
    check-cast p2, Lc/p/m;

    invoke-virtual {v0, p2}, Lc/p/q;->d0(Lc/p/m;)Lc/p/q;

    :cond_13
    if-eqz p3, :cond_1a

    .line 4
    check-cast p3, Lc/p/m;

    invoke-virtual {v0, p3}, Lc/p/q;->d0(Lc/p/m;)Lc/p/q;

    :cond_1a
    return-object v0
.end method

.method public p(Ljava/lang/Object;Landroid/view/View;)V
    .registers 3

    if-eqz p1, :cond_7

    .line 1
    check-cast p1, Lc/p/m;

    .line 2
    invoke-virtual {p1, p2}, Lc/p/m;->P(Landroid/view/View;)Lc/p/m;

    :cond_7
    return-void
.end method

.method public q(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    check-cast p1, Lc/p/m;

    .line 2
    instance-of v0, p1, Lc/p/q;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 3
    check-cast p1, Lc/p/q;

    .line 4
    invoke-virtual {p1}, Lc/p/q;->g0()I

    move-result v0

    :goto_d
    if-ge v1, v0, :cond_5d

    .line 5
    invoke-virtual {p1, v1}, Lc/p/q;->f0(I)Lc/p/m;

    move-result-object v2

    .line 6
    invoke-virtual {p0, v2, p2, p3}, Lc/p/e;->q(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 7
    :cond_19
    invoke-static {p1}, Lc/p/e;->C(Lc/p/m;)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 8
    invoke-virtual {p1}, Lc/p/m;->B()Ljava/util/List;

    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_5d

    .line 10
    invoke-interface {v0, p2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_5d

    if-nez p3, :cond_37

    const/4 v0, 0x0

    goto :goto_3b

    .line 11
    :cond_37
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_3b
    if-ge v1, v0, :cond_49

    .line 12
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p1, v2}, Lc/p/m;->b(Landroid/view/View;)Lc/p/m;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 13
    :cond_49
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_4f
    if-ltz p3, :cond_5d

    .line 14
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Lc/p/m;->P(Landroid/view/View;)Lc/p/m;

    add-int/lit8 p3, p3, -0x1

    goto :goto_4f

    :cond_5d
    return-void
.end method

.method public r(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    check-cast p1, Lc/p/m;

    .line 2
    new-instance v0, Lc/p/e$b;

    invoke-direct {v0, p0, p2, p3}, Lc/p/e$b;-><init>(Lc/p/e;Landroid/view/View;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v0}, Lc/p/m;->a(Lc/p/m$f;)Lc/p/m;

    return-void
.end method

.method public t(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object v0, p1

    check-cast v0, Lc/p/m;

    .line 2
    new-instance v9, Lc/p/e$c;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lc/p/e$c;-><init>(Lc/p/e;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v9}, Lc/p/m;->a(Lc/p/m$f;)Lc/p/m;

    return-void
.end method

.method public u(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .registers 4

    if-eqz p1, :cond_c

    .line 1
    check-cast p1, Lc/p/m;

    .line 2
    new-instance v0, Lc/p/e$d;

    invoke-direct {v0, p0, p2}, Lc/p/e$d;-><init>(Lc/p/e;Landroid/graphics/Rect;)V

    invoke-virtual {p1, v0}, Lc/p/m;->U(Lc/p/m$e;)V

    :cond_c
    return-void
.end method

.method public v(Ljava/lang/Object;Landroid/view/View;)V
    .registers 4

    if-eqz p2, :cond_14

    .line 1
    check-cast p1, Lc/p/m;

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3
    invoke-virtual {p0, p2, v0}, Landroidx/fragment/app/z;->k(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 4
    new-instance p2, Lc/p/e$a;

    invoke-direct {p2, p0, v0}, Lc/p/e$a;-><init>(Lc/p/e;Landroid/graphics/Rect;)V

    invoke-virtual {p1, p2}, Lc/p/m;->U(Lc/p/m$e;)V

    :cond_14
    return-void
.end method

.method public z(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    check-cast p1, Lc/p/q;

    .line 2
    invoke-virtual {p1}, Lc/p/m;->B()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_1c

    .line 5
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 6
    invoke-static {v0, v3}, Landroidx/fragment/app/z;->d(Ljava/util/List;Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 7
    :cond_1c
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {p0, p1, p3}, Lc/p/e;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V

    return-void
.end method
