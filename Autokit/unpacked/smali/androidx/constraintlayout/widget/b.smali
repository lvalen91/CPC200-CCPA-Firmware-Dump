.class public abstract Landroidx/constraintlayout/widget/b;
.super Landroid/view/View;
.source "SourceFile"

.field protected b:[I

.field protected c:I

.field protected d:Landroid/content/Context;

.field protected e:Lc/e/b/k/h;

.field protected f:Z

.field protected g:Ljava/lang/String;

.field protected h:Ljava/lang/String;

.field private i:Ljava/util/HashMap;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/HashMap<",
      "Ljava/lang/Integer;",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
.end field

.method public constructor <init>(Landroid/content/Context;)V
  .registers 3
  .line 1
    invoke-direct { p0, p1 }, Landroid/view/View;-><init>(Landroid/content/Context;)V
    const/16 v0, 32
    new-array v0, v0, [I
  .line 2
    iput-object v0, p0, Landroidx/constraintlayout/widget/b;->b:[I
    const/4 v0, 0
  .line 3
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/b;->f:Z
  .line 4
    new-instance v0, Ljava/util/HashMap;
    invoke-direct { v0 }, Ljava/util/HashMap;-><init>()V
    iput-object v0, p0, Landroidx/constraintlayout/widget/b;->i:Ljava/util/HashMap;
  .line 5
    iput-object p1, p0, Landroidx/constraintlayout/widget/b;->d:Landroid/content/Context;
    const/4 p1, 0
  .line 6
    invoke-virtual { p0, p1 }, Landroidx/constraintlayout/widget/b;->h(Landroid/util/AttributeSet;)V
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 4
  .line 7
    invoke-direct { p0, p1, p2 }, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    const/16 v0, 32
    new-array v0, v0, [I
  .line 8
    iput-object v0, p0, Landroidx/constraintlayout/widget/b;->b:[I
    const/4 v0, 0
  .line 9
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/b;->f:Z
  .line 10
    new-instance v0, Ljava/util/HashMap;
    invoke-direct { v0 }, Ljava/util/HashMap;-><init>()V
    iput-object v0, p0, Landroidx/constraintlayout/widget/b;->i:Ljava/util/HashMap;
  .line 11
    iput-object p1, p0, Landroidx/constraintlayout/widget/b;->d:Landroid/content/Context;
  .line 12
    invoke-virtual { p0, p2 }, Landroidx/constraintlayout/widget/b;->h(Landroid/util/AttributeSet;)V
    return-void
.end method

.method private a(Ljava/lang/String;)V
  .registers 5
    if-eqz p1, :L4
  .line 1
    invoke-virtual { p1 }, Ljava/lang/String;->length()I
    move-result v0
    if-nez v0, :L0
    goto :L4
  :L0
  .line 2
    iget-object v0, p0, Landroidx/constraintlayout/widget/b;->d:Landroid/content/Context;
    if-nez v0, :L1
    return-void
  :L1
  .line 3
    invoke-virtual { p1 }, Ljava/lang/String;->trim()Ljava/lang/String;
    move-result-object p1
  .line 4
    invoke-virtual { p0 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v0
    instance-of v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;
    if-eqz v0, :L2
  .line 5
    invoke-virtual { p0 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v0
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;
  :L2
  .line 6
    invoke-direct { p0, p1 }, Landroidx/constraintlayout/widget/b;->g(Ljava/lang/String;)I
    move-result v0
    if-eqz v0, :L3
  .line 7
    iget-object v1, p0, Landroidx/constraintlayout/widget/b;->i:Ljava/util/HashMap;
    invoke-static { v0 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    invoke-virtual { v1, v2, p1 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 8
    invoke-direct { p0, v0 }, Landroidx/constraintlayout/widget/b;->b(I)V
    goto :L4
  :L3
  .line 9
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Could not find id of \""
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p1, "\""
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L4
    return-void
.end method

.method private b(I)V
  .registers 5
  .line 1
    invoke-virtual { p0 }, Landroid/view/View;->getId()I
    move-result v0
    if-ne p1, v0, :L0
    return-void
  :L0
  .line 2
    iget v0, p0, Landroidx/constraintlayout/widget/b;->c:I
    add-int/lit8 v0, v0, 1
    iget-object v1, p0, Landroidx/constraintlayout/widget/b;->b:[I
    array-length v2, v1
    if-le v0, v2, :L1
  .line 3
    array-length v0, v1
    mul-int/lit8 v0, v0, 2
    invoke-static { v1, v0 }, Ljava/util/Arrays;->copyOf([II)[I
    move-result-object v0
    iput-object v0, p0, Landroidx/constraintlayout/widget/b;->b:[I
  :L1
  .line 4
    iget-object v0, p0, Landroidx/constraintlayout/widget/b;->b:[I
    iget v1, p0, Landroidx/constraintlayout/widget/b;->c:I
    aput p1, v0, v1
    add-int/lit8 v1, v1, 1
  .line 5
    iput v1, p0, Landroidx/constraintlayout/widget/b;->c:I
    return-void
.end method

.method private c(Ljava/lang/String;)V
  .registers 8
    if-eqz p1, :L7
  .line 1
    invoke-virtual { p1 }, Ljava/lang/String;->length()I
    move-result v0
    if-nez v0, :L0
    goto :L7
  :L0
  .line 2
    iget-object v0, p0, Landroidx/constraintlayout/widget/b;->d:Landroid/content/Context;
    if-nez v0, :L1
    return-void
  :L1
  .line 3
    invoke-virtual { p1 }, Ljava/lang/String;->trim()Ljava/lang/String;
    move-result-object p1
    const/4 v0, 0
  .line 4
    invoke-virtual { p0 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v1
    instance-of v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout;
    if-eqz v1, :L2
  .line 5
    invoke-virtual { p0 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v0
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;
  :L2
    if-nez v0, :L3
    return-void
  :L3
  .line 6
    invoke-virtual { v0 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v1
    const/4 v2, 0
  :L4
    if-ge v2, v1, :L7
  .line 7
    invoke-virtual { v0, v2 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v3
  .line 8
    invoke-virtual { v3 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v4
  .line 9
    instance-of v5, v4, Landroidx/constraintlayout/widget/ConstraintLayout$b;
    if-eqz v5, :L6
  .line 10
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$b;
  .line 11
    iget-object v4, v4, Landroidx/constraintlayout/widget/ConstraintLayout$b;->U:Ljava/lang/String;
    invoke-virtual { p1, v4 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v4
    if-eqz v4, :L6
  .line 12
    invoke-virtual { v3 }, Landroid/view/View;->getId()I
    move-result v4
    const/4 v5, -1
    if-ne v4, v5, :L5
  .line 13
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "to use ConstraintTag view "
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v3
    invoke-virtual { v3 }, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v4, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v3, " must have an ID"
    invoke-virtual { v4, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    goto :L6
  :L5
  .line 14
    invoke-virtual { v3 }, Landroid/view/View;->getId()I
    move-result v3
    invoke-direct { p0, v3 }, Landroidx/constraintlayout/widget/b;->b(I)V
  :L6
    add-int/lit8 v2, v2, 1
    goto :L4
  :L7
    return-void
.end method

.method private f(Landroidx/constraintlayout/widget/ConstraintLayout;Ljava/lang/String;)I
  .catch Landroid/content/res/Resources$NotFoundException; { :L3 .. :L4 } :L5
  .registers 10
    const/4 v0, 0
    if-eqz p2, :L8
    if-nez p1, :L0
    goto :L8
  :L0
  .line 1
    iget-object v1, p0, Landroidx/constraintlayout/widget/b;->d:Landroid/content/Context;
    invoke-virtual { v1 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v1
    if-nez v1, :L1
    return v0
  :L1
  .line 2
    invoke-virtual { p1 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v2
    const/4 v3, 0
  :L2
    if-ge v3, v2, :L8
  .line 3
    invoke-virtual { p1, v3 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v4
  .line 4
    invoke-virtual { v4 }, Landroid/view/View;->getId()I
    move-result v5
    const/4 v6, -1
    if-eq v5, v6, :L7
    const/4 v5, 0
  :L3
  .line 5
    invoke-virtual { v4 }, Landroid/view/View;->getId()I
    move-result v6
    invoke-virtual { v1, v6 }, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;
    move-result-object v5
  :L4
    goto :L6
  :L5
    nop
  :L6
  .line 6
    invoke-virtual { p2, v5 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v5
    if-eqz v5, :L7
  .line 7
    invoke-virtual { v4 }, Landroid/view/View;->getId()I
    move-result p1
    return p1
  :L7
    add-int/lit8 v3, v3, 1
    goto :L2
  :L8
    return v0
.end method

.method private g(Ljava/lang/String;)I
  .catch Ljava/lang/Exception; { :L4 .. :L5 } :L6
  .registers 7
  .line 1
    invoke-virtual { p0 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v0
    instance-of v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;
    const/4 v1, 0
    if-eqz v0, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v0
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;
    goto :L1
  :L0
    move-object v0, v1
  :L1
  .line 3
    invoke-virtual { p0 }, Landroid/view/View;->isInEditMode()Z
    move-result v2
    const/4 v3, 0
    if-eqz v2, :L2
    if-eqz v0, :L2
  .line 4
    invoke-virtual { v0, v3, p1 }, Landroidx/constraintlayout/widget/ConstraintLayout;->g(ILjava/lang/Object;)Ljava/lang/Object;
    move-result-object v2
  .line 5
    instance-of v4, v2, Ljava/lang/Integer;
    if-eqz v4, :L2
  .line 6
    check-cast v2, Ljava/lang/Integer;
    invoke-virtual { v2 }, Ljava/lang/Integer;->intValue()I
    move-result v3
  :L2
    if-nez v3, :L3
    if-eqz v0, :L3
  .line 7
    invoke-direct { p0, v0, p1 }, Landroidx/constraintlayout/widget/b;->f(Landroidx/constraintlayout/widget/ConstraintLayout;Ljava/lang/String;)I
    move-result v3
  :L3
    if-nez v3, :L7
  :L4
  .line 8
    const-class v0, Landroidx/constraintlayout/widget/h;
  .line 9
    invoke-virtual { v0, p1 }, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    move-result-object v0
  .line 10
    invoke-virtual { v0, v1 }, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    move-result v3
  :L5
    goto :L7
  :L6
    nop
  :L7
    if-nez v3, :L8
  .line 11
    iget-object v0, p0, Landroidx/constraintlayout/widget/b;->d:Landroid/content/Context;
    invoke-virtual { v0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    iget-object v1, p0, Landroidx/constraintlayout/widget/b;->d:Landroid/content/Context;
  .line 12
    invoke-virtual { v1 }, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    move-result-object v1
    const-string v2, "id"
  .line 13
    invoke-virtual { v0, p1, v2, v1 }, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    move-result v3
  :L8
    return v3
.end method

.method protected d()V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v0
    if-eqz v0, :L0
  .line 2
    instance-of v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;
    if-eqz v1, :L0
  .line 3
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;
    invoke-virtual { p0, v0 }, Landroidx/constraintlayout/widget/b;->e(Landroidx/constraintlayout/widget/ConstraintLayout;)V
  :L0
    return-void
.end method

.method protected e(Landroidx/constraintlayout/widget/ConstraintLayout;)V
  .registers 9
  .line 1
    invoke-virtual { p0 }, Landroid/view/View;->getVisibility()I
    move-result v0
  .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 21
    const/4 v3, 0
    if-lt v1, v2, :L0
  .line 3
    invoke-virtual { p0 }, Landroid/view/View;->getElevation()F
    move-result v1
    goto :L1
  :L0
    const/4 v1, 0
  :L1
    const/4 v4, 0
  :L2
  .line 4
    iget v5, p0, Landroidx/constraintlayout/widget/b;->c:I
    if-ge v4, v5, :L4
  .line 5
    iget-object v5, p0, Landroidx/constraintlayout/widget/b;->b:[I
    aget v5, v5, v4
  .line 6
    invoke-virtual { p1, v5 }, Landroidx/constraintlayout/widget/ConstraintLayout;->i(I)Landroid/view/View;
    move-result-object v5
    if-eqz v5, :L3
  .line 7
    invoke-virtual { v5, v0 }, Landroid/view/View;->setVisibility(I)V
    cmpl-float v6, v1, v3
    if-lez v6, :L3
  .line 8
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt v6, v2, :L3
  .line 9
    invoke-virtual { v5 }, Landroid/view/View;->getTranslationZ()F
    move-result v6
    add-float/2addr v6, v1
    invoke-virtual { v5, v6 }, Landroid/view/View;->setTranslationZ(F)V
  :L3
    add-int/lit8 v4, v4, 1
    goto :L2
  :L4
    return-void
.end method

.method public getReferencedIds()[I
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/b;->b:[I
    iget v1, p0, Landroidx/constraintlayout/widget/b;->c:I
    invoke-static { v0, v1 }, Ljava/util/Arrays;->copyOf([II)[I
    move-result-object v0
    return-object v0
.end method

.method protected h(Landroid/util/AttributeSet;)V
  .registers 6
    if-eqz p1, :L4
  .line 1
    invoke-virtual { p0 }, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v0
    sget-object v1, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout:[I
    invoke-virtual { v0, p1, v1 }, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    move-result-object p1
  .line 2
    invoke-virtual { p1 }, Landroid/content/res/TypedArray;->getIndexCount()I
    move-result v0
    const/4 v1, 0
  :L0
    if-ge v1, v0, :L3
  .line 3
    invoke-virtual { p1, v1 }, Landroid/content/res/TypedArray;->getIndex(I)I
    move-result v2
  .line 4
    sget v3, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_constraint_referenced_ids:I
    if-ne v2, v3, :L1
  .line 5
    invoke-virtual { p1, v2 }, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
    move-result-object v2
    iput-object v2, p0, Landroidx/constraintlayout/widget/b;->g:Ljava/lang/String;
  .line 6
    invoke-virtual { p0, v2 }, Landroidx/constraintlayout/widget/b;->setIds(Ljava/lang/String;)V
    goto :L2
  :L1
  .line 7
    sget v3, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_constraint_referenced_tags:I
    if-ne v2, v3, :L2
  .line 8
    invoke-virtual { p1, v2 }, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
    move-result-object v2
    iput-object v2, p0, Landroidx/constraintlayout/widget/b;->h:Ljava/lang/String;
  .line 9
    invoke-virtual { p0, v2 }, Landroidx/constraintlayout/widget/b;->setReferenceTags(Ljava/lang/String;)V
  :L2
    add-int/lit8 v1, v1, 1
    goto :L0
  :L3
  .line 10
    invoke-virtual { p1 }, Landroid/content/res/TypedArray;->recycle()V
  :L4
    return-void
.end method

.method public i(Lc/e/b/k/e;Z)V
  .registers 3
    return-void
.end method

.method public j(Landroidx/constraintlayout/widget/ConstraintLayout;)V
  .registers 2
    return-void
.end method

.method public k(Landroidx/constraintlayout/widget/ConstraintLayout;)V
  .registers 2
    return-void
.end method

.method public l(Landroidx/constraintlayout/widget/ConstraintLayout;)V
  .registers 2
    return-void
.end method

.method public m(Landroidx/constraintlayout/widget/ConstraintLayout;)V
  .registers 7
  .line 1
    invoke-virtual { p0 }, Landroid/view/View;->isInEditMode()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Landroidx/constraintlayout/widget/b;->g:Ljava/lang/String;
    invoke-virtual { p0, v0 }, Landroidx/constraintlayout/widget/b;->setIds(Ljava/lang/String;)V
  :L0
  .line 3
    iget-object v0, p0, Landroidx/constraintlayout/widget/b;->e:Lc/e/b/k/h;
    if-nez v0, :L1
    return-void
  :L1
  .line 4
    invoke-interface { v0 }, Lc/e/b/k/h;->c()V
    const/4 v0, 0
  :L2
  .line 5
    iget v1, p0, Landroidx/constraintlayout/widget/b;->c:I
    if-ge v0, v1, :L5
  .line 6
    iget-object v1, p0, Landroidx/constraintlayout/widget/b;->b:[I
    aget v1, v1, v0
  .line 7
    invoke-virtual { p1, v1 }, Landroidx/constraintlayout/widget/ConstraintLayout;->i(I)Landroid/view/View;
    move-result-object v2
    if-nez v2, :L3
  .line 8
    iget-object v3, p0, Landroidx/constraintlayout/widget/b;->i:Ljava/util/HashMap;
    invoke-static { v1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-virtual { v3, v1 }, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/String;
  .line 9
    invoke-direct { p0, p1, v1 }, Landroidx/constraintlayout/widget/b;->f(Landroidx/constraintlayout/widget/ConstraintLayout;Ljava/lang/String;)I
    move-result v3
    if-eqz v3, :L3
  .line 10
    iget-object v2, p0, Landroidx/constraintlayout/widget/b;->b:[I
    aput v3, v2, v0
  .line 11
    iget-object v2, p0, Landroidx/constraintlayout/widget/b;->i:Ljava/util/HashMap;
    invoke-static { v3 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    invoke-virtual { v2, v4, v1 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 12
    invoke-virtual { p1, v3 }, Landroidx/constraintlayout/widget/ConstraintLayout;->i(I)Landroid/view/View;
    move-result-object v2
  :L3
    if-eqz v2, :L4
  .line 13
    iget-object v1, p0, Landroidx/constraintlayout/widget/b;->e:Lc/e/b/k/h;
    invoke-virtual { p1, v2 }, Landroidx/constraintlayout/widget/ConstraintLayout;->j(Landroid/view/View;)Lc/e/b/k/e;
    move-result-object v2
    invoke-interface { v1, v2 }, Lc/e/b/k/h;->a(Lc/e/b/k/e;)V
  :L4
    add-int/lit8 v0, v0, 1
    goto :L2
  :L5
  .line 14
    iget-object v0, p0, Landroidx/constraintlayout/widget/b;->e:Lc/e/b/k/h;
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lc/e/b/k/f;
    invoke-interface { v0, p1 }, Lc/e/b/k/h;->b(Lc/e/b/k/f;)V
    return-void
.end method

.method public n()V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/b;->e:Lc/e/b/k/h;
    if-nez v0, :L0
    return-void
  :L0
  .line 2
    invoke-virtual { p0 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
  .line 3
    instance-of v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;
    if-eqz v1, :L1
  .line 4
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;
  .line 5
    iget-object v1, p0, Landroidx/constraintlayout/widget/b;->e:Lc/e/b/k/h;
    check-cast v1, Lc/e/b/k/e;
    iput-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->m0:Lc/e/b/k/e;
  :L1
    return-void
.end method

.method protected onAttachedToWindow()V
  .registers 2
  .line 1
    invoke-super { p0 }, Landroid/view/View;->onAttachedToWindow()V
  .line 2
    iget-object v0, p0, Landroidx/constraintlayout/widget/b;->g:Ljava/lang/String;
    if-eqz v0, :L0
  .line 3
    invoke-virtual { p0, v0 }, Landroidx/constraintlayout/widget/b;->setIds(Ljava/lang/String;)V
  :L0
  .line 4
    iget-object v0, p0, Landroidx/constraintlayout/widget/b;->h:Ljava/lang/String;
    if-eqz v0, :L1
  .line 5
    invoke-virtual { p0, v0 }, Landroidx/constraintlayout/widget/b;->setReferenceTags(Ljava/lang/String;)V
  :L1
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
  .registers 2
    return-void
.end method

.method protected onMeasure(II)V
  .registers 4
  .line 1
    iget-boolean v0, p0, Landroidx/constraintlayout/widget/b;->f:Z
    if-eqz v0, :L0
  .line 2
    invoke-super { p0, p1, p2 }, Landroid/view/View;->onMeasure(II)V
    goto :L1
  :L0
    const/4 p1, 0
  .line 3
    invoke-virtual { p0, p1, p1 }, Landroid/view/View;->setMeasuredDimension(II)V
  :L1
    return-void
.end method

.method protected setIds(Ljava/lang/String;)V
  .registers 5
  .line 1
    iput-object p1, p0, Landroidx/constraintlayout/widget/b;->g:Ljava/lang/String;
    if-nez p1, :L0
    return-void
  :L0
    const/4 v0, 0
  .line 2
    iput v0, p0, Landroidx/constraintlayout/widget/b;->c:I
  :L1
    const/16 v1, 44
  .line 3
    invoke-virtual { p1, v1, v0 }, Ljava/lang/String;->indexOf(II)I
    move-result v1
    const/4 v2, -1
    if-ne v1, v2, :L2
  .line 4
    invoke-virtual { p1, v0 }, Ljava/lang/String;->substring(I)Ljava/lang/String;
    move-result-object p1
    invoke-direct { p0, p1 }, Landroidx/constraintlayout/widget/b;->a(Ljava/lang/String;)V
    return-void
  :L2
  .line 5
    invoke-virtual { p1, v0, v1 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v0
    invoke-direct { p0, v0 }, Landroidx/constraintlayout/widget/b;->a(Ljava/lang/String;)V
    add-int/lit8 v0, v1, 1
    goto :L1
.end method

.method protected setReferenceTags(Ljava/lang/String;)V
  .registers 5
  .line 1
    iput-object p1, p0, Landroidx/constraintlayout/widget/b;->h:Ljava/lang/String;
    if-nez p1, :L0
    return-void
  :L0
    const/4 v0, 0
  .line 2
    iput v0, p0, Landroidx/constraintlayout/widget/b;->c:I
  :L1
    const/16 v1, 44
  .line 3
    invoke-virtual { p1, v1, v0 }, Ljava/lang/String;->indexOf(II)I
    move-result v1
    const/4 v2, -1
    if-ne v1, v2, :L2
  .line 4
    invoke-virtual { p1, v0 }, Ljava/lang/String;->substring(I)Ljava/lang/String;
    move-result-object p1
    invoke-direct { p0, p1 }, Landroidx/constraintlayout/widget/b;->c(Ljava/lang/String;)V
    return-void
  :L2
  .line 5
    invoke-virtual { p1, v0, v1 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v0
    invoke-direct { p0, v0 }, Landroidx/constraintlayout/widget/b;->c(Ljava/lang/String;)V
    add-int/lit8 v0, v1, 1
    goto :L1
.end method

.method public setReferencedIds([I)V
  .registers 4
    const/4 v0, 0
  .line 1
    iput-object v0, p0, Landroidx/constraintlayout/widget/b;->g:Ljava/lang/String;
    const/4 v0, 0
  .line 2
    iput v0, p0, Landroidx/constraintlayout/widget/b;->c:I
  :L0
  .line 3
    array-length v1, p1
    if-ge v0, v1, :L1
  .line 4
    aget v1, p1, v0
    invoke-direct { p0, v1 }, Landroidx/constraintlayout/widget/b;->b(I)V
    add-int/lit8 v0, v0, 1
    goto :L0
  :L1
    return-void
.end method

.method public setTag(ILjava/lang/Object;)V
  .registers 3
  .line 1
    invoke-super { p0, p1, p2 }, Landroid/view/View;->setTag(ILjava/lang/Object;)V
    if-nez p2, :L0
  .line 2
    iget-object p2, p0, Landroidx/constraintlayout/widget/b;->g:Ljava/lang/String;
    if-nez p2, :L0
  .line 3
    invoke-direct { p0, p1 }, Landroidx/constraintlayout/widget/b;->b(I)V
  :L0
    return-void
.end method
