.class Landroidx/media/AudioAttributesImplBase;
.super Ljava/lang/Object;
.implements Landroidx/media/AudioAttributesImpl;
.source "SourceFile"

.field a:I

.field b:I

.field c:I

.field d:I

.method constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 0
  .line 2
    iput v0, p0, Landroidx/media/AudioAttributesImplBase;->a:I
  .line 3
    iput v0, p0, Landroidx/media/AudioAttributesImplBase;->b:I
  .line 4
    iput v0, p0, Landroidx/media/AudioAttributesImplBase;->c:I
    const/4 v0, -1
  .line 5
    iput v0, p0, Landroidx/media/AudioAttributesImplBase;->d:I
    return-void
.end method

.method public a()I
  .registers 2
  .line 1
    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->b:I
    return v0
.end method

.method public b()I
  .registers 4
  .line 1
    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->c:I
  .line 2
    invoke-virtual { p0 }, Landroidx/media/AudioAttributesImplBase;->c()I
    move-result v1
    const/4 v2, 6
    if-ne v1, v2, :L0
    or-int/lit8 v0, v0, 4
    goto :L1
  :L0
    const/4 v2, 7
    if-ne v1, v2, :L1
    or-int/lit8 v0, v0, 1
  :L1
    and-int/lit16 v0, v0, 273
    return v0
.end method

.method public c()I
  .registers 4
  .line 1
    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->d:I
    const/4 v1, -1
    if-eq v0, v1, :L0
    return v0
  :L0
    const/4 v0, 0
  .line 2
    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->c:I
    iget v2, p0, Landroidx/media/AudioAttributesImplBase;->a:I
    invoke-static { v0, v1, v2 }, Landroidx/media/AudioAttributesCompat;->a(ZII)I
    move-result v0
    return v0
.end method

.method public d()I
  .registers 2
  .line 1
    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->a:I
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
  .registers 5
  .line 1
    instance-of v0, p1, Landroidx/media/AudioAttributesImplBase;
    const/4 v1, 0
    if-nez v0, :L0
    return v1
  :L0
  .line 2
    check-cast p1, Landroidx/media/AudioAttributesImplBase;
  .line 3
    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->b:I
    invoke-virtual { p1 }, Landroidx/media/AudioAttributesImplBase;->a()I
    move-result v2
    if-ne v0, v2, :L1
    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->c:I
  .line 4
    invoke-virtual { p1 }, Landroidx/media/AudioAttributesImplBase;->b()I
    move-result v2
    if-ne v0, v2, :L1
    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->a:I
  .line 5
    invoke-virtual { p1 }, Landroidx/media/AudioAttributesImplBase;->d()I
    move-result v2
    if-ne v0, v2, :L1
    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->d:I
    iget p1, p1, Landroidx/media/AudioAttributesImplBase;->d:I
    if-ne v0, p1, :L1
    const/4 v1, 1
  :L1
    return v1
.end method

.method public hashCode()I
  .registers 4
    const/4 v0, 4
    new-array v0, v0, [Ljava/lang/Object;
  .line 1
    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->b:I
    invoke-static { v1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    const/4 v2, 0
    aput-object v1, v0, v2
    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->c:I
    invoke-static { v1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    const/4 v2, 1
    aput-object v1, v0, v2
    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->a:I
    invoke-static { v1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    const/4 v2, 2
    aput-object v1, v0, v2
    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->d:I
    invoke-static { v1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    const/4 v2, 3
    aput-object v1, v0, v2
    invoke-static { v0 }, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I
    move-result v0
    return v0
.end method

.method public toString()Ljava/lang/String;
  .registers 4
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    const-string v1, "AudioAttributesCompat:"
    invoke-direct { v0, v1 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
  .line 2
    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->d:I
    const/4 v2, -1
    if-eq v1, v2, :L0
    const-string v1, " stream="
  .line 3
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->d:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, " derived"
  .line 4
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L0
    const-string v1, " usage="
  .line 5
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->a:I
  .line 6
    invoke-static { v1 }, Landroidx/media/AudioAttributesCompat;->b(I)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, " content="
  .line 7
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->b:I
  .line 8
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, " flags=0x"
  .line 9
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->c:I
  .line 10
    invoke-static { v1 }, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 11
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method
