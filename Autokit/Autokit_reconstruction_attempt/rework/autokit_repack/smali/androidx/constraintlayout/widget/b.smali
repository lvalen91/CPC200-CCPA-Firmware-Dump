.class public abstract Landroidx/constraintlayout/widget/b;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x20

    new-array v0, v0, [I

    .line 2
    iput-object v0, p0, Landroidx/constraintlayout/widget/b;->b:[I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/b;->f:Z

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/b;->i:Ljava/util/HashMap;

    .line 5
    iput-object p1, p0, Landroidx/constraintlayout/widget/b;->d:Landroid/content/Context;

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/b;->h(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 7
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x20

    new-array v0, v0, [I

    .line 8
    iput-object v0, p0, Landroidx/constraintlayout/widget/b;->b:[I

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/b;->f:Z

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/b;->i:Ljava/util/HashMap;

    .line 11
    iput-object p1, p0, Landroidx/constraintlayout/widget/b;->d:Landroid/content/Context;

    .line 12
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/widget/b;->h(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 5

    if-eqz p1, :cond_48

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_48

    .line 2
    :cond_9
    iget-object v0, p0, Landroidx/constraintlayout/widget/b;->d:Landroid/content/Context;

    if-nez v0, :cond_e

    return-void

    .line 3
    :cond_e
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_20

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 6
    :cond_20
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/b;->g(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_33

    .line 7
    iget-object v1, p0, Landroidx/constraintlayout/widget/b;->i:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-direct {p0, v0}, Landroidx/constraintlayout/widget/b;->b(I)V

    goto :goto_48

    .line 9
    :cond_33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find id of \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_48
    :goto_48
    return-void
.end method

.method private b(I)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_7

    return-void

    .line 2
    :cond_7
    iget v0, p0, Landroidx/constraintlayout/widget/b;->c:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroidx/constraintlayout/widget/b;->b:[I

    array-length v2, v1

    if-le v0, v2, :cond_19

    .line 3
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/widget/b;->b:[I

    .line 4
    :cond_19
    iget-object v0, p0, Landroidx/constraintlayout/widget/b;->b:[I

    iget v1, p0, Landroidx/constraintlayout/widget/b;->c:I

    aput p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 5
    iput v1, p0, Landroidx/constraintlayout/widget/b;->c:I

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 8

    if-eqz p1, :cond_70

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_70

    .line 2
    :cond_9
    iget-object v0, p0, Landroidx/constraintlayout/widget/b;->d:Landroid/content/Context;

    if-nez v0, :cond_e

    return-void

    .line 3
    :cond_e
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v1, :cond_21

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    :cond_21
    if-nez v0, :cond_24

    return-void

    .line 6
    :cond_24
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_29
    if-ge v2, v1, :cond_70

    .line 7
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 8
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 9
    instance-of v5, v4, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    if-eqz v5, :cond_6d

    .line 10
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 11
    iget-object v4, v4, Landroidx/constraintlayout/widget/ConstraintLayout$b;->U:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6d

    .line 12
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_66

    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "to use ConstraintTag view "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " must have an ID"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_6d

    .line 14
    :cond_66
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-direct {p0, v3}, Landroidx/constraintlayout/widget/b;->b(I)V

    :cond_6d
    :goto_6d
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    :cond_70
    :goto_70
    return-void
.end method

.method private f(Landroidx/constraintlayout/widget/ConstraintLayout;Ljava/lang/String;)I
    .registers 10

    const/4 v0, 0x0

    if-eqz p2, :cond_3a

    if-nez p1, :cond_6

    goto :goto_3a

    .line 1
    :cond_6
    iget-object v1, p0, Landroidx/constraintlayout/widget/b;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-nez v1, :cond_f

    return v0

    .line 2
    :cond_f
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v2, :cond_3a

    .line 3
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_37

    const/4 v5, 0x0

    .line 5
    :try_start_22
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v5
    :try_end_2a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_22 .. :try_end_2a} :catch_2b

    goto :goto_2c

    :catch_2b
    nop

    .line 6
    :goto_2c
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 7
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result p1

    return p1

    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_3a
    :goto_3a
    return v0
.end method

.method private g(Ljava/lang/String;)I
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    goto :goto_11

    :cond_10
    move-object v0, v1

    .line 3
    :goto_11
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_28

    if-eqz v0, :cond_28

    .line 4
    invoke-virtual {v0, v3, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->g(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 5
    instance-of v4, v2, Ljava/lang/Integer;

    if-eqz v4, :cond_28

    .line 6
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_28
    if-nez v3, :cond_30

    if-eqz v0, :cond_30

    .line 7
    invoke-direct {p0, v0, p1}, Landroidx/constraintlayout/widget/b;->f(Landroidx/constraintlayout/widget/ConstraintLayout;Ljava/lang/String;)I

    move-result v3

    :cond_30
    if-nez v3, :cond_3e

    .line 8
    :try_start_32
    const-class v0, Landroidx/constraintlayout/widget/h;

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3c} :catch_3d

    goto :goto_3e

    :catch_3d
    nop

    :cond_3e
    :goto_3e
    if-nez v3, :cond_52

    .line 11
    iget-object v0, p0, Landroidx/constraintlayout/widget/b;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/widget/b;->d:Landroid/content/Context;

    .line 12
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    .line 13
    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    :cond_52
    return v3
.end method


# virtual methods
.method protected d()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 2
    instance-of v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v1, :cond_f

    .line 3
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/b;->e(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_f
    return-void
.end method

.method protected e(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .registers 9

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, 0x0

    if-lt v1, v2, :cond_10

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    move-result v1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    const/4 v4, 0x0

    .line 4
    :goto_12
    iget v5, p0, Landroidx/constraintlayout/widget/b;->c:I

    if-ge v4, v5, :cond_36

    .line 5
    iget-object v5, p0, Landroidx/constraintlayout/widget/b;->b:[I

    aget v5, v5, v4

    .line 6
    invoke-virtual {p1, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->i(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_33

    .line 7
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    cmpl-float v6, v1, v3

    if-lez v6, :cond_33

    .line 8
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v2, :cond_33

    .line 9
    invoke-virtual {v5}, Landroid/view/View;->getTranslationZ()F

    move-result v6

    add-float/2addr v6, v1

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationZ(F)V

    :cond_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_36
    return-void
.end method

.method public getReferencedIds()[I
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/b;->b:[I

    iget v1, p0, Landroidx/constraintlayout/widget/b;->c:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method protected h(Landroid/util/AttributeSet;)V
    .registers 6

    if-eqz p1, :cond_38

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_11
    if-ge v1, v0, :cond_35

    .line 3
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 4
    sget v3, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_constraint_referenced_ids:I

    if-ne v2, v3, :cond_25

    .line 5
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroidx/constraintlayout/widget/b;->g:Ljava/lang/String;

    .line 6
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/b;->setIds(Ljava/lang/String;)V

    goto :goto_32

    .line 7
    :cond_25
    sget v3, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_constraint_referenced_tags:I

    if-ne v2, v3, :cond_32

    .line 8
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroidx/constraintlayout/widget/b;->h:Ljava/lang/String;

    .line 9
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/b;->setReferenceTags(Ljava/lang/String;)V

    :cond_32
    :goto_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 10
    :cond_35
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_38
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
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/widget/b;->g:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/b;->setIds(Ljava/lang/String;)V

    .line 3
    :cond_b
    iget-object v0, p0, Landroidx/constraintlayout/widget/b;->e:Lc/e/b/k/h;

    if-nez v0, :cond_10

    return-void

    .line 4
    :cond_10
    invoke-interface {v0}, Lc/e/b/k/h;->c()V

    const/4 v0, 0x0

    .line 5
    :goto_14
    iget v1, p0, Landroidx/constraintlayout/widget/b;->c:I

    if-ge v0, v1, :cond_53

    .line 6
    iget-object v1, p0, Landroidx/constraintlayout/widget/b;->b:[I

    aget v1, v1, v0

    .line 7
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->i(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_45

    .line 8
    iget-object v3, p0, Landroidx/constraintlayout/widget/b;->i:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 9
    invoke-direct {p0, p1, v1}, Landroidx/constraintlayout/widget/b;->f(Landroidx/constraintlayout/widget/ConstraintLayout;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_45

    .line 10
    iget-object v2, p0, Landroidx/constraintlayout/widget/b;->b:[I

    aput v3, v2, v0

    .line 11
    iget-object v2, p0, Landroidx/constraintlayout/widget/b;->i:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {p1, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->i(I)Landroid/view/View;

    move-result-object v2

    :cond_45
    if-eqz v2, :cond_50

    .line 13
    iget-object v1, p0, Landroidx/constraintlayout/widget/b;->e:Lc/e/b/k/h;

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->j(Landroid/view/View;)Lc/e/b/k/e;

    move-result-object v2

    invoke-interface {v1, v2}, Lc/e/b/k/h;->a(Lc/e/b/k/e;)V

    :cond_50
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 14
    :cond_53
    iget-object v0, p0, Landroidx/constraintlayout/widget/b;->e:Lc/e/b/k/h;

    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lc/e/b/k/f;

    invoke-interface {v0, p1}, Lc/e/b/k/h;->b(Lc/e/b/k/f;)V

    return-void
.end method

.method public n()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/b;->e:Lc/e/b/k/h;

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3
    instance-of v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    if-eqz v1, :cond_15

    .line 4
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 5
    iget-object v1, p0, Landroidx/constraintlayout/widget/b;->e:Lc/e/b/k/h;

    check-cast v1, Lc/e/b/k/e;

    iput-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->m0:Lc/e/b/k/e;

    :cond_15
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/widget/b;->g:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 3
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/b;->setIds(Ljava/lang/String;)V

    .line 4
    :cond_a
    iget-object v0, p0, Landroidx/constraintlayout/widget/b;->h:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 5
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/b;->setReferenceTags(Ljava/lang/String;)V

    :cond_11
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

    if-eqz v0, :cond_8

    .line 2
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    goto :goto_c

    :cond_8
    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    :goto_c
    return-void
.end method

.method protected setIds(Ljava/lang/String;)V
    .registers 5

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/widget/b;->g:Ljava/lang/String;

    if-nez p1, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/constraintlayout/widget/b;->c:I

    :goto_8
    const/16 v1, 0x2c

    .line 3
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_19

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/b;->a(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_19
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/constraintlayout/widget/b;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    goto :goto_8
.end method

.method protected setReferenceTags(Ljava/lang/String;)V
    .registers 5

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/widget/b;->h:Ljava/lang/String;

    if-nez p1, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/constraintlayout/widget/b;->c:I

    :goto_8
    const/16 v1, 0x2c

    .line 3
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_19

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/b;->c(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_19
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/constraintlayout/widget/b;->c(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    goto :goto_8
.end method

.method public setReferencedIds([I)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Landroidx/constraintlayout/widget/b;->g:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/constraintlayout/widget/b;->c:I

    .line 3
    :goto_6
    array-length v1, p1

    if-ge v0, v1, :cond_11

    .line 4
    aget v1, p1, v0

    invoke-direct {p0, v1}, Landroidx/constraintlayout/widget/b;->b(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_11
    return-void
.end method

.method public setTag(ILjava/lang/Object;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    if-nez p2, :cond_c

    .line 2
    iget-object p2, p0, Landroidx/constraintlayout/widget/b;->g:Ljava/lang/String;

    if-nez p2, :cond_c

    .line 3
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/b;->b(I)V

    :cond_c
    return-void
.end method
