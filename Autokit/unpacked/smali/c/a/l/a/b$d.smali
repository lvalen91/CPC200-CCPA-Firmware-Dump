.class abstract Lc/a/l/a/b$d;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lc/a/l/a/b;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 1032
  name = "d"
.end annotation

.field A:I

.field B:I

.field C:Z

.field D:Landroid/graphics/ColorFilter;

.field E:Z

.field F:Landroid/content/res/ColorStateList;

.field G:Landroid/graphics/PorterDuff$Mode;

.field H:Z

.field I:Z

.field final a:Lc/a/l/a/b;

.field b:Landroid/content/res/Resources;

.field c:I

.field d:I

.field e:I

.field f:Landroid/util/SparseArray;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Landroid/util/SparseArray<",
      "Landroid/graphics/drawable/Drawable$ConstantState;",
      ">;"
    }
  .end annotation
.end field

.field g:[Landroid/graphics/drawable/Drawable;

.field h:I

.field i:Z

.field j:Z

.field k:Landroid/graphics/Rect;

.field l:Z

.field m:Z

.field n:I

.field o:I

.field p:I

.field q:I

.field r:Z

.field s:I

.field t:Z

.field u:Z

.field v:Z

.field w:Z

.field x:Z

.field y:Z

.field z:I

.method constructor <init>(Lc/a/l/a/b$d;Lc/a/l/a/b;Landroid/content/res/Resources;)V
  .registers 7
  .line 1
    invoke-direct { p0 }, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V
    const/4 v0, 0
  .line 2
    iput-boolean v0, p0, Lc/a/l/a/b$d;->i:Z
  .line 3
    iput-boolean v0, p0, Lc/a/l/a/b$d;->l:Z
    const/4 v1, 1
  .line 4
    iput-boolean v1, p0, Lc/a/l/a/b$d;->x:Z
  .line 5
    iput v0, p0, Lc/a/l/a/b$d;->A:I
  .line 6
    iput v0, p0, Lc/a/l/a/b$d;->B:I
  .line 7
    iput-object p2, p0, Lc/a/l/a/b$d;->a:Lc/a/l/a/b;
    const/4 p2, 0
    if-eqz p3, :L0
    move-object v2, p3
    goto :L2
  :L0
    if-eqz p1, :L1
  .line 8
    iget-object v2, p1, Lc/a/l/a/b$d;->b:Landroid/content/res/Resources;
    goto :L2
  :L1
    move-object v2, p2
  :L2
    iput-object v2, p0, Lc/a/l/a/b$d;->b:Landroid/content/res/Resources;
    if-eqz p1, :L3
  .line 9
    iget v2, p1, Lc/a/l/a/b$d;->c:I
    goto :L4
  :L3
    const/4 v2, 0
  :L4
    invoke-static { p3, v2 }, Lc/a/l/a/b;->f(Landroid/content/res/Resources;I)I
    move-result p3
    iput p3, p0, Lc/a/l/a/b$d;->c:I
    if-eqz p1, :L15
  .line 10
    iget v2, p1, Lc/a/l/a/b$d;->d:I
    iput v2, p0, Lc/a/l/a/b$d;->d:I
  .line 11
    iget v2, p1, Lc/a/l/a/b$d;->e:I
    iput v2, p0, Lc/a/l/a/b$d;->e:I
  .line 12
    iput-boolean v1, p0, Lc/a/l/a/b$d;->v:Z
  .line 13
    iput-boolean v1, p0, Lc/a/l/a/b$d;->w:Z
  .line 14
    iget-boolean v2, p1, Lc/a/l/a/b$d;->i:Z
    iput-boolean v2, p0, Lc/a/l/a/b$d;->i:Z
  .line 15
    iget-boolean v2, p1, Lc/a/l/a/b$d;->l:Z
    iput-boolean v2, p0, Lc/a/l/a/b$d;->l:Z
  .line 16
    iget-boolean v2, p1, Lc/a/l/a/b$d;->x:Z
    iput-boolean v2, p0, Lc/a/l/a/b$d;->x:Z
  .line 17
    iget-boolean v2, p1, Lc/a/l/a/b$d;->y:Z
    iput-boolean v2, p0, Lc/a/l/a/b$d;->y:Z
  .line 18
    iget v2, p1, Lc/a/l/a/b$d;->z:I
    iput v2, p0, Lc/a/l/a/b$d;->z:I
  .line 19
    iget v2, p1, Lc/a/l/a/b$d;->A:I
    iput v2, p0, Lc/a/l/a/b$d;->A:I
  .line 20
    iget v2, p1, Lc/a/l/a/b$d;->B:I
    iput v2, p0, Lc/a/l/a/b$d;->B:I
  .line 21
    iget-boolean v2, p1, Lc/a/l/a/b$d;->C:Z
    iput-boolean v2, p0, Lc/a/l/a/b$d;->C:Z
  .line 22
    iget-object v2, p1, Lc/a/l/a/b$d;->D:Landroid/graphics/ColorFilter;
    iput-object v2, p0, Lc/a/l/a/b$d;->D:Landroid/graphics/ColorFilter;
  .line 23
    iget-boolean v2, p1, Lc/a/l/a/b$d;->E:Z
    iput-boolean v2, p0, Lc/a/l/a/b$d;->E:Z
  .line 24
    iget-object v2, p1, Lc/a/l/a/b$d;->F:Landroid/content/res/ColorStateList;
    iput-object v2, p0, Lc/a/l/a/b$d;->F:Landroid/content/res/ColorStateList;
  .line 25
    iget-object v2, p1, Lc/a/l/a/b$d;->G:Landroid/graphics/PorterDuff$Mode;
    iput-object v2, p0, Lc/a/l/a/b$d;->G:Landroid/graphics/PorterDuff$Mode;
  .line 26
    iget-boolean v2, p1, Lc/a/l/a/b$d;->H:Z
    iput-boolean v2, p0, Lc/a/l/a/b$d;->H:Z
  .line 27
    iget-boolean v2, p1, Lc/a/l/a/b$d;->I:Z
    iput-boolean v2, p0, Lc/a/l/a/b$d;->I:Z
  .line 28
    iget v2, p1, Lc/a/l/a/b$d;->c:I
    if-ne v2, p3, :L7
  .line 29
    iget-boolean p3, p1, Lc/a/l/a/b$d;->j:Z
    if-eqz p3, :L6
  .line 30
    iget-object p3, p1, Lc/a/l/a/b$d;->k:Landroid/graphics/Rect;
    if-eqz p3, :L5
  .line 31
    new-instance p2, Landroid/graphics/Rect;
    iget-object p3, p1, Lc/a/l/a/b$d;->k:Landroid/graphics/Rect;
    invoke-direct { p2, p3 }, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V
  :L5
    iput-object p2, p0, Lc/a/l/a/b$d;->k:Landroid/graphics/Rect;
  .line 32
    iput-boolean v1, p0, Lc/a/l/a/b$d;->j:Z
  :L6
  .line 33
    iget-boolean p2, p1, Lc/a/l/a/b$d;->m:Z
    if-eqz p2, :L7
  .line 34
    iget p2, p1, Lc/a/l/a/b$d;->n:I
    iput p2, p0, Lc/a/l/a/b$d;->n:I
  .line 35
    iget p2, p1, Lc/a/l/a/b$d;->o:I
    iput p2, p0, Lc/a/l/a/b$d;->o:I
  .line 36
    iget p2, p1, Lc/a/l/a/b$d;->p:I
    iput p2, p0, Lc/a/l/a/b$d;->p:I
  .line 37
    iget p2, p1, Lc/a/l/a/b$d;->q:I
    iput p2, p0, Lc/a/l/a/b$d;->q:I
  .line 38
    iput-boolean v1, p0, Lc/a/l/a/b$d;->m:Z
  :L7
  .line 39
    iget-boolean p2, p1, Lc/a/l/a/b$d;->r:Z
    if-eqz p2, :L8
  .line 40
    iget p2, p1, Lc/a/l/a/b$d;->s:I
    iput p2, p0, Lc/a/l/a/b$d;->s:I
  .line 41
    iput-boolean v1, p0, Lc/a/l/a/b$d;->r:Z
  :L8
  .line 42
    iget-boolean p2, p1, Lc/a/l/a/b$d;->t:Z
    if-eqz p2, :L9
  .line 43
    iget-boolean p2, p1, Lc/a/l/a/b$d;->u:Z
    iput-boolean p2, p0, Lc/a/l/a/b$d;->u:Z
  .line 44
    iput-boolean v1, p0, Lc/a/l/a/b$d;->t:Z
  :L9
  .line 45
    iget-object p2, p1, Lc/a/l/a/b$d;->g:[Landroid/graphics/drawable/Drawable;
  .line 46
    array-length p3, p2
    new-array p3, p3, [Landroid/graphics/drawable/Drawable;
    iput-object p3, p0, Lc/a/l/a/b$d;->g:[Landroid/graphics/drawable/Drawable;
  .line 47
    iget p3, p1, Lc/a/l/a/b$d;->h:I
    iput p3, p0, Lc/a/l/a/b$d;->h:I
  .line 48
    iget-object p1, p1, Lc/a/l/a/b$d;->f:Landroid/util/SparseArray;
    if-eqz p1, :L10
  .line 49
    invoke-virtual { p1 }, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;
    move-result-object p1
    iput-object p1, p0, Lc/a/l/a/b$d;->f:Landroid/util/SparseArray;
    goto :L11
  :L10
  .line 50
    new-instance p1, Landroid/util/SparseArray;
    iget p3, p0, Lc/a/l/a/b$d;->h:I
    invoke-direct { p1, p3 }, Landroid/util/SparseArray;-><init>(I)V
    iput-object p1, p0, Lc/a/l/a/b$d;->f:Landroid/util/SparseArray;
  :L11
  .line 51
    iget p1, p0, Lc/a/l/a/b$d;->h:I
  :L12
    if-ge v0, p1, :L16
  .line 52
    aget-object p3, p2, v0
    if-eqz p3, :L14
  .line 53
    aget-object p3, p2, v0
    invoke-virtual { p3 }, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    move-result-object p3
    if-eqz p3, :L13
  .line 54
    iget-object v1, p0, Lc/a/l/a/b$d;->f:Landroid/util/SparseArray;
    invoke-virtual { v1, v0, p3 }, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    goto :L14
  :L13
  .line 55
    iget-object p3, p0, Lc/a/l/a/b$d;->g:[Landroid/graphics/drawable/Drawable;
    aget-object v1, p2, v0
    aput-object v1, p3, v0
  :L14
    add-int/lit8 v0, v0, 1
    goto :L12
  :L15
    const/16 p1, 10
    new-array p1, p1, [Landroid/graphics/drawable/Drawable;
  .line 56
    iput-object p1, p0, Lc/a/l/a/b$d;->g:[Landroid/graphics/drawable/Drawable;
  .line 57
    iput v0, p0, Lc/a/l/a/b$d;->h:I
  :L16
    return-void
.end method

.method private e()V
  .registers 7
  .line 1
    iget-object v0, p0, Lc/a/l/a/b$d;->f:Landroid/util/SparseArray;
    if-eqz v0, :L2
  .line 2
    invoke-virtual { v0 }, Landroid/util/SparseArray;->size()I
    move-result v0
    const/4 v1, 0
  :L0
    if-ge v1, v0, :L1
  .line 3
    iget-object v2, p0, Lc/a/l/a/b$d;->f:Landroid/util/SparseArray;
    invoke-virtual { v2, v1 }, Landroid/util/SparseArray;->keyAt(I)I
    move-result v2
  .line 4
    iget-object v3, p0, Lc/a/l/a/b$d;->f:Landroid/util/SparseArray;
    invoke-virtual { v3, v1 }, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Landroid/graphics/drawable/Drawable$ConstantState;
  .line 5
    iget-object v4, p0, Lc/a/l/a/b$d;->g:[Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lc/a/l/a/b$d;->b:Landroid/content/res/Resources;
    invoke-virtual { v3, v5 }, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    move-result-object v3
    invoke-direct { p0, v3 }, Lc/a/l/a/b$d;->s(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    move-result-object v3
    aput-object v3, v4, v2
    add-int/lit8 v1, v1, 1
    goto :L0
  :L1
    const/4 v0, 0
  .line 6
    iput-object v0, p0, Lc/a/l/a/b$d;->f:Landroid/util/SparseArray;
  :L2
    return-void
.end method

.method private s(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 23
    if-lt v0, v1, :L0
  .line 2
    iget v0, p0, Lc/a/l/a/b$d;->z:I
    invoke-static { p1, v0 }, Landroidx/core/graphics/drawable/a;->m(Landroid/graphics/drawable/Drawable;I)Z
  :L0
  .line 3
    invoke-virtual { p1 }, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
    move-result-object p1
  .line 4
    iget-object v0, p0, Lc/a/l/a/b$d;->a:Lc/a/l/a/b;
    invoke-virtual { p1, v0 }, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
    return-object p1
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)I
  .registers 6
  .line 1
    iget v0, p0, Lc/a/l/a/b$d;->h:I
  .line 2
    iget-object v1, p0, Lc/a/l/a/b$d;->g:[Landroid/graphics/drawable/Drawable;
    array-length v1, v1
    if-lt v0, v1, :L0
    add-int/lit8 v1, v0, 10
  .line 3
    invoke-virtual { p0, v0, v1 }, Lc/a/l/a/b$d;->o(II)V
  :L0
  .line 4
    invoke-virtual { p1 }, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
    const/4 v1, 0
    const/4 v2, 1
  .line 5
    invoke-virtual { p1, v1, v2 }, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z
  .line 6
    iget-object v3, p0, Lc/a/l/a/b$d;->a:Lc/a/l/a/b;
    invoke-virtual { p1, v3 }, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
  .line 7
    iget-object v3, p0, Lc/a/l/a/b$d;->g:[Landroid/graphics/drawable/Drawable;
    aput-object p1, v3, v0
  .line 8
    iget v3, p0, Lc/a/l/a/b$d;->h:I
    add-int/2addr v3, v2
    iput v3, p0, Lc/a/l/a/b$d;->h:I
  .line 9
    iget v2, p0, Lc/a/l/a/b$d;->e:I
    invoke-virtual { p1 }, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I
    move-result p1
    or-int/2addr p1, v2
    iput p1, p0, Lc/a/l/a/b$d;->e:I
  .line 10
    invoke-virtual { p0 }, Lc/a/l/a/b$d;->p()V
    const/4 p1, 0
  .line 11
    iput-object p1, p0, Lc/a/l/a/b$d;->k:Landroid/graphics/Rect;
  .line 12
    iput-boolean v1, p0, Lc/a/l/a/b$d;->j:Z
  .line 13
    iput-boolean v1, p0, Lc/a/l/a/b$d;->m:Z
  .line 14
    iput-boolean v1, p0, Lc/a/l/a/b$d;->v:Z
    return v0
.end method

.method final b(Landroid/content/res/Resources$Theme;)V
  .registers 7
    if-eqz p1, :L3
  .line 1
    invoke-direct { p0 }, Lc/a/l/a/b$d;->e()V
  .line 2
    iget v0, p0, Lc/a/l/a/b$d;->h:I
  .line 3
    iget-object v1, p0, Lc/a/l/a/b$d;->g:[Landroid/graphics/drawable/Drawable;
    const/4 v2, 0
  :L0
    if-ge v2, v0, :L2
  .line 4
    aget-object v3, v1, v2
    if-eqz v3, :L1
    aget-object v3, v1, v2
    invoke-static { v3 }, Landroidx/core/graphics/drawable/a;->b(Landroid/graphics/drawable/Drawable;)Z
    move-result v3
    if-eqz v3, :L1
  .line 5
    aget-object v3, v1, v2
    invoke-static { v3, p1 }, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V
  .line 6
    iget v3, p0, Lc/a/l/a/b$d;->e:I
    aget-object v4, v1, v2
    invoke-virtual { v4 }, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I
    move-result v4
    or-int/2addr v3, v4
    iput v3, p0, Lc/a/l/a/b$d;->e:I
  :L1
    add-int/lit8 v2, v2, 1
    goto :L0
  :L2
  .line 7
    invoke-static { p1 }, Lc/a/l/a/b$b;->c(Landroid/content/res/Resources$Theme;)Landroid/content/res/Resources;
    move-result-object p1
    invoke-virtual { p0, p1 }, Lc/a/l/a/b$d;->y(Landroid/content/res/Resources;)V
  :L3
    return-void
.end method

.method public c()Z
  .registers 7
  .line 1
    iget-boolean v0, p0, Lc/a/l/a/b$d;->v:Z
    if-eqz v0, :L0
  .line 2
    iget-boolean v0, p0, Lc/a/l/a/b$d;->w:Z
    return v0
  :L0
  .line 3
    invoke-direct { p0 }, Lc/a/l/a/b$d;->e()V
    const/4 v0, 1
  .line 4
    iput-boolean v0, p0, Lc/a/l/a/b$d;->v:Z
  .line 5
    iget v1, p0, Lc/a/l/a/b$d;->h:I
  .line 6
    iget-object v2, p0, Lc/a/l/a/b$d;->g:[Landroid/graphics/drawable/Drawable;
    const/4 v3, 0
    const/4 v4, 0
  :L1
    if-ge v4, v1, :L3
  .line 7
    aget-object v5, v2, v4
    invoke-virtual { v5 }, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    move-result-object v5
    if-nez v5, :L2
  .line 8
    iput-boolean v3, p0, Lc/a/l/a/b$d;->w:Z
    return v3
  :L2
    add-int/lit8 v4, v4, 1
    goto :L1
  :L3
  .line 9
    iput-boolean v0, p0, Lc/a/l/a/b$d;->w:Z
    return v0
.end method

.method public canApplyTheme()Z
  .registers 7
  .line 1
    iget v0, p0, Lc/a/l/a/b$d;->h:I
  .line 2
    iget-object v1, p0, Lc/a/l/a/b$d;->g:[Landroid/graphics/drawable/Drawable;
    const/4 v2, 0
    const/4 v3, 0
  :L0
    if-ge v3, v0, :L3
  .line 3
    aget-object v4, v1, v3
    const/4 v5, 1
    if-eqz v4, :L1
  .line 4
    invoke-static { v4 }, Landroidx/core/graphics/drawable/a;->b(Landroid/graphics/drawable/Drawable;)Z
    move-result v4
    if-eqz v4, :L2
    return v5
  :L1
  .line 5
    iget-object v4, p0, Lc/a/l/a/b$d;->f:Landroid/util/SparseArray;
    invoke-virtual { v4, v3 }, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v4, :L2
  .line 6
    invoke-static { v4 }, Lc/a/l/a/b$b;->a(Landroid/graphics/drawable/Drawable$ConstantState;)Z
    move-result v4
    if-eqz v4, :L2
    return v5
  :L2
    add-int/lit8 v3, v3, 1
    goto :L0
  :L3
    return v2
.end method

.method protected d()V
  .registers 7
    const/4 v0, 1
  .line 1
    iput-boolean v0, p0, Lc/a/l/a/b$d;->m:Z
  .line 2
    invoke-direct { p0 }, Lc/a/l/a/b$d;->e()V
  .line 3
    iget v0, p0, Lc/a/l/a/b$d;->h:I
  .line 4
    iget-object v1, p0, Lc/a/l/a/b$d;->g:[Landroid/graphics/drawable/Drawable;
    const/4 v2, -1
  .line 5
    iput v2, p0, Lc/a/l/a/b$d;->o:I
    iput v2, p0, Lc/a/l/a/b$d;->n:I
    const/4 v2, 0
  .line 6
    iput v2, p0, Lc/a/l/a/b$d;->q:I
    iput v2, p0, Lc/a/l/a/b$d;->p:I
  :L0
    if-ge v2, v0, :L5
  .line 7
    aget-object v3, v1, v2
  .line 8
    invoke-virtual { v3 }, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
    move-result v4
  .line 9
    iget v5, p0, Lc/a/l/a/b$d;->n:I
    if-le v4, v5, :L1
    iput v4, p0, Lc/a/l/a/b$d;->n:I
  :L1
  .line 10
    invoke-virtual { v3 }, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    move-result v4
  .line 11
    iget v5, p0, Lc/a/l/a/b$d;->o:I
    if-le v4, v5, :L2
    iput v4, p0, Lc/a/l/a/b$d;->o:I
  :L2
  .line 12
    invoke-virtual { v3 }, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I
    move-result v4
  .line 13
    iget v5, p0, Lc/a/l/a/b$d;->p:I
    if-le v4, v5, :L3
    iput v4, p0, Lc/a/l/a/b$d;->p:I
  :L3
  .line 14
    invoke-virtual { v3 }, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I
    move-result v3
  .line 15
    iget v4, p0, Lc/a/l/a/b$d;->q:I
    if-le v3, v4, :L4
    iput v3, p0, Lc/a/l/a/b$d;->q:I
  :L4
    add-int/lit8 v2, v2, 1
    goto :L0
  :L5
    return-void
.end method

.method final f()I
  .registers 2
  .line 1
    iget-object v0, p0, Lc/a/l/a/b$d;->g:[Landroid/graphics/drawable/Drawable;
    array-length v0, v0
    return v0
.end method

.method public final g(I)Landroid/graphics/drawable/Drawable;
  .registers 6
  .line 1
    iget-object v0, p0, Lc/a/l/a/b$d;->g:[Landroid/graphics/drawable/Drawable;
    aget-object v0, v0, p1
    if-eqz v0, :L0
    return-object v0
  :L0
  .line 2
    iget-object v0, p0, Lc/a/l/a/b$d;->f:Landroid/util/SparseArray;
    const/4 v1, 0
    if-eqz v0, :L2
  .line 3
    invoke-virtual { v0, p1 }, Landroid/util/SparseArray;->indexOfKey(I)I
    move-result v0
    if-ltz v0, :L2
  .line 4
    iget-object v2, p0, Lc/a/l/a/b$d;->f:Landroid/util/SparseArray;
    invoke-virtual { v2, v0 }, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroid/graphics/drawable/Drawable$ConstantState;
  .line 5
    iget-object v3, p0, Lc/a/l/a/b$d;->b:Landroid/content/res/Resources;
    invoke-virtual { v2, v3 }, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    move-result-object v2
    invoke-direct { p0, v2 }, Lc/a/l/a/b$d;->s(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    move-result-object v2
  .line 6
    iget-object v3, p0, Lc/a/l/a/b$d;->g:[Landroid/graphics/drawable/Drawable;
    aput-object v2, v3, p1
  .line 7
    iget-object p1, p0, Lc/a/l/a/b$d;->f:Landroid/util/SparseArray;
    invoke-virtual { p1, v0 }, Landroid/util/SparseArray;->removeAt(I)V
  .line 8
    iget-object p1, p0, Lc/a/l/a/b$d;->f:Landroid/util/SparseArray;
    invoke-virtual { p1 }, Landroid/util/SparseArray;->size()I
    move-result p1
    if-nez p1, :L1
  .line 9
    iput-object v1, p0, Lc/a/l/a/b$d;->f:Landroid/util/SparseArray;
  :L1
    return-object v2
  :L2
    return-object v1
.end method

.method public getChangingConfigurations()I
  .registers 3
  .line 1
    iget v0, p0, Lc/a/l/a/b$d;->d:I
    iget v1, p0, Lc/a/l/a/b$d;->e:I
    or-int/2addr v0, v1
    return v0
.end method

.method public final h()I
  .registers 2
  .line 1
    iget v0, p0, Lc/a/l/a/b$d;->h:I
    return v0
.end method

.method public final i()I
  .registers 2
  .line 1
    iget-boolean v0, p0, Lc/a/l/a/b$d;->m:Z
    if-nez v0, :L0
  .line 2
    invoke-virtual { p0 }, Lc/a/l/a/b$d;->d()V
  :L0
  .line 3
    iget v0, p0, Lc/a/l/a/b$d;->o:I
    return v0
.end method

.method public final j()I
  .registers 2
  .line 1
    iget-boolean v0, p0, Lc/a/l/a/b$d;->m:Z
    if-nez v0, :L0
  .line 2
    invoke-virtual { p0 }, Lc/a/l/a/b$d;->d()V
  :L0
  .line 3
    iget v0, p0, Lc/a/l/a/b$d;->q:I
    return v0
.end method

.method public final k()I
  .registers 2
  .line 1
    iget-boolean v0, p0, Lc/a/l/a/b$d;->m:Z
    if-nez v0, :L0
  .line 2
    invoke-virtual { p0 }, Lc/a/l/a/b$d;->d()V
  :L0
  .line 3
    iget v0, p0, Lc/a/l/a/b$d;->p:I
    return v0
.end method

.method public final l()Landroid/graphics/Rect;
  .registers 9
  .line 1
    iget-boolean v0, p0, Lc/a/l/a/b$d;->i:Z
    const/4 v1, 0
    if-eqz v0, :L0
    return-object v1
  :L0
  .line 2
    iget-object v0, p0, Lc/a/l/a/b$d;->k:Landroid/graphics/Rect;
    if-nez v0, :L9
    iget-boolean v0, p0, Lc/a/l/a/b$d;->j:Z
    if-eqz v0, :L1
    goto :L9
  :L1
  .line 3
    invoke-direct { p0 }, Lc/a/l/a/b$d;->e()V
  .line 4
    new-instance v0, Landroid/graphics/Rect;
    invoke-direct { v0 }, Landroid/graphics/Rect;-><init>()V
  .line 5
    iget v2, p0, Lc/a/l/a/b$d;->h:I
  .line 6
    iget-object v3, p0, Lc/a/l/a/b$d;->g:[Landroid/graphics/drawable/Drawable;
    const/4 v4, 0
    const/4 v5, 0
  :L2
    if-ge v5, v2, :L8
  .line 7
    aget-object v6, v3, v5
    invoke-virtual { v6, v0 }, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z
    move-result v6
    if-eqz v6, :L7
    if-nez v1, :L3
  .line 8
    new-instance v1, Landroid/graphics/Rect;
    invoke-direct { v1, v4, v4, v4, v4 }, Landroid/graphics/Rect;-><init>(IIII)V
  :L3
  .line 9
    iget v6, v0, Landroid/graphics/Rect;->left:I
    iget v7, v1, Landroid/graphics/Rect;->left:I
    if-le v6, v7, :L4
    iput v6, v1, Landroid/graphics/Rect;->left:I
  :L4
  .line 10
    iget v6, v0, Landroid/graphics/Rect;->top:I
    iget v7, v1, Landroid/graphics/Rect;->top:I
    if-le v6, v7, :L5
    iput v6, v1, Landroid/graphics/Rect;->top:I
  :L5
  .line 11
    iget v6, v0, Landroid/graphics/Rect;->right:I
    iget v7, v1, Landroid/graphics/Rect;->right:I
    if-le v6, v7, :L6
    iput v6, v1, Landroid/graphics/Rect;->right:I
  :L6
  .line 12
    iget v6, v0, Landroid/graphics/Rect;->bottom:I
    iget v7, v1, Landroid/graphics/Rect;->bottom:I
    if-le v6, v7, :L7
    iput v6, v1, Landroid/graphics/Rect;->bottom:I
  :L7
    add-int/lit8 v5, v5, 1
    goto :L2
  :L8
    const/4 v0, 1
  .line 13
    iput-boolean v0, p0, Lc/a/l/a/b$d;->j:Z
  .line 14
    iput-object v1, p0, Lc/a/l/a/b$d;->k:Landroid/graphics/Rect;
    return-object v1
  :L9
  .line 15
    iget-object v0, p0, Lc/a/l/a/b$d;->k:Landroid/graphics/Rect;
    return-object v0
.end method

.method public final m()I
  .registers 2
  .line 1
    iget-boolean v0, p0, Lc/a/l/a/b$d;->m:Z
    if-nez v0, :L0
  .line 2
    invoke-virtual { p0 }, Lc/a/l/a/b$d;->d()V
  :L0
  .line 3
    iget v0, p0, Lc/a/l/a/b$d;->n:I
    return v0
.end method

.method public final n()I
  .registers 7
  .line 1
    iget-boolean v0, p0, Lc/a/l/a/b$d;->r:Z
    if-eqz v0, :L0
  .line 2
    iget v0, p0, Lc/a/l/a/b$d;->s:I
    return v0
  :L0
  .line 3
    invoke-direct { p0 }, Lc/a/l/a/b$d;->e()V
  .line 4
    iget v0, p0, Lc/a/l/a/b$d;->h:I
  .line 5
    iget-object v1, p0, Lc/a/l/a/b$d;->g:[Landroid/graphics/drawable/Drawable;
    if-lez v0, :L1
    const/4 v2, 0
  .line 6
    aget-object v2, v1, v2
    invoke-virtual { v2 }, Landroid/graphics/drawable/Drawable;->getOpacity()I
    move-result v2
    goto :L2
  :L1
    const/4 v2, -2
  :L2
    const/4 v3, 1
    const/4 v4, 1
  :L3
    if-ge v4, v0, :L4
  .line 7
    aget-object v5, v1, v4
    invoke-virtual { v5 }, Landroid/graphics/drawable/Drawable;->getOpacity()I
    move-result v5
    invoke-static { v2, v5 }, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I
    move-result v2
    add-int/lit8 v4, v4, 1
    goto :L3
  :L4
  .line 8
    iput v2, p0, Lc/a/l/a/b$d;->s:I
  .line 9
    iput-boolean v3, p0, Lc/a/l/a/b$d;->r:Z
    return v2
.end method

.method public o(II)V
  .registers 5
  .line 1
    new-array p2, p2, [Landroid/graphics/drawable/Drawable;
  .line 2
    iget-object v0, p0, Lc/a/l/a/b$d;->g:[Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L0
    const/4 v1, 0
  .line 3
    invoke-static { v0, v1, p2, v1, p1 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  :L0
  .line 4
    iput-object p2, p0, Lc/a/l/a/b$d;->g:[Landroid/graphics/drawable/Drawable;
    return-void
.end method

.method p()V
  .registers 2
    const/4 v0, 0
  .line 1
    iput-boolean v0, p0, Lc/a/l/a/b$d;->r:Z
  .line 2
    iput-boolean v0, p0, Lc/a/l/a/b$d;->t:Z
    return-void
.end method

.method public final q()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Lc/a/l/a/b$d;->l:Z
    return v0
.end method

.method abstract r()V
.end method

.method public final t(Z)V
  .registers 2
  .line 1
    iput-boolean p1, p0, Lc/a/l/a/b$d;->l:Z
    return-void
.end method

.method public final u(I)V
  .registers 2
  .line 1
    iput p1, p0, Lc/a/l/a/b$d;->A:I
    return-void
.end method

.method public final v(I)V
  .registers 2
  .line 1
    iput p1, p0, Lc/a/l/a/b$d;->B:I
    return-void
.end method

.method final w(II)Z
  .registers 10
  .line 1
    iget v0, p0, Lc/a/l/a/b$d;->h:I
  .line 2
    iget-object v1, p0, Lc/a/l/a/b$d;->g:[Landroid/graphics/drawable/Drawable;
    const/4 v2, 0
    const/4 v3, 0
    const/4 v4, 0
  :L0
    if-ge v3, v0, :L4
  .line 3
    aget-object v5, v1, v3
    if-eqz v5, :L3
  .line 4
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v6, 23
    if-lt v5, v6, :L1
  .line 5
    aget-object v5, v1, v3
  .line 6
    invoke-static { v5, p1 }, Landroidx/core/graphics/drawable/a;->m(Landroid/graphics/drawable/Drawable;I)Z
    move-result v5
    goto :L2
  :L1
    const/4 v5, 0
  :L2
    if-ne v3, p2, :L3
    move v4, v5
  :L3
    add-int/lit8 v3, v3, 1
    goto :L0
  :L4
  .line 7
    iput p1, p0, Lc/a/l/a/b$d;->z:I
    return v4
.end method

.method public final x(Z)V
  .registers 2
  .line 1
    iput-boolean p1, p0, Lc/a/l/a/b$d;->i:Z
    return-void
.end method

.method final y(Landroid/content/res/Resources;)V
  .registers 3
    if-eqz p1, :L0
  .line 1
    iput-object p1, p0, Lc/a/l/a/b$d;->b:Landroid/content/res/Resources;
  .line 2
    iget v0, p0, Lc/a/l/a/b$d;->c:I
    invoke-static { p1, v0 }, Lc/a/l/a/b;->f(Landroid/content/res/Resources;I)I
    move-result p1
  .line 3
    iget v0, p0, Lc/a/l/a/b$d;->c:I
  .line 4
    iput p1, p0, Lc/a/l/a/b$d;->c:I
    if-eq v0, p1, :L0
    const/4 p1, 0
  .line 5
    iput-boolean p1, p0, Lc/a/l/a/b$d;->m:Z
  .line 6
    iput-boolean p1, p0, Lc/a/l/a/b$d;->j:Z
  :L0
    return-void
.end method
