.class public final Landroidx/core/content/c/f;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/core/content/c/f$b;,
    Landroidx/core/content/c/f$a;
  }
.end annotation

.method public static a(Landroid/content/Context;I)Landroid/graphics/Typeface;
  .registers 10
  .line 1
    invoke-virtual { p0 }, Landroid/content/Context;->isRestricted()Z
    move-result v0
    if-eqz v0, :L0
    const/4 p0, 0
    return-object p0
  :L0
  .line 2
    new-instance v2, Landroid/util/TypedValue;
    invoke-direct { v2 }, Landroid/util/TypedValue;-><init>()V
    const/4 v3, 0
    const/4 v4, 0
    const/4 v5, 0
    const/4 v6, 0
    const/4 v7, 1
    move-object v0, p0
    move v1, p1
    invoke-static/range { v0 .. v7 }, Landroidx/core/content/c/f;->f(Landroid/content/Context;ILandroid/util/TypedValue;ILandroidx/core/content/c/f$a;Landroid/os/Handler;ZZ)Landroid/graphics/Typeface;
    move-result-object p0
    return-object p0
.end method

.method public static b(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
  .registers 5
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0, p1, p2 }, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    move-result-object p0
    return-object p0
  :L0
  .line 3
    invoke-virtual { p0, p1 }, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    move-result-object p0
    return-object p0
.end method

.method public static c(Landroid/content/Context;I)Landroid/graphics/Typeface;
  .registers 10
  .line 1
    invoke-virtual { p0 }, Landroid/content/Context;->isRestricted()Z
    move-result v0
    if-eqz v0, :L0
    const/4 p0, 0
    return-object p0
  :L0
  .line 2
    new-instance v2, Landroid/util/TypedValue;
    invoke-direct { v2 }, Landroid/util/TypedValue;-><init>()V
    const/4 v3, 0
    const/4 v4, 0
    const/4 v5, 0
    const/4 v6, 0
    const/4 v7, 0
    move-object v0, p0
    move v1, p1
    invoke-static/range { v0 .. v7 }, Landroidx/core/content/c/f;->f(Landroid/content/Context;ILandroid/util/TypedValue;ILandroidx/core/content/c/f$a;Landroid/os/Handler;ZZ)Landroid/graphics/Typeface;
    move-result-object p0
    return-object p0
.end method

.method public static d(Landroid/content/Context;ILandroid/util/TypedValue;ILandroidx/core/content/c/f$a;)Landroid/graphics/Typeface;
  .registers 13
  .line 1
    invoke-virtual { p0 }, Landroid/content/Context;->isRestricted()Z
    move-result v0
    if-eqz v0, :L0
    const/4 p0, 0
    return-object p0
  :L0
    const/4 v5, 0
    const/4 v6, 1
    const/4 v7, 0
    move-object v0, p0
    move v1, p1
    move-object v2, p2
    move v3, p3
    move-object v4, p4
  .line 2
    invoke-static/range { v0 .. v7 }, Landroidx/core/content/c/f;->f(Landroid/content/Context;ILandroid/util/TypedValue;ILandroidx/core/content/c/f$a;Landroid/os/Handler;ZZ)Landroid/graphics/Typeface;
    move-result-object p0
    return-object p0
.end method

.method public static e(Landroid/content/Context;ILandroidx/core/content/c/f$a;Landroid/os/Handler;)V
  .registers 12
  .line 1
    invoke-static { p2 }, Lc/g/j/h;->e(Ljava/lang/Object;)Ljava/lang/Object;
  .line 2
    invoke-virtual { p0 }, Landroid/content/Context;->isRestricted()Z
    move-result v0
    if-eqz v0, :L0
    const/4 p0, -4
  .line 3
    invoke-virtual { p2, p0, p3 }, Landroidx/core/content/c/f$a;->a(ILandroid/os/Handler;)V
    return-void
  :L0
  .line 4
    new-instance v2, Landroid/util/TypedValue;
    invoke-direct { v2 }, Landroid/util/TypedValue;-><init>()V
    const/4 v3, 0
    const/4 v6, 0
    const/4 v7, 0
    move-object v0, p0
    move v1, p1
    move-object v4, p2
    move-object v5, p3
    invoke-static/range { v0 .. v7 }, Landroidx/core/content/c/f;->f(Landroid/content/Context;ILandroid/util/TypedValue;ILandroidx/core/content/c/f$a;Landroid/os/Handler;ZZ)Landroid/graphics/Typeface;
    return-void
.end method

.method private static f(Landroid/content/Context;ILandroid/util/TypedValue;ILandroidx/core/content/c/f$a;Landroid/os/Handler;ZZ)Landroid/graphics/Typeface;
  .registers 18
  .line 1
    invoke-virtual { p0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v1
    const/4 v0, 1
    move v9, p1
    move-object v2, p2
  .line 2
    invoke-virtual { v1, p1, p2, v0 }, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V
    move-object v0, p0
    move v3, p1
    move v4, p3
    move-object v5, p4
    move-object v6, p5
    move/from16 v7, p6
    move/from16 v8, p7
  .line 3
    invoke-static/range { v0 .. v8 }, Landroidx/core/content/c/f;->g(Landroid/content/Context;Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroidx/core/content/c/f$a;Landroid/os/Handler;ZZ)Landroid/graphics/Typeface;
    move-result-object v0
    if-nez v0, :L1
    if-nez p4, :L1
    if-eqz p7, :L0
    goto :L1
  :L0
  .line 4
    new-instance v0, Landroid/content/res/Resources$NotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Font resource ID #0x"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 5
    invoke-static { p1 }, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v2, " could not be retrieved."
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, v1 }, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V
    throw v0
  :L1
    return-object v0
.end method

.method private static g(Landroid/content/Context;Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroidx/core/content/c/f$a;Landroid/os/Handler;ZZ)Landroid/graphics/Typeface;
  .catch Lorg/xmlpull/v1/XmlPullParserException; { :L4 .. :L9 } :L11
  .catch Ljava/io/IOException; { :L4 .. :L9 } :L10
  .registers 22
    move-object v2, p1
    move-object v0, p2
    move/from16 v3, p3
    move/from16 v4, p4
    move-object/from16 v8, p5
    move-object/from16 v9, p6
  .line 1
    iget-object v1, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;
    if-eqz v1, :L14
  .line 2
    invoke-interface { v1 }, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    move-result-object v10
    const-string v0, "res/"
  .line 3
    invoke-virtual { v10, v0 }, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v0
    const/4 v11, -3
    const/4 v12, 0
    if-nez v0, :L1
    if-eqz v8, :L0
  .line 4
    invoke-virtual { v8, v11, v9 }, Landroidx/core/content/c/f$a;->a(ILandroid/os/Handler;)V
  :L0
    return-object v12
  :L1
  .line 5
    invoke-static { p1, v3, v4 }, Lc/g/d/d;->f(Landroid/content/res/Resources;II)Landroid/graphics/Typeface;
    move-result-object v0
    if-eqz v0, :L3
    if-eqz v8, :L2
  .line 6
    invoke-virtual { v8, v0, v9 }, Landroidx/core/content/c/f$a;->b(Landroid/graphics/Typeface;Landroid/os/Handler;)V
  :L2
    return-object v0
  :L3
    if-eqz p8, :L4
    return-object v12
  :L4
  .line 7
    invoke-virtual { v10 }, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    move-result-object v0
    const-string v1, ".xml"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :L7
  .line 8
    invoke-virtual { p1, v3 }, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    move-result-object v0
  .line 9
    invoke-static { v0, p1 }, Landroidx/core/content/c/c;->b(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroidx/core/content/c/c$a;
    move-result-object v1
    if-nez v1, :L6
    if-eqz v8, :L5
  .line 10
    invoke-virtual { v8, v11, v9 }, Landroidx/core/content/c/f$a;->a(ILandroid/os/Handler;)V
  :L5
    return-object v12
  :L6
    move-object v0, p0
    move-object v2, p1
    move/from16 v3, p3
    move/from16 v4, p4
    move-object/from16 v5, p5
    move-object/from16 v6, p6
    move/from16 v7, p7
  .line 11
    invoke-static/range { v0 .. v7 }, Lc/g/d/d;->c(Landroid/content/Context;Landroidx/core/content/c/c$a;Landroid/content/res/Resources;IILandroidx/core/content/c/f$a;Landroid/os/Handler;Z)Landroid/graphics/Typeface;
    move-result-object v0
    return-object v0
  :L7
    move-object v0, p0
  .line 12
    invoke-static { p0, p1, v3, v10, v4 }, Lc/g/d/d;->d(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    move-result-object v0
    if-eqz v8, :L9
    if-eqz v0, :L8
  .line 13
    invoke-virtual { v8, v0, v9 }, Landroidx/core/content/c/f$a;->b(Landroid/graphics/Typeface;Landroid/os/Handler;)V
    goto :L9
  :L8
  .line 14
    invoke-virtual { v8, v11, v9 }, Landroidx/core/content/c/f$a;->a(ILandroid/os/Handler;)V
  :L9
    return-object v0
  :L10
  .line 15
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Failed to read xml resource "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v10 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    goto :L12
  :L11
  .line 16
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Failed to parse xml resource "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v10 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L12
    if-eqz v8, :L13
  .line 17
    invoke-virtual { v8, v11, v9 }, Landroidx/core/content/c/f$a;->a(ILandroid/os/Handler;)V
  :L13
    return-object v12
  :L14
  .line 18
    new-instance v1, Landroid/content/res/Resources$NotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "Resource \""
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, v3 }, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v4, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v2, "\" ("
    invoke-virtual { v4, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 19
    invoke-static/range { p3 .. p3 }, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v4, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v2, ") is not a Font: "
    invoke-virtual { v4, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v4, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-direct { v1, v0 }, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V
    throw v1
.end method
