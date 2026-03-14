.class Lc/i/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lc/i/b/b$b;,
    Lc/i/b/b$a;,
    Lc/i/b/b$c;
  }
.end annotation

.method public constructor <init>()V
  .registers 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method private static a(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
  .registers 7
  .line 1
    invoke-static { p0, p1, p2 }, Lc/i/b/b;->b(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    move-result v0
  .line 2
    invoke-static { p0, p1, p3 }, Lc/i/b/b;->b(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    move-result v1
    const/4 v2, 0
    if-nez v1, :L5
    if-nez v0, :L0
    goto :L5
  :L0
  .line 3
    invoke-static { p0, p1, p3 }, Lc/i/b/b;->j(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    move-result v0
    const/4 v1, 1
    if-nez v0, :L1
    return v1
  :L1
    const/16 v0, 17
    if-eq p0, v0, :L4
    const/16 v0, 66
    if-ne p0, v0, :L2
    goto :L4
  :L2
  .line 4
    invoke-static { p0, p1, p2 }, Lc/i/b/b;->k(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    move-result p2
  .line 5
    invoke-static { p0, p1, p3 }, Lc/i/b/b;->m(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    move-result p0
    if-ge p2, p0, :L3
    const/4 v2, 1
  :L3
    return v2
  :L4
    return v1
  :L5
    return v2
.end method

.method private static b(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
  .registers 6
    const/16 v0, 17
    const/4 v1, 1
    const/4 v2, 0
    if-eq p0, v0, :L4
    const/16 v0, 33
    if-eq p0, v0, :L1
    const/16 v0, 66
    if-eq p0, v0, :L4
    const/16 v0, 130
    if-ne p0, v0, :L0
    goto :L1
  :L0
  .line 1
    new-instance p0, Ljava/lang/IllegalArgumentException;
    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."
    invoke-direct { p0, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p0
  :L1
  .line 2
    iget p0, p2, Landroid/graphics/Rect;->right:I
    iget v0, p1, Landroid/graphics/Rect;->left:I
    if-lt p0, v0, :L2
    iget p0, p2, Landroid/graphics/Rect;->left:I
    iget p1, p1, Landroid/graphics/Rect;->right:I
    if-gt p0, p1, :L2
    goto :L3
  :L2
    const/4 v1, 0
  :L3
    return v1
  :L4
  .line 3
    iget p0, p2, Landroid/graphics/Rect;->bottom:I
    iget v0, p1, Landroid/graphics/Rect;->top:I
    if-lt p0, v0, :L5
    iget p0, p2, Landroid/graphics/Rect;->top:I
    iget p1, p1, Landroid/graphics/Rect;->bottom:I
    if-gt p0, p1, :L5
    goto :L6
  :L5
    const/4 v1, 0
  :L6
    return v1
.end method

.method public static c(Ljava/lang/Object;Lc/i/b/b$b;Lc/i/b/b$a;Ljava/lang/Object;Landroid/graphics/Rect;I)Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "<",
      "L:Ljava/lang/Object;",
      "T:",
      "Ljava/lang/Object;",
      ">(T",
      "L;",
      "Lc/i/b/b$b<",
      "T",
      "L;",
      "TT;>;",
      "Lc/i/b/b$a<",
      "TT;>;TT;",
      "Landroid/graphics/Rect;",
      "I)TT;"
    }
  .end annotation
  .registers 13
  .line 1
    new-instance v0, Landroid/graphics/Rect;
    invoke-direct { v0, p4 }, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V
    const/16 v1, 17
    const/4 v2, 0
    if-eq p5, v1, :L3
    const/16 v1, 33
    if-eq p5, v1, :L2
    const/16 v1, 66
    if-eq p5, v1, :L1
    const/16 v1, 130
    if-ne p5, v1, :L0
  .line 2
    invoke-virtual { p4 }, Landroid/graphics/Rect;->height()I
    move-result v1
    add-int/lit8 v1, v1, 1
    neg-int v1, v1
    invoke-virtual { v0, v2, v1 }, Landroid/graphics/Rect;->offset(II)V
    goto :L4
  :L0
  .line 3
    new-instance p0, Ljava/lang/IllegalArgumentException;
    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."
    invoke-direct { p0, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p0
  :L1
  .line 4
    invoke-virtual { p4 }, Landroid/graphics/Rect;->width()I
    move-result v1
    add-int/lit8 v1, v1, 1
    neg-int v1, v1
    invoke-virtual { v0, v1, v2 }, Landroid/graphics/Rect;->offset(II)V
    goto :L4
  :L2
  .line 5
    invoke-virtual { p4 }, Landroid/graphics/Rect;->height()I
    move-result v1
    add-int/lit8 v1, v1, 1
    invoke-virtual { v0, v2, v1 }, Landroid/graphics/Rect;->offset(II)V
    goto :L4
  :L3
  .line 6
    invoke-virtual { p4 }, Landroid/graphics/Rect;->width()I
    move-result v1
    add-int/lit8 v1, v1, 1
    invoke-virtual { v0, v1, v2 }, Landroid/graphics/Rect;->offset(II)V
  :L4
    const/4 v1, 0
  .line 7
    invoke-interface { p1, p0 }, Lc/i/b/b$b;->a(Ljava/lang/Object;)I
    move-result v3
  .line 8
    new-instance v4, Landroid/graphics/Rect;
    invoke-direct { v4 }, Landroid/graphics/Rect;-><init>()V
  :L5
    if-ge v2, v3, :L8
  .line 9
    invoke-interface { p1, p0, v2 }, Lc/i/b/b$b;->b(Ljava/lang/Object;I)Ljava/lang/Object;
    move-result-object v5
    if-ne v5, p3, :L6
    goto :L7
  :L6
  .line 10
    invoke-interface { p2, v5, v4 }, Lc/i/b/b$a;->a(Ljava/lang/Object;Landroid/graphics/Rect;)V
  .line 11
    invoke-static { p5, p4, v4, v0 }, Lc/i/b/b;->h(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    move-result v6
    if-eqz v6, :L7
  .line 12
    invoke-virtual { v0, v4 }, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    move-object v1, v5
  :L7
    add-int/lit8 v2, v2, 1
    goto :L5
  :L8
    return-object v1
.end method

.method public static d(Ljava/lang/Object;Lc/i/b/b$b;Lc/i/b/b$a;Ljava/lang/Object;IZZ)Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "<",
      "L:Ljava/lang/Object;",
      "T:",
      "Ljava/lang/Object;",
      ">(T",
      "L;",
      "Lc/i/b/b$b<",
      "T",
      "L;",
      "TT;>;",
      "Lc/i/b/b$a<",
      "TT;>;TT;IZZ)TT;"
    }
  .end annotation
  .registers 11
  .line 1
    invoke-interface { p1, p0 }, Lc/i/b/b$b;->a(Ljava/lang/Object;)I
    move-result v0
  .line 2
    new-instance v1, Ljava/util/ArrayList;
    invoke-direct { v1, v0 }, Ljava/util/ArrayList;-><init>(I)V
    const/4 v2, 0
  :L0
    if-ge v2, v0, :L1
  .line 3
    invoke-interface { p1, p0, v2 }, Lc/i/b/b$b;->b(Ljava/lang/Object;I)Ljava/lang/Object;
    move-result-object v3
    invoke-virtual { v1, v3 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    add-int/lit8 v2, v2, 1
    goto :L0
  :L1
  .line 4
    new-instance p0, Lc/i/b/b$c;
    invoke-direct { p0, p5, p2 }, Lc/i/b/b$c;-><init>(ZLc/i/b/b$a;)V
  .line 5
    invoke-static { v1, p0 }, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    const/4 p0, 1
    if-eq p4, p0, :L3
    const/4 p0, 2
    if-ne p4, p0, :L2
  .line 6
    invoke-static { p3, v1, p6 }, Lc/i/b/b;->e(Ljava/lang/Object;Ljava/util/ArrayList;Z)Ljava/lang/Object;
    move-result-object p0
    return-object p0
  :L2
  .line 7
    new-instance p0, Ljava/lang/IllegalArgumentException;
    const-string p1, "direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD}."
    invoke-direct { p0, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p0
  :L3
  .line 8
    invoke-static { p3, v1, p6 }, Lc/i/b/b;->f(Ljava/lang/Object;Ljava/util/ArrayList;Z)Ljava/lang/Object;
    move-result-object p0
    return-object p0
.end method

.method private static e(Ljava/lang/Object;Ljava/util/ArrayList;Z)Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "<T:",
      "Ljava/lang/Object;",
      ">(TT;",
      "Ljava/util/ArrayList<",
      "TT;>;Z)TT;"
    }
  .end annotation
  .registers 4
  .line 1
    invoke-virtual { p1 }, Ljava/util/ArrayList;->size()I
    move-result v0
    if-nez p0, :L0
    const/4 p0, -1
    goto :L1
  :L0
  .line 2
    invoke-virtual { p1, p0 }, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I
    move-result p0
  :L1
    add-int/lit8 p0, p0, 1
    if-ge p0, v0, :L2
  .line 3
    invoke-virtual { p1, p0 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object p0
    return-object p0
  :L2
    if-eqz p2, :L3
    if-lez v0, :L3
    const/4 p0, 0
  .line 4
    invoke-virtual { p1, p0 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object p0
    return-object p0
  :L3
    const/4 p0, 0
    return-object p0
.end method

.method private static f(Ljava/lang/Object;Ljava/util/ArrayList;Z)Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "<T:",
      "Ljava/lang/Object;",
      ">(TT;",
      "Ljava/util/ArrayList<",
      "TT;>;Z)TT;"
    }
  .end annotation
  .registers 4
  .line 1
    invoke-virtual { p1 }, Ljava/util/ArrayList;->size()I
    move-result v0
    if-nez p0, :L0
    move p0, v0
    goto :L1
  :L0
  .line 2
    invoke-virtual { p1, p0 }, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I
    move-result p0
  :L1
    add-int/lit8 p0, p0, -1
    if-ltz p0, :L2
  .line 3
    invoke-virtual { p1, p0 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object p0
    return-object p0
  :L2
    if-eqz p2, :L3
    if-lez v0, :L3
    add-int/lit8 v0, v0, -1
  .line 4
    invoke-virtual { p1, v0 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object p0
    return-object p0
  :L3
    const/4 p0, 0
    return-object p0
.end method

.method private static g(II)I
  .registers 3
    mul-int/lit8 v0, p0, 13
    mul-int v0, v0, p0
    mul-int p1, p1, p1
    add-int/2addr v0, p1
    return v0
.end method

.method private static h(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
  .registers 7
  .line 1
    invoke-static { p1, p2, p0 }, Lc/i/b/b;->i(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z
    move-result v0
    const/4 v1, 0
    if-nez v0, :L0
    return v1
  :L0
  .line 2
    invoke-static { p1, p3, p0 }, Lc/i/b/b;->i(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z
    move-result v0
    const/4 v2, 1
    if-nez v0, :L1
    return v2
  :L1
  .line 3
    invoke-static { p0, p1, p2, p3 }, Lc/i/b/b;->a(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    move-result v0
    if-eqz v0, :L2
    return v2
  :L2
  .line 4
    invoke-static { p0, p1, p3, p2 }, Lc/i/b/b;->a(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    move-result v0
    if-eqz v0, :L3
    return v1
  :L3
  .line 5
    invoke-static { p0, p1, p2 }, Lc/i/b/b;->k(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    move-result v0
  .line 6
    invoke-static { p0, p1, p2 }, Lc/i/b/b;->o(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    move-result p2
  .line 7
    invoke-static { v0, p2 }, Lc/i/b/b;->g(II)I
    move-result p2
  .line 8
    invoke-static { p0, p1, p3 }, Lc/i/b/b;->k(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    move-result v0
  .line 9
    invoke-static { p0, p1, p3 }, Lc/i/b/b;->o(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    move-result p0
  .line 10
    invoke-static { v0, p0 }, Lc/i/b/b;->g(II)I
    move-result p0
    if-ge p2, p0, :L4
    const/4 v1, 1
  :L4
    return v1
.end method

.method private static i(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z
  .registers 6
    const/16 v0, 17
    const/4 v1, 1
    const/4 v2, 0
    if-eq p2, v0, :L12
    const/16 v0, 33
    if-eq p2, v0, :L8
    const/16 v0, 66
    if-eq p2, v0, :L4
    const/16 v0, 130
    if-ne p2, v0, :L3
  .line 1
    iget p2, p0, Landroid/graphics/Rect;->top:I
    iget v0, p1, Landroid/graphics/Rect;->top:I
    if-lt p2, v0, :L0
    iget p2, p0, Landroid/graphics/Rect;->bottom:I
    if-gt p2, v0, :L1
  :L0
    iget p0, p0, Landroid/graphics/Rect;->bottom:I
    iget p1, p1, Landroid/graphics/Rect;->bottom:I
    if-ge p0, p1, :L1
    goto :L2
  :L1
    const/4 v1, 0
  :L2
    return v1
  :L3
  .line 2
    new-instance p0, Ljava/lang/IllegalArgumentException;
    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."
    invoke-direct { p0, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p0
  :L4
  .line 3
    iget p2, p0, Landroid/graphics/Rect;->left:I
    iget v0, p1, Landroid/graphics/Rect;->left:I
    if-lt p2, v0, :L5
    iget p2, p0, Landroid/graphics/Rect;->right:I
    if-gt p2, v0, :L6
  :L5
    iget p0, p0, Landroid/graphics/Rect;->right:I
    iget p1, p1, Landroid/graphics/Rect;->right:I
    if-ge p0, p1, :L6
    goto :L7
  :L6
    const/4 v1, 0
  :L7
    return v1
  :L8
  .line 4
    iget p2, p0, Landroid/graphics/Rect;->bottom:I
    iget v0, p1, Landroid/graphics/Rect;->bottom:I
    if-gt p2, v0, :L9
    iget p2, p0, Landroid/graphics/Rect;->top:I
    if-lt p2, v0, :L10
  :L9
    iget p0, p0, Landroid/graphics/Rect;->top:I
    iget p1, p1, Landroid/graphics/Rect;->top:I
    if-le p0, p1, :L10
    goto :L11
  :L10
    const/4 v1, 0
  :L11
    return v1
  :L12
  .line 5
    iget p2, p0, Landroid/graphics/Rect;->right:I
    iget v0, p1, Landroid/graphics/Rect;->right:I
    if-gt p2, v0, :L13
    iget p2, p0, Landroid/graphics/Rect;->left:I
    if-lt p2, v0, :L14
  :L13
    iget p0, p0, Landroid/graphics/Rect;->left:I
    iget p1, p1, Landroid/graphics/Rect;->left:I
    if-le p0, p1, :L14
    goto :L15
  :L14
    const/4 v1, 0
  :L15
    return v1
.end method

.method private static j(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
  .registers 6
    const/16 v0, 17
    const/4 v1, 1
    const/4 v2, 0
    if-eq p0, v0, :L9
    const/16 v0, 33
    if-eq p0, v0, :L6
    const/16 v0, 66
    if-eq p0, v0, :L3
    const/16 v0, 130
    if-ne p0, v0, :L2
  .line 1
    iget p0, p1, Landroid/graphics/Rect;->bottom:I
    iget p1, p2, Landroid/graphics/Rect;->top:I
    if-gt p0, p1, :L0
    goto :L1
  :L0
    const/4 v1, 0
  :L1
    return v1
  :L2
  .line 2
    new-instance p0, Ljava/lang/IllegalArgumentException;
    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."
    invoke-direct { p0, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p0
  :L3
  .line 3
    iget p0, p1, Landroid/graphics/Rect;->right:I
    iget p1, p2, Landroid/graphics/Rect;->left:I
    if-gt p0, p1, :L4
    goto :L5
  :L4
    const/4 v1, 0
  :L5
    return v1
  :L6
  .line 4
    iget p0, p1, Landroid/graphics/Rect;->top:I
    iget p1, p2, Landroid/graphics/Rect;->bottom:I
    if-lt p0, p1, :L7
    goto :L8
  :L7
    const/4 v1, 0
  :L8
    return v1
  :L9
  .line 5
    iget p0, p1, Landroid/graphics/Rect;->left:I
    iget p1, p2, Landroid/graphics/Rect;->right:I
    if-lt p0, p1, :L10
    goto :L11
  :L10
    const/4 v1, 0
  :L11
    return v1
.end method

.method private static k(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
  .registers 3
  .line 1
    invoke-static { p0, p1, p2 }, Lc/i/b/b;->l(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    move-result p0
    const/4 p1, 0
    invoke-static { p1, p0 }, Ljava/lang/Math;->max(II)I
    move-result p0
    return p0
.end method

.method private static l(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
  .registers 4
    const/16 v0, 17
    if-eq p0, v0, :L4
    const/16 v0, 33
    if-eq p0, v0, :L3
    const/16 v0, 66
    if-eq p0, v0, :L2
    const/16 v0, 130
    if-ne p0, v0, :L1
  .line 1
    iget p0, p2, Landroid/graphics/Rect;->top:I
    iget p1, p1, Landroid/graphics/Rect;->bottom:I
  :L0
    sub-int/2addr p0, p1
    return p0
  :L1
  .line 2
    new-instance p0, Ljava/lang/IllegalArgumentException;
    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."
    invoke-direct { p0, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p0
  :L2
  .line 3
    iget p0, p2, Landroid/graphics/Rect;->left:I
    iget p1, p1, Landroid/graphics/Rect;->right:I
    goto :L0
  :L3
  .line 4
    iget p0, p1, Landroid/graphics/Rect;->top:I
    iget p1, p2, Landroid/graphics/Rect;->bottom:I
    goto :L0
  :L4
  .line 5
    iget p0, p1, Landroid/graphics/Rect;->left:I
    iget p1, p2, Landroid/graphics/Rect;->right:I
    goto :L0
.end method

.method private static m(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
  .registers 3
  .line 1
    invoke-static { p0, p1, p2 }, Lc/i/b/b;->n(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    move-result p0
    const/4 p1, 1
    invoke-static { p1, p0 }, Ljava/lang/Math;->max(II)I
    move-result p0
    return p0
.end method

.method private static n(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
  .registers 4
    const/16 v0, 17
    if-eq p0, v0, :L4
    const/16 v0, 33
    if-eq p0, v0, :L3
    const/16 v0, 66
    if-eq p0, v0, :L2
    const/16 v0, 130
    if-ne p0, v0, :L1
  .line 1
    iget p0, p2, Landroid/graphics/Rect;->bottom:I
    iget p1, p1, Landroid/graphics/Rect;->bottom:I
  :L0
    sub-int/2addr p0, p1
    return p0
  :L1
  .line 2
    new-instance p0, Ljava/lang/IllegalArgumentException;
    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."
    invoke-direct { p0, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p0
  :L2
  .line 3
    iget p0, p2, Landroid/graphics/Rect;->right:I
    iget p1, p1, Landroid/graphics/Rect;->right:I
    goto :L0
  :L3
  .line 4
    iget p0, p1, Landroid/graphics/Rect;->top:I
    iget p1, p2, Landroid/graphics/Rect;->top:I
    goto :L0
  :L4
  .line 5
    iget p0, p1, Landroid/graphics/Rect;->left:I
    iget p1, p2, Landroid/graphics/Rect;->left:I
    goto :L0
.end method

.method private static o(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
  .registers 4
    const/16 v0, 17
    if-eq p0, v0, :L2
    const/16 v0, 33
    if-eq p0, v0, :L1
    const/16 v0, 66
    if-eq p0, v0, :L2
    const/16 v0, 130
    if-ne p0, v0, :L0
    goto :L1
  :L0
  .line 1
    new-instance p0, Ljava/lang/IllegalArgumentException;
    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."
    invoke-direct { p0, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p0
  :L1
  .line 2
    iget p0, p1, Landroid/graphics/Rect;->left:I
  .line 3
    invoke-virtual { p1 }, Landroid/graphics/Rect;->width()I
    move-result p1
    div-int/lit8 p1, p1, 2
    add-int/2addr p0, p1
    iget p1, p2, Landroid/graphics/Rect;->left:I
    invoke-virtual { p2 }, Landroid/graphics/Rect;->width()I
    move-result p2
    div-int/lit8 p2, p2, 2
    add-int/2addr p1, p2
    sub-int/2addr p0, p1
  .line 4
    invoke-static { p0 }, Ljava/lang/Math;->abs(I)I
    move-result p0
    return p0
  :L2
  .line 5
    iget p0, p1, Landroid/graphics/Rect;->top:I
  .line 6
    invoke-virtual { p1 }, Landroid/graphics/Rect;->height()I
    move-result p1
    div-int/lit8 p1, p1, 2
    add-int/2addr p0, p1
    iget p1, p2, Landroid/graphics/Rect;->top:I
    invoke-virtual { p2 }, Landroid/graphics/Rect;->height()I
    move-result p2
    div-int/lit8 p2, p2, 2
    add-int/2addr p1, p2
    sub-int/2addr p0, p1
  .line 7
    invoke-static { p0 }, Ljava/lang/Math;->abs(I)I
    move-result p0
    return p0
.end method
