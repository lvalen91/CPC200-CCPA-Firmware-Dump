.class public Lcn/manstep/phonemirrorBox/util/c0;
.super Ljava/lang/Object;
.source "SourceFile"

.method public constructor <init>()V
  .registers 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
  .catch Ljava/lang/Exception; { :L0 .. :L3 } :L4
  .registers 6
  .line 1
    invoke-virtual { p0 }, Landroid/content/Context;->getFilesDir()Ljava/io/File;
    move-result-object v0
  .line 2
    invoke-virtual { v0 }, Ljava/io/File;->exists()Z
    move-result v1
    const/4 v2, 0
    if-eqz v1, :L5
    invoke-virtual { v0 }, Ljava/io/File;->isDirectory()Z
    move-result v1
    if-nez v1, :L0
    goto :L5
  :L0
  .line 3
    invoke-virtual { p0 }, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;
    move-result-object p0
    invoke-virtual { p0, p1 }, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    move-result-object p0
  .line 4
    new-instance p1, Ljava/io/FileOutputStream;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0 }, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, "/"
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
  .line 5
    invoke-virtual { p0 }, Ljava/io/InputStream;->available()I
    move-result p2
  .line 6
    new-array p2, p2, [B
  :L1
  .line 7
    invoke-virtual { p0, p2 }, Ljava/io/InputStream;->read([B)I
    move-result v0
    if-lez v0, :L2
  .line 8
    invoke-virtual { p1, p2, v2, v0 }, Ljava/io/FileOutputStream;->write([BII)V
    goto :L1
  :L2
  .line 9
    invoke-virtual { p1 }, Ljava/io/FileOutputStream;->close()V
  .line 10
    invoke-virtual { p0 }, Ljava/io/InputStream;->close()V
  :L3
    const/4 p0, 1
    return p0
  :L4
    move-exception p0
  .line 11
    invoke-static { p0 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object p0
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L5
    return v2
.end method

.method public static b(Landroid/content/Context;F)I
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object p0
    invoke-virtual { p0 }, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
    move-result-object p0
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F
    mul-float p1, p1, p0
    const/high16 p0, 16128
    add-float/2addr p1, p0
    float-to-int p0, p1
    return p0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
  .registers 3
  .line 1
    invoke-virtual { p0 }, Ljava/lang/String;->length()I
    move-result v0
    const/16 v1, 32
    if-ne v0, v1, :L0
    goto :L1
  :L0
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "0"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/util/c0;->c(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p0
  :L1
    return-object p0
.end method

.method public static d(Landroid/content/Context;)V
  .registers 6
    const-string v0, "sensor"
  .line 1
    invoke-virtual { p0, v0 }, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object p0
    check-cast p0, Landroid/hardware/SensorManager;
    const/4 v0, -1
  .line 2
    invoke-virtual { p0, v0 }, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;
    move-result-object p0
  .line 3
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Number of Sensors: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-interface { p0 }, Ljava/util/List;->size()I
    move-result v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->h(Ljava/lang/String;)V
  .line 4
    invoke-interface { p0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object p0
  :L0
    invoke-interface { p0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :L1
    invoke-interface { p0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/hardware/Sensor;
  .line 5
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;
    const/4 v2, 4
    new-array v2, v2, [Ljava/lang/Object;
    const/4 v3, 0
    invoke-virtual { v0 }, Landroid/hardware/Sensor;->getName()Ljava/lang/String;
    move-result-object v4
    aput-object v4, v2, v3
    const/4 v3, 1
    invoke-virtual { v0 }, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;
    move-result-object v4
    aput-object v4, v2, v3
    const/4 v3, 2
    invoke-virtual { v0 }, Landroid/hardware/Sensor;->getVersion()I
    move-result v4
    invoke-static { v4 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    aput-object v4, v2, v3
    const/4 v3, 3
    invoke-virtual { v0 }, Landroid/hardware/Sensor;->getType()I
    move-result v0
    invoke-static { v0 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v0
    aput-object v0, v2, v3
    const-string v0, "[N:%s][V:%s][VER:%d][T:%d]"
    invoke-static { v1, v0, v2 }, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v0
  .line 6
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->h(Ljava/lang/String;)V
    goto :L0
  :L1
    return-void
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    move-result-object p0
    const-string v0, "android_id"
    invoke-static { p0, v0 }, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    move-result-object p0
    return-object p0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
    move-result-object v0
    invoke-static/range { v0 .. v0 }, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;
    move-result-object v0
    if-eqz v0, :L1
  .line 2
    invoke-virtual { v0 }, Ljava/io/File;->isDirectory()Z
    move-result v1
    if-eqz v1, :L1
    invoke-virtual { v0 }, Ljava/io/File;->canWrite()Z
    move-result v1
    if-nez v1, :L0
    goto :L1
  :L0
  .line 3
    invoke-virtual { v0 }, Ljava/io/File;->toString()Ljava/lang/String;
    move-result-object p0
    goto :L3
  :L1
  .line 4
    new-instance v0, Ljava/io/File;
    const-string v1, "/sdcard/"
    invoke-direct { v0, v1 }, Ljava/io/File;-><init>(Ljava/lang/String;)V
  .line 5
    invoke-virtual { v0 }, Ljava/io/File;->isDirectory()Z
    move-result v0
    if-eqz v0, :L2
    move-object p0, v1
    goto :L3
  :L2
  .line 6
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/util/n;->q(Landroid/content/Context;)Ljava/io/File;
    move-result-object p0
    invoke-virtual { p0 }, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object p0
  :L3
  .line 7
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p0, "/App.apk"
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    return-object p0
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L2
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;
    move-result-object p0
  :L0
  .line 2
    invoke-virtual { p0, p1 }, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    move-result-object p0
  .line 3
    invoke-static { p0 }, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    move-result-object p0
  :L1
    goto :L3
  :L2
    move-exception p0
  .line 4
    invoke-virtual { p0 }, Ljava/lang/Exception;->printStackTrace()V
  .line 5
    invoke-static { p0 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object p0
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    const/4 p0, 0
  :L3
    return-object p0
.end method

.method public static h(Landroid/content/Context;II)Ljava/lang/String;
  .registers 22
    move-object/from16 v0, p0
    const-string v1, "ro.product.manufacturer"
    const-string v2, ""
  .line 1
    invoke-static { v1, v2 }, Lcn/manstep/phonemirrorBox/p;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    const-string v3, "ro.board.platform"
  .line 2
    invoke-static { v3, v2 }, Lcn/manstep/phonemirrorBox/p;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
  .line 3
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v4, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
  .line 4
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct { v5 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v5, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
    invoke-virtual { v5, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v5 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
  .line 5
    sget-object v5, Landroid/os/Build;->BOARD:Ljava/lang/String;
  .line 6
    sget-object v6, Landroid/os/Build;->BRAND:Ljava/lang/String;
  .line 7
    sget-object v7, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;
  .line 8
    sget-object v8, Landroid/os/Build;->DEVICE:Ljava/lang/String;
  .line 9
    sget-object v9, Landroid/os/Build;->DISPLAY:Ljava/lang/String;
  .line 10
    sget-object v10, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;
  .line 11
    sget-object v11, Landroid/os/Build;->HARDWARE:Ljava/lang/String;
  .line 12
    sget-object v12, Landroid/os/Build;->MODEL:Ljava/lang/String;
  .line 13
    new-instance v13, Ljava/lang/StringBuilder;
    invoke-direct { v13 }, Ljava/lang/StringBuilder;-><init>()V
    sget v14, Lcn/manstep/phonemirrorBox/p;->k:I
    invoke-virtual { v13, v14 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v14, "x"
    invoke-virtual { v13, v14 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget v15, Lcn/manstep/phonemirrorBox/p;->l:I
    invoke-virtual { v13, v15 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v13 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v13
  .line 14
    invoke-virtual/range { p0 .. p0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v15
    invoke-virtual { v15 }, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
    move-result-object v15
    iget-object v15, v15, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
  .line 15
    new-instance v0, Ljava/text/SimpleDateFormat;
    move-object/from16 v16, v2
    sget-object v2, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;
    move-object/from16 v17, v4
    const-string v4, "yyyy-MM-dd HH:mm:ss"
    invoke-direct { v0, v4, v2 }, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
  .line 16
    new-instance v2, Ljava/util/Date;
    move-object v4, v6
    move-object/from16 v18, v7
    sget-wide v6, Landroid/os/Build;->TIME:J
    invoke-direct { v2, v6, v7 }, Ljava/util/Date;-><init>(J)V
    invoke-virtual { v0, v2 }, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    move-result-object v0
  .line 17
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    move/from16 v6, p1
    invoke-virtual { v2, v6 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v14 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move/from16 v6, p2
    invoke-virtual { v2, v6 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
  .line 18
    new-instance v6, Ljava/lang/StringBuilder;
    invoke-direct { v6 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v7, "Manufacturer: "
    invoke-virtual { v6, v7 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v6, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, "\nPlatform:     "
    invoke-virtual { v6, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v6, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, "\nModel:        "
    invoke-virtual { v6, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v6, v12 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, "\nID:           "
    invoke-virtual { v6, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 19
    invoke-static/range { p0 .. p0 }, Lcn/manstep/phonemirrorBox/util/c0;->e(Landroid/content/Context;)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v6, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, "\nDisplay:      "
    invoke-virtual { v6, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v6, v9 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, "\nFingerprint:  "
    invoke-virtual { v6, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v6, v10 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, "\nHardware:     "
    invoke-virtual { v6, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v6, v11 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, "\nDevice:       "
    invoke-virtual { v6, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v6, v8 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, "\nBoard:        "
    invoke-virtual { v6, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v6, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, "\nBrand:        "
    invoke-virtual { v6, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v6, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, "\nProduct:      "
    invoke-virtual { v6, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;
    invoke-virtual { v6, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, "\nTIME:         "
    invoke-virtual { v6, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v6, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, "\nINCREMENTAL:  "
    invoke-virtual { v6, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;
    invoke-virtual { v6, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, "\nHWDecoder:    "
    invoke-virtual { v6, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-object v0, Lcn/manstep/phonemirrorBox/p;->f:Ljava/lang/String;
    invoke-virtual { v6, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, "\nCPU_ABI:      "
    invoke-virtual { v6, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-object/from16 v0, v18
    invoke-virtual { v6, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, "\nResolution:   "
    invoke-virtual { v6, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v6, v13 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, "("
    invoke-virtual { v6, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v6, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, ")\ndensityDpi:   "
    invoke-virtual { v6, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget v0, Lcn/manstep/phonemirrorBox/p;->p:I
    invoke-virtual { v6, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v0, "\ndensity:      "
    invoke-virtual { v6, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget v0, Lcn/manstep/phonemirrorBox/p;->q:F
    invoke-virtual { v6, v0 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    const-string v0, "\nlanguage:     "
    invoke-virtual { v6, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 20
    invoke-virtual { v15 }, Ljava/util/Locale;->getLanguage()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v6, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, "-"
    invoke-virtual { v6, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v15 }, Ljava/util/Locale;->getCountry()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v6, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, "\nAPI:          "
    invoke-virtual { v6, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-object/from16 v0, v17
    invoke-virtual { v6, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, "\nAndroid:      "
    invoke-virtual { v6, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-object/from16 v0, v16
    invoke-virtual { v6, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, "\n\n"
    invoke-virtual { v6, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v6 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
  .line 21
    new-instance v2, Landroid/content/ComponentName;
    invoke-virtual/range { p0 .. p0 }, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    move-result-object v3
    const-class v4, Lcn/manstep/phonemirrorBox/MediaButtonReceiver;
    invoke-virtual { v4 }, Ljava/lang/Class;->getName()Ljava/lang/String;
    move-result-object v4
    invoke-direct { v2, v3, v4 }, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
  .line 22
    invoke-virtual/range { p0 .. p0 }, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    move-result-object v3
    invoke-virtual { v3, v2 }, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I
    move-result v2
  .line 23
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "Name: 37.AutoKit\nTIME: 2025.03.19.1126\nApp:  "
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-object v4, Lcn/manstep/phonemirrorBox/p;->a:Ljava/lang/String;
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v4, "\nVER:  "
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const/16 v4, 10208
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v4, "\nBox:  "
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-object v4, Lcn/manstep/phonemirrorBox/p;->b:Ljava/lang/String;
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v4, "\nMFD:  "
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 24
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;
    move-result-object v4
    invoke-virtual { v4 }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->h()Ljava/lang/String;
    move-result-object v4
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v4, "\n\nUse TextureView Render: "
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-boolean v4, Lcn/manstep/phonemirrorBox/p;->i:Z
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    const-string v4, "\nMediaButton: "
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v2, " (1:E, 2:D)\nSHA1: "
    invoke-virtual { v3, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v2, "SHA1"
    move-object/from16 v4, p0
  .line 25
    invoke-static { v4, v2 }, Lcn/manstep/phonemirrorBox/s0/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v3, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v2, "\nSHA256: "
    invoke-virtual { v3, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v2, "SHA256"
  .line 26
    invoke-static { v4, v2 }, Lcn/manstep/phonemirrorBox/s0/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v3, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v2, "\nCert: "
    invoke-virtual { v3, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 27
    invoke-static/range { p0 .. p0 }, Lcn/manstep/phonemirrorBox/s0/a;->a(Landroid/content/Context;)Ljava/lang/String;
    move-result-object v5
    invoke-virtual { v3, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 28
    invoke-static/range { p0 .. p0 }, Lcn/manstep/phonemirrorBox/s0/a;->b(Landroid/content/Context;)Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v3, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v2, "\nPID:  "
    invoke-virtual { v3, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 29
    invoke-static { }, Landroid/os/Process;->myPid()I
    move-result v2
    invoke-virtual { v3, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 30
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/b0;->c()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, "\n\n\n"
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
  .line 31
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public static i(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L2
  .catch Ljava/lang/Exception; { :L4 .. :L5 } :L15
  .catchall { :L5 .. :L6 } :L10
  .catch Ljava/lang/Exception; { :L7 .. :L8 } :L15
  .catchall { :L11 .. :L12 } :L12
  .catchall { :L13 .. :L14 } :L14
  .catch Ljava/lang/Exception; { :L14 .. :L15 } :L15
  .registers 4
    const-string v0, "/"
  .line 1
    invoke-virtual { p1, v0 }, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v0
    const/4 v1, 0
    if-eqz v0, :L3
  :L0
  .line 2
    invoke-static { p1 }, Landroid/graphics/drawable/BitmapDrawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    move-result-object p0
  :L1
    goto :L9
  :L2
    return-object v1
  :L3
  .line 3
    invoke-virtual { p0 }, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;
    move-result-object p0
  :L4
  .line 4
    invoke-virtual { p0, p1 }, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    move-result-object p0
  :L5
    const-string p1, "car.png"
  .line 5
    invoke-static { p0, p1 }, Landroid/graphics/drawable/BitmapDrawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    move-result-object p1
  :L6
    if-eqz p0, :L8
  :L7
  .line 6
    invoke-virtual { p0 }, Ljava/io/InputStream;->close()V
  :L8
    move-object p0, p1
  :L9
    return-object p0
  :L10
    move-exception p1
  :L11
  .line 7
    throw p1
  :L12
    move-exception p1
    if-eqz p0, :L14
  :L13
  .line 8
    invoke-virtual { p0 }, Ljava/io/InputStream;->close()V
  :L14
    throw p1
  :L15
    return-object v1
.end method

.method public static j(Ljava/io/File;)Ljava/lang/String;
  .catch Ljava/lang/Exception; { :L1 .. :L4 } :L5
  .registers 8
    const-string v0, ""
    if-eqz p0, :L6
  .line 1
    invoke-virtual { p0 }, Ljava/io/File;->isFile()Z
    move-result v1
    if-nez v1, :L0
    goto :L6
  :L0
    const/16 v1, 1024
    new-array v2, v1, [B
  :L1
    const-string v3, "MD5"
  .line 2
    invoke-static { v3 }, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    move-result-object v3
  .line 3
    new-instance v4, Ljava/io/FileInputStream;
    invoke-direct { v4, p0 }, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
  :L2
    const/4 p0, 0
  .line 4
    invoke-virtual { v4, v2, p0, v1 }, Ljava/io/FileInputStream;->read([BII)I
    move-result v5
    const/4 v6, -1
    if-eq v5, v6, :L3
  .line 5
    invoke-virtual { v3, v2, p0, v5 }, Ljava/security/MessageDigest;->update([BII)V
    goto :L2
  :L3
  .line 6
    invoke-virtual { v4 }, Ljava/io/FileInputStream;->close()V
  .line 7
    new-instance p0, Ljava/math/BigInteger;
    const/4 v1, 1
    invoke-virtual { v3 }, Ljava/security/MessageDigest;->digest()[B
    move-result-object v2
    invoke-direct { p0, v1, v2 }, Ljava/math/BigInteger;-><init>(I[B)V
    const/16 v1, 16
  .line 8
    invoke-virtual { p0, v1 }, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;
    move-result-object p0
  .line 9
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/util/c0;->c(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p0
  :L4
    return-object p0
  :L5
    move-exception p0
  .line 10
    invoke-virtual { p0 }, Ljava/lang/Exception;->printStackTrace()V
  .line 11
    invoke-static { p0 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object p0
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L6
    return-object v0
.end method

.method public static k(Landroid/content/Context;Ljava/lang/String;)I
  .registers 4
  .line 1
    invoke-virtual { p0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    invoke-virtual { p0 }, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    move-result-object p0
    const-string v1, "id"
    invoke-virtual { v0, p1, v1, p0 }, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    move-result p0
    return p0
.end method

.method public static l(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/String;",
      "Ljava/lang/String;",
      ")",
      "Ljava/util/List<",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
  .registers 3
  .line 1
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
  .line 2
    invoke-static { p1 }, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    move-result-object p1
  .line 3
    invoke-virtual { p1, p0 }, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    move-result-object p0
  :L0
  .line 4
    invoke-virtual { p0 }, Ljava/util/regex/Matcher;->find()Z
    move-result p1
    if-eqz p1, :L1
  .line 5
    invoke-virtual { p0 }, Ljava/util/regex/Matcher;->group()Ljava/lang/String;
    move-result-object p1
    invoke-interface { v0, p1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    goto :L0
  :L1
    return-object v0
.end method

.method public static m(Landroid/content/Context;I)Ljava/lang/String;
  .registers 2
    if-nez p0, :L0
    const-string p0, ""
    return-object p0
  :L0
  .line 1
    invoke-virtual { p0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object p0
    invoke-virtual { p0, p1 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object p0
    return-object p0
.end method

.method public static n(Landroid/content/Context;)Ljava/lang/String;
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object p0
    invoke-virtual { p0 }, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
    move-result-object p0
    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
  .line 2
    invoke-virtual { p0 }, Ljava/util/Locale;->getLanguage()Ljava/lang/String;
    move-result-object v0
    const-string v1, "zh"
  .line 3
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L0
  .line 4
    invoke-virtual { p0 }, Ljava/util/Locale;->getCountry()Ljava/lang/String;
    move-result-object p0
    invoke-virtual { p0 }, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    move-result-object p0
    const-string v1, "CN"
  .line 5
    invoke-virtual { v1, p0 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result p0
    if-nez p0, :L0
    const-string v0, "zh_TW"
  :L0
  .line 6
    new-instance p0, Ljava/lang/StringBuilder;
    invoke-direct { p0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "https://paplink.cn/www/TranslateManage/?"
    invoke-virtual { p0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, "l="
    invoke-virtual { p0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
  .line 7
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p0, "&id="
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object p0
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/u;->I()Ljava/lang/String;
    move-result-object p0
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
  .line 8
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p0, "&ui=37"
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
  .line 9
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p0, "&t=apk"
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    return-object p0
.end method

.method public static o(Landroid/content/Context;Ljava/lang/String;)V
  .catch Landroid/content/ActivityNotFoundException; { :L1 .. :L2 } :L3
  .registers 6
  .line 1
    new-instance v0, Ljava/io/File;
    invoke-direct { v0, p1 }, Ljava/io/File;-><init>(Ljava/lang/String;)V
  .line 2
    invoke-virtual { v0 }, Ljava/io/File;->exists()Z
    move-result p1
    if-eqz p1, :L4
  .line 3
    new-instance p1, Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"
    invoke-direct { p1, v1 }, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    const/high16 v1, 4096
  .line 4
    invoke-virtual { p1, v1 }, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
  .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 24
    const-string v3, "application/vnd.android.package-archive"
    if-lt v1, v2, :L0
    const v1, 67108867
  .line 6
    invoke-virtual { p1, v1 }, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
  .line 7
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p0 }, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v2, ".fileprovider"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { p0, v1, v0 }, Landroidx/core/content/FileProvider;->e(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;
    move-result-object v0
  .line 8
    invoke-virtual { p1, v0, v3 }, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    goto :L1
  :L0
  .line 9
    invoke-static { v0 }, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    move-result-object v0
    invoke-virtual { p1, v0, v3 }, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
  :L1
    const-string v0, "Util"
    const-string v1, "installApk: startActivity"
  .line 10
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 11
    invoke-virtual { p0, p1 }, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
  .line 12
    instance-of p1, p0, Lcn/manstep/phonemirrorBox/k;
    if-eqz p1, :L4
  .line 13
    move-object p1, p0
    check-cast p1, Lcn/manstep/phonemirrorBox/k;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/k;->e0()V
  :L2
    goto :L4
  :L3
    const p1, 2131689698
  .line 14
    invoke-static { p0, p1 }, Lcn/manstep/phonemirrorBox/widget/a;->a(Landroid/content/Context;I)V
  :L4
    return-void
.end method

.method public static p()Z
  .catch Ljava/lang/Exception; { :L0 .. :L2 } :L4
  .registers 5
    const/4 v0, 1
  :L0
    const-string v1, "video/avc"
  .line 1
    invoke-static { v1 }, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;
    move-result-object v1
    if-eqz v1, :L3
    const-string v2, ""
  .line 2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v4, 18
    if-lt v3, v4, :L1
  .line 3
    invoke-virtual { v1 }, Landroid/media/MediaCodec;->getName()Ljava/lang/String;
    move-result-object v2
  :L1
  .line 4
    invoke-virtual { v1 }, Landroid/media/MediaCodec;->release()V
    const-string v1, "google"
  .line 5
    invoke-virtual { v2, v1 }, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v1
    if-eqz v1, :L3
  .line 6
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v2, ", we use soft-decode"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L2
    return v0
  :L3
    const/4 v0, 0
    return v0
  :L4
    const-string v1, "MediaCodec.createDecoderByType video/avc is null, we use soft-decode"
  .line 7
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    return v0
.end method

.method public static q()Z
  .registers 6
    const-string v0, "ro.board.platform"
    const-string v1, ""
  .line 1
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/p;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    const-string v2, "ro.product.manufacturer"
  .line 2
    invoke-static { v2, v1 }, Lcn/manstep/phonemirrorBox/p;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    const-string v2, "sofia3gr"
  .line 3
    invoke-virtual { v0, v2 }, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v2
    if-nez v2, :L1
    const-string v2, "allwinner"
  .line 4
    invoke-virtual { v1, v2 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v2
    if-nez v2, :L1
    const-string v2, "msm8916"
  .line 5
    invoke-virtual { v2, v0 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v2
    if-nez v2, :L1
    const-string v2, "mt6735"
  .line 6
    invoke-virtual { v2, v0 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v2
    if-nez v2, :L1
    const-string v2, "mt6739"
  .line 7
    invoke-virtual { v2, v0 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v2
    if-nez v2, :L1
    const-string v2, "rk3368"
  .line 8
    invoke-virtual { v2, v0 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v2
    if-nez v2, :L1
    const-string v2, "rk3188"
  .line 9
    invoke-virtual { v2, v0 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v2
    if-nez v2, :L1
    const-string v2, "rk3288"
  .line 10
    invoke-virtual { v2, v0 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v2
    if-nez v2, :L1
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;
    const-string v3, "FYT6025"
  .line 11
    invoke-virtual { v3, v2 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v2
    if-nez v2, :L1
    const-string v2, "rkpx3"
  .line 12
    invoke-virtual { v2, v0 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v2
    if-nez v2, :L1
    const-string v2, "alps"
  .line 13
    invoke-virtual { v2, v1 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v2
    if-nez v2, :L1
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;
    const-string v3, "sp9853i_1h10_vmm"
  .line 14
    invoke-virtual { v3, v2 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v2
    if-nez v2, :L1
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;
    const-string v3, "rk3326_mid"
  .line 15
    invoke-virtual { v3, v2 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v2
    if-nez v2, :L1
    const-string v2, "mt2712"
  .line 16
    invoke-virtual { v2, v0 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v2
    if-nez v2, :L1
    const-string v2, "sc8830"
  .line 17
    invoke-virtual { v2, v0 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v0
    if-nez v0, :L1
    const-string v0, "telechips"
  .line 18
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v0
    if-nez v0, :L1
    const-string v0, "HUAWEI"
  .line 19
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v0
    if-nez v0, :L1
    const-string v0, "QUALCOMM"
  .line 20
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v0
    if-nez v0, :L1
    const-string v0, "samsung"
  .line 21
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v0
    if-nez v0, :L1
    const-string v0, "Freescale"
  .line 22
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :L0
    goto :L1
  :L0
    const/4 v0, 0
    goto :L2
  :L1
    const/4 v0, 1
  :L2
    return v0
.end method

.method public static r(II)I
  .registers 3
    shl-int/lit8 p0, p0, 16
    const v0, 65535
    and-int/2addr p1, v0
    or-int/2addr p0, p1
    return p0
.end method

.method public static s(Landroid/content/Context;Z)V
  .registers 6
    if-nez p0, :L0
    return-void
  :L0
  .line 1
    new-instance v0, Landroid/content/ComponentName;
    const-class v1, Lcn/manstep/phonemirrorBox/Main1Activity;
    invoke-direct { v0, p0, v1 }, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
  .line 2
    invoke-virtual { p0 }, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    move-result-object p0
  .line 3
    invoke-virtual { p0, v0 }, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I
    move-result v1
    const/4 v2, 1
    const/4 v3, 2
    if-nez p1, :L1
    if-eq v1, v3, :L2
  .line 4
    invoke-virtual { p0, v0, v3, v2 }, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    goto :L2
  :L1
    if-ne v1, v3, :L2
  .line 5
    invoke-virtual { p0, v0, v2, v2 }, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
  :L2
    return-void
.end method

.method public static t(Landroid/content/Context;Z)V
  .registers 5
    if-eqz p0, :L2
  .line 1
    new-instance v0, Landroid/content/ComponentName;
    const-class v1, Lcn/manstep/phonemirrorBox/MediaButtonReceiver;
    invoke-direct { v0, p0, v1 }, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
  .line 2
    invoke-virtual { p0 }, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    move-result-object p0
  .line 3
    invoke-virtual { p0, v0 }, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I
    move-result v1
    const/4 v2, 1
    if-eqz p1, :L0
    if-eq v1, v2, :L1
  .line 4
    invoke-virtual { p0, v0, v2, v2 }, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    goto :L1
  :L0
    const/4 p1, 2
    if-eq v1, p1, :L1
  .line 5
    invoke-virtual { p0, v0, p1, v2 }, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
  :L1
  .line 6
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Util,setMediaButtonEnable: state="
    invoke-virtual { p1, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0, v0 }, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I
    move-result p0
    invoke-virtual { p1, p0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  :L2
    return-void
.end method

.method public static u(Landroid/content/Context;I)V
  .registers 3
    if-nez p0, :L0
    return-void
  :L0
  .line 1
    new-instance v0, Lcn/manstep/phonemirrorBox/util/g$c;
    invoke-direct { v0, p0 }, Lcn/manstep/phonemirrorBox/util/g$c;-><init>(Landroid/content/Context;)V
  .line 2
    invoke-virtual { p0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object p0
    invoke-virtual { p0, p1 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object p0
    invoke-virtual { v0, p0 }, Lcn/manstep/phonemirrorBox/util/g$c;->c(Ljava/lang/String;)Lcn/manstep/phonemirrorBox/util/g$c;
    const/4 p0, 1
  .line 3
    invoke-virtual { v0, p0 }, Lcn/manstep/phonemirrorBox/util/g$c;->b(Z)Lcn/manstep/phonemirrorBox/util/g$c;
  .line 4
    invoke-virtual { v0, p0 }, Lcn/manstep/phonemirrorBox/util/g$c;->a(Z)Lcn/manstep/phonemirrorBox/util/g$c;
  .line 5
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/util/g$c;->d()Lcn/manstep/phonemirrorBox/util/g;
    move-result-object p1
    invoke-virtual { p1, p0 }, Lcn/manstep/phonemirrorBox/util/g;->b(Z)V
    return-void
.end method

.method public static v(I)[I
  .registers 4
    ushr-int/lit8 v0, p0, 16
    const v1, 65535
    and-int/2addr p0, v1
    const/4 v1, 2
    new-array v1, v1, [I
    const/4 v2, 0
    aput p0, v1, v2
    const/4 p0, 1
    aput v0, v1, p0
    return-object v1
.end method

.method public static w(Ljava/lang/String;)Ljava/lang/String;
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L5
  .registers 6
  :L0
    const-string v0, "MD5"
  .line 1
    invoke-static { v0 }, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    move-result-object v0
    const-string v1, "UTF-8"
    invoke-virtual { p0, v1 }, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    move-result-object p0
    invoke-virtual { v0, p0 }, Ljava/security/MessageDigest;->digest([B)[B
    move-result-object p0
  :L1
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    array-length v1, p0
    mul-int/lit8 v1, v1, 2
    invoke-direct { v0, v1 }, Ljava/lang/StringBuilder;-><init>(I)V
  .line 3
    array-length v1, p0
    const/4 v2, 0
  :L2
    if-ge v2, v1, :L4
    aget-byte v3, p0, v2
    and-int/lit16 v3, v3, 255
    const/16 v4, 16
    if-ge v3, v4, :L3
    const-string v4, "0"
  .line 4
    invoke-virtual { v0, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L3
  .line 5
    invoke-static { v3 }, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    add-int/lit8 v2, v2, 1
    goto :L2
  :L4
  .line 6
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    return-object p0
  :L5
    move-exception p0
  .line 7
    invoke-virtual { p0 }, Ljava/lang/Exception;->printStackTrace()V
    const-string p0, ""
    return-object p0
.end method
