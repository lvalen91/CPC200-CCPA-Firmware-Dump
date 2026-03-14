.class public Lcom/yalantis/ucrop/model/CropParameters;
.super Ljava/lang/Object;
.source "SourceFile"

.field private mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private mCompressQuality:I

.field private mExifInfo:Lcom/yalantis/ucrop/model/ExifInfo;

.field private mImageInputPath:Ljava/lang/String;

.field private mImageOutputPath:Ljava/lang/String;

.field private mMaxResultImageSizeX:I

.field private mMaxResultImageSizeY:I

.method public constructor <init>(IILandroid/graphics/Bitmap$CompressFormat;ILjava/lang/String;Ljava/lang/String;Lcom/yalantis/ucrop/model/ExifInfo;)V
  .registers 8
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput p1, p0, Lcom/yalantis/ucrop/model/CropParameters;->mMaxResultImageSizeX:I
  .line 3
    iput p2, p0, Lcom/yalantis/ucrop/model/CropParameters;->mMaxResultImageSizeY:I
  .line 4
    iput-object p3, p0, Lcom/yalantis/ucrop/model/CropParameters;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;
  .line 5
    iput p4, p0, Lcom/yalantis/ucrop/model/CropParameters;->mCompressQuality:I
  .line 6
    iput-object p5, p0, Lcom/yalantis/ucrop/model/CropParameters;->mImageInputPath:Ljava/lang/String;
  .line 7
    iput-object p6, p0, Lcom/yalantis/ucrop/model/CropParameters;->mImageOutputPath:Ljava/lang/String;
  .line 8
    iput-object p7, p0, Lcom/yalantis/ucrop/model/CropParameters;->mExifInfo:Lcom/yalantis/ucrop/model/ExifInfo;
    return-void
.end method

.method public getCompressFormat()Landroid/graphics/Bitmap$CompressFormat;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/model/CropParameters;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;
    return-object v0
.end method

.method public getCompressQuality()I
  .registers 2
  .line 1
    iget v0, p0, Lcom/yalantis/ucrop/model/CropParameters;->mCompressQuality:I
    return v0
.end method

.method public getExifInfo()Lcom/yalantis/ucrop/model/ExifInfo;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/model/CropParameters;->mExifInfo:Lcom/yalantis/ucrop/model/ExifInfo;
    return-object v0
.end method

.method public getImageInputPath()Ljava/lang/String;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/model/CropParameters;->mImageInputPath:Ljava/lang/String;
    return-object v0
.end method

.method public getImageOutputPath()Ljava/lang/String;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/model/CropParameters;->mImageOutputPath:Ljava/lang/String;
    return-object v0
.end method

.method public getMaxResultImageSizeX()I
  .registers 2
  .line 1
    iget v0, p0, Lcom/yalantis/ucrop/model/CropParameters;->mMaxResultImageSizeX:I
    return v0
.end method

.method public getMaxResultImageSizeY()I
  .registers 2
  .line 1
    iget v0, p0, Lcom/yalantis/ucrop/model/CropParameters;->mMaxResultImageSizeY:I
    return v0
.end method
