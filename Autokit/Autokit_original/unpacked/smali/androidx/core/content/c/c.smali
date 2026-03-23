.class public Landroidx/core/content/c/c;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/core/content/c/c$b;,
    Landroidx/core/content/c/c$c;,
    Landroidx/core/content/c/c$d;,
    Landroidx/core/content/c/c$a;
  }
.end annotation

.method private static a(Landroid/content/res/TypedArray;I)I
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0, p1 }, Landroid/content/res/TypedArray;->getType(I)I
    move-result p0
    return p0
  :L0
  .line 3
    new-instance v0, Landroid/util/TypedValue;
    invoke-direct { v0 }, Landroid/util/TypedValue;-><init>()V
  .line 4
    invoke-virtual { p0, p1, v0 }, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z
  .line 5
    iget p0, v0, Landroid/util/TypedValue;->type:I
    return p0
.end method

.method public static b(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroidx/core/content/c/c$a;
  .registers 5
  :L0
  .line 1
    invoke-interface { p0 }, Lorg/xmlpull/v1/XmlPullParser;->next()I
    move-result v0
    const/4 v1, 2
    if-eq v0, v1, :L1
    const/4 v2, 1
    if-eq v0, v2, :L1
    goto :L0
  :L1
    if-ne v0, v1, :L2
  .line 2
    invoke-static { p0, p1 }, Landroidx/core/content/c/c;->d(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroidx/core/content/c/c$a;
    move-result-object p0
    return-object p0
  :L2
  .line 3
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;
    const-string p1, "No start tag found"
    invoke-direct { p0, p1 }, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V
    goto :L4
  :L3
    throw p0
  :L4
    goto :L3
.end method

.method public static c(Landroid/content/res/Resources;I)Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroid/content/res/Resources;",
      "I)",
      "Ljava/util/List<",
      "Ljava/util/List<",
      "[B>;>;"
    }
  .end annotation
  .catchall { :L1 .. :L2 } :L8
  .catchall { :L3 .. :L7 } :L8
  .registers 7
    if-nez p1, :L0
  .line 1
    invoke-static { }, Ljava/util/Collections;->emptyList()Ljava/util/List;
    move-result-object p0
    return-object p0
  :L0
  .line 2
    invoke-virtual { p0, p1 }, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;
    move-result-object v0
  :L1
  .line 3
    invoke-virtual { v0 }, Landroid/content/res/TypedArray;->length()I
    move-result v1
    if-nez v1, :L3
  .line 4
    invoke-static { }, Ljava/util/Collections;->emptyList()Ljava/util/List;
    move-result-object p0
  :L2
  .line 5
    invoke-virtual { v0 }, Landroid/content/res/TypedArray;->recycle()V
    return-object p0
  :L3
  .line 6
    new-instance v1, Ljava/util/ArrayList;
    invoke-direct { v1 }, Ljava/util/ArrayList;-><init>()V
    const/4 v2, 0
  .line 7
    invoke-static { v0, v2 }, Landroidx/core/content/c/c;->a(Landroid/content/res/TypedArray;I)I
    move-result v3
    const/4 v4, 1
    if-ne v3, v4, :L6
    const/4 p1, 0
  :L4
  .line 8
    invoke-virtual { v0 }, Landroid/content/res/TypedArray;->length()I
    move-result v3
    if-ge p1, v3, :L7
  .line 9
    invoke-virtual { v0, p1, v2 }, Landroid/content/res/TypedArray;->getResourceId(II)I
    move-result v3
    if-eqz v3, :L5
  .line 10
    invoke-virtual { p0, v3 }, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;
    move-result-object v3
    invoke-static { v3 }, Landroidx/core/content/c/c;->h([Ljava/lang/String;)Ljava/util/List;
    move-result-object v3
    invoke-interface { v1, v3 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  :L5
    add-int/lit8 p1, p1, 1
    goto :L4
  :L6
  .line 11
    invoke-virtual { p0, p1 }, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;
    move-result-object p0
    invoke-static { p0 }, Landroidx/core/content/c/c;->h([Ljava/lang/String;)Ljava/util/List;
    move-result-object p0
    invoke-interface { v1, p0 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  :L7
  .line 12
    invoke-virtual { v0 }, Landroid/content/res/TypedArray;->recycle()V
    return-object v1
  :L8
    move-exception p0
    invoke-virtual { v0 }, Landroid/content/res/TypedArray;->recycle()V
  .line 13
    goto :L10
  :L9
    throw p0
  :L10
    goto :L9
.end method

.method private static d(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroidx/core/content/c/c$a;
  .registers 5
    const/4 v0, 2
    const/4 v1, 0
    const-string v2, "font-family"
  .line 1
    invoke-interface { p0, v0, v1, v2 }, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V
  .line 2
    invoke-interface { p0 }, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
    move-result-object v0
  .line 3
    invoke-virtual { v0, v2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
  .line 4
    invoke-static { p0, p1 }, Landroidx/core/content/c/c;->e(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroidx/core/content/c/c$a;
    move-result-object p0
    return-object p0
  :L0
  .line 5
    invoke-static { p0 }, Landroidx/core/content/c/c;->g(Lorg/xmlpull/v1/XmlPullParser;)V
    return-object v1
.end method

.method private static e(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroidx/core/content/c/c$a;
  .registers 11
  .line 1
    invoke-static { p0 }, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;
    move-result-object v0
  .line 2
    sget-object v1, Lc/g/c;->FontFamily:[I
    invoke-virtual { p1, v0, v1 }, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    move-result-object v0
  .line 3
    sget v1, Lc/g/c;->FontFamily_fontProviderAuthority:I
    invoke-virtual { v0, v1 }, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
    move-result-object v1
  .line 4
    sget v2, Lc/g/c;->FontFamily_fontProviderPackage:I
    invoke-virtual { v0, v2 }, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
    move-result-object v2
  .line 5
    sget v3, Lc/g/c;->FontFamily_fontProviderQuery:I
    invoke-virtual { v0, v3 }, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
    move-result-object v3
  .line 6
    sget v4, Lc/g/c;->FontFamily_fontProviderCerts:I
    const/4 v5, 0
    invoke-virtual { v0, v4, v5 }, Landroid/content/res/TypedArray;->getResourceId(II)I
    move-result v4
  .line 7
    sget v5, Lc/g/c;->FontFamily_fontProviderFetchStrategy:I
    const/4 v6, 1
    invoke-virtual { v0, v5, v6 }, Landroid/content/res/TypedArray;->getInteger(II)I
    move-result v5
  .line 8
    sget v6, Lc/g/c;->FontFamily_fontProviderFetchTimeout:I
    const/16 v7, 500
    invoke-virtual { v0, v6, v7 }, Landroid/content/res/TypedArray;->getInteger(II)I
    move-result v6
  .line 9
    sget v7, Lc/g/c;->FontFamily_fontProviderSystemFontFamily:I
  .line 10
    invoke-virtual { v0, v7 }, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
    move-result-object v7
  .line 11
    invoke-virtual { v0 }, Landroid/content/res/TypedArray;->recycle()V
    const/4 v0, 3
    if-eqz v1, :L2
    if-eqz v2, :L2
    if-eqz v3, :L2
  :L0
  .line 12
    invoke-interface { p0 }, Lorg/xmlpull/v1/XmlPullParser;->next()I
    move-result v8
    if-eq v8, v0, :L1
  .line 13
    invoke-static { p0 }, Landroidx/core/content/c/c;->g(Lorg/xmlpull/v1/XmlPullParser;)V
    goto :L0
  :L1
  .line 14
    invoke-static { p1, v4 }, Landroidx/core/content/c/c;->c(Landroid/content/res/Resources;I)Ljava/util/List;
    move-result-object p0
  .line 15
    new-instance p1, Landroidx/core/content/c/c$d;
    new-instance v0, Lc/g/h/d;
    invoke-direct { v0, v1, v2, v3, p0 }, Lc/g/h/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    invoke-direct { p1, v0, v5, v6, v7 }, Landroidx/core/content/c/c$d;-><init>(Lc/g/h/d;IILjava/lang/String;)V
    return-object p1
  :L2
  .line 16
    new-instance v1, Ljava/util/ArrayList;
    invoke-direct { v1 }, Ljava/util/ArrayList;-><init>()V
  :L3
  .line 17
    invoke-interface { p0 }, Lorg/xmlpull/v1/XmlPullParser;->next()I
    move-result v2
    if-eq v2, v0, :L6
  .line 18
    invoke-interface { p0 }, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    move-result v2
    const/4 v3, 2
    if-eq v2, v3, :L4
    goto :L3
  :L4
  .line 19
    invoke-interface { p0 }, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
    move-result-object v2
    const-string v3, "font"
  .line 20
    invoke-virtual { v2, v3 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :L5
  .line 21
    invoke-static { p0, p1 }, Landroidx/core/content/c/c;->f(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroidx/core/content/c/c$c;
    move-result-object v2
    invoke-interface { v1, v2 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    goto :L3
  :L5
  .line 22
    invoke-static { p0 }, Landroidx/core/content/c/c;->g(Lorg/xmlpull/v1/XmlPullParser;)V
    goto :L3
  :L6
  .line 23
    invoke-interface { v1 }, Ljava/util/List;->isEmpty()Z
    move-result p0
    if-eqz p0, :L7
    const/4 p0, 0
    return-object p0
  :L7
  .line 24
    new-instance p0, Landroidx/core/content/c/c$b;
  .line 25
    invoke-interface { v1 }, Ljava/util/List;->size()I
    move-result p1
    new-array p1, p1, [Landroidx/core/content/c/c$c;
  .line 26
    invoke-interface { v1, p1 }, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    move-result-object p1
    check-cast p1, [Landroidx/core/content/c/c$c;
    invoke-direct { p0, p1 }, Landroidx/core/content/c/c$b;-><init>([Landroidx/core/content/c/c$c;)V
    return-object p0
.end method

.method private static f(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroidx/core/content/c/c$c;
  .registers 11
  .line 1
    invoke-static { p0 }, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;
    move-result-object v0
  .line 2
    sget-object v1, Lc/g/c;->FontFamilyFont:[I
    invoke-virtual { p1, v0, v1 }, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    move-result-object p1
  .line 3
    sget v0, Lc/g/c;->FontFamilyFont_fontWeight:I
    invoke-virtual { p1, v0 }, Landroid/content/res/TypedArray;->hasValue(I)Z
    move-result v0
    if-eqz v0, :L0
  .line 4
    sget v0, Lc/g/c;->FontFamilyFont_fontWeight:I
    goto :L1
  :L0
  .line 5
    sget v0, Lc/g/c;->FontFamilyFont_android_fontWeight:I
  :L1
    const/16 v1, 400
  .line 6
    invoke-virtual { p1, v0, v1 }, Landroid/content/res/TypedArray;->getInt(II)I
    move-result v4
  .line 7
    sget v0, Lc/g/c;->FontFamilyFont_fontStyle:I
    invoke-virtual { p1, v0 }, Landroid/content/res/TypedArray;->hasValue(I)Z
    move-result v0
    if-eqz v0, :L2
  .line 8
    sget v0, Lc/g/c;->FontFamilyFont_fontStyle:I
    goto :L3
  :L2
  .line 9
    sget v0, Lc/g/c;->FontFamilyFont_android_fontStyle:I
  :L3
    const/4 v1, 0
  .line 10
    invoke-virtual { p1, v0, v1 }, Landroid/content/res/TypedArray;->getInt(II)I
    move-result v0
    const/4 v2, 1
    if-ne v2, v0, :L4
    const/4 v5, 1
    goto :L5
  :L4
    const/4 v5, 0
  :L5
  .line 11
    sget v0, Lc/g/c;->FontFamilyFont_ttcIndex:I
    invoke-virtual { p1, v0 }, Landroid/content/res/TypedArray;->hasValue(I)Z
    move-result v0
    if-eqz v0, :L6
  .line 12
    sget v0, Lc/g/c;->FontFamilyFont_ttcIndex:I
    goto :L7
  :L6
  .line 13
    sget v0, Lc/g/c;->FontFamilyFont_android_ttcIndex:I
  :L7
  .line 14
    sget v2, Lc/g/c;->FontFamilyFont_fontVariationSettings:I
    invoke-virtual { p1, v2 }, Landroid/content/res/TypedArray;->hasValue(I)Z
    move-result v2
    if-eqz v2, :L8
  .line 15
    sget v2, Lc/g/c;->FontFamilyFont_fontVariationSettings:I
    goto :L9
  :L8
  .line 16
    sget v2, Lc/g/c;->FontFamilyFont_android_fontVariationSettings:I
  :L9
  .line 17
    invoke-virtual { p1, v2 }, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
    move-result-object v6
  .line 18
    invoke-virtual { p1, v0, v1 }, Landroid/content/res/TypedArray;->getInt(II)I
    move-result v7
  .line 19
    sget v0, Lc/g/c;->FontFamilyFont_font:I
    invoke-virtual { p1, v0 }, Landroid/content/res/TypedArray;->hasValue(I)Z
    move-result v0
    if-eqz v0, :L10
  .line 20
    sget v0, Lc/g/c;->FontFamilyFont_font:I
    goto :L11
  :L10
  .line 21
    sget v0, Lc/g/c;->FontFamilyFont_android_font:I
  :L11
  .line 22
    invoke-virtual { p1, v0, v1 }, Landroid/content/res/TypedArray;->getResourceId(II)I
    move-result v8
  .line 23
    invoke-virtual { p1, v0 }, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
    move-result-object v3
  .line 24
    invoke-virtual { p1 }, Landroid/content/res/TypedArray;->recycle()V
  :L12
  .line 25
    invoke-interface { p0 }, Lorg/xmlpull/v1/XmlPullParser;->next()I
    move-result p1
    const/4 v0, 3
    if-eq p1, v0, :L13
  .line 26
    invoke-static { p0 }, Landroidx/core/content/c/c;->g(Lorg/xmlpull/v1/XmlPullParser;)V
    goto :L12
  :L13
  .line 27
    new-instance p0, Landroidx/core/content/c/c$c;
    move-object v2, p0
    invoke-direct/range { v2 .. v8 }, Landroidx/core/content/c/c$c;-><init>(Ljava/lang/String;IZLjava/lang/String;II)V
    return-object p0
.end method

.method private static g(Lorg/xmlpull/v1/XmlPullParser;)V
  .registers 4
    const/4 v0, 1
  :L0
    if-lez v0, :L3
  .line 1
    invoke-interface { p0 }, Lorg/xmlpull/v1/XmlPullParser;->next()I
    move-result v1
    const/4 v2, 2
    if-eq v1, v2, :L2
    const/4 v2, 3
    if-eq v1, v2, :L1
    goto :L0
  :L1
    add-int/lit8 v0, v0, -1
    goto :L0
  :L2
    add-int/lit8 v0, v0, 1
    goto :L0
  :L3
    return-void
.end method

.method private static h([Ljava/lang/String;)Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "([",
      "Ljava/lang/String;",
      ")",
      "Ljava/util/List<",
      "[B>;"
    }
  .end annotation
  .registers 6
  .line 1
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
  .line 2
    array-length v1, p0
    const/4 v2, 0
    const/4 v3, 0
  :L0
    if-ge v3, v1, :L1
    aget-object v4, p0, v3
  .line 3
    invoke-static { v4, v2 }, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B
    move-result-object v4
    invoke-interface { v0, v4 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    add-int/lit8 v3, v3, 1
    goto :L0
  :L1
    return-object v0
.end method
