.class public Lc/e/b/j;
.super Ljava/lang/Object;
.implements Lc/e/b/b$a;
.source "SourceFile"

.field private static m:F = 0.001F

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

.method static constructor <clinit>()V
  .registers 1
    return-void
.end method

.method constructor <init>(Lc/e/b/b;Lc/e/b/c;)V
  .registers 5
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/16 v0, 16
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
    const/4 v0, 0
  .line 10
    iput v0, p0, Lc/e/b/j;->i:I
    const/4 v0, -1
  .line 11
    iput v0, p0, Lc/e/b/j;->j:I
  .line 12
    iput-object p1, p0, Lc/e/b/j;->k:Lc/e/b/b;
  .line 13
    iput-object p2, p0, Lc/e/b/j;->l:Lc/e/b/c;
  .line 14
    invoke-virtual { p0 }, Lc/e/b/j;->clear()V
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
    const/4 v2, -1
    if-ne v1, v2, :L0
  .line 3
    aput p2, v0, p1
    goto :L2
  :L0
  .line 4
    iget-object p1, p0, Lc/e/b/j;->d:[I
    aget v0, p1, v1
    if-eq v0, v2, :L1
  .line 5
    aget v1, p1, v1
    goto :L0
  :L1
  .line 6
    aput p2, p1, v1
  :L2
  .line 7
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
    const/4 v0, -1
    aput v0, p3, p1
  .line 4
    iget-object p3, p0, Lc/e/b/j;->h:[I
    aput v0, p3, p1
  .line 5
    iget-object p1, p0, Lc/e/b/j;->k:Lc/e/b/b;
    invoke-virtual { p2, p1 }, Lc/e/b/i;->a(Lc/e/b/b;)V
  .line 6
    iget p1, p2, Lc/e/b/i;->m:I
    add-int/lit8 p1, p1, 1
    iput p1, p2, Lc/e/b/i;->m:I
  .line 7
    iget p1, p0, Lc/e/b/j;->i:I
    add-int/lit8 p1, p1, 1
    iput p1, p0, Lc/e/b/j;->i:I
    return-void
.end method

.method private n()I
  .registers 4
    const/4 v0, 0
  :L0
  .line 1
    iget v1, p0, Lc/e/b/j;->a:I
    const/4 v2, -1
    if-ge v0, v1, :L2
  .line 2
    iget-object v1, p0, Lc/e/b/j;->e:[I
    aget v1, v1, v0
    if-ne v1, v2, :L1
    return v0
  :L1
    add-int/lit8 v0, v0, 1
    goto :L0
  :L2
    return v2
.end method

.method private o()V
  .registers 5
  .line 1
    iget v0, p0, Lc/e/b/j;->a:I
    mul-int/lit8 v0, v0, 2
  .line 2
    iget-object v1, p0, Lc/e/b/j;->e:[I
    invoke-static { v1, v0 }, Ljava/util/Arrays;->copyOf([II)[I
    move-result-object v1
    iput-object v1, p0, Lc/e/b/j;->e:[I
  .line 3
    iget-object v1, p0, Lc/e/b/j;->f:[F
    invoke-static { v1, v0 }, Ljava/util/Arrays;->copyOf([FI)[F
    move-result-object v1
    iput-object v1, p0, Lc/e/b/j;->f:[F
  .line 4
    iget-object v1, p0, Lc/e/b/j;->g:[I
    invoke-static { v1, v0 }, Ljava/util/Arrays;->copyOf([II)[I
    move-result-object v1
    iput-object v1, p0, Lc/e/b/j;->g:[I
  .line 5
    iget-object v1, p0, Lc/e/b/j;->h:[I
    invoke-static { v1, v0 }, Ljava/util/Arrays;->copyOf([II)[I
    move-result-object v1
    iput-object v1, p0, Lc/e/b/j;->h:[I
  .line 6
    iget-object v1, p0, Lc/e/b/j;->d:[I
    invoke-static { v1, v0 }, Ljava/util/Arrays;->copyOf([II)[I
    move-result-object v1
    iput-object v1, p0, Lc/e/b/j;->d:[I
  .line 7
    iget v1, p0, Lc/e/b/j;->a:I
  :L0
    if-ge v1, v0, :L1
  .line 8
    iget-object v2, p0, Lc/e/b/j;->e:[I
    const/4 v3, -1
    aput v3, v2, v1
  .line 9
    iget-object v2, p0, Lc/e/b/j;->d:[I
    aput v3, v2, v1
    add-int/lit8 v1, v1, 1
    goto :L0
  :L1
  .line 10
    iput v0, p0, Lc/e/b/j;->a:I
    return-void
.end method

.method private q(ILc/e/b/i;F)V
  .registers 7
  .line 1
    invoke-direct { p0 }, Lc/e/b/j;->n()I
    move-result v0
  .line 2
    invoke-direct { p0, v0, p2, p3 }, Lc/e/b/j;->m(ILc/e/b/i;F)V
    const/4 p3, -1
    if-eq p1, p3, :L0
  .line 3
    iget-object v1, p0, Lc/e/b/j;->g:[I
    aput p1, v1, v0
  .line 4
    iget-object v1, p0, Lc/e/b/j;->h:[I
    aget v2, v1, p1
    aput v2, v1, v0
  .line 5
    aput v0, v1, p1
    goto :L2
  :L0
  .line 6
    iget-object p1, p0, Lc/e/b/j;->g:[I
    aput p3, p1, v0
  .line 7
    iget p1, p0, Lc/e/b/j;->i:I
    if-lez p1, :L1
  .line 8
    iget-object p1, p0, Lc/e/b/j;->h:[I
    iget v1, p0, Lc/e/b/j;->j:I
    aput v1, p1, v0
  .line 9
    iput v0, p0, Lc/e/b/j;->j:I
    goto :L2
  :L1
  .line 10
    iget-object p1, p0, Lc/e/b/j;->h:[I
    aput p3, p1, v0
  :L2
  .line 11
    iget-object p1, p0, Lc/e/b/j;->h:[I
    aget v1, p1, v0
    if-eq v1, p3, :L3
  .line 12
    iget-object p3, p0, Lc/e/b/j;->g:[I
    aget p1, p1, v0
    aput v0, p3, p1
  :L3
  .line 13
    invoke-direct { p0, p2, v0 }, Lc/e/b/j;->l(Lc/e/b/i;I)V
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
    const/4 v3, -1
    if-ne v2, v3, :L0
    return-void
  :L0
  .line 3
    iget-object v4, p0, Lc/e/b/j;->e:[I
    aget v4, v4, v2
    if-ne v4, p1, :L1
  .line 4
    iget-object p1, p0, Lc/e/b/j;->d:[I
    aget v4, p1, v2
    aput v4, v1, v0
  .line 5
    aput v3, p1, v2
    goto :L3
  :L1
  .line 6
    iget-object v0, p0, Lc/e/b/j;->d:[I
    aget v1, v0, v2
    if-eq v1, v3, :L2
    iget-object v1, p0, Lc/e/b/j;->e:[I
    aget v4, v0, v2
    aget v1, v1, v4
    if-eq v1, p1, :L2
  .line 7
    aget v2, v0, v2
    goto :L1
  :L2
  .line 8
    iget-object v0, p0, Lc/e/b/j;->d:[I
    aget v1, v0, v2
    if-eq v1, v3, :L3
  .line 9
    iget-object v4, p0, Lc/e/b/j;->e:[I
    aget v4, v4, v1
    if-ne v4, p1, :L3
  .line 10
    aget p1, v0, v1
    aput p1, v0, v2
  .line 11
    aput v3, v0, v1
  :L3
    return-void
.end method

.method public a(I)F
  .registers 6
  .line 1
    iget v0, p0, Lc/e/b/j;->i:I
  .line 2
    iget v1, p0, Lc/e/b/j;->j:I
    const/4 v2, 0
  :L0
    if-ge v2, v0, :L3
    if-ne v2, p1, :L1
  .line 3
    iget-object p1, p0, Lc/e/b/j;->f:[F
    aget p1, p1, v1
    return p1
  :L1
  .line 4
    iget-object v3, p0, Lc/e/b/j;->h:[I
    aget v1, v3, v1
    const/4 v3, -1
    if-ne v1, v3, :L2
    goto :L3
  :L2
    add-int/lit8 v2, v2, 1
    goto :L0
  :L3
    const/4 p1, 0
    return p1
.end method

.method public b(Lc/e/b/b;Z)F
  .registers 10
  .line 1
    iget-object v0, p1, Lc/e/b/b;->a:Lc/e/b/i;
    invoke-virtual { p0, v0 }, Lc/e/b/j;->g(Lc/e/b/i;)F
    move-result v0
  .line 2
    iget-object v1, p1, Lc/e/b/b;->a:Lc/e/b/i;
    invoke-virtual { p0, v1, p2 }, Lc/e/b/j;->d(Lc/e/b/i;Z)F
  .line 3
    iget-object p1, p1, Lc/e/b/b;->e:Lc/e/b/b$a;
    check-cast p1, Lc/e/b/j;
  .line 4
    invoke-virtual { p1 }, Lc/e/b/j;->k()I
    move-result v1
  .line 5
    iget v2, p1, Lc/e/b/j;->j:I
    const/4 v2, 0
    const/4 v3, 0
  :L0
    if-ge v2, v1, :L2
  .line 6
    iget-object v4, p1, Lc/e/b/j;->e:[I
    aget v5, v4, v3
    const/4 v6, -1
    if-eq v5, v6, :L1
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
    invoke-virtual { p0, v4, v5, p2 }, Lc/e/b/j;->e(Lc/e/b/i;FZ)V
    add-int/lit8 v2, v2, 1
  :L1
    add-int/lit8 v3, v3, 1
    goto :L0
  :L2
    return v0
.end method

.method public c(Lc/e/b/i;F)V
  .registers 11
  .line 1
    sget v0, Lc/e/b/j;->m:F
    neg-float v1, v0
    const/4 v2, 1
    cmpl-float v1, p2, v1
    if-lez v1, :L0
    cmpg-float v0, p2, v0
    if-gez v0, :L0
  .line 2
    invoke-virtual { p0, p1, v2 }, Lc/e/b/j;->d(Lc/e/b/i;Z)F
    return-void
  :L0
  .line 3
    iget v0, p0, Lc/e/b/j;->i:I
    const/4 v1, 0
    if-nez v0, :L1
  .line 4
    invoke-direct { p0, v1, p1, p2 }, Lc/e/b/j;->m(ILc/e/b/i;F)V
  .line 5
    invoke-direct { p0, p1, v1 }, Lc/e/b/j;->l(Lc/e/b/i;I)V
  .line 6
    iput v1, p0, Lc/e/b/j;->j:I
    goto :L9
  :L1
  .line 7
    invoke-virtual { p0, p1 }, Lc/e/b/j;->p(Lc/e/b/i;)I
    move-result v0
    const/4 v3, -1
    if-eq v0, v3, :L2
  .line 8
    iget-object p1, p0, Lc/e/b/j;->f:[F
    aput p2, p1, v0
    goto :L9
  :L2
  .line 9
    iget v0, p0, Lc/e/b/j;->i:I
    add-int/2addr v0, v2
    iget v2, p0, Lc/e/b/j;->a:I
    if-lt v0, v2, :L3
  .line 10
    invoke-direct { p0 }, Lc/e/b/j;->o()V
  :L3
  .line 11
    iget v0, p0, Lc/e/b/j;->i:I
  .line 12
    iget v2, p0, Lc/e/b/j;->j:I
    const/4 v4, -1
  :L4
    if-ge v1, v0, :L8
  .line 13
    iget-object v5, p0, Lc/e/b/j;->e:[I
    aget v6, v5, v2
    iget v7, p1, Lc/e/b/i;->c:I
    if-ne v6, v7, :L5
  .line 14
    iget-object p1, p0, Lc/e/b/j;->f:[F
    aput p2, p1, v2
    return-void
  :L5
  .line 15
    aget v5, v5, v2
    if-ge v5, v7, :L6
    move v4, v2
  :L6
  .line 16
    iget-object v5, p0, Lc/e/b/j;->h:[I
    aget v2, v5, v2
    if-ne v2, v3, :L7
    goto :L8
  :L7
    add-int/lit8 v1, v1, 1
    goto :L4
  :L8
  .line 17
    invoke-direct { p0, v4, p1, p2 }, Lc/e/b/j;->q(ILc/e/b/i;F)V
  :L9
    return-void
.end method

.method public clear()V
  .registers 6
  .line 1
    iget v0, p0, Lc/e/b/j;->i:I
    const/4 v1, 0
    const/4 v2, 0
  :L0
    if-ge v2, v0, :L2
  .line 2
    invoke-virtual { p0, v2 }, Lc/e/b/j;->f(I)Lc/e/b/i;
    move-result-object v3
    if-eqz v3, :L1
  .line 3
    iget-object v4, p0, Lc/e/b/j;->k:Lc/e/b/b;
    invoke-virtual { v3, v4 }, Lc/e/b/i;->c(Lc/e/b/b;)V
  :L1
    add-int/lit8 v2, v2, 1
    goto :L0
  :L2
    const/4 v0, 0
  :L3
  .line 4
    iget v2, p0, Lc/e/b/j;->a:I
    const/4 v3, -1
    if-ge v0, v2, :L4
  .line 5
    iget-object v2, p0, Lc/e/b/j;->e:[I
    aput v3, v2, v0
  .line 6
    iget-object v2, p0, Lc/e/b/j;->d:[I
    aput v3, v2, v0
    add-int/lit8 v0, v0, 1
    goto :L3
  :L4
    const/4 v0, 0
  :L5
  .line 7
    iget v2, p0, Lc/e/b/j;->b:I
    if-ge v0, v2, :L6
  .line 8
    iget-object v2, p0, Lc/e/b/j;->c:[I
    aput v3, v2, v0
    add-int/lit8 v0, v0, 1
    goto :L5
  :L6
  .line 9
    iput v1, p0, Lc/e/b/j;->i:I
  .line 10
    iput v3, p0, Lc/e/b/j;->j:I
    return-void
.end method

.method public d(Lc/e/b/i;Z)F
  .registers 9
  .line 1
    invoke-virtual { p0, p1 }, Lc/e/b/j;->p(Lc/e/b/i;)I
    move-result v0
    const/4 v1, -1
    if-ne v0, v1, :L0
    const/4 p1, 0
    return p1
  :L0
  .line 2
    invoke-direct { p0, p1 }, Lc/e/b/j;->r(Lc/e/b/i;)V
  .line 3
    iget-object v2, p0, Lc/e/b/j;->f:[F
    aget v2, v2, v0
  .line 4
    iget v3, p0, Lc/e/b/j;->j:I
    if-ne v3, v0, :L1
  .line 5
    iget-object v3, p0, Lc/e/b/j;->h:[I
    aget v3, v3, v0
    iput v3, p0, Lc/e/b/j;->j:I
  :L1
  .line 6
    iget-object v3, p0, Lc/e/b/j;->e:[I
    aput v1, v3, v0
  .line 7
    iget-object v3, p0, Lc/e/b/j;->g:[I
    aget v4, v3, v0
    if-eq v4, v1, :L2
  .line 8
    iget-object v4, p0, Lc/e/b/j;->h:[I
    aget v3, v3, v0
    aget v5, v4, v0
    aput v5, v4, v3
  :L2
  .line 9
    iget-object v3, p0, Lc/e/b/j;->h:[I
    aget v4, v3, v0
    if-eq v4, v1, :L3
  .line 10
    iget-object v1, p0, Lc/e/b/j;->g:[I
    aget v3, v3, v0
    aget v0, v1, v0
    aput v0, v1, v3
  :L3
  .line 11
    iget v0, p0, Lc/e/b/j;->i:I
    add-int/lit8 v0, v0, -1
    iput v0, p0, Lc/e/b/j;->i:I
  .line 12
    iget v0, p1, Lc/e/b/i;->m:I
    add-int/lit8 v0, v0, -1
    iput v0, p1, Lc/e/b/i;->m:I
    if-eqz p2, :L4
  .line 13
    iget-object p2, p0, Lc/e/b/j;->k:Lc/e/b/b;
    invoke-virtual { p1, p2 }, Lc/e/b/i;->c(Lc/e/b/b;)V
  :L4
    return v2
.end method

.method public e(Lc/e/b/i;FZ)V
  .registers 8
  .line 1
    sget v0, Lc/e/b/j;->m:F
    neg-float v1, v0
    cmpl-float v1, p2, v1
    if-lez v1, :L0
    cmpg-float v0, p2, v0
    if-gez v0, :L0
    return-void
  :L0
  .line 2
    invoke-virtual { p0, p1 }, Lc/e/b/j;->p(Lc/e/b/i;)I
    move-result v0
    const/4 v1, -1
    if-ne v0, v1, :L1
  .line 3
    invoke-virtual { p0, p1, p2 }, Lc/e/b/j;->c(Lc/e/b/i;F)V
    goto :L2
  :L1
  .line 4
    iget-object v1, p0, Lc/e/b/j;->f:[F
    aget v2, v1, v0
    add-float/2addr v2, p2
    aput v2, v1, v0
  .line 5
    aget p2, v1, v0
    sget v2, Lc/e/b/j;->m:F
    neg-float v3, v2
    cmpl-float p2, p2, v3
    if-lez p2, :L2
    aget p2, v1, v0
    cmpg-float p2, p2, v2
    if-gez p2, :L2
    const/4 p2, 0
  .line 6
    aput p2, v1, v0
  .line 7
    invoke-virtual { p0, p1, p3 }, Lc/e/b/j;->d(Lc/e/b/i;Z)F
  :L2
    return-void
.end method

.method public f(I)Lc/e/b/i;
  .registers 8
  .line 1
    iget v0, p0, Lc/e/b/j;->i:I
    const/4 v1, 0
    if-nez v0, :L0
    return-object v1
  :L0
  .line 2
    iget v2, p0, Lc/e/b/j;->j:I
    const/4 v3, 0
  :L1
    if-ge v3, v0, :L4
    const/4 v4, -1
    if-ne v3, p1, :L2
    if-eq v2, v4, :L2
  .line 3
    iget-object p1, p0, Lc/e/b/j;->l:Lc/e/b/c;
    iget-object p1, p1, Lc/e/b/c;->d:[Lc/e/b/i;
    iget-object v0, p0, Lc/e/b/j;->e:[I
    aget v0, v0, v2
    aget-object p1, p1, v0
    return-object p1
  :L2
  .line 4
    iget-object v5, p0, Lc/e/b/j;->h:[I
    aget v2, v5, v2
    if-ne v2, v4, :L3
    goto :L4
  :L3
    add-int/lit8 v3, v3, 1
    goto :L1
  :L4
    return-object v1
.end method

.method public g(Lc/e/b/i;)F
  .registers 3
  .line 1
    invoke-virtual { p0, p1 }, Lc/e/b/j;->p(Lc/e/b/i;)I
    move-result p1
    const/4 v0, -1
    if-eq p1, v0, :L0
  .line 2
    iget-object v0, p0, Lc/e/b/j;->f:[F
    aget p1, v0, p1
    return p1
  :L0
    const/4 p1, 0
    return p1
.end method

.method public h(Lc/e/b/i;)Z
  .registers 3
  .line 1
    invoke-virtual { p0, p1 }, Lc/e/b/j;->p(Lc/e/b/i;)I
    move-result p1
    const/4 v0, -1
    if-eq p1, v0, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    return p1
.end method

.method public i(F)V
  .registers 7
  .line 1
    iget v0, p0, Lc/e/b/j;->i:I
  .line 2
    iget v1, p0, Lc/e/b/j;->j:I
    const/4 v2, 0
  :L0
    if-ge v2, v0, :L2
  .line 3
    iget-object v3, p0, Lc/e/b/j;->f:[F
    aget v4, v3, v1
    div-float/2addr v4, p1
    aput v4, v3, v1
  .line 4
    iget-object v3, p0, Lc/e/b/j;->h:[I
    aget v1, v3, v1
    const/4 v3, -1
    if-ne v1, v3, :L1
    goto :L2
  :L1
    add-int/lit8 v2, v2, 1
    goto :L0
  :L2
    return-void
.end method

.method public j()V
  .registers 7
  .line 1
    iget v0, p0, Lc/e/b/j;->i:I
  .line 2
    iget v1, p0, Lc/e/b/j;->j:I
    const/4 v2, 0
  :L0
    if-ge v2, v0, :L2
  .line 3
    iget-object v3, p0, Lc/e/b/j;->f:[F
    aget v4, v3, v1
    const/high16 v5, -16512
    mul-float v4, v4, v5
    aput v4, v3, v1
  .line 4
    iget-object v3, p0, Lc/e/b/j;->h:[I
    aget v1, v3, v1
    const/4 v3, -1
    if-ne v1, v3, :L1
    goto :L2
  :L1
    add-int/lit8 v2, v2, 1
    goto :L0
  :L2
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
    const/4 v1, -1
    if-eqz v0, :L5
    if-nez p1, :L0
    goto :L5
  :L0
  .line 2
    iget p1, p1, Lc/e/b/i;->c:I
  .line 3
    iget v0, p0, Lc/e/b/j;->b:I
    rem-int v0, p1, v0
  .line 4
    iget-object v2, p0, Lc/e/b/j;->c:[I
    aget v0, v2, v0
    if-ne v0, v1, :L1
    return v1
  :L1
  .line 5
    iget-object v2, p0, Lc/e/b/j;->e:[I
    aget v2, v2, v0
    if-ne v2, p1, :L2
    return v0
  :L2
  .line 6
    iget-object v2, p0, Lc/e/b/j;->d:[I
    aget v3, v2, v0
    if-eq v3, v1, :L3
    iget-object v3, p0, Lc/e/b/j;->e:[I
    aget v4, v2, v0
    aget v3, v3, v4
    if-eq v3, p1, :L3
  .line 7
    aget v0, v2, v0
    goto :L2
  :L3
  .line 8
    iget-object v2, p0, Lc/e/b/j;->d:[I
    aget v3, v2, v0
    if-ne v3, v1, :L4
    return v1
  :L4
  .line 9
    iget-object v3, p0, Lc/e/b/j;->e:[I
    aget v4, v2, v0
    aget v3, v3, v4
    if-ne v3, p1, :L5
  .line 10
    aget p1, v2, v0
    return p1
  :L5
    return v1
.end method

.method public toString()Ljava/lang/String;
  .registers 10
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p0 }, Ljava/lang/Object;->hashCode()I
    move-result v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, " { "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
  .line 2
    iget v1, p0, Lc/e/b/j;->i:I
    const/4 v2, 0
  :L0
    if-ge v2, v1, :L7
  .line 3
    invoke-virtual { p0, v2 }, Lc/e/b/j;->f(I)Lc/e/b/i;
    move-result-object v3
    if-nez v3, :L1
    goto/16 :L6
  :L1
  .line 4
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v4, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v4, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v0, " = "
    invoke-virtual { v4, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0, v2 }, Lc/e/b/j;->a(I)F
    move-result v0
    invoke-virtual { v4, v0 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    const-string v0, " "
    invoke-virtual { v4, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
  .line 5
    invoke-virtual { p0, v3 }, Lc/e/b/j;->p(Lc/e/b/i;)I
    move-result v3
  .line 6
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v4, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, "[p: "
    invoke-virtual { v4, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
  .line 7
    iget-object v4, p0, Lc/e/b/j;->g:[I
    aget v4, v4, v3
    const-string v5, "none"
    const/4 v6, -1
    if-eq v4, v6, :L2
  .line 8
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v4, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v0, p0, Lc/e/b/j;->l:Lc/e/b/c;
    iget-object v0, v0, Lc/e/b/c;->d:[Lc/e/b/i;
    iget-object v7, p0, Lc/e/b/j;->e:[I
    iget-object v8, p0, Lc/e/b/j;->g:[I
    aget v8, v8, v3
    aget v7, v7, v8
    aget-object v0, v0, v7
    invoke-virtual { v4, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    goto :L3
  :L2
  .line 9
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v4, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
  :L3
  .line 10
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v4, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, ", n: "
    invoke-virtual { v4, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
  .line 11
    iget-object v4, p0, Lc/e/b/j;->h:[I
    aget v4, v4, v3
    if-eq v4, v6, :L4
  .line 12
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v4, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v0, p0, Lc/e/b/j;->l:Lc/e/b/c;
    iget-object v0, v0, Lc/e/b/c;->d:[Lc/e/b/i;
    iget-object v5, p0, Lc/e/b/j;->e:[I
    iget-object v6, p0, Lc/e/b/j;->h:[I
    aget v3, v6, v3
    aget v3, v5, v3
    aget-object v0, v0, v3
    invoke-virtual { v4, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    goto :L5
  :L4
  .line 13
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
  :L5
  .line 14
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, "]"
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
  :L6
    add-int/lit8 v2, v2, 1
    goto/16 :L0
  :L7
  .line 15
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, " }"
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method
