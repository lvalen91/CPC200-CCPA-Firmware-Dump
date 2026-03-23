.class public final Landroidx/core/content/c/b;
.super Ljava/lang/Object;
.source "SourceFile"

.field private final a:Landroid/graphics/Shader;

.field private final b:Landroid/content/res/ColorStateList;

.field private c:I

.method private constructor <init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V
  .registers 4
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Landroidx/core/content/c/b;->a:Landroid/graphics/Shader;
  .line 3
    iput-object p2, p0, Landroidx/core/content/c/b;->b:Landroid/content/res/ColorStateList;
  .line 4
    iput p3, p0, Landroidx/core/content/c/b;->c:I
    return-void
.end method

.method private static a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroidx/core/content/c/b;
  .registers 9
  .line 1
    invoke-virtual { p0, p1 }, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    move-result-object p1
  .line 2
    invoke-static { p1 }, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;
    move-result-object v0
  :L0
  .line 3
    invoke-interface { p1 }, Lorg/xmlpull/v1/XmlPullParser;->next()I
    move-result v1
    const/4 v2, 2
    const/4 v3, 1
    if-eq v1, v2, :L1
    if-eq v1, v3, :L1
    goto :L0
  :L1
    if-ne v1, v2, :L7
  .line 4
    invoke-interface { p1 }, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
    move-result-object v1
    const/4 v2, -1
  .line 5
    invoke-virtual { v1 }, Ljava/lang/String;->hashCode()I
    move-result v4
    const v5, 89650992
    if-eq v4, v5, :L3
    const v5, 1191572447
    if-eq v4, v5, :L2
    goto :L4
  :L2
    const-string v4, "selector"
    invoke-virtual { v1, v4 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v4
    if-eqz v4, :L4
    const/4 v2, 0
    goto :L4
  :L3
    const-string v4, "gradient"
    invoke-virtual { v1, v4 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v4
    if-eqz v4, :L4
    const/4 v2, 1
  :L4
    if-eqz v2, :L6
    if-ne v2, v3, :L5
  .line 6
    invoke-static { p0, p1, v0, p2 }, Landroidx/core/content/c/d;->b(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/Shader;
    move-result-object p0
    invoke-static { p0 }, Landroidx/core/content/c/b;->d(Landroid/graphics/Shader;)Landroidx/core/content/c/b;
    move-result-object p0
    return-object p0
  :L5
  .line 7
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-interface { p1 }, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;
    move-result-object p1
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p1, ": unsupported complex color tag "
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { p0, p1 }, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V
    throw p0
  :L6
  .line 8
    invoke-static { p0, p1, v0, p2 }, Landroidx/core/content/c/a;->b(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    move-result-object p0
    invoke-static { p0 }, Landroidx/core/content/c/b;->c(Landroid/content/res/ColorStateList;)Landroidx/core/content/c/b;
    move-result-object p0
    return-object p0
  :L7
  .line 9
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;
    const-string p1, "No start tag found"
    invoke-direct { p0, p1 }, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V
    goto :L9
  :L8
    throw p0
  :L9
    goto :L8
.end method

.method static b(I)Landroidx/core/content/c/b;
  .registers 3
  .line 1
    new-instance v0, Landroidx/core/content/c/b;
    const/4 v1, 0
    invoke-direct { v0, v1, v1, p0 }, Landroidx/core/content/c/b;-><init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V
    return-object v0
.end method

.method static c(Landroid/content/res/ColorStateList;)Landroidx/core/content/c/b;
  .registers 4
  .line 1
    new-instance v0, Landroidx/core/content/c/b;
    invoke-virtual { p0 }, Landroid/content/res/ColorStateList;->getDefaultColor()I
    move-result v1
    const/4 v2, 0
    invoke-direct { v0, v2, p0, v1 }, Landroidx/core/content/c/b;-><init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V
    return-object v0
.end method

.method static d(Landroid/graphics/Shader;)Landroidx/core/content/c/b;
  .registers 4
  .line 1
    new-instance v0, Landroidx/core/content/c/b;
    const/4 v1, 0
    const/4 v2, 0
    invoke-direct { v0, p0, v1, v2 }, Landroidx/core/content/c/b;-><init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V
    return-object v0
.end method

.method public static g(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroidx/core/content/c/b;
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L2
  .registers 3
  :L0
  .line 1
    invoke-static { p0, p1, p2 }, Landroidx/core/content/c/b;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroidx/core/content/c/b;
    move-result-object p0
  :L1
    return-object p0
  :L2
    const/4 p0, 0
    return-object p0
.end method

.method public e()I
  .registers 2
  .line 1
    iget v0, p0, Landroidx/core/content/c/b;->c:I
    return v0
.end method

.method public f()Landroid/graphics/Shader;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/content/c/b;->a:Landroid/graphics/Shader;
    return-object v0
.end method

.method public h()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/content/c/b;->a:Landroid/graphics/Shader;
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public i()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/content/c/b;->a:Landroid/graphics/Shader;
    if-nez v0, :L0
    iget-object v0, p0, Landroidx/core/content/c/b;->b:Landroid/content/res/ColorStateList;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Landroid/content/res/ColorStateList;->isStateful()Z
    move-result v0
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public j([I)Z
  .registers 4
  .line 1
    invoke-virtual { p0 }, Landroidx/core/content/c/b;->i()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Landroidx/core/content/c/b;->b:Landroid/content/res/ColorStateList;
  .line 3
    invoke-virtual { v0 }, Landroid/content/res/ColorStateList;->getDefaultColor()I
    move-result v1
  .line 4
    invoke-virtual { v0, p1, v1 }, Landroid/content/res/ColorStateList;->getColorForState([II)I
    move-result p1
  .line 5
    iget v0, p0, Landroidx/core/content/c/b;->c:I
    if-eq p1, v0, :L0
    const/4 v0, 1
  .line 6
    iput p1, p0, Landroidx/core/content/c/b;->c:I
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public k(I)V
  .registers 2
  .line 1
    iput p1, p0, Landroidx/core/content/c/b;->c:I
    return-void
.end method

.method public l()Z
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroidx/core/content/c/b;->h()Z
    move-result v0
    if-nez v0, :L1
    iget v0, p0, Landroidx/core/content/c/b;->c:I
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
