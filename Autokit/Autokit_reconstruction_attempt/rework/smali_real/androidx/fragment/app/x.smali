.class Landroidx/fragment/app/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/x$h;,
        Landroidx/fragment/app/x$g;
    }
.end annotation


# static fields
.field private static final a:[I

.field static final b:Landroidx/fragment/app/z;

.field static final c:Landroidx/fragment/app/z;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0xb

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_20

    sput-object v0, Landroidx/fragment/app/x;->a:[I

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_15

    .line 3
    new-instance v0, Landroidx/fragment/app/y;

    invoke-direct {v0}, Landroidx/fragment/app/y;-><init>()V

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    .line 4
    :goto_16
    sput-object v0, Landroidx/fragment/app/x;->b:Landroidx/fragment/app/z;

    .line 5
    invoke-static {}, Landroidx/fragment/app/x;->x()Landroidx/fragment/app/z;

    move-result-object v0

    sput-object v0, Landroidx/fragment/app/x;->c:Landroidx/fragment/app/z;

    return-void

    nop

    :array_20
    .array-data 4
        0x0
        0x3
        0x0
        0x1
        0x5
        0x4
        0x7
        0x6
        0x9
        0x8
        0xa
    .end array-data
.end method

.method private static A(Landroidx/fragment/app/z;Ljava/lang/Object;Ljava/lang/Object;Lc/d/a;ZLandroidx/fragment/app/a;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/z;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lc/d/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z",
            "Landroidx/fragment/app/a;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p5, Landroidx/fragment/app/w;->n:Ljava/util/ArrayList;

    if-eqz v0, :cond_2c

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    const/4 v0, 0x0

    if-eqz p4, :cond_16

    .line 3
    iget-object p4, p5, Landroidx/fragment/app/w;->o:Ljava/util/ArrayList;

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    goto :goto_1e

    .line 4
    :cond_16
    iget-object p4, p5, Landroidx/fragment/app/w;->n:Ljava/util/ArrayList;

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 5
    :goto_1e
    invoke-virtual {p3, p4}, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    .line 6
    invoke-virtual {p0, p1, p3}, Landroidx/fragment/app/z;->v(Ljava/lang/Object;Landroid/view/View;)V

    if-eqz p2, :cond_2c

    .line 7
    invoke-virtual {p0, p2, p3}, Landroidx/fragment/app/z;->v(Ljava/lang/Object;Landroid/view/View;)V

    :cond_2c
    return-void
.end method

.method static B(Ljava/util/ArrayList;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    if-nez p0, :cond_3

    return-void

    .line 1
    :cond_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_9
    if-ltz v0, :cond_17

    .line 2
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 3
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_17
    return-void
.end method

.method static C(Landroid/content/Context;Landroidx/fragment/app/g;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZLandroidx/fragment/app/x$g;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/fragment/app/g;",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;IIZ",
            "Landroidx/fragment/app/x$g;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move v1, p4

    :goto_6
    if-ge v1, p5, :cond_24

    .line 2
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/a;

    .line 3
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 4
    invoke-static {v2, v0, p6}, Landroidx/fragment/app/x;->e(Landroidx/fragment/app/a;Landroid/util/SparseArray;Z)V

    goto :goto_21

    .line 5
    :cond_1e
    invoke-static {v2, v0, p6}, Landroidx/fragment/app/x;->c(Landroidx/fragment/app/a;Landroid/util/SparseArray;Z)V

    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 6
    :cond_24
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_5f

    .line 7
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 8
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result p0

    const/4 v2, 0x0

    :goto_34
    if-ge v2, p0, :cond_5f

    .line 9
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 10
    invoke-static {v3, p2, p3, p4, p5}, Landroidx/fragment/app/x;->d(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Lc/d/a;

    move-result-object v4

    .line 11
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/x$h;

    .line 12
    invoke-virtual {p1}, Landroidx/fragment/app/g;->d()Z

    move-result v6

    if-eqz v6, :cond_5c

    .line 13
    invoke-virtual {p1, v3}, Landroidx/fragment/app/g;->c(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-nez v3, :cond_53

    goto :goto_5c

    :cond_53
    if-eqz p6, :cond_59

    .line 14
    invoke-static {v3, v5, v1, v4, p7}, Landroidx/fragment/app/x;->o(Landroid/view/ViewGroup;Landroidx/fragment/app/x$h;Landroid/view/View;Lc/d/a;Landroidx/fragment/app/x$g;)V

    goto :goto_5c

    .line 15
    :cond_59
    invoke-static {v3, v5, v1, v4, p7}, Landroidx/fragment/app/x;->n(Landroid/view/ViewGroup;Landroidx/fragment/app/x$h;Landroid/view/View;Lc/d/a;Landroidx/fragment/app/x$g;)V

    :cond_5c
    :goto_5c
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    :cond_5f
    return-void
.end method

.method private static a(Ljava/util/ArrayList;Lc/d/a;Ljava/util/Collection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Lc/d/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lc/d/g;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_1e

    .line 2
    invoke-virtual {p1, v0}, Lc/d/g;->m(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 3
    invoke-static {v1}, Landroidx/core/view/v;->L(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 4
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_1e
    return-void
.end method

.method private static b(Landroidx/fragment/app/a;Landroidx/fragment/app/w$a;Landroid/util/SparseArray;ZZ)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/a;",
            "Landroidx/fragment/app/w$a;",
            "Landroid/util/SparseArray<",
            "Landroidx/fragment/app/x$h;",
            ">;ZZ)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/w$a;->b:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    iget v1, v0, Landroidx/fragment/app/Fragment;->y:I

    if-nez v1, :cond_a

    return-void

    :cond_a
    if-eqz p3, :cond_13

    .line 3
    sget-object v2, Landroidx/fragment/app/x;->a:[I

    iget p1, p1, Landroidx/fragment/app/w$a;->a:I

    aget p1, v2, p1

    goto :goto_15

    :cond_13
    iget p1, p1, Landroidx/fragment/app/w$a;->a:I

    :goto_15
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_7f

    const/4 v4, 0x3

    if-eq p1, v4, :cond_57

    const/4 v4, 0x4

    if-eq p1, v4, :cond_3f

    const/4 v4, 0x5

    if-eq p1, v4, :cond_2d

    const/4 v4, 0x6

    if-eq p1, v4, :cond_57

    const/4 v4, 0x7

    if-eq p1, v4, :cond_7f

    const/4 p1, 0x0

    const/4 v3, 0x0

    :goto_2a
    const/4 v4, 0x0

    goto/16 :goto_92

    :cond_2d
    if-eqz p4, :cond_3c

    .line 4
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->N:Z

    if-eqz p1, :cond_8e

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->A:Z

    if-nez p1, :cond_8e

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->m:Z

    if-eqz p1, :cond_8e

    goto :goto_8c

    .line 5
    :cond_3c
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->A:Z

    goto :goto_8f

    :cond_3f
    if-eqz p4, :cond_4e

    .line 6
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->N:Z

    if-eqz p1, :cond_70

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->m:Z

    if-eqz p1, :cond_70

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->A:Z

    if-eqz p1, :cond_70

    :goto_4d
    goto :goto_6e

    .line 7
    :cond_4e
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->m:Z

    if-eqz p1, :cond_70

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->A:Z

    if-nez p1, :cond_70

    goto :goto_4d

    :cond_57
    if-eqz p4, :cond_72

    .line 8
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->m:Z

    if-nez p1, :cond_70

    iget-object p1, v0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;

    if-eqz p1, :cond_70

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_70

    iget p1, v0, Landroidx/fragment/app/Fragment;->O:F

    const/4 v4, 0x0

    cmpl-float p1, p1, v4

    if-ltz p1, :cond_70

    :goto_6e
    const/4 p1, 0x1

    goto :goto_7b

    :cond_70
    const/4 p1, 0x0

    goto :goto_7b

    .line 10
    :cond_72
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->m:Z

    if-eqz p1, :cond_70

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->A:Z

    if-nez p1, :cond_70

    goto :goto_6e

    :goto_7b
    move v4, p1

    const/4 p1, 0x1

    const/4 v3, 0x0

    goto :goto_92

    :cond_7f
    if-eqz p4, :cond_84

    .line 11
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->M:Z

    goto :goto_8f

    .line 12
    :cond_84
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->m:Z

    if-nez p1, :cond_8e

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->A:Z

    if-nez p1, :cond_8e

    :goto_8c
    const/4 p1, 0x1

    goto :goto_8f

    :cond_8e
    const/4 p1, 0x0

    :goto_8f
    move v2, p1

    const/4 p1, 0x0

    goto :goto_2a

    .line 13
    :goto_92
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/x$h;

    if-eqz v2, :cond_a4

    .line 14
    invoke-static {v5, p2, v1}, Landroidx/fragment/app/x;->p(Landroidx/fragment/app/x$h;Landroid/util/SparseArray;I)Landroidx/fragment/app/x$h;

    move-result-object v5

    .line 15
    iput-object v0, v5, Landroidx/fragment/app/x$h;->a:Landroidx/fragment/app/Fragment;

    .line 16
    iput-boolean p3, v5, Landroidx/fragment/app/x$h;->b:Z

    .line 17
    iput-object p0, v5, Landroidx/fragment/app/x$h;->c:Landroidx/fragment/app/a;

    :cond_a4
    const/4 v2, 0x0

    if-nez p4, :cond_c5

    if-eqz v3, :cond_c5

    if-eqz v5, :cond_b1

    .line 18
    iget-object v3, v5, Landroidx/fragment/app/x$h;->d:Landroidx/fragment/app/Fragment;

    if-ne v3, v0, :cond_b1

    .line 19
    iput-object v2, v5, Landroidx/fragment/app/x$h;->d:Landroidx/fragment/app/Fragment;

    .line 20
    :cond_b1
    iget-boolean v3, p0, Landroidx/fragment/app/w;->p:Z

    if-nez v3, :cond_c5

    .line 21
    iget-object v3, p0, Landroidx/fragment/app/a;->r:Landroidx/fragment/app/n;

    .line 22
    invoke-virtual {v3, v0}, Landroidx/fragment/app/n;->v(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/u;

    move-result-object v6

    .line 23
    invoke-virtual {v3}, Landroidx/fragment/app/n;->q0()Landroidx/fragment/app/v;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroidx/fragment/app/v;->p(Landroidx/fragment/app/u;)V

    .line 24
    invoke-virtual {v3, v0}, Landroidx/fragment/app/n;->P0(Landroidx/fragment/app/Fragment;)V

    :cond_c5
    if-eqz v4, :cond_d7

    if-eqz v5, :cond_cd

    .line 25
    iget-object v3, v5, Landroidx/fragment/app/x$h;->d:Landroidx/fragment/app/Fragment;

    if-nez v3, :cond_d7

    .line 26
    :cond_cd
    invoke-static {v5, p2, v1}, Landroidx/fragment/app/x;->p(Landroidx/fragment/app/x$h;Landroid/util/SparseArray;I)Landroidx/fragment/app/x$h;

    move-result-object v5

    .line 27
    iput-object v0, v5, Landroidx/fragment/app/x$h;->d:Landroidx/fragment/app/Fragment;

    .line 28
    iput-boolean p3, v5, Landroidx/fragment/app/x$h;->e:Z

    .line 29
    iput-object p0, v5, Landroidx/fragment/app/x$h;->f:Landroidx/fragment/app/a;

    :cond_d7
    if-nez p4, :cond_e3

    if-eqz p1, :cond_e3

    if-eqz v5, :cond_e3

    .line 30
    iget-object p0, v5, Landroidx/fragment/app/x$h;->a:Landroidx/fragment/app/Fragment;

    if-ne p0, v0, :cond_e3

    .line 31
    iput-object v2, v5, Landroidx/fragment/app/x$h;->a:Landroidx/fragment/app/Fragment;

    :cond_e3
    return-void
.end method

.method public static c(Landroidx/fragment/app/a;Landroid/util/SparseArray;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/a;",
            "Landroid/util/SparseArray<",
            "Landroidx/fragment/app/x$h;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/w;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_18

    .line 2
    iget-object v3, p0, Landroidx/fragment/app/w;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/w$a;

    .line 3
    invoke-static {p0, v3, p1, v1, p2}, Landroidx/fragment/app/x;->b(Landroidx/fragment/app/a;Landroidx/fragment/app/w$a;Landroid/util/SparseArray;ZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method private static d(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Lc/d/a;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)",
            "Lc/d/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/d/a;

    invoke-direct {v0}, Lc/d/a;-><init>()V

    add-int/lit8 p4, p4, -0x1

    :goto_7
    if-lt p4, p3, :cond_5a

    .line 2
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/a;

    .line 3
    invoke-virtual {v1, p0}, Landroidx/fragment/app/a;->C(I)Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_57

    .line 4
    :cond_16
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 5
    iget-object v3, v1, Landroidx/fragment/app/w;->n:Ljava/util/ArrayList;

    if-eqz v3, :cond_57

    .line 6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v2, :cond_2f

    .line 7
    iget-object v2, v1, Landroidx/fragment/app/w;->n:Ljava/util/ArrayList;

    .line 8
    iget-object v1, v1, Landroidx/fragment/app/w;->o:Ljava/util/ArrayList;

    goto :goto_36

    .line 9
    :cond_2f
    iget-object v2, v1, Landroidx/fragment/app/w;->n:Ljava/util/ArrayList;

    .line 10
    iget-object v1, v1, Landroidx/fragment/app/w;->o:Ljava/util/ArrayList;

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    :goto_36
    const/4 v4, 0x0

    :goto_37
    if-ge v4, v3, :cond_57

    .line 11
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 12
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v6}, Lc/d/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_51

    .line 14
    invoke-virtual {v0, v5, v7}, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_54

    .line 15
    :cond_51
    invoke-virtual {v0, v5, v6}, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_54
    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    :cond_57
    :goto_57
    add-int/lit8 p4, p4, -0x1

    goto :goto_7

    :cond_5a
    return-object v0
.end method

.method public static e(Landroidx/fragment/app/a;Landroid/util/SparseArray;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/a;",
            "Landroid/util/SparseArray<",
            "Landroidx/fragment/app/x$h;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/a;->r:Landroidx/fragment/app/n;

    invoke-virtual {v0}, Landroidx/fragment/app/n;->n0()Landroidx/fragment/app/g;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/g;->d()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 2
    :cond_d
    iget-object v0, p0, Landroidx/fragment/app/w;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_15
    if-ltz v0, :cond_25

    .line 3
    iget-object v2, p0, Landroidx/fragment/app/w;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/w$a;

    .line 4
    invoke-static {p0, v2, p1, v1, p2}, Landroidx/fragment/app/x;->b(Landroidx/fragment/app/a;Landroidx/fragment/app/w$a;Landroid/util/SparseArray;ZZ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_15

    :cond_25
    return-void
.end method

.method static f(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLc/d/a;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Landroidx/fragment/app/Fragment;",
            "Z",
            "Lc/d/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_7

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->N()Landroidx/core/app/h;

    move-result-object p0

    goto :goto_b

    .line 2
    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->N()Landroidx/core/app/h;

    move-result-object p0

    :goto_b
    if-eqz p0, :cond_3d

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    if-nez p3, :cond_1c

    const/4 v1, 0x0

    goto :goto_20

    .line 5
    :cond_1c
    invoke-virtual {p3}, Lc/d/g;->size()I

    move-result v1

    :goto_20
    if-ge v0, v1, :cond_33

    .line 6
    invoke-virtual {p3, v0}, Lc/d/g;->i(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {p3, v0}, Lc/d/g;->m(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_33
    const/4 p3, 0x0

    if-eqz p4, :cond_3a

    .line 8
    invoke-virtual {p0, p2, p1, p3}, Landroidx/core/app/h;->f(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_3d

    .line 9
    :cond_3a
    invoke-virtual {p0, p2, p1, p3}, Landroidx/core/app/h;->e(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    :cond_3d
    :goto_3d
    return-void
.end method

.method private static g(Landroidx/fragment/app/z;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/z;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_16

    .line 2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroidx/fragment/app/z;->e(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    return v1

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_16
    const/4 p0, 0x1

    return p0
.end method

.method static h(Landroidx/fragment/app/z;Lc/d/a;Ljava/lang/Object;Landroidx/fragment/app/x$h;)Lc/d/a;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/z;",
            "Lc/d/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/x$h;",
            ")",
            "Lc/d/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p3, Landroidx/fragment/app/x$h;->a:Landroidx/fragment/app/Fragment;

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->l0()Landroid/view/View;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lc/d/g;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7b

    if-eqz p2, :cond_7b

    if-nez v1, :cond_11

    goto :goto_7b

    .line 4
    :cond_11
    new-instance p2, Lc/d/a;

    invoke-direct {p2}, Lc/d/a;-><init>()V

    .line 5
    invoke-virtual {p0, p2, v1}, Landroidx/fragment/app/z;->j(Ljava/util/Map;Landroid/view/View;)V

    .line 6
    iget-object p0, p3, Landroidx/fragment/app/x$h;->c:Landroidx/fragment/app/a;

    .line 7
    iget-boolean p3, p3, Landroidx/fragment/app/x$h;->b:Z

    if-eqz p3, :cond_26

    .line 8
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->Q()Landroidx/core/app/h;

    move-result-object p3

    .line 9
    iget-object p0, p0, Landroidx/fragment/app/w;->n:Ljava/util/ArrayList;

    goto :goto_2c

    .line 10
    :cond_26
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->N()Landroidx/core/app/h;

    move-result-object p3

    .line 11
    iget-object p0, p0, Landroidx/fragment/app/w;->o:Ljava/util/ArrayList;

    :goto_2c
    if-eqz p0, :cond_38

    .line 12
    invoke-virtual {p2, p0}, Lc/d/a;->o(Ljava/util/Collection;)Z

    .line 13
    invoke-virtual {p1}, Lc/d/a;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p2, v0}, Lc/d/a;->o(Ljava/util/Collection;)Z

    :cond_38
    if-eqz p3, :cond_77

    .line 14
    invoke-virtual {p3, p0, p2}, Landroidx/core/app/h;->c(Ljava/util/List;Ljava/util/Map;)V

    .line 15
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_43
    if-ltz p3, :cond_7a

    .line 16
    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 17
    invoke-virtual {p2, v0}, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_5d

    .line 18
    invoke-static {p1, v0}, Landroidx/fragment/app/x;->q(Lc/d/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_74

    .line 19
    invoke-virtual {p1, v0}, Lc/d/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_74

    .line 20
    :cond_5d
    invoke-static {v1}, Landroidx/core/view/v;->L(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_74

    .line 21
    invoke-static {p1, v0}, Landroidx/fragment/app/x;->q(Lc/d/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_74

    .line 22
    invoke-static {v1}, Landroidx/core/view/v;->L(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_74
    :goto_74
    add-int/lit8 p3, p3, -0x1

    goto :goto_43

    .line 23
    :cond_77
    invoke-static {p1, p2}, Landroidx/fragment/app/x;->y(Lc/d/a;Lc/d/a;)V

    :cond_7a
    return-object p2

    .line 24
    :cond_7b
    :goto_7b
    invoke-virtual {p1}, Lc/d/g;->clear()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static i(Landroidx/fragment/app/z;Lc/d/a;Ljava/lang/Object;Landroidx/fragment/app/x$h;)Lc/d/a;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/z;",
            "Lc/d/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/x$h;",
            ")",
            "Lc/d/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lc/d/g;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_70

    if-nez p2, :cond_9

    goto :goto_70

    .line 2
    :cond_9
    iget-object p2, p3, Landroidx/fragment/app/x$h;->d:Landroidx/fragment/app/Fragment;

    .line 3
    new-instance v0, Lc/d/a;

    invoke-direct {v0}, Lc/d/a;-><init>()V

    .line 4
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->L1()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/z;->j(Ljava/util/Map;Landroid/view/View;)V

    .line 5
    iget-object p0, p3, Landroidx/fragment/app/x$h;->f:Landroidx/fragment/app/a;

    .line 6
    iget-boolean p3, p3, Landroidx/fragment/app/x$h;->e:Z

    if-eqz p3, :cond_24

    .line 7
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->N()Landroidx/core/app/h;

    move-result-object p2

    .line 8
    iget-object p0, p0, Landroidx/fragment/app/w;->o:Ljava/util/ArrayList;

    goto :goto_2a

    .line 9
    :cond_24
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->Q()Landroidx/core/app/h;

    move-result-object p2

    .line 10
    iget-object p0, p0, Landroidx/fragment/app/w;->n:Ljava/util/ArrayList;

    :goto_2a
    if-eqz p0, :cond_2f

    .line 11
    invoke-virtual {v0, p0}, Lc/d/a;->o(Ljava/util/Collection;)Z

    :cond_2f
    if-eqz p2, :cond_68

    .line 12
    invoke-virtual {p2, p0, v0}, Landroidx/core/app/h;->c(Ljava/util/List;Ljava/util/Map;)V

    .line 13
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_3a
    if-ltz p2, :cond_6f

    .line 14
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 15
    invoke-virtual {v0, p3}, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_4e

    .line 16
    invoke-virtual {p1, p3}, Lc/d/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_65

    .line 17
    :cond_4e
    invoke-static {v1}, Landroidx/core/view/v;->L(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    .line 18
    invoke-virtual {p1, p3}, Lc/d/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 19
    invoke-static {v1}, Landroidx/core/view/v;->L(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p3}, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_65
    :goto_65
    add-int/lit8 p2, p2, -0x1

    goto :goto_3a

    .line 20
    :cond_68
    invoke-virtual {v0}, Lc/d/a;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p1, p0}, Lc/d/a;->o(Ljava/util/Collection;)Z

    :cond_6f
    return-object v0

    .line 21
    :cond_70
    :goto_70
    invoke-virtual {p1}, Lc/d/g;->clear()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static j(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/z;
    .registers 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_22

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->P()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->e0()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->g0()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_22

    .line 7
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_22
    if-eqz p1, :cond_3f

    .line 8
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->M()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2d

    .line 9
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_2d
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->c0()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_36

    .line 11
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_36
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->f0()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3f

    .line 13
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_3f
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_47

    return-object p1

    .line 15
    :cond_47
    sget-object p0, Landroidx/fragment/app/x;->b:Landroidx/fragment/app/z;

    if-eqz p0, :cond_54

    invoke-static {p0, v0}, Landroidx/fragment/app/x;->g(Landroidx/fragment/app/z;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_54

    .line 16
    sget-object p0, Landroidx/fragment/app/x;->b:Landroidx/fragment/app/z;

    return-object p0

    .line 17
    :cond_54
    sget-object p0, Landroidx/fragment/app/x;->c:Landroidx/fragment/app/z;

    if-eqz p0, :cond_61

    invoke-static {p0, v0}, Landroidx/fragment/app/x;->g(Landroidx/fragment/app/z;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_61

    .line 18
    sget-object p0, Landroidx/fragment/app/x;->c:Landroidx/fragment/app/z;

    return-object p0

    .line 19
    :cond_61
    sget-object p0, Landroidx/fragment/app/x;->b:Landroidx/fragment/app/z;

    if-nez p0, :cond_6a

    sget-object p0, Landroidx/fragment/app/x;->c:Landroidx/fragment/app/z;

    if-nez p0, :cond_6a

    return-object p1

    .line 20
    :cond_6a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid Transition types"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static k(Landroidx/fragment/app/z;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/z;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_22

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->l0()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_10

    .line 3
    invoke-virtual {p0, v0, p2}, Landroidx/fragment/app/z;->f(Ljava/util/ArrayList;Landroid/view/View;)V

    :cond_10
    if-eqz p3, :cond_15

    .line 4
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 5
    :cond_15
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_23

    .line 6
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/z;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :cond_23
    :goto_23
    return-object v0
.end method

.method private static l(Landroidx/fragment/app/z;Landroid/view/ViewGroup;Landroid/view/View;Lc/d/a;Landroidx/fragment/app/x$h;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/z;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Lc/d/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/fragment/app/x$h;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p7

    .line 1
    iget-object v8, v7, Landroidx/fragment/app/x$h;->a:Landroidx/fragment/app/Fragment;

    .line 2
    iget-object v9, v7, Landroidx/fragment/app/x$h;->d:Landroidx/fragment/app/Fragment;

    const/4 v0, 0x0

    if-eqz v8, :cond_87

    if-nez v9, :cond_13

    goto/16 :goto_87

    .line 3
    :cond_13
    iget-boolean v12, v7, Landroidx/fragment/app/x$h;->b:Z

    .line 4
    invoke-virtual/range {p3 .. p3}, Lc/d/g;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1f

    move-object/from16 v13, p3

    move-object v1, v0

    goto :goto_25

    .line 5
    :cond_1f
    invoke-static {v6, v8, v9, v12}, Landroidx/fragment/app/x;->u(Landroidx/fragment/app/z;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v13, p3

    .line 6
    :goto_25
    invoke-static {v6, v13, v1, v7}, Landroidx/fragment/app/x;->i(Landroidx/fragment/app/z;Lc/d/a;Ljava/lang/Object;Landroidx/fragment/app/x$h;)Lc/d/a;

    move-result-object v3

    .line 7
    invoke-virtual/range {p3 .. p3}, Lc/d/g;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_31

    move-object v14, v0

    goto :goto_39

    .line 8
    :cond_31
    invoke-virtual {v3}, Lc/d/a;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v14, v1

    :goto_39
    if-nez v11, :cond_40

    if-nez p8, :cond_40

    if-nez v14, :cond_40

    return-object v0

    :cond_40
    const/4 v1, 0x1

    .line 9
    invoke-static {v8, v9, v12, v3, v1}, Landroidx/fragment/app/x;->f(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLc/d/a;Z)V

    if-eqz v14, :cond_66

    .line 10
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v5, p2

    .line 11
    invoke-virtual {v6, v14, v5, v10}, Landroidx/fragment/app/z;->z(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 12
    iget-boolean v4, v7, Landroidx/fragment/app/x$h;->e:Z

    .line 13
    iget-object v2, v7, Landroidx/fragment/app/x$h;->f:Landroidx/fragment/app/a;

    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v16, v2

    move-object/from16 v2, p8

    move-object/from16 v5, v16

    .line 14
    invoke-static/range {v0 .. v5}, Landroidx/fragment/app/x;->A(Landroidx/fragment/app/z;Ljava/lang/Object;Ljava/lang/Object;Lc/d/a;ZLandroidx/fragment/app/a;)V

    if-eqz v11, :cond_67

    .line 15
    invoke-virtual {v6, v11, v15}, Landroidx/fragment/app/z;->u(Ljava/lang/Object;Landroid/graphics/Rect;)V

    goto :goto_67

    :cond_66
    move-object v15, v0

    .line 16
    :cond_67
    :goto_67
    new-instance v5, Landroidx/fragment/app/x$f;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object v3, v14

    move-object/from16 v4, p4

    move-object v13, v5

    move-object/from16 v5, p6

    move-object/from16 v6, p2

    move-object v7, v8

    move-object v8, v9

    move v9, v12

    move-object/from16 v10, p5

    move-object/from16 v11, p7

    move-object v12, v15

    invoke-direct/range {v0 .. v12}, Landroidx/fragment/app/x$f;-><init>(Landroidx/fragment/app/z;Lc/d/a;Ljava/lang/Object;Landroidx/fragment/app/x$h;Ljava/util/ArrayList;Landroid/view/View;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Landroidx/core/view/t;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/t;

    return-object v14

    :cond_87
    :goto_87
    return-object v0
.end method

.method private static m(Landroidx/fragment/app/z;Landroid/view/ViewGroup;Landroid/view/View;Lc/d/a;Landroidx/fragment/app/x$h;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/z;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Lc/d/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/fragment/app/x$h;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v6, p0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v7, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v8, p7

    .line 1
    iget-object v9, v7, Landroidx/fragment/app/x$h;->a:Landroidx/fragment/app/Fragment;

    .line 2
    iget-object v10, v7, Landroidx/fragment/app/x$h;->d:Landroidx/fragment/app/Fragment;

    if-eqz v9, :cond_1b

    .line 3
    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->L1()Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_1b
    const/4 v4, 0x0

    if-eqz v9, :cond_9c

    if-nez v10, :cond_22

    goto/16 :goto_9c

    .line 4
    :cond_22
    iget-boolean v11, v7, Landroidx/fragment/app/x$h;->b:Z

    .line 5
    invoke-virtual/range {p3 .. p3}, Lc/d/g;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2c

    move-object v5, v4

    goto :goto_30

    .line 6
    :cond_2c
    invoke-static {p0, v9, v10, v11}, Landroidx/fragment/app/x;->u(Landroidx/fragment/app/z;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v5

    .line 7
    :goto_30
    invoke-static {p0, v1, v5, v7}, Landroidx/fragment/app/x;->i(Landroidx/fragment/app/z;Lc/d/a;Ljava/lang/Object;Landroidx/fragment/app/x$h;)Lc/d/a;

    move-result-object v12

    .line 8
    invoke-static {p0, v1, v5, v7}, Landroidx/fragment/app/x;->h(Landroidx/fragment/app/z;Lc/d/a;Ljava/lang/Object;Landroidx/fragment/app/x$h;)Lc/d/a;

    move-result-object v13

    .line 9
    invoke-virtual/range {p3 .. p3}, Lc/d/g;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_4a

    if-eqz v12, :cond_43

    .line 10
    invoke-virtual {v12}, Lc/d/g;->clear()V

    :cond_43
    if-eqz v13, :cond_48

    .line 11
    invoke-virtual {v13}, Lc/d/g;->clear()V

    :cond_48
    move-object v14, v4

    goto :goto_59

    .line 12
    :cond_4a
    invoke-virtual/range {p3 .. p3}, Lc/d/a;->keySet()Ljava/util/Set;

    move-result-object v14

    .line 13
    invoke-static {v2, v12, v14}, Landroidx/fragment/app/x;->a(Ljava/util/ArrayList;Lc/d/a;Ljava/util/Collection;)V

    .line 14
    invoke-virtual/range {p3 .. p3}, Lc/d/a;->values()Ljava/util/Collection;

    move-result-object v1

    .line 15
    invoke-static {v3, v13, v1}, Landroidx/fragment/app/x;->a(Ljava/util/ArrayList;Lc/d/a;Ljava/util/Collection;)V

    move-object v14, v5

    :goto_59
    if-nez v8, :cond_60

    if-nez p8, :cond_60

    if-nez v14, :cond_60

    return-object v4

    :cond_60
    const/4 v1, 0x1

    .line 16
    invoke-static {v9, v10, v11, v12, v1}, Landroidx/fragment/app/x;->f(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLc/d/a;Z)V

    if-eqz v14, :cond_89

    .line 17
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-virtual {p0, v14, v0, v2}, Landroidx/fragment/app/z;->z(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 19
    iget-boolean v4, v7, Landroidx/fragment/app/x$h;->e:Z

    .line 20
    iget-object v5, v7, Landroidx/fragment/app/x$h;->f:Landroidx/fragment/app/a;

    move-object v0, p0

    move-object v1, v14

    move-object/from16 v2, p8

    move-object v3, v12

    .line 21
    invoke-static/range {v0 .. v5}, Landroidx/fragment/app/x;->A(Landroidx/fragment/app/z;Ljava/lang/Object;Ljava/lang/Object;Lc/d/a;ZLandroidx/fragment/app/a;)V

    .line 22
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 23
    invoke-static {v13, v7, v8, v11}, Landroidx/fragment/app/x;->t(Lc/d/a;Landroidx/fragment/app/x$h;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_86

    .line 24
    invoke-virtual {p0, v8, v0}, Landroidx/fragment/app/z;->u(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :cond_86
    move-object v7, v0

    move-object v5, v1

    goto :goto_8b

    :cond_89
    move-object v5, v4

    move-object v7, v5

    .line 25
    :goto_8b
    new-instance v8, Landroidx/fragment/app/x$e;

    move-object v0, v8

    move-object v1, v9

    move-object v2, v10

    move v3, v11

    move-object v4, v13

    move-object v6, p0

    invoke-direct/range {v0 .. v7}, Landroidx/fragment/app/x$e;-><init>(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLc/d/a;Landroid/view/View;Landroidx/fragment/app/z;Landroid/graphics/Rect;)V

    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroidx/core/view/t;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/t;

    return-object v14

    :cond_9c
    :goto_9c
    return-object v4
.end method

.method private static n(Landroid/view/ViewGroup;Landroidx/fragment/app/x$h;Landroid/view/View;Lc/d/a;Landroidx/fragment/app/x$g;)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroidx/fragment/app/x$h;",
            "Landroid/view/View;",
            "Lc/d/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/fragment/app/x$g;",
            ")V"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    .line 1
    iget-object v14, v10, Landroidx/fragment/app/x$h;->a:Landroidx/fragment/app/Fragment;

    .line 2
    iget-object v15, v10, Landroidx/fragment/app/x$h;->d:Landroidx/fragment/app/Fragment;

    .line 3
    invoke-static {v15, v14}, Landroidx/fragment/app/x;->j(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/z;

    move-result-object v8

    if-nez v8, :cond_15

    return-void

    .line 4
    :cond_15
    iget-boolean v0, v10, Landroidx/fragment/app/x$h;->b:Z

    .line 5
    iget-boolean v1, v10, Landroidx/fragment/app/x$h;->e:Z

    .line 6
    invoke-static {v8, v14, v0}, Landroidx/fragment/app/x;->r(Landroidx/fragment/app/z;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v7

    .line 7
    invoke-static {v8, v15, v1}, Landroidx/fragment/app/x;->s(Landroidx/fragment/app/z;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v6

    .line 8
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 9
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v16, v4

    move-object/from16 v4, p1

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v6, v16

    move-object/from16 v19, v7

    move-object v9, v8

    move-object/from16 v8, v18

    .line 10
    invoke-static/range {v0 .. v8}, Landroidx/fragment/app/x;->l(Landroidx/fragment/app/z;Landroid/view/ViewGroup;Landroid/view/View;Lc/d/a;Landroidx/fragment/app/x$h;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v8, v19

    if-nez v8, :cond_50

    if-nez v6, :cond_50

    move-object/from16 v0, v18

    if-nez v0, :cond_52

    return-void

    :cond_50
    move-object/from16 v0, v18

    :cond_52
    move-object/from16 v7, v17

    .line 11
    invoke-static {v9, v0, v15, v7, v11}, Landroidx/fragment/app/x;->k(Landroidx/fragment/app/z;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v17

    if-eqz v17, :cond_60

    .line 12
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_61

    :cond_60
    const/4 v0, 0x0

    :cond_61
    move-object/from16 v18, v0

    .line 13
    invoke-virtual {v9, v8, v11}, Landroidx/fragment/app/z;->a(Ljava/lang/Object;Landroid/view/View;)V

    .line 14
    iget-boolean v5, v10, Landroidx/fragment/app/x$h;->b:Z

    move-object v0, v9

    move-object v1, v8

    move-object/from16 v2, v18

    move-object v3, v6

    move-object v4, v14

    invoke-static/range {v0 .. v5}, Landroidx/fragment/app/x;->v(Landroidx/fragment/app/z;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v10

    if-eqz v15, :cond_92

    if-eqz v17, :cond_92

    .line 15
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_82

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_92

    .line 16
    :cond_82
    new-instance v0, Lc/g/g/b;

    invoke-direct {v0}, Lc/g/g/b;-><init>()V

    .line 17
    invoke-interface {v13, v15, v0}, Landroidx/fragment/app/x$g;->b(Landroidx/fragment/app/Fragment;Lc/g/g/b;)V

    .line 18
    new-instance v1, Landroidx/fragment/app/x$c;

    invoke-direct {v1, v13, v15, v0}, Landroidx/fragment/app/x$c;-><init>(Landroidx/fragment/app/x$g;Landroidx/fragment/app/Fragment;Lc/g/g/b;)V

    invoke-virtual {v9, v15, v10, v0, v1}, Landroidx/fragment/app/z;->w(Landroidx/fragment/app/Fragment;Ljava/lang/Object;Lc/g/g/b;Ljava/lang/Runnable;)V

    :cond_92
    if-eqz v10, :cond_c4

    .line 19
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v9

    move-object v1, v10

    move-object v2, v8

    move-object v3, v13

    move-object/from16 v4, v18

    move-object/from16 v5, v17

    move-object/from16 v7, v16

    .line 20
    invoke-virtual/range {v0 .. v7}, Landroidx/fragment/app/z;->t(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v3, p2

    move-object/from16 v4, v16

    move-object v5, v8

    move-object v6, v13

    move-object/from16 v7, v18

    move-object/from16 v8, v17

    .line 21
    invoke-static/range {v0 .. v8}, Landroidx/fragment/app/x;->z(Landroidx/fragment/app/z;Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v2, v16

    .line 22
    invoke-virtual {v1, v0, v2, v12}, Landroidx/fragment/app/z;->x(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 23
    invoke-virtual {v1, v0, v10}, Landroidx/fragment/app/z;->c(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 24
    invoke-virtual {v1, v0, v2, v12}, Landroidx/fragment/app/z;->s(Landroid/view/ViewGroup;Ljava/util/ArrayList;Ljava/util/Map;)V

    :cond_c4
    return-void
.end method

.method private static o(Landroid/view/ViewGroup;Landroidx/fragment/app/x$h;Landroid/view/View;Lc/d/a;Landroidx/fragment/app/x$g;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroidx/fragment/app/x$h;",
            "Landroid/view/View;",
            "Lc/d/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/fragment/app/x$g;",
            ")V"
        }
    .end annotation

    move-object/from16 v4, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p4

    .line 1
    iget-object v11, v4, Landroidx/fragment/app/x$h;->a:Landroidx/fragment/app/Fragment;

    .line 2
    iget-object v12, v4, Landroidx/fragment/app/x$h;->d:Landroidx/fragment/app/Fragment;

    .line 3
    invoke-static {v12, v11}, Landroidx/fragment/app/x;->j(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/z;

    move-result-object v13

    if-nez v13, :cond_11

    return-void

    .line 4
    :cond_11
    iget-boolean v14, v4, Landroidx/fragment/app/x$h;->b:Z

    .line 5
    iget-boolean v0, v4, Landroidx/fragment/app/x$h;->e:Z

    .line 6
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-static {v13, v11, v14}, Landroidx/fragment/app/x;->r(Landroidx/fragment/app/z;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v7

    .line 9
    invoke-static {v13, v12, v0}, Landroidx/fragment/app/x;->s(Landroidx/fragment/app/z;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p1

    move-object v5, v8

    move-object/from16 p1, v6

    move-object v6, v15

    move-object/from16 v16, v7

    move-object v10, v8

    move-object/from16 v8, p1

    .line 10
    invoke-static/range {v0 .. v8}, Landroidx/fragment/app/x;->m(Landroidx/fragment/app/z;Landroid/view/ViewGroup;Landroid/view/View;Lc/d/a;Landroidx/fragment/app/x$h;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v6, v16

    if-nez v6, :cond_48

    if-nez v8, :cond_48

    move-object/from16 v7, p1

    if-nez v7, :cond_4a

    return-void

    :cond_48
    move-object/from16 v7, p1

    .line 11
    :cond_4a
    invoke-static {v13, v7, v12, v10, v9}, Landroidx/fragment/app/x;->k(Landroidx/fragment/app/z;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v5

    .line 12
    invoke-static {v13, v6, v11, v15, v9}, Landroidx/fragment/app/x;->k(Landroidx/fragment/app/z;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v9

    const/4 v0, 0x4

    .line 13
    invoke-static {v9, v0}, Landroidx/fragment/app/x;->B(Ljava/util/ArrayList;I)V

    move-object v0, v13

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v11

    move-object v11, v5

    move v5, v14

    .line 14
    invoke-static/range {v0 .. v5}, Landroidx/fragment/app/x;->v(Landroidx/fragment/app/z;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v14

    if-eqz v12, :cond_83

    if-eqz v11, :cond_83

    .line 15
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_71

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_83

    .line 16
    :cond_71
    new-instance v0, Lc/g/g/b;

    invoke-direct {v0}, Lc/g/g/b;-><init>()V

    move-object/from16 v1, p4

    .line 17
    invoke-interface {v1, v12, v0}, Landroidx/fragment/app/x$g;->b(Landroidx/fragment/app/Fragment;Lc/g/g/b;)V

    .line 18
    new-instance v2, Landroidx/fragment/app/x$a;

    invoke-direct {v2, v1, v12, v0}, Landroidx/fragment/app/x$a;-><init>(Landroidx/fragment/app/x$g;Landroidx/fragment/app/Fragment;Lc/g/g/b;)V

    invoke-virtual {v13, v12, v14, v0, v2}, Landroidx/fragment/app/z;->w(Landroidx/fragment/app/Fragment;Ljava/lang/Object;Lc/g/g/b;Ljava/lang/Runnable;)V

    :cond_83
    if-eqz v14, :cond_ab

    .line 19
    invoke-static {v13, v7, v12, v11}, Landroidx/fragment/app/x;->w(Landroidx/fragment/app/z;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;)V

    .line 20
    invoke-virtual {v13, v15}, Landroidx/fragment/app/z;->o(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v12

    move-object v0, v13

    move-object v1, v14

    move-object v2, v6

    move-object v3, v9

    move-object v4, v7

    move-object v5, v11

    move-object v6, v8

    move-object v7, v15

    .line 21
    invoke-virtual/range {v0 .. v7}, Landroidx/fragment/app/z;->t(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    move-object/from16 v1, p0

    .line 22
    invoke-virtual {v13, v1, v14}, Landroidx/fragment/app/z;->c(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    move-object v2, v10

    move-object v3, v15

    move-object v4, v12

    move-object/from16 v5, p3

    .line 23
    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/z;->y(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    const/4 v0, 0x0

    .line 24
    invoke-static {v9, v0}, Landroidx/fragment/app/x;->B(Ljava/util/ArrayList;I)V

    .line 25
    invoke-virtual {v13, v8, v10, v15}, Landroidx/fragment/app/z;->A(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_ab
    return-void
.end method

.method private static p(Landroidx/fragment/app/x$h;Landroid/util/SparseArray;I)Landroidx/fragment/app/x$h;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/x$h;",
            "Landroid/util/SparseArray<",
            "Landroidx/fragment/app/x$h;",
            ">;I)",
            "Landroidx/fragment/app/x$h;"
        }
    .end annotation

    if-nez p0, :cond_a

    .line 1
    new-instance p0, Landroidx/fragment/app/x$h;

    invoke-direct {p0}, Landroidx/fragment/app/x$h;-><init>()V

    .line 2
    invoke-virtual {p1, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_a
    return-object p0
.end method

.method static q(Lc/d/a;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc/d/g;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_1b

    .line 2
    invoke-virtual {p0, v1}, Lc/d/g;->m(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 3
    invoke-virtual {p0, v1}, Lc/d/g;->i(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1b
    const/4 p0, 0x0

    return-object p0
.end method

.method private static r(Landroidx/fragment/app/z;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .registers 3

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    if-eqz p2, :cond_b

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->c0()Ljava/lang/Object;

    move-result-object p1

    goto :goto_f

    .line 2
    :cond_b
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->M()Ljava/lang/Object;

    move-result-object p1

    .line 3
    :goto_f
    invoke-virtual {p0, p1}, Landroidx/fragment/app/z;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static s(Landroidx/fragment/app/z;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .registers 3

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    if-eqz p2, :cond_b

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->e0()Ljava/lang/Object;

    move-result-object p1

    goto :goto_f

    .line 2
    :cond_b
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->P()Ljava/lang/Object;

    move-result-object p1

    .line 3
    :goto_f
    invoke-virtual {p0, p1}, Landroidx/fragment/app/z;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static t(Lc/d/a;Landroidx/fragment/app/x$h;Ljava/lang/Object;Z)Landroid/view/View;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroidx/fragment/app/x$h;",
            "Ljava/lang/Object;",
            "Z)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Landroidx/fragment/app/x$h;->c:Landroidx/fragment/app/a;

    if-eqz p2, :cond_2b

    if-eqz p0, :cond_2b

    .line 2
    iget-object p2, p1, Landroidx/fragment/app/w;->n:Ljava/util/ArrayList;

    if-eqz p2, :cond_2b

    .line 3
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2b

    const/4 p2, 0x0

    if-eqz p3, :cond_1c

    .line 4
    iget-object p1, p1, Landroidx/fragment/app/w;->n:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_24

    .line 5
    :cond_1c
    iget-object p1, p1, Landroidx/fragment/app/w;->o:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 6
    :goto_24
    invoke-virtual {p0, p1}, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    :cond_2b
    const/4 p0, 0x0

    return-object p0
.end method

.method private static u(Landroidx/fragment/app/z;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .registers 4

    if-eqz p1, :cond_19

    if-nez p2, :cond_5

    goto :goto_19

    :cond_5
    if-eqz p3, :cond_c

    .line 1
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->g0()Ljava/lang/Object;

    move-result-object p1

    goto :goto_10

    .line 2
    :cond_c
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->f0()Ljava/lang/Object;

    move-result-object p1

    .line 3
    :goto_10
    invoke-virtual {p0, p1}, Landroidx/fragment/app/z;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Landroidx/fragment/app/z;->B(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_19
    :goto_19
    const/4 p0, 0x0

    return-object p0
.end method

.method private static v(Landroidx/fragment/app/z;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .registers 6

    if-eqz p1, :cond_12

    if-eqz p2, :cond_12

    if-eqz p4, :cond_12

    if-eqz p5, :cond_d

    .line 1
    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->F()Z

    move-result p4

    goto :goto_13

    .line 2
    :cond_d
    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->E()Z

    move-result p4

    goto :goto_13

    :cond_12
    const/4 p4, 0x1

    :goto_13
    if-eqz p4, :cond_1a

    .line 3
    invoke-virtual {p0, p2, p1, p3}, Landroidx/fragment/app/z;->n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1e

    .line 4
    :cond_1a
    invoke-virtual {p0, p2, p1, p3}, Landroidx/fragment/app/z;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_1e
    return-object p0
.end method

.method private static w(Landroidx/fragment/app/z;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/z;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_25

    if-eqz p1, :cond_25

    .line 1
    iget-boolean v0, p2, Landroidx/fragment/app/Fragment;->m:Z

    if-eqz v0, :cond_25

    iget-boolean v0, p2, Landroidx/fragment/app/Fragment;->A:Z

    if-eqz v0, :cond_25

    iget-boolean v0, p2, Landroidx/fragment/app/Fragment;->N:Z

    if-eqz v0, :cond_25

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p2, v0}, Landroidx/fragment/app/Fragment;->U1(Z)V

    .line 3
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->l0()Landroid/view/View;

    move-result-object v0

    .line 4
    invoke-virtual {p0, p1, v0, p3}, Landroidx/fragment/app/z;->r(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 5
    iget-object p0, p2, Landroidx/fragment/app/Fragment;->H:Landroid/view/ViewGroup;

    .line 6
    new-instance p1, Landroidx/fragment/app/x$b;

    invoke-direct {p1, p3}, Landroidx/fragment/app/x$b;-><init>(Ljava/util/ArrayList;)V

    invoke-static {p0, p1}, Landroidx/core/view/t;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/t;

    :cond_25
    return-void
.end method

.method private static x()Landroidx/fragment/app/z;
    .registers 3

    :try_start_0
    const-string v0, "c.p.e"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/z;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    return-object v0

    :catch_16
    const/4 v0, 0x0

    return-object v0
.end method

.method static y(Lc/d/a;Lc/d/a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lc/d/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc/d/g;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_1a

    .line 2
    invoke-virtual {p0, v0}, Lc/d/g;->m(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v1}, Lc/d/g;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 4
    invoke-virtual {p0, v0}, Lc/d/g;->k(I)Ljava/lang/Object;

    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_1a
    return-void
.end method

.method private static z(Landroidx/fragment/app/z;Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/z;",
            "Landroid/view/ViewGroup;",
            "Landroidx/fragment/app/Fragment;",
            "Landroid/view/View;",
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
    new-instance v9, Landroidx/fragment/app/x$d;

    move-object v0, v9

    move-object v1, p5

    move-object v2, p0

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p8

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroidx/fragment/app/x$d;-><init>(Ljava/lang/Object;Landroidx/fragment/app/z;Landroid/view/View;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V

    move-object v0, p1

    invoke-static {p1, v9}, Landroidx/core/view/t;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/t;

    return-void
.end method
