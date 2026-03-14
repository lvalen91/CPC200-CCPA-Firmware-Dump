.class public Lc/e/b/h;
.super Lc/e/b/b;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lc/e/b/h$b;
  }
.end annotation

.field private g:I

.field private h:[Lc/e/b/i;

.field private i:[Lc/e/b/i;

.field private j:I

.field k:Lc/e/b/h$b;

.method public constructor <init>(Lc/e/b/c;)V
  .registers 3
  .line 1
    invoke-direct { p0, p1 }, Lc/e/b/b;-><init>(Lc/e/b/c;)V
    const/16 p1, 128
  .line 2
    iput p1, p0, Lc/e/b/h;->g:I
    new-array v0, p1, [Lc/e/b/i;
  .line 3
    iput-object v0, p0, Lc/e/b/h;->h:[Lc/e/b/i;
    new-array p1, p1, [Lc/e/b/i;
  .line 4
    iput-object p1, p0, Lc/e/b/h;->i:[Lc/e/b/i;
    const/4 p1, 0
  .line 5
    iput p1, p0, Lc/e/b/h;->j:I
  .line 6
    new-instance p1, Lc/e/b/h$b;
    invoke-direct { p1, p0, p0 }, Lc/e/b/h$b;-><init>(Lc/e/b/h;Lc/e/b/h;)V
    iput-object p1, p0, Lc/e/b/h;->k:Lc/e/b/h$b;
    return-void
.end method

.method static synthetic E(Lc/e/b/h;Lc/e/b/i;)V
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Lc/e/b/h;->G(Lc/e/b/i;)V
    return-void
.end method

.method private final F(Lc/e/b/i;)V
  .registers 7
  .line 1
    iget v0, p0, Lc/e/b/h;->j:I
    const/4 v1, 1
    add-int/2addr v0, v1
    iget-object v2, p0, Lc/e/b/h;->h:[Lc/e/b/i;
    array-length v3, v2
    if-le v0, v3, :L0
  .line 2
    array-length v0, v2
    mul-int/lit8 v0, v0, 2
    invoke-static { v2, v0 }, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;
    move-result-object v0
    check-cast v0, [Lc/e/b/i;
    iput-object v0, p0, Lc/e/b/h;->h:[Lc/e/b/i;
  .line 3
    array-length v2, v0
    mul-int/lit8 v2, v2, 2
    invoke-static { v0, v2 }, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;
    move-result-object v0
    check-cast v0, [Lc/e/b/i;
    iput-object v0, p0, Lc/e/b/h;->i:[Lc/e/b/i;
  :L0
  .line 4
    iget-object v0, p0, Lc/e/b/h;->h:[Lc/e/b/i;
    iget v2, p0, Lc/e/b/h;->j:I
    aput-object p1, v0, v2
    add-int/2addr v2, v1
  .line 5
    iput v2, p0, Lc/e/b/h;->j:I
    if-le v2, v1, :L4
    sub-int/2addr v2, v1
  .line 6
    aget-object v0, v0, v2
    iget v0, v0, Lc/e/b/i;->c:I
    iget v2, p1, Lc/e/b/i;->c:I
    if-le v0, v2, :L4
    const/4 v0, 0
    const/4 v2, 0
  :L1
  .line 7
    iget v3, p0, Lc/e/b/h;->j:I
    if-ge v2, v3, :L2
  .line 8
    iget-object v3, p0, Lc/e/b/h;->i:[Lc/e/b/i;
    iget-object v4, p0, Lc/e/b/h;->h:[Lc/e/b/i;
    aget-object v4, v4, v2
    aput-object v4, v3, v2
    add-int/lit8 v2, v2, 1
    goto :L1
  :L2
  .line 9
    iget-object v2, p0, Lc/e/b/h;->i:[Lc/e/b/i;
    new-instance v4, Lc/e/b/h$a;
    invoke-direct { v4, p0 }, Lc/e/b/h$a;-><init>(Lc/e/b/h;)V
    invoke-static { v2, v0, v3, v4 }, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V
  :L3
  .line 10
    iget v2, p0, Lc/e/b/h;->j:I
    if-ge v0, v2, :L4
  .line 11
    iget-object v2, p0, Lc/e/b/h;->h:[Lc/e/b/i;
    iget-object v3, p0, Lc/e/b/h;->i:[Lc/e/b/i;
    aget-object v3, v3, v0
    aput-object v3, v2, v0
    add-int/lit8 v0, v0, 1
    goto :L3
  :L4
  .line 12
    iput-boolean v1, p1, Lc/e/b/i;->a:Z
  .line 13
    invoke-virtual { p1, p0 }, Lc/e/b/i;->a(Lc/e/b/b;)V
    return-void
.end method

.method private final G(Lc/e/b/i;)V
  .registers 7
    const/4 v0, 0
    const/4 v1, 0
  :L0
  .line 1
    iget v2, p0, Lc/e/b/h;->j:I
    if-ge v1, v2, :L4
  .line 2
    iget-object v2, p0, Lc/e/b/h;->h:[Lc/e/b/i;
    aget-object v2, v2, v1
    if-ne v2, p1, :L3
  :L1
  .line 3
    iget v2, p0, Lc/e/b/h;->j:I
    add-int/lit8 v3, v2, -1
    if-ge v1, v3, :L2
  .line 4
    iget-object v2, p0, Lc/e/b/h;->h:[Lc/e/b/i;
    add-int/lit8 v3, v1, 1
    aget-object v4, v2, v3
    aput-object v4, v2, v1
    move v1, v3
    goto :L1
  :L2
    add-int/lit8 v2, v2, -1
  .line 5
    iput v2, p0, Lc/e/b/h;->j:I
  .line 6
    iput-boolean v0, p1, Lc/e/b/i;->a:Z
    return-void
  :L3
    add-int/lit8 v1, v1, 1
    goto :L0
  :L4
    return-void
.end method

.method public B(Lc/e/b/d;Lc/e/b/b;Z)V
  .registers 9
  .line 1
    iget-object p1, p2, Lc/e/b/b;->a:Lc/e/b/i;
    if-nez p1, :L0
    return-void
  :L0
  .line 2
    iget-object p3, p2, Lc/e/b/b;->e:Lc/e/b/b$a;
  .line 3
    invoke-interface { p3 }, Lc/e/b/b$a;->k()I
    move-result v0
    const/4 v1, 0
  :L1
    if-ge v1, v0, :L3
  .line 4
    invoke-interface { p3, v1 }, Lc/e/b/b$a;->f(I)Lc/e/b/i;
    move-result-object v2
  .line 5
    invoke-interface { p3, v1 }, Lc/e/b/b$a;->a(I)F
    move-result v3
  .line 6
    iget-object v4, p0, Lc/e/b/h;->k:Lc/e/b/h$b;
    invoke-virtual { v4, v2 }, Lc/e/b/h$b;->b(Lc/e/b/i;)V
  .line 7
    iget-object v4, p0, Lc/e/b/h;->k:Lc/e/b/h$b;
    invoke-virtual { v4, p1, v3 }, Lc/e/b/h$b;->a(Lc/e/b/i;F)Z
    move-result v4
    if-eqz v4, :L2
  .line 8
    invoke-direct { p0, v2 }, Lc/e/b/h;->F(Lc/e/b/i;)V
  :L2
  .line 9
    iget v2, p0, Lc/e/b/b;->b:F
    iget v4, p2, Lc/e/b/b;->b:F
    mul-float v4, v4, v3
    add-float/2addr v2, v4
    iput v2, p0, Lc/e/b/b;->b:F
    add-int/lit8 v1, v1, 1
    goto :L1
  :L3
  .line 10
    invoke-direct { p0, p1 }, Lc/e/b/h;->G(Lc/e/b/i;)V
    return-void
.end method

.method public b(Lc/e/b/i;)V
  .registers 5
  .line 1
    iget-object v0, p0, Lc/e/b/h;->k:Lc/e/b/h$b;
    invoke-virtual { v0, p1 }, Lc/e/b/h$b;->b(Lc/e/b/i;)V
  .line 2
    iget-object v0, p0, Lc/e/b/h;->k:Lc/e/b/h$b;
    invoke-virtual { v0 }, Lc/e/b/h$b;->e()V
  .line 3
    iget-object v0, p1, Lc/e/b/i;->i:[F
    iget v1, p1, Lc/e/b/i;->e:I
    const/high16 v2, 16256
    aput v2, v0, v1
  .line 4
    invoke-direct { p0, p1 }, Lc/e/b/h;->F(Lc/e/b/i;)V
    return-void
.end method

.method public c(Lc/e/b/d;[Z)Lc/e/b/i;
  .registers 7
    const/4 p1, -1
    const/4 v0, 0
    const/4 v1, -1
  :L0
  .line 1
    iget v2, p0, Lc/e/b/h;->j:I
    if-ge v0, v2, :L5
  .line 2
    iget-object v2, p0, Lc/e/b/h;->h:[Lc/e/b/i;
    aget-object v2, v2, v0
  .line 3
    iget v3, v2, Lc/e/b/i;->c:I
    aget-boolean v3, p2, v3
    if-eqz v3, :L1
    goto :L4
  :L1
  .line 4
    iget-object v3, p0, Lc/e/b/h;->k:Lc/e/b/h$b;
    invoke-virtual { v3, v2 }, Lc/e/b/h$b;->b(Lc/e/b/i;)V
    if-ne v1, p1, :L2
  .line 5
    iget-object v2, p0, Lc/e/b/h;->k:Lc/e/b/h$b;
    invoke-virtual { v2 }, Lc/e/b/h$b;->c()Z
    move-result v2
    if-eqz v2, :L4
    goto :L3
  :L2
  .line 6
    iget-object v2, p0, Lc/e/b/h;->k:Lc/e/b/h$b;
    iget-object v3, p0, Lc/e/b/h;->h:[Lc/e/b/i;
    aget-object v3, v3, v1
    invoke-virtual { v2, v3 }, Lc/e/b/h$b;->d(Lc/e/b/i;)Z
    move-result v2
    if-eqz v2, :L4
  :L3
    move v1, v0
  :L4
    add-int/lit8 v0, v0, 1
    goto :L0
  :L5
    if-ne v1, p1, :L6
    const/4 p1, 0
    return-object p1
  :L6
  .line 7
    iget-object p1, p0, Lc/e/b/h;->h:[Lc/e/b/i;
    aget-object p1, p1, v1
    return-object p1
.end method

.method public clear()V
  .registers 2
    const/4 v0, 0
  .line 1
    iput v0, p0, Lc/e/b/h;->j:I
    const/4 v0, 0
  .line 2
    iput v0, p0, Lc/e/b/b;->b:F
    return-void
.end method

.method public isEmpty()Z
  .registers 2
  .line 1
    iget v0, p0, Lc/e/b/h;->j:I
    if-nez v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public toString()Ljava/lang/String;
  .registers 5
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, ""
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, " goal -> ("
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Lc/e/b/b;->b:F
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    const-string v1, ") : "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const/4 v1, 0
  :L0
  .line 2
    iget v2, p0, Lc/e/b/h;->j:I
    if-ge v1, v2, :L1
  .line 3
    iget-object v2, p0, Lc/e/b/h;->h:[Lc/e/b/i;
    aget-object v2, v2, v1
  .line 4
    iget-object v3, p0, Lc/e/b/h;->k:Lc/e/b/h$b;
    invoke-virtual { v3, v2 }, Lc/e/b/h$b;->b(Lc/e/b/i;)V
  .line 5
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v0, p0, Lc/e/b/h;->k:Lc/e/b/h$b;
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v0, " "
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    add-int/lit8 v1, v1, 1
    goto :L0
  :L1
    return-object v0
.end method
