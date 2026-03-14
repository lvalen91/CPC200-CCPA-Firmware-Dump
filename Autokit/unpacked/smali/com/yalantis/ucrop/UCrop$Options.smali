.class public Lcom/yalantis/ucrop/UCrop$Options;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcom/yalantis/ucrop/UCrop;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 9
  name = "Options"
.end annotation

.field public final static EXTRA_ALLOWED_GESTURES:Ljava/lang/String; = "com.yalantis.ucrop.AllowedGestures"

.field public final static EXTRA_ASPECT_RATIO_OPTIONS:Ljava/lang/String; = "com.yalantis.ucrop.AspectRatioOptions"

.field public final static EXTRA_ASPECT_RATIO_SELECTED_BY_DEFAULT:Ljava/lang/String; = "com.yalantis.ucrop.AspectRatioSelectedByDefault"

.field public final static EXTRA_CIRCLE_DIMMED_LAYER:Ljava/lang/String; = "com.yalantis.ucrop.CircleDimmedLayer"

.field public final static EXTRA_COMPRESSION_FORMAT_NAME:Ljava/lang/String; = "com.yalantis.ucrop.CompressionFormatName"

.field public final static EXTRA_COMPRESSION_QUALITY:Ljava/lang/String; = "com.yalantis.ucrop.CompressionQuality"

.field public final static EXTRA_CROP_FRAME_COLOR:Ljava/lang/String; = "com.yalantis.ucrop.CropFrameColor"

.field public final static EXTRA_CROP_FRAME_STROKE_WIDTH:Ljava/lang/String; = "com.yalantis.ucrop.CropFrameStrokeWidth"

.field public final static EXTRA_CROP_GRID_COLOR:Ljava/lang/String; = "com.yalantis.ucrop.CropGridColor"

.field public final static EXTRA_CROP_GRID_COLUMN_COUNT:Ljava/lang/String; = "com.yalantis.ucrop.CropGridColumnCount"

.field public final static EXTRA_CROP_GRID_ROW_COUNT:Ljava/lang/String; = "com.yalantis.ucrop.CropGridRowCount"

.field public final static EXTRA_CROP_GRID_STROKE_WIDTH:Ljava/lang/String; = "com.yalantis.ucrop.CropGridStrokeWidth"

.field public final static EXTRA_DIMMED_LAYER_COLOR:Ljava/lang/String; = "com.yalantis.ucrop.DimmedLayerColor"

.field public final static EXTRA_FREE_STYLE_CROP:Ljava/lang/String; = "com.yalantis.ucrop.FreeStyleCrop"

.field public final static EXTRA_HIDE_BOTTOM_CONTROLS:Ljava/lang/String; = "com.yalantis.ucrop.HideBottomControls"

.field public final static EXTRA_IMAGE_TO_CROP_BOUNDS_ANIM_DURATION:Ljava/lang/String; = "com.yalantis.ucrop.ImageToCropBoundsAnimDuration"

.field public final static EXTRA_MAX_BITMAP_SIZE:Ljava/lang/String; = "com.yalantis.ucrop.MaxBitmapSize"

.field public final static EXTRA_MAX_SCALE_MULTIPLIER:Ljava/lang/String; = "com.yalantis.ucrop.MaxScaleMultiplier"

.field public final static EXTRA_SHOW_CROP_FRAME:Ljava/lang/String; = "com.yalantis.ucrop.ShowCropFrame"

.field public final static EXTRA_SHOW_CROP_GRID:Ljava/lang/String; = "com.yalantis.ucrop.ShowCropGrid"

.field public final static EXTRA_STATUS_BAR_COLOR:Ljava/lang/String; = "com.yalantis.ucrop.StatusBarColor"

.field public final static EXTRA_TOOL_BAR_COLOR:Ljava/lang/String; = "com.yalantis.ucrop.ToolbarColor"

.field public final static EXTRA_UCROP_COLOR_WIDGET_ACTIVE:Ljava/lang/String; = "com.yalantis.ucrop.UcropColorWidgetActive"

.field public final static EXTRA_UCROP_LOGO_COLOR:Ljava/lang/String; = "com.yalantis.ucrop.UcropLogoColor"

.field public final static EXTRA_UCROP_TITLE_TEXT_TOOLBAR:Ljava/lang/String; = "com.yalantis.ucrop.UcropToolbarTitleText"

.field public final static EXTRA_UCROP_WIDGET_COLOR_TOOLBAR:Ljava/lang/String; = "com.yalantis.ucrop.UcropToolbarWidgetColor"

.field private final mOptionBundle:Landroid/os/Bundle;

.method public constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Landroid/os/Bundle;
    invoke-direct { v0 }, Landroid/os/Bundle;-><init>()V
    iput-object v0, p0, Lcom/yalantis/ucrop/UCrop$Options;->mOptionBundle:Landroid/os/Bundle;
    return-void
.end method

.method public getOptionBundle()Landroid/os/Bundle;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/UCrop$Options;->mOptionBundle:Landroid/os/Bundle;
    return-object v0
.end method

.method public setActiveWidgetColor(I)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/UCrop$Options;->mOptionBundle:Landroid/os/Bundle;
    const-string v1, "com.yalantis.ucrop.UcropColorWidgetActive"
    invoke-virtual { v0, v1, p1 }, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    return-void
.end method

.method public setAllowedGestures(III)V
  .registers 7
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/UCrop$Options;->mOptionBundle:Landroid/os/Bundle;
    const/4 v1, 3
    new-array v1, v1, [I
    const/4 v2, 0
    aput p1, v1, v2
    const/4 p1, 1
    aput p2, v1, p1
    const/4 p1, 2
    aput p3, v1, p1
    const-string p1, "com.yalantis.ucrop.AllowedGestures"
    invoke-virtual { v0, p1, v1 }, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V
    return-void
.end method

.method public varargs setAspectRatioOptions(I[Lcom/yalantis/ucrop/model/AspectRatio;)V
  .registers 7
  .line 1
    array-length v0, p2
    if-gt p1, v0, :L0
  .line 2
    iget-object v0, p0, Lcom/yalantis/ucrop/UCrop$Options;->mOptionBundle:Landroid/os/Bundle;
    const-string v1, "com.yalantis.ucrop.AspectRatioSelectedByDefault"
    invoke-virtual { v0, v1, p1 }, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
  .line 3
    iget-object p1, p0, Lcom/yalantis/ucrop/UCrop$Options;->mOptionBundle:Landroid/os/Bundle;
    new-instance v0, Ljava/util/ArrayList;
    invoke-static { p2 }, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    move-result-object p2
    invoke-direct { v0, p2 }, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    const-string p2, "com.yalantis.ucrop.AspectRatioOptions"
    invoke-virtual { p1, p2, v0 }, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    return-void
  :L0
  .line 4
    new-instance v0, Ljava/lang/IllegalArgumentException;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;
    const/4 v2, 2
    new-array v2, v2, [Ljava/lang/Object;
    const/4 v3, 0
  .line 5
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p1
    aput-object p1, v2, v3
    const/4 p1, 1
    array-length p2, p2
    invoke-static { p2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p2
    aput-object p2, v2, p1
    const-string p1, "Index [selectedByDefault = %d] cannot be higher than aspect ratio options count [count = %d]."
  .line 6
    invoke-static { v1, p1, v2 }, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public setCircleDimmedLayer(Z)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/UCrop$Options;->mOptionBundle:Landroid/os/Bundle;
    const-string v1, "com.yalantis.ucrop.CircleDimmedLayer"
    invoke-virtual { v0, v1, p1 }, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    return-void
.end method

.method public setCompressionFormat(Landroid/graphics/Bitmap$CompressFormat;)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/UCrop$Options;->mOptionBundle:Landroid/os/Bundle;
    invoke-virtual { p1 }, Landroid/graphics/Bitmap$CompressFormat;->name()Ljava/lang/String;
    move-result-object p1
    const-string v1, "com.yalantis.ucrop.CompressionFormatName"
    invoke-virtual { v0, v1, p1 }, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    return-void
.end method

.method public setCompressionQuality(I)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/UCrop$Options;->mOptionBundle:Landroid/os/Bundle;
    const-string v1, "com.yalantis.ucrop.CompressionQuality"
    invoke-virtual { v0, v1, p1 }, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    return-void
.end method

.method public setCropFrameColor(I)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/UCrop$Options;->mOptionBundle:Landroid/os/Bundle;
    const-string v1, "com.yalantis.ucrop.CropFrameColor"
    invoke-virtual { v0, v1, p1 }, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    return-void
.end method

.method public setCropFrameStrokeWidth(I)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/UCrop$Options;->mOptionBundle:Landroid/os/Bundle;
    const-string v1, "com.yalantis.ucrop.CropFrameStrokeWidth"
    invoke-virtual { v0, v1, p1 }, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    return-void
.end method

.method public setCropGridColor(I)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/UCrop$Options;->mOptionBundle:Landroid/os/Bundle;
    const-string v1, "com.yalantis.ucrop.CropGridColor"
    invoke-virtual { v0, v1, p1 }, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    return-void
.end method

.method public setCropGridColumnCount(I)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/UCrop$Options;->mOptionBundle:Landroid/os/Bundle;
    const-string v1, "com.yalantis.ucrop.CropGridColumnCount"
    invoke-virtual { v0, v1, p1 }, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    return-void
.end method

.method public setCropGridRowCount(I)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/UCrop$Options;->mOptionBundle:Landroid/os/Bundle;
    const-string v1, "com.yalantis.ucrop.CropGridRowCount"
    invoke-virtual { v0, v1, p1 }, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    return-void
.end method

.method public setCropGridStrokeWidth(I)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/UCrop$Options;->mOptionBundle:Landroid/os/Bundle;
    const-string v1, "com.yalantis.ucrop.CropGridStrokeWidth"
    invoke-virtual { v0, v1, p1 }, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    return-void
.end method

.method public setDimmedLayerColor(I)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/UCrop$Options;->mOptionBundle:Landroid/os/Bundle;
    const-string v1, "com.yalantis.ucrop.DimmedLayerColor"
    invoke-virtual { v0, v1, p1 }, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    return-void
.end method

.method public setFreeStyleCropEnabled(Z)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/UCrop$Options;->mOptionBundle:Landroid/os/Bundle;
    const-string v1, "com.yalantis.ucrop.FreeStyleCrop"
    invoke-virtual { v0, v1, p1 }, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    return-void
.end method

.method public setHideBottomControls(Z)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/UCrop$Options;->mOptionBundle:Landroid/os/Bundle;
    const-string v1, "com.yalantis.ucrop.HideBottomControls"
    invoke-virtual { v0, v1, p1 }, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    return-void
.end method

.method public setImageToCropBoundsAnimDuration(I)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/UCrop$Options;->mOptionBundle:Landroid/os/Bundle;
    const-string v1, "com.yalantis.ucrop.ImageToCropBoundsAnimDuration"
    invoke-virtual { v0, v1, p1 }, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    return-void
.end method

.method public setLogoColor(I)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/UCrop$Options;->mOptionBundle:Landroid/os/Bundle;
    const-string v1, "com.yalantis.ucrop.UcropLogoColor"
    invoke-virtual { v0, v1, p1 }, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    return-void
.end method

.method public setMaxBitmapSize(I)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/UCrop$Options;->mOptionBundle:Landroid/os/Bundle;
    const-string v1, "com.yalantis.ucrop.MaxBitmapSize"
    invoke-virtual { v0, v1, p1 }, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    return-void
.end method

.method public setMaxScaleMultiplier(F)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/UCrop$Options;->mOptionBundle:Landroid/os/Bundle;
    const-string v1, "com.yalantis.ucrop.MaxScaleMultiplier"
    invoke-virtual { v0, v1, p1 }, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V
    return-void
.end method

.method public setShowCropFrame(Z)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/UCrop$Options;->mOptionBundle:Landroid/os/Bundle;
    const-string v1, "com.yalantis.ucrop.ShowCropFrame"
    invoke-virtual { v0, v1, p1 }, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    return-void
.end method

.method public setShowCropGrid(Z)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/UCrop$Options;->mOptionBundle:Landroid/os/Bundle;
    const-string v1, "com.yalantis.ucrop.ShowCropGrid"
    invoke-virtual { v0, v1, p1 }, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    return-void
.end method

.method public setStatusBarColor(I)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/UCrop$Options;->mOptionBundle:Landroid/os/Bundle;
    const-string v1, "com.yalantis.ucrop.StatusBarColor"
    invoke-virtual { v0, v1, p1 }, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    return-void
.end method

.method public setToolbarColor(I)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/UCrop$Options;->mOptionBundle:Landroid/os/Bundle;
    const-string v1, "com.yalantis.ucrop.ToolbarColor"
    invoke-virtual { v0, v1, p1 }, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    return-void
.end method

.method public setToolbarTitle(Ljava/lang/String;)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/UCrop$Options;->mOptionBundle:Landroid/os/Bundle;
    const-string v1, "com.yalantis.ucrop.UcropToolbarTitleText"
    invoke-virtual { v0, v1, p1 }, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    return-void
.end method

.method public setToolbarWidgetColor(I)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/UCrop$Options;->mOptionBundle:Landroid/os/Bundle;
    const-string v1, "com.yalantis.ucrop.UcropToolbarWidgetColor"
    invoke-virtual { v0, v1, p1 }, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    return-void
.end method

.method public useSourceImageAspectRatio()V
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/UCrop$Options;->mOptionBundle:Landroid/os/Bundle;
    const-string v1, "com.yalantis.ucrop.AspectRatioX"
    const/4 v2, 0
    invoke-virtual { v0, v1, v2 }, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V
  .line 2
    iget-object v0, p0, Lcom/yalantis/ucrop/UCrop$Options;->mOptionBundle:Landroid/os/Bundle;
    const-string v1, "com.yalantis.ucrop.AspectRatioY"
    invoke-virtual { v0, v1, v2 }, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V
    return-void
.end method

.method public withAspectRatio(FF)V
  .registers 5
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/UCrop$Options;->mOptionBundle:Landroid/os/Bundle;
    const-string v1, "com.yalantis.ucrop.AspectRatioX"
    invoke-virtual { v0, v1, p1 }, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V
  .line 2
    iget-object p1, p0, Lcom/yalantis/ucrop/UCrop$Options;->mOptionBundle:Landroid/os/Bundle;
    const-string v0, "com.yalantis.ucrop.AspectRatioY"
    invoke-virtual { p1, v0, p2 }, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V
    return-void
.end method

.method public withMaxResultSize(II)V
  .registers 5
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/UCrop$Options;->mOptionBundle:Landroid/os/Bundle;
    const-string v1, "com.yalantis.ucrop.MaxSizeX"
    invoke-virtual { v0, v1, p1 }, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
  .line 2
    iget-object p1, p0, Lcom/yalantis/ucrop/UCrop$Options;->mOptionBundle:Landroid/os/Bundle;
    const-string v0, "com.yalantis.ucrop.MaxSizeY"
    invoke-virtual { p1, v0, p2 }, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    return-void
.end method
