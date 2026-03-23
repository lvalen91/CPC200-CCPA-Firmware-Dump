.class public Landroidx/constraintlayout/widget/a;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/constraintlayout/widget/a$b;
  }
.end annotation

.field a:Ljava/lang/String;

.field private b:Landroidx/constraintlayout/widget/a$b;

.field private c:I

.field private d:F

.field private e:Ljava/lang/String;

.field f:Z

.field private g:I

.method public constructor <init>(Landroidx/constraintlayout/widget/a;Ljava/lang/Object;)V
  .registers 4
  .line 5
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 6
    iget-object v0, p1, Landroidx/constraintlayout/widget/a;->a:Ljava/lang/String;
    iput-object v0, p0, Landroidx/constraintlayout/widget/a;->a:Ljava/lang/String;
  .line 7
    iget-object p1, p1, Landroidx/constraintlayout/widget/a;->b:Landroidx/constraintlayout/widget/a$b;
    iput-object p1, p0, Landroidx/constraintlayout/widget/a;->b:Landroidx/constraintlayout/widget/a$b;
  .line 8
    invoke-virtual { p0, p2 }, Landroidx/constraintlayout/widget/a;->d(Ljava/lang/Object;)V
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/constraintlayout/widget/a$b;Ljava/lang/Object;)V
  .registers 4
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Landroidx/constraintlayout/widget/a;->a:Ljava/lang/String;
  .line 3
    iput-object p2, p0, Landroidx/constraintlayout/widget/a;->b:Landroidx/constraintlayout/widget/a$b;
  .line 4
    invoke-virtual { p0, p3 }, Landroidx/constraintlayout/widget/a;->d(Ljava/lang/Object;)V
    return-void
.end method

.method public static a(Ljava/util/HashMap;Landroid/view/View;)Ljava/util/HashMap;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/HashMap<",
      "Ljava/lang/String;",
      "Landroidx/constraintlayout/widget/a;",
      ">;",
      "Landroid/view/View;",
      ")",
      "Ljava/util/HashMap<",
      "Ljava/lang/String;",
      "Landroidx/constraintlayout/widget/a;",
      ">;"
    }
  .end annotation
  .catch Ljava/lang/NoSuchMethodException; { :L1 .. :L3 } :L6
  .catch Ljava/lang/IllegalAccessException; { :L1 .. :L3 } :L5
  .catch Ljava/lang/reflect/InvocationTargetException; { :L1 .. :L3 } :L4
  .registers 10
  .line 1
    new-instance v0, Ljava/util/HashMap;
    invoke-direct { v0 }, Ljava/util/HashMap;-><init>()V
  .line 2
    invoke-virtual { p1 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v1
  .line 3
    invoke-virtual { p0 }, Ljava/util/HashMap;->keySet()Ljava/util/Set;
    move-result-object v2
    invoke-interface { v2 }, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v2
  :L0
    invoke-interface { v2 }, Ljava/util/Iterator;->hasNext()Z
    move-result v3
    if-eqz v3, :L7
    invoke-interface { v2 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/lang/String;
  .line 4
    invoke-virtual { p0, v3 }, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Landroidx/constraintlayout/widget/a;
  :L1
    const-string v5, "BackgroundColor"
  .line 5
    invoke-virtual { v3, v5 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v5
    if-eqz v5, :L2
  .line 6
    invoke-virtual { p1 }, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;
    move-result-object v5
    check-cast v5, Landroid/graphics/drawable/ColorDrawable;
  .line 7
    invoke-virtual { v5 }, Landroid/graphics/drawable/ColorDrawable;->getColor()I
    move-result v5
    invoke-static { v5 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
  .line 8
    new-instance v6, Landroidx/constraintlayout/widget/a;
    invoke-direct { v6, v4, v5 }, Landroidx/constraintlayout/widget/a;-><init>(Landroidx/constraintlayout/widget/a;Ljava/lang/Object;)V
    invoke-virtual { v0, v3, v6 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    goto :L0
  :L2
  .line 9
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct { v5 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v6, "getMap"
    invoke-virtual { v5, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v5, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v5 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    const/4 v6, 0
    new-array v7, v6, [Ljava/lang/Class;
    invoke-virtual { v1, v5, v7 }, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v5
    new-array v6, v6, [Ljava/lang/Object;
  .line 10
    invoke-virtual { v5, p1, v6 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v5
  .line 11
    new-instance v6, Landroidx/constraintlayout/widget/a;
    invoke-direct { v6, v4, v5 }, Landroidx/constraintlayout/widget/a;-><init>(Landroidx/constraintlayout/widget/a;Ljava/lang/Object;)V
    invoke-virtual { v0, v3, v6 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L3
    goto :L0
  :L4
    move-exception v3
  .line 12
    invoke-virtual { v3 }, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    goto :L0
  :L5
    move-exception v3
  .line 13
    invoke-virtual { v3 }, Ljava/lang/IllegalAccessException;->printStackTrace()V
    goto :L0
  :L6
    move-exception v3
  .line 14
    invoke-virtual { v3 }, Ljava/lang/NoSuchMethodException;->printStackTrace()V
    goto :L0
  :L7
    return-object v0
.end method

.method public static b(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroid/content/Context;",
      "Lorg/xmlpull/v1/XmlPullParser;",
      "Ljava/util/HashMap<",
      "Ljava/lang/String;",
      "Landroidx/constraintlayout/widget/a;",
      ">;)V"
    }
  .end annotation
  .registers 14
  .line 1
    invoke-static { p1 }, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;
    move-result-object p1
  .line 2
    sget-object v0, Landroidx/constraintlayout/widget/i;->CustomAttribute:[I
    invoke-virtual { p0, p1, v0 }, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    move-result-object p1
  .line 3
    invoke-virtual { p1 }, Landroid/content/res/TypedArray;->getIndexCount()I
    move-result v0
    const/4 v1, 0
    const/4 v2, 0
    move-object v3, v1
    move-object v4, v3
    const/4 v5, 0
  :L0
    if-ge v5, v0, :L11
  .line 4
    invoke-virtual { p1, v5 }, Landroid/content/res/TypedArray;->getIndex(I)I
    move-result v6
  .line 5
    sget v7, Landroidx/constraintlayout/widget/i;->CustomAttribute_attributeName:I
    const/4 v8, 1
    if-ne v6, v7, :L1
  .line 6
    invoke-virtual { p1, v6 }, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
    move-result-object v1
    if-eqz v1, :L10
  .line 7
    invoke-virtual { v1 }, Ljava/lang/String;->length()I
    move-result v6
    if-lez v6, :L10
  .line 8
    new-instance v6, Ljava/lang/StringBuilder;
    invoke-direct { v6 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v1, v2 }, Ljava/lang/String;->charAt(I)C
    move-result v7
    invoke-static { v7 }, Ljava/lang/Character;->toUpperCase(C)C
    move-result v7
    invoke-virtual { v6, v7 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v8 }, Ljava/lang/String;->substring(I)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v6, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v6 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    goto/16 :L10
  :L1
  .line 9
    sget v7, Landroidx/constraintlayout/widget/i;->CustomAttribute_customBoolean:I
    if-ne v6, v7, :L2
  .line 10
    invoke-virtual { p1, v6, v2 }, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    move-result v3
    invoke-static { v3 }, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    move-result-object v3
  .line 11
    sget-object v4, Landroidx/constraintlayout/widget/a$b;->g:Landroidx/constraintlayout/widget/a$b;
    goto/16 :L10
  :L2
  .line 12
    sget v7, Landroidx/constraintlayout/widget/i;->CustomAttribute_customColorValue:I
    if-ne v6, v7, :L4
  .line 13
    sget-object v3, Landroidx/constraintlayout/widget/a$b;->d:Landroidx/constraintlayout/widget/a$b;
  .line 14
    invoke-virtual { p1, v6, v2 }, Landroid/content/res/TypedArray;->getColor(II)I
    move-result v4
    invoke-static { v4 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
  :L3
    move-object v10, v4
    move-object v4, v3
    move-object v3, v10
    goto :L10
  :L4
  .line 15
    sget v7, Landroidx/constraintlayout/widget/i;->CustomAttribute_customColorDrawableValue:I
    if-ne v6, v7, :L5
  .line 16
    sget-object v3, Landroidx/constraintlayout/widget/a$b;->e:Landroidx/constraintlayout/widget/a$b;
  .line 17
    invoke-virtual { p1, v6, v2 }, Landroid/content/res/TypedArray;->getColor(II)I
    move-result v4
    invoke-static { v4 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    goto :L3
  :L5
  .line 18
    sget v7, Landroidx/constraintlayout/widget/i;->CustomAttribute_customPixelDimension:I
    const/4 v9, 0
    if-ne v6, v7, :L6
  .line 19
    sget-object v3, Landroidx/constraintlayout/widget/a$b;->h:Landroidx/constraintlayout/widget/a$b;
  .line 20
    invoke-virtual { p1, v6, v9 }, Landroid/content/res/TypedArray;->getDimension(IF)F
    move-result v4
  .line 21
    invoke-virtual { p0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v6
    invoke-virtual { v6 }, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
    move-result-object v6
  .line 22
    invoke-static { v8, v4, v6 }, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
    move-result v4
    invoke-static { v4 }, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    move-result-object v4
    goto :L3
  :L6
  .line 23
    sget v7, Landroidx/constraintlayout/widget/i;->CustomAttribute_customDimension:I
    if-ne v6, v7, :L7
  .line 24
    sget-object v3, Landroidx/constraintlayout/widget/a$b;->h:Landroidx/constraintlayout/widget/a$b;
  .line 25
    invoke-virtual { p1, v6, v9 }, Landroid/content/res/TypedArray;->getDimension(IF)F
    move-result v4
    invoke-static { v4 }, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    move-result-object v4
    goto :L3
  :L7
  .line 26
    sget v7, Landroidx/constraintlayout/widget/i;->CustomAttribute_customFloatValue:I
    if-ne v6, v7, :L8
  .line 27
    sget-object v3, Landroidx/constraintlayout/widget/a$b;->c:Landroidx/constraintlayout/widget/a$b;
    const/high16 v4, 32704
  .line 28
    invoke-virtual { p1, v6, v4 }, Landroid/content/res/TypedArray;->getFloat(IF)F
    move-result v4
    invoke-static { v4 }, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    move-result-object v4
    goto :L3
  :L8
  .line 29
    sget v7, Landroidx/constraintlayout/widget/i;->CustomAttribute_customIntegerValue:I
    if-ne v6, v7, :L9
  .line 30
    sget-object v3, Landroidx/constraintlayout/widget/a$b;->b:Landroidx/constraintlayout/widget/a$b;
    const/4 v4, -1
  .line 31
    invoke-virtual { p1, v6, v4 }, Landroid/content/res/TypedArray;->getInteger(II)I
    move-result v4
    invoke-static { v4 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    goto :L3
  :L9
  .line 32
    sget v7, Landroidx/constraintlayout/widget/i;->CustomAttribute_customStringValue:I
    if-ne v6, v7, :L10
  .line 33
    sget-object v3, Landroidx/constraintlayout/widget/a$b;->f:Landroidx/constraintlayout/widget/a$b;
  .line 34
    invoke-virtual { p1, v6 }, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
    move-result-object v4
    goto :L3
  :L10
    add-int/lit8 v5, v5, 1
    goto/16 :L0
  :L11
    if-eqz v1, :L12
    if-eqz v3, :L12
  .line 35
    new-instance p0, Landroidx/constraintlayout/widget/a;
    invoke-direct { p0, v1, v4, v3 }, Landroidx/constraintlayout/widget/a;-><init>(Ljava/lang/String;Landroidx/constraintlayout/widget/a$b;Ljava/lang/Object;)V
    invoke-virtual { p2, v1, p0 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L12
  .line 36
    invoke-virtual { p1 }, Landroid/content/res/TypedArray;->recycle()V
    return-void
.end method

.method public static c(Landroid/view/View;Ljava/util/HashMap;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroid/view/View;",
      "Ljava/util/HashMap<",
      "Ljava/lang/String;",
      "Landroidx/constraintlayout/widget/a;",
      ">;)V"
    }
  .end annotation
  .catch Ljava/lang/NoSuchMethodException; { :L1 .. :L9 } :L12
  .catch Ljava/lang/IllegalAccessException; { :L1 .. :L9 } :L11
  .catch Ljava/lang/reflect/InvocationTargetException; { :L1 .. :L9 } :L10
  .registers 13
    const-string v0, "\" not found on "
    const-string v1, " Custom Attribute \""
  .line 1
    invoke-virtual { p0 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v2
  .line 2
    invoke-virtual { p1 }, Ljava/util/HashMap;->keySet()Ljava/util/Set;
    move-result-object v3
    invoke-interface { v3 }, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v3
  :L0
    invoke-interface { v3 }, Ljava/util/Iterator;->hasNext()Z
    move-result v4
    if-eqz v4, :L13
    invoke-interface { v3 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Ljava/lang/String;
  .line 3
    invoke-virtual { p1, v4 }, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Landroidx/constraintlayout/widget/a;
  .line 4
    new-instance v6, Ljava/lang/StringBuilder;
    invoke-direct { v6 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v7, "set"
    invoke-virtual { v6, v7 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v6, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v6 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v6
  :L1
  .line 5
    sget-object v7, Landroidx/constraintlayout/widget/a$a;->a:[I
    iget-object v8, v5, Landroidx/constraintlayout/widget/a;->b:Landroidx/constraintlayout/widget/a$b;
    invoke-virtual { v8 }, Ljava/lang/Enum;->ordinal()I
    move-result v8
    aget v7, v7, v8
    const/4 v8, 0
    const/4 v9, 1
    packed-switch v7, :L14
    goto :L0
  :L2
    new-array v7, v9, [Ljava/lang/Class;
  .line 6
    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;
    aput-object v10, v7, v8
    invoke-virtual { v2, v6, v7 }, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v7
    new-array v9, v9, [Ljava/lang/Object;
  .line 7
    iget v5, v5, Landroidx/constraintlayout/widget/a;->d:F
    invoke-static { v5 }, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    move-result-object v5
    aput-object v5, v9, v8
    invoke-virtual { v7, p0, v9 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    goto :L0
  :L3
    new-array v7, v9, [Ljava/lang/Class;
  .line 8
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
    aput-object v10, v7, v8
    invoke-virtual { v2, v6, v7 }, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v7
    new-array v9, v9, [Ljava/lang/Object;
  .line 9
    iget-boolean v5, v5, Landroidx/constraintlayout/widget/a;->f:Z
    invoke-static { v5 }, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    move-result-object v5
    aput-object v5, v9, v8
    invoke-virtual { v7, p0, v9 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    goto :L0
  :L4
    new-array v7, v9, [Ljava/lang/Class;
  .line 10
    const-class v10, Ljava/lang/CharSequence;
    aput-object v10, v7, v8
    invoke-virtual { v2, v6, v7 }, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v7
    new-array v9, v9, [Ljava/lang/Object;
  .line 11
    iget-object v5, v5, Landroidx/constraintlayout/widget/a;->e:Ljava/lang/String;
    aput-object v5, v9, v8
    invoke-virtual { v7, p0, v9 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    goto :L0
  :L5
    new-array v7, v9, [Ljava/lang/Class;
  .line 12
    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;
    aput-object v10, v7, v8
    invoke-virtual { v2, v6, v7 }, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v7
    new-array v9, v9, [Ljava/lang/Object;
  .line 13
    iget v5, v5, Landroidx/constraintlayout/widget/a;->d:F
    invoke-static { v5 }, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    move-result-object v5
    aput-object v5, v9, v8
    invoke-virtual { v7, p0, v9 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    goto/16 :L0
  :L6
    new-array v7, v9, [Ljava/lang/Class;
  .line 14
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    aput-object v10, v7, v8
    invoke-virtual { v2, v6, v7 }, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v7
    new-array v9, v9, [Ljava/lang/Object;
  .line 15
    iget v5, v5, Landroidx/constraintlayout/widget/a;->c:I
    invoke-static { v5 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    aput-object v5, v9, v8
    invoke-virtual { v7, p0, v9 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    goto/16 :L0
  :L7
    new-array v7, v9, [Ljava/lang/Class;
  .line 16
    const-class v10, Landroid/graphics/drawable/Drawable;
    aput-object v10, v7, v8
    invoke-virtual { v2, v6, v7 }, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v7
  .line 17
    new-instance v10, Landroid/graphics/drawable/ColorDrawable;
    invoke-direct { v10 }, Landroid/graphics/drawable/ColorDrawable;-><init>()V
  .line 18
    iget v5, v5, Landroidx/constraintlayout/widget/a;->g:I
    invoke-virtual { v10, v5 }, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V
    new-array v5, v9, [Ljava/lang/Object;
    aput-object v10, v5, v8
  .line 19
    invoke-virtual { v7, p0, v5 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    goto/16 :L0
  :L8
    new-array v7, v9, [Ljava/lang/Class;
  .line 20
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    aput-object v10, v7, v8
    invoke-virtual { v2, v6, v7 }, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v7
    new-array v9, v9, [Ljava/lang/Object;
  .line 21
    iget v5, v5, Landroidx/constraintlayout/widget/a;->g:I
    invoke-static { v5 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    aput-object v5, v9, v8
    invoke-virtual { v7, p0, v9 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
  :L9
    goto/16 :L0
  :L10
    move-exception v5
  .line 22
    new-instance v6, Ljava/lang/StringBuilder;
    invoke-direct { v6 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v6, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v6, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v6, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/Class;->getName()Ljava/lang/String;
    move-result-object v4
    invoke-virtual { v6, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v6 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  .line 23
    invoke-virtual { v5 }, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    goto/16 :L0
  :L11
    move-exception v5
  .line 24
    new-instance v6, Ljava/lang/StringBuilder;
    invoke-direct { v6 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v6, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v6, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v6, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/Class;->getName()Ljava/lang/String;
    move-result-object v4
    invoke-virtual { v6, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v6 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  .line 25
    invoke-virtual { v5 }, Ljava/lang/IllegalAccessException;->printStackTrace()V
    goto/16 :L0
  :L12
    move-exception v5
  .line 26
    invoke-virtual { v5 }, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;
  .line 27
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct { v5 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v5, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v5, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v5, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/Class;->getName()Ljava/lang/String;
    move-result-object v4
    invoke-virtual { v5, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v5 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  .line 28
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v2 }, Ljava/lang/Class;->getName()Ljava/lang/String;
    move-result-object v5
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v5, " must have a method "
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v4, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    goto/16 :L0
  :L13
    return-void
  :L14
  .packed-switch 1
    :L8
    :L7
    :L6
    :L5
    :L4
    :L3
    :L2
  .end packed-switch
.end method

.method public d(Ljava/lang/Object;)V
  .registers 4
  .line 1
    sget-object v0, Landroidx/constraintlayout/widget/a$a;->a:[I
    iget-object v1, p0, Landroidx/constraintlayout/widget/a;->b:Landroidx/constraintlayout/widget/a$b;
    invoke-virtual { v1 }, Ljava/lang/Enum;->ordinal()I
    move-result v1
    aget v0, v0, v1
    packed-switch v0, :L7
    goto :L6
  :L0
  .line 2
    check-cast p1, Ljava/lang/Float;
    invoke-virtual { p1 }, Ljava/lang/Float;->floatValue()F
    move-result p1
    iput p1, p0, Landroidx/constraintlayout/widget/a;->d:F
    goto :L6
  :L1
  .line 3
    check-cast p1, Ljava/lang/Boolean;
    invoke-virtual { p1 }, Ljava/lang/Boolean;->booleanValue()Z
    move-result p1
    iput-boolean p1, p0, Landroidx/constraintlayout/widget/a;->f:Z
    goto :L6
  :L2
  .line 4
    check-cast p1, Ljava/lang/String;
    iput-object p1, p0, Landroidx/constraintlayout/widget/a;->e:Ljava/lang/String;
    goto :L6
  :L3
  .line 5
    check-cast p1, Ljava/lang/Float;
    invoke-virtual { p1 }, Ljava/lang/Float;->floatValue()F
    move-result p1
    iput p1, p0, Landroidx/constraintlayout/widget/a;->d:F
    goto :L6
  :L4
  .line 6
    check-cast p1, Ljava/lang/Integer;
    invoke-virtual { p1 }, Ljava/lang/Integer;->intValue()I
    move-result p1
    iput p1, p0, Landroidx/constraintlayout/widget/a;->c:I
    goto :L6
  :L5
  .line 7
    check-cast p1, Ljava/lang/Integer;
    invoke-virtual { p1 }, Ljava/lang/Integer;->intValue()I
    move-result p1
    iput p1, p0, Landroidx/constraintlayout/widget/a;->g:I
  :L6
    return-void
  :L7
  .packed-switch 1
    :L5
    :L5
    :L4
    :L3
    :L2
    :L1
    :L0
  .end packed-switch
.end method
