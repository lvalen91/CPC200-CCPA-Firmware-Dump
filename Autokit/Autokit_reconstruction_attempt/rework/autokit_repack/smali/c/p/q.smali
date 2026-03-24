.class public Lc/p/q;
.super Lc/p/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/p/q$b;
    }
.end annotation


# instance fields
.field private K:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc/p/m;",
            ">;"
        }
    .end annotation
.end field

.field private L:Z

.field M:I

.field N:Z

.field private O:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lc/p/m;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/p/q;->K:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lc/p/q;->L:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lc/p/q;->N:Z

    .line 5
    iput v0, p0, Lc/p/q;->O:I

    return-void
.end method

.method private e0(Lc/p/m;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lc/p/q;->K:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    iput-object p0, p1, Lc/p/m;->s:Lc/p/q;

    return-void
.end method

.method private n0()V
    .registers 4

    .line 1
    new-instance v0, Lc/p/q$b;

    invoke-direct {v0, p0}, Lc/p/q$b;-><init>(Lc/p/q;)V

    .line 2
    iget-object v1, p0, Lc/p/q;->K:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/p/m;

    .line 3
    invoke-virtual {v2, v0}, Lc/p/m;->a(Lc/p/m$f;)Lc/p/m;

    goto :goto_b

    .line 4
    :cond_1b
    iget-object v0, p0, Lc/p/q;->K:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lc/p/q;->M:I

    return-void
.end method


# virtual methods
.method public M(Landroid/view/View;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Lc/p/m;->M(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Lc/p/q;->K:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1a

    .line 3
    iget-object v2, p0, Lc/p/q;->K:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/p/m;

    invoke-virtual {v2, p1}, Lc/p/m;->M(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public bridge synthetic O(Lc/p/m$f;)Lc/p/m;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lc/p/q;->h0(Lc/p/m$f;)Lc/p/q;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Landroid/view/View;)Lc/p/m;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lc/p/q;->i0(Landroid/view/View;)Lc/p/q;

    move-result-object p1

    return-object p1
.end method

.method public Q(Landroid/view/View;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Lc/p/m;->Q(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Lc/p/q;->K:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1a

    .line 3
    iget-object v2, p0, Lc/p/q;->K:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/p/m;

    invoke-virtual {v2, p1}, Lc/p/m;->Q(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    return-void
.end method

.method protected S()V
    .registers 5

    .line 1
    iget-object v0, p0, Lc/p/q;->K:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2
    invoke-virtual {p0}, Lc/p/m;->Z()V

    .line 3
    invoke-virtual {p0}, Lc/p/m;->o()V

    return-void

    .line 4
    :cond_f
    invoke-direct {p0}, Lc/p/q;->n0()V

    .line 5
    iget-boolean v0, p0, Lc/p/q;->L:Z

    if-nez v0, :cond_4b

    const/4 v0, 0x1

    .line 6
    :goto_17
    iget-object v1, p0, Lc/p/q;->K:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3c

    .line 7
    iget-object v1, p0, Lc/p/q;->K:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/p/m;

    .line 8
    iget-object v2, p0, Lc/p/q;->K:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/p/m;

    .line 9
    new-instance v3, Lc/p/q$a;

    invoke-direct {v3, p0, v2}, Lc/p/q$a;-><init>(Lc/p/q;Lc/p/m;)V

    invoke-virtual {v1, v3}, Lc/p/m;->a(Lc/p/m$f;)Lc/p/m;

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 10
    :cond_3c
    iget-object v0, p0, Lc/p/q;->K:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/p/m;

    if-eqz v0, :cond_61

    .line 11
    invoke-virtual {v0}, Lc/p/m;->S()V

    goto :goto_61

    .line 12
    :cond_4b
    iget-object v0, p0, Lc/p/q;->K:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_51
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/p/m;

    .line 13
    invoke-virtual {v1}, Lc/p/m;->S()V

    goto :goto_51

    :cond_61
    :goto_61
    return-void
.end method

.method public bridge synthetic T(J)Lc/p/m;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lc/p/q;->j0(J)Lc/p/q;

    return-object p0
.end method

.method public U(Lc/p/m$e;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Lc/p/m;->U(Lc/p/m$e;)V

    .line 2
    iget v0, p0, Lc/p/q;->O:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lc/p/q;->O:I

    .line 3
    iget-object v0, p0, Lc/p/q;->K:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_20

    .line 4
    iget-object v2, p0, Lc/p/q;->K:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/p/m;

    invoke-virtual {v2, p1}, Lc/p/m;->U(Lc/p/m$e;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_20
    return-void
.end method

.method public bridge synthetic V(Landroid/animation/TimeInterpolator;)Lc/p/m;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lc/p/q;->k0(Landroid/animation/TimeInterpolator;)Lc/p/q;

    move-result-object p1

    return-object p1
.end method

.method public W(Lc/p/g;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lc/p/m;->W(Lc/p/g;)V

    .line 2
    iget v0, p0, Lc/p/q;->O:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lc/p/q;->O:I

    .line 3
    iget-object v0, p0, Lc/p/q;->K:Ljava/util/ArrayList;

    if-eqz v0, :cond_24

    const/4 v0, 0x0

    .line 4
    :goto_e
    iget-object v1, p0, Lc/p/q;->K:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 5
    iget-object v1, p0, Lc/p/q;->K:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/p/m;

    invoke-virtual {v1, p1}, Lc/p/m;->W(Lc/p/g;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_24
    return-void
.end method

.method public X(Lc/p/p;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Lc/p/m;->X(Lc/p/p;)V

    .line 2
    iget v0, p0, Lc/p/q;->O:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lc/p/q;->O:I

    .line 3
    iget-object v0, p0, Lc/p/q;->K:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_20

    .line 4
    iget-object v2, p0, Lc/p/q;->K:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/p/m;

    invoke-virtual {v2, p1}, Lc/p/m;->X(Lc/p/p;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_20
    return-void
.end method

.method public bridge synthetic Y(J)Lc/p/m;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lc/p/q;->m0(J)Lc/p/q;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Lc/p/m$f;)Lc/p/m;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lc/p/q;->b0(Lc/p/m$f;)Lc/p/q;

    move-result-object p1

    return-object p1
.end method

.method a0(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 1
    invoke-super {p0, p1}, Lc/p/m;->a0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_5
    iget-object v2, p0, Lc/p/q;->K:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_41

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lc/p/q;->K:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/p/m;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lc/p/m;->a0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_41
    return-object v0
.end method

.method public bridge synthetic b(Landroid/view/View;)Lc/p/m;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lc/p/q;->c0(Landroid/view/View;)Lc/p/q;

    move-result-object p1

    return-object p1
.end method

.method public b0(Lc/p/m$f;)Lc/p/q;
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lc/p/m;->a(Lc/p/m$f;)Lc/p/m;

    move-object p1, p0

    check-cast p1, Lc/p/q;

    return-object p1
.end method

.method public c0(Landroid/view/View;)Lc/p/q;
    .registers 4

    const/4 v0, 0x0

    .line 1
    :goto_1
    iget-object v1, p0, Lc/p/q;->K:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 2
    iget-object v1, p0, Lc/p/q;->K:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/p/m;

    invoke-virtual {v1, p1}, Lc/p/m;->b(Landroid/view/View;)Lc/p/m;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3
    :cond_17
    invoke-super {p0, p1}, Lc/p/m;->b(Landroid/view/View;)Lc/p/m;

    move-object p1, p0

    check-cast p1, Lc/p/q;

    return-object p1
.end method

.method protected cancel()V
    .registers 4

    .line 1
    invoke-super {p0}, Lc/p/m;->cancel()V

    .line 2
    iget-object v0, p0, Lc/p/q;->K:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1a

    .line 3
    iget-object v2, p0, Lc/p/q;->K:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/p/m;

    invoke-virtual {v2}, Lc/p/m;->cancel()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lc/p/q;->l()Lc/p/m;

    move-result-object v0

    return-object v0
.end method

.method public d0(Lc/p/m;)Lc/p/q;
    .registers 7

    .line 1
    invoke-direct {p0, p1}, Lc/p/q;->e0(Lc/p/m;)V

    .line 2
    iget-wide v0, p0, Lc/p/m;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_e

    .line 3
    invoke-virtual {p1, v0, v1}, Lc/p/m;->T(J)Lc/p/m;

    .line 4
    :cond_e
    iget v0, p0, Lc/p/q;->O:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1b

    .line 5
    invoke-virtual {p0}, Lc/p/m;->r()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/p/m;->V(Landroid/animation/TimeInterpolator;)Lc/p/m;

    .line 6
    :cond_1b
    iget v0, p0, Lc/p/q;->O:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_28

    .line 7
    invoke-virtual {p0}, Lc/p/m;->v()Lc/p/p;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/p/m;->X(Lc/p/p;)V

    .line 8
    :cond_28
    iget v0, p0, Lc/p/q;->O:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_35

    .line 9
    invoke-virtual {p0}, Lc/p/m;->u()Lc/p/g;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/p/m;->W(Lc/p/g;)V

    .line 10
    :cond_35
    iget v0, p0, Lc/p/q;->O:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_42

    .line 11
    invoke-virtual {p0}, Lc/p/m;->q()Lc/p/m$e;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/p/m;->U(Lc/p/m$e;)V

    :cond_42
    return-object p0
.end method

.method public f(Lc/p/s;)V
    .registers 5

    .line 1
    iget-object v0, p1, Lc/p/s;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Lc/p/m;->F(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 2
    iget-object v0, p0, Lc/p/q;->K:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/p/m;

    .line 3
    iget-object v2, p1, Lc/p/s;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, Lc/p/m;->F(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 4
    invoke-virtual {v1, p1}, Lc/p/m;->f(Lc/p/s;)V

    .line 5
    iget-object v2, p1, Lc/p/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_2b
    return-void
.end method

.method public f0(I)Lc/p/m;
    .registers 3

    if-ltz p1, :cond_14

    .line 1
    iget-object v0, p0, Lc/p/q;->K:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_b

    goto :goto_14

    .line 2
    :cond_b
    iget-object v0, p0, Lc/p/q;->K:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/p/m;

    return-object p1

    :cond_14
    :goto_14
    const/4 p1, 0x0

    return-object p1
.end method

.method public g0()I
    .registers 2

    .line 1
    iget-object v0, p0, Lc/p/q;->K:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method h(Lc/p/s;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Lc/p/m;->h(Lc/p/s;)V

    .line 2
    iget-object v0, p0, Lc/p/q;->K:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1a

    .line 3
    iget-object v2, p0, Lc/p/q;->K:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/p/m;

    invoke-virtual {v2, p1}, Lc/p/m;->h(Lc/p/s;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public h0(Lc/p/m$f;)Lc/p/q;
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lc/p/m;->O(Lc/p/m$f;)Lc/p/m;

    move-object p1, p0

    check-cast p1, Lc/p/q;

    return-object p1
.end method

.method public i(Lc/p/s;)V
    .registers 5

    .line 1
    iget-object v0, p1, Lc/p/s;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Lc/p/m;->F(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 2
    iget-object v0, p0, Lc/p/q;->K:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/p/m;

    .line 3
    iget-object v2, p1, Lc/p/s;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, Lc/p/m;->F(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 4
    invoke-virtual {v1, p1}, Lc/p/m;->i(Lc/p/s;)V

    .line 5
    iget-object v2, p1, Lc/p/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_2b
    return-void
.end method

.method public i0(Landroid/view/View;)Lc/p/q;
    .registers 4

    const/4 v0, 0x0

    .line 1
    :goto_1
    iget-object v1, p0, Lc/p/q;->K:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 2
    iget-object v1, p0, Lc/p/q;->K:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/p/m;

    invoke-virtual {v1, p1}, Lc/p/m;->P(Landroid/view/View;)Lc/p/m;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3
    :cond_17
    invoke-super {p0, p1}, Lc/p/m;->P(Landroid/view/View;)Lc/p/m;

    move-object p1, p0

    check-cast p1, Lc/p/q;

    return-object p1
.end method

.method public j0(J)Lc/p/q;
    .registers 8

    .line 1
    invoke-super {p0, p1, p2}, Lc/p/m;->T(J)Lc/p/m;

    .line 2
    iget-wide v0, p0, Lc/p/m;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_24

    iget-object v0, p0, Lc/p/q;->K:Ljava/util/ArrayList;

    if-eqz v0, :cond_24

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v0, :cond_24

    .line 4
    iget-object v2, p0, Lc/p/q;->K:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/p/m;

    invoke-virtual {v2, p1, p2}, Lc/p/m;->T(J)Lc/p/m;

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_24
    return-object p0
.end method

.method public k0(Landroid/animation/TimeInterpolator;)Lc/p/q;
    .registers 5

    .line 1
    iget v0, p0, Lc/p/q;->O:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/p/q;->O:I

    .line 2
    iget-object v0, p0, Lc/p/q;->K:Ljava/util/ArrayList;

    if-eqz v0, :cond_1f

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_1f

    .line 4
    iget-object v2, p0, Lc/p/q;->K:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/p/m;

    invoke-virtual {v2, p1}, Lc/p/m;->V(Landroid/animation/TimeInterpolator;)Lc/p/m;

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 5
    :cond_1f
    invoke-super {p0, p1}, Lc/p/m;->V(Landroid/animation/TimeInterpolator;)Lc/p/m;

    move-object p1, p0

    check-cast p1, Lc/p/q;

    return-object p1
.end method

.method public l()Lc/p/m;
    .registers 5

    .line 1
    invoke-super {p0}, Lc/p/m;->l()Lc/p/m;

    move-result-object v0

    check-cast v0, Lc/p/q;

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lc/p/q;->K:Ljava/util/ArrayList;

    .line 3
    iget-object v1, p0, Lc/p/q;->K:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_28

    .line 4
    iget-object v3, p0, Lc/p/q;->K:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/p/m;

    invoke-virtual {v3}, Lc/p/m;->l()Lc/p/m;

    move-result-object v3

    invoke-direct {v0, v3}, Lc/p/q;->e0(Lc/p/m;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_28
    return-object v0
.end method

.method public l0(I)Lc/p/q;
    .registers 5

    const/4 v0, 0x1

    if-eqz p1, :cond_20

    if-ne p1, v0, :cond_9

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lc/p/q;->L:Z

    goto :goto_22

    .line 2
    :cond_9
    new-instance v0, Landroid/util/AndroidRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid parameter for TransitionSet ordering: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_20
    iput-boolean v0, p0, Lc/p/q;->L:Z

    :goto_22
    return-object p0
.end method

.method public m0(J)Lc/p/q;
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lc/p/m;->Y(J)Lc/p/m;

    move-object p1, p0

    check-cast p1, Lc/p/q;

    return-object p1
.end method

.method protected n(Landroid/view/ViewGroup;Lc/p/t;Lc/p/t;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lc/p/t;",
            "Lc/p/t;",
            "Ljava/util/ArrayList<",
            "Lc/p/s;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lc/p/s;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-virtual {p0}, Lc/p/m;->x()J

    move-result-wide v1

    .line 2
    iget-object v3, v0, Lc/p/q;->K:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v3, :cond_40

    .line 3
    iget-object v5, v0, Lc/p/q;->K:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lc/p/m;

    const-wide/16 v7, 0x0

    cmp-long v5, v1, v7

    if-lez v5, :cond_33

    .line 4
    iget-boolean v5, v0, Lc/p/q;->L:Z

    if-nez v5, :cond_23

    if-nez v4, :cond_33

    .line 5
    :cond_23
    invoke-virtual {v6}, Lc/p/m;->x()J

    move-result-wide v9

    cmp-long v5, v9, v7

    if-lez v5, :cond_30

    add-long/2addr v9, v1

    .line 6
    invoke-virtual {v6, v9, v10}, Lc/p/m;->Y(J)Lc/p/m;

    goto :goto_33

    .line 7
    :cond_30
    invoke-virtual {v6, v1, v2}, Lc/p/m;->Y(J)Lc/p/m;

    :cond_33
    :goto_33
    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    .line 8
    invoke-virtual/range {v6 .. v11}, Lc/p/m;->n(Landroid/view/ViewGroup;Lc/p/t;Lc/p/t;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_40
    return-void
.end method
