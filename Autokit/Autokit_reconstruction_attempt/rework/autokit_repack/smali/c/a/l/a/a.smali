.class public Lc/a/l/a/a;
.super Lc/a/l/a/d;
.source "SourceFile"

# interfaces
.implements Landroidx/core/graphics/drawable/b;


# annotations
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


# instance fields
.field private p:Lc/a/l/a/a$c;

.field private q:Lc/a/l/a/a$g;

.field private r:I

.field private s:I

.field private t:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lc/a/l/a/a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0}, Lc/a/l/a/a;-><init>(Lc/a/l/a/a$c;Landroid/content/res/Resources;)V

    return-void
.end method

.method constructor <init>(Lc/a/l/a/a$c;Landroid/content/res/Resources;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lc/a/l/a/d;-><init>(Lc/a/l/a/d$a;)V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lc/a/l/a/a;->r:I

    .line 4
    iput v0, p0, Lc/a/l/a/a;->s:I

    .line 5
    new-instance v0, Lc/a/l/a/a$c;

    invoke-direct {v0, p1, p0, p2}, Lc/a/l/a/a$c;-><init>(Lc/a/l/a/a$c;Lc/a/l/a/a;Landroid/content/res/Resources;)V

    .line 6
    invoke-virtual {p0, v0}, Lc/a/l/a/a;->h(Lc/a/l/a/b$d;)V

    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/a/l/a/a;->onStateChange([I)Z

    .line 8
    invoke-virtual {p0}, Lc/a/l/a/a;->jumpToCurrentState()V

    return-void
.end method

.method public static m(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Lc/a/l/a/a;
    .registers 13

    .line 1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "animated-selector"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 3
    new-instance v0, Lc/a/l/a/a;

    invoke-direct {v0}, Lc/a/l/a/a;-><init>()V

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 4
    invoke-virtual/range {v2 .. v7}, Lc/a/l/a/a;->n(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-object v0

    .line 5
    :cond_1b
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": invalid animated-selector tag "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private o(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 11

    .line 1
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 2
    :cond_6
    :goto_6
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v1, :cond_3c

    .line 3
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-ge v3, v0, :cond_15

    const/4 v4, 0x3

    if-eq v2, v4, :cond_3c

    :cond_15
    const/4 v4, 0x2

    if-eq v2, v4, :cond_19

    goto :goto_6

    :cond_19
    if-le v3, v0, :cond_1c

    goto :goto_6

    .line 4
    :cond_1c
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "item"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 5
    invoke-direct/range {p0 .. p5}, Lc/a/l/a/a;->q(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I

    goto :goto_6

    .line 6
    :cond_2c
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "transition"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 7
    invoke-direct/range {p0 .. p5}, Lc/a/l/a/a;->r(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I

    goto :goto_6

    :cond_3c
    return-void
.end method

.method private p()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/a/l/a/a;->onStateChange([I)Z

    return-void
.end method

.method private q(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I
    .registers 10

    .line 1
    sget-object v0, Lc/a/m/b;->AnimatedStateListDrawableItem:[I

    invoke-static {p2, p5, p4, v0}, Landroidx/core/content/c/g;->k(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2
    sget v1, Lc/a/m/b;->AnimatedStateListDrawableItem_android_id:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 3
    sget v2, Lc/a/m/b;->AnimatedStateListDrawableItem_android_drawable:I

    const/4 v3, -0x1

    .line 4
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-lez v2, :cond_1f

    .line 5
    invoke-static {}, Landroidx/appcompat/widget/k0;->h()Landroidx/appcompat/widget/k0;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Landroidx/appcompat/widget/k0;->j(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_20

    :cond_1f
    const/4 p1, 0x0

    .line 6
    :goto_20
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 7
    invoke-virtual {p0, p4}, Lc/a/l/a/d;->k(Landroid/util/AttributeSet;)[I

    move-result-object v0

    const-string v2, ": <item> tag requires a \'drawable\' attribute or child tag defining a drawable"

    if-nez p1, :cond_70

    .line 8
    :goto_2b
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1

    const/4 v3, 0x4

    if-ne p1, v3, :cond_33

    goto :goto_2b

    :cond_33
    const/4 v3, 0x2

    if-ne p1, v3, :cond_57

    .line 9
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v3, "vector"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_47

    .line 10
    invoke-static {p2, p3, p4, p5}, Lc/q/a/a/h;->c(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Lc/q/a/a/h;

    move-result-object p1

    goto :goto_70

    .line 11
    :cond_47
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt p1, v3, :cond_52

    .line 12
    invoke-static {p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_70

    .line 13
    :cond_52
    invoke-static {p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_70

    .line 14
    :cond_57
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_70
    :goto_70
    if-eqz p1, :cond_79

    .line 16
    iget-object p2, p0, Lc/a/l/a/a;->p:Lc/a/l/a/a$c;

    invoke-virtual {p2, v0, p1, v1}, Lc/a/l/a/a$c;->B([ILandroid/graphics/drawable/Drawable;I)I

    move-result p1

    return p1

    .line 17
    :cond_79
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    goto :goto_93

    :goto_92
    throw p1

    :goto_93
    goto :goto_92
.end method

.method private r(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I
    .registers 13

    .line 1
    sget-object v0, Lc/a/m/b;->AnimatedStateListDrawableTransition:[I

    invoke-static {p2, p5, p4, v0}, Landroidx/core/content/c/g;->k(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2
    sget v1, Lc/a/m/b;->AnimatedStateListDrawableTransition_android_fromId:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 3
    sget v3, Lc/a/m/b;->AnimatedStateListDrawableTransition_android_toId:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 4
    sget v4, Lc/a/m/b;->AnimatedStateListDrawableTransition_android_drawable:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-lez v4, :cond_24

    .line 5
    invoke-static {}, Landroidx/appcompat/widget/k0;->h()Landroidx/appcompat/widget/k0;

    move-result-object v5

    invoke-virtual {v5, p1, v4}, Landroidx/appcompat/widget/k0;->j(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_25

    :cond_24
    const/4 v4, 0x0

    .line 6
    :goto_25
    sget v5, Lc/a/m/b;->AnimatedStateListDrawableTransition_android_reversible:I

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 7
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const-string v0, ": <transition> tag requires a \'drawable\' attribute or child tag defining a drawable"

    if-nez v4, :cond_78

    .line 8
    :goto_33
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v6, 0x4

    if-ne v4, v6, :cond_3b

    goto :goto_33

    :cond_3b
    const/4 v6, 0x2

    if-ne v4, v6, :cond_5f

    .line 9
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "animated-vector"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 10
    invoke-static {p1, p2, p3, p4, p5}, Lc/q/a/a/b;->a(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Lc/q/a/a/b;

    move-result-object v4

    goto :goto_78

    .line 11
    :cond_4f
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt p1, v4, :cond_5a

    .line 12
    invoke-static {p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_78

    .line 13
    :cond_5a
    invoke-static {p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_78

    .line 14
    :cond_5f
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_78
    :goto_78
    if-eqz v4, :cond_a0

    if-eq v1, v2, :cond_85

    if-eq v3, v2, :cond_85

    .line 16
    iget-object p1, p0, Lc/a/l/a/a;->p:Lc/a/l/a/a$c;

    invoke-virtual {p1, v1, v3, v4, v5}, Lc/a/l/a/a$c;->C(IILandroid/graphics/drawable/Drawable;Z)I

    move-result p1

    return p1

    .line 17
    :cond_85
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": <transition> tag requires \'fromId\' & \'toId\' attributes"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_a0
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    goto :goto_ba

    :goto_b9
    throw p1

    :goto_ba
    goto :goto_b9
.end method

.method private s(I)Z
    .registers 11

    .line 1
    iget-object v0, p0, Lc/a/l/a/a;->q:Lc/a/l/a/a$g;

    const/4 v1, 0x1

    if-eqz v0, :cond_24

    .line 2
    iget v2, p0, Lc/a/l/a/a;->r:I

    if-ne p1, v2, :cond_a

    return v1

    .line 3
    :cond_a
    iget v2, p0, Lc/a/l/a/a;->s:I

    if-ne p1, v2, :cond_1e

    invoke-virtual {v0}, Lc/a/l/a/a$g;->a()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 4
    invoke-virtual {v0}, Lc/a/l/a/a$g;->b()V

    .line 5
    iget v0, p0, Lc/a/l/a/a;->s:I

    iput v0, p0, Lc/a/l/a/a;->r:I

    .line 6
    iput p1, p0, Lc/a/l/a/a;->s:I

    return v1

    .line 7
    :cond_1e
    iget v2, p0, Lc/a/l/a/a;->r:I

    .line 8
    invoke-virtual {v0}, Lc/a/l/a/a$g;->d()V

    goto :goto_28

    .line 9
    :cond_24
    invoke-virtual {p0}, Lc/a/l/a/b;->c()I

    move-result v2

    :goto_28
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lc/a/l/a/a;->q:Lc/a/l/a/a$g;

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lc/a/l/a/a;->s:I

    .line 12
    iput v0, p0, Lc/a/l/a/a;->r:I

    .line 13
    iget-object v0, p0, Lc/a/l/a/a;->p:Lc/a/l/a/a$c;

    .line 14
    invoke-virtual {v0, v2}, Lc/a/l/a/a$c;->E(I)I

    move-result v3

    .line 15
    invoke-virtual {v0, p1}, Lc/a/l/a/a$c;->E(I)I

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_83

    if-nez v3, :cond_40

    goto :goto_83

    .line 16
    :cond_40
    invoke-virtual {v0, v3, v4}, Lc/a/l/a/a$c;->G(II)I

    move-result v6

    if-gez v6, :cond_47

    return v5

    .line 17
    :cond_47
    invoke-virtual {v0, v3, v4}, Lc/a/l/a/a$c;->I(II)Z

    move-result v7

    .line 18
    invoke-virtual {p0, v6}, Lc/a/l/a/b;->g(I)Z

    .line 19
    invoke-virtual {p0}, Lc/a/l/a/a;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 20
    instance-of v8, v6, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v8, :cond_62

    .line 21
    invoke-virtual {v0, v3, v4}, Lc/a/l/a/a$c;->H(II)Z

    move-result v0

    .line 22
    new-instance v3, Lc/a/l/a/a$e;

    check-cast v6, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v3, v6, v0, v7}, Lc/a/l/a/a$e;-><init>(Landroid/graphics/drawable/AnimationDrawable;ZZ)V

    goto :goto_79

    .line 23
    :cond_62
    instance-of v0, v6, Lc/q/a/a/b;

    if-eqz v0, :cond_6e

    .line 24
    new-instance v3, Lc/a/l/a/a$d;

    check-cast v6, Lc/q/a/a/b;

    invoke-direct {v3, v6}, Lc/a/l/a/a$d;-><init>(Lc/q/a/a/b;)V

    goto :goto_79

    .line 25
    :cond_6e
    instance-of v0, v6, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_83

    .line 26
    new-instance v3, Lc/a/l/a/a$b;

    check-cast v6, Landroid/graphics/drawable/Animatable;

    invoke-direct {v3, v6}, Lc/a/l/a/a$b;-><init>(Landroid/graphics/drawable/Animatable;)V

    .line 27
    :goto_79
    invoke-virtual {v3}, Lc/a/l/a/a$g;->c()V

    .line 28
    iput-object v3, p0, Lc/a/l/a/a;->q:Lc/a/l/a/a$g;

    .line 29
    iput v2, p0, Lc/a/l/a/a;->s:I

    .line 30
    iput p1, p0, Lc/a/l/a/a;->r:I

    return v1

    :cond_83
    :goto_83
    return v5
.end method

.method private t(Landroid/content/res/TypedArray;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lc/a/l/a/a;->p:Lc/a/l/a/a$c;

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_11

    .line 3
    iget v1, v0, Lc/a/l/a/b$d;->d:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Lc/a/l/a/b$d;->d:I

    .line 4
    :cond_11
    sget v1, Lc/a/m/b;->AnimatedStateListDrawableCompat_android_variablePadding:I

    iget-boolean v2, v0, Lc/a/l/a/b$d;->i:Z

    .line 5
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 6
    invoke-virtual {v0, v1}, Lc/a/l/a/b$d;->x(Z)V

    .line 7
    sget v1, Lc/a/m/b;->AnimatedStateListDrawableCompat_android_constantSize:I

    iget-boolean v2, v0, Lc/a/l/a/b$d;->l:Z

    .line 8
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 9
    invoke-virtual {v0, v1}, Lc/a/l/a/b$d;->t(Z)V

    .line 10
    sget v1, Lc/a/m/b;->AnimatedStateListDrawableCompat_android_enterFadeDuration:I

    iget v2, v0, Lc/a/l/a/b$d;->A:I

    .line 11
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Lc/a/l/a/b$d;->u(I)V

    .line 13
    sget v1, Lc/a/m/b;->AnimatedStateListDrawableCompat_android_exitFadeDuration:I

    iget v2, v0, Lc/a/l/a/b$d;->B:I

    .line 14
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Lc/a/l/a/b$d;->v(I)V

    .line 16
    sget v1, Lc/a/m/b;->AnimatedStateListDrawableCompat_android_dither:I

    iget-boolean v0, v0, Lc/a/l/a/b$d;->x:Z

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lc/a/l/a/a;->setDither(Z)V

    return-void
.end method


# virtual methods
.method bridge synthetic b()Lc/a/l/a/b$d;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lc/a/l/a/a;->l()Lc/a/l/a/a$c;

    move-result-object v0

    return-object v0
.end method

.method h(Lc/a/l/a/b$d;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lc/a/l/a/d;->h(Lc/a/l/a/b$d;)V

    .line 2
    instance-of v0, p1, Lc/a/l/a/a$c;

    if-eqz v0, :cond_b

    .line 3
    check-cast p1, Lc/a/l/a/a$c;

    iput-object p1, p0, Lc/a/l/a/a;->p:Lc/a/l/a/a$c;

    :cond_b
    return-void
.end method

.method public isStateful()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method bridge synthetic j()Lc/a/l/a/d$a;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lc/a/l/a/a;->l()Lc/a/l/a/a$c;

    move-result-object v0

    return-object v0
.end method

.method public jumpToCurrentState()V
    .registers 2

    .line 1
    invoke-super {p0}, Lc/a/l/a/b;->jumpToCurrentState()V

    .line 2
    iget-object v0, p0, Lc/a/l/a/a;->q:Lc/a/l/a/a$g;

    if-eqz v0, :cond_17

    .line 3
    invoke-virtual {v0}, Lc/a/l/a/a$g;->d()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lc/a/l/a/a;->q:Lc/a/l/a/a$g;

    .line 5
    iget v0, p0, Lc/a/l/a/a;->r:I

    invoke-virtual {p0, v0}, Lc/a/l/a/b;->g(I)Z

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lc/a/l/a/a;->r:I

    .line 7
    iput v0, p0, Lc/a/l/a/a;->s:I

    :cond_17
    return-void
.end method

.method l()Lc/a/l/a/a$c;
    .registers 4

    .line 1
    new-instance v0, Lc/a/l/a/a$c;

    iget-object v1, p0, Lc/a/l/a/a;->p:Lc/a/l/a/a$c;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lc/a/l/a/a$c;-><init>(Lc/a/l/a/a$c;Lc/a/l/a/a;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iget-boolean v0, p0, Lc/a/l/a/a;->t:Z

    if-nez v0, :cond_11

    invoke-super {p0}, Lc/a/l/a/d;->mutate()Landroid/graphics/drawable/Drawable;

    if-ne p0, p0, :cond_11

    .line 2
    iget-object v0, p0, Lc/a/l/a/a;->p:Lc/a/l/a/a$c;

    invoke-virtual {v0}, Lc/a/l/a/a$c;->r()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lc/a/l/a/a;->t:Z

    :cond_11
    return-object p0
.end method

.method public n(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 9

    .line 1
    sget-object v0, Lc/a/m/b;->AnimatedStateListDrawableCompat:[I

    invoke-static {p2, p5, p4, v0}, Landroidx/core/content/c/g;->k(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2
    sget v1, Lc/a/m/b;->AnimatedStateListDrawableCompat_android_visible:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1, v2}, Lc/a/l/a/a;->setVisible(ZZ)Z

    .line 3
    invoke-direct {p0, v0}, Lc/a/l/a/a;->t(Landroid/content/res/TypedArray;)V

    .line 4
    invoke-virtual {p0, p2}, Lc/a/l/a/b;->i(Landroid/content/res/Resources;)V

    .line 5
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 6
    invoke-direct/range {p0 .. p5}, Lc/a/l/a/a;->o(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 7
    invoke-direct {p0}, Lc/a/l/a/a;->p()V

    return-void
.end method

.method protected onStateChange([I)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lc/a/l/a/a;->p:Lc/a/l/a/a$c;

    invoke-virtual {v0, p1}, Lc/a/l/a/a$c;->F([I)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lc/a/l/a/b;->c()I

    move-result v1

    if-eq v0, v1, :cond_1a

    .line 3
    invoke-direct {p0, v0}, Lc/a/l/a/a;->s(I)Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {p0, v0}, Lc/a/l/a/b;->g(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 4
    :goto_1b
    invoke-virtual {p0}, Lc/a/l/a/a;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 5
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_26
    return v0
.end method

.method public setVisible(ZZ)Z
    .registers 5

    .line 1
    invoke-super {p0, p1, p2}, Lc/a/l/a/b;->setVisible(ZZ)Z

    move-result v0

    .line 2
    iget-object v1, p0, Lc/a/l/a/a;->q:Lc/a/l/a/a$g;

    if-eqz v1, :cond_17

    if-nez v0, :cond_c

    if-eqz p2, :cond_17

    :cond_c
    if-eqz p1, :cond_14

    .line 3
    iget-object p1, p0, Lc/a/l/a/a;->q:Lc/a/l/a/a$g;

    invoke-virtual {p1}, Lc/a/l/a/a$g;->c()V

    goto :goto_17

    .line 4
    :cond_14
    invoke-virtual {p0}, Lc/a/l/a/a;->jumpToCurrentState()V

    :cond_17
    :goto_17
    return v0
.end method
