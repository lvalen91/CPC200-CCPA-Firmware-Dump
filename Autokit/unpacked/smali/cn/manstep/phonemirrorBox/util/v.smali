.class public Lcn/manstep/phonemirrorBox/util/v;
.super Ljava/lang/Object;
.source "SourceFile"

.method public constructor <init>()V
  .registers 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static a(Ljava/lang/String;II)Landroid/graphics/Bitmap;
  .registers 11
    const-string v3, "UTF-8"
    const-string v4, "L"
    const-string v5, "0"
    const/high16 v6, -256
    const/4 v7, -1
    move-object v0, p0
    move v1, p1
    move v2, p2
  .line 1
    invoke-static/range { v0 .. v7 }, Lcn/manstep/phonemirrorBox/util/v;->b(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    move-result-object p0
    return-object p0
.end method

.method public static b(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;
  .catch Ld/c/b/c; { :L1 .. :L12 } :L14
  .registers 19
    move v0, p1
  .line 1
    invoke-static { p0 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v1
    const/4 v2, 0
    if-eqz v1, :L0
    return-object v2
  :L0
    if-ltz v0, :L15
    if-gez p2, :L1
    goto/16 :L15
  :L1
  .line 2
    new-instance v8, Ljava/util/Hashtable;
    invoke-direct { v8 }, Ljava/util/Hashtable;-><init>()V
  .line 3
    invoke-static { p3 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v1
    if-nez v1, :L2
  .line 4
    sget-object v1, Ld/c/b/b;->c:Ld/c/b/b;
    move-object v3, p3
    invoke-virtual { v8, v1, p3 }, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L2
  .line 5
    invoke-static { p4 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v1
    if-nez v1, :L3
  .line 6
    sget-object v1, Ld/c/b/b;->b:Ld/c/b/b;
    move-object v3, p4
    invoke-virtual { v8, v1, p4 }, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L3
  .line 7
    invoke-static/range { p5 .. p5 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v1
    if-nez v1, :L4
  .line 8
    sget-object v1, Ld/c/b/b;->g:Ld/c/b/b;
    move-object/from16 v3, p5
    invoke-virtual { v8, v1, v3 }, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L4
    move-object v1, p0
  .line 9
    invoke-static { p0, p1, v8 }, Lcn/manstep/phonemirrorBox/util/v;->c(Ljava/lang/String;ILjava/util/Hashtable;)I
    move-result v3
    mul-int/lit8 v3, v3, 2
    sub-int/2addr v0, v3
    const/4 v9, 0
    sub-int/2addr v0, v9
    sub-int v3, p2, v3
    add-int/lit8 v10, v3, 0
  .line 10
    new-instance v3, Ld/c/b/e/a;
    invoke-direct { v3 }, Ld/c/b/e/a;-><init>()V
    sget-object v5, Ld/c/b/a;->m:Ld/c/b/a;
    move-object v4, p0
    move v6, v0
    move v7, v10
    invoke-virtual/range { v3 .. v8 }, Ld/c/b/e/a;->a(Ljava/lang/String;Ld/c/b/a;IILjava/util/Map;)Ld/c/b/d/b;
    move-result-object v1
    mul-int v3, v0, v10
  .line 11
    new-array v3, v3, [I
    const/4 v4, 0
  :L5
    if-ge v4, v10, :L10
    const/4 v5, 0
  :L6
    if-ge v5, v0, :L9
  .line 12
    invoke-virtual { v1, v5, v4 }, Ld/c/b/d/b;->c(II)Z
    move-result v6
    if-eqz v6, :L7
    mul-int v6, v4, v0
    add-int/2addr v6, v5
  .line 13
    aput p6, v3, v6
    goto :L8
  :L7
    mul-int v6, v4, v0
    add-int/2addr v6, v5
  .line 14
    aput p7, v3, v6
  :L8
    add-int/lit8 v5, v5, 1
    goto :L6
  :L9
    add-int/lit8 v4, v4, 1
    goto :L5
  :L10
    if-lez v0, :L13
    if-gtz v10, :L11
    goto :L13
  :L11
  .line 15
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
    invoke-static { v0, v10, v1 }, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    move-result-object v1
    const/4 v4, 0
    const/4 v5, 0
    const/4 v6, 0
    move-object p0, v1
    move-object p1, v3
    move p2, v4
    move p3, v0
    move p4, v5
    move/from16 p5, v6
    move/from16 p6, v0
    move/from16 p7, v10
  .line 16
    invoke-virtual/range { p0 .. p7 }, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
  :L12
    return-object v1
  :L13
    return-object v2
  :L14
    move-exception v0
  .line 17
    invoke-virtual { v0 }, Ljava/lang/Exception;->printStackTrace()V
  :L15
    return-object v2
.end method

.method private static c(Ljava/lang/String;ILjava/util/Hashtable;)I
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/String;",
      "I",
      "Ljava/util/Hashtable<",
      "Ld/c/b/b;",
      "Ljava/lang/String;",
      ">;)I"
    }
  .end annotation
  .catch Ld/c/b/c; { :L0 .. :L2 } :L2
  .registers 4
  :L0
  .line 1
    sget-object v0, Ld/c/b/e/b/a;->c:Ld/c/b/e/b/a;
    invoke-static { p0, v0, p2 }, Ld/c/b/e/c/c;->n(Ljava/lang/String;Ld/c/b/e/b/a;Ljava/util/Map;)Ld/c/b/e/c/f;
    move-result-object p0
  .line 2
    invoke-virtual { p0 }, Ld/c/b/e/c/f;->a()Ld/c/b/e/c/b;
    move-result-object p0
    if-eqz p0, :L1
  .line 3
    invoke-virtual { p0 }, Ld/c/b/e/c/b;->e()I
    move-result p0
  .line 4
    invoke-static { p1, p0 }, Ljava/lang/Math;->max(II)I
    move-result p1
  .line 5
    div-int p2, p1, p0
    mul-int p0, p0, p2
    sub-int/2addr p1, p0
  .line 6
    div-int/lit8 p1, p1, 2
    goto :L3
  :L1
  .line 7
    new-instance p0, Ljava/lang/IllegalStateException;
    invoke-direct { p0 }, Ljava/lang/IllegalStateException;-><init>()V
    throw p0
  :L2
    move-exception p0
  .line 8
    invoke-virtual { p0 }, Ljava/lang/Exception;->printStackTrace()V
    const/4 p1, 0
  :L3
    return p1
.end method
