.class public Lc/q/a/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lc/q/a/a/d$a;
  }
.end annotation

.method public constructor <init>()V
  .registers 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;F)Landroid/animation/Animator;
  .registers 13
  .line 1
    invoke-static { p3 }, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;
    move-result-object v4
    const/4 v5, 0
    const/4 v6, 0
    move-object v0, p0
    move-object v1, p1
    move-object v2, p2
    move-object v3, p3
    move v7, p4
    invoke-static/range { v0 .. v7 }, Lc/q/a/a/d;->b(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;
    move-result-object p0
    return-object p0
.end method

.method private static b(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;
  .registers 26
    move-object/from16 v8, p1
    move-object/from16 v9, p2
    move-object/from16 v10, p3
    move-object/from16 v11, p5
  .line 1
    invoke-interface/range { p3 .. p3 }, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I
    move-result v12
    const/4 v0, 0
    move-object v13, v0
  :L0
  .line 2
    invoke-interface/range { p3 .. p3 }, Lorg/xmlpull/v1/XmlPullParser;->next()I
    move-result v1
    const/4 v2, 3
    const/4 v14, 0
    if-ne v1, v2, :L1
    invoke-interface/range { p3 .. p3 }, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I
    move-result v2
    if-le v2, v12, :L11
  :L1
    const/4 v2, 1
    if-eq v1, v2, :L11
    const/4 v3, 2
    if-eq v1, v3, :L2
    goto :L0
  :L2
  .line 3
    invoke-interface/range { p3 .. p3 }, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
    move-result-object v1
    const-string v3, "objectAnimator"
  .line 4
    invoke-virtual { v1, v3 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :L4
    move-object/from16 v0, p0
    move-object/from16 v1, p1
    move-object/from16 v2, p2
    move-object/from16 v3, p4
    move/from16 v4, p7
    move-object/from16 v5, p3
  .line 5
    invoke-static/range { v0 .. v5 }, Lc/q/a/a/d;->n(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ObjectAnimator;
    move-result-object v0
  :L3
    move-object/from16 v3, p0
    goto/16 :L8
  :L4
    const-string v3, "animator"
  .line 6
    invoke-virtual { v1, v3 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :L5
    const/4 v4, 0
    move-object/from16 v0, p0
    move-object/from16 v1, p1
    move-object/from16 v2, p2
    move-object/from16 v3, p4
    move/from16 v5, p7
    move-object/from16 v6, p3
  .line 7
    invoke-static/range { v0 .. v6 }, Lc/q/a/a/d;->l(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ValueAnimator;
    move-result-object v0
    goto :L3
  :L5
    const-string v3, "set"
  .line 8
    invoke-virtual { v1, v3 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :L6
  .line 9
    new-instance v15, Landroid/animation/AnimatorSet;
    invoke-direct { v15 }, Landroid/animation/AnimatorSet;-><init>()V
  .line 10
    sget-object v0, Lc/q/a/a/a;->h:[I
    move-object/from16 v7, p4
    invoke-static { v8, v9, v7, v0 }, Landroidx/core/content/c/g;->k(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    move-result-object v6
    const-string v0, "ordering"
  .line 11
    invoke-static { v6, v10, v0, v14, v14 }, Landroidx/core/content/c/g;->g(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I
    move-result v16
    move-object/from16 v0, p0
    move-object/from16 v1, p1
    move-object/from16 v2, p2
    move-object/from16 v3, p3
    move-object/from16 v4, p4
    move-object v5, v15
    move-object/from16 v17, v6
    move/from16 v6, v16
    move/from16 v7, p7
  .line 12
    invoke-static/range { v0 .. v7 }, Lc/q/a/a/d;->b(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;
  .line 13
    invoke-virtual/range { v17 .. v17 }, Landroid/content/res/TypedArray;->recycle()V
    move-object/from16 v3, p0
    move-object v0, v15
    goto :L8
  :L6
    const-string v3, "propertyValuesHolder"
  .line 14
    invoke-virtual { v1, v3 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L10
  .line 15
    invoke-static/range { p3 .. p3 }, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;
    move-result-object v1
    move-object/from16 v3, p0
  .line 16
    invoke-static { v3, v8, v9, v10, v1 }, Lc/q/a/a/d;->p(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)[Landroid/animation/PropertyValuesHolder;
    move-result-object v1
    if-eqz v1, :L7
  .line 17
    instance-of v4, v0, Landroid/animation/ValueAnimator;
    if-eqz v4, :L7
  .line 18
    move-object v4, v0
    check-cast v4, Landroid/animation/ValueAnimator;
    invoke-virtual { v4, v1 }, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V
  :L7
    const/4 v14, 1
  :L8
    if-eqz v11, :L0
    if-nez v14, :L0
    if-nez v13, :L9
  .line 19
    new-instance v13, Ljava/util/ArrayList;
    invoke-direct { v13 }, Ljava/util/ArrayList;-><init>()V
  :L9
  .line 20
    invoke-virtual { v13, v0 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto/16 :L0
  :L10
  .line 21
    new-instance v0, Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Unknown animator name: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-interface/range { p3 .. p3 }, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, v1 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
    throw v0
  :L11
    if-eqz v11, :L15
    if-eqz v13, :L15
  .line 22
    invoke-virtual { v13 }, Ljava/util/ArrayList;->size()I
    move-result v1
    new-array v1, v1, [Landroid/animation/Animator;
  .line 23
    invoke-virtual { v13 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v2
  :L12
    invoke-interface { v2 }, Ljava/util/Iterator;->hasNext()Z
    move-result v3
    if-eqz v3, :L13
    invoke-interface { v2 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Landroid/animation/Animator;
    add-int/lit8 v4, v14, 1
  .line 24
    aput-object v3, v1, v14
    move v14, v4
    goto :L12
  :L13
    if-nez p6, :L14
  .line 25
    invoke-virtual { v11, v1 }, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V
    goto :L15
  :L14
  .line 26
    invoke-virtual { v11, v1 }, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V
  :L15
    return-object v0
.end method

.method private static c(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;
  .registers 4
  .line 1
    invoke-virtual { p0 }, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;
    move-result-object v0
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;
    if-ne v0, v1, :L0
  .line 2
    invoke-static { p1 }, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;
    move-result-object p0
    goto :L2
  :L0
  .line 3
    invoke-virtual { p0 }, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;
    move-result-object p0
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    if-ne p0, v0, :L1
  .line 4
    invoke-static { p1 }, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;
    move-result-object p0
    goto :L2
  :L1
  .line 5
    invoke-static { p1 }, Landroid/animation/Keyframe;->ofObject(F)Landroid/animation/Keyframe;
    move-result-object p0
  :L2
    return-object p0
.end method

.method private static d([Landroid/animation/Keyframe;FII)V
  .registers 6
    sub-int v0, p3, p2
    add-int/lit8 v0, v0, 2
    int-to-float v0, v0
    div-float/2addr p1, v0
  :L0
    if-gt p2, p3, :L1
  .line 1
    aget-object v0, p0, p2
    add-int/lit8 v1, p2, -1
    aget-object v1, p0, v1
    invoke-virtual { v1 }, Landroid/animation/Keyframe;->getFraction()F
    move-result v1
    add-float/2addr v1, p1
    invoke-virtual { v0, v1 }, Landroid/animation/Keyframe;->setFraction(F)V
    add-int/lit8 p2, p2, 1
    goto :L0
  :L1
    return-void
.end method

.method private static e(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;
  .registers 16
  .line 1
    invoke-virtual { p0, p2 }, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;
    move-result-object v0
    const/4 v1, 1
    const/4 v2, 0
    if-eqz v0, :L0
    const/4 v3, 1
    goto :L1
  :L0
    const/4 v3, 0
  :L1
    if-eqz v3, :L2
  .line 2
    iget v0, v0, Landroid/util/TypedValue;->type:I
    goto :L3
  :L2
    const/4 v0, 0
  :L3
  .line 3
    invoke-virtual { p0, p3 }, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;
    move-result-object v4
    if-eqz v4, :L4
    const/4 v5, 1
    goto :L5
  :L4
    const/4 v5, 0
  :L5
    if-eqz v5, :L6
  .line 4
    iget v4, v4, Landroid/util/TypedValue;->type:I
    goto :L7
  :L6
    const/4 v4, 0
  :L7
    const/4 v6, 4
    const/4 v7, 3
    if-ne p1, v6, :L11
    if-eqz v3, :L8
  .line 5
    invoke-static { v0 }, Lc/q/a/a/d;->h(I)Z
    move-result p1
    if-nez p1, :L9
  :L8
    if-eqz v5, :L10
    invoke-static { v4 }, Lc/q/a/a/d;->h(I)Z
    move-result p1
    if-eqz p1, :L10
  :L9
    const/4 p1, 3
    goto :L11
  :L10
    const/4 p1, 0
  :L11
    if-nez p1, :L12
    const/4 v6, 1
    goto :L13
  :L12
    const/4 v6, 0
  :L13
    const/4 v8, 0
    const/4 v9, 2
    if-ne p1, v9, :L19
  .line 6
    invoke-virtual { p0, p2 }, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
    move-result-object p1
  .line 7
    invoke-virtual { p0, p3 }, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
    move-result-object p0
  .line 8
    invoke-static { p1 }, Lc/g/d/c;->d(Ljava/lang/String;)[Lc/g/d/c$b;
    move-result-object p2
  .line 9
    invoke-static { p0 }, Lc/g/d/c;->d(Ljava/lang/String;)[Lc/g/d/c$b;
    move-result-object p3
    if-nez p2, :L14
    if-eqz p3, :L44
  :L14
    if-eqz p2, :L18
  .line 10
    new-instance v0, Lc/q/a/a/d$a;
    invoke-direct { v0 }, Lc/q/a/a/d$a;-><init>()V
    if-eqz p3, :L16
  .line 11
    invoke-static { p2, p3 }, Lc/g/d/c;->b([Lc/g/d/c$b;[Lc/g/d/c$b;)Z
    move-result v3
    if-eqz v3, :L15
    new-array p0, v9, [Ljava/lang/Object;
    aput-object p2, p0, v2
    aput-object p3, p0, v1
  .line 12
    invoke-static { p4, v0, p0 }, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;
    move-result-object p0
    goto :L17
  :L15
  .line 13
    new-instance p2, Landroid/view/InflateException;
    new-instance p3, Ljava/lang/StringBuilder;
    invoke-direct { p3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p4, " Can't morph from "
    invoke-virtual { p3, p4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p3, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p1, " to "
    invoke-virtual { p3, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p3, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    invoke-direct { p2, p0 }, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V
    throw p2
  :L16
    new-array p0, v1, [Ljava/lang/Object;
    aput-object p2, p0, v2
  .line 14
    invoke-static { p4, v0, p0 }, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;
    move-result-object p0
  :L17
    move-object v8, p0
    goto/16 :L44
  :L18
    if-eqz p3, :L44
  .line 15
    new-instance p0, Lc/q/a/a/d$a;
    invoke-direct { p0 }, Lc/q/a/a/d$a;-><init>()V
    new-array p1, v1, [Ljava/lang/Object;
    aput-object p3, p1, v2
  .line 16
    invoke-static { p4, p0, p1 }, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;
    move-result-object v8
    goto/16 :L44
  :L19
    if-ne p1, v7, :L20
  .line 17
    invoke-static { }, Lc/q/a/a/e;->a()Lc/q/a/a/e;
    move-result-object p1
    goto :L21
  :L20
    move-object p1, v8
  :L21
    const/4 v7, 5
    const/4 v10, 0
    if-eqz v6, :L31
    if-eqz v3, :L27
    if-ne v0, v7, :L22
  .line 18
    invoke-virtual { p0, p2, v10 }, Landroid/content/res/TypedArray;->getDimension(IF)F
    move-result p2
    goto :L23
  :L22
  .line 19
    invoke-virtual { p0, p2, v10 }, Landroid/content/res/TypedArray;->getFloat(IF)F
    move-result p2
  :L23
    if-eqz v5, :L26
    if-ne v4, v7, :L24
  .line 20
    invoke-virtual { p0, p3, v10 }, Landroid/content/res/TypedArray;->getDimension(IF)F
    move-result p0
    goto :L25
  :L24
  .line 21
    invoke-virtual { p0, p3, v10 }, Landroid/content/res/TypedArray;->getFloat(IF)F
    move-result p0
  :L25
    new-array p3, v9, [F
    aput p2, p3, v2
    aput p0, p3, v1
  .line 22
    invoke-static { p4, p3 }, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;
    move-result-object p0
    goto :L30
  :L26
    new-array p0, v1, [F
    aput p2, p0, v2
  .line 23
    invoke-static { p4, p0 }, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;
    move-result-object p0
    goto :L30
  :L27
    if-ne v4, v7, :L28
  .line 24
    invoke-virtual { p0, p3, v10 }, Landroid/content/res/TypedArray;->getDimension(IF)F
    move-result p0
    goto :L29
  :L28
  .line 25
    invoke-virtual { p0, p3, v10 }, Landroid/content/res/TypedArray;->getFloat(IF)F
    move-result p0
  :L29
    new-array p2, v1, [F
    aput p0, p2, v2
  .line 26
    invoke-static { p4, p2 }, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;
    move-result-object p0
  :L30
    move-object v8, p0
    goto/16 :L43
  :L31
    if-eqz v3, :L39
    if-ne v0, v7, :L32
  .line 27
    invoke-virtual { p0, p2, v10 }, Landroid/content/res/TypedArray;->getDimension(IF)F
    move-result p2
    float-to-int p2, p2
    goto :L34
  :L32
  .line 28
    invoke-static { v0 }, Lc/q/a/a/d;->h(I)Z
    move-result v0
    if-eqz v0, :L33
  .line 29
    invoke-virtual { p0, p2, v2 }, Landroid/content/res/TypedArray;->getColor(II)I
    move-result p2
    goto :L34
  :L33
  .line 30
    invoke-virtual { p0, p2, v2 }, Landroid/content/res/TypedArray;->getInt(II)I
    move-result p2
  :L34
    if-eqz v5, :L38
    if-ne v4, v7, :L35
  .line 31
    invoke-virtual { p0, p3, v10 }, Landroid/content/res/TypedArray;->getDimension(IF)F
    move-result p0
    float-to-int p0, p0
    goto :L37
  :L35
  .line 32
    invoke-static { v4 }, Lc/q/a/a/d;->h(I)Z
    move-result v0
    if-eqz v0, :L36
  .line 33
    invoke-virtual { p0, p3, v2 }, Landroid/content/res/TypedArray;->getColor(II)I
    move-result p0
    goto :L37
  :L36
  .line 34
    invoke-virtual { p0, p3, v2 }, Landroid/content/res/TypedArray;->getInt(II)I
    move-result p0
  :L37
    new-array p3, v9, [I
    aput p2, p3, v2
    aput p0, p3, v1
  .line 35
    invoke-static { p4, p3 }, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;
    move-result-object v8
    goto :L43
  :L38
    new-array p0, v1, [I
    aput p2, p0, v2
  .line 36
    invoke-static { p4, p0 }, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;
    move-result-object v8
    goto :L43
  :L39
    if-eqz v5, :L43
    if-ne v4, v7, :L40
  .line 37
    invoke-virtual { p0, p3, v10 }, Landroid/content/res/TypedArray;->getDimension(IF)F
    move-result p0
    float-to-int p0, p0
    goto :L42
  :L40
  .line 38
    invoke-static { v4 }, Lc/q/a/a/d;->h(I)Z
    move-result p2
    if-eqz p2, :L41
  .line 39
    invoke-virtual { p0, p3, v2 }, Landroid/content/res/TypedArray;->getColor(II)I
    move-result p0
    goto :L42
  :L41
  .line 40
    invoke-virtual { p0, p3, v2 }, Landroid/content/res/TypedArray;->getInt(II)I
    move-result p0
  :L42
    new-array p2, v1, [I
    aput p0, p2, v2
  .line 41
    invoke-static { p4, p2 }, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;
    move-result-object v8
  :L43
    if-eqz v8, :L44
    if-eqz p1, :L44
  .line 42
    invoke-virtual { v8, p1 }, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V
  :L44
    return-object v8
.end method

.method private static f(Landroid/content/res/TypedArray;II)I
  .registers 6
  .line 1
    invoke-virtual { p0, p1 }, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;
    move-result-object p1
    const/4 v0, 1
    const/4 v1, 0
    if-eqz p1, :L0
    const/4 v2, 1
    goto :L1
  :L0
    const/4 v2, 0
  :L1
    if-eqz v2, :L2
  .line 2
    iget p1, p1, Landroid/util/TypedValue;->type:I
    goto :L3
  :L2
    const/4 p1, 0
  :L3
  .line 3
    invoke-virtual { p0, p2 }, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;
    move-result-object p0
    if-eqz p0, :L4
    goto :L5
  :L4
    const/4 v0, 0
  :L5
    if-eqz v0, :L6
  .line 4
    iget p0, p0, Landroid/util/TypedValue;->type:I
    goto :L7
  :L6
    const/4 p0, 0
  :L7
    if-eqz v2, :L8
  .line 5
    invoke-static { p1 }, Lc/q/a/a/d;->h(I)Z
    move-result p1
    if-nez p1, :L9
  :L8
    if-eqz v0, :L10
    invoke-static { p0 }, Lc/q/a/a/d;->h(I)Z
    move-result p0
    if-eqz p0, :L10
  :L9
    const/4 v1, 3
  :L10
    return v1
.end method

.method private static g(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;)I
  .registers 5
  .line 1
    sget-object v0, Lc/q/a/a/a;->j:[I
    invoke-static { p0, p1, p2, v0 }, Landroidx/core/content/c/g;->k(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    move-result-object p0
    const-string p1, "value"
    const/4 p2, 0
  .line 2
    invoke-static { p0, p3, p1, p2 }, Landroidx/core/content/c/g;->l(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/util/TypedValue;
    move-result-object p1
    if-eqz p1, :L0
    const/4 p3, 1
    goto :L1
  :L0
    const/4 p3, 0
  :L1
    if-eqz p3, :L2
  .line 3
    iget p1, p1, Landroid/util/TypedValue;->type:I
    invoke-static { p1 }, Lc/q/a/a/d;->h(I)Z
    move-result p1
    if-eqz p1, :L2
    const/4 p2, 3
  :L2
  .line 4
    invoke-virtual { p0 }, Landroid/content/res/TypedArray;->recycle()V
    return p2
.end method

.method private static h(I)Z
  .registers 2
    const/16 v0, 28
    if-lt p0, v0, :L0
    const/16 v0, 31
    if-gt p0, v0, :L0
    const/4 p0, 1
    goto :L1
  :L0
    const/4 p0, 0
  :L1
    return p0
.end method

.method public static i(Landroid/content/Context;I)Landroid/animation/Animator;
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 24
    if-lt v0, v1, :L0
  .line 2
    invoke-static { p0, p1 }, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;
    move-result-object p0
    goto :L1
  :L0
  .line 3
    invoke-virtual { p0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    invoke-virtual { p0 }, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;
    move-result-object v1
    invoke-static { p0, v0, v1, p1 }, Lc/q/a/a/d;->j(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/animation/Animator;
    move-result-object p0
  :L1
    return-object p0
.end method

.method public static j(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/animation/Animator;
  .registers 5
    const/high16 v0, 16256
  .line 1
    invoke-static { p0, p1, p2, p3, v0 }, Lc/q/a/a/d;->k(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;IF)Landroid/animation/Animator;
    move-result-object p0
    return-object p0
.end method

.method public static k(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;IF)Landroid/animation/Animator;
  .catch Lorg/xmlpull/v1/XmlPullParserException; { :L0 .. :L1 } :L6
  .catch Ljava/io/IOException; { :L0 .. :L1 } :L4
  .catchall { :L0 .. :L1 } :L3
  .catchall { :L5 .. :L7 } :L3
  .registers 7
    const-string v0, "Can't load animation resource ID #0x"
    const/4 v1, 0
  :L0
  .line 1
    invoke-virtual { p1, p3 }, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;
    move-result-object v1
  .line 2
    invoke-static { p0, p1, p2, v1, p4 }, Lc/q/a/a/d;->a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;F)Landroid/animation/Animator;
    move-result-object p0
  :L1
    if-eqz v1, :L2
  .line 3
    invoke-interface { v1 }, Landroid/content/res/XmlResourceParser;->close()V
  :L2
    return-object p0
  :L3
    move-exception p0
    goto :L7
  :L4
    move-exception p0
  :L5
  .line 4
    new-instance p1, Landroid/content/res/Resources$NotFoundException;
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 5
    invoke-static { p3 }, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
    move-result-object p3
    invoke-virtual { p2, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V
  .line 6
    invoke-virtual { p1, p0 }, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
  .line 7
    throw p1
  :L6
    move-exception p0
  .line 8
    new-instance p1, Landroid/content/res/Resources$NotFoundException;
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 9
    invoke-static { p3 }, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
    move-result-object p3
    invoke-virtual { p2, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V
  .line 10
    invoke-virtual { p1, p0 }, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
  .line 11
    throw p1
  :L7
    if-eqz v1, :L8
  .line 12
    invoke-interface { v1 }, Landroid/content/res/XmlResourceParser;->close()V
  :L8
  .line 13
    throw p0
.end method

.method private static l(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ValueAnimator;
  .registers 9
  .line 1
    sget-object v0, Lc/q/a/a/a;->g:[I
    invoke-static { p1, p2, p3, v0 }, Landroidx/core/content/c/g;->k(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    move-result-object v0
  .line 2
    sget-object v1, Lc/q/a/a/a;->k:[I
    invoke-static { p1, p2, p3, v1 }, Landroidx/core/content/c/g;->k(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    move-result-object p1
    if-nez p4, :L0
  .line 3
    new-instance p4, Landroid/animation/ValueAnimator;
    invoke-direct { p4 }, Landroid/animation/ValueAnimator;-><init>()V
  :L0
  .line 4
    invoke-static { p4, v0, p1, p5, p6 }, Lc/q/a/a/d;->q(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;FLorg/xmlpull/v1/XmlPullParser;)V
    const-string p2, "interpolator"
    const/4 p3, 0
  .line 5
    invoke-static { v0, p6, p2, p3, p3 }, Landroidx/core/content/c/g;->h(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I
    move-result p2
    if-lez p2, :L1
  .line 6
    invoke-static { p0, p2 }, Lc/q/a/a/c;->b(Landroid/content/Context;I)Landroid/view/animation/Interpolator;
    move-result-object p0
  .line 7
    invoke-virtual { p4, p0 }, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V
  :L1
  .line 8
    invoke-virtual { v0 }, Landroid/content/res/TypedArray;->recycle()V
    if-eqz p1, :L2
  .line 9
    invoke-virtual { p1 }, Landroid/content/res/TypedArray;->recycle()V
  :L2
    return-object p4
.end method

.method private static m(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;ILorg/xmlpull/v1/XmlPullParser;)Landroid/animation/Keyframe;
  .registers 12
  .line 1
    sget-object v0, Lc/q/a/a/a;->j:[I
    invoke-static { p1, p2, p3, v0 }, Landroidx/core/content/c/g;->k(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    move-result-object p1
    const-string p2, "fraction"
    const/4 p3, 3
    const/high16 v0, -16512
  .line 2
    invoke-static { p1, p5, p2, p3, v0 }, Landroidx/core/content/c/g;->f(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F
    move-result p2
    const-string v0, "value"
    const/4 v1, 0
  .line 3
    invoke-static { p1, p5, v0, v1 }, Landroidx/core/content/c/g;->l(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/util/TypedValue;
    move-result-object v2
    const/4 v3, 1
    if-eqz v2, :L0
    const/4 v4, 1
    goto :L1
  :L0
    const/4 v4, 0
  :L1
    const/4 v5, 4
    if-ne p4, v5, :L3
    if-eqz v4, :L2
  .line 4
    iget p4, v2, Landroid/util/TypedValue;->type:I
    invoke-static { p4 }, Lc/q/a/a/d;->h(I)Z
    move-result p4
    if-eqz p4, :L2
    const/4 p4, 3
    goto :L3
  :L2
    const/4 p4, 0
  :L3
    if-eqz v4, :L6
    if-eqz p4, :L5
    if-eq p4, v3, :L4
    if-eq p4, p3, :L4
    const/4 p2, 0
    goto :L8
  :L4
  .line 5
    invoke-static { p1, p5, v0, v1, v1 }, Landroidx/core/content/c/g;->g(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I
    move-result p3
  .line 6
    invoke-static { p2, p3 }, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;
    move-result-object p2
    goto :L8
  :L5
    const/4 p3, 0
  .line 7
    invoke-static { p1, p5, v0, v1, p3 }, Landroidx/core/content/c/g;->f(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F
    move-result p3
  .line 8
    invoke-static { p2, p3 }, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;
    move-result-object p2
    goto :L8
  :L6
    if-nez p4, :L7
  .line 9
    invoke-static { p2 }, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;
    move-result-object p2
    goto :L8
  :L7
  .line 10
    invoke-static { p2 }, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;
    move-result-object p2
  :L8
    const-string p3, "interpolator"
  .line 11
    invoke-static { p1, p5, p3, v3, v1 }, Landroidx/core/content/c/g;->h(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I
    move-result p3
    if-lez p3, :L9
  .line 12
    invoke-static { p0, p3 }, Lc/q/a/a/c;->b(Landroid/content/Context;I)Landroid/view/animation/Interpolator;
    move-result-object p0
  .line 13
    invoke-virtual { p2, p0 }, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V
  :L9
  .line 14
    invoke-virtual { p1 }, Landroid/content/res/TypedArray;->recycle()V
    return-object p2
.end method

.method private static n(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ObjectAnimator;
  .registers 14
  .line 1
    new-instance v7, Landroid/animation/ObjectAnimator;
    invoke-direct { v7 }, Landroid/animation/ObjectAnimator;-><init>()V
    move-object v0, p0
    move-object v1, p1
    move-object v2, p2
    move-object v3, p3
    move-object v4, v7
    move v5, p4
    move-object v6, p5
  .line 2
    invoke-static/range { v0 .. v6 }, Lc/q/a/a/d;->l(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ValueAnimator;
    return-object v7
.end method

.method private static o(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/animation/PropertyValuesHolder;
  .registers 15
    const/4 v0, 0
    move-object v1, v0
  :L0
  .line 1
    invoke-interface { p3 }, Lorg/xmlpull/v1/XmlPullParser;->next()I
    move-result v2
    const/4 v3, 3
    if-eq v2, v3, :L4
    const/4 v4, 1
    if-eq v2, v4, :L4
  .line 2
    invoke-interface { p3 }, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
    move-result-object v2
    const-string v3, "keyframe"
  .line 3
    invoke-virtual { v2, v3 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :L0
    const/4 v2, 4
    if-ne p5, v2, :L1
  .line 4
    invoke-static { p3 }, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;
    move-result-object p5
    invoke-static { p1, p2, p5, p3 }, Lc/q/a/a/d;->g(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;)I
    move-result p5
  :L1
  .line 5
    invoke-static { p3 }, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;
    move-result-object v5
    move-object v2, p0
    move-object v3, p1
    move-object v4, p2
    move v6, p5
    move-object v7, p3
    invoke-static/range { v2 .. v7 }, Lc/q/a/a/d;->m(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;ILorg/xmlpull/v1/XmlPullParser;)Landroid/animation/Keyframe;
    move-result-object v2
    if-eqz v2, :L3
    if-nez v1, :L2
  .line 6
    new-instance v1, Ljava/util/ArrayList;
    invoke-direct { v1 }, Ljava/util/ArrayList;-><init>()V
  :L2
  .line 7
    invoke-virtual { v1, v2 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  :L3
  .line 8
    invoke-interface { p3 }, Lorg/xmlpull/v1/XmlPullParser;->next()I
    goto :L0
  :L4
    if-eqz v1, :L17
  .line 9
    invoke-virtual { v1 }, Ljava/util/ArrayList;->size()I
    move-result p0
    if-lez p0, :L17
    const/4 p1, 0
  .line 10
    invoke-virtual { v1, p1 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object p2
    check-cast p2, Landroid/animation/Keyframe;
    add-int/lit8 p3, p0, -1
  .line 11
    invoke-virtual { v1, p3 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object p3
    check-cast p3, Landroid/animation/Keyframe;
  .line 12
    invoke-virtual { p3 }, Landroid/animation/Keyframe;->getFraction()F
    move-result v0
    const/high16 v2, 16256
    const/4 v4, 0
    cmpg-float v5, v0, v2
    if-gez v5, :L6
    cmpg-float v0, v0, v4
    if-gez v0, :L5
  .line 13
    invoke-virtual { p3, v2 }, Landroid/animation/Keyframe;->setFraction(F)V
    goto :L6
  :L5
  .line 14
    invoke-virtual { v1 }, Ljava/util/ArrayList;->size()I
    move-result v0
    invoke-static { p3, v2 }, Lc/q/a/a/d;->c(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;
    move-result-object p3
    invoke-virtual { v1, v0, p3 }, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    add-int/lit8 p0, p0, 1
  :L6
  .line 15
    invoke-virtual { p2 }, Landroid/animation/Keyframe;->getFraction()F
    move-result p3
    cmpl-float v0, p3, v4
    if-eqz v0, :L8
    cmpg-float p3, p3, v4
    if-gez p3, :L7
  .line 16
    invoke-virtual { p2, v4 }, Landroid/animation/Keyframe;->setFraction(F)V
    goto :L8
  :L7
  .line 17
    invoke-static { p2, v4 }, Lc/q/a/a/d;->c(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;
    move-result-object p2
    invoke-virtual { v1, p1, p2 }, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    add-int/lit8 p0, p0, 1
  :L8
  .line 18
    new-array p2, p0, [Landroid/animation/Keyframe;
  .line 19
    invoke-virtual { v1, p2 }, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
  :L9
    if-ge p1, p0, :L16
  .line 20
    aget-object p3, p2, p1
  .line 21
    invoke-virtual { p3 }, Landroid/animation/Keyframe;->getFraction()F
    move-result v0
    cmpg-float v0, v0, v4
    if-gez v0, :L15
    if-nez p1, :L10
  .line 22
    invoke-virtual { p3, v4 }, Landroid/animation/Keyframe;->setFraction(F)V
    goto :L15
  :L10
    add-int/lit8 v0, p0, -1
    if-ne p1, v0, :L11
  .line 23
    invoke-virtual { p3, v2 }, Landroid/animation/Keyframe;->setFraction(F)V
    goto :L15
  :L11
    add-int/lit8 p3, p1, 1
    move v1, p1
  :L12
    if-ge p3, v0, :L14
  .line 24
    aget-object v5, p2, p3
    invoke-virtual { v5 }, Landroid/animation/Keyframe;->getFraction()F
    move-result v5
    cmpl-float v5, v5, v4
    if-ltz v5, :L13
    goto :L14
  :L13
    add-int/lit8 v1, p3, 1
    move v8, v1
    move v1, p3
    move p3, v8
    goto :L12
  :L14
    add-int/lit8 p3, v1, 1
  .line 25
    aget-object p3, p2, p3
    invoke-virtual { p3 }, Landroid/animation/Keyframe;->getFraction()F
    move-result p3
    add-int/lit8 v0, p1, -1
    aget-object v0, p2, v0
  .line 26
    invoke-virtual { v0 }, Landroid/animation/Keyframe;->getFraction()F
    move-result v0
    sub-float/2addr p3, v0
  .line 27
    invoke-static { p2, p3, p1, v1 }, Lc/q/a/a/d;->d([Landroid/animation/Keyframe;FII)V
  :L15
    add-int/lit8 p1, p1, 1
    goto :L9
  :L16
  .line 28
    invoke-static { p4, p2 }, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;
    move-result-object v0
    if-ne p5, v3, :L17
  .line 29
    invoke-static { }, Lc/q/a/a/e;->a()Lc/q/a/a/e;
    move-result-object p0
    invoke-virtual { v0, p0 }, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V
  :L17
    return-object v0
.end method

.method private static p(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)[Landroid/animation/PropertyValuesHolder;
  .registers 22
    move-object/from16 v6, p3
    const/4 v7, 0
    move-object v8, v7
  :L0
  .line 1
    invoke-interface/range { p3 .. p3 }, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    move-result v0
    const/4 v9, 0
    const/4 v1, 3
    if-eq v0, v1, :L7
    const/4 v10, 1
    if-eq v0, v10, :L7
    const/4 v2, 2
    if-eq v0, v2, :L1
  .line 2
    invoke-interface/range { p3 .. p3 }, Lorg/xmlpull/v1/XmlPullParser;->next()I
    goto :L0
  :L1
  .line 3
    invoke-interface/range { p3 .. p3 }, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
    move-result-object v0
    const-string v3, "propertyValuesHolder"
  .line 4
    invoke-virtual { v0, v3 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L5
  .line 5
    sget-object v0, Lc/q/a/a/a;->i:[I
    move-object/from16 v11, p1
    move-object/from16 v12, p2
    move-object/from16 v13, p4
    invoke-static { v11, v12, v13, v0 }, Landroidx/core/content/c/g;->k(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    move-result-object v14
    const-string v0, "propertyName"
  .line 6
    invoke-static { v14, v6, v0, v1 }, Landroidx/core/content/c/g;->i(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;
    move-result-object v15
    const/4 v0, 4
    const-string v1, "valueType"
  .line 7
    invoke-static { v14, v6, v1, v2, v0 }, Landroidx/core/content/c/g;->g(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I
    move-result v5
    move-object/from16 v0, p0
    move-object/from16 v1, p1
    move-object/from16 v2, p2
    move-object/from16 v3, p3
    move-object v4, v15
    move/from16 v16, v5
  .line 8
    invoke-static/range { v0 .. v5 }, Lc/q/a/a/d;->o(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/animation/PropertyValuesHolder;
    move-result-object v0
    if-nez v0, :L2
    move/from16 v1, v16
  .line 9
    invoke-static { v14, v1, v9, v10, v15 }, Lc/q/a/a/d;->e(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;
    move-result-object v0
  :L2
    if-eqz v0, :L4
    if-nez v8, :L3
  .line 10
    new-instance v1, Ljava/util/ArrayList;
    invoke-direct { v1 }, Ljava/util/ArrayList;-><init>()V
    move-object v8, v1
  :L3
  .line 11
    invoke-virtual { v8, v0 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  :L4
  .line 12
    invoke-virtual { v14 }, Landroid/content/res/TypedArray;->recycle()V
    goto :L6
  :L5
    move-object/from16 v11, p1
    move-object/from16 v12, p2
    move-object/from16 v13, p4
  :L6
  .line 13
    invoke-interface/range { p3 .. p3 }, Lorg/xmlpull/v1/XmlPullParser;->next()I
    goto :L0
  :L7
    if-eqz v8, :L9
  .line 14
    invoke-virtual { v8 }, Ljava/util/ArrayList;->size()I
    move-result v0
  .line 15
    new-array v7, v0, [Landroid/animation/PropertyValuesHolder;
  :L8
    if-ge v9, v0, :L9
  .line 16
    invoke-virtual { v8, v9 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroid/animation/PropertyValuesHolder;
    aput-object v1, v7, v9
    add-int/lit8 v9, v9, 1
    goto :L8
  :L9
    return-object v7
.end method

.method private static q(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;FLorg/xmlpull/v1/XmlPullParser;)V
  .registers 16
    const-string v0, "duration"
    const/4 v1, 1
    const/16 v2, 300
  .line 1
    invoke-static { p1, p4, v0, v1, v2 }, Landroidx/core/content/c/g;->g(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I
    move-result v0
    int-to-long v2, v0
    const-string v0, "startOffset"
    const/4 v4, 2
    const/4 v5, 0
  .line 2
    invoke-static { p1, p4, v0, v4, v5 }, Landroidx/core/content/c/g;->g(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I
    move-result v0
    int-to-long v6, v0
    const-string v0, "valueType"
    const/4 v4, 7
    const/4 v8, 4
  .line 3
    invoke-static { p1, p4, v0, v4, v8 }, Landroidx/core/content/c/g;->g(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I
    move-result v0
    const-string v4, "valueFrom"
  .line 4
    invoke-static { p4, v4 }, Landroidx/core/content/c/g;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
    move-result v4
    if-eqz v4, :L1
    const-string v4, "valueTo"
  .line 5
    invoke-static { p4, v4 }, Landroidx/core/content/c/g;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
    move-result v4
    if-eqz v4, :L1
    const/4 v4, 6
    const/4 v9, 5
    if-ne v0, v8, :L0
  .line 6
    invoke-static { p1, v9, v4 }, Lc/q/a/a/d;->f(Landroid/content/res/TypedArray;II)I
    move-result v0
  :L0
    const-string v10, ""
  .line 7
    invoke-static { p1, v0, v9, v4, v10 }, Lc/q/a/a/d;->e(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;
    move-result-object v4
    if-eqz v4, :L1
    new-array v9, v1, [Landroid/animation/PropertyValuesHolder;
    aput-object v4, v9, v5
  .line 8
    invoke-virtual { p0, v9 }, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V
  :L1
  .line 9
    invoke-virtual { p0, v2, v3 }, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;
  .line 10
    invoke-virtual { p0, v6, v7 }, Landroid/animation/ValueAnimator;->setStartDelay(J)V
    const/4 v2, 3
    const-string v3, "repeatCount"
  .line 11
    invoke-static { p1, p4, v3, v2, v5 }, Landroidx/core/content/c/g;->g(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I
    move-result v2
    invoke-virtual { p0, v2 }, Landroid/animation/ValueAnimator;->setRepeatCount(I)V
    const-string v2, "repeatMode"
  .line 12
    invoke-static { p1, p4, v2, v8, v1 }, Landroidx/core/content/c/g;->g(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I
    move-result p1
    invoke-virtual { p0, p1 }, Landroid/animation/ValueAnimator;->setRepeatMode(I)V
    if-eqz p2, :L2
  .line 13
    invoke-static { p0, p2, v0, p3, p4 }, Lc/q/a/a/d;->r(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;IFLorg/xmlpull/v1/XmlPullParser;)V
  :L2
    return-void
.end method

.method private static r(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;IFLorg/xmlpull/v1/XmlPullParser;)V
  .registers 10
  .line 1
    check-cast p0, Landroid/animation/ObjectAnimator;
    const-string v0, "pathData"
    const/4 v1, 1
  .line 2
    invoke-static { p1, p4, v0, v1 }, Landroidx/core/content/c/g;->i(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;
    move-result-object v0
    if-eqz v0, :L3
    const-string v1, "propertyXName"
    const/4 v2, 2
  .line 3
    invoke-static { p1, p4, v1, v2 }, Landroidx/core/content/c/g;->i(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;
    move-result-object v1
    const/4 v3, 3
    const-string v4, "propertyYName"
  .line 4
    invoke-static { p1, p4, v4, v3 }, Landroidx/core/content/c/g;->i(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;
    move-result-object p4
    if-eq p2, v2, :L0
    const/4 v2, 4
  :L0
    if-nez v1, :L2
    if-eqz p4, :L1
    goto :L2
  :L1
  .line 5
    new-instance p0, Landroid/view/InflateException;
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p1 }, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;
    move-result-object p1
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p1, " propertyXName or propertyYName is needed for PathData"
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { p0, p1 }, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V
    throw p0
  :L2
  .line 6
    invoke-static { v0 }, Lc/g/d/c;->e(Ljava/lang/String;)Landroid/graphics/Path;
    move-result-object p1
    const/high16 p2, 16128
    mul-float p3, p3, p2
  .line 7
    invoke-static { p1, p0, p3, v1, p4 }, Lc/q/a/a/d;->s(Landroid/graphics/Path;Landroid/animation/ObjectAnimator;FLjava/lang/String;Ljava/lang/String;)V
    goto :L4
  :L3
    const/4 p2, 0
    const-string p3, "propertyName"
  .line 8
    invoke-static { p1, p4, p3, p2 }, Landroidx/core/content/c/g;->i(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;
    move-result-object p1
  .line 9
    invoke-virtual { p0, p1 }, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V
  :L4
    return-void
.end method

.method private static s(Landroid/graphics/Path;Landroid/animation/ObjectAnimator;FLjava/lang/String;Ljava/lang/String;)V
  .registers 22
    move-object/from16 v0, p0
    move-object/from16 v1, p1
    move-object/from16 v2, p3
    move-object/from16 v3, p4
  .line 1
    new-instance v4, Landroid/graphics/PathMeasure;
    const/4 v5, 0
    invoke-direct { v4, v0, v5 }, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V
  .line 2
    new-instance v6, Ljava/util/ArrayList;
    invoke-direct { v6 }, Ljava/util/ArrayList;-><init>()V
    const/4 v7, 0
  .line 3
    invoke-static { v7 }, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    move-result-object v8
    invoke-virtual { v6, v8 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    const/4 v8, 0
  :L0
  .line 4
    invoke-virtual { v4 }, Landroid/graphics/PathMeasure;->getLength()F
    move-result v9
    add-float/2addr v8, v9
  .line 5
    invoke-static { v8 }, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    move-result-object v9
    invoke-virtual { v6, v9 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  .line 6
    invoke-virtual { v4 }, Landroid/graphics/PathMeasure;->nextContour()Z
    move-result v9
    if-nez v9, :L0
  .line 7
    new-instance v4, Landroid/graphics/PathMeasure;
    invoke-direct { v4, v0, v5 }, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V
    const/16 v0, 100
    div-float v9, v8, p2
    float-to-int v9, v9
    const/4 v10, 1
    add-int/2addr v9, v10
  .line 8
    invoke-static { v0, v9 }, Ljava/lang/Math;->min(II)I
    move-result v0
  .line 9
    new-array v9, v0, [F
  .line 10
    new-array v11, v0, [F
    const/4 v12, 2
    new-array v13, v12, [F
    add-int/lit8 v14, v0, -1
    int-to-float v14, v14
    div-float/2addr v8, v14
    const/4 v14, 0
    const/4 v15, 0
  :L1
    const/4 v12, 0
    if-ge v14, v0, :L3
  .line 11
    invoke-virtual { v6, v15 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v16
    check-cast v16, Ljava/lang/Float;
    invoke-virtual/range { v16 .. v16 }, Ljava/lang/Float;->floatValue()F
    move-result v16
    sub-float v10, v7, v16
    invoke-virtual { v4, v10, v13, v12 }, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z
  .line 12
    aget v10, v13, v5
    aput v10, v9, v14
    const/4 v10, 1
  .line 13
    aget v12, v13, v10
    aput v12, v11, v14
    add-float/2addr v7, v8
    add-int/lit8 v10, v15, 1
  .line 14
    invoke-virtual { v6 }, Ljava/util/ArrayList;->size()I
    move-result v12
    if-ge v10, v12, :L2
  .line 15
    invoke-virtual { v6, v10 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v12
    check-cast v12, Ljava/lang/Float;
    invoke-virtual { v12 }, Ljava/lang/Float;->floatValue()F
    move-result v12
    cmpl-float v12, v7, v12
    if-lez v12, :L2
  .line 16
    invoke-virtual { v4 }, Landroid/graphics/PathMeasure;->nextContour()Z
    move v15, v10
  :L2
    add-int/lit8 v14, v14, 1
    const/4 v10, 1
    goto :L1
  :L3
    if-eqz v2, :L4
  .line 17
    invoke-static { v2, v9 }, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;
    move-result-object v0
    goto :L5
  :L4
    move-object v0, v12
  :L5
    if-eqz v3, :L6
  .line 18
    invoke-static { v3, v11 }, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;
    move-result-object v12
  :L6
    if-nez v0, :L7
    const/4 v2, 1
    new-array v0, v2, [Landroid/animation/PropertyValuesHolder;
    aput-object v12, v0, v5
  .line 19
    invoke-virtual { v1, v0 }, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V
    goto :L9
  :L7
    const/4 v2, 1
    if-nez v12, :L8
    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;
    aput-object v0, v2, v5
  .line 20
    invoke-virtual { v1, v2 }, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V
    goto :L9
  :L8
    const/4 v3, 2
    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;
    aput-object v0, v3, v5
    aput-object v12, v3, v2
  .line 21
    invoke-virtual { v1, v3 }, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V
  :L9
    return-void
.end method
