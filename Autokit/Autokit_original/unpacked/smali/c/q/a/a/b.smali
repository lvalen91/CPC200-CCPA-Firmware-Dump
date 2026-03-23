.class public Lc/q/a/a/b;
.super Lc/q/a/a/g;
.implements Landroid/graphics/drawable/Animatable;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lc/q/a/a/b$b;,
    Lc/q/a/a/b$c;
  }
.end annotation

.field private c:Lc/q/a/a/b$b;

.field private d:Landroid/content/Context;

.field private e:Landroid/animation/ArgbEvaluator;

.field final f:Landroid/graphics/drawable/Drawable$Callback;

.method constructor <init>()V
  .registers 2
    const/4 v0, 0
  .line 1
    invoke-direct { p0, v0, v0, v0 }, Lc/q/a/a/b;-><init>(Landroid/content/Context;Lc/q/a/a/b$b;Landroid/content/res/Resources;)V
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
  .registers 3
    const/4 v0, 0
  .line 2
    invoke-direct { p0, p1, v0, v0 }, Lc/q/a/a/b;-><init>(Landroid/content/Context;Lc/q/a/a/b$b;Landroid/content/res/Resources;)V
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lc/q/a/a/b$b;Landroid/content/res/Resources;)V
  .registers 6
  .line 3
    invoke-direct { p0 }, Lc/q/a/a/g;-><init>()V
    const/4 v0, 0
  .line 4
    iput-object v0, p0, Lc/q/a/a/b;->e:Landroid/animation/ArgbEvaluator;
  .line 5
    new-instance v0, Lc/q/a/a/b$a;
    invoke-direct { v0, p0 }, Lc/q/a/a/b$a;-><init>(Lc/q/a/a/b;)V
    iput-object v0, p0, Lc/q/a/a/b;->f:Landroid/graphics/drawable/Drawable$Callback;
  .line 6
    iput-object p1, p0, Lc/q/a/a/b;->d:Landroid/content/Context;
    if-eqz p2, :L0
  .line 7
    iput-object p2, p0, Lc/q/a/a/b;->c:Lc/q/a/a/b$b;
    goto :L1
  :L0
  .line 8
    new-instance v0, Lc/q/a/a/b$b;
    iget-object v1, p0, Lc/q/a/a/b;->f:Landroid/graphics/drawable/Drawable$Callback;
    invoke-direct { v0, p1, p2, v1, p3 }, Lc/q/a/a/b$b;-><init>(Landroid/content/Context;Lc/q/a/a/b$b;Landroid/graphics/drawable/Drawable$Callback;Landroid/content/res/Resources;)V
    iput-object v0, p0, Lc/q/a/a/b;->c:Lc/q/a/a/b$b;
  :L1
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Lc/q/a/a/b;
  .registers 6
  .line 1
    new-instance v0, Lc/q/a/a/b;
    invoke-direct { v0, p0 }, Lc/q/a/a/b;-><init>(Landroid/content/Context;)V
  .line 2
    invoke-virtual { v0, p1, p2, p3, p4 }, Lc/q/a/a/b;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    return-object v0
.end method

.method private b(Ljava/lang/String;Landroid/animation/Animator;)V
  .registers 5
  .line 1
    iget-object v0, p0, Lc/q/a/a/b;->c:Lc/q/a/a/b$b;
    iget-object v0, v0, Lc/q/a/a/b$b;->b:Lc/q/a/a/h;
    invoke-virtual { v0, p1 }, Lc/q/a/a/h;->d(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
  .line 2
    invoke-virtual { p2, v0 }, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V
  .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-ge v0, v1, :L0
  .line 4
    invoke-direct { p0, p2 }, Lc/q/a/a/b;->c(Landroid/animation/Animator;)V
  :L0
  .line 5
    iget-object v0, p0, Lc/q/a/a/b;->c:Lc/q/a/a/b$b;
    iget-object v1, v0, Lc/q/a/a/b$b;->d:Ljava/util/ArrayList;
    if-nez v1, :L1
  .line 6
    new-instance v1, Ljava/util/ArrayList;
    invoke-direct { v1 }, Ljava/util/ArrayList;-><init>()V
    iput-object v1, v0, Lc/q/a/a/b$b;->d:Ljava/util/ArrayList;
  .line 7
    iget-object v0, p0, Lc/q/a/a/b;->c:Lc/q/a/a/b$b;
    new-instance v1, Lc/d/a;
    invoke-direct { v1 }, Lc/d/a;-><init>()V
    iput-object v1, v0, Lc/q/a/a/b$b;->e:Lc/d/a;
  :L1
  .line 8
    iget-object v0, p0, Lc/q/a/a/b;->c:Lc/q/a/a/b$b;
    iget-object v0, v0, Lc/q/a/a/b$b;->d:Ljava/util/ArrayList;
    invoke-virtual { v0, p2 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  .line 9
    iget-object v0, p0, Lc/q/a/a/b;->c:Lc/q/a/a/b$b;
    iget-object v0, v0, Lc/q/a/a/b$b;->e:Lc/d/a;
    invoke-virtual { v0, p2, p1 }, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    return-void
.end method

.method private c(Landroid/animation/Animator;)V
  .registers 5
  .line 1
    instance-of v0, p1, Landroid/animation/AnimatorSet;
    if-eqz v0, :L1
  .line 2
    move-object v0, p1
    check-cast v0, Landroid/animation/AnimatorSet;
    invoke-virtual { v0 }, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;
    move-result-object v0
    if-eqz v0, :L1
    const/4 v1, 0
  :L0
  .line 3
    invoke-interface { v0 }, Ljava/util/List;->size()I
    move-result v2
    if-ge v1, v2, :L1
  .line 4
    invoke-interface { v0, v1 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroid/animation/Animator;
    invoke-direct { p0, v2 }, Lc/q/a/a/b;->c(Landroid/animation/Animator;)V
    add-int/lit8 v1, v1, 1
    goto :L0
  :L1
  .line 5
    instance-of v0, p1, Landroid/animation/ObjectAnimator;
    if-eqz v0, :L4
  .line 6
    check-cast p1, Landroid/animation/ObjectAnimator;
  .line 7
    invoke-virtual { p1 }, Landroid/animation/ObjectAnimator;->getPropertyName()Ljava/lang/String;
    move-result-object v0
    const-string v1, "fillColor"
  .line 8
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-nez v1, :L2
    const-string v1, "strokeColor"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L4
  :L2
  .line 9
    iget-object v0, p0, Lc/q/a/a/b;->e:Landroid/animation/ArgbEvaluator;
    if-nez v0, :L3
  .line 10
    new-instance v0, Landroid/animation/ArgbEvaluator;
    invoke-direct { v0 }, Landroid/animation/ArgbEvaluator;-><init>()V
    iput-object v0, p0, Lc/q/a/a/b;->e:Landroid/animation/ArgbEvaluator;
  :L3
  .line 11
    iget-object v0, p0, Lc/q/a/a/b;->e:Landroid/animation/ArgbEvaluator;
    invoke-virtual { p1, v0 }, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V
  :L4
    return-void
.end method

.method public applyTheme(Landroid/content/res/Resources$Theme;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lc/q/a/a/g;->b:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L0
  .line 2
    invoke-static { v0, p1 }, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V
  :L0
    return-void
.end method

.method public canApplyTheme()Z
  .registers 2
  .line 1
    iget-object v0, p0, Lc/q/a/a/g;->b:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L0
  .line 2
    invoke-static { v0 }, Landroidx/core/graphics/drawable/a;->b(Landroid/graphics/drawable/Drawable;)Z
    move-result v0
    return v0
  :L0
    const/4 v0, 0
    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lc/q/a/a/g;->b:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    return-void
  :L0
  .line 3
    iget-object v0, p0, Lc/q/a/a/b;->c:Lc/q/a/a/b$b;
    iget-object v0, v0, Lc/q/a/a/b$b;->b:Lc/q/a/a/h;
    invoke-virtual { v0, p1 }, Lc/q/a/a/h;->draw(Landroid/graphics/Canvas;)V
  .line 4
    iget-object p1, p0, Lc/q/a/a/b;->c:Lc/q/a/a/b$b;
    iget-object p1, p1, Lc/q/a/a/b$b;->c:Landroid/animation/AnimatorSet;
    invoke-virtual { p1 }, Landroid/animation/AnimatorSet;->isStarted()Z
    move-result p1
    if-eqz p1, :L1
  .line 5
    invoke-virtual { p0 }, Landroid/graphics/drawable/Drawable;->invalidateSelf()V
  :L1
    return-void
.end method

.method public getAlpha()I
  .registers 2
  .line 1
    iget-object v0, p0, Lc/q/a/a/g;->b:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L0
  .line 2
    invoke-static { v0 }, Landroidx/core/graphics/drawable/a;->d(Landroid/graphics/drawable/Drawable;)I
    move-result v0
    return v0
  :L0
  .line 3
    iget-object v0, p0, Lc/q/a/a/b;->c:Lc/q/a/a/b$b;
    iget-object v0, v0, Lc/q/a/a/b$b;->b:Lc/q/a/a/h;
    invoke-virtual { v0 }, Lc/q/a/a/h;->getAlpha()I
    move-result v0
    return v0
.end method

.method public getChangingConfigurations()I
  .registers 3
  .line 1
    iget-object v0, p0, Lc/q/a/a/g;->b:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I
    move-result v0
    return v0
  :L0
  .line 3
    invoke-super { p0 }, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I
    move-result v0
    iget-object v1, p0, Lc/q/a/a/b;->c:Lc/q/a/a/b$b;
    iget v1, v1, Lc/q/a/a/b$b;->a:I
    or-int/2addr v0, v1
    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
  .registers 2
  .line 1
    iget-object v0, p0, Lc/q/a/a/g;->b:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L0
  .line 2
    invoke-static { v0 }, Landroidx/core/graphics/drawable/a;->e(Landroid/graphics/drawable/Drawable;)Landroid/graphics/ColorFilter;
    move-result-object v0
    return-object v0
  :L0
  .line 3
    iget-object v0, p0, Lc/q/a/a/b;->c:Lc/q/a/a/b$b;
    iget-object v0, v0, Lc/q/a/a/b$b;->b:Lc/q/a/a/h;
    invoke-virtual { v0 }, Lc/q/a/a/h;->getColorFilter()Landroid/graphics/ColorFilter;
    move-result-object v0
    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
  .registers 3
  .line 1
    iget-object v0, p0, Lc/q/a/a/g;->b:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 24
    if-lt v0, v1, :L0
  .line 2
    new-instance v0, Lc/q/a/a/b$c;
    iget-object v1, p0, Lc/q/a/a/g;->b:Landroid/graphics/drawable/Drawable;
    invoke-virtual { v1 }, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    move-result-object v1
    invoke-direct { v0, v1 }, Lc/q/a/a/b$c;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V
    return-object v0
  :L0
    const/4 v0, 0
    return-object v0
.end method

.method public getIntrinsicHeight()I
  .registers 2
  .line 1
    iget-object v0, p0, Lc/q/a/a/g;->b:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    move-result v0
    return v0
  :L0
  .line 3
    iget-object v0, p0, Lc/q/a/a/b;->c:Lc/q/a/a/b$b;
    iget-object v0, v0, Lc/q/a/a/b$b;->b:Lc/q/a/a/h;
    invoke-virtual { v0 }, Lc/q/a/a/h;->getIntrinsicHeight()I
    move-result v0
    return v0
.end method

.method public getIntrinsicWidth()I
  .registers 2
  .line 1
    iget-object v0, p0, Lc/q/a/a/g;->b:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
    move-result v0
    return v0
  :L0
  .line 3
    iget-object v0, p0, Lc/q/a/a/b;->c:Lc/q/a/a/b$b;
    iget-object v0, v0, Lc/q/a/a/b$b;->b:Lc/q/a/a/h;
    invoke-virtual { v0 }, Lc/q/a/a/h;->getIntrinsicWidth()I
    move-result v0
    return v0
.end method

.method public getOpacity()I
  .registers 2
  .line 1
    iget-object v0, p0, Lc/q/a/a/g;->b:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable;->getOpacity()I
    move-result v0
    return v0
  :L0
  .line 3
    iget-object v0, p0, Lc/q/a/a/b;->c:Lc/q/a/a/b$b;
    iget-object v0, v0, Lc/q/a/a/b$b;->b:Lc/q/a/a/h;
    invoke-virtual { v0 }, Lc/q/a/a/h;->getOpacity()I
    move-result v0
    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
  .registers 5
    const/4 v0, 0
  .line 31
    invoke-virtual { p0, p1, p2, p3, v0 }, Lc/q/a/a/b;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
  .registers 11
  .line 1
    iget-object v0, p0, Lc/q/a/a/g;->b:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L0
  .line 2
    invoke-static { v0, p1, p2, p3, p4 }, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    return-void
  :L0
  .line 3
    invoke-interface { p2 }, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    move-result v0
  .line 4
    invoke-interface { p2 }, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I
    move-result v1
    const/4 v2, 1
    add-int/2addr v1, v2
  :L1
    if-eq v0, v2, :L9
  .line 5
    invoke-interface { p2 }, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I
    move-result v3
    if-ge v3, v1, :L2
    const/4 v3, 3
    if-eq v0, v3, :L9
  :L2
    const/4 v3, 2
    if-ne v0, v3, :L8
  .line 6
    invoke-interface { p2 }, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
    move-result-object v0
    const-string v3, "animated-vector"
  .line 7
    invoke-virtual { v3, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    const/4 v4, 0
    if-eqz v3, :L5
  .line 8
    sget-object v0, Lc/q/a/a/a;->e:[I
  .line 9
    invoke-static { p1, p4, p3, v0 }, Landroidx/core/content/c/g;->k(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    move-result-object v0
  .line 10
    invoke-virtual { v0, v4, v4 }, Landroid/content/res/TypedArray;->getResourceId(II)I
    move-result v3
    if-eqz v3, :L4
  .line 11
    invoke-static { p1, v3, p4 }, Lc/q/a/a/h;->b(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Lc/q/a/a/h;
    move-result-object v3
  .line 12
    invoke-virtual { v3, v4 }, Lc/q/a/a/h;->h(Z)V
  .line 13
    iget-object v4, p0, Lc/q/a/a/b;->f:Landroid/graphics/drawable/Drawable$Callback;
    invoke-virtual { v3, v4 }, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
  .line 14
    iget-object v4, p0, Lc/q/a/a/b;->c:Lc/q/a/a/b$b;
    iget-object v4, v4, Lc/q/a/a/b$b;->b:Lc/q/a/a/h;
    if-eqz v4, :L3
    const/4 v5, 0
  .line 15
    invoke-virtual { v4, v5 }, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
  :L3
  .line 16
    iget-object v4, p0, Lc/q/a/a/b;->c:Lc/q/a/a/b$b;
    iput-object v3, v4, Lc/q/a/a/b$b;->b:Lc/q/a/a/h;
  :L4
  .line 17
    invoke-virtual { v0 }, Landroid/content/res/TypedArray;->recycle()V
    goto :L8
  :L5
    const-string v3, "target"
  .line 18
    invoke-virtual { v3, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L8
  .line 19
    sget-object v0, Lc/q/a/a/a;->f:[I
  .line 20
    invoke-virtual { p1, p3, v0 }, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    move-result-object v0
  .line 21
    invoke-virtual { v0, v4 }, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
    move-result-object v3
  .line 22
    invoke-virtual { v0, v2, v4 }, Landroid/content/res/TypedArray;->getResourceId(II)I
    move-result v4
    if-eqz v4, :L7
  .line 23
    iget-object v5, p0, Lc/q/a/a/b;->d:Landroid/content/Context;
    if-eqz v5, :L6
  .line 24
    invoke-static { v5, v4 }, Lc/q/a/a/d;->i(Landroid/content/Context;I)Landroid/animation/Animator;
    move-result-object v4
  .line 25
    invoke-direct { p0, v3, v4 }, Lc/q/a/a/b;->b(Ljava/lang/String;Landroid/animation/Animator;)V
    goto :L7
  :L6
  .line 26
    invoke-virtual { v0 }, Landroid/content/res/TypedArray;->recycle()V
  .line 27
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string p2, "Context can't be null when inflating animators"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
  :L7
  .line 28
    invoke-virtual { v0 }, Landroid/content/res/TypedArray;->recycle()V
  :L8
  .line 29
    invoke-interface { p2 }, Lorg/xmlpull/v1/XmlPullParser;->next()I
    move-result v0
    goto :L1
  :L9
  .line 30
    iget-object p1, p0, Lc/q/a/a/b;->c:Lc/q/a/a/b$b;
    invoke-virtual { p1 }, Lc/q/a/a/b$b;->a()V
    return-void
.end method

.method public isAutoMirrored()Z
  .registers 2
  .line 1
    iget-object v0, p0, Lc/q/a/a/g;->b:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L0
  .line 2
    invoke-static { v0 }, Landroidx/core/graphics/drawable/a;->h(Landroid/graphics/drawable/Drawable;)Z
    move-result v0
    return v0
  :L0
  .line 3
    iget-object v0, p0, Lc/q/a/a/b;->c:Lc/q/a/a/b$b;
    iget-object v0, v0, Lc/q/a/a/b$b;->b:Lc/q/a/a/h;
    invoke-virtual { v0 }, Lc/q/a/a/h;->isAutoMirrored()Z
    move-result v0
    return v0
.end method

.method public isRunning()Z
  .registers 2
  .line 1
    iget-object v0, p0, Lc/q/a/a/g;->b:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L0
  .line 2
    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;
    invoke-virtual { v0 }, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z
    move-result v0
    return v0
  :L0
  .line 3
    iget-object v0, p0, Lc/q/a/a/b;->c:Lc/q/a/a/b$b;
    iget-object v0, v0, Lc/q/a/a/b$b;->c:Landroid/animation/AnimatorSet;
    invoke-virtual { v0 }, Landroid/animation/AnimatorSet;->isRunning()Z
    move-result v0
    return v0
.end method

.method public isStateful()Z
  .registers 2
  .line 1
    iget-object v0, p0, Lc/q/a/a/g;->b:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable;->isStateful()Z
    move-result v0
    return v0
  :L0
  .line 3
    iget-object v0, p0, Lc/q/a/a/b;->c:Lc/q/a/a/b$b;
    iget-object v0, v0, Lc/q/a/a/b$b;->b:Lc/q/a/a/h;
    invoke-virtual { v0 }, Lc/q/a/a/h;->isStateful()Z
    move-result v0
    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
  .registers 2
  .line 1
    iget-object v0, p0, Lc/q/a/a/g;->b:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
  :L0
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lc/q/a/a/g;->b:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V
    return-void
  :L0
  .line 3
    iget-object v0, p0, Lc/q/a/a/b;->c:Lc/q/a/a/b$b;
    iget-object v0, v0, Lc/q/a/a/b$b;->b:Lc/q/a/a/h;
    invoke-virtual { v0, p1 }, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V
    return-void
.end method

.method protected onLevelChange(I)Z
  .registers 3
  .line 1
    iget-object v0, p0, Lc/q/a/a/g;->b:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
    move-result p1
    return p1
  :L0
  .line 3
    iget-object v0, p0, Lc/q/a/a/b;->c:Lc/q/a/a/b$b;
    iget-object v0, v0, Lc/q/a/a/b$b;->b:Lc/q/a/a/h;
    invoke-virtual { v0, p1 }, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
    move-result p1
    return p1
.end method

.method protected onStateChange([I)Z
  .registers 3
  .line 1
    iget-object v0, p0, Lc/q/a/a/g;->b:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Landroid/graphics/drawable/Drawable;->setState([I)Z
    move-result p1
    return p1
  :L0
  .line 3
    iget-object v0, p0, Lc/q/a/a/b;->c:Lc/q/a/a/b$b;
    iget-object v0, v0, Lc/q/a/a/b$b;->b:Lc/q/a/a/h;
    invoke-virtual { v0, p1 }, Lc/q/a/a/h;->setState([I)Z
    move-result p1
    return p1
.end method

.method public setAlpha(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Lc/q/a/a/g;->b:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
    return-void
  :L0
  .line 3
    iget-object v0, p0, Lc/q/a/a/b;->c:Lc/q/a/a/b$b;
    iget-object v0, v0, Lc/q/a/a/b$b;->b:Lc/q/a/a/h;
    invoke-virtual { v0, p1 }, Lc/q/a/a/h;->setAlpha(I)V
    return-void
.end method

.method public setAutoMirrored(Z)V
  .registers 3
  .line 1
    iget-object v0, p0, Lc/q/a/a/g;->b:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L0
  .line 2
    invoke-static { v0, p1 }, Landroidx/core/graphics/drawable/a;->j(Landroid/graphics/drawable/Drawable;Z)V
    return-void
  :L0
  .line 3
    iget-object v0, p0, Lc/q/a/a/b;->c:Lc/q/a/a/b$b;
    iget-object v0, v0, Lc/q/a/a/b$b;->b:Lc/q/a/a/h;
    invoke-virtual { v0, p1 }, Lc/q/a/a/h;->setAutoMirrored(Z)V
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
  .registers 3
  .line 2
    iget-object v0, p0, Lc/q/a/a/g;->b:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L0
  .line 3
    invoke-virtual { v0, p1 }, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V
    return-void
  :L0
  .line 4
    iget-object v0, p0, Lc/q/a/a/b;->c:Lc/q/a/a/b$b;
    iget-object v0, v0, Lc/q/a/a/b$b;->b:Lc/q/a/a/h;
    invoke-virtual { v0, p1 }, Lc/q/a/a/h;->setColorFilter(Landroid/graphics/ColorFilter;)V
    return-void
.end method

.method public setTint(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Lc/q/a/a/g;->b:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L0
  .line 2
    invoke-static { v0, p1 }, Landroidx/core/graphics/drawable/a;->n(Landroid/graphics/drawable/Drawable;I)V
    return-void
  :L0
  .line 3
    iget-object v0, p0, Lc/q/a/a/b;->c:Lc/q/a/a/b$b;
    iget-object v0, v0, Lc/q/a/a/b$b;->b:Lc/q/a/a/h;
    invoke-virtual { v0, p1 }, Lc/q/a/a/h;->setTint(I)V
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lc/q/a/a/g;->b:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L0
  .line 2
    invoke-static { v0, p1 }, Landroidx/core/graphics/drawable/a;->o(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    return-void
  :L0
  .line 3
    iget-object v0, p0, Lc/q/a/a/b;->c:Lc/q/a/a/b$b;
    iget-object v0, v0, Lc/q/a/a/b$b;->b:Lc/q/a/a/h;
    invoke-virtual { v0, p1 }, Lc/q/a/a/h;->setTintList(Landroid/content/res/ColorStateList;)V
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lc/q/a/a/g;->b:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L0
  .line 2
    invoke-static { v0, p1 }, Landroidx/core/graphics/drawable/a;->p(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
    return-void
  :L0
  .line 3
    iget-object v0, p0, Lc/q/a/a/b;->c:Lc/q/a/a/b$b;
    iget-object v0, v0, Lc/q/a/a/b$b;->b:Lc/q/a/a/h;
    invoke-virtual { v0, p1 }, Lc/q/a/a/h;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    return-void
.end method

.method public setVisible(ZZ)Z
  .registers 4
  .line 1
    iget-object v0, p0, Lc/q/a/a/g;->b:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1, p2 }, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z
    move-result p1
    return p1
  :L0
  .line 3
    iget-object v0, p0, Lc/q/a/a/b;->c:Lc/q/a/a/b$b;
    iget-object v0, v0, Lc/q/a/a/b$b;->b:Lc/q/a/a/h;
    invoke-virtual { v0, p1, p2 }, Lc/q/a/a/h;->setVisible(ZZ)Z
  .line 4
    invoke-super { p0, p1, p2 }, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z
    move-result p1
    return p1
.end method

.method public start()V
  .registers 2
  .line 1
    iget-object v0, p0, Lc/q/a/a/g;->b:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L0
  .line 2
    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;
    invoke-virtual { v0 }, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V
    return-void
  :L0
  .line 3
    iget-object v0, p0, Lc/q/a/a/b;->c:Lc/q/a/a/b$b;
    iget-object v0, v0, Lc/q/a/a/b$b;->c:Landroid/animation/AnimatorSet;
    invoke-virtual { v0 }, Landroid/animation/AnimatorSet;->isStarted()Z
    move-result v0
    if-eqz v0, :L1
    return-void
  :L1
  .line 4
    iget-object v0, p0, Lc/q/a/a/b;->c:Lc/q/a/a/b$b;
    iget-object v0, v0, Lc/q/a/a/b$b;->c:Landroid/animation/AnimatorSet;
    invoke-virtual { v0 }, Landroid/animation/AnimatorSet;->start()V
  .line 5
    invoke-virtual { p0 }, Landroid/graphics/drawable/Drawable;->invalidateSelf()V
    return-void
.end method

.method public stop()V
  .registers 2
  .line 1
    iget-object v0, p0, Lc/q/a/a/g;->b:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L0
  .line 2
    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;
    invoke-virtual { v0 }, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V
    return-void
  :L0
  .line 3
    iget-object v0, p0, Lc/q/a/a/b;->c:Lc/q/a/a/b$b;
    iget-object v0, v0, Lc/q/a/a/b$b;->c:Landroid/animation/AnimatorSet;
    invoke-virtual { v0 }, Landroid/animation/AnimatorSet;->end()V
    return-void
.end method
