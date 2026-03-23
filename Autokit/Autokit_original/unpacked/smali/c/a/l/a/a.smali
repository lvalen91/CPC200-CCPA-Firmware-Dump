.class public Lc/a/l/a/a;
.super Lc/a/l/a/d;
.implements Landroidx/core/graphics/drawable/b;
.source "SourceFile"

.annotation build Landroid/annotation/SuppressLint;
  value = {
    "RestrictedAPI"
  }
.end annotation
.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lc/a/l/a/a$f;,
    Lc/a/l/a/a$c;,
    Lc/a/l/a/a$d;,
    Lc/a/l/a/a$e;,
    Lc/a/l/a/a$b;,
    Lc/a/l/a/a$g;
  }
.end annotation

.field private p:Lc/a/l/a/a$c;

.field private q:Lc/a/l/a/a$g;

.field private r:I

.field private s:I

.field private t:Z

.method static constructor <clinit>()V
  .registers 1
  .line 1
    const-class v0, Lc/a/l/a/a;
    return-void
.end method

.method public constructor <init>()V
  .registers 2
    const/4 v0, 0
  .line 1
    invoke-direct { p0, v0, v0 }, Lc/a/l/a/a;-><init>(Lc/a/l/a/a$c;Landroid/content/res/Resources;)V
    return-void
.end method

.method constructor <init>(Lc/a/l/a/a$c;Landroid/content/res/Resources;)V
  .registers 4
    const/4 v0, 0
  .line 2
    invoke-direct { p0, v0 }, Lc/a/l/a/d;-><init>(Lc/a/l/a/d$a;)V
    const/4 v0, -1
  .line 3
    iput v0, p0, Lc/a/l/a/a;->r:I
  .line 4
    iput v0, p0, Lc/a/l/a/a;->s:I
  .line 5
    new-instance v0, Lc/a/l/a/a$c;
    invoke-direct { v0, p1, p0, p2 }, Lc/a/l/a/a$c;-><init>(Lc/a/l/a/a$c;Lc/a/l/a/a;Landroid/content/res/Resources;)V
  .line 6
    invoke-virtual { p0, v0 }, Lc/a/l/a/a;->h(Lc/a/l/a/b$d;)V
  .line 7
    invoke-virtual { p0 }, Landroid/graphics/drawable/Drawable;->getState()[I
    move-result-object p1
    invoke-virtual { p0, p1 }, Lc/a/l/a/a;->onStateChange([I)Z
  .line 8
    invoke-virtual { p0 }, Lc/a/l/a/a;->jumpToCurrentState()V
    return-void
.end method

.method public static m(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Lc/a/l/a/a;
  .registers 13
  .line 1
    invoke-interface { p2 }, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
    move-result-object v0
    const-string v1, "animated-selector"
  .line 2
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L0
  .line 3
    new-instance v0, Lc/a/l/a/a;
    invoke-direct { v0 }, Lc/a/l/a/a;-><init>()V
    move-object v2, v0
    move-object v3, p0
    move-object v4, p1
    move-object v5, p2
    move-object v6, p3
    move-object v7, p4
  .line 4
    invoke-virtual/range { v2 .. v7 }, Lc/a/l/a/a;->n(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    return-object v0
  :L0
  .line 5
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
  .line 6
    invoke-interface { p2 }, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;
    move-result-object p2
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p2, ": invalid animated-selector tag "
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { p0, p1 }, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V
    throw p0
.end method

.method private o(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
  .registers 11
  .line 1
    invoke-interface { p3 }, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I
    move-result v0
    const/4 v1, 1
    add-int/2addr v0, v1
  :L0
  .line 2
    invoke-interface { p3 }, Lorg/xmlpull/v1/XmlPullParser;->next()I
    move-result v2
    if-eq v2, v1, :L5
  .line 3
    invoke-interface { p3 }, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I
    move-result v3
    if-ge v3, v0, :L1
    const/4 v4, 3
    if-eq v2, v4, :L5
  :L1
    const/4 v4, 2
    if-eq v2, v4, :L2
    goto :L0
  :L2
    if-le v3, v0, :L3
    goto :L0
  :L3
  .line 4
    invoke-interface { p3 }, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
    move-result-object v2
    const-string v3, "item"
    invoke-virtual { v2, v3 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :L4
  .line 5
    invoke-direct/range { p0 .. p5 }, Lc/a/l/a/a;->q(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I
    goto :L0
  :L4
  .line 6
    invoke-interface { p3 }, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
    move-result-object v2
    const-string v3, "transition"
    invoke-virtual { v2, v3 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :L0
  .line 7
    invoke-direct/range { p0 .. p5 }, Lc/a/l/a/a;->r(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I
    goto :L0
  :L5
    return-void
.end method

.method private p()V
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroid/graphics/drawable/Drawable;->getState()[I
    move-result-object v0
    invoke-virtual { p0, v0 }, Lc/a/l/a/a;->onStateChange([I)Z
    return-void
.end method

.method private q(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I
  .registers 10
  .line 1
    sget-object v0, Lc/a/m/b;->AnimatedStateListDrawableItem:[I
    invoke-static { p2, p5, p4, v0 }, Landroidx/core/content/c/g;->k(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    move-result-object v0
  .line 2
    sget v1, Lc/a/m/b;->AnimatedStateListDrawableItem_android_id:I
    const/4 v2, 0
    invoke-virtual { v0, v1, v2 }, Landroid/content/res/TypedArray;->getResourceId(II)I
    move-result v1
  .line 3
    sget v2, Lc/a/m/b;->AnimatedStateListDrawableItem_android_drawable:I
    const/4 v3, -1
  .line 4
    invoke-virtual { v0, v2, v3 }, Landroid/content/res/TypedArray;->getResourceId(II)I
    move-result v2
    if-lez v2, :L0
  .line 5
    invoke-static { }, Landroidx/appcompat/widget/k0;->h()Landroidx/appcompat/widget/k0;
    move-result-object v3
    invoke-virtual { v3, p1, v2 }, Landroidx/appcompat/widget/k0;->j(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    move-result-object p1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
  .line 6
    invoke-virtual { v0 }, Landroid/content/res/TypedArray;->recycle()V
  .line 7
    invoke-virtual { p0, p4 }, Lc/a/l/a/d;->k(Landroid/util/AttributeSet;)[I
    move-result-object v0
    const-string v2, ": <item> tag requires a 'drawable' attribute or child tag defining a drawable"
    if-nez p1, :L7
  :L2
  .line 8
    invoke-interface { p3 }, Lorg/xmlpull/v1/XmlPullParser;->next()I
    move-result p1
    const/4 v3, 4
    if-ne p1, v3, :L3
    goto :L2
  :L3
    const/4 v3, 2
    if-ne p1, v3, :L6
  .line 9
    invoke-interface { p3 }, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
    move-result-object p1
    const-string v3, "vector"
    invoke-virtual { p1, v3 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p1
    if-eqz p1, :L4
  .line 10
    invoke-static { p2, p3, p4, p5 }, Lc/q/a/a/h;->c(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Lc/q/a/a/h;
    move-result-object p1
    goto :L7
  :L4
  .line 11
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v3, 21
    if-lt p1, v3, :L5
  .line 12
    invoke-static { p2, p3, p4, p5 }, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    move-result-object p1
    goto :L7
  :L5
  .line 13
    invoke-static { p2, p3, p4 }, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;
    move-result-object p1
    goto :L7
  :L6
  .line 14
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
  .line 15
    invoke-interface { p3 }, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;
    move-result-object p3
    invoke-virtual { p2, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V
    throw p1
  :L7
    if-eqz p1, :L8
  .line 16
    iget-object p2, p0, Lc/a/l/a/a;->p:Lc/a/l/a/a$c;
    invoke-virtual { p2, v0, p1, v1 }, Lc/a/l/a/a$c;->B([ILandroid/graphics/drawable/Drawable;I)I
    move-result p1
    return p1
  :L8
  .line 17
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
  .line 18
    invoke-interface { p3 }, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;
    move-result-object p3
    invoke-virtual { p2, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V
    goto :L10
  :L9
    throw p1
  :L10
    goto :L9
.end method

.method private r(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I
  .registers 13
  .line 1
    sget-object v0, Lc/a/m/b;->AnimatedStateListDrawableTransition:[I
    invoke-static { p2, p5, p4, v0 }, Landroidx/core/content/c/g;->k(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    move-result-object v0
  .line 2
    sget v1, Lc/a/m/b;->AnimatedStateListDrawableTransition_android_fromId:I
    const/4 v2, -1
    invoke-virtual { v0, v1, v2 }, Landroid/content/res/TypedArray;->getResourceId(II)I
    move-result v1
  .line 3
    sget v3, Lc/a/m/b;->AnimatedStateListDrawableTransition_android_toId:I
    invoke-virtual { v0, v3, v2 }, Landroid/content/res/TypedArray;->getResourceId(II)I
    move-result v3
  .line 4
    sget v4, Lc/a/m/b;->AnimatedStateListDrawableTransition_android_drawable:I
    invoke-virtual { v0, v4, v2 }, Landroid/content/res/TypedArray;->getResourceId(II)I
    move-result v4
    if-lez v4, :L0
  .line 5
    invoke-static { }, Landroidx/appcompat/widget/k0;->h()Landroidx/appcompat/widget/k0;
    move-result-object v5
    invoke-virtual { v5, p1, v4 }, Landroidx/appcompat/widget/k0;->j(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    move-result-object v4
    goto :L1
  :L0
    const/4 v4, 0
  :L1
  .line 6
    sget v5, Lc/a/m/b;->AnimatedStateListDrawableTransition_android_reversible:I
    const/4 v6, 0
    invoke-virtual { v0, v5, v6 }, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    move-result v5
  .line 7
    invoke-virtual { v0 }, Landroid/content/res/TypedArray;->recycle()V
    const-string v0, ": <transition> tag requires a 'drawable' attribute or child tag defining a drawable"
    if-nez v4, :L7
  :L2
  .line 8
    invoke-interface { p3 }, Lorg/xmlpull/v1/XmlPullParser;->next()I
    move-result v4
    const/4 v6, 4
    if-ne v4, v6, :L3
    goto :L2
  :L3
    const/4 v6, 2
    if-ne v4, v6, :L6
  .line 9
    invoke-interface { p3 }, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
    move-result-object v4
    const-string v6, "animated-vector"
    invoke-virtual { v4, v6 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v4
    if-eqz v4, :L4
  .line 10
    invoke-static { p1, p2, p3, p4, p5 }, Lc/q/a/a/b;->a(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Lc/q/a/a/b;
    move-result-object v4
    goto :L7
  :L4
  .line 11
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v4, 21
    if-lt p1, v4, :L5
  .line 12
    invoke-static { p2, p3, p4, p5 }, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    move-result-object v4
    goto :L7
  :L5
  .line 13
    invoke-static { p2, p3, p4 }, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;
    move-result-object v4
    goto :L7
  :L6
  .line 14
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
  .line 15
    invoke-interface { p3 }, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;
    move-result-object p3
    invoke-virtual { p2, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V
    throw p1
  :L7
    if-eqz v4, :L9
    if-eq v1, v2, :L8
    if-eq v3, v2, :L8
  .line 16
    iget-object p1, p0, Lc/a/l/a/a;->p:Lc/a/l/a/a$c;
    invoke-virtual { p1, v1, v3, v4, v5 }, Lc/a/l/a/a$c;->C(IILandroid/graphics/drawable/Drawable;Z)I
    move-result p1
    return p1
  :L8
  .line 17
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
  .line 18
    invoke-interface { p3 }, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;
    move-result-object p3
    invoke-virtual { p2, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p3, ": <transition> tag requires 'fromId' & 'toId' attributes"
    invoke-virtual { p2, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V
    throw p1
  :L9
  .line 19
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
  .line 20
    invoke-interface { p3 }, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;
    move-result-object p3
    invoke-virtual { p2, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V
    goto :L11
  :L10
    throw p1
  :L11
    goto :L10
.end method

.method private s(I)Z
  .registers 11
  .line 1
    iget-object v0, p0, Lc/a/l/a/a;->q:Lc/a/l/a/a$g;
    const/4 v1, 1
    if-eqz v0, :L2
  .line 2
    iget v2, p0, Lc/a/l/a/a;->r:I
    if-ne p1, v2, :L0
    return v1
  :L0
  .line 3
    iget v2, p0, Lc/a/l/a/a;->s:I
    if-ne p1, v2, :L1
    invoke-virtual { v0 }, Lc/a/l/a/a$g;->a()Z
    move-result v2
    if-eqz v2, :L1
  .line 4
    invoke-virtual { v0 }, Lc/a/l/a/a$g;->b()V
  .line 5
    iget v0, p0, Lc/a/l/a/a;->s:I
    iput v0, p0, Lc/a/l/a/a;->r:I
  .line 6
    iput p1, p0, Lc/a/l/a/a;->s:I
    return v1
  :L1
  .line 7
    iget v2, p0, Lc/a/l/a/a;->r:I
  .line 8
    invoke-virtual { v0 }, Lc/a/l/a/a$g;->d()V
    goto :L3
  :L2
  .line 9
    invoke-virtual { p0 }, Lc/a/l/a/b;->c()I
    move-result v2
  :L3
    const/4 v0, 0
  .line 10
    iput-object v0, p0, Lc/a/l/a/a;->q:Lc/a/l/a/a$g;
    const/4 v0, -1
  .line 11
    iput v0, p0, Lc/a/l/a/a;->s:I
  .line 12
    iput v0, p0, Lc/a/l/a/a;->r:I
  .line 13
    iget-object v0, p0, Lc/a/l/a/a;->p:Lc/a/l/a/a$c;
  .line 14
    invoke-virtual { v0, v2 }, Lc/a/l/a/a$c;->E(I)I
    move-result v3
  .line 15
    invoke-virtual { v0, p1 }, Lc/a/l/a/a$c;->E(I)I
    move-result v4
    const/4 v5, 0
    if-eqz v4, :L9
    if-nez v3, :L4
    goto :L9
  :L4
  .line 16
    invoke-virtual { v0, v3, v4 }, Lc/a/l/a/a$c;->G(II)I
    move-result v6
    if-gez v6, :L5
    return v5
  :L5
  .line 17
    invoke-virtual { v0, v3, v4 }, Lc/a/l/a/a$c;->I(II)Z
    move-result v7
  .line 18
    invoke-virtual { p0, v6 }, Lc/a/l/a/b;->g(I)Z
  .line 19
    invoke-virtual { p0 }, Lc/a/l/a/a;->getCurrent()Landroid/graphics/drawable/Drawable;
    move-result-object v6
  .line 20
    instance-of v8, v6, Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v8, :L6
  .line 21
    invoke-virtual { v0, v3, v4 }, Lc/a/l/a/a$c;->H(II)Z
    move-result v0
  .line 22
    new-instance v3, Lc/a/l/a/a$e;
    check-cast v6, Landroid/graphics/drawable/AnimationDrawable;
    invoke-direct { v3, v6, v0, v7 }, Lc/a/l/a/a$e;-><init>(Landroid/graphics/drawable/AnimationDrawable;ZZ)V
    goto :L8
  :L6
  .line 23
    instance-of v0, v6, Lc/q/a/a/b;
    if-eqz v0, :L7
  .line 24
    new-instance v3, Lc/a/l/a/a$d;
    check-cast v6, Lc/q/a/a/b;
    invoke-direct { v3, v6 }, Lc/a/l/a/a$d;-><init>(Lc/q/a/a/b;)V
    goto :L8
  :L7
  .line 25
    instance-of v0, v6, Landroid/graphics/drawable/Animatable;
    if-eqz v0, :L9
  .line 26
    new-instance v3, Lc/a/l/a/a$b;
    check-cast v6, Landroid/graphics/drawable/Animatable;
    invoke-direct { v3, v6 }, Lc/a/l/a/a$b;-><init>(Landroid/graphics/drawable/Animatable;)V
  :L8
  .line 27
    invoke-virtual { v3 }, Lc/a/l/a/a$g;->c()V
  .line 28
    iput-object v3, p0, Lc/a/l/a/a;->q:Lc/a/l/a/a$g;
  .line 29
    iput v2, p0, Lc/a/l/a/a;->s:I
  .line 30
    iput p1, p0, Lc/a/l/a/a;->r:I
    return v1
  :L9
    return v5
.end method

.method private t(Landroid/content/res/TypedArray;)V
  .registers 5
  .line 1
    iget-object v0, p0, Lc/a/l/a/a;->p:Lc/a/l/a/a$c;
  .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 21
    if-lt v1, v2, :L0
  .line 3
    iget v1, v0, Lc/a/l/a/b$d;->d:I
    invoke-virtual { p1 }, Landroid/content/res/TypedArray;->getChangingConfigurations()I
    move-result v2
    or-int/2addr v1, v2
    iput v1, v0, Lc/a/l/a/b$d;->d:I
  :L0
  .line 4
    sget v1, Lc/a/m/b;->AnimatedStateListDrawableCompat_android_variablePadding:I
    iget-boolean v2, v0, Lc/a/l/a/b$d;->i:Z
  .line 5
    invoke-virtual { p1, v1, v2 }, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    move-result v1
  .line 6
    invoke-virtual { v0, v1 }, Lc/a/l/a/b$d;->x(Z)V
  .line 7
    sget v1, Lc/a/m/b;->AnimatedStateListDrawableCompat_android_constantSize:I
    iget-boolean v2, v0, Lc/a/l/a/b$d;->l:Z
  .line 8
    invoke-virtual { p1, v1, v2 }, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    move-result v1
  .line 9
    invoke-virtual { v0, v1 }, Lc/a/l/a/b$d;->t(Z)V
  .line 10
    sget v1, Lc/a/m/b;->AnimatedStateListDrawableCompat_android_enterFadeDuration:I
    iget v2, v0, Lc/a/l/a/b$d;->A:I
  .line 11
    invoke-virtual { p1, v1, v2 }, Landroid/content/res/TypedArray;->getInt(II)I
    move-result v1
  .line 12
    invoke-virtual { v0, v1 }, Lc/a/l/a/b$d;->u(I)V
  .line 13
    sget v1, Lc/a/m/b;->AnimatedStateListDrawableCompat_android_exitFadeDuration:I
    iget v2, v0, Lc/a/l/a/b$d;->B:I
  .line 14
    invoke-virtual { p1, v1, v2 }, Landroid/content/res/TypedArray;->getInt(II)I
    move-result v1
  .line 15
    invoke-virtual { v0, v1 }, Lc/a/l/a/b$d;->v(I)V
  .line 16
    sget v1, Lc/a/m/b;->AnimatedStateListDrawableCompat_android_dither:I
    iget-boolean v0, v0, Lc/a/l/a/b$d;->x:Z
    invoke-virtual { p1, v1, v0 }, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    move-result p1
    invoke-virtual { p0, p1 }, Lc/a/l/a/a;->setDither(Z)V
    return-void
.end method

.method bridge synthetic b()Lc/a/l/a/b$d;
  .registers 2
  .line 1
    invoke-virtual { p0 }, Lc/a/l/a/a;->l()Lc/a/l/a/a$c;
    move-result-object v0
    return-object v0
.end method

.method h(Lc/a/l/a/b$d;)V
  .registers 3
  .line 1
    invoke-super { p0, p1 }, Lc/a/l/a/d;->h(Lc/a/l/a/b$d;)V
  .line 2
    instance-of v0, p1, Lc/a/l/a/a$c;
    if-eqz v0, :L0
  .line 3
    check-cast p1, Lc/a/l/a/a$c;
    iput-object p1, p0, Lc/a/l/a/a;->p:Lc/a/l/a/a$c;
  :L0
    return-void
.end method

.method public isStateful()Z
  .registers 2
    const/4 v0, 1
    return v0
.end method

.method bridge synthetic j()Lc/a/l/a/d$a;
  .registers 2
  .line 1
    invoke-virtual { p0 }, Lc/a/l/a/a;->l()Lc/a/l/a/a$c;
    move-result-object v0
    return-object v0
.end method

.method public jumpToCurrentState()V
  .registers 2
  .line 1
    invoke-super { p0 }, Lc/a/l/a/b;->jumpToCurrentState()V
  .line 2
    iget-object v0, p0, Lc/a/l/a/a;->q:Lc/a/l/a/a$g;
    if-eqz v0, :L0
  .line 3
    invoke-virtual { v0 }, Lc/a/l/a/a$g;->d()V
    const/4 v0, 0
  .line 4
    iput-object v0, p0, Lc/a/l/a/a;->q:Lc/a/l/a/a$g;
  .line 5
    iget v0, p0, Lc/a/l/a/a;->r:I
    invoke-virtual { p0, v0 }, Lc/a/l/a/b;->g(I)Z
    const/4 v0, -1
  .line 6
    iput v0, p0, Lc/a/l/a/a;->r:I
  .line 7
    iput v0, p0, Lc/a/l/a/a;->s:I
  :L0
    return-void
.end method

.method l()Lc/a/l/a/a$c;
  .registers 4
  .line 1
    new-instance v0, Lc/a/l/a/a$c;
    iget-object v1, p0, Lc/a/l/a/a;->p:Lc/a/l/a/a$c;
    const/4 v2, 0
    invoke-direct { v0, v1, p0, v2 }, Lc/a/l/a/a$c;-><init>(Lc/a/l/a/a$c;Lc/a/l/a/a;Landroid/content/res/Resources;)V
    return-object v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
  .registers 2
  .line 1
    iget-boolean v0, p0, Lc/a/l/a/a;->t:Z
    if-nez v0, :L0
    invoke-super { p0 }, Lc/a/l/a/d;->mutate()Landroid/graphics/drawable/Drawable;
  .line 2
    iget-object v0, p0, Lc/a/l/a/a;->p:Lc/a/l/a/a$c;
    invoke-virtual { v0 }, Lc/a/l/a/a$c;->r()V
    const/4 v0, 1
  .line 3
    iput-boolean v0, p0, Lc/a/l/a/a;->t:Z
  :L0
    return-object p0
.end method

.method public n(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
  .registers 9
  .line 1
    sget-object v0, Lc/a/m/b;->AnimatedStateListDrawableCompat:[I
    invoke-static { p2, p5, p4, v0 }, Landroidx/core/content/c/g;->k(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    move-result-object v0
  .line 2
    sget v1, Lc/a/m/b;->AnimatedStateListDrawableCompat_android_visible:I
    const/4 v2, 1
    invoke-virtual { v0, v1, v2 }, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    move-result v1
    invoke-virtual { p0, v1, v2 }, Lc/a/l/a/a;->setVisible(ZZ)Z
  .line 3
    invoke-direct { p0, v0 }, Lc/a/l/a/a;->t(Landroid/content/res/TypedArray;)V
  .line 4
    invoke-virtual { p0, p2 }, Lc/a/l/a/b;->i(Landroid/content/res/Resources;)V
  .line 5
    invoke-virtual { v0 }, Landroid/content/res/TypedArray;->recycle()V
  .line 6
    invoke-direct/range { p0 .. p5 }, Lc/a/l/a/a;->o(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
  .line 7
    invoke-direct { p0 }, Lc/a/l/a/a;->p()V
    return-void
.end method

.method protected onStateChange([I)Z
  .registers 4
  .line 1
    iget-object v0, p0, Lc/a/l/a/a;->p:Lc/a/l/a/a$c;
    invoke-virtual { v0, p1 }, Lc/a/l/a/a$c;->F([I)I
    move-result v0
  .line 2
    invoke-virtual { p0 }, Lc/a/l/a/b;->c()I
    move-result v1
    if-eq v0, v1, :L1
  .line 3
    invoke-direct { p0, v0 }, Lc/a/l/a/a;->s(I)Z
    move-result v1
    if-nez v1, :L0
    invoke-virtual { p0, v0 }, Lc/a/l/a/b;->g(I)Z
    move-result v0
    if-eqz v0, :L1
  :L0
    const/4 v0, 1
    goto :L2
  :L1
    const/4 v0, 0
  :L2
  .line 4
    invoke-virtual { p0 }, Lc/a/l/a/a;->getCurrent()Landroid/graphics/drawable/Drawable;
    move-result-object v1
    if-eqz v1, :L3
  .line 5
    invoke-virtual { v1, p1 }, Landroid/graphics/drawable/Drawable;->setState([I)Z
    move-result p1
    or-int/2addr v0, p1
  :L3
    return v0
.end method

.method public setVisible(ZZ)Z
  .registers 5
  .line 1
    invoke-super { p0, p1, p2 }, Lc/a/l/a/b;->setVisible(ZZ)Z
    move-result v0
  .line 2
    iget-object v1, p0, Lc/a/l/a/a;->q:Lc/a/l/a/a$g;
    if-eqz v1, :L2
    if-nez v0, :L0
    if-eqz p2, :L2
  :L0
    if-eqz p1, :L1
  .line 3
    iget-object p1, p0, Lc/a/l/a/a;->q:Lc/a/l/a/a$g;
    invoke-virtual { p1 }, Lc/a/l/a/a$g;->c()V
    goto :L2
  :L1
  .line 4
    invoke-virtual { p0 }, Lc/a/l/a/a;->jumpToCurrentState()V
  :L2
    return v0
.end method
