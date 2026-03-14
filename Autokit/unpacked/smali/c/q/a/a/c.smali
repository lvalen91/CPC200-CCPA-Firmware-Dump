.class public Lc/q/a/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

.method public constructor <init>()V
  .registers 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/Interpolator;
  .registers 6
  .line 1
    invoke-interface { p3 }, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I
    move-result p1
    const/4 p2, 0
  :L0
  .line 2
    invoke-interface { p3 }, Lorg/xmlpull/v1/XmlPullParser;->next()I
    move-result v0
    const/4 v1, 3
    if-ne v0, v1, :L1
    invoke-interface { p3 }, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I
    move-result v1
    if-le v1, p1, :L14
  :L1
    const/4 v1, 1
    if-eq v0, v1, :L14
    const/4 v1, 2
    if-eq v0, v1, :L2
    goto :L0
  :L2
  .line 3
    invoke-static { p3 }, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;
    move-result-object p2
  .line 4
    invoke-interface { p3 }, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
    move-result-object v0
    const-string v1, "linearInterpolator"
  .line 5
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L3
  .line 6
    new-instance p2, Landroid/view/animation/LinearInterpolator;
    invoke-direct { p2 }, Landroid/view/animation/LinearInterpolator;-><init>()V
    goto :L0
  :L3
    const-string v1, "accelerateInterpolator"
  .line 7
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L5
  .line 8
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;
    invoke-direct { v0, p0, p2 }, Landroid/view/animation/AccelerateInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  :L4
    move-object p2, v0
    goto :L0
  :L5
    const-string v1, "decelerateInterpolator"
  .line 9
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L6
  .line 10
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;
    invoke-direct { v0, p0, p2 }, Landroid/view/animation/DecelerateInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    goto :L4
  :L6
    const-string v1, "accelerateDecelerateInterpolator"
  .line 11
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L7
  .line 12
    new-instance p2, Landroid/view/animation/AccelerateDecelerateInterpolator;
    invoke-direct { p2 }, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V
    goto :L0
  :L7
    const-string v1, "cycleInterpolator"
  .line 13
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L8
  .line 14
    new-instance v0, Landroid/view/animation/CycleInterpolator;
    invoke-direct { v0, p0, p2 }, Landroid/view/animation/CycleInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    goto :L4
  :L8
    const-string v1, "anticipateInterpolator"
  .line 15
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L9
  .line 16
    new-instance v0, Landroid/view/animation/AnticipateInterpolator;
    invoke-direct { v0, p0, p2 }, Landroid/view/animation/AnticipateInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    goto :L4
  :L9
    const-string v1, "overshootInterpolator"
  .line 17
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L10
  .line 18
    new-instance v0, Landroid/view/animation/OvershootInterpolator;
    invoke-direct { v0, p0, p2 }, Landroid/view/animation/OvershootInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    goto :L4
  :L10
    const-string v1, "anticipateOvershootInterpolator"
  .line 19
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L11
  .line 20
    new-instance v0, Landroid/view/animation/AnticipateOvershootInterpolator;
    invoke-direct { v0, p0, p2 }, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    goto :L4
  :L11
    const-string v1, "bounceInterpolator"
  .line 21
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L12
  .line 22
    new-instance p2, Landroid/view/animation/BounceInterpolator;
    invoke-direct { p2 }, Landroid/view/animation/BounceInterpolator;-><init>()V
    goto/16 :L0
  :L12
    const-string v1, "pathInterpolator"
  .line 23
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L13
  .line 24
    new-instance v0, Lc/q/a/a/f;
    invoke-direct { v0, p0, p2, p3 }, Lc/q/a/a/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;)V
    goto :L4
  :L13
  .line 25
    new-instance p0, Ljava/lang/RuntimeException;
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p2, "Unknown interpolator name: "
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-interface { p3 }, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
    move-result-object p2
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { p0, p1 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
    throw p0
  :L14
    return-object p2
.end method

.method public static b(Landroid/content/Context;I)Landroid/view/animation/Interpolator;
  .catch Lorg/xmlpull/v1/XmlPullParserException; { :L1 .. :L8 } :L4
  .catch Ljava/io/IOException; { :L1 .. :L8 } :L3
  .catchall { :L1 .. :L8 } :L2
  .catchall { :L10 .. :L12 } :L2
  .registers 6
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L0
  .line 2
    invoke-static { p0, p1 }, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;
    move-result-object p0
    return-object p0
  :L0
    const/4 v0, 0
    const v1, 17563663
    const-string v2, "Can't load animation resource ID #0x"
    if-ne p1, v1, :L5
  :L1
  .line 3
    new-instance p0, Lc/k/a/a/a;
    invoke-direct { p0 }, Lc/k/a/a/a;-><init>()V
    return-object p0
  :L2
    move-exception p0
    goto :L12
  :L3
    move-exception p0
    goto :L10
  :L4
    move-exception p0
    goto :L11
  :L5
    const v1, 17563661
    if-ne p1, v1, :L6
  .line 4
    new-instance p0, Lc/k/a/a/b;
    invoke-direct { p0 }, Lc/k/a/a/b;-><init>()V
    return-object p0
  :L6
    const v1, 17563662
    if-ne p1, v1, :L7
  .line 5
    new-instance p0, Lc/k/a/a/c;
    invoke-direct { p0 }, Lc/k/a/a/c;-><init>()V
    return-object p0
  :L7
  .line 6
    invoke-virtual { p0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v1
    invoke-virtual { v1, p1 }, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;
    move-result-object v0
  .line 7
    invoke-virtual { p0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v1
    invoke-virtual { p0 }, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;
    move-result-object v3
    invoke-static { p0, v1, v3, v0 }, Lc/q/a/a/c;->a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/Interpolator;
    move-result-object p0
  :L8
    if-eqz v0, :L9
  .line 8
    invoke-interface { v0 }, Landroid/content/res/XmlResourceParser;->close()V
  :L9
    return-object p0
  :L10
  .line 9
    new-instance v1, Landroid/content/res/Resources$NotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v3, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 10
    invoke-static { p1 }, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v3, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v1, p1 }, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V
  .line 11
    invoke-virtual { v1, p0 }, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
  .line 12
    throw v1
  :L11
  .line 13
    new-instance v1, Landroid/content/res/Resources$NotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v3, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 14
    invoke-static { p1 }, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v3, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v1, p1 }, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V
  .line 15
    invoke-virtual { v1, p0 }, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
  .line 16
    throw v1
  :L12
    if-eqz v0, :L13
  .line 17
    invoke-interface { v0 }, Landroid/content/res/XmlResourceParser;->close()V
  :L13
  .line 18
    throw p0
.end method
