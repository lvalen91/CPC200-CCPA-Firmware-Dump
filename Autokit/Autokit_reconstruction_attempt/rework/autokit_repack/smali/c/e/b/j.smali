.class public Lc/e/b/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/e/b/b$a;


# static fields
.field private static m:F = 0.001f


# instance fields
.field private a:I

.field private b:I

.field c:[I

.field d:[I

.field e:[I

.field f:[F

.field g:[I

.field h:[I

.field i:I

.field j:I

.field private final k:Lc/e/b/b;

.field protected final l:Lc/e/b/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method constructor <init>(Lc/e/b/b;Lc/e/b/c;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 2
    iput v0, p0, Lc/e/b/j;->a:I

    .line 3
    iput v0, p0, Lc/e/b/j;->b:I

    new-array v1, v0, [I

    .line 4
    iput-object v1, p0, Lc/e/b/j;->c:[I

    new-array v1, v0, [I

    .line 5
    iput-object v1, p0, Lc/e/b/j;->d:[I

    new-array v1, v0, [I

    .line 6
    iput-object v1, p0, Lc/e/b/j;->e:[I

    new-array v1, v0, [F

    .line 7
    iput-object v1, p0, Lc/e/b/j;->f:[F

    new-array v1, v0, [I

    .line 8
    iput-object v1, p0, Lc/e/b/j;->g:[I

    new-array v0, v0, [I

    .line 9
    iput-object v0, p0, Lc/e/b/j;->h:[I

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lc/e/b/j;->i:I

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lc/e/b/j;->j:I

    .line 12
    iput-object p1, p0, Lc/e/b/j;->k:Lc/e/b/b;

    .line 13
    iput-object p2, p0, Lc/e/b/j;->l:Lc/e/b/c;

    .line 14
    invoke-virtual {p0}, Lc/e/b/j;->clear()V

    return-void
.end method

.method private l(Lc/e/b/i;I)V
    .registers 6

    .line 1
    iget p1, p1, Lc/e/b/i;->c:I

    iget v0, p0, Lc/e/b/j;->b:I

    rem-int/2addr p1, v0

    .line 2
    iget-object v0, p0, Lc/e/b/j;->c:[I

    aget v1, v0, p1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_f

    .line 3
    aput p2, v0, p1

    goto :goto_1a

    .line 4
    :cond_f
    :goto_f
    iget-object p1, p0, Lc/e/b/j;->d:[I

    aget v0, p1, v1

    if-eq v0, v2, :cond_18

    .line 5
    aget v1, p1, v1

    goto :goto_f

    .line 6
    :cond_18
    aput p2, p1, v1

    .line 7
    :goto_1a
    iget-object p1, p0, Lc/e/b/j;->d:[I

    aput v2, p1, p2

    return-void
.end method

.method private m(ILc/e/b/i;F)V
    .registers 6

    .line 1
    iget-object v0, p0, Lc/e/b/j;->e:[I

    iget v1, p2, Lc/e/b/i;->c:I

    aput v1, v0, p1

    .line 2
    iget-object v0, p0, Lc/e/b/j;->f:[F

    aput p3, v0, p1

    .line 3
    iget-object p3, p0, Lc/e/b/j;->g:[I

    const/4 v0, -0x1

    aput v0, p3, p1

    .line 4
    iget-object p3, p0, Lc/e/b/j;->h:[I

    aput v0, p3, p1

    .line 5
    iget-object p1, p0, Lc/e/b/j;->k:Lc/e/b/b;

    invoke-virtual {p2, p1}, Lc/e/b/i;->a(Lc/e/b/b;)V

    .line 6
    iget p1, p2, Lc/e/b/i;->m:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p2, Lc/e/b/i;->m:I

    .line 7
    iget p1, p0, Lc/e/b/j;->i:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lc/e/b/j;->i:I

    return-void
.end method

.method private n()I
    .registers 4

    const/4 v0, 0x0

    .line 1
    :goto_1
    iget v1, p0, Lc/e/b/j;->a:I

    const/4 v2, -0x1

    if-ge v0, v1, :cond_10

    .line 2
    iget-object v1, p0, Lc/e/b/j;->e:[I

    aget v1, v1, v0

    if-ne v1, v2, :cond_d

    return v0

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_10
    return v2
.end method

.method private o()V
    .registers 5

    .line 1
    iget v0, p0, Lc/e/b/j;->a:I

    mul-int/lit8 v0, v0, 0x2

    .line 2
    iget-object v1, p0, Lc/e/b/j;->e:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lc/e/b/j;->e:[I

    .line 3
    iget-object v1, p0, Lc/e/b/j;->f:[F

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    iput-object v1, p0, Lc/e/b/j;->f:[F

    .line 4
    iget-object v1, p0, Lc/e/b/j;->g:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lc/e/b/j;->g:[I

    .line 5
    iget-object v1, p0, Lc/e/b/j;->h:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lc/e/b/j;->h:[I

    .line 6
    iget-object v1, p0, Lc/e/b/j;->d:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lc/e/b/j;->d:[I

    .line 7
    iget v1, p0, Lc/e/b/j;->a:I

    :goto_2e
    if-ge v1, v0, :cond_3c

    .line 8
    iget-object v2, p0, Lc/e/b/j;->e:[I

    const/4 v3, -0x1

    aput v3, v2, v1

    .line 9
    iget-object v2, p0, Lc/e/b/j;->d:[I

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 10
    :cond_3c
    iput v0, p0, Lc/e/b/j;->a:I

    return-void
.end method

.method private q(ILc/e/b/i;F)V
    .registers 7

    .line 1
    invoke-direct {p0}, Lc/e/b/j;->n()I

    move-result v0

    .line 2
    invoke-direct {p0, v0, p2, p3}, Lc/e/b/j;->m(ILc/e/b/i;F)V

    const/4 p3, -0x1

    if-eq p1, p3, :cond_17

    .line 3
    iget-object v1, p0, Lc/e/b/j;->g:[I

    aput p1, v1, v0

    .line 4
    iget-object v1, p0, Lc/e/b/j;->h:[I

    aget v2, v1, p1

    aput v2, v1, v0

    .line 5
    aput v0, v1, p1

    goto :goto_2c

    .line 6
    :cond_17
    iget-object p1, p0, Lc/e/b/j;->g:[I

    aput p3, p1, v0

    .line 7
    iget p1, p0, Lc/e/b/j;->i:I

    if-lez p1, :cond_28

    .line 8
    iget-object p1, p0, Lc/e/b/j;->h:[I

    iget v1, p0, Lc/e/b/j;->j:I

    aput v1, p1, v0

    .line 9
    iput v0, p0, Lc/e/b/j;->j:I

    goto :goto_2c

    .line 10
    :cond_28
    iget-object p1, p0, Lc/e/b/j;->h:[I

    aput p3, p1, v0

    .line 11
    :goto_2c
    iget-object p1, p0, Lc/e/b/j;->h:[I

    aget v1, p1, v0

    if-eq v1, p3, :cond_38

    .line 12
    iget-object p3, p0, Lc/e/b/j;->g:[I

    aget p1, p1, v0

    aput v0, p3, p1

    .line 13
    :cond_38
    invoke-direct {p0, p2, v0}, Lc/e/b/j;->l(Lc/e/b/i;I)V

    return-void
.end method

.method private r(Lc/e/b/i;)V
    .registers 7

    .line 1
    iget p1, p1, Lc/e/b/i;->c:I

    iget v0, p0, Lc/e/b/j;->b:I

    rem-int v0, p1, v0

    .line 2
    iget-object v1, p0, Lc/e/b/j;->c:[I

    aget v2, v1, v0

    const/4 v3, -0x1

    if-ne v2, v3, :cond_e

    return-void

    .line 3
    :cond_e
    iget-object v4, p0, Lc/e/b/j;->e:[I

    aget v4, v4, v2

    if-ne v4, p1, :cond_1d

    .line 4
    iget-object p1, p0, Lc/e/b/j;->d:[I

    aget v4, p1, v2

    aput v4, v1, v0

    .line 5
    aput v3, p1, v2

    goto :goto_40

    .line 6
    :cond_1d
    :goto_1d
    iget-object v0, p0, Lc/e/b/j;->d:[I

    aget v1, v0, v2

    if-eq v1, v3, :cond_2e

    iget-object v1, p0, Lc/e/b/j;->e:[I

    aget v4, v0, v2

    aget v1, v1, v4

    if-eq v1, p1, :cond_2e

    .line 7
    aget v2, v0, v2

    goto :goto_1d

    .line 8
    :cond_2e
    iget-object v0, p0, Lc/e/b/j;->d:[I

    aget v1, v0, v2

    if-eq v1, v3, :cond_40

    .line 9
    iget-object v4, p0, Lc/e/b/j;->e:[I

    aget v4, v4, v1

    if-ne v4, p1, :cond_40

    .line 10
    aget p1, v0, v1

    aput p1, v0, v2

    .line 11
    aput v3, v0, v1

    :cond_40
    :goto_40
    return-void
.end method


# virtual methods
.method public a(I)F
    .registers 6

    .line 1
    iget v0, p0, Lc/e/b/j;->i:I

    .line 2
    iget v1, p0, Lc/e/b/j;->j:I

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_19

    if-ne v2, p1, :cond_e

    .line 3
    iget-object p1, p0, Lc/e/b/j;->f:[F

    aget p1, p1, v1

    return p1

    .line 4
    :cond_e
    iget-object v3, p0, Lc/e/b/j;->h:[I

    aget v1, v3, v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_16

    goto :goto_19

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_19
    :goto_19
    const/4 p1, 0x0

    return p1
.end method

.method public b(Lc/e/b/b;Z)F
    .registers 10

    .line 1
    iget-object v0, p1, Lc/e/b/b;->a:Lc/e/b/i;

    invoke-virtual {p0, v0}, Lc/e/b/j;->g(Lc/e/b/i;)F

    move-result v0

    .line 2
    iget-object v1, p1, Lc/e/b/b;->a:Lc/e/b/i;

    invoke-virtual {p0, v1, p2}, Lc/e/b/j;->d(Lc/e/b/i;Z)F

    .line 3
    iget-object p1, p1, Lc/e/b/b;->e:Lc/e/b/b$a;

    check-cast p1, Lc/e/b/j;

    .line 4
    invoke-virtual {p1}, Lc/e/b/j;->k()I

    move-result v1

    .line 5
    iget v2, p1, Lc/e/b/j;->j:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_17
    if-ge v2, v1, :cond_36

    .line 6
    iget-object v4, p1, Lc/e/b/j;->e:[I

    aget v5, v4, v3

    const/4 v6, -0x1

    if-eq v5, v6, :cond_33

    .line 7
    iget-object v5, p1, Lc/e/b/j;->f:[F

    aget v5, v5, v3

    .line 8
    iget-object v6, p0, Lc/e/b/j;->l:Lc/e/b/c;

    iget-object v6, v6, Lc/e/b/c;->d:[Lc/e/b/i;

    aget v4, v4, v3

    aget-object v4, v6, v4

    mul-float v5, v5, v0

    .line 9
    invoke-virtual {p0, v4, v5, p2}, Lc/e/b/j;->e(Lc/e/b/i;FZ)V

    add-int/lit8 v2, v2, 0x1

    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_36
    return v0
.end method

.method public c(Lc/e/b/i;F)V
    .registers 11

    .line 1
    sget v0, Lc/e/b/j;->m:F

    neg-float v1, v0

    const/4 v2, 0x1

    cmpl-float v1, p2, v1

    if-lez v1, :cond_10

    cmpg-float v0, p2, v0

    if-gez v0, :cond_10

    .line 2
    invoke-virtual {p0, p1, v2}, Lc/e/b/j;->d(Lc/e/b/i;Z)F

    return-void

    .line 3
    :cond_10
    iget v0, p0, Lc/e/b/j;->i:I

    const/4 v1, 0x0

    if-nez v0, :cond_1e

    .line 4
    invoke-direct {p0, v1, p1, p2}, Lc/e/b/j;->m(ILc/e/b/i;F)V

    .line 5
    invoke-direct {p0, p1, v1}, Lc/e/b/j;->l(Lc/e/b/i;I)V

    .line 6
    iput v1, p0, Lc/e/b/j;->j:I

    goto :goto_5a

    .line 7
    :cond_1e
    invoke-virtual {p0, p1}, Lc/e/b/j;->p(Lc/e/b/i;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2a

    .line 8
    iget-object p1, p0, Lc/e/b/j;->f:[F

    aput p2, p1, v0

    goto :goto_5a

    .line 9
    :cond_2a
    iget v0, p0, Lc/e/b/j;->i:I

    add-int/2addr v0, v2

    iget v2, p0, Lc/e/b/j;->a:I

    if-lt v0, v2, :cond_34

    .line 10
    invoke-direct {p0}, Lc/e/b/j;->o()V

    .line 11
    :cond_34
    iget v0, p0, Lc/e/b/j;->i:I

    .line 12
    iget v2, p0, Lc/e/b/j;->j:I

    const/4 v4, -0x1

    :goto_39
    if-ge v1, v0, :cond_57

    .line 13
    iget-object v5, p0, Lc/e/b/j;->e:[I

    aget v6, v5, v2

    iget v7, p1, Lc/e/b/i;->c:I

    if-ne v6, v7, :cond_48

    .line 14
    iget-object p1, p0, Lc/e/b/j;->f:[F

    aput p2, p1, v2

    return-void

    .line 15
    :cond_48
    aget v5, v5, v2

    if-ge v5, v7, :cond_4d

    move v4, v2

    .line 16
    :cond_4d
    iget-object v5, p0, Lc/e/b/j;->h:[I

    aget v2, v5, v2

    if-ne v2, v3, :cond_54

    goto :goto_57

    :cond_54
    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    .line 17
    :cond_57
    :goto_57
    invoke-direct {p0, v4, p1, p2}, Lc/e/b/j;->q(ILc/e/b/i;F)V

    :goto_5a
    return-void
.end method

.method public clear()V
    .registers 6

    .line 1
    iget v0, p0, Lc/e/b/j;->i:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_14

    .line 2
    invoke-virtual {p0, v2}, Lc/e/b/j;->f(I)Lc/e/b/i;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 3
    iget-object v4, p0, Lc/e/b/j;->k:Lc/e/b/b;

    invoke-virtual {v3, v4}, Lc/e/b/i;->c(Lc/e/b/b;)V

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_14
    const/4 v0, 0x0

    .line 4
    :goto_15
    iget v2, p0, Lc/e/b/j;->a:I

    const/4 v3, -0x1

    if-ge v0, v2, :cond_25

    .line 5
    iget-object v2, p0, Lc/e/b/j;->e:[I

    aput v3, v2, v0

    .line 6
    iget-object v2, p0, Lc/e/b/j;->d:[I

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_25
    const/4 v0, 0x0

    .line 7
    :goto_26
    iget v2, p0, Lc/e/b/j;->b:I

    if-ge v0, v2, :cond_31

    .line 8
    iget-object v2, p0, Lc/e/b/j;->c:[I

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 9
    :cond_31
    iput v1, p0, Lc/e/b/j;->i:I

    .line 10
    iput v3, p0, Lc/e/b/j;->j:I

    return-void
.end method

.method public d(Lc/e/b/i;Z)F
    .registers 9

    .line 1
    invoke-virtual {p0, p1}, Lc/e/b/j;->p(Lc/e/b/i;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_9
    invoke-direct {p0, p1}, Lc/e/b/j;->r(Lc/e/b/i;)V

    .line 3
    iget-object v2, p0, Lc/e/b/j;->f:[F

    aget v2, v2, v0

    .line 4
    iget v3, p0, Lc/e/b/j;->j:I

    if-ne v3, v0, :cond_1a

    .line 5
    iget-object v3, p0, Lc/e/b/j;->h:[I

    aget v3, v3, v0

    iput v3, p0, Lc/e/b/j;->j:I

    .line 6
    :cond_1a
    iget-object v3, p0, Lc/e/b/j;->e:[I

    aput v1, v3, v0

    .line 7
    iget-object v3, p0, Lc/e/b/j;->g:[I

    aget v4, v3, v0

    if-eq v4, v1, :cond_2c

    .line 8
    iget-object v4, p0, Lc/e/b/j;->h:[I

    aget v3, v3, v0

    aget v5, v4, v0

    aput v5, v4, v3

    .line 9
    :cond_2c
    iget-object v3, p0, Lc/e/b/j;->h:[I

    aget v4, v3, v0

    if-eq v4, v1, :cond_3a

    .line 10
    iget-object v1, p0, Lc/e/b/j;->g:[I

    aget v3, v3, v0

    aget v0, v1, v0

    aput v0, v1, v3

    .line 11
    :cond_3a
    iget v0, p0, Lc/e/b/j;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lc/e/b/j;->i:I

    .line 12
    iget v0, p1, Lc/e/b/i;->m:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lc/e/b/i;->m:I

    if-eqz p2, :cond_4d

    .line 13
    iget-object p2, p0, Lc/e/b/j;->k:Lc/e/b/b;

    invoke-virtual {p1, p2}, Lc/e/b/i;->c(Lc/e/b/b;)V

    :cond_4d
    return v2
.end method

.method public e(Lc/e/b/i;FZ)V
    .registers 8

    .line 1
    sget v0, Lc/e/b/j;->m:F

    neg-float v1, v0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_c

    cmpg-float v0, p2, v0

    if-gez v0, :cond_c

    return-void

    .line 2
    :cond_c
    invoke-virtual {p0, p1}, Lc/e/b/j;->p(Lc/e/b/i;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    .line 3
    invoke-virtual {p0, p1, p2}, Lc/e/b/j;->c(Lc/e/b/i;F)V

    goto :goto_33

    .line 4
    :cond_17
    iget-object v1, p0, Lc/e/b/j;->f:[F

    aget v2, v1, v0

    add-float/2addr v2, p2

    aput v2, v1, v0

    .line 5
    aget p2, v1, v0

    sget v2, Lc/e/b/j;->m:F

    neg-float v3, v2

    cmpl-float p2, p2, v3

    if-lez p2, :cond_33

    aget p2, v1, v0

    cmpg-float p2, p2, v2

    if-gez p2, :cond_33

    const/4 p2, 0x0

    .line 6
    aput p2, v1, v0

    .line 7
    invoke-virtual {p0, p1, p3}, Lc/e/b/j;->d(Lc/e/b/i;Z)F

    :cond_33
    :goto_33
    return-void
.end method

.method public f(I)Lc/e/b/i;
    .registers 8

    .line 1
    iget v0, p0, Lc/e/b/j;->i:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 2
    :cond_6
    iget v2, p0, Lc/e/b/j;->j:I

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v0, :cond_25

    const/4 v4, -0x1

    if-ne v3, p1, :cond_1b

    if-eq v2, v4, :cond_1b

    .line 3
    iget-object p1, p0, Lc/e/b/j;->l:Lc/e/b/c;

    iget-object p1, p1, Lc/e/b/c;->d:[Lc/e/b/i;

    iget-object v0, p0, Lc/e/b/j;->e:[I

    aget v0, v0, v2

    aget-object p1, p1, v0

    return-object p1

    .line 4
    :cond_1b
    iget-object v5, p0, Lc/e/b/j;->h:[I

    aget v2, v5, v2

    if-ne v2, v4, :cond_22

    goto :goto_25

    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_25
    :goto_25
    return-object v1
.end method

.method public g(Lc/e/b/i;)F
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lc/e/b/j;->p(Lc/e/b/i;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_c

    .line 2
    iget-object v0, p0, Lc/e/b/j;->f:[F

    aget p1, v0, p1

    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method public h(Lc/e/b/i;)Z
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lc/e/b/j;->p(Lc/e/b/i;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method public i(F)V
    .registers 7

    .line 1
    iget v0, p0, Lc/e/b/j;->i:I

    .line 2
    iget v1, p0, Lc/e/b/j;->j:I

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_19

    .line 3
    iget-object v3, p0, Lc/e/b/j;->f:[F

    aget v4, v3, v1

    div-float/2addr v4, p1

    aput v4, v3, v1

    .line 4
    iget-object v3, p0, Lc/e/b/j;->h:[I

    aget v1, v3, v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_16

    goto :goto_19

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_19
    :goto_19
    return-void
.end method

.method public j()V
    .registers 7

    .line 1
    iget v0, p0, Lc/e/b/j;->i:I

    .line 2
    iget v1, p0, Lc/e/b/j;->j:I

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_1c

    .line 3
    iget-object v3, p0, Lc/e/b/j;->f:[F

    aget v4, v3, v1

    const/high16 v5, -0x40800000    # -1.0f

    mul-float v4, v4, v5

    aput v4, v3, v1

    .line 4
    iget-object v3, p0, Lc/e/b/j;->h:[I

    aget v1, v3, v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_19

    goto :goto_1c

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_1c
    :goto_1c
    return-void
.end method

.method public k()I
    .registers 2

    .line 1
    iget v0, p0, Lc/e/b/j;->i:I

    return v0
.end method

.method public p(Lc/e/b/i;)I
    .registers 7

    .line 1
    iget v0, p0, Lc/e/b/j;->i:I

    const/4 v1, -0x1

    if-eqz v0, :cond_3f

    if-nez p1, :cond_8

    goto :goto_3f

    .line 2
    :cond_8
    iget p1, p1, Lc/e/b/i;->c:I

    .line 3
    iget v0, p0, Lc/e/b/j;->b:I

    rem-int v0, p1, v0

    .line 4
    iget-object v2, p0, Lc/e/b/j;->c:[I

    aget v0, v2, v0

    if-ne v0, v1, :cond_15

    return v1

    .line 5
    :cond_15
    iget-object v2, p0, Lc/e/b/j;->e:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_1c

    return v0

    .line 6
    :cond_1c
    :goto_1c
    iget-object v2, p0, Lc/e/b/j;->d:[I

    aget v3, v2, v0

    if-eq v3, v1, :cond_2d

    iget-object v3, p0, Lc/e/b/j;->e:[I

    aget v4, v2, v0

    aget v3, v3, v4

    if-eq v3, p1, :cond_2d

    .line 7
    aget v0, v2, v0

    goto :goto_1c

    .line 8
    :cond_2d
    iget-object v2, p0, Lc/e/b/j;->d:[I

    aget v3, v2, v0

    if-ne v3, v1, :cond_34

    return v1

    .line 9
    :cond_34
    iget-object v3, p0, Lc/e/b/j;->e:[I

    aget v4, v2, v0

    aget v3, v3, v4

    if-ne v3, p1, :cond_3f

    .line 10
    aget p1, v2, v0

    return p1

    :cond_3f
    :goto_3f
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget v1, p0, Lc/e/b/j;->i:I

    const/4 v2, 0x0

    :goto_18
    if-ge v2, v1, :cond_e6

    .line 3
    invoke-virtual {p0, v2}, Lc/e/b/j;->f(I)Lc/e/b/i;

    move-result-object v3

    if-nez v3, :cond_22

    goto/16 :goto_e2

    .line 4
    :cond_22
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lc/e/b/j;->a(I)F

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p0, v3}, Lc/e/b/j;->p(Lc/e/b/i;)I

    move-result v3

    .line 6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "[p: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v4, p0, Lc/e/b/j;->g:[I

    aget v4, v4, v3

    const-string v5, "none"

    const/4 v6, -0x1

    if-eq v4, v6, :cond_7e

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lc/e/b/j;->l:Lc/e/b/c;

    iget-object v0, v0, Lc/e/b/c;->d:[Lc/e/b/i;

    iget-object v7, p0, Lc/e/b/j;->e:[I

    iget-object v8, p0, Lc/e/b/j;->g:[I

    aget v8, v8, v3

    aget v7, v7, v8

    aget-object v0, v0, v7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8d

    .line 9
    :cond_7e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    :goto_8d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", n: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11
    iget-object v4, p0, Lc/e/b/j;->h:[I

    aget v4, v4, v3

    if-eq v4, v6, :cond_c2

    .line 12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lc/e/b/j;->l:Lc/e/b/c;

    iget-object v0, v0, Lc/e/b/c;->d:[Lc/e/b/i;

    iget-object v5, p0, Lc/e/b/j;->e:[I

    iget-object v6, p0, Lc/e/b/j;->h:[I

    aget v3, v6, v3

    aget v3, v5, v3

    aget-object v0, v0, v3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d1

    .line 13
    :cond_c2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14
    :goto_d1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_e2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_18

    .line 15
    :cond_e6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " }"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
