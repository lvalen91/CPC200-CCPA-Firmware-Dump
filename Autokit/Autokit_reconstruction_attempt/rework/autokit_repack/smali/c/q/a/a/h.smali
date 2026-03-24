.class public Lc/q/a/a/h;
.super Lc/q/a/a/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/q/a/a/h$c;,
        Lc/q/a/a/h$b;,
        Lc/q/a/a/h$f;,
        Lc/q/a/a/h$d;,
        Lc/q/a/a/h$e;,
        Lc/q/a/a/h$g;,
        Lc/q/a/a/h$h;,
        Lc/q/a/a/h$i;
    }
.end annotation


# static fields
.field static final k:Landroid/graphics/PorterDuff$Mode;


# instance fields
.field private c:Lc/q/a/a/h$h;

.field private d:Landroid/graphics/PorterDuffColorFilter;

.field private e:Landroid/graphics/ColorFilter;

.field private f:Z

.field private g:Z

.field private final h:[F

.field private final i:Landroid/graphics/Matrix;

.field private final j:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Lc/q/a/a/h;->k:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lc/q/a/a/g;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lc/q/a/a/h;->g:Z

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 3
    iput-object v0, p0, Lc/q/a/a/h;->h:[F

    .line 4
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lc/q/a/a/h;->i:Landroid/graphics/Matrix;

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lc/q/a/a/h;->j:Landroid/graphics/Rect;

    .line 6
    new-instance v0, Lc/q/a/a/h$h;

    invoke-direct {v0}, Lc/q/a/a/h$h;-><init>()V

    iput-object v0, p0, Lc/q/a/a/h;->c:Lc/q/a/a/h$h;

    return-void
.end method

.method constructor <init>(Lc/q/a/a/h$h;)V
    .registers 4

    .line 7
    invoke-direct {p0}, Lc/q/a/a/g;-><init>()V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lc/q/a/a/h;->g:Z

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 9
    iput-object v0, p0, Lc/q/a/a/h;->h:[F

    .line 10
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lc/q/a/a/h;->i:Landroid/graphics/Matrix;

    .line 11
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lc/q/a/a/h;->j:Landroid/graphics/Rect;

    .line 12
    iput-object p1, p0, Lc/q/a/a/h;->c:Lc/q/a/a/h$h;

    .line 13
    iget-object v0, p0, Lc/q/a/a/h;->d:Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p1, Lc/q/a/a/h$h;->c:Landroid/content/res/ColorStateList;

    iget-object p1, p1, Lc/q/a/a/h$h;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1, p1}, Lc/q/a/a/h;->j(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lc/q/a/a/h;->d:Landroid/graphics/PorterDuffColorFilter;

    return-void
.end method

.method static a(IF)I
    .registers 4

    .line 1
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const v1, 0xffffff

    and-int/2addr p0, v1

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int p1, v0

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0
.end method

.method public static b(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Lc/q/a/a/h;
    .registers 7

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1d

    .line 2
    new-instance v0, Lc/q/a/a/h;

    invoke-direct {v0}, Lc/q/a/a/h;-><init>()V

    .line 3
    invoke-static {p0, p1, p2}, Landroidx/core/content/c/f;->b(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iput-object p0, v0, Lc/q/a/a/g;->b:Landroid/graphics/drawable/Drawable;

    .line 4
    new-instance p0, Lc/q/a/a/h$i;

    iget-object p1, v0, Lc/q/a/a/g;->b:Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-direct {p0, p1}, Lc/q/a/a/h$i;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    return-object v0

    .line 6
    :cond_1d
    :try_start_1d
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    .line 7
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 8
    :goto_25
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_30

    const/4 v3, 0x1

    if-eq v1, v3, :cond_30

    goto :goto_25

    :cond_30
    if-ne v1, v2, :cond_37

    .line 9
    invoke-static {p0, p1, v0, p2}, Lc/q/a/a/h;->c(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Lc/q/a/a/h;

    move-result-object p0

    return-object p0

    .line 10
    :cond_37
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "No start tag found"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1d .. :try_end_3f} :catch_3f
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_3f} :catch_3f

    :catch_3f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Lc/q/a/a/h;
    .registers 5

    .line 1
    new-instance v0, Lc/q/a/a/h;

    invoke-direct {v0}, Lc/q/a/a/h;-><init>()V

    .line 2
    invoke-virtual {v0, p0, p1, p2, p3}, Lc/q/a/a/h;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-object v0
.end method

.method private e(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 15

    .line 1
    iget-object v0, p0, Lc/q/a/a/h;->c:Lc/q/a/a/h$h;

    .line 2
    iget-object v1, v0, Lc/q/a/a/h$h;->b:Lc/q/a/a/h$g;

    .line 3
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    .line 4
    iget-object v3, v1, Lc/q/a/a/h$g;->h:Lc/q/a/a/h$d;

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 5
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 6
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    const/4 v6, 0x1

    :goto_19
    if-eq v3, v5, :cond_ce

    .line 7
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    const/4 v8, 0x3

    if-ge v7, v4, :cond_24

    if-eq v3, v8, :cond_ce

    :cond_24
    const/4 v7, 0x2

    const-string v9, "group"

    if-ne v3, v7, :cond_b9

    .line 8
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc/q/a/a/h$d;

    const-string v8, "path"

    .line 10
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_60

    .line 11
    new-instance v3, Lc/q/a/a/h$c;

    invoke-direct {v3}, Lc/q/a/a/h$c;-><init>()V

    .line 12
    invoke-virtual {v3, p1, p3, p4, p2}, Lc/q/a/a/h$c;->g(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 13
    iget-object v6, v7, Lc/q/a/a/h$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-virtual {v3}, Lc/q/a/a/h$f;->getPathName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_57

    .line 15
    iget-object v6, v1, Lc/q/a/a/h$g;->p:Lc/d/a;

    invoke-virtual {v3}, Lc/q/a/a/h$f;->getPathName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_57
    const/4 v6, 0x0

    .line 16
    iget v7, v0, Lc/q/a/a/h$h;->a:I

    iget v3, v3, Lc/q/a/a/h$f;->d:I

    or-int/2addr v3, v7

    iput v3, v0, Lc/q/a/a/h$h;->a:I

    goto :goto_c8

    :cond_60
    const-string v8, "clip-path"

    .line 17
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8c

    .line 18
    new-instance v3, Lc/q/a/a/h$b;

    invoke-direct {v3}, Lc/q/a/a/h$b;-><init>()V

    .line 19
    invoke-virtual {v3, p1, p3, p4, p2}, Lc/q/a/a/h$b;->e(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 20
    iget-object v7, v7, Lc/q/a/a/h$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-virtual {v3}, Lc/q/a/a/h$f;->getPathName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_84

    .line 22
    iget-object v7, v1, Lc/q/a/a/h$g;->p:Lc/d/a;

    invoke-virtual {v3}, Lc/q/a/a/h$f;->getPathName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :cond_84
    iget v7, v0, Lc/q/a/a/h$h;->a:I

    iget v3, v3, Lc/q/a/a/h$f;->d:I

    or-int/2addr v3, v7

    iput v3, v0, Lc/q/a/a/h$h;->a:I

    goto :goto_c8

    .line 24
    :cond_8c
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c8

    .line 25
    new-instance v3, Lc/q/a/a/h$d;

    invoke-direct {v3}, Lc/q/a/a/h$d;-><init>()V

    .line 26
    invoke-virtual {v3, p1, p3, p4, p2}, Lc/q/a/a/h$d;->c(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 27
    iget-object v7, v7, Lc/q/a/a/h$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 29
    invoke-virtual {v3}, Lc/q/a/a/h$d;->getGroupName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_b1

    .line 30
    iget-object v7, v1, Lc/q/a/a/h$g;->p:Lc/d/a;

    invoke-virtual {v3}, Lc/q/a/a/h$d;->getGroupName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :cond_b1
    iget v7, v0, Lc/q/a/a/h$h;->a:I

    iget v3, v3, Lc/q/a/a/h$d;->k:I

    or-int/2addr v3, v7

    iput v3, v0, Lc/q/a/a/h$h;->a:I

    goto :goto_c8

    :cond_b9
    if-ne v3, v8, :cond_c8

    .line 32
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 33
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c8

    .line 34
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 35
    :cond_c8
    :goto_c8
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto/16 :goto_19

    :cond_ce
    if-nez v6, :cond_d1

    return-void

    .line 36
    :cond_d1
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p2, "no path defined"

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    goto :goto_da

    :goto_d9
    throw p1

    :goto_da
    goto :goto_d9
.end method

.method private f()Z
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x11

    if-lt v0, v2, :cond_15

    .line 2
    invoke-virtual {p0}, Lc/q/a/a/h;->isAutoMirrored()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_15

    .line 3
    invoke-static {p0}, Landroidx/core/graphics/drawable/a;->f(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    if-ne v0, v2, :cond_15

    const/4 v1, 0x1

    :cond_15
    return v1
.end method

.method private static g(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    .registers 3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1d

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1a

    const/16 v0, 0x9

    if-eq p0, v0, :cond_17

    packed-switch p0, :pswitch_data_20

    return-object p1

    .line 1
    :pswitch_e
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 2
    :pswitch_11
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 3
    :pswitch_14
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 4
    :cond_17
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 5
    :cond_1a
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 6
    :cond_1d
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_data_20
    .packed-switch 0xe
        :pswitch_14
        :pswitch_11
        :pswitch_e
    .end packed-switch
.end method

.method private i(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lc/q/a/a/h;->c:Lc/q/a/a/h$h;

    .line 2
    iget-object v1, v0, Lc/q/a/a/h$h;->b:Lc/q/a/a/h$g;

    const-string v2, "tintMode"

    const/4 v3, 0x6

    const/4 v4, -0x1

    .line 3
    invoke-static {p1, p2, v2, v3, v4}, Landroidx/core/content/c/g;->g(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v2

    .line 4
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v2, v3}, Lc/q/a/a/h;->g(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    iput-object v2, v0, Lc/q/a/a/h$h;->d:Landroid/graphics/PorterDuff$Mode;

    const-string v2, "tint"

    const/4 v3, 0x1

    .line 5
    invoke-static {p1, p2, p3, v2, v3}, Landroidx/core/content/c/g;->c(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    if-eqz p3, :cond_1f

    .line 6
    iput-object p3, v0, Lc/q/a/a/h$h;->c:Landroid/content/res/ColorStateList;

    :cond_1f
    const/4 p3, 0x5

    .line 7
    iget-boolean v2, v0, Lc/q/a/a/h$h;->e:Z

    const-string v3, "autoMirrored"

    invoke-static {p1, p2, v3, p3, v2}, Landroidx/core/content/c/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z

    move-result p3

    iput-boolean p3, v0, Lc/q/a/a/h$h;->e:Z

    const/4 p3, 0x7

    .line 8
    iget v0, v1, Lc/q/a/a/h$g;->k:F

    const-string v2, "viewportWidth"

    invoke-static {p1, p2, v2, p3, v0}, Landroidx/core/content/c/g;->f(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p3

    iput p3, v1, Lc/q/a/a/h$g;->k:F

    const/16 p3, 0x8

    .line 9
    iget v0, v1, Lc/q/a/a/h$g;->l:F

    const-string v2, "viewportHeight"

    invoke-static {p1, p2, v2, p3, v0}, Landroidx/core/content/c/g;->f(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p3

    iput p3, v1, Lc/q/a/a/h$g;->l:F

    .line 10
    iget v0, v1, Lc/q/a/a/h$g;->k:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-lez v0, :cond_d6

    cmpg-float p3, p3, v2

    if-lez p3, :cond_bb

    const/4 p3, 0x3

    .line 11
    iget v0, v1, Lc/q/a/a/h$g;->i:F

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, v1, Lc/q/a/a/h$g;->i:F

    const/4 p3, 0x2

    .line 12
    iget v0, v1, Lc/q/a/a/h$g;->j:F

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, v1, Lc/q/a/a/h$g;->j:F

    .line 13
    iget v0, v1, Lc/q/a/a/h$g;->i:F

    cmpg-float v0, v0, v2

    if-lez v0, :cond_a0

    cmpg-float p3, p3, v2

    if-lez p3, :cond_85

    const/4 p3, 0x4

    .line 14
    invoke-virtual {v1}, Lc/q/a/a/h$g;->getAlpha()F

    move-result v0

    const-string v2, "alpha"

    .line 15
    invoke-static {p1, p2, v2, p3, v0}, Landroidx/core/content/c/g;->f(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p2

    .line 16
    invoke-virtual {v1, p2}, Lc/q/a/a/h$g;->setAlpha(F)V

    const/4 p2, 0x0

    .line 17
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_84

    .line 18
    iput-object p1, v1, Lc/q/a/a/h$g;->n:Ljava/lang/String;

    .line 19
    iget-object p2, v1, Lc/q/a/a/h$g;->p:Lc/d/a;

    invoke-virtual {p2, p1, v1}, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_84
    return-void

    .line 20
    :cond_85
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<vector> tag requires height > 0"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 21
    :cond_a0
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<vector> tag requires width > 0"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 22
    :cond_bb
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<vector> tag requires viewportHeight > 0"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 23
    :cond_d6
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<vector> tag requires viewportWidth > 0"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public canApplyTheme()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lc/q/a/a/g;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    .line 2
    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->b(Landroid/graphics/drawable/Drawable;)Z

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method d(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lc/q/a/a/h;->c:Lc/q/a/a/h$h;

    iget-object v0, v0, Lc/q/a/a/h$h;->b:Lc/q/a/a/h$g;

    iget-object v0, v0, Lc/q/a/a/h$g;->p:Lc/d/a;

    invoke-virtual {v0, p1}, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 11

    .line 1
    iget-object v0, p0, Lc/q/a/a/g;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    .line 3
    :cond_8
    iget-object v0, p0, Lc/q/a/a/h;->j:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 4
    iget-object v0, p0, Lc/q/a/a/h;->j:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_db

    iget-object v0, p0, Lc/q/a/a/h;->j:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_1f

    goto/16 :goto_db

    .line 5
    :cond_1f
    iget-object v0, p0, Lc/q/a/a/h;->e:Landroid/graphics/ColorFilter;

    if-nez v0, :cond_25

    iget-object v0, p0, Lc/q/a/a/h;->d:Landroid/graphics/PorterDuffColorFilter;

    .line 6
    :cond_25
    iget-object v1, p0, Lc/q/a/a/h;->i:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 7
    iget-object v1, p0, Lc/q/a/a/h;->i:Landroid/graphics/Matrix;

    iget-object v2, p0, Lc/q/a/a/h;->h:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 8
    iget-object v1, p0, Lc/q/a/a/h;->h:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 9
    iget-object v3, p0, Lc/q/a/a/h;->h:[F

    const/4 v4, 0x4

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 10
    iget-object v4, p0, Lc/q/a/a/h;->h:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 11
    iget-object v5, p0, Lc/q/a/a/h;->h:[F

    const/4 v6, 0x3

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    cmpl-float v4, v4, v7

    if-nez v4, :cond_60

    cmpl-float v4, v5, v7

    if-eqz v4, :cond_64

    :cond_60
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 12
    :cond_64
    iget-object v4, p0, Lc/q/a/a/h;->j:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v1

    float-to-int v1, v4

    .line 13
    iget-object v4, p0, Lc/q/a/a/h;->j:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v3

    float-to-int v3, v4

    const/16 v4, 0x800

    .line 14
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 15
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-lez v1, :cond_db

    if-gtz v3, :cond_87

    goto :goto_db

    .line 16
    :cond_87
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 17
    iget-object v5, p0, Lc/q/a/a/h;->j:Landroid/graphics/Rect;

    iget v8, v5, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {p1, v8, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 18
    invoke-direct {p0}, Lc/q/a/a/h;->f()Z

    move-result v5

    if-eqz v5, :cond_ab

    .line 19
    iget-object v5, p0, Lc/q/a/a/h;->j:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v5, v7}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v5, -0x40800000    # -1.0f

    .line 20
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 21
    :cond_ab
    iget-object v5, p0, Lc/q/a/a/h;->j:Landroid/graphics/Rect;

    invoke-virtual {v5, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 22
    iget-object v2, p0, Lc/q/a/a/h;->c:Lc/q/a/a/h$h;

    invoke-virtual {v2, v1, v3}, Lc/q/a/a/h$h;->c(II)V

    .line 23
    iget-boolean v2, p0, Lc/q/a/a/h;->g:Z

    if-nez v2, :cond_bf

    .line 24
    iget-object v2, p0, Lc/q/a/a/h;->c:Lc/q/a/a/h$h;

    invoke-virtual {v2, v1, v3}, Lc/q/a/a/h$h;->j(II)V

    goto :goto_d1

    .line 25
    :cond_bf
    iget-object v2, p0, Lc/q/a/a/h;->c:Lc/q/a/a/h$h;

    invoke-virtual {v2}, Lc/q/a/a/h$h;->b()Z

    move-result v2

    if-nez v2, :cond_d1

    .line 26
    iget-object v2, p0, Lc/q/a/a/h;->c:Lc/q/a/a/h$h;

    invoke-virtual {v2, v1, v3}, Lc/q/a/a/h$h;->j(II)V

    .line 27
    iget-object v1, p0, Lc/q/a/a/h;->c:Lc/q/a/a/h$h;

    invoke-virtual {v1}, Lc/q/a/a/h$h;->i()V

    .line 28
    :cond_d1
    :goto_d1
    iget-object v1, p0, Lc/q/a/a/h;->c:Lc/q/a/a/h$h;

    iget-object v2, p0, Lc/q/a/a/h;->j:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, v0, v2}, Lc/q/a/a/h$h;->d(Landroid/graphics/Canvas;Landroid/graphics/ColorFilter;Landroid/graphics/Rect;)V

    .line 29
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_db
    :goto_db
    return-void
.end method

.method public getAlpha()I
    .registers 2

    .line 1
    iget-object v0, p0, Lc/q/a/a/g;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 2
    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->d(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    return v0

    .line 3
    :cond_9
    iget-object v0, p0, Lc/q/a/a/h;->c:Lc/q/a/a/h$h;

    iget-object v0, v0, Lc/q/a/a/h$h;->b:Lc/q/a/a/h$g;

    invoke-virtual {v0}, Lc/q/a/a/h$g;->getRootAlpha()I

    move-result v0

    return v0
.end method

.method public getChangingConfigurations()I
    .registers 3

    .line 1
    iget-object v0, p0, Lc/q/a/a/g;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    return v0

    .line 3
    :cond_9
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lc/q/a/a/h;->c:Lc/q/a/a/h$h;

    invoke-virtual {v1}, Lc/q/a/a/h$h;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .registers 2

    .line 1
    iget-object v0, p0, Lc/q/a/a/g;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 2
    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->e(Landroid/graphics/drawable/Drawable;)Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0

    .line 3
    :cond_9
    iget-object v0, p0, Lc/q/a/a/h;->e:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 3

    .line 1
    iget-object v0, p0, Lc/q/a/a/g;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_16

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_16

    .line 2
    new-instance v0, Lc/q/a/a/h$i;

    iget-object v1, p0, Lc/q/a/a/g;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/q/a/a/h$i;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    return-object v0

    .line 3
    :cond_16
    iget-object v0, p0, Lc/q/a/a/h;->c:Lc/q/a/a/h$h;

    invoke-virtual {p0}, Lc/q/a/a/h;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lc/q/a/a/h$h;->a:I

    .line 4
    iget-object v0, p0, Lc/q/a/a/h;->c:Lc/q/a/a/h$h;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .line 1
    iget-object v0, p0, Lc/q/a/a/g;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0

    .line 3
    :cond_9
    iget-object v0, p0, Lc/q/a/a/h;->c:Lc/q/a/a/h$h;

    iget-object v0, v0, Lc/q/a/a/h$h;->b:Lc/q/a/a/h$g;

    iget v0, v0, Lc/q/a/a/h$g;->j:F

    float-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .line 1
    iget-object v0, p0, Lc/q/a/a/g;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0

    .line 3
    :cond_9
    iget-object v0, p0, Lc/q/a/a/h;->c:Lc/q/a/a/h$h;

    iget-object v0, v0, Lc/q/a/a/h$h;->b:Lc/q/a/a/h$g;

    iget v0, v0, Lc/q/a/a/h$g;->i:F

    float-to-int v0, v0

    return v0
.end method

.method public getOpacity()I
    .registers 2

    .line 1
    iget-object v0, p0, Lc/q/a/a/g;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, -0x3

    return v0
.end method

.method h(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lc/q/a/a/h;->g:Z

    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lc/q/a/a/g;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    return-void

    :cond_8
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, p3, v0}, Lc/q/a/a/h;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 7

    .line 4
    iget-object v0, p0, Lc/q/a/a/g;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    .line 5
    invoke-static {v0, p1, p2, p3, p4}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void

    .line 6
    :cond_8
    iget-object v0, p0, Lc/q/a/a/h;->c:Lc/q/a/a/h$h;

    .line 7
    new-instance v1, Lc/q/a/a/h$g;

    invoke-direct {v1}, Lc/q/a/a/h$g;-><init>()V

    .line 8
    iput-object v1, v0, Lc/q/a/a/h$h;->b:Lc/q/a/a/h$g;

    .line 9
    sget-object v1, Lc/q/a/a/a;->a:[I

    invoke-static {p1, p4, p3, v1}, Landroidx/core/content/c/g;->k(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 10
    invoke-direct {p0, v1, p2, p4}, Lc/q/a/a/h;->i(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)V

    .line 11
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 12
    invoke-virtual {p0}, Lc/q/a/a/h;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lc/q/a/a/h$h;->a:I

    const/4 v1, 0x1

    .line 13
    iput-boolean v1, v0, Lc/q/a/a/h$h;->k:Z

    .line 14
    invoke-direct {p0, p1, p2, p3, p4}, Lc/q/a/a/h;->e(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 15
    iget-object p1, p0, Lc/q/a/a/h;->d:Landroid/graphics/PorterDuffColorFilter;

    iget-object p2, v0, Lc/q/a/a/h$h;->c:Landroid/content/res/ColorStateList;

    iget-object p3, v0, Lc/q/a/a/h$h;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, p2, p3}, Lc/q/a/a/h;->j(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lc/q/a/a/h;->d:Landroid/graphics/PorterDuffColorFilter;

    return-void
.end method

.method public invalidateSelf()V
    .registers 2

    .line 1
    iget-object v0, p0, Lc/q/a/a/g;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    .line 3
    :cond_8
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public isAutoMirrored()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lc/q/a/a/g;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 2
    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->h(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0

    .line 3
    :cond_9
    iget-object v0, p0, Lc/q/a/a/h;->c:Lc/q/a/a/h$h;

    iget-boolean v0, v0, Lc/q/a/a/h$h;->e:Z

    return v0
.end method

.method public isStateful()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lc/q/a/a/g;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0

    .line 3
    :cond_9
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lc/q/a/a/h;->c:Lc/q/a/a/h$h;

    if-eqz v0, :cond_26

    .line 4
    invoke-virtual {v0}, Lc/q/a/a/h$h;->g()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lc/q/a/a/h;->c:Lc/q/a/a/h$h;

    iget-object v0, v0, Lc/q/a/a/h$h;->c:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_26

    .line 5
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_28

    :cond_26
    const/4 v0, 0x0

    goto :goto_29

    :cond_28
    :goto_28
    const/4 v0, 0x1

    :goto_29
    return v0
.end method

.method j(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .registers 5

    if-eqz p2, :cond_14

    if-nez p3, :cond_5

    goto :goto_14

    .line 1
    :cond_5
    invoke-virtual {p0}, Lc/q/a/a/h;->getState()[I

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    .line 2
    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p2, p1, p3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p2

    :cond_14
    :goto_14
    const/4 p1, 0x0

    return-object p1
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 1
    iget-object v0, p0, Lc/q/a/a/g;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    return-object p0

    .line 3
    :cond_8
    iget-boolean v0, p0, Lc/q/a/a/h;->f:Z

    if-nez v0, :cond_1e

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_1e

    .line 4
    new-instance v0, Lc/q/a/a/h$h;

    iget-object v1, p0, Lc/q/a/a/h;->c:Lc/q/a/a/h$h;

    invoke-direct {v0, v1}, Lc/q/a/a/h$h;-><init>(Lc/q/a/a/h$h;)V

    iput-object v0, p0, Lc/q/a/a/h;->c:Lc/q/a/a/h$h;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lc/q/a/a/h;->f:Z

    :cond_1e
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lc/q/a/a/g;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_7
    return-void
.end method

.method protected onStateChange([I)Z
    .registers 7

    .line 1
    iget-object v0, p0, Lc/q/a/a/g;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    return p1

    :cond_9
    const/4 v0, 0x0

    .line 3
    iget-object v1, p0, Lc/q/a/a/h;->c:Lc/q/a/a/h$h;

    .line 4
    iget-object v2, v1, Lc/q/a/a/h$h;->c:Landroid/content/res/ColorStateList;

    const/4 v3, 0x1

    if-eqz v2, :cond_21

    iget-object v4, v1, Lc/q/a/a/h$h;->d:Landroid/graphics/PorterDuff$Mode;

    if-eqz v4, :cond_21

    .line 5
    iget-object v0, p0, Lc/q/a/a/h;->d:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0, v0, v2, v4}, Lc/q/a/a/h;->j(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Lc/q/a/a/h;->d:Landroid/graphics/PorterDuffColorFilter;

    .line 6
    invoke-virtual {p0}, Lc/q/a/a/h;->invalidateSelf()V

    const/4 v0, 0x1

    .line 7
    :cond_21
    invoke-virtual {v1}, Lc/q/a/a/h$h;->g()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-virtual {v1, p1}, Lc/q/a/a/h$h;->h([I)Z

    move-result p1

    if-eqz p1, :cond_31

    .line 8
    invoke-virtual {p0}, Lc/q/a/a/h;->invalidateSelf()V

    goto :goto_32

    :cond_31
    move v3, v0

    :goto_32
    return v3
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .registers 5

    .line 1
    iget-object v0, p0, Lc/q/a/a/g;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void

    .line 3
    :cond_8
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lc/q/a/a/g;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void

    .line 3
    :cond_8
    iget-object v0, p0, Lc/q/a/a/h;->c:Lc/q/a/a/h$h;

    iget-object v0, v0, Lc/q/a/a/h$h;->b:Lc/q/a/a/h$g;

    invoke-virtual {v0}, Lc/q/a/a/h$g;->getRootAlpha()I

    move-result v0

    if-eq v0, p1, :cond_1c

    .line 4
    iget-object v0, p0, Lc/q/a/a/h;->c:Lc/q/a/a/h$h;

    iget-object v0, v0, Lc/q/a/a/h$h;->b:Lc/q/a/a/h$g;

    invoke-virtual {v0, p1}, Lc/q/a/a/h$g;->setRootAlpha(I)V

    .line 5
    invoke-virtual {p0}, Lc/q/a/a/h;->invalidateSelf()V

    :cond_1c
    return-void
.end method

.method public setAutoMirrored(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lc/q/a/a/g;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    .line 2
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->j(Landroid/graphics/drawable/Drawable;Z)V

    return-void

    .line 3
    :cond_8
    iget-object v0, p0, Lc/q/a/a/h;->c:Lc/q/a/a/h$h;

    iput-boolean p1, v0, Lc/q/a/a/h$h;->e:Z

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 2
    iget-object v0, p0, Lc/q/a/a/g;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    .line 4
    :cond_8
    iput-object p1, p0, Lc/q/a/a/h;->e:Landroid/graphics/ColorFilter;

    .line 5
    invoke-virtual {p0}, Lc/q/a/a/h;->invalidateSelf()V

    return-void
.end method

.method public setTint(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lc/q/a/a/g;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    .line 2
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->n(Landroid/graphics/drawable/Drawable;I)V

    return-void

    .line 3
    :cond_8
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/q/a/a/h;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lc/q/a/a/g;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    .line 2
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->o(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-void

    .line 3
    :cond_8
    iget-object v0, p0, Lc/q/a/a/h;->c:Lc/q/a/a/h$h;

    .line 4
    iget-object v1, v0, Lc/q/a/a/h$h;->c:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_1d

    .line 5
    iput-object p1, v0, Lc/q/a/a/h$h;->c:Landroid/content/res/ColorStateList;

    .line 6
    iget-object v1, p0, Lc/q/a/a/h;->d:Landroid/graphics/PorterDuffColorFilter;

    iget-object v0, v0, Lc/q/a/a/h$h;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v1, p1, v0}, Lc/q/a/a/h;->j(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lc/q/a/a/h;->d:Landroid/graphics/PorterDuffColorFilter;

    .line 7
    invoke-virtual {p0}, Lc/q/a/a/h;->invalidateSelf()V

    :cond_1d
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lc/q/a/a/g;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    .line 2
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->p(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    return-void

    .line 3
    :cond_8
    iget-object v0, p0, Lc/q/a/a/h;->c:Lc/q/a/a/h$h;

    .line 4
    iget-object v1, v0, Lc/q/a/a/h$h;->d:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_1d

    .line 5
    iput-object p1, v0, Lc/q/a/a/h$h;->d:Landroid/graphics/PorterDuff$Mode;

    .line 6
    iget-object v1, p0, Lc/q/a/a/h;->d:Landroid/graphics/PorterDuffColorFilter;

    iget-object v0, v0, Lc/q/a/a/h$h;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1, v0, p1}, Lc/q/a/a/h;->j(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lc/q/a/a/h;->d:Landroid/graphics/PorterDuffColorFilter;

    .line 7
    invoke-virtual {p0}, Lc/q/a/a/h;->invalidateSelf()V

    :cond_1d
    return-void
.end method

.method public setVisible(ZZ)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lc/q/a/a/g;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1

    .line 3
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

.method public unscheduleSelf(Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lc/q/a/a/g;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void

    .line 3
    :cond_8
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method
