.class public Lcom/yalantis/ucrop/util/BitmapLoadUtils;
.super Ljava/lang/Object;
.source "SourceFile"

.field private final static TAG:Ljava/lang/String; = "BitmapLoadUtils"

.method public constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
  .registers 6
  .line 1
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I
  .line 2
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    const/4 v1, 1
    if-gt v0, p2, :L0
    if-le p0, p1, :L1
  :L0
  .line 3
    div-int v2, v0, v1
    if-gt v2, p2, :L2
    div-int v2, p0, v1
    if-le v2, p1, :L1
    goto :L2
  :L1
    return v1
  :L2
    mul-int/lit8 v1, v1, 2
    goto :L0
.end method

.method public static calculateMaxBitmapSize(Landroid/content/Context;)I
  .registers 9
    const-string v0, "window"
  .line 1
    invoke-virtual { p0, v0 }, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object p0
    check-cast p0, Landroid/view/WindowManager;
  .line 2
    invoke-interface { p0 }, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
    move-result-object p0
  .line 3
    new-instance v0, Landroid/graphics/Point;
    invoke-direct { v0 }, Landroid/graphics/Point;-><init>()V
  .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 13
    if-lt v1, v2, :L0
  .line 5
    invoke-virtual { p0, v0 }, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V
  .line 6
    iget p0, v0, Landroid/graphics/Point;->x:I
  .line 7
    iget v0, v0, Landroid/graphics/Point;->y:I
    goto :L1
  :L0
  .line 8
    invoke-virtual { p0 }, Landroid/view/Display;->getWidth()I
    move-result v0
  .line 9
    invoke-virtual { p0 }, Landroid/view/Display;->getHeight()I
    move-result p0
    move v7, v0
    move v0, p0
    move p0, v7
  :L1
    int-to-double v1, p0
    const-wide/high16 v3, 16384
  .line 10
    invoke-static { v1, v2, v3, v4 }, Ljava/lang/Math;->pow(DD)D
    move-result-wide v1
    int-to-double v5, v0
    invoke-static { v5, v6, v3, v4 }, Ljava/lang/Math;->pow(DD)D
    move-result-wide v3
    add-double/2addr v1, v3
    invoke-static { v1, v2 }, Ljava/lang/Math;->sqrt(D)D
    move-result-wide v0
    double-to-int p0, v0
  .line 11
    new-instance v0, Landroid/graphics/Canvas;
    invoke-direct { v0 }, Landroid/graphics/Canvas;-><init>()V
  .line 12
    invoke-virtual { v0 }, Landroid/graphics/Canvas;->getMaximumBitmapWidth()I
    move-result v1
    invoke-virtual { v0 }, Landroid/graphics/Canvas;->getMaximumBitmapHeight()I
    move-result v0
    invoke-static { v1, v0 }, Ljava/lang/Math;->min(II)I
    move-result v0
    if-lez v0, :L2
  .line 13
    invoke-static { p0, v0 }, Ljava/lang/Math;->min(II)I
    move-result p0
  :L2
  .line 14
    invoke-static { }, Lcom/yalantis/ucrop/util/EglUtils;->getMaxTextureSize()I
    move-result v0
    if-lez v0, :L3
  .line 15
    invoke-static { p0, v0 }, Ljava/lang/Math;->min(II)I
    move-result p0
  :L3
  .line 16
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "maxBitmapSize: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    return p0
.end method

.method public static close(Ljava/io/Closeable;)V
  .catch Ljava/io/IOException; { :L0 .. :L1 } :L1
  .registers 2
    if-eqz p0, :L1
  .line 1
    instance-of v0, p0, Ljava/io/Closeable;
    if-eqz v0, :L1
  :L0
  .line 2
    invoke-interface { p0 }, Ljava/io/Closeable;->close()V
  :L1
    return-void
.end method

.method public static decodeBitmapInBackground(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;IILcom/yalantis/ucrop/callback/BitmapLoadCallback;)V
  .registers 14
  .line 1
    new-instance v7, Lcom/yalantis/ucrop/task/BitmapLoadTask;
    move-object v0, v7
    move-object v1, p0
    move-object v2, p1
    move-object v3, p2
    move v4, p3
    move v5, p4
    move-object v6, p5
    invoke-direct/range { v0 .. v6 }, Lcom/yalantis/ucrop/task/BitmapLoadTask;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;IILcom/yalantis/ucrop/callback/BitmapLoadCallback;)V
    const/4 p0, 0
    new-array p0, p0, [Ljava/lang/Void;
    invoke-virtual { v7, p0 }, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    return-void
.end method

.method public static exifToDegrees(I)I
  .registers 1
    packed-switch p0, :L4
    const/4 p0, 0
    goto :L3
  :L0
    const/16 p0, 270
    goto :L3
  :L1
    const/16 p0, 90
    goto :L3
  :L2
    const/16 p0, 180
  :L3
    return p0
  :L4
  .packed-switch 3
    :L2
    :L2
    :L1
    :L1
    :L0
    :L0
  .end packed-switch
.end method

.method public static exifToTranslation(I)I
  .registers 2
    const/4 v0, 2
    if-eq p0, v0, :L0
    const/4 v0, 7
    if-eq p0, v0, :L0
    const/4 v0, 4
    if-eq p0, v0, :L0
    const/4 v0, 5
    if-eq p0, v0, :L0
    const/4 p0, 1
    goto :L1
  :L0
    const/4 p0, -1
  :L1
    return p0
.end method

.method public static getExifOrientation(Landroid/content/Context;Landroid/net/Uri;)I
  .catch Ljava/io/IOException; { :L0 .. :L2 } :L3
  .registers 4
    const/4 v0, 0
  :L0
  .line 1
    invoke-virtual { p0 }, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    move-result-object p0
    invoke-virtual { p0, p1 }, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    move-result-object p0
    if-nez p0, :L1
    return v0
  :L1
  .line 2
    new-instance v1, Lcom/yalantis/ucrop/util/ImageHeaderParser;
    invoke-direct { v1, p0 }, Lcom/yalantis/ucrop/util/ImageHeaderParser;-><init>(Ljava/io/InputStream;)V
    invoke-virtual { v1 }, Lcom/yalantis/ucrop/util/ImageHeaderParser;->getOrientation()I
    move-result v0
  .line 3
    invoke-static { p0 }, Lcom/yalantis/ucrop/util/BitmapLoadUtils;->close(Ljava/io/Closeable;)V
  :L2
    goto :L4
  :L3
  .line 4
    new-instance p0, Ljava/lang/StringBuilder;
    invoke-direct { p0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "getExifOrientation: "
    invoke-virtual { p0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Landroid/net/Uri;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-virtual { p0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L4
    return v0
.end method

.method public static transformBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;
  .catch Ljava/lang/OutOfMemoryError; { :L0 .. :L1 } :L2
  .registers 9
    const/4 v1, 0
    const/4 v2, 0
  :L0
  .line 1
    invoke-virtual { p0 }, Landroid/graphics/Bitmap;->getWidth()I
    move-result v3
    invoke-virtual { p0 }, Landroid/graphics/Bitmap;->getHeight()I
    move-result v4
    const/4 v6, 1
    move-object v0, p0
    move-object v5, p1
    invoke-static/range { v0 .. v6 }, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    move-result-object p1
  .line 2
    invoke-virtual { p0, p1 }, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z
    move-result v0
  :L1
    if-nez v0, :L2
    move-object p0, p1
  :L2
    return-object p0
.end method
