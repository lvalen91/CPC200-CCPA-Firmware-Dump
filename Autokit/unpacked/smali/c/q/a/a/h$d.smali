.class Lc/q/a/a/h$d;
.super Lc/q/a/a/h$e;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lc/q/a/a/h;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "d"
.end annotation

.field final a:Landroid/graphics/Matrix;

.field final b:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Lc/q/a/a/h$e;",
      ">;"
    }
  .end annotation
.end field

.field c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field final j:Landroid/graphics/Matrix;

.field k:I

.field private l:[I

.field private m:Ljava/lang/String;

.method public constructor <init>()V
  .registers 4
    const/4 v0, 0
  .line 39
    invoke-direct { p0, v0 }, Lc/q/a/a/h$e;-><init>(Lc/q/a/a/h$a;)V
  .line 40
    new-instance v1, Landroid/graphics/Matrix;
    invoke-direct { v1 }, Landroid/graphics/Matrix;-><init>()V
    iput-object v1, p0, Lc/q/a/a/h$d;->a:Landroid/graphics/Matrix;
  .line 41
    new-instance v1, Ljava/util/ArrayList;
    invoke-direct { v1 }, Ljava/util/ArrayList;-><init>()V
    iput-object v1, p0, Lc/q/a/a/h$d;->b:Ljava/util/ArrayList;
    const/4 v1, 0
  .line 42
    iput v1, p0, Lc/q/a/a/h$d;->c:F
  .line 43
    iput v1, p0, Lc/q/a/a/h$d;->d:F
  .line 44
    iput v1, p0, Lc/q/a/a/h$d;->e:F
    const/high16 v2, 16256
  .line 45
    iput v2, p0, Lc/q/a/a/h$d;->f:F
  .line 46
    iput v2, p0, Lc/q/a/a/h$d;->g:F
  .line 47
    iput v1, p0, Lc/q/a/a/h$d;->h:F
  .line 48
    iput v1, p0, Lc/q/a/a/h$d;->i:F
  .line 49
    new-instance v1, Landroid/graphics/Matrix;
    invoke-direct { v1 }, Landroid/graphics/Matrix;-><init>()V
    iput-object v1, p0, Lc/q/a/a/h$d;->j:Landroid/graphics/Matrix;
  .line 50
    iput-object v0, p0, Lc/q/a/a/h$d;->m:Ljava/lang/String;
    return-void
.end method

.method public constructor <init>(Lc/q/a/a/h$d;Lc/d/a;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Lc/q/a/a/h$d;",
      "Lc/d/a<",
      "Ljava/lang/String;",
      "Ljava/lang/Object;",
      ">;)V"
    }
  .end annotation
  .registers 7
    const/4 v0, 0
  .line 1
    invoke-direct { p0, v0 }, Lc/q/a/a/h$e;-><init>(Lc/q/a/a/h$a;)V
  .line 2
    new-instance v1, Landroid/graphics/Matrix;
    invoke-direct { v1 }, Landroid/graphics/Matrix;-><init>()V
    iput-object v1, p0, Lc/q/a/a/h$d;->a:Landroid/graphics/Matrix;
  .line 3
    new-instance v1, Ljava/util/ArrayList;
    invoke-direct { v1 }, Ljava/util/ArrayList;-><init>()V
    iput-object v1, p0, Lc/q/a/a/h$d;->b:Ljava/util/ArrayList;
    const/4 v1, 0
  .line 4
    iput v1, p0, Lc/q/a/a/h$d;->c:F
  .line 5
    iput v1, p0, Lc/q/a/a/h$d;->d:F
  .line 6
    iput v1, p0, Lc/q/a/a/h$d;->e:F
    const/high16 v2, 16256
  .line 7
    iput v2, p0, Lc/q/a/a/h$d;->f:F
  .line 8
    iput v2, p0, Lc/q/a/a/h$d;->g:F
  .line 9
    iput v1, p0, Lc/q/a/a/h$d;->h:F
  .line 10
    iput v1, p0, Lc/q/a/a/h$d;->i:F
  .line 11
    new-instance v1, Landroid/graphics/Matrix;
    invoke-direct { v1 }, Landroid/graphics/Matrix;-><init>()V
    iput-object v1, p0, Lc/q/a/a/h$d;->j:Landroid/graphics/Matrix;
  .line 12
    iput-object v0, p0, Lc/q/a/a/h$d;->m:Ljava/lang/String;
  .line 13
    iget v0, p1, Lc/q/a/a/h$d;->c:F
    iput v0, p0, Lc/q/a/a/h$d;->c:F
  .line 14
    iget v0, p1, Lc/q/a/a/h$d;->d:F
    iput v0, p0, Lc/q/a/a/h$d;->d:F
  .line 15
    iget v0, p1, Lc/q/a/a/h$d;->e:F
    iput v0, p0, Lc/q/a/a/h$d;->e:F
  .line 16
    iget v0, p1, Lc/q/a/a/h$d;->f:F
    iput v0, p0, Lc/q/a/a/h$d;->f:F
  .line 17
    iget v0, p1, Lc/q/a/a/h$d;->g:F
    iput v0, p0, Lc/q/a/a/h$d;->g:F
  .line 18
    iget v0, p1, Lc/q/a/a/h$d;->h:F
    iput v0, p0, Lc/q/a/a/h$d;->h:F
  .line 19
    iget v0, p1, Lc/q/a/a/h$d;->i:F
    iput v0, p0, Lc/q/a/a/h$d;->i:F
  .line 20
    iget-object v0, p1, Lc/q/a/a/h$d;->l:[I
    iput-object v0, p0, Lc/q/a/a/h$d;->l:[I
  .line 21
    iget-object v0, p1, Lc/q/a/a/h$d;->m:Ljava/lang/String;
    iput-object v0, p0, Lc/q/a/a/h$d;->m:Ljava/lang/String;
  .line 22
    iget v1, p1, Lc/q/a/a/h$d;->k:I
    iput v1, p0, Lc/q/a/a/h$d;->k:I
    if-eqz v0, :L0
  .line 23
    invoke-virtual { p2, v0, p0 }, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L0
  .line 24
    iget-object v0, p0, Lc/q/a/a/h$d;->j:Landroid/graphics/Matrix;
    iget-object v1, p1, Lc/q/a/a/h$d;->j:Landroid/graphics/Matrix;
    invoke-virtual { v0, v1 }, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V
  .line 25
    iget-object p1, p1, Lc/q/a/a/h$d;->b:Ljava/util/ArrayList;
    const/4 v0, 0
  :L1
  .line 26
    invoke-virtual { p1 }, Ljava/util/ArrayList;->size()I
    move-result v1
    if-ge v0, v1, :L7
  .line 27
    invoke-virtual { p1, v0 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v1
  .line 28
    instance-of v2, v1, Lc/q/a/a/h$d;
    if-eqz v2, :L2
  .line 29
    check-cast v1, Lc/q/a/a/h$d;
  .line 30
    iget-object v2, p0, Lc/q/a/a/h$d;->b:Ljava/util/ArrayList;
    new-instance v3, Lc/q/a/a/h$d;
    invoke-direct { v3, v1, p2 }, Lc/q/a/a/h$d;-><init>(Lc/q/a/a/h$d;Lc/d/a;)V
    invoke-virtual { v2, v3 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto :L5
  :L2
  .line 31
    instance-of v2, v1, Lc/q/a/a/h$c;
    if-eqz v2, :L3
  .line 32
    new-instance v2, Lc/q/a/a/h$c;
    check-cast v1, Lc/q/a/a/h$c;
    invoke-direct { v2, v1 }, Lc/q/a/a/h$c;-><init>(Lc/q/a/a/h$c;)V
    goto :L4
  :L3
  .line 33
    instance-of v2, v1, Lc/q/a/a/h$b;
    if-eqz v2, :L6
  .line 34
    new-instance v2, Lc/q/a/a/h$b;
    check-cast v1, Lc/q/a/a/h$b;
    invoke-direct { v2, v1 }, Lc/q/a/a/h$b;-><init>(Lc/q/a/a/h$b;)V
  :L4
  .line 35
    iget-object v1, p0, Lc/q/a/a/h$d;->b:Ljava/util/ArrayList;
    invoke-virtual { v1, v2 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  .line 36
    iget-object v1, v2, Lc/q/a/a/h$f;->b:Ljava/lang/String;
    if-eqz v1, :L5
  .line 37
    invoke-virtual { p2, v1, v2 }, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L5
    add-int/lit8 v0, v0, 1
    goto :L1
  :L6
  .line 38
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string p2, "Unknown object in the tree!"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
  :L7
    return-void
.end method

.method private d()V
  .registers 5
  .line 1
    iget-object v0, p0, Lc/q/a/a/h$d;->j:Landroid/graphics/Matrix;
    invoke-virtual { v0 }, Landroid/graphics/Matrix;->reset()V
  .line 2
    iget-object v0, p0, Lc/q/a/a/h$d;->j:Landroid/graphics/Matrix;
    iget v1, p0, Lc/q/a/a/h$d;->d:F
    neg-float v1, v1
    iget v2, p0, Lc/q/a/a/h$d;->e:F
    neg-float v2, v2
    invoke-virtual { v0, v1, v2 }, Landroid/graphics/Matrix;->postTranslate(FF)Z
  .line 3
    iget-object v0, p0, Lc/q/a/a/h$d;->j:Landroid/graphics/Matrix;
    iget v1, p0, Lc/q/a/a/h$d;->f:F
    iget v2, p0, Lc/q/a/a/h$d;->g:F
    invoke-virtual { v0, v1, v2 }, Landroid/graphics/Matrix;->postScale(FF)Z
  .line 4
    iget-object v0, p0, Lc/q/a/a/h$d;->j:Landroid/graphics/Matrix;
    iget v1, p0, Lc/q/a/a/h$d;->c:F
    const/4 v2, 0
    invoke-virtual { v0, v1, v2, v2 }, Landroid/graphics/Matrix;->postRotate(FFF)Z
  .line 5
    iget-object v0, p0, Lc/q/a/a/h$d;->j:Landroid/graphics/Matrix;
    iget v1, p0, Lc/q/a/a/h$d;->h:F
    iget v2, p0, Lc/q/a/a/h$d;->d:F
    add-float/2addr v1, v2
    iget v2, p0, Lc/q/a/a/h$d;->i:F
    iget v3, p0, Lc/q/a/a/h$d;->e:F
    add-float/2addr v2, v3
    invoke-virtual { v0, v1, v2 }, Landroid/graphics/Matrix;->postTranslate(FF)Z
    return-void
.end method

.method private e(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V
  .registers 6
    const/4 v0, 0
  .line 1
    iput-object v0, p0, Lc/q/a/a/h$d;->l:[I
  .line 2
    iget v0, p0, Lc/q/a/a/h$d;->c:F
    const-string v1, "rotation"
    const/4 v2, 5
    invoke-static { p1, p2, v1, v2, v0 }, Landroidx/core/content/c/g;->f(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F
    move-result v0
    iput v0, p0, Lc/q/a/a/h$d;->c:F
  .line 3
    iget v0, p0, Lc/q/a/a/h$d;->d:F
    const/4 v1, 1
    invoke-virtual { p1, v1, v0 }, Landroid/content/res/TypedArray;->getFloat(IF)F
    move-result v0
    iput v0, p0, Lc/q/a/a/h$d;->d:F
  .line 4
    iget v0, p0, Lc/q/a/a/h$d;->e:F
    const/4 v1, 2
    invoke-virtual { p1, v1, v0 }, Landroid/content/res/TypedArray;->getFloat(IF)F
    move-result v0
    iput v0, p0, Lc/q/a/a/h$d;->e:F
  .line 5
    iget v0, p0, Lc/q/a/a/h$d;->f:F
    const-string v1, "scaleX"
    const/4 v2, 3
    invoke-static { p1, p2, v1, v2, v0 }, Landroidx/core/content/c/g;->f(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F
    move-result v0
    iput v0, p0, Lc/q/a/a/h$d;->f:F
  .line 6
    iget v0, p0, Lc/q/a/a/h$d;->g:F
    const-string v1, "scaleY"
    const/4 v2, 4
    invoke-static { p1, p2, v1, v2, v0 }, Landroidx/core/content/c/g;->f(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F
    move-result v0
    iput v0, p0, Lc/q/a/a/h$d;->g:F
  .line 7
    iget v0, p0, Lc/q/a/a/h$d;->h:F
    const-string v1, "translateX"
    const/4 v2, 6
    invoke-static { p1, p2, v1, v2, v0 }, Landroidx/core/content/c/g;->f(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F
    move-result v0
    iput v0, p0, Lc/q/a/a/h$d;->h:F
  .line 8
    iget v0, p0, Lc/q/a/a/h$d;->i:F
    const-string v1, "translateY"
    const/4 v2, 7
    invoke-static { p1, p2, v1, v2, v0 }, Landroidx/core/content/c/g;->f(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F
    move-result p2
    iput p2, p0, Lc/q/a/a/h$d;->i:F
    const/4 p2, 0
  .line 9
    invoke-virtual { p1, p2 }, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
    move-result-object p1
    if-eqz p1, :L0
  .line 10
    iput-object p1, p0, Lc/q/a/a/h$d;->m:Ljava/lang/String;
  :L0
  .line 11
    invoke-direct { p0 }, Lc/q/a/a/h$d;->d()V
    return-void
.end method

.method public a()Z
  .registers 4
    const/4 v0, 0
    const/4 v1, 0
  :L0
  .line 1
    iget-object v2, p0, Lc/q/a/a/h$d;->b:Ljava/util/ArrayList;
    invoke-virtual { v2 }, Ljava/util/ArrayList;->size()I
    move-result v2
    if-ge v1, v2, :L2
  .line 2
    iget-object v2, p0, Lc/q/a/a/h$d;->b:Ljava/util/ArrayList;
    invoke-virtual { v2, v1 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lc/q/a/a/h$e;
    invoke-virtual { v2 }, Lc/q/a/a/h$e;->a()Z
    move-result v2
    if-eqz v2, :L1
    const/4 v0, 1
    return v0
  :L1
    add-int/lit8 v1, v1, 1
    goto :L0
  :L2
    return v0
.end method

.method public b([I)Z
  .registers 5
    const/4 v0, 0
    const/4 v1, 0
  :L0
  .line 1
    iget-object v2, p0, Lc/q/a/a/h$d;->b:Ljava/util/ArrayList;
    invoke-virtual { v2 }, Ljava/util/ArrayList;->size()I
    move-result v2
    if-ge v0, v2, :L1
  .line 2
    iget-object v2, p0, Lc/q/a/a/h$d;->b:Ljava/util/ArrayList;
    invoke-virtual { v2, v0 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lc/q/a/a/h$e;
    invoke-virtual { v2, p1 }, Lc/q/a/a/h$e;->b([I)Z
    move-result v2
    or-int/2addr v1, v2
    add-int/lit8 v0, v0, 1
    goto :L0
  :L1
    return v1
.end method

.method public c(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
  .registers 6
  .line 1
    sget-object v0, Lc/q/a/a/a;->b:[I
    invoke-static { p1, p3, p2, v0 }, Landroidx/core/content/c/g;->k(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    move-result-object p1
  .line 2
    invoke-direct { p0, p1, p4 }, Lc/q/a/a/h$d;->e(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V
  .line 3
    invoke-virtual { p1 }, Landroid/content/res/TypedArray;->recycle()V
    return-void
.end method

.method public getGroupName()Ljava/lang/String;
  .registers 2
  .line 1
    iget-object v0, p0, Lc/q/a/a/h$d;->m:Ljava/lang/String;
    return-object v0
.end method

.method public getLocalMatrix()Landroid/graphics/Matrix;
  .registers 2
  .line 1
    iget-object v0, p0, Lc/q/a/a/h$d;->j:Landroid/graphics/Matrix;
    return-object v0
.end method

.method public getPivotX()F
  .registers 2
  .line 1
    iget v0, p0, Lc/q/a/a/h$d;->d:F
    return v0
.end method

.method public getPivotY()F
  .registers 2
  .line 1
    iget v0, p0, Lc/q/a/a/h$d;->e:F
    return v0
.end method

.method public getRotation()F
  .registers 2
  .line 1
    iget v0, p0, Lc/q/a/a/h$d;->c:F
    return v0
.end method

.method public getScaleX()F
  .registers 2
  .line 1
    iget v0, p0, Lc/q/a/a/h$d;->f:F
    return v0
.end method

.method public getScaleY()F
  .registers 2
  .line 1
    iget v0, p0, Lc/q/a/a/h$d;->g:F
    return v0
.end method

.method public getTranslateX()F
  .registers 2
  .line 1
    iget v0, p0, Lc/q/a/a/h$d;->h:F
    return v0
.end method

.method public getTranslateY()F
  .registers 2
  .line 1
    iget v0, p0, Lc/q/a/a/h$d;->i:F
    return v0
.end method

.method public setPivotX(F)V
  .registers 3
  .line 1
    iget v0, p0, Lc/q/a/a/h$d;->d:F
    cmpl-float v0, p1, v0
    if-eqz v0, :L0
  .line 2
    iput p1, p0, Lc/q/a/a/h$d;->d:F
  .line 3
    invoke-direct { p0 }, Lc/q/a/a/h$d;->d()V
  :L0
    return-void
.end method

.method public setPivotY(F)V
  .registers 3
  .line 1
    iget v0, p0, Lc/q/a/a/h$d;->e:F
    cmpl-float v0, p1, v0
    if-eqz v0, :L0
  .line 2
    iput p1, p0, Lc/q/a/a/h$d;->e:F
  .line 3
    invoke-direct { p0 }, Lc/q/a/a/h$d;->d()V
  :L0
    return-void
.end method

.method public setRotation(F)V
  .registers 3
  .line 1
    iget v0, p0, Lc/q/a/a/h$d;->c:F
    cmpl-float v0, p1, v0
    if-eqz v0, :L0
  .line 2
    iput p1, p0, Lc/q/a/a/h$d;->c:F
  .line 3
    invoke-direct { p0 }, Lc/q/a/a/h$d;->d()V
  :L0
    return-void
.end method

.method public setScaleX(F)V
  .registers 3
  .line 1
    iget v0, p0, Lc/q/a/a/h$d;->f:F
    cmpl-float v0, p1, v0
    if-eqz v0, :L0
  .line 2
    iput p1, p0, Lc/q/a/a/h$d;->f:F
  .line 3
    invoke-direct { p0 }, Lc/q/a/a/h$d;->d()V
  :L0
    return-void
.end method

.method public setScaleY(F)V
  .registers 3
  .line 1
    iget v0, p0, Lc/q/a/a/h$d;->g:F
    cmpl-float v0, p1, v0
    if-eqz v0, :L0
  .line 2
    iput p1, p0, Lc/q/a/a/h$d;->g:F
  .line 3
    invoke-direct { p0 }, Lc/q/a/a/h$d;->d()V
  :L0
    return-void
.end method

.method public setTranslateX(F)V
  .registers 3
  .line 1
    iget v0, p0, Lc/q/a/a/h$d;->h:F
    cmpl-float v0, p1, v0
    if-eqz v0, :L0
  .line 2
    iput p1, p0, Lc/q/a/a/h$d;->h:F
  .line 3
    invoke-direct { p0 }, Lc/q/a/a/h$d;->d()V
  :L0
    return-void
.end method

.method public setTranslateY(F)V
  .registers 3
  .line 1
    iget v0, p0, Lc/q/a/a/h$d;->i:F
    cmpl-float v0, p1, v0
    if-eqz v0, :L0
  .line 2
    iput p1, p0, Lc/q/a/a/h$d;->i:F
  .line 3
    invoke-direct { p0 }, Lc/q/a/a/h$d;->d()V
  :L0
    return-void
.end method
