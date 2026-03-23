.class public final Ld/c/b/d/d/a;
.super Ljava/lang/Object;
.source "SourceFile"

.field public final static g:Ld/c/b/d/d/a;

.field public final static h:Ld/c/b/d/d/a;

.field private final a:[I

.field private final b:[I

.field private final c:Ld/c/b/d/d/b;

.field private final d:I

.field private final e:I

.field private final f:I

.method static constructor <clinit>()V
  .registers 5
  .line 1
    new-instance v0, Ld/c/b/d/d/a;
    const/16 v1, 4201
    const/16 v2, 4096
    const/4 v3, 1
    invoke-direct { v0, v1, v2, v3 }, Ld/c/b/d/d/a;-><init>(III)V
  .line 2
    new-instance v0, Ld/c/b/d/d/a;
    const/16 v1, 1033
    const/16 v2, 1024
    invoke-direct { v0, v1, v2, v3 }, Ld/c/b/d/d/a;-><init>(III)V
  .line 3
    new-instance v0, Ld/c/b/d/d/a;
    const/16 v1, 67
    const/16 v2, 64
    invoke-direct { v0, v1, v2, v3 }, Ld/c/b/d/d/a;-><init>(III)V
    sput-object v0, Ld/c/b/d/d/a;->g:Ld/c/b/d/d/a;
  .line 4
    new-instance v0, Ld/c/b/d/d/a;
    const/16 v1, 19
    const/16 v2, 16
    invoke-direct { v0, v1, v2, v3 }, Ld/c/b/d/d/a;-><init>(III)V
  .line 5
    new-instance v0, Ld/c/b/d/d/a;
    const/16 v1, 285
    const/16 v2, 256
    const/4 v4, 0
    invoke-direct { v0, v1, v2, v4 }, Ld/c/b/d/d/a;-><init>(III)V
    sput-object v0, Ld/c/b/d/d/a;->h:Ld/c/b/d/d/a;
  .line 6
    new-instance v0, Ld/c/b/d/d/a;
    const/16 v1, 301
    invoke-direct { v0, v1, v2, v3 }, Ld/c/b/d/d/a;-><init>(III)V
    return-void
.end method

.method public constructor <init>(III)V
  .registers 8
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput p1, p0, Ld/c/b/d/d/a;->e:I
  .line 3
    iput p2, p0, Ld/c/b/d/d/a;->d:I
  .line 4
    iput p3, p0, Ld/c/b/d/d/a;->f:I
  .line 5
    new-array p3, p2, [I
    iput-object p3, p0, Ld/c/b/d/d/a;->a:[I
  .line 6
    new-array p3, p2, [I
    iput-object p3, p0, Ld/c/b/d/d/a;->b:[I
    const/4 p3, 0
    const/4 v0, 1
    const/4 v1, 0
    const/4 v2, 1
  :L0
    if-ge v1, p2, :L2
  .line 7
    iget-object v3, p0, Ld/c/b/d/d/a;->a:[I
    aput v2, v3, v1
    shl-int/2addr v2, v0
    if-lt v2, p2, :L1
    xor-int/2addr v2, p1
    add-int/lit8 v3, p2, -1
    and-int/2addr v2, v3
  :L1
    add-int/lit8 v1, v1, 1
    goto :L0
  :L2
    const/4 p1, 0
  :L3
    add-int/lit8 v1, p2, -1
    if-ge p1, v1, :L4
  .line 8
    iget-object v1, p0, Ld/c/b/d/d/a;->b:[I
    iget-object v2, p0, Ld/c/b/d/d/a;->a:[I
    aget v2, v2, p1
    aput p1, v1, v2
    add-int/lit8 p1, p1, 1
    goto :L3
  :L4
  .line 9
    new-instance p1, Ld/c/b/d/d/b;
    new-array p2, v0, [I
    aput p3, p2, p3
    invoke-direct { p1, p0, p2 }, Ld/c/b/d/d/b;-><init>(Ld/c/b/d/d/a;[I)V
    iput-object p1, p0, Ld/c/b/d/d/a;->c:Ld/c/b/d/d/b;
  .line 10
    new-instance p1, Ld/c/b/d/d/b;
    new-array p2, v0, [I
    aput v0, p2, p3
    invoke-direct { p1, p0, p2 }, Ld/c/b/d/d/b;-><init>(Ld/c/b/d/d/a;[I)V
    return-void
.end method

.method static a(II)I
  .registers 2
    xor-int/2addr p0, p1
    return p0
.end method

.method b(II)Ld/c/b/d/d/b;
  .registers 4
    if-ltz p1, :L1
    if-nez p2, :L0
  .line 1
    iget-object p1, p0, Ld/c/b/d/d/a;->c:Ld/c/b/d/d/b;
    return-object p1
  :L0
    add-int/lit8 p1, p1, 1
  .line 2
    new-array p1, p1, [I
    const/4 v0, 0
  .line 3
    aput p2, p1, v0
  .line 4
    new-instance p2, Ld/c/b/d/d/b;
    invoke-direct { p2, p0, p1 }, Ld/c/b/d/d/b;-><init>(Ld/c/b/d/d/a;[I)V
    return-object p2
  :L1
  .line 5
    new-instance p1, Ljava/lang/IllegalArgumentException;
    invoke-direct { p1 }, Ljava/lang/IllegalArgumentException;-><init>()V
    throw p1
.end method

.method c(I)I
  .registers 3
  .line 1
    iget-object v0, p0, Ld/c/b/d/d/a;->a:[I
    aget p1, v0, p1
    return p1
.end method

.method public d()I
  .registers 2
  .line 1
    iget v0, p0, Ld/c/b/d/d/a;->f:I
    return v0
.end method

.method e()Ld/c/b/d/d/b;
  .registers 2
  .line 1
    iget-object v0, p0, Ld/c/b/d/d/a;->c:Ld/c/b/d/d/b;
    return-object v0
.end method

.method f(I)I
  .registers 5
    if-eqz p1, :L0
  .line 1
    iget-object v0, p0, Ld/c/b/d/d/a;->a:[I
    iget v1, p0, Ld/c/b/d/d/a;->d:I
    iget-object v2, p0, Ld/c/b/d/d/a;->b:[I
    aget p1, v2, p1
    sub-int/2addr v1, p1
    add-int/lit8 v1, v1, -1
    aget p1, v0, v1
    return p1
  :L0
  .line 2
    new-instance p1, Ljava/lang/ArithmeticException;
    invoke-direct { p1 }, Ljava/lang/ArithmeticException;-><init>()V
    throw p1
.end method

.method g(I)I
  .registers 3
    if-eqz p1, :L0
  .line 1
    iget-object v0, p0, Ld/c/b/d/d/a;->b:[I
    aget p1, v0, p1
    return p1
  :L0
  .line 2
    new-instance p1, Ljava/lang/IllegalArgumentException;
    invoke-direct { p1 }, Ljava/lang/IllegalArgumentException;-><init>()V
    throw p1
.end method

.method h(II)I
  .registers 5
    if-eqz p1, :L1
    if-nez p2, :L0
    goto :L1
  :L0
  .line 1
    iget-object v0, p0, Ld/c/b/d/d/a;->a:[I
    iget-object v1, p0, Ld/c/b/d/d/a;->b:[I
    aget p1, v1, p1
    aget p2, v1, p2
    add-int/2addr p1, p2
    iget p2, p0, Ld/c/b/d/d/a;->d:I
    add-int/lit8 p2, p2, -1
    rem-int/2addr p1, p2
    aget p1, v0, p1
    return p1
  :L1
    const/4 p1, 0
    return p1
.end method

.method public toString()Ljava/lang/String;
  .registers 3
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    const-string v1, "GF(0x"
    invoke-direct { v0, v1 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    iget v1, p0, Ld/c/b/d/d/a;->e:I
    invoke-static { v1 }, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const/16 v1, 44
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    iget v1, p0, Ld/c/b/d/d/a;->d:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const/16 v1, 41
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method
