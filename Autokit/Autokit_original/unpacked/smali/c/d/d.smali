.class public Lc/d/d;
.super Ljava/lang/Object;
.implements Ljava/lang/Cloneable;
.source "SourceFile"

.annotation system Ldalvik/annotation/Signature;
  value = {
    "<E:",
    "Ljava/lang/Object;",
    ">",
    "Ljava/lang/Object;",
    "Ljava/lang/Cloneable;"
  }
.end annotation

.field private final static f:Ljava/lang/Object;

.field private b:Z

.field private c:[J

.field private d:[Ljava/lang/Object;

.field private e:I

.method static constructor <clinit>()V
  .registers 2
  .line 1
    new-instance v0, Ljava/lang/Object;
    invoke-direct { v0 }, Ljava/lang/Object;-><init>()V
    sput-object v0, Lc/d/d;->f:Ljava/lang/Object;
    return-void
.end method

.method public constructor <init>()V
  .registers 2
    const/16 v0, 10
  .line 1
    invoke-direct { p0, v0 }, Lc/d/d;-><init>(I)V
    return-void
.end method

.method public constructor <init>(I)V
  .registers 3
  .line 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 0
  .line 3
    iput-boolean v0, p0, Lc/d/d;->b:Z
    if-nez p1, :L0
  .line 4
    sget-object p1, Lc/d/c;->b:[J
    iput-object p1, p0, Lc/d/d;->c:[J
  .line 5
    sget-object p1, Lc/d/c;->c:[Ljava/lang/Object;
    iput-object p1, p0, Lc/d/d;->d:[Ljava/lang/Object;
    goto :L1
  :L0
  .line 6
    invoke-static { p1 }, Lc/d/c;->f(I)I
    move-result p1
  .line 7
    new-array v0, p1, [J
    iput-object v0, p0, Lc/d/d;->c:[J
  .line 8
    new-array p1, p1, [Ljava/lang/Object;
    iput-object p1, p0, Lc/d/d;->d:[Ljava/lang/Object;
  :L1
    return-void
.end method

.method private d()V
  .registers 10
  .line 1
    iget v0, p0, Lc/d/d;->e:I
  .line 2
    iget-object v1, p0, Lc/d/d;->c:[J
  .line 3
    iget-object v2, p0, Lc/d/d;->d:[Ljava/lang/Object;
    const/4 v3, 0
    const/4 v4, 0
    const/4 v5, 0
  :L0
    if-ge v4, v0, :L3
  .line 4
    aget-object v6, v2, v4
  .line 5
    sget-object v7, Lc/d/d;->f:Ljava/lang/Object;
    if-eq v6, v7, :L2
    if-eq v4, v5, :L1
  .line 6
    aget-wide v7, v1, v4
    aput-wide v7, v1, v5
  .line 7
    aput-object v6, v2, v5
    const/4 v6, 0
  .line 8
    aput-object v6, v2, v4
  :L1
    add-int/lit8 v5, v5, 1
  :L2
    add-int/lit8 v4, v4, 1
    goto :L0
  :L3
  .line 9
    iput-boolean v3, p0, Lc/d/d;->b:Z
  .line 10
    iput v5, p0, Lc/d/d;->e:I
    return-void
.end method

.method public a(JLjava/lang/Object;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(JTE;)V"
    }
  .end annotation
  .registers 10
  .line 1
    iget v0, p0, Lc/d/d;->e:I
    if-eqz v0, :L0
    iget-object v1, p0, Lc/d/d;->c:[J
    add-int/lit8 v0, v0, -1
    aget-wide v0, v1, v0
    cmp-long v2, p1, v0
    if-gtz v2, :L0
  .line 2
    invoke-virtual { p0, p1, p2, p3 }, Lc/d/d;->i(JLjava/lang/Object;)V
    return-void
  :L0
  .line 3
    iget-boolean v0, p0, Lc/d/d;->b:Z
    if-eqz v0, :L1
    iget v0, p0, Lc/d/d;->e:I
    iget-object v1, p0, Lc/d/d;->c:[J
    array-length v1, v1
    if-lt v0, v1, :L1
  .line 4
    invoke-direct { p0 }, Lc/d/d;->d()V
  :L1
  .line 5
    iget v0, p0, Lc/d/d;->e:I
  .line 6
    iget-object v1, p0, Lc/d/d;->c:[J
    array-length v1, v1
    if-lt v0, v1, :L2
    add-int/lit8 v1, v0, 1
  .line 7
    invoke-static { v1 }, Lc/d/c;->f(I)I
    move-result v1
  .line 8
    new-array v2, v1, [J
  .line 9
    new-array v1, v1, [Ljava/lang/Object;
  .line 10
    iget-object v3, p0, Lc/d/d;->c:[J
    array-length v4, v3
    const/4 v5, 0
    invoke-static { v3, v5, v2, v5, v4 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  .line 11
    iget-object v3, p0, Lc/d/d;->d:[Ljava/lang/Object;
    array-length v4, v3
    invoke-static { v3, v5, v1, v5, v4 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  .line 12
    iput-object v2, p0, Lc/d/d;->c:[J
  .line 13
    iput-object v1, p0, Lc/d/d;->d:[Ljava/lang/Object;
  :L2
  .line 14
    iget-object v1, p0, Lc/d/d;->c:[J
    aput-wide p1, v1, v0
  .line 15
    iget-object p1, p0, Lc/d/d;->d:[Ljava/lang/Object;
    aput-object p3, p1, v0
    add-int/lit8 v0, v0, 1
  .line 16
    iput v0, p0, Lc/d/d;->e:I
    return-void
.end method

.method public b()V
  .registers 6
  .line 1
    iget v0, p0, Lc/d/d;->e:I
  .line 2
    iget-object v1, p0, Lc/d/d;->d:[Ljava/lang/Object;
    const/4 v2, 0
    const/4 v3, 0
  :L0
    if-ge v3, v0, :L1
    const/4 v4, 0
  .line 3
    aput-object v4, v1, v3
    add-int/lit8 v3, v3, 1
    goto :L0
  :L1
  .line 4
    iput v2, p0, Lc/d/d;->e:I
  .line 5
    iput-boolean v2, p0, Lc/d/d;->b:Z
    return-void
.end method

.method public c()Lc/d/d;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Lc/d/d<",
      "TE;>;"
    }
  .end annotation
  .catch Ljava/lang/CloneNotSupportedException; { :L0 .. :L1 } :L2
  .registers 3
  :L0
  .line 1
    invoke-super { p0 }, Ljava/lang/Object;->clone()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lc/d/d;
  .line 2
    iget-object v1, p0, Lc/d/d;->c:[J
    invoke-virtual { v1 }, [J->clone()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, [J
    iput-object v1, v0, Lc/d/d;->c:[J
  .line 3
    iget-object v1, p0, Lc/d/d;->d:[Ljava/lang/Object;
    invoke-virtual { v1 }, [Ljava/lang/Object;->clone()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, [Ljava/lang/Object;
    iput-object v1, v0, Lc/d/d;->d:[Ljava/lang/Object;
  :L1
    return-object v0
  :L2
    move-exception v0
  .line 4
    new-instance v1, Ljava/lang/AssertionError;
    invoke-direct { v1, v0 }, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
  .registers 2
  .line 1
    invoke-virtual { p0 }, Lc/d/d;->c()Lc/d/d;
    move-result-object v0
    return-object v0
.end method

.method public e(J)Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(J)TE;"
    }
  .end annotation
  .registers 4
    const/4 v0, 0
  .line 1
    invoke-virtual { p0, p1, p2, v0 }, Lc/d/d;->f(JLjava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
    return-object p1
.end method

.method public f(JLjava/lang/Object;)Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(JTE;)TE;"
    }
  .end annotation
  .registers 6
  .line 1
    iget-object v0, p0, Lc/d/d;->c:[J
    iget v1, p0, Lc/d/d;->e:I
    invoke-static { v0, v1, p1, p2 }, Lc/d/c;->b([JIJ)I
    move-result p1
    if-ltz p1, :L1
  .line 2
    iget-object p2, p0, Lc/d/d;->d:[Ljava/lang/Object;
    aget-object v0, p2, p1
    sget-object v1, Lc/d/d;->f:Ljava/lang/Object;
    if-ne v0, v1, :L0
    goto :L1
  :L0
  .line 3
    aget-object p1, p2, p1
    return-object p1
  :L1
    return-object p3
.end method

.method public g(J)I
  .registers 5
  .line 1
    iget-boolean v0, p0, Lc/d/d;->b:Z
    if-eqz v0, :L0
  .line 2
    invoke-direct { p0 }, Lc/d/d;->d()V
  :L0
  .line 3
    iget-object v0, p0, Lc/d/d;->c:[J
    iget v1, p0, Lc/d/d;->e:I
    invoke-static { v0, v1, p1, p2 }, Lc/d/c;->b([JIJ)I
    move-result p1
    return p1
.end method

.method public h(I)J
  .registers 5
  .line 1
    iget-boolean v0, p0, Lc/d/d;->b:Z
    if-eqz v0, :L0
  .line 2
    invoke-direct { p0 }, Lc/d/d;->d()V
  :L0
  .line 3
    iget-object v0, p0, Lc/d/d;->c:[J
    aget-wide v1, v0, p1
    return-wide v1
.end method

.method public i(JLjava/lang/Object;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(JTE;)V"
    }
  .end annotation
  .registers 10
  .line 1
    iget-object v0, p0, Lc/d/d;->c:[J
    iget v1, p0, Lc/d/d;->e:I
    invoke-static { v0, v1, p1, p2 }, Lc/d/c;->b([JIJ)I
    move-result v0
    if-ltz v0, :L0
  .line 2
    iget-object p1, p0, Lc/d/d;->d:[Ljava/lang/Object;
    aput-object p3, p1, v0
    goto :L5
  :L0
    xor-int/lit8 v0, v0, -1
  .line 3
    iget v1, p0, Lc/d/d;->e:I
    if-ge v0, v1, :L1
    iget-object v1, p0, Lc/d/d;->d:[Ljava/lang/Object;
    aget-object v2, v1, v0
    sget-object v3, Lc/d/d;->f:Ljava/lang/Object;
    if-ne v2, v3, :L1
  .line 4
    iget-object v2, p0, Lc/d/d;->c:[J
    aput-wide p1, v2, v0
  .line 5
    aput-object p3, v1, v0
    return-void
  :L1
  .line 6
    iget-boolean v1, p0, Lc/d/d;->b:Z
    if-eqz v1, :L2
    iget v1, p0, Lc/d/d;->e:I
    iget-object v2, p0, Lc/d/d;->c:[J
    array-length v2, v2
    if-lt v1, v2, :L2
  .line 7
    invoke-direct { p0 }, Lc/d/d;->d()V
  .line 8
    iget-object v0, p0, Lc/d/d;->c:[J
    iget v1, p0, Lc/d/d;->e:I
    invoke-static { v0, v1, p1, p2 }, Lc/d/c;->b([JIJ)I
    move-result v0
    xor-int/lit8 v0, v0, -1
  :L2
  .line 9
    iget v1, p0, Lc/d/d;->e:I
    iget-object v2, p0, Lc/d/d;->c:[J
    array-length v2, v2
    if-lt v1, v2, :L3
    add-int/lit8 v1, v1, 1
  .line 10
    invoke-static { v1 }, Lc/d/c;->f(I)I
    move-result v1
  .line 11
    new-array v2, v1, [J
  .line 12
    new-array v1, v1, [Ljava/lang/Object;
  .line 13
    iget-object v3, p0, Lc/d/d;->c:[J
    array-length v4, v3
    const/4 v5, 0
    invoke-static { v3, v5, v2, v5, v4 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  .line 14
    iget-object v3, p0, Lc/d/d;->d:[Ljava/lang/Object;
    array-length v4, v3
    invoke-static { v3, v5, v1, v5, v4 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  .line 15
    iput-object v2, p0, Lc/d/d;->c:[J
  .line 16
    iput-object v1, p0, Lc/d/d;->d:[Ljava/lang/Object;
  :L3
  .line 17
    iget v1, p0, Lc/d/d;->e:I
    sub-int v2, v1, v0
    if-eqz v2, :L4
  .line 18
    iget-object v2, p0, Lc/d/d;->c:[J
    add-int/lit8 v3, v0, 1
    sub-int/2addr v1, v0
    invoke-static { v2, v0, v2, v3, v1 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  .line 19
    iget-object v1, p0, Lc/d/d;->d:[Ljava/lang/Object;
    iget v2, p0, Lc/d/d;->e:I
    sub-int/2addr v2, v0
    invoke-static { v1, v0, v1, v3, v2 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  :L4
  .line 20
    iget-object v1, p0, Lc/d/d;->c:[J
    aput-wide p1, v1, v0
  .line 21
    iget-object p1, p0, Lc/d/d;->d:[Ljava/lang/Object;
    aput-object p3, p1, v0
  .line 22
    iget p1, p0, Lc/d/d;->e:I
    add-int/lit8 p1, p1, 1
    iput p1, p0, Lc/d/d;->e:I
  :L5
    return-void
.end method

.method public j(J)V
  .registers 5
  .line 1
    iget-object v0, p0, Lc/d/d;->c:[J
    iget v1, p0, Lc/d/d;->e:I
    invoke-static { v0, v1, p1, p2 }, Lc/d/c;->b([JIJ)I
    move-result p1
    if-ltz p1, :L0
  .line 2
    iget-object p2, p0, Lc/d/d;->d:[Ljava/lang/Object;
    aget-object v0, p2, p1
    sget-object v1, Lc/d/d;->f:Ljava/lang/Object;
    if-eq v0, v1, :L0
  .line 3
    aput-object v1, p2, p1
    const/4 p1, 1
  .line 4
    iput-boolean p1, p0, Lc/d/d;->b:Z
  :L0
    return-void
.end method

.method public k(I)V
  .registers 5
  .line 1
    iget-object v0, p0, Lc/d/d;->d:[Ljava/lang/Object;
    aget-object v1, v0, p1
    sget-object v2, Lc/d/d;->f:Ljava/lang/Object;
    if-eq v1, v2, :L0
  .line 2
    aput-object v2, v0, p1
    const/4 p1, 1
  .line 3
    iput-boolean p1, p0, Lc/d/d;->b:Z
  :L0
    return-void
.end method

.method public l()I
  .registers 2
  .line 1
    iget-boolean v0, p0, Lc/d/d;->b:Z
    if-eqz v0, :L0
  .line 2
    invoke-direct { p0 }, Lc/d/d;->d()V
  :L0
  .line 3
    iget v0, p0, Lc/d/d;->e:I
    return v0
.end method

.method public m(I)Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(I)TE;"
    }
  .end annotation
  .registers 3
  .line 1
    iget-boolean v0, p0, Lc/d/d;->b:Z
    if-eqz v0, :L0
  .line 2
    invoke-direct { p0 }, Lc/d/d;->d()V
  :L0
  .line 3
    iget-object v0, p0, Lc/d/d;->d:[Ljava/lang/Object;
    aget-object p1, v0, p1
    return-object p1
.end method

.method public toString()Ljava/lang/String;
  .registers 5
  .line 1
    invoke-virtual { p0 }, Lc/d/d;->l()I
    move-result v0
    if-gtz v0, :L0
    const-string v0, "{}"
    return-object v0
  :L0
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    iget v1, p0, Lc/d/d;->e:I
    mul-int/lit8 v1, v1, 28
    invoke-direct { v0, v1 }, Ljava/lang/StringBuilder;-><init>(I)V
    const/16 v1, 123
  .line 3
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    const/4 v1, 0
  :L1
  .line 4
    iget v2, p0, Lc/d/d;->e:I
    if-ge v1, v2, :L5
    if-lez v1, :L2
    const-string v2, ", "
  .line 5
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L2
  .line 6
    invoke-virtual { p0, v1 }, Lc/d/d;->h(I)J
    move-result-wide v2
  .line 7
    invoke-virtual { v0, v2, v3 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    const/16 v2, 61
  .line 8
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
  .line 9
    invoke-virtual { p0, v1 }, Lc/d/d;->m(I)Ljava/lang/Object;
    move-result-object v2
    if-eq v2, p0, :L3
  .line 10
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    goto :L4
  :L3
    const-string v2, "(this Map)"
  .line 11
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L4
    add-int/lit8 v1, v1, 1
    goto :L1
  :L5
    const/16 v1, 125
  .line 12
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
  .line 13
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method
