.class public Lc/g/d/i;
.super Lc/g/d/j;
.source "SourceFile"

.method public constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lc/g/d/j;-><init>()V
    return-void
.end method

.method public b(Landroid/content/Context;Landroidx/core/content/c/c$b;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
  .catch Ljava/lang/Exception; { :L0 .. :L2 } :L12
  .catch Ljava/io/IOException; { :L2 .. :L6 } :L6
  .catch Ljava/lang/Exception; { :L2 .. :L6 } :L12
  .catch Ljava/lang/Exception; { :L8 .. :L12 } :L12
  .registers 13
    const/4 p1, 0
  :L0
  .line 1
    invoke-virtual { p2 }, Landroidx/core/content/c/c$b;->a()[Landroidx/core/content/c/c$c;
    move-result-object p2
    array-length v0, p2
    const/4 v1, 0
    move-object v3, p1
    const/4 v2, 0
  :L1
    const/4 v4, 1
    if-ge v2, v0, :L7
    aget-object v5, p2, v2
  :L2
  .line 2
    new-instance v6, Landroid/graphics/fonts/Font$Builder;
    invoke-virtual { v5 }, Landroidx/core/content/c/c$c;->b()I
    move-result v7
    invoke-direct { v6, p3, v7 }, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/content/res/Resources;I)V
  .line 3
    invoke-virtual { v5 }, Landroidx/core/content/c/c$c;->e()I
    move-result v7
    invoke-virtual { v6, v7 }, Landroid/graphics/fonts/Font$Builder;->setWeight(I)Landroid/graphics/fonts/Font$Builder;
    move-result-object v6
  .line 4
    invoke-virtual { v5 }, Landroidx/core/content/c/c$c;->f()Z
    move-result v7
    if-eqz v7, :L3
    goto :L4
  :L3
    const/4 v4, 0
  :L4
    invoke-virtual { v6, v4 }, Landroid/graphics/fonts/Font$Builder;->setSlant(I)Landroid/graphics/fonts/Font$Builder;
    move-result-object v4
  .line 5
    invoke-virtual { v5 }, Landroidx/core/content/c/c$c;->c()I
    move-result v6
    invoke-virtual { v4, v6 }, Landroid/graphics/fonts/Font$Builder;->setTtcIndex(I)Landroid/graphics/fonts/Font$Builder;
    move-result-object v4
  .line 6
    invoke-virtual { v5 }, Landroidx/core/content/c/c$c;->d()Ljava/lang/String;
    move-result-object v5
    invoke-virtual { v4, v5 }, Landroid/graphics/fonts/Font$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/fonts/Font$Builder;
    move-result-object v4
  .line 7
    invoke-virtual { v4 }, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;
    move-result-object v4
    if-nez v3, :L5
  .line 8
    new-instance v5, Landroid/graphics/fonts/FontFamily$Builder;
    invoke-direct { v5, v4 }, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V
    move-object v3, v5
    goto :L6
  :L5
  .line 9
    invoke-virtual { v3, v4 }, Landroid/graphics/fonts/FontFamily$Builder;->addFont(Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/FontFamily$Builder;
  :L6
    add-int/lit8 v2, v2, 1
    goto :L1
  :L7
    if-nez v3, :L8
    return-object p1
  :L8
  .line 10
    new-instance p2, Landroid/graphics/fonts/FontStyle;
    and-int/lit8 p3, p4, 1
    if-eqz p3, :L9
    const/16 p3, 700
    goto :L10
  :L9
    const/16 p3, 400
  :L10
    and-int/lit8 p4, p4, 2
    if-eqz p4, :L11
    const/4 v1, 1
  :L11
  .line 11
    invoke-direct { p2, p3, v1 }, Landroid/graphics/fonts/FontStyle;-><init>(II)V
  .line 12
    new-instance p3, Landroid/graphics/Typeface$CustomFallbackBuilder;
    invoke-virtual { v3 }, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;
    move-result-object p4
    invoke-direct { p3, p4 }, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V
  .line 13
    invoke-virtual { p3, p2 }, Landroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;
    move-result-object p2
  .line 14
    invoke-virtual { p2 }, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;
    move-result-object p1
  :L12
    return-object p1
.end method

.method public c(Landroid/content/Context;Landroid/os/CancellationSignal;[Lc/g/h/f$b;I)Landroid/graphics/Typeface;
  .catch Ljava/lang/Exception; { :L0 .. :L2 } :L20
  .catch Ljava/io/IOException; { :L2 .. :L4 } :L13
  .catch Ljava/lang/Exception; { :L2 .. :L4 } :L20
  .catchall { :L5 .. :L9 } :L10
  .catchall { :L11 .. :L12 } :L12
  .catch Ljava/io/IOException; { :L12 .. :L13 } :L13
  .catch Ljava/lang/Exception; { :L12 .. :L13 } :L20
  .catch Ljava/lang/Exception; { :L15 .. :L19 } :L20
  .registers 15
  .line 1
    invoke-virtual { p1 }, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    move-result-object p1
    const/4 v0, 0
  :L0
  .line 2
    array-length v1, p3
    const/4 v2, 0
    move-object v4, v0
    const/4 v3, 0
  :L1
    const/4 v5, 1
    if-ge v3, v1, :L14
    aget-object v6, p3, v3
  :L2
  .line 3
    invoke-virtual { v6 }, Lc/g/h/f$b;->d()Landroid/net/Uri;
    move-result-object v7
    const-string v8, "r"
    invoke-virtual { p1, v7, v8, p2 }, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    move-result-object v7
    if-nez v7, :L5
    if-eqz v7, :L13
  :L3
  .line 4
    invoke-virtual { v7 }, Landroid/os/ParcelFileDescriptor;->close()V
  :L4
    goto :L13
  :L5
  .line 5
    new-instance v8, Landroid/graphics/fonts/Font$Builder;
    invoke-direct { v8, v7 }, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/os/ParcelFileDescriptor;)V
  .line 6
    invoke-virtual { v6 }, Lc/g/h/f$b;->e()I
    move-result v9
    invoke-virtual { v8, v9 }, Landroid/graphics/fonts/Font$Builder;->setWeight(I)Landroid/graphics/fonts/Font$Builder;
    move-result-object v8
  .line 7
    invoke-virtual { v6 }, Lc/g/h/f$b;->f()Z
    move-result v9
    if-eqz v9, :L6
    goto :L7
  :L6
    const/4 v5, 0
  :L7
    invoke-virtual { v8, v5 }, Landroid/graphics/fonts/Font$Builder;->setSlant(I)Landroid/graphics/fonts/Font$Builder;
    move-result-object v5
  .line 8
    invoke-virtual { v6 }, Lc/g/h/f$b;->c()I
    move-result v6
    invoke-virtual { v5, v6 }, Landroid/graphics/fonts/Font$Builder;->setTtcIndex(I)Landroid/graphics/fonts/Font$Builder;
    move-result-object v5
  .line 9
    invoke-virtual { v5 }, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;
    move-result-object v5
    if-nez v4, :L8
  .line 10
    new-instance v6, Landroid/graphics/fonts/FontFamily$Builder;
    invoke-direct { v6, v5 }, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V
    move-object v4, v6
    goto :L9
  :L8
  .line 11
    invoke-virtual { v4, v5 }, Landroid/graphics/fonts/FontFamily$Builder;->addFont(Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/FontFamily$Builder;
  :L9
    if-eqz v7, :L13
    goto :L3
  :L10
    move-exception v5
    if-eqz v7, :L12
  :L11
  .line 12
    invoke-virtual { v7 }, Landroid/os/ParcelFileDescriptor;->close()V
  :L12
    throw v5
  :L13
    add-int/lit8 v3, v3, 1
    goto :L1
  :L14
    if-nez v4, :L15
    return-object v0
  :L15
  .line 13
    new-instance p1, Landroid/graphics/fonts/FontStyle;
    and-int/lit8 p2, p4, 1
    if-eqz p2, :L16
    const/16 p2, 700
    goto :L17
  :L16
    const/16 p2, 400
  :L17
    and-int/lit8 p3, p4, 2
    if-eqz p3, :L18
    const/4 v2, 1
  :L18
  .line 14
    invoke-direct { p1, p2, v2 }, Landroid/graphics/fonts/FontStyle;-><init>(II)V
  .line 15
    new-instance p2, Landroid/graphics/Typeface$CustomFallbackBuilder;
    invoke-virtual { v4 }, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;
    move-result-object p3
    invoke-direct { p2, p3 }, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V
  .line 16
    invoke-virtual { p2, p1 }, Landroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;
    move-result-object p1
  .line 17
    invoke-virtual { p1 }, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;
    move-result-object p1
  :L19
    return-object p1
  :L20
    return-object v0
.end method

.method protected d(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;
  .registers 3
  .line 1
    new-instance p1, Ljava/lang/RuntimeException;
    const-string p2, "Do not use this function in API 29 or later."
    invoke-direct { p1, p2 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public e(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L2
  .registers 6
  :L0
  .line 1
    new-instance p1, Landroid/graphics/fonts/Font$Builder;
    invoke-direct { p1, p2, p3 }, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/content/res/Resources;I)V
    invoke-virtual { p1 }, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;
    move-result-object p1
  .line 2
    new-instance p2, Landroid/graphics/fonts/FontFamily$Builder;
    invoke-direct { p2, p1 }, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V
    invoke-virtual { p2 }, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;
    move-result-object p2
  .line 3
    new-instance p3, Landroid/graphics/Typeface$CustomFallbackBuilder;
    invoke-direct { p3, p2 }, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V
  .line 4
    invoke-virtual { p1 }, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;
    move-result-object p1
    invoke-virtual { p3, p1 }, Landroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;
    move-result-object p1
  .line 5
    invoke-virtual { p1 }, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;
    move-result-object p1
  :L1
    return-object p1
  :L2
    const/4 p1, 0
    return-object p1
.end method

.method protected h([Lc/g/h/f$b;I)Lc/g/h/f$b;
  .registers 3
  .line 1
    new-instance p1, Ljava/lang/RuntimeException;
    const-string p2, "Do not use this function in API 29 or later."
    invoke-direct { p1, p2 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
    throw p1
.end method
