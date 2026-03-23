.class public Lcom/yalantis/ucrop/model/ExifInfo;
.super Ljava/lang/Object;
.source "SourceFile"

.field private mExifDegrees:I

.field private mExifOrientation:I

.field private mExifTranslation:I

.method public constructor <init>(III)V
  .registers 4
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput p1, p0, Lcom/yalantis/ucrop/model/ExifInfo;->mExifOrientation:I
  .line 3
    iput p2, p0, Lcom/yalantis/ucrop/model/ExifInfo;->mExifDegrees:I
  .line 4
    iput p3, p0, Lcom/yalantis/ucrop/model/ExifInfo;->mExifTranslation:I
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
  .registers 6
    const/4 v0, 1
    if-ne p0, p1, :L0
    return v0
  :L0
    const/4 v1, 0
    if-eqz p1, :L6
  .line 1
    const-class v2, Lcom/yalantis/ucrop/model/ExifInfo;
    invoke-virtual { p1 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v3
    if-eq v2, v3, :L1
    goto :L6
  :L1
  .line 2
    check-cast p1, Lcom/yalantis/ucrop/model/ExifInfo;
  .line 3
    iget v2, p0, Lcom/yalantis/ucrop/model/ExifInfo;->mExifOrientation:I
    iget v3, p1, Lcom/yalantis/ucrop/model/ExifInfo;->mExifOrientation:I
    if-eq v2, v3, :L2
    return v1
  :L2
  .line 4
    iget v2, p0, Lcom/yalantis/ucrop/model/ExifInfo;->mExifDegrees:I
    iget v3, p1, Lcom/yalantis/ucrop/model/ExifInfo;->mExifDegrees:I
    if-eq v2, v3, :L3
    return v1
  :L3
  .line 5
    iget v2, p0, Lcom/yalantis/ucrop/model/ExifInfo;->mExifTranslation:I
    iget p1, p1, Lcom/yalantis/ucrop/model/ExifInfo;->mExifTranslation:I
    if-ne v2, p1, :L4
    goto :L5
  :L4
    const/4 v0, 0
  :L5
    return v0
  :L6
    return v1
.end method

.method public getExifDegrees()I
  .registers 2
  .line 1
    iget v0, p0, Lcom/yalantis/ucrop/model/ExifInfo;->mExifDegrees:I
    return v0
.end method

.method public getExifOrientation()I
  .registers 2
  .line 1
    iget v0, p0, Lcom/yalantis/ucrop/model/ExifInfo;->mExifOrientation:I
    return v0
.end method

.method public getExifTranslation()I
  .registers 2
  .line 1
    iget v0, p0, Lcom/yalantis/ucrop/model/ExifInfo;->mExifTranslation:I
    return v0
.end method

.method public hashCode()I
  .registers 3
  .line 1
    iget v0, p0, Lcom/yalantis/ucrop/model/ExifInfo;->mExifOrientation:I
    mul-int/lit8 v0, v0, 31
  .line 2
    iget v1, p0, Lcom/yalantis/ucrop/model/ExifInfo;->mExifDegrees:I
    add-int/2addr v0, v1
    mul-int/lit8 v0, v0, 31
  .line 3
    iget v1, p0, Lcom/yalantis/ucrop/model/ExifInfo;->mExifTranslation:I
    add-int/2addr v0, v1
    return v0
.end method

.method public setExifDegrees(I)V
  .registers 2
  .line 1
    iput p1, p0, Lcom/yalantis/ucrop/model/ExifInfo;->mExifDegrees:I
    return-void
.end method

.method public setExifOrientation(I)V
  .registers 2
  .line 1
    iput p1, p0, Lcom/yalantis/ucrop/model/ExifInfo;->mExifOrientation:I
    return-void
.end method

.method public setExifTranslation(I)V
  .registers 2
  .line 1
    iput p1, p0, Lcom/yalantis/ucrop/model/ExifInfo;->mExifTranslation:I
    return-void
.end method
