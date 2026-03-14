.class public Lc/p/c;
.super Lc/p/m;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lc/p/c$k;
  }
.end annotation

.field private final static N:[Ljava/lang/String;

.field private final static O:Landroid/util/Property;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Landroid/util/Property<",
      "Landroid/graphics/drawable/Drawable;",
      "Landroid/graphics/PointF;",
      ">;"
    }
  .end annotation
.end field

.field private final static P:Landroid/util/Property;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Landroid/util/Property<",
      "Lc/p/c$k;",
      "Landroid/graphics/PointF;",
      ">;"
    }
  .end annotation
.end field

.field private final static Q:Landroid/util/Property;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Landroid/util/Property<",
      "Lc/p/c$k;",
      "Landroid/graphics/PointF;",
      ">;"
    }
  .end annotation
.end field

.field private final static R:Landroid/util/Property;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Landroid/util/Property<",
      "Landroid/view/View;",
      "Landroid/graphics/PointF;",
      ">;"
    }
  .end annotation
.end field

.field private final static S:Landroid/util/Property;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Landroid/util/Property<",
      "Landroid/view/View;",
      "Landroid/graphics/PointF;",
      ">;"
    }
  .end annotation
.end field

.field private final static T:Landroid/util/Property;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Landroid/util/Property<",
      "Landroid/view/View;",
      "Landroid/graphics/PointF;",
      ">;"
    }
  .end annotation
.end field

.field private static U:Lc/p/k;

.field private K:[I

.field private L:Z

.field private M:Z

.method static constructor <clinit>()V
  .registers 5
    const/4 v0, 5
    new-array v0, v0, [Ljava/lang/String;
    const/4 v1, 0
    const-string v2, "android:changeBounds:bounds"
    aput-object v2, v0, v1
    const/4 v1, 1
    const-string v2, "android:changeBounds:clip"
    aput-object v2, v0, v1
    const/4 v1, 2
    const-string v2, "android:changeBounds:parent"
    aput-object v2, v0, v1
    const/4 v1, 3
    const-string v2, "android:changeBounds:windowX"
    aput-object v2, v0, v1
    const/4 v1, 4
    const-string v2, "android:changeBounds:windowY"
    aput-object v2, v0, v1
  .line 1
    sput-object v0, Lc/p/c;->N:[Ljava/lang/String;
  .line 2
    new-instance v0, Lc/p/c$b;
    const-class v1, Landroid/graphics/PointF;
    const-string v2, "boundsOrigin"
    invoke-direct { v0, v1, v2 }, Lc/p/c$b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V
    sput-object v0, Lc/p/c;->O:Landroid/util/Property;
  .line 3
    new-instance v0, Lc/p/c$c;
    const-class v1, Landroid/graphics/PointF;
    const-string v2, "topLeft"
    invoke-direct { v0, v1, v2 }, Lc/p/c$c;-><init>(Ljava/lang/Class;Ljava/lang/String;)V
    sput-object v0, Lc/p/c;->P:Landroid/util/Property;
  .line 4
    new-instance v0, Lc/p/c$d;
    const-class v1, Landroid/graphics/PointF;
    const-string v3, "bottomRight"
    invoke-direct { v0, v1, v3 }, Lc/p/c$d;-><init>(Ljava/lang/Class;Ljava/lang/String;)V
    sput-object v0, Lc/p/c;->Q:Landroid/util/Property;
  .line 5
    new-instance v0, Lc/p/c$e;
    const-class v1, Landroid/graphics/PointF;
    invoke-direct { v0, v1, v3 }, Lc/p/c$e;-><init>(Ljava/lang/Class;Ljava/lang/String;)V
    sput-object v0, Lc/p/c;->R:Landroid/util/Property;
  .line 6
    new-instance v0, Lc/p/c$f;
    const-class v1, Landroid/graphics/PointF;
    invoke-direct { v0, v1, v2 }, Lc/p/c$f;-><init>(Ljava/lang/Class;Ljava/lang/String;)V
    sput-object v0, Lc/p/c;->S:Landroid/util/Property;
  .line 7
    new-instance v0, Lc/p/c$g;
    const-class v1, Landroid/graphics/PointF;
    const-string v2, "position"
    invoke-direct { v0, v1, v2 }, Lc/p/c$g;-><init>(Ljava/lang/Class;Ljava/lang/String;)V
    sput-object v0, Lc/p/c;->T:Landroid/util/Property;
  .line 8
    new-instance v0, Lc/p/k;
    invoke-direct { v0 }, Lc/p/k;-><init>()V
    sput-object v0, Lc/p/c;->U:Lc/p/k;
    return-void
.end method

.method public constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Lc/p/m;-><init>()V
    const/4 v0, 2
    new-array v0, v0, [I
  .line 2
    iput-object v0, p0, Lc/p/c;->K:[I
    const/4 v0, 0
  .line 3
    iput-boolean v0, p0, Lc/p/c;->L:Z
  .line 4
    iput-boolean v0, p0, Lc/p/c;->M:Z
    return-void
.end method

.method private b0(Lc/p/s;)V
  .registers 9
  .line 1
    iget-object v0, p1, Lc/p/s;->b:Landroid/view/View;
  .line 2
    invoke-static { v0 }, Landroidx/core/view/v;->T(Landroid/view/View;)Z
    move-result v1
    if-nez v1, :L0
    invoke-virtual { v0 }, Landroid/view/View;->getWidth()I
    move-result v1
    if-nez v1, :L0
    invoke-virtual { v0 }, Landroid/view/View;->getHeight()I
    move-result v1
    if-eqz v1, :L2
  :L0
  .line 3
    iget-object v1, p1, Lc/p/s;->a:Ljava/util/Map;
    new-instance v2, Landroid/graphics/Rect;
    invoke-virtual { v0 }, Landroid/view/View;->getLeft()I
    move-result v3
    invoke-virtual { v0 }, Landroid/view/View;->getTop()I
    move-result v4
  .line 4
    invoke-virtual { v0 }, Landroid/view/View;->getRight()I
    move-result v5
    invoke-virtual { v0 }, Landroid/view/View;->getBottom()I
    move-result v6
    invoke-direct { v2, v3, v4, v5, v6 }, Landroid/graphics/Rect;-><init>(IIII)V
    const-string v3, "android:changeBounds:bounds"
  .line 5
    invoke-interface { v1, v3, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 6
    iget-object v1, p1, Lc/p/s;->a:Ljava/util/Map;
    iget-object v2, p1, Lc/p/s;->b:Landroid/view/View;
    invoke-virtual { v2 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v2
    const-string v3, "android:changeBounds:parent"
    invoke-interface { v1, v3, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 7
    iget-boolean v1, p0, Lc/p/c;->M:Z
    if-eqz v1, :L1
  .line 8
    iget-object v1, p1, Lc/p/s;->b:Landroid/view/View;
    iget-object v2, p0, Lc/p/c;->K:[I
    invoke-virtual { v1, v2 }, Landroid/view/View;->getLocationInWindow([I)V
  .line 9
    iget-object v1, p1, Lc/p/s;->a:Ljava/util/Map;
    iget-object v2, p0, Lc/p/c;->K:[I
    const/4 v3, 0
    aget v2, v2, v3
    invoke-static { v2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    const-string v3, "android:changeBounds:windowX"
    invoke-interface { v1, v3, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 10
    iget-object v1, p1, Lc/p/s;->a:Ljava/util/Map;
    iget-object v2, p0, Lc/p/c;->K:[I
    const/4 v3, 1
    aget v2, v2, v3
    invoke-static { v2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    const-string v3, "android:changeBounds:windowY"
    invoke-interface { v1, v3, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L1
  .line 11
    iget-boolean v1, p0, Lc/p/c;->L:Z
    if-eqz v1, :L2
  .line 12
    iget-object p1, p1, Lc/p/s;->a:Ljava/util/Map;
    invoke-static { v0 }, Landroidx/core/view/v;->u(Landroid/view/View;)Landroid/graphics/Rect;
    move-result-object v0
    const-string v1, "android:changeBounds:clip"
    invoke-interface { p1, v1, v0 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L2
    return-void
.end method

.method private c0(Landroid/view/View;Landroid/view/View;)Z
  .registers 6
  .line 1
    iget-boolean v0, p0, Lc/p/c;->M:Z
    const/4 v1, 1
    if-eqz v0, :L2
  .line 2
    invoke-virtual { p0, p1, v1 }, Lc/p/m;->s(Landroid/view/View;Z)Lc/p/s;
    move-result-object v0
    const/4 v2, 0
    if-nez v0, :L1
    if-ne p1, p2, :L0
    goto :L2
  :L0
    const/4 v1, 0
    goto :L2
  :L1
  .line 3
    iget-object p1, v0, Lc/p/s;->b:Landroid/view/View;
    if-ne p2, p1, :L0
  :L2
    return v1
.end method

.method public C()[Ljava/lang/String;
  .registers 2
  .line 1
    sget-object v0, Lc/p/c;->N:[Ljava/lang/String;
    return-object v0
.end method

.method public f(Lc/p/s;)V
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Lc/p/c;->b0(Lc/p/s;)V
    return-void
.end method

.method public i(Lc/p/s;)V
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Lc/p/c;->b0(Lc/p/s;)V
    return-void
.end method

.method public m(Landroid/view/ViewGroup;Lc/p/s;Lc/p/s;)Landroid/animation/Animator;
  .registers 22
    move-object/from16 v8, p0
    move-object/from16 v0, p2
    move-object/from16 v1, p3
    if-eqz v0, :L33
    if-nez v1, :L0
    goto/16 :L33
  :L0
  .line 1
    iget-object v3, v0, Lc/p/s;->a:Ljava/util/Map;
  .line 2
    iget-object v4, v1, Lc/p/s;->a:Ljava/util/Map;
    const-string v5, "android:changeBounds:parent"
  .line 3
    invoke-interface { v3, v5 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Landroid/view/ViewGroup;
  .line 4
    invoke-interface { v4, v5 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Landroid/view/ViewGroup;
    if-eqz v3, :L32
    if-nez v4, :L1
    goto/16 :L32
  :L1
  .line 5
    iget-object v9, v1, Lc/p/s;->b:Landroid/view/View;
  .line 6
    invoke-direct { v8, v3, v4 }, Lc/p/c;->c0(Landroid/view/View;Landroid/view/View;)Z
    move-result v3
    if-eqz v3, :L29
  .line 7
    iget-object v3, v0, Lc/p/s;->a:Ljava/util/Map;
    const-string v5, "android:changeBounds:bounds"
    invoke-interface { v3, v5 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Landroid/graphics/Rect;
  .line 8
    iget-object v6, v1, Lc/p/s;->a:Ljava/util/Map;
    invoke-interface { v6, v5 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Landroid/graphics/Rect;
  .line 9
    iget v6, v3, Landroid/graphics/Rect;->left:I
  .line 10
    iget v7, v5, Landroid/graphics/Rect;->left:I
  .line 11
    iget v11, v3, Landroid/graphics/Rect;->top:I
  .line 12
    iget v12, v5, Landroid/graphics/Rect;->top:I
  .line 13
    iget v13, v3, Landroid/graphics/Rect;->right:I
  .line 14
    iget v14, v5, Landroid/graphics/Rect;->right:I
  .line 15
    iget v3, v3, Landroid/graphics/Rect;->bottom:I
  .line 16
    iget v15, v5, Landroid/graphics/Rect;->bottom:I
    sub-int v5, v13, v6
    sub-int v2, v3, v11
    sub-int v10, v14, v7
    sub-int v4, v15, v12
  .line 17
    iget-object v0, v0, Lc/p/s;->a:Ljava/util/Map;
    move-object/from16 v16, v9
    const-string v9, "android:changeBounds:clip"
    invoke-interface { v0, v9 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/graphics/Rect;
  .line 18
    iget-object v1, v1, Lc/p/s;->a:Ljava/util/Map;
    invoke-interface { v1, v9 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v1
    move-object v9, v1
    check-cast v9, Landroid/graphics/Rect;
    if-eqz v5, :L2
    if-nez v2, :L3
  :L2
    if-eqz v10, :L8
    if-eqz v4, :L8
  :L3
    if-ne v6, v7, :L5
    if-eq v11, v12, :L4
    goto :L5
  :L4
    const/4 v1, 0
    goto :L6
  :L5
    const/4 v1, 1
  :L6
    if-ne v13, v14, :L7
    if-eq v3, v15, :L9
  :L7
    add-int/lit8 v1, v1, 1
    goto :L9
  :L8
    const/4 v1, 0
  :L9
    if-eqz v0, :L10
  .line 19
    invoke-virtual { v0, v9 }, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z
    move-result v17
    if-eqz v17, :L11
  :L10
    if-nez v0, :L12
    if-eqz v9, :L12
  :L11
    add-int/lit8 v1, v1, 1
  :L12
    if-lez v1, :L30
    move-object/from16 p1, v9
  .line 20
    iget-boolean v9, v8, Lc/p/c;->L:Z
    move-object/from16 p2, v0
    const/4 v0, 2
    if-nez v9, :L17
    move-object/from16 v9, v16
  .line 21
    invoke-static { v9, v6, v11, v13, v3 }, Lc/p/c0;->f(Landroid/view/View;IIII)V
    if-ne v1, v0, :L14
    if-ne v5, v10, :L13
    if-ne v2, v4, :L13
  .line 22
    invoke-virtual/range { p0 .. p0 }, Lc/p/m;->u()Lc/p/g;
    move-result-object v0
    int-to-float v1, v6
    int-to-float v2, v11
    int-to-float v3, v7
    int-to-float v4, v12
    invoke-virtual { v0, v1, v2, v3, v4 }, Lc/p/g;->a(FFFF)Landroid/graphics/Path;
    move-result-object v0
  .line 23
    sget-object v1, Lc/p/c;->T:Landroid/util/Property;
    invoke-static { v9, v1, v0 }, Lc/p/f;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
    move-result-object v0
    goto/16 :L27
  :L13
  .line 24
    new-instance v1, Lc/p/c$k;
    invoke-direct { v1, v9 }, Lc/p/c$k;-><init>(Landroid/view/View;)V
  .line 25
    invoke-virtual/range { p0 .. p0 }, Lc/p/m;->u()Lc/p/g;
    move-result-object v2
    int-to-float v4, v6
    int-to-float v5, v11
    int-to-float v6, v7
    int-to-float v7, v12
    invoke-virtual { v2, v4, v5, v6, v7 }, Lc/p/g;->a(FFFF)Landroid/graphics/Path;
    move-result-object v2
  .line 26
    sget-object v4, Lc/p/c;->P:Landroid/util/Property;
  .line 27
    invoke-static { v1, v4, v2 }, Lc/p/f;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
    move-result-object v2
  .line 28
    invoke-virtual/range { p0 .. p0 }, Lc/p/m;->u()Lc/p/g;
    move-result-object v4
    int-to-float v5, v13
    int-to-float v3, v3
    int-to-float v6, v14
    int-to-float v7, v15
    invoke-virtual { v4, v5, v3, v6, v7 }, Lc/p/g;->a(FFFF)Landroid/graphics/Path;
    move-result-object v3
  .line 29
    sget-object v4, Lc/p/c;->Q:Landroid/util/Property;
    invoke-static { v1, v4, v3 }, Lc/p/f;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
    move-result-object v3
  .line 30
    new-instance v4, Landroid/animation/AnimatorSet;
    invoke-direct { v4 }, Landroid/animation/AnimatorSet;-><init>()V
    new-array v0, v0, [Landroid/animation/Animator;
    const/4 v5, 0
    aput-object v2, v0, v5
    const/4 v2, 1
    aput-object v3, v0, v2
  .line 31
    invoke-virtual { v4, v0 }, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V
  .line 32
    new-instance v0, Lc/p/c$h;
    invoke-direct { v0, v8, v1 }, Lc/p/c$h;-><init>(Lc/p/c;Lc/p/c$k;)V
    invoke-virtual { v4, v0 }, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V
    move-object v0, v4
    goto/16 :L27
  :L14
    if-ne v6, v7, :L16
    if-eq v11, v12, :L15
    goto :L16
  :L15
  .line 33
    invoke-virtual/range { p0 .. p0 }, Lc/p/m;->u()Lc/p/g;
    move-result-object v0
    int-to-float v1, v13
    int-to-float v2, v3
    int-to-float v3, v14
    int-to-float v4, v15
    invoke-virtual { v0, v1, v2, v3, v4 }, Lc/p/g;->a(FFFF)Landroid/graphics/Path;
    move-result-object v0
  .line 34
    sget-object v1, Lc/p/c;->R:Landroid/util/Property;
    invoke-static { v9, v1, v0 }, Lc/p/f;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
    move-result-object v0
    goto/16 :L27
  :L16
  .line 35
    invoke-virtual/range { p0 .. p0 }, Lc/p/m;->u()Lc/p/g;
    move-result-object v0
    int-to-float v1, v6
    int-to-float v2, v11
    int-to-float v3, v7
    int-to-float v4, v12
    invoke-virtual { v0, v1, v2, v3, v4 }, Lc/p/g;->a(FFFF)Landroid/graphics/Path;
    move-result-object v0
  .line 36
    sget-object v1, Lc/p/c;->S:Landroid/util/Property;
    invoke-static { v9, v1, v0 }, Lc/p/f;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
    move-result-object v0
    goto/16 :L27
  :L17
    move-object/from16 v9, v16
  .line 37
    invoke-static { v5, v10 }, Ljava/lang/Math;->max(II)I
    move-result v1
  .line 38
    invoke-static { v2, v4 }, Ljava/lang/Math;->max(II)I
    move-result v3
    add-int/2addr v1, v6
    add-int/2addr v3, v11
  .line 39
    invoke-static { v9, v6, v11, v1, v3 }, Lc/p/c0;->f(Landroid/view/View;IIII)V
    if-ne v6, v7, :L19
    if-eq v11, v12, :L18
    goto :L19
  :L18
    const/4 v11, 0
    goto :L20
  :L19
  .line 40
    invoke-virtual/range { p0 .. p0 }, Lc/p/m;->u()Lc/p/g;
    move-result-object v1
    int-to-float v3, v6
    int-to-float v6, v11
    int-to-float v11, v7
    int-to-float v13, v12
    invoke-virtual { v1, v3, v6, v11, v13 }, Lc/p/g;->a(FFFF)Landroid/graphics/Path;
    move-result-object v1
  .line 41
    sget-object v3, Lc/p/c;->T:Landroid/util/Property;
    invoke-static { v9, v3, v1 }, Lc/p/f;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
    move-result-object v1
    move-object v11, v1
  :L20
    if-nez p2, :L21
  .line 42
    new-instance v1, Landroid/graphics/Rect;
    const/4 v3, 0
    invoke-direct { v1, v3, v3, v5, v2 }, Landroid/graphics/Rect;-><init>(IIII)V
    goto :L22
  :L21
    const/4 v3, 0
    move-object/from16 v1, p2
  :L22
    if-nez p1, :L23
  .line 43
    new-instance v2, Landroid/graphics/Rect;
    invoke-direct { v2, v3, v3, v10, v4 }, Landroid/graphics/Rect;-><init>(IIII)V
    goto :L24
  :L23
    move-object/from16 v2, p1
  :L24
  .line 44
    invoke-virtual { v1, v2 }, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z
    move-result v4
    if-nez v4, :L25
  .line 45
    invoke-static { v9, v1 }, Landroidx/core/view/v;->u0(Landroid/view/View;Landroid/graphics/Rect;)V
  .line 46
    sget-object v4, Lc/p/c;->U:Lc/p/k;
    new-array v0, v0, [Ljava/lang/Object;
    aput-object v1, v0, v3
    const/4 v1, 1
    aput-object v2, v0, v1
    const-string v1, "clipBounds"
    invoke-static { v9, v1, v4, v0 }, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;
    move-result-object v10
  .line 47
    new-instance v13, Lc/p/c$i;
    move-object v0, v13
    move-object/from16 v1, p0
    move-object v2, v9
    move-object/from16 v3, p1
    move v4, v7
    move v5, v12
    move v6, v14
    move v7, v15
    invoke-direct/range { v0 .. v7 }, Lc/p/c$i;-><init>(Lc/p/c;Landroid/view/View;Landroid/graphics/Rect;IIII)V
    invoke-virtual { v10, v13 }, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V
    move-object v2, v10
    goto :L26
  :L25
    const/4 v2, 0
  :L26
  .line 48
    invoke-static { v11, v2 }, Lc/p/r;->c(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/Animator;
    move-result-object v0
  :L27
  .line 49
    invoke-virtual { v9 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v1
    instance-of v1, v1, Landroid/view/ViewGroup;
    if-eqz v1, :L28
  .line 50
    invoke-virtual { v9 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v1
    check-cast v1, Landroid/view/ViewGroup;
    const/4 v2, 1
  .line 51
    invoke-static { v1, v2 }, Lc/p/x;->c(Landroid/view/ViewGroup;Z)V
  .line 52
    new-instance v2, Lc/p/c$j;
    invoke-direct { v2, v8, v1 }, Lc/p/c$j;-><init>(Lc/p/c;Landroid/view/ViewGroup;)V
  .line 53
    invoke-virtual { v8, v2 }, Lc/p/m;->a(Lc/p/m$f;)Lc/p/m;
  :L28
    return-object v0
  :L29
  .line 54
    iget-object v2, v0, Lc/p/s;->a:Ljava/util/Map;
    const-string v3, "android:changeBounds:windowX"
    invoke-interface { v2, v3 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/Integer;
    invoke-virtual { v2 }, Ljava/lang/Integer;->intValue()I
    move-result v2
  .line 55
    iget-object v0, v0, Lc/p/s;->a:Ljava/util/Map;
    const-string v4, "android:changeBounds:windowY"
    invoke-interface { v0, v4 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/Integer;
    invoke-virtual { v0 }, Ljava/lang/Integer;->intValue()I
    move-result v0
  .line 56
    iget-object v5, v1, Lc/p/s;->a:Ljava/util/Map;
    invoke-interface { v5, v3 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/lang/Integer;
    invoke-virtual { v3 }, Ljava/lang/Integer;->intValue()I
    move-result v3
  .line 57
    iget-object v1, v1, Lc/p/s;->a:Ljava/util/Map;
    invoke-interface { v1, v4 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/Integer;
    invoke-virtual { v1 }, Ljava/lang/Integer;->intValue()I
    move-result v1
    if-ne v2, v3, :L31
    if-eq v0, v1, :L30
    goto :L31
  :L30
    const/4 v0, 0
    return-object v0
  :L31
  .line 58
    iget-object v4, v8, Lc/p/c;->K:[I
    move-object/from16 v5, p1
    invoke-virtual { v5, v4 }, Landroid/view/ViewGroup;->getLocationInWindow([I)V
  .line 59
    invoke-virtual { v9 }, Landroid/view/View;->getWidth()I
    move-result v4
    invoke-virtual { v9 }, Landroid/view/View;->getHeight()I
    move-result v6
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
    invoke-static { v4, v6, v7 }, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    move-result-object v4
  .line 60
    new-instance v6, Landroid/graphics/Canvas;
    invoke-direct { v6, v4 }, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
  .line 61
    invoke-virtual { v9, v6 }, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
  .line 62
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;
    invoke-direct { v6, v4 }, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
  .line 63
    invoke-static { v9 }, Lc/p/c0;->c(Landroid/view/View;)F
    move-result v7
    const/4 v4, 0
  .line 64
    invoke-static { v9, v4 }, Lc/p/c0;->g(Landroid/view/View;F)V
  .line 65
    invoke-static/range { p1 .. p1 }, Lc/p/c0;->b(Landroid/view/View;)Lc/p/b0;
    move-result-object v4
    invoke-interface { v4, v6 }, Lc/p/b0;->b(Landroid/graphics/drawable/Drawable;)V
  .line 66
    invoke-virtual/range { p0 .. p0 }, Lc/p/m;->u()Lc/p/g;
    move-result-object v4
    iget-object v10, v8, Lc/p/c;->K:[I
    const/4 v11, 0
    aget v12, v10, v11
    sub-int/2addr v2, v12
    int-to-float v2, v2
    const/4 v12, 1
    aget v13, v10, v12
    sub-int/2addr v0, v13
    int-to-float v0, v0
    aget v13, v10, v11
    sub-int/2addr v3, v13
    int-to-float v3, v3
    aget v10, v10, v12
    sub-int/2addr v1, v10
    int-to-float v1, v1
    invoke-virtual { v4, v2, v0, v3, v1 }, Lc/p/g;->a(FFFF)Landroid/graphics/Path;
    move-result-object v0
  .line 67
    sget-object v1, Lc/p/c;->O:Landroid/util/Property;
    invoke-static { v1, v0 }, Lc/p/i;->a(Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;
    move-result-object v0
    new-array v1, v12, [Landroid/animation/PropertyValuesHolder;
    aput-object v0, v1, v11
  .line 68
    invoke-static { v6, v1 }, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;
    move-result-object v10
  .line 69
    new-instance v11, Lc/p/c$a;
    move-object v0, v11
    move-object/from16 v1, p0
    move-object/from16 v2, p1
    move-object v3, v6
    move-object v4, v9
    move v5, v7
    invoke-direct/range { v0 .. v5 }, Lc/p/c$a;-><init>(Lc/p/c;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;F)V
    invoke-virtual { v10, v11 }, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V
    return-object v10
  :L32
    const/4 v0, 0
    return-object v0
  :L33
    const/4 v0, 0
    return-object v0
.end method
