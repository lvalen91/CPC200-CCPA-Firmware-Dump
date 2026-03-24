.class public Lc/e/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/e/b/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/b/b$a;
    }
.end annotation


# instance fields
.field a:Lc/e/b/i;

.field b:F

.field c:Z

.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc/e/b/i;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lc/e/b/b$a;

.field f:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lc/e/b/b;->a:Lc/e/b/i;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lc/e/b/b;->b:F

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/e/b/b;->d:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lc/e/b/b;->f:Z

    return-void
.end method

.method public constructor <init>(Lc/e/b/c;)V
    .registers 3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lc/e/b/b;->a:Lc/e/b/i;

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lc/e/b/b;->b:F

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/e/b/b;->d:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lc/e/b/b;->f:Z

    .line 11
    new-instance v0, Lc/e/b/a;

    invoke-direct {v0, p0, p1}, Lc/e/b/a;-><init>(Lc/e/b/b;Lc/e/b/c;)V

    iput-object v0, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    return-void
.end method

.method private u(Lc/e/b/i;Lc/e/b/d;)Z
    .registers 3

    .line 1
    iget p1, p1, Lc/e/b/i;->m:I

    const/4 p2, 0x1

    if-gt p1, p2, :cond_6

    goto :goto_7

    :cond_6
    const/4 p2, 0x0

    :goto_7
    return p2
.end method

.method private w([ZLc/e/b/i;)Lc/e/b/i;
    .registers 12

    .line 1
    iget-object v0, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {v0}, Lc/e/b/b$a;->k()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_a
    if-ge v3, v0, :cond_39

    .line 2
    iget-object v5, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {v5, v3}, Lc/e/b/b$a;->a(I)F

    move-result v5

    cmpg-float v6, v5, v1

    if-gez v6, :cond_36

    .line 3
    iget-object v6, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {v6, v3}, Lc/e/b/b$a;->f(I)Lc/e/b/i;

    move-result-object v6

    if-eqz p1, :cond_24

    .line 4
    iget v7, v6, Lc/e/b/i;->c:I

    aget-boolean v7, p1, v7

    if-nez v7, :cond_36

    :cond_24
    if-eq v6, p2, :cond_36

    .line 5
    iget-object v7, v6, Lc/e/b/i;->j:Lc/e/b/i$a;

    sget-object v8, Lc/e/b/i$a;->d:Lc/e/b/i$a;

    if-eq v7, v8, :cond_30

    sget-object v8, Lc/e/b/i$a;->e:Lc/e/b/i$a;

    if-ne v7, v8, :cond_36

    :cond_30
    cmpg-float v7, v5, v4

    if-gez v7, :cond_36

    move v4, v5

    move-object v2, v6

    :cond_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_39
    return-object v2
.end method


# virtual methods
.method public A(Lc/e/b/d;Lc/e/b/i;Z)V
    .registers 7

    .line 1
    iget-boolean v0, p2, Lc/e/b/i;->g:Z

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    iget-object v0, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {v0, p2}, Lc/e/b/b$a;->g(Lc/e/b/i;)F

    move-result v0

    .line 3
    iget v1, p0, Lc/e/b/b;->b:F

    iget v2, p2, Lc/e/b/i;->f:F

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Lc/e/b/b;->b:F

    .line 4
    iget-object v0, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {v0, p2, p3}, Lc/e/b/b$a;->d(Lc/e/b/i;Z)F

    if-eqz p3, :cond_1e

    .line 5
    invoke-virtual {p2, p0}, Lc/e/b/i;->c(Lc/e/b/b;)V

    .line 6
    :cond_1e
    sget-boolean p3, Lc/e/b/d;->t:Z

    if-eqz p3, :cond_31

    if-eqz p2, :cond_31

    iget-object p2, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    .line 7
    invoke-interface {p2}, Lc/e/b/b$a;->k()I

    move-result p2

    if-nez p2, :cond_31

    const/4 p2, 0x1

    .line 8
    iput-boolean p2, p0, Lc/e/b/b;->f:Z

    .line 9
    iput-boolean p2, p1, Lc/e/b/d;->a:Z

    :cond_31
    return-void
.end method

.method public B(Lc/e/b/d;Lc/e/b/b;Z)V
    .registers 7

    .line 1
    iget-object v0, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {v0, p2, p3}, Lc/e/b/b$a;->b(Lc/e/b/b;Z)F

    move-result v0

    .line 2
    iget v1, p0, Lc/e/b/b;->b:F

    iget v2, p2, Lc/e/b/b;->b:F

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Lc/e/b/b;->b:F

    if-eqz p3, :cond_16

    .line 3
    iget-object p2, p2, Lc/e/b/b;->a:Lc/e/b/i;

    invoke-virtual {p2, p0}, Lc/e/b/i;->c(Lc/e/b/b;)V

    .line 4
    :cond_16
    sget-boolean p2, Lc/e/b/d;->t:Z

    if-eqz p2, :cond_2b

    iget-object p2, p0, Lc/e/b/b;->a:Lc/e/b/i;

    if-eqz p2, :cond_2b

    iget-object p2, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    .line 5
    invoke-interface {p2}, Lc/e/b/b$a;->k()I

    move-result p2

    if-nez p2, :cond_2b

    const/4 p2, 0x1

    .line 6
    iput-boolean p2, p0, Lc/e/b/b;->f:Z

    .line 7
    iput-boolean p2, p1, Lc/e/b/d;->a:Z

    :cond_2b
    return-void
.end method

.method public C(Lc/e/b/d;Lc/e/b/i;Z)V
    .registers 8

    .line 1
    iget-boolean v0, p2, Lc/e/b/i;->n:Z

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    iget-object v0, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {v0, p2}, Lc/e/b/b$a;->g(Lc/e/b/i;)F

    move-result v0

    .line 3
    iget v1, p0, Lc/e/b/b;->b:F

    iget v2, p2, Lc/e/b/i;->p:F

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Lc/e/b/b;->b:F

    .line 4
    iget-object v1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {v1, p2, p3}, Lc/e/b/b$a;->d(Lc/e/b/i;Z)F

    if-eqz p3, :cond_1e

    .line 5
    invoke-virtual {p2, p0}, Lc/e/b/i;->c(Lc/e/b/b;)V

    .line 6
    :cond_1e
    iget-object v1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    iget-object v2, p1, Lc/e/b/d;->n:Lc/e/b/c;

    iget-object v2, v2, Lc/e/b/c;->d:[Lc/e/b/i;

    iget v3, p2, Lc/e/b/i;->o:I

    aget-object v2, v2, v3

    invoke-interface {v1, v2, v0, p3}, Lc/e/b/b$a;->e(Lc/e/b/i;FZ)V

    .line 7
    sget-boolean p3, Lc/e/b/d;->t:Z

    if-eqz p3, :cond_3e

    if-eqz p2, :cond_3e

    iget-object p2, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    .line 8
    invoke-interface {p2}, Lc/e/b/b$a;->k()I

    move-result p2

    if-nez p2, :cond_3e

    const/4 p2, 0x1

    .line 9
    iput-boolean p2, p0, Lc/e/b/b;->f:Z

    .line 10
    iput-boolean p2, p1, Lc/e/b/d;->a:Z

    :cond_3e
    return-void
.end method

.method public D(Lc/e/b/d;)V
    .registers 10

    .line 1
    iget-object v0, p1, Lc/e/b/d;->g:[Lc/e/b/b;

    array-length v0, v0

    if-nez v0, :cond_6

    return-void

    :cond_6
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_8
    const/4 v2, 0x1

    if-nez v1, :cond_66

    .line 2
    iget-object v3, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {v3}, Lc/e/b/b$a;->k()I

    move-result v3

    const/4 v4, 0x0

    :goto_12
    if-ge v4, v3, :cond_2f

    .line 3
    iget-object v5, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {v5, v4}, Lc/e/b/b$a;->f(I)Lc/e/b/i;

    move-result-object v5

    .line 4
    iget v6, v5, Lc/e/b/i;->d:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_27

    iget-boolean v6, v5, Lc/e/b/i;->g:Z

    if-nez v6, :cond_27

    iget-boolean v6, v5, Lc/e/b/i;->n:Z

    if-eqz v6, :cond_2c

    .line 5
    :cond_27
    iget-object v6, p0, Lc/e/b/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2c
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 6
    :cond_2f
    iget-object v3, p0, Lc/e/b/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_64

    const/4 v4, 0x0

    :goto_38
    if-ge v4, v3, :cond_5e

    .line 7
    iget-object v5, p0, Lc/e/b/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/e/b/i;

    .line 8
    iget-boolean v6, v5, Lc/e/b/i;->g:Z

    if-eqz v6, :cond_4a

    .line 9
    invoke-virtual {p0, p1, v5, v2}, Lc/e/b/b;->A(Lc/e/b/d;Lc/e/b/i;Z)V

    goto :goto_5b

    .line 10
    :cond_4a
    iget-boolean v6, v5, Lc/e/b/i;->n:Z

    if-eqz v6, :cond_52

    .line 11
    invoke-virtual {p0, p1, v5, v2}, Lc/e/b/b;->C(Lc/e/b/d;Lc/e/b/i;Z)V

    goto :goto_5b

    .line 12
    :cond_52
    iget-object v6, p1, Lc/e/b/d;->g:[Lc/e/b/b;

    iget v5, v5, Lc/e/b/i;->d:I

    aget-object v5, v6, v5

    invoke-virtual {p0, p1, v5, v2}, Lc/e/b/b;->B(Lc/e/b/d;Lc/e/b/b;Z)V

    :goto_5b
    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    .line 13
    :cond_5e
    iget-object v2, p0, Lc/e/b/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_8

    :cond_64
    const/4 v1, 0x1

    goto :goto_8

    .line 14
    :cond_66
    sget-boolean v0, Lc/e/b/d;->t:Z

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lc/e/b/b;->a:Lc/e/b/i;

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    .line 15
    invoke-interface {v0}, Lc/e/b/b$a;->k()I

    move-result v0

    if-nez v0, :cond_7a

    .line 16
    iput-boolean v2, p0, Lc/e/b/b;->f:Z

    .line 17
    iput-boolean v2, p1, Lc/e/b/d;->a:Z

    :cond_7a
    return-void
.end method

.method public a(Lc/e/b/d$a;)V
    .registers 7

    .line 1
    instance-of v0, p1, Lc/e/b/b;

    if-eqz v0, :cond_2c

    .line 2
    check-cast p1, Lc/e/b/b;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lc/e/b/b;->a:Lc/e/b/i;

    .line 4
    iget-object v0, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {v0}, Lc/e/b/b$a;->clear()V

    const/4 v0, 0x0

    .line 5
    :goto_f
    iget-object v1, p1, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {v1}, Lc/e/b/b$a;->k()I

    move-result v1

    if-ge v0, v1, :cond_2c

    .line 6
    iget-object v1, p1, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {v1, v0}, Lc/e/b/b$a;->f(I)Lc/e/b/i;

    move-result-object v1

    .line 7
    iget-object v2, p1, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {v2, v0}, Lc/e/b/b$a;->a(I)F

    move-result v2

    .line 8
    iget-object v3, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    const/4 v4, 0x1

    invoke-interface {v3, v1, v2, v4}, Lc/e/b/b$a;->e(Lc/e/b/i;FZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_2c
    return-void
.end method

.method public b(Lc/e/b/i;)V
    .registers 5

    .line 1
    iget v0, p1, Lc/e/b/i;->e:I

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    if-ne v0, v2, :cond_8

    goto :goto_22

    :cond_8
    const/4 v2, 0x2

    if-ne v0, v2, :cond_e

    const/high16 v1, 0x447a0000    # 1000.0f

    goto :goto_22

    :cond_e
    const/4 v2, 0x3

    if-ne v0, v2, :cond_15

    const v1, 0x49742400    # 1000000.0f

    goto :goto_22

    :cond_15
    const/4 v2, 0x4

    if-ne v0, v2, :cond_1c

    const v1, 0x4e6e6b28    # 1.0E9f

    goto :goto_22

    :cond_1c
    const/4 v2, 0x5

    if-ne v0, v2, :cond_22

    const v1, 0x5368d4a5    # 1.0E12f

    .line 2
    :cond_22
    :goto_22
    iget-object v0, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {v0, p1, v1}, Lc/e/b/b$a;->c(Lc/e/b/i;F)V

    return-void
.end method

.method public c(Lc/e/b/d;[Z)Lc/e/b/i;
    .registers 3

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p2, p1}, Lc/e/b/b;->w([ZLc/e/b/i;)Lc/e/b/i;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .registers 2

    .line 1
    iget-object v0, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {v0}, Lc/e/b/b$a;->clear()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lc/e/b/b;->a:Lc/e/b/i;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lc/e/b/b;->b:F

    return-void
.end method

.method public d(Lc/e/b/d;I)Lc/e/b/b;
    .registers 6

    .line 1
    iget-object v0, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    const-string v1, "ep"

    invoke-virtual {p1, p2, v1}, Lc/e/b/d;->o(ILjava/lang/String;)Lc/e/b/i;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v0, v1, v2}, Lc/e/b/b$a;->c(Lc/e/b/i;F)V

    .line 2
    iget-object v0, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    const-string v1, "em"

    invoke-virtual {p1, p2, v1}, Lc/e/b/d;->o(ILjava/lang/String;)Lc/e/b/i;

    move-result-object p1

    const/high16 p2, -0x40800000    # -1.0f

    invoke-interface {v0, p1, p2}, Lc/e/b/b$a;->c(Lc/e/b/i;F)V

    return-object p0
.end method

.method e(Lc/e/b/i;I)Lc/e/b/b;
    .registers 4

    .line 1
    iget-object v0, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    int-to-float p2, p2

    invoke-interface {v0, p1, p2}, Lc/e/b/b$a;->c(Lc/e/b/i;F)V

    return-object p0
.end method

.method f(Lc/e/b/d;)Z
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Lc/e/b/b;->g(Lc/e/b/d;)Lc/e/b/i;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_9

    const/4 p1, 0x1

    goto :goto_d

    .line 2
    :cond_9
    invoke-virtual {p0, p1}, Lc/e/b/b;->x(Lc/e/b/i;)V

    const/4 p1, 0x0

    .line 3
    :goto_d
    iget-object v1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {v1}, Lc/e/b/b$a;->k()I

    move-result v1

    if-nez v1, :cond_17

    .line 4
    iput-boolean v0, p0, Lc/e/b/b;->f:Z

    :cond_17
    return p1
.end method

.method g(Lc/e/b/d;)Lc/e/b/i;
    .registers 16

    .line 1
    iget-object v0, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {v0}, Lc/e/b/b$a;->k()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v2, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_f
    if-ge v4, v0, :cond_6a

    .line 2
    iget-object v9, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {v9, v4}, Lc/e/b/b$a;->a(I)F

    move-result v9

    .line 3
    iget-object v10, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {v10, v4}, Lc/e/b/b$a;->f(I)Lc/e/b/i;

    move-result-object v10

    .line 4
    iget-object v11, v10, Lc/e/b/i;->j:Lc/e/b/i$a;

    sget-object v12, Lc/e/b/i$a;->b:Lc/e/b/i$a;

    const/4 v13, 0x1

    if-ne v11, v12, :cond_43

    if-nez v1, :cond_2e

    .line 5
    invoke-direct {p0, v10, p1}, Lc/e/b/b;->u(Lc/e/b/i;Lc/e/b/d;)Z

    move-result v1

    :goto_2a
    move v5, v1

    move v7, v9

    move-object v1, v10

    goto :goto_67

    :cond_2e
    cmpl-float v11, v7, v9

    if-lez v11, :cond_37

    .line 6
    invoke-direct {p0, v10, p1}, Lc/e/b/b;->u(Lc/e/b/i;Lc/e/b/d;)Z

    move-result v1

    goto :goto_2a

    :cond_37
    if-nez v5, :cond_67

    .line 7
    invoke-direct {p0, v10, p1}, Lc/e/b/b;->u(Lc/e/b/i;Lc/e/b/d;)Z

    move-result v11

    if-eqz v11, :cond_67

    move v7, v9

    move-object v1, v10

    const/4 v5, 0x1

    goto :goto_67

    :cond_43
    if-nez v1, :cond_67

    cmpg-float v11, v9, v3

    if-gez v11, :cond_67

    if-nez v2, :cond_53

    .line 8
    invoke-direct {p0, v10, p1}, Lc/e/b/b;->u(Lc/e/b/i;Lc/e/b/d;)Z

    move-result v2

    :goto_4f
    move v6, v2

    move v8, v9

    move-object v2, v10

    goto :goto_67

    :cond_53
    cmpl-float v11, v8, v9

    if-lez v11, :cond_5c

    .line 9
    invoke-direct {p0, v10, p1}, Lc/e/b/b;->u(Lc/e/b/i;Lc/e/b/d;)Z

    move-result v2

    goto :goto_4f

    :cond_5c
    if-nez v6, :cond_67

    .line 10
    invoke-direct {p0, v10, p1}, Lc/e/b/b;->u(Lc/e/b/i;Lc/e/b/d;)Z

    move-result v11

    if-eqz v11, :cond_67

    move v8, v9

    move-object v2, v10

    const/4 v6, 0x1

    :cond_67
    :goto_67
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_6a
    if-eqz v1, :cond_6d

    return-object v1

    :cond_6d
    return-object v2
.end method

.method public getKey()Lc/e/b/i;
    .registers 2

    .line 1
    iget-object v0, p0, Lc/e/b/b;->a:Lc/e/b/i;

    return-object v0
.end method

.method h(Lc/e/b/i;Lc/e/b/i;IFLc/e/b/i;Lc/e/b/i;I)Lc/e/b/b;
    .registers 13

    const/high16 v0, 0x3f800000    # 1.0f

    if-ne p2, p5, :cond_16

    .line 1
    iget-object p3, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {p3, p1, v0}, Lc/e/b/b$a;->c(Lc/e/b/i;F)V

    .line 2
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {p1, p6, v0}, Lc/e/b/b$a;->c(Lc/e/b/i;F)V

    .line 3
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    const/high16 p3, -0x40000000    # -2.0f

    invoke-interface {p1, p2, p3}, Lc/e/b/b$a;->c(Lc/e/b/i;F)V

    return-object p0

    :cond_16
    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, p4, v1

    if-nez v1, :cond_3c

    .line 4
    iget-object p4, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {p4, p1, v0}, Lc/e/b/b$a;->c(Lc/e/b/i;F)V

    .line 5
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {p1, p2, v2}, Lc/e/b/b$a;->c(Lc/e/b/i;F)V

    .line 6
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {p1, p5, v2}, Lc/e/b/b$a;->c(Lc/e/b/i;F)V

    .line 7
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {p1, p6, v0}, Lc/e/b/b$a;->c(Lc/e/b/i;F)V

    if-gtz p3, :cond_36

    if-lez p7, :cond_8e

    :cond_36
    neg-int p1, p3

    add-int/2addr p1, p7

    int-to-float p1, p1

    .line 8
    iput p1, p0, Lc/e/b/b;->b:F

    goto :goto_8e

    :cond_3c
    const/4 v1, 0x0

    cmpg-float v1, p4, v1

    if-gtz v1, :cond_4f

    .line 9
    iget-object p4, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {p4, p1, v2}, Lc/e/b/b$a;->c(Lc/e/b/i;F)V

    .line 10
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {p1, p2, v0}, Lc/e/b/b$a;->c(Lc/e/b/i;F)V

    int-to-float p1, p3

    .line 11
    iput p1, p0, Lc/e/b/b;->b:F

    goto :goto_8e

    :cond_4f
    cmpl-float v1, p4, v0

    if-ltz v1, :cond_62

    .line 12
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {p1, p6, v2}, Lc/e/b/b$a;->c(Lc/e/b/i;F)V

    .line 13
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {p1, p5, v0}, Lc/e/b/b$a;->c(Lc/e/b/i;F)V

    neg-int p1, p7

    int-to-float p1, p1

    .line 14
    iput p1, p0, Lc/e/b/b;->b:F

    goto :goto_8e

    .line 15
    :cond_62
    iget-object v1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    sub-float v3, v0, p4

    mul-float v4, v3, v0

    invoke-interface {v1, p1, v4}, Lc/e/b/b$a;->c(Lc/e/b/i;F)V

    .line 16
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    mul-float v1, v3, v2

    invoke-interface {p1, p2, v1}, Lc/e/b/b$a;->c(Lc/e/b/i;F)V

    .line 17
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    mul-float v2, v2, p4

    invoke-interface {p1, p5, v2}, Lc/e/b/b$a;->c(Lc/e/b/i;F)V

    .line 18
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    mul-float v0, v0, p4

    invoke-interface {p1, p6, v0}, Lc/e/b/b$a;->c(Lc/e/b/i;F)V

    if-gtz p3, :cond_84

    if-lez p7, :cond_8e

    :cond_84
    neg-int p1, p3

    int-to-float p1, p1

    mul-float p1, p1, v3

    int-to-float p2, p7

    mul-float p2, p2, p4

    add-float/2addr p1, p2

    .line 19
    iput p1, p0, Lc/e/b/b;->b:F

    :cond_8e
    :goto_8e
    return-object p0
.end method

.method i(Lc/e/b/i;I)Lc/e/b/b;
    .registers 3

    .line 1
    iput-object p1, p0, Lc/e/b/b;->a:Lc/e/b/i;

    int-to-float p2, p2

    .line 2
    iput p2, p1, Lc/e/b/i;->f:F

    .line 3
    iput p2, p0, Lc/e/b/b;->b:F

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lc/e/b/b;->f:Z

    return-object p0
.end method

.method public isEmpty()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lc/e/b/b;->a:Lc/e/b/i;

    if-nez v0, :cond_15

    iget v0, p0, Lc/e/b/b;->b:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_15

    iget-object v0, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {v0}, Lc/e/b/b$a;->k()I

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
.end method

.method j(Lc/e/b/i;Lc/e/b/i;F)Lc/e/b/b;
    .registers 6

    .line 1
    iget-object v0, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-interface {v0, p1, v1}, Lc/e/b/b$a;->c(Lc/e/b/i;F)V

    .line 2
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {p1, p2, p3}, Lc/e/b/b$a;->c(Lc/e/b/i;F)V

    return-object p0
.end method

.method public k(Lc/e/b/i;Lc/e/b/i;Lc/e/b/i;Lc/e/b/i;F)Lc/e/b/b;
    .registers 8

    .line 1
    iget-object v0, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-interface {v0, p1, v1}, Lc/e/b/b$a;->c(Lc/e/b/i;F)V

    .line 2
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p1, p2, v0}, Lc/e/b/b$a;->c(Lc/e/b/i;F)V

    .line 3
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {p1, p3, p5}, Lc/e/b/b$a;->c(Lc/e/b/i;F)V

    .line 4
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    neg-float p2, p5

    invoke-interface {p1, p4, p2}, Lc/e/b/b$a;->c(Lc/e/b/i;F)V

    return-object p0
.end method

.method public l(FFFLc/e/b/i;Lc/e/b/i;Lc/e/b/i;Lc/e/b/i;)Lc/e/b/b;
    .registers 12

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lc/e/b/b;->b:F

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, p2, v0

    if-eqz v3, :cond_47

    cmpl-float v3, p1, p3

    if-nez v3, :cond_10

    goto :goto_47

    :cond_10
    cmpl-float v3, p1, v0

    if-nez v3, :cond_1f

    .line 2
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {p1, p4, v2}, Lc/e/b/b$a;->c(Lc/e/b/i;F)V

    .line 3
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {p1, p5, v1}, Lc/e/b/b$a;->c(Lc/e/b/i;F)V

    goto :goto_5b

    :cond_1f
    cmpl-float v0, p3, v0

    if-nez v0, :cond_2e

    .line 4
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {p1, p6, v2}, Lc/e/b/b$a;->c(Lc/e/b/i;F)V

    .line 5
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {p1, p7, v1}, Lc/e/b/b$a;->c(Lc/e/b/i;F)V

    goto :goto_5b

    :cond_2e
    div-float/2addr p1, p2

    div-float/2addr p3, p2

    div-float/2addr p1, p3

    .line 6
    iget-object p2, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {p2, p4, v2}, Lc/e/b/b$a;->c(Lc/e/b/i;F)V

    .line 7
    iget-object p2, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {p2, p5, v1}, Lc/e/b/b$a;->c(Lc/e/b/i;F)V

    .line 8
    iget-object p2, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {p2, p7, p1}, Lc/e/b/b$a;->c(Lc/e/b/i;F)V

    .line 9
    iget-object p2, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    neg-float p1, p1

    invoke-interface {p2, p6, p1}, Lc/e/b/b$a;->c(Lc/e/b/i;F)V

    goto :goto_5b

    .line 10
    :cond_47
    :goto_47
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {p1, p4, v2}, Lc/e/b/b$a;->c(Lc/e/b/i;F)V

    .line 11
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {p1, p5, v1}, Lc/e/b/b$a;->c(Lc/e/b/i;F)V

    .line 12
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {p1, p7, v2}, Lc/e/b/b$a;->c(Lc/e/b/i;F)V

    .line 13
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {p1, p6, v1}, Lc/e/b/b$a;->c(Lc/e/b/i;F)V

    :goto_5b
    return-object p0
.end method

.method public m(Lc/e/b/i;I)Lc/e/b/b;
    .registers 4

    if-gez p2, :cond_f

    mul-int/lit8 p2, p2, -0x1

    int-to-float p2, p2

    .line 1
    iput p2, p0, Lc/e/b/b;->b:F

    .line 2
    iget-object p2, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p2, p1, v0}, Lc/e/b/b$a;->c(Lc/e/b/i;F)V

    goto :goto_19

    :cond_f
    int-to-float p2, p2

    .line 3
    iput p2, p0, Lc/e/b/b;->b:F

    .line 4
    iget-object p2, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    const/high16 v0, -0x40800000    # -1.0f

    invoke-interface {p2, p1, v0}, Lc/e/b/b$a;->c(Lc/e/b/i;F)V

    :goto_19
    return-object p0
.end method

.method public n(Lc/e/b/i;Lc/e/b/i;I)Lc/e/b/b;
    .registers 6

    const/4 v0, 0x0

    if-eqz p3, :cond_b

    if-gez p3, :cond_8

    mul-int/lit8 p3, p3, -0x1

    const/4 v0, 0x1

    :cond_8
    int-to-float p3, p3

    .line 1
    iput p3, p0, Lc/e/b/b;->b:F

    :cond_b
    const/high16 p3, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_1c

    .line 2
    iget-object v0, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {v0, p1, p3}, Lc/e/b/b$a;->c(Lc/e/b/i;F)V

    .line 3
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {p1, p2, v1}, Lc/e/b/b$a;->c(Lc/e/b/i;F)V

    goto :goto_26

    .line 4
    :cond_1c
    iget-object v0, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {v0, p1, v1}, Lc/e/b/b$a;->c(Lc/e/b/i;F)V

    .line 5
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {p1, p2, p3}, Lc/e/b/b$a;->c(Lc/e/b/i;F)V

    :goto_26
    return-object p0
.end method

.method public o(Lc/e/b/i;Lc/e/b/i;Lc/e/b/i;I)Lc/e/b/b;
    .registers 7

    const/4 v0, 0x0

    if-eqz p4, :cond_b

    if-gez p4, :cond_8

    mul-int/lit8 p4, p4, -0x1

    const/4 v0, 0x1

    :cond_8
    int-to-float p4, p4

    .line 1
    iput p4, p0, Lc/e/b/b;->b:F

    :cond_b
    const/high16 p4, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_21

    .line 2
    iget-object v0, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {v0, p1, p4}, Lc/e/b/b$a;->c(Lc/e/b/i;F)V

    .line 3
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {p1, p2, v1}, Lc/e/b/b$a;->c(Lc/e/b/i;F)V

    .line 4
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {p1, p3, v1}, Lc/e/b/b$a;->c(Lc/e/b/i;F)V

    goto :goto_30

    .line 5
    :cond_21
    iget-object v0, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {v0, p1, v1}, Lc/e/b/b$a;->c(Lc/e/b/i;F)V

    .line 6
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {p1, p2, p4}, Lc/e/b/b$a;->c(Lc/e/b/i;F)V

    .line 7
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {p1, p3, p4}, Lc/e/b/b$a;->c(Lc/e/b/i;F)V

    :goto_30
    return-object p0
.end method

.method public p(Lc/e/b/i;Lc/e/b/i;Lc/e/b/i;I)Lc/e/b/b;
    .registers 7

    const/4 v0, 0x0

    if-eqz p4, :cond_b

    if-gez p4, :cond_8

    mul-int/lit8 p4, p4, -0x1

    const/4 v0, 0x1

    :cond_8
    int-to-float p4, p4

    .line 1
    iput p4, p0, Lc/e/b/b;->b:F

    :cond_b
    const/high16 p4, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_21

    .line 2
    iget-object v0, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {v0, p1, p4}, Lc/e/b/b$a;->c(Lc/e/b/i;F)V

    .line 3
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {p1, p2, v1}, Lc/e/b/b$a;->c(Lc/e/b/i;F)V

    .line 4
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {p1, p3, p4}, Lc/e/b/b$a;->c(Lc/e/b/i;F)V

    goto :goto_30

    .line 5
    :cond_21
    iget-object v0, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {v0, p1, v1}, Lc/e/b/b$a;->c(Lc/e/b/i;F)V

    .line 6
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {p1, p2, p4}, Lc/e/b/b$a;->c(Lc/e/b/i;F)V

    .line 7
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {p1, p3, v1}, Lc/e/b/b$a;->c(Lc/e/b/i;F)V

    :goto_30
    return-object p0
.end method

.method public q(Lc/e/b/i;Lc/e/b/i;Lc/e/b/i;Lc/e/b/i;F)Lc/e/b/b;
    .registers 8

    .line 1
    iget-object v0, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-interface {v0, p3, v1}, Lc/e/b/b$a;->c(Lc/e/b/i;F)V

    .line 2
    iget-object p3, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {p3, p4, v1}, Lc/e/b/b$a;->c(Lc/e/b/i;F)V

    .line 3
    iget-object p3, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    const/high16 p4, -0x41000000    # -0.5f

    invoke-interface {p3, p1, p4}, Lc/e/b/b$a;->c(Lc/e/b/i;F)V

    .line 4
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {p1, p2, p4}, Lc/e/b/b$a;->c(Lc/e/b/i;F)V

    neg-float p1, p5

    .line 5
    iput p1, p0, Lc/e/b/b;->b:F

    return-object p0
.end method

.method r()V
    .registers 3

    .line 1
    iget v0, p0, Lc/e/b/b;->b:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_12

    const/high16 v1, -0x40800000    # -1.0f

    mul-float v0, v0, v1

    .line 2
    iput v0, p0, Lc/e/b/b;->b:F

    .line 3
    iget-object v0, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {v0}, Lc/e/b/b$a;->j()V

    :cond_12
    return-void
.end method

.method s()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lc/e/b/b;->a:Lc/e/b/i;

    if-eqz v0, :cond_13

    iget-object v0, v0, Lc/e/b/i;->j:Lc/e/b/i$a;

    sget-object v1, Lc/e/b/i$a;->b:Lc/e/b/i$a;

    if-eq v0, v1, :cond_11

    iget v0, p0, Lc/e/b/b;->b:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_13

    :cond_11
    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method t(Lc/e/b/i;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {v0, p1}, Lc/e/b/b$a;->h(Lc/e/b/i;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lc/e/b/b;->z()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v(Lc/e/b/i;)Lc/e/b/i;
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1}, Lc/e/b/b;->w([ZLc/e/b/i;)Lc/e/b/i;

    move-result-object p1

    return-object p1
.end method

.method x(Lc/e/b/i;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lc/e/b/b;->a:Lc/e/b/i;

    const/high16 v1, -0x40800000    # -1.0f

    if-eqz v0, :cond_13

    .line 2
    iget-object v2, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {v2, v0, v1}, Lc/e/b/b$a;->c(Lc/e/b/i;F)V

    .line 3
    iget-object v0, p0, Lc/e/b/b;->a:Lc/e/b/i;

    const/4 v2, -0x1

    iput v2, v0, Lc/e/b/i;->d:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lc/e/b/b;->a:Lc/e/b/i;

    .line 5
    :cond_13
    iget-object v0, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    const/4 v2, 0x1

    invoke-interface {v0, p1, v2}, Lc/e/b/b$a;->d(Lc/e/b/i;Z)F

    move-result v0

    mul-float v0, v0, v1

    .line 6
    iput-object p1, p0, Lc/e/b/b;->a:Lc/e/b/i;

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p1, v0, p1

    if-nez p1, :cond_25

    return-void

    .line 7
    :cond_25
    iget p1, p0, Lc/e/b/b;->b:F

    div-float/2addr p1, v0

    iput p1, p0, Lc/e/b/b;->b:F

    .line 8
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {p1, v0}, Lc/e/b/b$a;->i(F)V

    return-void
.end method

.method public y()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lc/e/b/b;->a:Lc/e/b/i;

    .line 2
    iget-object v0, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {v0}, Lc/e/b/b$a;->clear()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lc/e/b/b;->b:F

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lc/e/b/b;->f:Z

    return-void
.end method

.method z()Ljava/lang/String;
    .registers 10

    .line 1
    iget-object v0, p0, Lc/e/b/b;->a:Lc/e/b/i;

    const-string v1, ""

    if-nez v0, :cond_18

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_29

    .line 3
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/e/b/b;->a:Lc/e/b/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    :goto_29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    iget v1, p0, Lc/e/b/b;->b:F

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_56

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lc/e/b/b;->b:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    goto :goto_57

    :cond_56
    const/4 v1, 0x0

    .line 7
    :goto_57
    iget-object v5, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {v5}, Lc/e/b/b$a;->k()I

    move-result v5

    :goto_5d
    if-ge v2, v5, :cond_ee

    .line 8
    iget-object v6, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {v6, v2}, Lc/e/b/b$a;->f(I)Lc/e/b/i;

    move-result-object v6

    if-nez v6, :cond_69

    goto/16 :goto_ea

    .line 9
    :cond_69
    iget-object v7, p0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {v7, v2}, Lc/e/b/b$a;->a(I)F

    move-result v7

    cmpl-float v8, v7, v4

    if-nez v8, :cond_75

    goto/16 :goto_ea

    .line 10
    :cond_75
    invoke-virtual {v6}, Lc/e/b/i;->toString()Ljava/lang/String;

    move-result-object v6

    const/high16 v8, -0x40800000    # -1.0f

    if-nez v1, :cond_93

    cmpg-float v1, v7, v4

    if-gez v1, :cond_bc

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "- "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_ba

    :cond_93
    cmpl-float v1, v7, v4

    if-lez v1, :cond_a9

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " + "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_bc

    .line 13
    :cond_a9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_ba
    mul-float v7, v7, v8

    :cond_bc
    :goto_bc
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v7, v1

    if-nez v1, :cond_d2

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e9

    .line 15
    :cond_d2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_e9
    const/4 v1, 0x1

    :goto_ea
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5d

    :cond_ee
    if-nez v1, :cond_101

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "0.0"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_101
    return-object v0
.end method
