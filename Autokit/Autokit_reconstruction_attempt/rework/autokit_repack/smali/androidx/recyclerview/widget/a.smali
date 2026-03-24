.class Landroidx/recyclerview/widget/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/h$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/a$a;,
        Landroidx/recyclerview/widget/a$b;
    }
.end annotation


# instance fields
.field private a:Lc/g/j/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/g/j/e<",
            "Landroidx/recyclerview/widget/a$b;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/a$b;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/a$b;",
            ">;"
        }
    .end annotation
.end field

.field final d:Landroidx/recyclerview/widget/a$a;

.field e:Ljava/lang/Runnable;

.field final f:Z

.field final g:Landroidx/recyclerview/widget/h;

.field private h:I


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/a$a;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/a;-><init>(Landroidx/recyclerview/widget/a$a;Z)V

    return-void
.end method

.method constructor <init>(Landroidx/recyclerview/widget/a$a;Z)V
    .registers 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lc/g/j/f;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Lc/g/j/f;-><init>(I)V

    iput-object v0, p0, Landroidx/recyclerview/widget/a;->a:Lc/g/j/e;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Landroidx/recyclerview/widget/a;->h:I

    .line 7
    iput-object p1, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;

    .line 8
    iput-boolean p2, p0, Landroidx/recyclerview/widget/a;->f:Z

    .line 9
    new-instance p1, Landroidx/recyclerview/widget/h;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/h;-><init>(Landroidx/recyclerview/widget/h$a;)V

    iput-object p1, p0, Landroidx/recyclerview/widget/a;->g:Landroidx/recyclerview/widget/h;

    return-void
.end method

.method private c(Landroidx/recyclerview/widget/a$b;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/a;->r(Landroidx/recyclerview/widget/a$b;)V

    return-void
.end method

.method private d(Landroidx/recyclerview/widget/a$b;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/a;->r(Landroidx/recyclerview/widget/a$b;)V

    return-void
.end method

.method private f(Landroidx/recyclerview/widget/a$b;)V
    .registers 12

    .line 1
    iget v0, p1, Landroidx/recyclerview/widget/a$b;->b:I

    .line 2
    iget v1, p1, Landroidx/recyclerview/widget/a$b;->d:I

    add-int/2addr v1, v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    move v4, v0

    const/4 v5, 0x0

    :goto_9
    const/4 v6, 0x0

    const/4 v7, 0x2

    if-ge v4, v1, :cond_43

    .line 3
    iget-object v8, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;

    invoke-interface {v8, v4}, Landroidx/recyclerview/widget/a$a;->c(I)Landroidx/recyclerview/widget/RecyclerView$c0;

    move-result-object v8

    const/4 v9, 0x1

    if-nez v8, :cond_2b

    .line 4
    invoke-direct {p0, v4}, Landroidx/recyclerview/widget/a;->h(I)Z

    move-result v8

    if-eqz v8, :cond_1d

    goto :goto_2b

    :cond_1d
    if-ne v3, v9, :cond_28

    .line 5
    invoke-virtual {p0, v7, v0, v5, v6}, Landroidx/recyclerview/widget/a;->b(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;

    move-result-object v3

    .line 6
    invoke-direct {p0, v3}, Landroidx/recyclerview/widget/a;->r(Landroidx/recyclerview/widget/a$b;)V

    const/4 v3, 0x1

    goto :goto_29

    :cond_28
    const/4 v3, 0x0

    :goto_29
    const/4 v6, 0x0

    goto :goto_38

    :cond_2b
    :goto_2b
    if-nez v3, :cond_36

    .line 7
    invoke-virtual {p0, v7, v0, v5, v6}, Landroidx/recyclerview/widget/a;->b(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;

    move-result-object v3

    .line 8
    invoke-direct {p0, v3}, Landroidx/recyclerview/widget/a;->k(Landroidx/recyclerview/widget/a$b;)V

    const/4 v3, 0x1

    goto :goto_37

    :cond_36
    const/4 v3, 0x0

    :goto_37
    const/4 v6, 0x1

    :goto_38
    if-eqz v3, :cond_3e

    sub-int/2addr v4, v5

    sub-int/2addr v1, v5

    const/4 v5, 0x1

    goto :goto_40

    :cond_3e
    add-int/lit8 v5, v5, 0x1

    :goto_40
    add-int/2addr v4, v9

    move v3, v6

    goto :goto_9

    .line 9
    :cond_43
    iget v1, p1, Landroidx/recyclerview/widget/a$b;->d:I

    if-eq v5, v1, :cond_4e

    .line 10
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/a;->a(Landroidx/recyclerview/widget/a$b;)V

    .line 11
    invoke-virtual {p0, v7, v0, v5, v6}, Landroidx/recyclerview/widget/a;->b(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;

    move-result-object p1

    :cond_4e
    if-nez v3, :cond_54

    .line 12
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/a;->k(Landroidx/recyclerview/widget/a$b;)V

    goto :goto_57

    .line 13
    :cond_54
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/a;->r(Landroidx/recyclerview/widget/a$b;)V

    :goto_57
    return-void
.end method

.method private g(Landroidx/recyclerview/widget/a$b;)V
    .registers 11

    .line 1
    iget v0, p1, Landroidx/recyclerview/widget/a$b;->b:I

    .line 2
    iget v1, p1, Landroidx/recyclerview/widget/a$b;->d:I

    add-int/2addr v1, v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    move v3, v0

    const/4 v4, -0x1

    const/4 v5, 0x0

    :goto_a
    const/4 v6, 0x4

    if-ge v0, v1, :cond_3e

    .line 3
    iget-object v7, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;

    invoke-interface {v7, v0}, Landroidx/recyclerview/widget/a$a;->c(I)Landroidx/recyclerview/widget/RecyclerView$c0;

    move-result-object v7

    const/4 v8, 0x1

    if-nez v7, :cond_2c

    .line 4
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/a;->h(I)Z

    move-result v7

    if-eqz v7, :cond_1d

    goto :goto_2c

    :cond_1d
    if-ne v4, v8, :cond_2a

    .line 5
    iget-object v4, p1, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;

    invoke-virtual {p0, v6, v3, v5, v4}, Landroidx/recyclerview/widget/a;->b(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;

    move-result-object v3

    .line 6
    invoke-direct {p0, v3}, Landroidx/recyclerview/widget/a;->r(Landroidx/recyclerview/widget/a$b;)V

    move v3, v0

    const/4 v5, 0x0

    :cond_2a
    const/4 v4, 0x0

    goto :goto_3a

    :cond_2c
    :goto_2c
    if-nez v4, :cond_39

    .line 7
    iget-object v4, p1, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;

    invoke-virtual {p0, v6, v3, v5, v4}, Landroidx/recyclerview/widget/a;->b(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;

    move-result-object v3

    .line 8
    invoke-direct {p0, v3}, Landroidx/recyclerview/widget/a;->k(Landroidx/recyclerview/widget/a$b;)V

    move v3, v0

    const/4 v5, 0x0

    :cond_39
    const/4 v4, 0x1

    :goto_3a
    add-int/2addr v5, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 9
    :cond_3e
    iget v0, p1, Landroidx/recyclerview/widget/a$b;->d:I

    if-eq v5, v0, :cond_4b

    .line 10
    iget-object v0, p1, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;

    .line 11
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/a;->a(Landroidx/recyclerview/widget/a$b;)V

    .line 12
    invoke-virtual {p0, v6, v3, v5, v0}, Landroidx/recyclerview/widget/a;->b(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;

    move-result-object p1

    :cond_4b
    if-nez v4, :cond_51

    .line 13
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/a;->k(Landroidx/recyclerview/widget/a$b;)V

    goto :goto_54

    .line 14
    :cond_51
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/a;->r(Landroidx/recyclerview/widget/a$b;)V

    :goto_54
    return-void
.end method

.method private h(I)Z
    .registers 9

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_3c

    .line 2
    iget-object v3, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/a$b;

    .line 3
    iget v4, v3, Landroidx/recyclerview/widget/a$b;->a:I

    const/16 v5, 0x8

    const/4 v6, 0x1

    if-ne v4, v5, :cond_24

    .line 4
    iget v3, v3, Landroidx/recyclerview/widget/a$b;->d:I

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v3, v4}, Landroidx/recyclerview/widget/a;->n(II)I

    move-result v3

    if-ne v3, p1, :cond_39

    return v6

    :cond_24
    if-ne v4, v6, :cond_39

    .line 5
    iget v4, v3, Landroidx/recyclerview/widget/a$b;->b:I

    iget v3, v3, Landroidx/recyclerview/widget/a$b;->d:I

    add-int/2addr v3, v4

    :goto_2b
    if-ge v4, v3, :cond_39

    add-int/lit8 v5, v2, 0x1

    .line 6
    invoke-virtual {p0, v4, v5}, Landroidx/recyclerview/widget/a;->n(II)I

    move-result v5

    if-ne v5, p1, :cond_36

    return v6

    :cond_36
    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_3c
    return v1
.end method

.method private k(Landroidx/recyclerview/widget/a$b;)V
    .registers 14

    .line 1
    iget v0, p1, Landroidx/recyclerview/widget/a$b;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_87

    const/16 v2, 0x8

    if-eq v0, v2, :cond_87

    .line 2
    iget v2, p1, Landroidx/recyclerview/widget/a$b;->b:I

    invoke-direct {p0, v2, v0}, Landroidx/recyclerview/widget/a;->v(II)I

    move-result v0

    .line 3
    iget v2, p1, Landroidx/recyclerview/widget/a$b;->b:I

    .line 4
    iget v3, p1, Landroidx/recyclerview/widget/a$b;->a:I

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-eq v3, v4, :cond_33

    if-ne v3, v5, :cond_1c

    const/4 v3, 0x1

    goto :goto_34

    .line 5
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "op should be remove or update."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    const/4 v3, 0x0

    :goto_34
    const/4 v7, 0x1

    const/4 v8, 0x1

    .line 6
    :goto_36
    iget v9, p1, Landroidx/recyclerview/widget/a$b;->d:I

    if-ge v7, v9, :cond_73

    .line 7
    iget v9, p1, Landroidx/recyclerview/widget/a$b;->b:I

    mul-int v10, v3, v7

    add-int/2addr v9, v10

    .line 8
    iget v10, p1, Landroidx/recyclerview/widget/a$b;->a:I

    invoke-direct {p0, v9, v10}, Landroidx/recyclerview/widget/a;->v(II)I

    move-result v9

    .line 9
    iget v10, p1, Landroidx/recyclerview/widget/a$b;->a:I

    if-eq v10, v4, :cond_53

    if-eq v10, v5, :cond_4d

    :cond_4b
    const/4 v10, 0x0

    goto :goto_56

    :cond_4d
    add-int/lit8 v10, v0, 0x1

    if-ne v9, v10, :cond_4b

    :goto_51
    const/4 v10, 0x1

    goto :goto_56

    :cond_53
    if-ne v9, v0, :cond_4b

    goto :goto_51

    :goto_56
    if-eqz v10, :cond_5b

    add-int/lit8 v8, v8, 0x1

    goto :goto_70

    .line 10
    :cond_5b
    iget v10, p1, Landroidx/recyclerview/widget/a$b;->a:I

    iget-object v11, p1, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;

    invoke-virtual {p0, v10, v0, v8, v11}, Landroidx/recyclerview/widget/a;->b(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;

    move-result-object v0

    .line 11
    invoke-virtual {p0, v0, v2}, Landroidx/recyclerview/widget/a;->l(Landroidx/recyclerview/widget/a$b;I)V

    .line 12
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/a;->a(Landroidx/recyclerview/widget/a$b;)V

    .line 13
    iget v0, p1, Landroidx/recyclerview/widget/a$b;->a:I

    if-ne v0, v5, :cond_6e

    add-int/2addr v2, v8

    :cond_6e
    move v0, v9

    const/4 v8, 0x1

    :goto_70
    add-int/lit8 v7, v7, 0x1

    goto :goto_36

    .line 14
    :cond_73
    iget-object v1, p1, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;

    .line 15
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/a;->a(Landroidx/recyclerview/widget/a$b;)V

    if-lez v8, :cond_86

    .line 16
    iget p1, p1, Landroidx/recyclerview/widget/a$b;->a:I

    invoke-virtual {p0, p1, v0, v8, v1}, Landroidx/recyclerview/widget/a;->b(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;

    move-result-object p1

    .line 17
    invoke-virtual {p0, p1, v2}, Landroidx/recyclerview/widget/a;->l(Landroidx/recyclerview/widget/a$b;I)V

    .line 18
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/a;->a(Landroidx/recyclerview/widget/a$b;)V

    :cond_86
    return-void

    .line 19
    :cond_87
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "should not dispatch add or move for pre layout"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_90

    :goto_8f
    throw p1

    :goto_90
    goto :goto_8f
.end method

.method private r(Landroidx/recyclerview/widget/a$b;)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    iget v0, p1, Landroidx/recyclerview/widget/a$b;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_41

    const/4 v1, 0x4

    if-eq v0, v1, :cond_35

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1e

    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;

    iget v1, p1, Landroidx/recyclerview/widget/a$b;->b:I

    iget p1, p1, Landroidx/recyclerview/widget/a$b;->d:I

    invoke-interface {v0, v1, p1}, Landroidx/recyclerview/widget/a$a;->a(II)V

    goto :goto_54

    .line 4
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown update op type for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_35
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;

    iget v1, p1, Landroidx/recyclerview/widget/a$b;->b:I

    iget v2, p1, Landroidx/recyclerview/widget/a$b;->d:I

    iget-object p1, p1, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, p1}, Landroidx/recyclerview/widget/a$a;->h(IILjava/lang/Object;)V

    goto :goto_54

    .line 6
    :cond_41
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;

    iget v1, p1, Landroidx/recyclerview/widget/a$b;->b:I

    iget p1, p1, Landroidx/recyclerview/widget/a$b;->d:I

    invoke-interface {v0, v1, p1}, Landroidx/recyclerview/widget/a$a;->e(II)V

    goto :goto_54

    .line 7
    :cond_4b
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;

    iget v1, p1, Landroidx/recyclerview/widget/a$b;->b:I

    iget p1, p1, Landroidx/recyclerview/widget/a$b;->d:I

    invoke-interface {v0, v1, p1}, Landroidx/recyclerview/widget/a$a;->g(II)V

    :goto_54
    return-void
.end method

.method private v(II)I
    .registers 10

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    const/16 v2, 0x8

    if-ltz v0, :cond_8a

    .line 2
    iget-object v3, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/a$b;

    .line 3
    iget v4, v3, Landroidx/recyclerview/widget/a$b;->a:I

    const/4 v5, 0x2

    if-ne v4, v2, :cond_69

    .line 4
    iget v2, v3, Landroidx/recyclerview/widget/a$b;->b:I

    iget v4, v3, Landroidx/recyclerview/widget/a$b;->d:I

    if-ge v2, v4, :cond_20

    goto :goto_23

    :cond_20
    move v6, v4

    move v4, v2

    move v2, v6

    :goto_23
    if-lt p1, v2, :cond_4d

    if-gt p1, v4, :cond_4d

    .line 5
    iget v4, v3, Landroidx/recyclerview/widget/a$b;->b:I

    if-ne v2, v4, :cond_3d

    if-ne p2, v1, :cond_33

    .line 6
    iget v2, v3, Landroidx/recyclerview/widget/a$b;->d:I

    add-int/2addr v2, v1

    iput v2, v3, Landroidx/recyclerview/widget/a$b;->d:I

    goto :goto_3a

    :cond_33
    if-ne p2, v5, :cond_3a

    .line 7
    iget v2, v3, Landroidx/recyclerview/widget/a$b;->d:I

    sub-int/2addr v2, v1

    iput v2, v3, Landroidx/recyclerview/widget/a$b;->d:I

    :cond_3a
    :goto_3a
    add-int/lit8 p1, p1, 0x1

    goto :goto_86

    :cond_3d
    if-ne p2, v1, :cond_44

    add-int/lit8 v4, v4, 0x1

    .line 8
    iput v4, v3, Landroidx/recyclerview/widget/a$b;->b:I

    goto :goto_4a

    :cond_44
    if-ne p2, v5, :cond_4a

    add-int/lit8 v4, v4, -0x1

    .line 9
    iput v4, v3, Landroidx/recyclerview/widget/a$b;->b:I

    :cond_4a
    :goto_4a
    add-int/lit8 p1, p1, -0x1

    goto :goto_86

    .line 10
    :cond_4d
    iget v2, v3, Landroidx/recyclerview/widget/a$b;->b:I

    if-ge p1, v2, :cond_86

    if-ne p2, v1, :cond_5d

    add-int/lit8 v2, v2, 0x1

    .line 11
    iput v2, v3, Landroidx/recyclerview/widget/a$b;->b:I

    .line 12
    iget v2, v3, Landroidx/recyclerview/widget/a$b;->d:I

    add-int/2addr v2, v1

    iput v2, v3, Landroidx/recyclerview/widget/a$b;->d:I

    goto :goto_86

    :cond_5d
    if-ne p2, v5, :cond_86

    add-int/lit8 v2, v2, -0x1

    .line 13
    iput v2, v3, Landroidx/recyclerview/widget/a$b;->b:I

    .line 14
    iget v2, v3, Landroidx/recyclerview/widget/a$b;->d:I

    sub-int/2addr v2, v1

    iput v2, v3, Landroidx/recyclerview/widget/a$b;->d:I

    goto :goto_86

    .line 15
    :cond_69
    iget v2, v3, Landroidx/recyclerview/widget/a$b;->b:I

    if-gt v2, p1, :cond_79

    if-ne v4, v1, :cond_73

    .line 16
    iget v2, v3, Landroidx/recyclerview/widget/a$b;->d:I

    sub-int/2addr p1, v2

    goto :goto_86

    :cond_73
    if-ne v4, v5, :cond_86

    .line 17
    iget v2, v3, Landroidx/recyclerview/widget/a$b;->d:I

    add-int/2addr p1, v2

    goto :goto_86

    :cond_79
    if-ne p2, v1, :cond_80

    add-int/lit8 v2, v2, 0x1

    .line 18
    iput v2, v3, Landroidx/recyclerview/widget/a$b;->b:I

    goto :goto_86

    :cond_80
    if-ne p2, v5, :cond_86

    add-int/lit8 v2, v2, -0x1

    .line 19
    iput v2, v3, Landroidx/recyclerview/widget/a$b;->b:I

    :cond_86
    :goto_86
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_8

    .line 20
    :cond_8a
    iget-object p2, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v1

    :goto_91
    if-ltz p2, :cond_bf

    .line 21
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/a$b;

    .line 22
    iget v1, v0, Landroidx/recyclerview/widget/a$b;->a:I

    if-ne v1, v2, :cond_b0

    .line 23
    iget v1, v0, Landroidx/recyclerview/widget/a$b;->d:I

    iget v3, v0, Landroidx/recyclerview/widget/a$b;->b:I

    if-eq v1, v3, :cond_a7

    if-gez v1, :cond_bc

    .line 24
    :cond_a7
    iget-object v1, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 25
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/a;->a(Landroidx/recyclerview/widget/a$b;)V

    goto :goto_bc

    .line 26
    :cond_b0
    iget v1, v0, Landroidx/recyclerview/widget/a$b;->d:I

    if-gtz v1, :cond_bc

    .line 27
    iget-object v1, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 28
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/a;->a(Landroidx/recyclerview/widget/a$b;)V

    :cond_bc
    :goto_bc
    add-int/lit8 p2, p2, -0x1

    goto :goto_91

    :cond_bf
    return p1
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/a$b;)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/a;->f:Z

    if-nez v0, :cond_c

    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->a:Lc/g/j/e;

    invoke-interface {v0, p1}, Lc/g/j/e;->a(Ljava/lang/Object;)Z

    :cond_c
    return-void
.end method

.method public b(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->a:Lc/g/j/e;

    invoke-interface {v0}, Lc/g/j/e;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/a$b;

    if-nez v0, :cond_10

    .line 2
    new-instance v0, Landroidx/recyclerview/widget/a$b;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/a$b;-><init>(IIILjava/lang/Object;)V

    goto :goto_18

    .line 3
    :cond_10
    iput p1, v0, Landroidx/recyclerview/widget/a$b;->a:I

    .line 4
    iput p2, v0, Landroidx/recyclerview/widget/a$b;->b:I

    .line 5
    iput p3, v0, Landroidx/recyclerview/widget/a$b;->d:I

    .line 6
    iput-object p4, v0, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;

    :goto_18
    return-object v0
.end method

.method public e(I)I
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_47

    .line 2
    iget-object v2, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/a$b;

    .line 3
    iget v3, v2, Landroidx/recyclerview/widget/a$b;->a:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3d

    const/4 v4, 0x2

    if-eq v3, v4, :cond_30

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1e

    goto :goto_44

    .line 4
    :cond_1e
    iget v3, v2, Landroidx/recyclerview/widget/a$b;->b:I

    if-ne v3, p1, :cond_25

    .line 5
    iget p1, v2, Landroidx/recyclerview/widget/a$b;->d:I

    goto :goto_44

    :cond_25
    if-ge v3, p1, :cond_29

    add-int/lit8 p1, p1, -0x1

    .line 6
    :cond_29
    iget v2, v2, Landroidx/recyclerview/widget/a$b;->d:I

    if-gt v2, p1, :cond_44

    add-int/lit8 p1, p1, 0x1

    goto :goto_44

    .line 7
    :cond_30
    iget v3, v2, Landroidx/recyclerview/widget/a$b;->b:I

    if-gt v3, p1, :cond_44

    .line 8
    iget v2, v2, Landroidx/recyclerview/widget/a$b;->d:I

    add-int/2addr v3, v2

    if-le v3, p1, :cond_3b

    const/4 p1, -0x1

    return p1

    :cond_3b
    sub-int/2addr p1, v2

    goto :goto_44

    .line 9
    :cond_3d
    iget v3, v2, Landroidx/recyclerview/widget/a$b;->b:I

    if-gt v3, p1, :cond_44

    .line 10
    iget v2, v2, Landroidx/recyclerview/widget/a$b;->d:I

    add-int/2addr p1, v2

    :cond_44
    :goto_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_47
    return p1
.end method

.method i()V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_1a

    .line 2
    iget-object v3, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;

    iget-object v4, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/a$b;

    invoke-interface {v3, v4}, Landroidx/recyclerview/widget/a$a;->b(Landroidx/recyclerview/widget/a$b;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 3
    :cond_1a
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/a;->t(Ljava/util/List;)V

    .line 4
    iput v1, p0, Landroidx/recyclerview/widget/a;->h:I

    return-void
.end method

.method j()V
    .registers 8

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->i()V

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v0, :cond_6c

    .line 3
    iget-object v3, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/a$b;

    .line 4
    iget v4, v3, Landroidx/recyclerview/widget/a$b;->a:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_54

    const/4 v5, 0x2

    if-eq v4, v5, :cond_45

    const/4 v5, 0x4

    if-eq v4, v5, :cond_34

    const/16 v5, 0x8

    if-eq v4, v5, :cond_25

    goto :goto_62

    .line 5
    :cond_25
    iget-object v4, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;

    invoke-interface {v4, v3}, Landroidx/recyclerview/widget/a$a;->b(Landroidx/recyclerview/widget/a$b;)V

    .line 6
    iget-object v4, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;

    iget v5, v3, Landroidx/recyclerview/widget/a$b;->b:I

    iget v3, v3, Landroidx/recyclerview/widget/a$b;->d:I

    invoke-interface {v4, v5, v3}, Landroidx/recyclerview/widget/a$a;->a(II)V

    goto :goto_62

    .line 7
    :cond_34
    iget-object v4, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;

    invoke-interface {v4, v3}, Landroidx/recyclerview/widget/a$a;->b(Landroidx/recyclerview/widget/a$b;)V

    .line 8
    iget-object v4, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;

    iget v5, v3, Landroidx/recyclerview/widget/a$b;->b:I

    iget v6, v3, Landroidx/recyclerview/widget/a$b;->d:I

    iget-object v3, v3, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;

    invoke-interface {v4, v5, v6, v3}, Landroidx/recyclerview/widget/a$a;->h(IILjava/lang/Object;)V

    goto :goto_62

    .line 9
    :cond_45
    iget-object v4, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;

    invoke-interface {v4, v3}, Landroidx/recyclerview/widget/a$a;->b(Landroidx/recyclerview/widget/a$b;)V

    .line 10
    iget-object v4, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;

    iget v5, v3, Landroidx/recyclerview/widget/a$b;->b:I

    iget v3, v3, Landroidx/recyclerview/widget/a$b;->d:I

    invoke-interface {v4, v5, v3}, Landroidx/recyclerview/widget/a$a;->d(II)V

    goto :goto_62

    .line 11
    :cond_54
    iget-object v4, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;

    invoke-interface {v4, v3}, Landroidx/recyclerview/widget/a$a;->b(Landroidx/recyclerview/widget/a$b;)V

    .line 12
    iget-object v4, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;

    iget v5, v3, Landroidx/recyclerview/widget/a$b;->b:I

    iget v3, v3, Landroidx/recyclerview/widget/a$b;->d:I

    invoke-interface {v4, v5, v3}, Landroidx/recyclerview/widget/a$a;->g(II)V

    .line 13
    :goto_62
    iget-object v3, p0, Landroidx/recyclerview/widget/a;->e:Ljava/lang/Runnable;

    if-eqz v3, :cond_69

    .line 14
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    :cond_69
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 15
    :cond_6c
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/a;->t(Ljava/util/List;)V

    .line 16
    iput v1, p0, Landroidx/recyclerview/widget/a;->h:I

    return-void
.end method

.method l(Landroidx/recyclerview/widget/a$b;I)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;

    invoke-interface {v0, p1}, Landroidx/recyclerview/widget/a$a;->f(Landroidx/recyclerview/widget/a$b;)V

    .line 2
    iget v0, p1, Landroidx/recyclerview/widget/a$b;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1f

    const/4 v1, 0x4

    if-ne v0, v1, :cond_17

    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;

    iget v1, p1, Landroidx/recyclerview/widget/a$b;->d:I

    iget-object p1, p1, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;

    invoke-interface {v0, p2, v1, p1}, Landroidx/recyclerview/widget/a$a;->h(IILjava/lang/Object;)V

    goto :goto_26

    .line 4
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "only remove and update ops can be dispatched in first pass"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1f
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;

    iget p1, p1, Landroidx/recyclerview/widget/a$b;->d:I

    invoke-interface {v0, p2, p1}, Landroidx/recyclerview/widget/a$a;->d(II)V

    :goto_26
    return-void
.end method

.method m(I)I
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/a;->n(II)I

    move-result p1

    return p1
.end method

.method n(II)I
    .registers 8

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_6
    if-ge p2, v0, :cond_41

    .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/a$b;

    .line 3
    iget v2, v1, Landroidx/recyclerview/widget/a$b;->a:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_28

    .line 4
    iget v2, v1, Landroidx/recyclerview/widget/a$b;->b:I

    if-ne v2, p1, :cond_1d

    .line 5
    iget p1, v1, Landroidx/recyclerview/widget/a$b;->d:I

    goto :goto_3e

    :cond_1d
    if-ge v2, p1, :cond_21

    add-int/lit8 p1, p1, -0x1

    .line 6
    :cond_21
    iget v1, v1, Landroidx/recyclerview/widget/a$b;->d:I

    if-gt v1, p1, :cond_3e

    add-int/lit8 p1, p1, 0x1

    goto :goto_3e

    .line 7
    :cond_28
    iget v3, v1, Landroidx/recyclerview/widget/a$b;->b:I

    if-gt v3, p1, :cond_3e

    const/4 v4, 0x2

    if-ne v2, v4, :cond_38

    .line 8
    iget v1, v1, Landroidx/recyclerview/widget/a$b;->d:I

    add-int/2addr v3, v1

    if-ge p1, v3, :cond_36

    const/4 p1, -0x1

    return p1

    :cond_36
    sub-int/2addr p1, v1

    goto :goto_3e

    :cond_38
    const/4 v3, 0x1

    if-ne v2, v3, :cond_3e

    .line 9
    iget v1, v1, Landroidx/recyclerview/widget/a$b;->d:I

    add-int/2addr p1, v1

    :cond_3e
    :goto_3e
    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    :cond_41
    return p1
.end method

.method o(I)Z
    .registers 3

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/a;->h:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    return p1
.end method

.method p()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method q()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method s()V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->g:Landroidx/recyclerview/widget/h;

    iget-object v1, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/h;->b(Ljava/util/List;)V

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_41

    .line 3
    iget-object v2, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/a$b;

    .line 4
    iget v3, v2, Landroidx/recyclerview/widget/a$b;->a:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_34

    const/4 v4, 0x2

    if-eq v3, v4, :cond_30

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2c

    const/16 v4, 0x8

    if-eq v3, v4, :cond_28

    goto :goto_37

    .line 5
    :cond_28
    invoke-direct {p0, v2}, Landroidx/recyclerview/widget/a;->d(Landroidx/recyclerview/widget/a$b;)V

    goto :goto_37

    .line 6
    :cond_2c
    invoke-direct {p0, v2}, Landroidx/recyclerview/widget/a;->g(Landroidx/recyclerview/widget/a$b;)V

    goto :goto_37

    .line 7
    :cond_30
    invoke-direct {p0, v2}, Landroidx/recyclerview/widget/a;->f(Landroidx/recyclerview/widget/a$b;)V

    goto :goto_37

    .line 8
    :cond_34
    invoke-direct {p0, v2}, Landroidx/recyclerview/widget/a;->c(Landroidx/recyclerview/widget/a$b;)V

    .line 9
    :goto_37
    iget-object v2, p0, Landroidx/recyclerview/widget/a;->e:Ljava/lang/Runnable;

    if-eqz v2, :cond_3e

    .line 10
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 11
    :cond_41
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method t(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/a$b;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_13

    .line 2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/a$b;

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/a;->a(Landroidx/recyclerview/widget/a$b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 3
    :cond_13
    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method u()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/a;->t(Ljava/util/List;)V

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/a;->t(Ljava/util/List;)V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroidx/recyclerview/widget/a;->h:I

    return-void
.end method
