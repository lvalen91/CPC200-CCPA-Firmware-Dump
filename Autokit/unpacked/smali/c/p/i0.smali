.class Lc/p/i0;
.super Ljava/lang/Object;
.source "SourceFile"

.field private static a:Ljava/lang/reflect/Method;

.field private static b:Z

.field private static c:Ljava/lang/reflect/Field;

.field private static d:Z

.method constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method private b()V
  .annotation build Landroid/annotation/SuppressLint;
    value = {
      "PrivateApi"
    }
  .end annotation
  .catch Ljava/lang/NoSuchMethodException; { :L0 .. :L1 } :L1
  .registers 7
  .line 1
    sget-boolean v0, Lc/p/i0;->b:Z
    if-nez v0, :L2
    const/4 v0, 1
  :L0
  .line 2
    const-class v1, Landroid/view/View;
    const-string v2, "setFrame"
    const/4 v3, 4
    new-array v3, v3, [Ljava/lang/Class;
    const/4 v4, 0
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    aput-object v5, v3, v4
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    aput-object v4, v3, v0
    const/4 v4, 2
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    aput-object v5, v3, v4
    const/4 v4, 3
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    aput-object v5, v3, v4
    invoke-virtual { v1, v2, v3 }, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v1
    sput-object v1, Lc/p/i0;->a:Ljava/lang/reflect/Method;
  .line 3
    invoke-virtual { v1, v0 }, Ljava/lang/reflect/Method;->setAccessible(Z)V
  :L1
  .line 4
    sput-boolean v0, Lc/p/i0;->b:Z
  :L2
    return-void
.end method

.method public a(Landroid/view/View;)V
  .registers 4
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getVisibility()I
    move-result v0
    if-nez v0, :L0
  .line 2
    sget v0, Lc/p/j;->save_non_transition_alpha:I
    const/4 v1, 0
    invoke-virtual { p1, v0, v1 }, Landroid/view/View;->setTag(ILjava/lang/Object;)V
  :L0
    return-void
.end method

.method public c(Landroid/view/View;)F
  .registers 3
  .line 1
    sget v0, Lc/p/j;->save_non_transition_alpha:I
    invoke-virtual { p1, v0 }, Landroid/view/View;->getTag(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/Float;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { p1 }, Landroid/view/View;->getAlpha()F
    move-result p1
    invoke-virtual { v0 }, Ljava/lang/Float;->floatValue()F
    move-result v0
    div-float/2addr p1, v0
    return p1
  :L0
  .line 3
    invoke-virtual { p1 }, Landroid/view/View;->getAlpha()F
    move-result p1
    return p1
.end method

.method public d(Landroid/view/View;)V
  .registers 4
  .line 1
    sget v0, Lc/p/j;->save_non_transition_alpha:I
    invoke-virtual { p1, v0 }, Landroid/view/View;->getTag(I)Ljava/lang/Object;
    move-result-object v0
    if-nez v0, :L0
  .line 2
    sget v0, Lc/p/j;->save_non_transition_alpha:I
    invoke-virtual { p1 }, Landroid/view/View;->getAlpha()F
    move-result v1
    invoke-static { v1 }, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    move-result-object v1
    invoke-virtual { p1, v0, v1 }, Landroid/view/View;->setTag(ILjava/lang/Object;)V
  :L0
    return-void
.end method

.method public e(Landroid/view/View;IIII)V
  .catch Ljava/lang/IllegalAccessException; { :L0 .. :L1 } :L3
  .catch Ljava/lang/reflect/InvocationTargetException; { :L0 .. :L1 } :L2
  .registers 9
  .line 1
    invoke-direct { p0 }, Lc/p/i0;->b()V
  .line 2
    sget-object v0, Lc/p/i0;->a:Ljava/lang/reflect/Method;
    if-eqz v0, :L3
    const/4 v1, 4
  :L0
    new-array v1, v1, [Ljava/lang/Object;
    const/4 v2, 0
  .line 3
    invoke-static { p2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p2
    aput-object p2, v1, v2
    const/4 p2, 1
    invoke-static { p3 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p3
    aput-object p3, v1, p2
    const/4 p2, 2
    invoke-static { p4 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p3
    aput-object p3, v1, p2
    const/4 p2, 3
    invoke-static { p5 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p3
    aput-object p3, v1, p2
    invoke-virtual { v0, p1, v1 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
  :L1
    goto :L3
  :L2
    move-exception p1
  .line 4
    new-instance p2, Ljava/lang/RuntimeException;
    invoke-virtual { p1 }, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;
    move-result-object p1
    invoke-direct { p2, p1 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
    throw p2
  :L3
    return-void
.end method

.method public f(Landroid/view/View;F)V
  .registers 4
  .line 1
    sget v0, Lc/p/j;->save_non_transition_alpha:I
    invoke-virtual { p1, v0 }, Landroid/view/View;->getTag(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/Float;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Ljava/lang/Float;->floatValue()F
    move-result v0
    mul-float v0, v0, p2
    invoke-virtual { p1, v0 }, Landroid/view/View;->setAlpha(F)V
    goto :L1
  :L0
  .line 3
    invoke-virtual { p1, p2 }, Landroid/view/View;->setAlpha(F)V
  :L1
    return-void
.end method

.method public g(Landroid/view/View;I)V
  .catch Ljava/lang/NoSuchFieldException; { :L0 .. :L1 } :L1
  .catch Ljava/lang/IllegalAccessException; { :L3 .. :L4 } :L4
  .registers 6
  .line 1
    sget-boolean v0, Lc/p/i0;->d:Z
    if-nez v0, :L2
    const/4 v0, 1
  :L0
  .line 2
    const-class v1, Landroid/view/View;
    const-string v2, "mViewFlags"
    invoke-virtual { v1, v2 }, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    move-result-object v1
    sput-object v1, Lc/p/i0;->c:Ljava/lang/reflect/Field;
  .line 3
    invoke-virtual { v1, v0 }, Ljava/lang/reflect/Field;->setAccessible(Z)V
  :L1
  .line 4
    sput-boolean v0, Lc/p/i0;->d:Z
  :L2
  .line 5
    sget-object v0, Lc/p/i0;->c:Ljava/lang/reflect/Field;
    if-eqz v0, :L4
  :L3
  .line 6
    invoke-virtual { v0, p1 }, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    move-result v0
  .line 7
    sget-object v1, Lc/p/i0;->c:Ljava/lang/reflect/Field;
    and-int/lit8 v0, v0, -13
    or-int/2addr p2, v0
    invoke-virtual { v1, p1, p2 }, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
  :L4
    return-void
.end method

.method public h(Landroid/view/View;Landroid/graphics/Matrix;)V
  .registers 5
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v0
  .line 2
    instance-of v1, v0, Landroid/view/View;
    if-eqz v1, :L0
  .line 3
    check-cast v0, Landroid/view/View;
  .line 4
    invoke-virtual { p0, v0, p2 }, Lc/p/i0;->h(Landroid/view/View;Landroid/graphics/Matrix;)V
  .line 5
    invoke-virtual { v0 }, Landroid/view/View;->getScrollX()I
    move-result v1
    neg-int v1, v1
    int-to-float v1, v1
    invoke-virtual { v0 }, Landroid/view/View;->getScrollY()I
    move-result v0
    neg-int v0, v0
    int-to-float v0, v0
    invoke-virtual { p2, v1, v0 }, Landroid/graphics/Matrix;->preTranslate(FF)Z
  :L0
  .line 6
    invoke-virtual { p1 }, Landroid/view/View;->getLeft()I
    move-result v0
    int-to-float v0, v0
    invoke-virtual { p1 }, Landroid/view/View;->getTop()I
    move-result v1
    int-to-float v1, v1
    invoke-virtual { p2, v0, v1 }, Landroid/graphics/Matrix;->preTranslate(FF)Z
  .line 7
    invoke-virtual { p1 }, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;
    move-result-object p1
  .line 8
    invoke-virtual { p1 }, Landroid/graphics/Matrix;->isIdentity()Z
    move-result v0
    if-nez v0, :L1
  .line 9
    invoke-virtual { p2, p1 }, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z
  :L1
    return-void
.end method

.method public i(Landroid/view/View;Landroid/graphics/Matrix;)V
  .registers 5
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v0
  .line 2
    instance-of v1, v0, Landroid/view/View;
    if-eqz v1, :L0
  .line 3
    check-cast v0, Landroid/view/View;
  .line 4
    invoke-virtual { p0, v0, p2 }, Lc/p/i0;->i(Landroid/view/View;Landroid/graphics/Matrix;)V
  .line 5
    invoke-virtual { v0 }, Landroid/view/View;->getScrollX()I
    move-result v1
    int-to-float v1, v1
    invoke-virtual { v0 }, Landroid/view/View;->getScrollY()I
    move-result v0
    int-to-float v0, v0
    invoke-virtual { p2, v1, v0 }, Landroid/graphics/Matrix;->postTranslate(FF)Z
  :L0
  .line 6
    invoke-virtual { p1 }, Landroid/view/View;->getLeft()I
    move-result v0
    neg-int v0, v0
    int-to-float v0, v0
    invoke-virtual { p1 }, Landroid/view/View;->getTop()I
    move-result v1
    neg-int v1, v1
    int-to-float v1, v1
    invoke-virtual { p2, v0, v1 }, Landroid/graphics/Matrix;->postTranslate(FF)Z
  .line 7
    invoke-virtual { p1 }, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;
    move-result-object p1
  .line 8
    invoke-virtual { p1 }, Landroid/graphics/Matrix;->isIdentity()Z
    move-result v0
    if-nez v0, :L1
  .line 9
    new-instance v0, Landroid/graphics/Matrix;
    invoke-direct { v0 }, Landroid/graphics/Matrix;-><init>()V
  .line 10
    invoke-virtual { p1, v0 }, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z
    move-result p1
    if-eqz p1, :L1
  .line 11
    invoke-virtual { p2, v0 }, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z
  :L1
    return-void
.end method
