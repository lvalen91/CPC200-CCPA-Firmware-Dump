.class public Lc/e/b/a;
.super Ljava/lang/Object;
.implements Lc/e/b/b$a;
.source "SourceFile"

.field private static l:F = 0.001F

.field a:I

.field private final b:Lc/e/b/b;

.field protected final c:Lc/e/b/c;

.field private d:I

.field private e:Lc/e/b/i;

.field private f:[I

.field private g:[I

.field private h:[F

.field private i:I

.field private j:I

.field private k:Z

.method static constructor <clinit>()V
  .registers 2
    return-void
.end method

.method constructor <init>(Lc/e/b/b;Lc/e/b/c;)V
  .registers 6
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 0
  .line 2
    iput v0, p0, Lc/e/b/a;->a:I
    const/16 v1, 8
  .line 3
    iput v1, p0, Lc/e/b/a;->d:I
    const/4 v2, 0
  .line 4
    iput-object v2, p0, Lc/e/b/a;->e:Lc/e/b/i;
    new-array v2, v1, [I
  .line 5
    iput-object v2, p0, Lc/e/b/a;->f:[I
    new-array v2, v1, [I
  .line 6
    iput-object v2, p0, Lc/e/b/a;->g:[I
    new-array v1, v1, [F
  .line 7
    iput-object v1, p0, Lc/e/b/a;->h:[F
    const/4 v1, -1
  .line 8
    iput v1, p0, Lc/e/b/a;->i:I
  .line 9
    iput v1, p0, Lc/e/b/a;->j:I
  .line 10
    iput-boolean v0, p0, Lc/e/b/a;->k:Z
  .line 11
    iput-object p1, p0, Lc/e/b/a;->b:Lc/e/b/b;
  .line 12
    iput-object p2, p0, Lc/e/b/a;->c:Lc/e/b/c;
    return-void
.end method

.method public a(I)F
  .registers 5
  .line 1
    iget v0, p0, Lc/e/b/a;->i:I
    const/4 v1, 0
  :L0
    const/4 v2, -1
    if-eq v0, v2, :L2
  .line 2
    iget v2, p0, Lc/e/b/a;->a:I
    if-ge v1, v2, :L2
    if-ne v1, p1, :L1
  .line 3
    iget-object p1, p0, Lc/e/b/a;->h:[F
    aget p1, p1, v0
    return p1
  :L1
  .line 4
    iget-object v2, p0, Lc/e/b/a;->g:[I
    aget v0, v2, v0
    add-int/lit8 v1, v1, 1
    goto :L0
  :L2
    const/4 p1, 0
    return p1
.end method

.method public b(Lc/e/b/b;Z)F
  .registers 8
  .line 1
    iget-object v0, p1, Lc/e/b/b;->a:Lc/e/b/i;
    invoke-virtual { p0, v0 }, Lc/e/b/a;->g(Lc/e/b/i;)F
    move-result v0
  .line 2
    iget-object v1, p1, Lc/e/b/b;->a:Lc/e/b/i;
    invoke-virtual { p0, v1, p2 }, Lc/e/b/a;->d(Lc/e/b/i;Z)F
  .line 3
    iget-object p1, p1, Lc/e/b/b;->e:Lc/e/b/b$a;
  .line 4
    invoke-interface { p1 }, Lc/e/b/b$a;->k()I
    move-result v1
    const/4 v2, 0
  :L0
    if-ge v2, v1, :L1
  .line 5
    invoke-interface { p1, v2 }, Lc/e/b/b$a;->f(I)Lc/e/b/i;
    move-result-object v3
  .line 6
    invoke-interface { p1, v3 }, Lc/e/b/b$a;->g(Lc/e/b/i;)F
    move-result v4
    mul-float v4, v4, v0
  .line 7
    invoke-virtual { p0, v3, v4, p2 }, Lc/e/b/a;->e(Lc/e/b/i;FZ)V
    add-int/lit8 v2, v2, 1
    goto :L0
  :L1
    return v0
.end method

.method public final c(Lc/e/b/i;F)V
  .registers 12
    const/4 v0, 1
    const/4 v1, 0
    cmpl-float v1, p2, v1
    if-nez v1, :L0
  .line 1
    invoke-virtual { p0, p1, v0 }, Lc/e/b/a;->d(Lc/e/b/i;Z)F
    return-void
  :L0
  .line 2
    iget v1, p0, Lc/e/b/a;->i:I
    const/4 v2, 0
    const/4 v3, -1
    if-ne v1, v3, :L2
  .line 3
    iput v2, p0, Lc/e/b/a;->i:I
  .line 4
    iget-object v1, p0, Lc/e/b/a;->h:[F
    aput p2, v1, v2
  .line 5
    iget-object p2, p0, Lc/e/b/a;->f:[I
    iget v1, p1, Lc/e/b/i;->c:I
    aput v1, p2, v2
  .line 6
    iget-object p2, p0, Lc/e/b/a;->g:[I
    aput v3, p2, v2
  .line 7
    iget p2, p1, Lc/e/b/i;->m:I
    add-int/2addr p2, v0
    iput p2, p1, Lc/e/b/i;->m:I
  .line 8
    iget-object p2, p0, Lc/e/b/a;->b:Lc/e/b/b;
    invoke-virtual { p1, p2 }, Lc/e/b/i;->a(Lc/e/b/b;)V
  .line 9
    iget p1, p0, Lc/e/b/a;->a:I
    add-int/2addr p1, v0
    iput p1, p0, Lc/e/b/a;->a:I
  .line 10
    iget-boolean p1, p0, Lc/e/b/a;->k:Z
    if-nez p1, :L1
  .line 11
    iget p1, p0, Lc/e/b/a;->j:I
    add-int/2addr p1, v0
    iput p1, p0, Lc/e/b/a;->j:I
  .line 12
    iget-object p2, p0, Lc/e/b/a;->f:[I
    array-length v1, p2
    if-lt p1, v1, :L1
  .line 13
    iput-boolean v0, p0, Lc/e/b/a;->k:Z
  .line 14
    array-length p1, p2
    sub-int/2addr p1, v0
    iput p1, p0, Lc/e/b/a;->j:I
  :L1
    return-void
  :L2
    const/4 v4, 0
    const/4 v5, -1
  :L3
    if-eq v1, v3, :L6
  .line 15
    iget v6, p0, Lc/e/b/a;->a:I
    if-ge v4, v6, :L6
  .line 16
    iget-object v6, p0, Lc/e/b/a;->f:[I
    aget v7, v6, v1
    iget v8, p1, Lc/e/b/i;->c:I
    if-ne v7, v8, :L4
  .line 17
    iget-object p1, p0, Lc/e/b/a;->h:[F
    aput p2, p1, v1
    return-void
  :L4
  .line 18
    aget v6, v6, v1
    if-ge v6, v8, :L5
    move v5, v1
  :L5
  .line 19
    iget-object v6, p0, Lc/e/b/a;->g:[I
    aget v1, v6, v1
    add-int/lit8 v4, v4, 1
    goto :L3
  :L6
  .line 20
    iget v1, p0, Lc/e/b/a;->j:I
    add-int/lit8 v4, v1, 1
  .line 21
    iget-boolean v6, p0, Lc/e/b/a;->k:Z
    if-eqz v6, :L8
  .line 22
    iget-object v4, p0, Lc/e/b/a;->f:[I
    aget v6, v4, v1
    if-ne v6, v3, :L7
    goto :L9
  :L7
  .line 23
    array-length v1, v4
    goto :L9
  :L8
    move v1, v4
  :L9
  .line 24
    iget-object v4, p0, Lc/e/b/a;->f:[I
    array-length v6, v4
    if-lt v1, v6, :L12
  .line 25
    iget v6, p0, Lc/e/b/a;->a:I
    array-length v4, v4
    if-ge v6, v4, :L12
    const/4 v4, 0
  :L10
  .line 26
    iget-object v6, p0, Lc/e/b/a;->f:[I
    array-length v7, v6
    if-ge v4, v7, :L12
  .line 27
    aget v6, v6, v4
    if-ne v6, v3, :L11
    move v1, v4
    goto :L12
  :L11
    add-int/lit8 v4, v4, 1
    goto :L10
  :L12
  .line 28
    iget-object v4, p0, Lc/e/b/a;->f:[I
    array-length v6, v4
    if-lt v1, v6, :L13
  .line 29
    array-length v1, v4
  .line 30
    iget v4, p0, Lc/e/b/a;->d:I
    mul-int/lit8 v4, v4, 2
    iput v4, p0, Lc/e/b/a;->d:I
  .line 31
    iput-boolean v2, p0, Lc/e/b/a;->k:Z
    add-int/lit8 v2, v1, -1
  .line 32
    iput v2, p0, Lc/e/b/a;->j:I
  .line 33
    iget-object v2, p0, Lc/e/b/a;->h:[F
    invoke-static { v2, v4 }, Ljava/util/Arrays;->copyOf([FI)[F
    move-result-object v2
    iput-object v2, p0, Lc/e/b/a;->h:[F
  .line 34
    iget-object v2, p0, Lc/e/b/a;->f:[I
    iget v4, p0, Lc/e/b/a;->d:I
    invoke-static { v2, v4 }, Ljava/util/Arrays;->copyOf([II)[I
    move-result-object v2
    iput-object v2, p0, Lc/e/b/a;->f:[I
  .line 35
    iget-object v2, p0, Lc/e/b/a;->g:[I
    iget v4, p0, Lc/e/b/a;->d:I
    invoke-static { v2, v4 }, Ljava/util/Arrays;->copyOf([II)[I
    move-result-object v2
    iput-object v2, p0, Lc/e/b/a;->g:[I
  :L13
  .line 36
    iget-object v2, p0, Lc/e/b/a;->f:[I
    iget v4, p1, Lc/e/b/i;->c:I
    aput v4, v2, v1
  .line 37
    iget-object v2, p0, Lc/e/b/a;->h:[F
    aput p2, v2, v1
    if-eq v5, v3, :L14
  .line 38
    iget-object p2, p0, Lc/e/b/a;->g:[I
    aget v2, p2, v5
    aput v2, p2, v1
  .line 39
    aput v1, p2, v5
    goto :L15
  :L14
  .line 40
    iget-object p2, p0, Lc/e/b/a;->g:[I
    iget v2, p0, Lc/e/b/a;->i:I
    aput v2, p2, v1
  .line 41
    iput v1, p0, Lc/e/b/a;->i:I
  :L15
  .line 42
    iget p2, p1, Lc/e/b/i;->m:I
    add-int/2addr p2, v0
    iput p2, p1, Lc/e/b/i;->m:I
  .line 43
    iget-object p2, p0, Lc/e/b/a;->b:Lc/e/b/b;
    invoke-virtual { p1, p2 }, Lc/e/b/i;->a(Lc/e/b/b;)V
  .line 44
    iget p1, p0, Lc/e/b/a;->a:I
    add-int/2addr p1, v0
    iput p1, p0, Lc/e/b/a;->a:I
  .line 45
    iget-boolean p1, p0, Lc/e/b/a;->k:Z
    if-nez p1, :L16
  .line 46
    iget p1, p0, Lc/e/b/a;->j:I
    add-int/2addr p1, v0
    iput p1, p0, Lc/e/b/a;->j:I
  :L16
  .line 47
    iget p1, p0, Lc/e/b/a;->a:I
    iget-object p2, p0, Lc/e/b/a;->f:[I
    array-length p2, p2
    if-lt p1, p2, :L17
  .line 48
    iput-boolean v0, p0, Lc/e/b/a;->k:Z
  :L17
  .line 49
    iget p1, p0, Lc/e/b/a;->j:I
    iget-object p2, p0, Lc/e/b/a;->f:[I
    array-length v1, p2
    if-lt p1, v1, :L18
  .line 50
    iput-boolean v0, p0, Lc/e/b/a;->k:Z
  .line 51
    array-length p1, p2
    sub-int/2addr p1, v0
    iput p1, p0, Lc/e/b/a;->j:I
  :L18
    return-void
.end method

.method public final clear()V
  .registers 6
  .line 1
    iget v0, p0, Lc/e/b/a;->i:I
    const/4 v1, 0
    const/4 v2, 0
  :L0
    const/4 v3, -1
    if-eq v0, v3, :L2
  .line 2
    iget v4, p0, Lc/e/b/a;->a:I
    if-ge v2, v4, :L2
  .line 3
    iget-object v3, p0, Lc/e/b/a;->c:Lc/e/b/c;
    iget-object v3, v3, Lc/e/b/c;->d:[Lc/e/b/i;
    iget-object v4, p0, Lc/e/b/a;->f:[I
    aget v4, v4, v0
    aget-object v3, v3, v4
    if-eqz v3, :L1
  .line 4
    iget-object v4, p0, Lc/e/b/a;->b:Lc/e/b/b;
    invoke-virtual { v3, v4 }, Lc/e/b/i;->c(Lc/e/b/b;)V
  :L1
  .line 5
    iget-object v3, p0, Lc/e/b/a;->g:[I
    aget v0, v3, v0
    add-int/lit8 v2, v2, 1
    goto :L0
  :L2
  .line 6
    iput v3, p0, Lc/e/b/a;->i:I
  .line 7
    iput v3, p0, Lc/e/b/a;->j:I
  .line 8
    iput-boolean v1, p0, Lc/e/b/a;->k:Z
  .line 9
    iput v1, p0, Lc/e/b/a;->a:I
    return-void
.end method

.method public final d(Lc/e/b/i;Z)F
  .registers 11
  .line 1
    iget-object v0, p0, Lc/e/b/a;->e:Lc/e/b/i;
    if-ne v0, p1, :L0
    const/4 v0, 0
  .line 2
    iput-object v0, p0, Lc/e/b/a;->e:Lc/e/b/i;
  :L0
  .line 3
    iget v0, p0, Lc/e/b/a;->i:I
    const/4 v1, 0
    const/4 v2, -1
    if-ne v0, v2, :L1
    return v1
  :L1
    const/4 v3, 0
    const/4 v4, -1
  :L2
    if-eq v0, v2, :L8
  .line 4
    iget v5, p0, Lc/e/b/a;->a:I
    if-ge v3, v5, :L8
  .line 5
    iget-object v5, p0, Lc/e/b/a;->f:[I
    aget v5, v5, v0
  .line 6
    iget v6, p1, Lc/e/b/i;->c:I
    if-ne v5, v6, :L7
  .line 7
    iget v1, p0, Lc/e/b/a;->i:I
    if-ne v0, v1, :L3
  .line 8
    iget-object v1, p0, Lc/e/b/a;->g:[I
    aget v1, v1, v0
    iput v1, p0, Lc/e/b/a;->i:I
    goto :L4
  :L3
  .line 9
    iget-object v1, p0, Lc/e/b/a;->g:[I
    aget v3, v1, v0
    aput v3, v1, v4
  :L4
    if-eqz p2, :L5
  .line 10
    iget-object p2, p0, Lc/e/b/a;->b:Lc/e/b/b;
    invoke-virtual { p1, p2 }, Lc/e/b/i;->c(Lc/e/b/b;)V
  :L5
  .line 11
    iget p2, p1, Lc/e/b/i;->m:I
    add-int/lit8 p2, p2, -1
    iput p2, p1, Lc/e/b/i;->m:I
  .line 12
    iget p1, p0, Lc/e/b/a;->a:I
    add-int/lit8 p1, p1, -1
    iput p1, p0, Lc/e/b/a;->a:I
  .line 13
    iget-object p1, p0, Lc/e/b/a;->f:[I
    aput v2, p1, v0
  .line 14
    iget-boolean p1, p0, Lc/e/b/a;->k:Z
    if-eqz p1, :L6
  .line 15
    iput v0, p0, Lc/e/b/a;->j:I
  :L6
  .line 16
    iget-object p1, p0, Lc/e/b/a;->h:[F
    aget p1, p1, v0
    return p1
  :L7
  .line 17
    iget-object v4, p0, Lc/e/b/a;->g:[I
    aget v4, v4, v0
    add-int/lit8 v3, v3, 1
    move v7, v4
    move v4, v0
    move v0, v7
    goto :L2
  :L8
    return v1
.end method

.method public e(Lc/e/b/i;FZ)V
  .registers 13
  .line 1
    sget v0, Lc/e/b/a;->l:F
    neg-float v1, v0
    cmpl-float v1, p2, v1
    if-lez v1, :L0
    cmpg-float v0, p2, v0
    if-gez v0, :L0
    return-void
  :L0
  .line 2
    iget v0, p0, Lc/e/b/a;->i:I
    const/4 v1, 0
    const/4 v2, -1
    const/4 v3, 1
    if-ne v0, v2, :L2
  .line 3
    iput v1, p0, Lc/e/b/a;->i:I
  .line 4
    iget-object p3, p0, Lc/e/b/a;->h:[F
    aput p2, p3, v1
  .line 5
    iget-object p2, p0, Lc/e/b/a;->f:[I
    iget p3, p1, Lc/e/b/i;->c:I
    aput p3, p2, v1
  .line 6
    iget-object p2, p0, Lc/e/b/a;->g:[I
    aput v2, p2, v1
  .line 7
    iget p2, p1, Lc/e/b/i;->m:I
    add-int/2addr p2, v3
    iput p2, p1, Lc/e/b/i;->m:I
  .line 8
    iget-object p2, p0, Lc/e/b/a;->b:Lc/e/b/b;
    invoke-virtual { p1, p2 }, Lc/e/b/i;->a(Lc/e/b/b;)V
  .line 9
    iget p1, p0, Lc/e/b/a;->a:I
    add-int/2addr p1, v3
    iput p1, p0, Lc/e/b/a;->a:I
  .line 10
    iget-boolean p1, p0, Lc/e/b/a;->k:Z
    if-nez p1, :L1
  .line 11
    iget p1, p0, Lc/e/b/a;->j:I
    add-int/2addr p1, v3
    iput p1, p0, Lc/e/b/a;->j:I
  .line 12
    iget-object p2, p0, Lc/e/b/a;->f:[I
    array-length p3, p2
    if-lt p1, p3, :L1
  .line 13
    iput-boolean v3, p0, Lc/e/b/a;->k:Z
  .line 14
    array-length p1, p2
    sub-int/2addr p1, v3
    iput p1, p0, Lc/e/b/a;->j:I
  :L1
    return-void
  :L2
    const/4 v4, 0
    const/4 v5, -1
  :L3
    if-eq v0, v2, :L12
  .line 15
    iget v6, p0, Lc/e/b/a;->a:I
    if-ge v4, v6, :L12
  .line 16
    iget-object v6, p0, Lc/e/b/a;->f:[I
    aget v7, v6, v0
  .line 17
    iget v8, p1, Lc/e/b/i;->c:I
    if-ne v7, v8, :L10
  .line 18
    iget-object v1, p0, Lc/e/b/a;->h:[F
    aget v1, v1, v0
    add-float/2addr v1, p2
  .line 19
    sget p2, Lc/e/b/a;->l:F
    neg-float v2, p2
    const/4 v4, 0
    cmpl-float v2, v1, v2
    if-lez v2, :L4
    cmpg-float p2, v1, p2
    if-gez p2, :L4
    const/4 v1, 0
  :L4
  .line 20
    iget-object p2, p0, Lc/e/b/a;->h:[F
    aput v1, p2, v0
    cmpl-float p2, v1, v4
    if-nez p2, :L9
  .line 21
    iget p2, p0, Lc/e/b/a;->i:I
    if-ne v0, p2, :L5
  .line 22
    iget-object p2, p0, Lc/e/b/a;->g:[I
    aget p2, p2, v0
    iput p2, p0, Lc/e/b/a;->i:I
    goto :L6
  :L5
  .line 23
    iget-object p2, p0, Lc/e/b/a;->g:[I
    aget v1, p2, v0
    aput v1, p2, v5
  :L6
    if-eqz p3, :L7
  .line 24
    iget-object p2, p0, Lc/e/b/a;->b:Lc/e/b/b;
    invoke-virtual { p1, p2 }, Lc/e/b/i;->c(Lc/e/b/b;)V
  :L7
  .line 25
    iget-boolean p2, p0, Lc/e/b/a;->k:Z
    if-eqz p2, :L8
  .line 26
    iput v0, p0, Lc/e/b/a;->j:I
  :L8
  .line 27
    iget p2, p1, Lc/e/b/i;->m:I
    sub-int/2addr p2, v3
    iput p2, p1, Lc/e/b/i;->m:I
  .line 28
    iget p1, p0, Lc/e/b/a;->a:I
    sub-int/2addr p1, v3
    iput p1, p0, Lc/e/b/a;->a:I
  :L9
    return-void
  :L10
  .line 29
    aget v6, v6, v0
    if-ge v6, v8, :L11
    move v5, v0
  :L11
  .line 30
    iget-object v6, p0, Lc/e/b/a;->g:[I
    aget v0, v6, v0
    add-int/lit8 v4, v4, 1
    goto :L3
  :L12
  .line 31
    iget p3, p0, Lc/e/b/a;->j:I
    add-int/lit8 v0, p3, 1
  .line 32
    iget-boolean v4, p0, Lc/e/b/a;->k:Z
    if-eqz v4, :L14
  .line 33
    iget-object v0, p0, Lc/e/b/a;->f:[I
    aget v4, v0, p3
    if-ne v4, v2, :L13
    goto :L15
  :L13
  .line 34
    array-length p3, v0
    goto :L15
  :L14
    move p3, v0
  :L15
  .line 35
    iget-object v0, p0, Lc/e/b/a;->f:[I
    array-length v4, v0
    if-lt p3, v4, :L18
  .line 36
    iget v4, p0, Lc/e/b/a;->a:I
    array-length v0, v0
    if-ge v4, v0, :L18
    const/4 v0, 0
  :L16
  .line 37
    iget-object v4, p0, Lc/e/b/a;->f:[I
    array-length v6, v4
    if-ge v0, v6, :L18
  .line 38
    aget v4, v4, v0
    if-ne v4, v2, :L17
    move p3, v0
    goto :L18
  :L17
    add-int/lit8 v0, v0, 1
    goto :L16
  :L18
  .line 39
    iget-object v0, p0, Lc/e/b/a;->f:[I
    array-length v4, v0
    if-lt p3, v4, :L19
  .line 40
    array-length p3, v0
  .line 41
    iget v0, p0, Lc/e/b/a;->d:I
    mul-int/lit8 v0, v0, 2
    iput v0, p0, Lc/e/b/a;->d:I
  .line 42
    iput-boolean v1, p0, Lc/e/b/a;->k:Z
    add-int/lit8 v1, p3, -1
  .line 43
    iput v1, p0, Lc/e/b/a;->j:I
  .line 44
    iget-object v1, p0, Lc/e/b/a;->h:[F
    invoke-static { v1, v0 }, Ljava/util/Arrays;->copyOf([FI)[F
    move-result-object v0
    iput-object v0, p0, Lc/e/b/a;->h:[F
  .line 45
    iget-object v0, p0, Lc/e/b/a;->f:[I
    iget v1, p0, Lc/e/b/a;->d:I
    invoke-static { v0, v1 }, Ljava/util/Arrays;->copyOf([II)[I
    move-result-object v0
    iput-object v0, p0, Lc/e/b/a;->f:[I
  .line 46
    iget-object v0, p0, Lc/e/b/a;->g:[I
    iget v1, p0, Lc/e/b/a;->d:I
    invoke-static { v0, v1 }, Ljava/util/Arrays;->copyOf([II)[I
    move-result-object v0
    iput-object v0, p0, Lc/e/b/a;->g:[I
  :L19
  .line 47
    iget-object v0, p0, Lc/e/b/a;->f:[I
    iget v1, p1, Lc/e/b/i;->c:I
    aput v1, v0, p3
  .line 48
    iget-object v0, p0, Lc/e/b/a;->h:[F
    aput p2, v0, p3
    if-eq v5, v2, :L20
  .line 49
    iget-object p2, p0, Lc/e/b/a;->g:[I
    aget v0, p2, v5
    aput v0, p2, p3
  .line 50
    aput p3, p2, v5
    goto :L21
  :L20
  .line 51
    iget-object p2, p0, Lc/e/b/a;->g:[I
    iget v0, p0, Lc/e/b/a;->i:I
    aput v0, p2, p3
  .line 52
    iput p3, p0, Lc/e/b/a;->i:I
  :L21
  .line 53
    iget p2, p1, Lc/e/b/i;->m:I
    add-int/2addr p2, v3
    iput p2, p1, Lc/e/b/i;->m:I
  .line 54
    iget-object p2, p0, Lc/e/b/a;->b:Lc/e/b/b;
    invoke-virtual { p1, p2 }, Lc/e/b/i;->a(Lc/e/b/b;)V
  .line 55
    iget p1, p0, Lc/e/b/a;->a:I
    add-int/2addr p1, v3
    iput p1, p0, Lc/e/b/a;->a:I
  .line 56
    iget-boolean p1, p0, Lc/e/b/a;->k:Z
    if-nez p1, :L22
  .line 57
    iget p1, p0, Lc/e/b/a;->j:I
    add-int/2addr p1, v3
    iput p1, p0, Lc/e/b/a;->j:I
  :L22
  .line 58
    iget p1, p0, Lc/e/b/a;->j:I
    iget-object p2, p0, Lc/e/b/a;->f:[I
    array-length p3, p2
    if-lt p1, p3, :L23
  .line 59
    iput-boolean v3, p0, Lc/e/b/a;->k:Z
  .line 60
    array-length p1, p2
    sub-int/2addr p1, v3
    iput p1, p0, Lc/e/b/a;->j:I
  :L23
    return-void
.end method

.method public f(I)Lc/e/b/i;
  .registers 5
  .line 1
    iget v0, p0, Lc/e/b/a;->i:I
    const/4 v1, 0
  :L0
    const/4 v2, -1
    if-eq v0, v2, :L2
  .line 2
    iget v2, p0, Lc/e/b/a;->a:I
    if-ge v1, v2, :L2
    if-ne v1, p1, :L1
  .line 3
    iget-object p1, p0, Lc/e/b/a;->c:Lc/e/b/c;
    iget-object p1, p1, Lc/e/b/c;->d:[Lc/e/b/i;
    iget-object v1, p0, Lc/e/b/a;->f:[I
    aget v0, v1, v0
    aget-object p1, p1, v0
    return-object p1
  :L1
  .line 4
    iget-object v2, p0, Lc/e/b/a;->g:[I
    aget v0, v2, v0
    add-int/lit8 v1, v1, 1
    goto :L0
  :L2
    const/4 p1, 0
    return-object p1
.end method

.method public final g(Lc/e/b/i;)F
  .registers 6
  .line 1
    iget v0, p0, Lc/e/b/a;->i:I
    const/4 v1, 0
  :L0
    const/4 v2, -1
    if-eq v0, v2, :L2
  .line 2
    iget v2, p0, Lc/e/b/a;->a:I
    if-ge v1, v2, :L2
  .line 3
    iget-object v2, p0, Lc/e/b/a;->f:[I
    aget v2, v2, v0
    iget v3, p1, Lc/e/b/i;->c:I
    if-ne v2, v3, :L1
  .line 4
    iget-object p1, p0, Lc/e/b/a;->h:[F
    aget p1, p1, v0
    return p1
  :L1
  .line 5
    iget-object v2, p0, Lc/e/b/a;->g:[I
    aget v0, v2, v0
    add-int/lit8 v1, v1, 1
    goto :L0
  :L2
    const/4 p1, 0
    return p1
.end method

.method public h(Lc/e/b/i;)Z
  .registers 8
  .line 1
    iget v0, p0, Lc/e/b/a;->i:I
    const/4 v1, -1
    const/4 v2, 0
    if-ne v0, v1, :L0
    return v2
  :L0
    const/4 v3, 0
  :L1
    if-eq v0, v1, :L3
  .line 2
    iget v4, p0, Lc/e/b/a;->a:I
    if-ge v3, v4, :L3
  .line 3
    iget-object v4, p0, Lc/e/b/a;->f:[I
    aget v4, v4, v0
    iget v5, p1, Lc/e/b/i;->c:I
    if-ne v4, v5, :L2
    const/4 p1, 1
    return p1
  :L2
  .line 4
    iget-object v4, p0, Lc/e/b/a;->g:[I
    aget v0, v4, v0
    add-int/lit8 v3, v3, 1
    goto :L1
  :L3
    return v2
.end method

.method public i(F)V
  .registers 6
  .line 1
    iget v0, p0, Lc/e/b/a;->i:I
    const/4 v1, 0
  :L0
    const/4 v2, -1
    if-eq v0, v2, :L1
  .line 2
    iget v2, p0, Lc/e/b/a;->a:I
    if-ge v1, v2, :L1
  .line 3
    iget-object v2, p0, Lc/e/b/a;->h:[F
    aget v3, v2, v0
    div-float/2addr v3, p1
    aput v3, v2, v0
  .line 4
    iget-object v2, p0, Lc/e/b/a;->g:[I
    aget v0, v2, v0
    add-int/lit8 v1, v1, 1
    goto :L0
  :L1
    return-void
.end method

.method public j()V
  .registers 6
  .line 1
    iget v0, p0, Lc/e/b/a;->i:I
    const/4 v1, 0
  :L0
    const/4 v2, -1
    if-eq v0, v2, :L1
  .line 2
    iget v2, p0, Lc/e/b/a;->a:I
    if-ge v1, v2, :L1
  .line 3
    iget-object v2, p0, Lc/e/b/a;->h:[F
    aget v3, v2, v0
    const/high16 v4, -16512
    mul-float v3, v3, v4
    aput v3, v2, v0
  .line 4
    iget-object v2, p0, Lc/e/b/a;->g:[I
    aget v0, v2, v0
    add-int/lit8 v1, v1, 1
    goto :L0
  :L1
    return-void
.end method

.method public k()I
  .registers 2
  .line 1
    iget v0, p0, Lc/e/b/a;->a:I
    return v0
.end method

.method public toString()Ljava/lang/String;
  .registers 6
  .line 1
    iget v0, p0, Lc/e/b/a;->i:I
    const-string v1, ""
    const/4 v2, 0
  :L0
    const/4 v3, -1
    if-eq v0, v3, :L1
  .line 2
    iget v3, p0, Lc/e/b/a;->a:I
    if-ge v2, v3, :L1
  .line 3
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v3, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, " -> "
    invoke-virtual { v3, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
  .line 4
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v3, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lc/e/b/a;->h:[F
    aget v1, v1, v0
    invoke-virtual { v3, v1 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    const-string v1, " : "
    invoke-virtual { v3, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
  .line 5
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v3, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lc/e/b/a;->c:Lc/e/b/c;
    iget-object v1, v1, Lc/e/b/c;->d:[Lc/e/b/i;
    iget-object v4, p0, Lc/e/b/a;->f:[I
    aget v4, v4, v0
    aget-object v1, v1, v4
    invoke-virtual { v3, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
  .line 6
    iget-object v3, p0, Lc/e/b/a;->g:[I
    aget v0, v3, v0
    add-int/lit8 v2, v2, 1
    goto :L0
  :L1
    return-object v1
.end method
