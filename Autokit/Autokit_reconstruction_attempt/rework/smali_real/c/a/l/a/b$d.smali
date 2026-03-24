.class abstract Lc/a/l/a/b$d;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/l/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "d"
.end annotation


# instance fields
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


# direct methods
.method constructor <init>(Lc/a/l/a/b$d;Lc/a/l/a/b;Landroid/content/res/Resources;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lc/a/l/a/b$d;->i:Z

    .line 3
    iput-boolean v0, p0, Lc/a/l/a/b$d;->l:Z

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lc/a/l/a/b$d;->x:Z

    .line 5
    iput v0, p0, Lc/a/l/a/b$d;->A:I

    .line 6
    iput v0, p0, Lc/a/l/a/b$d;->B:I

    .line 7
    iput-object p2, p0, Lc/a/l/a/b$d;->a:Lc/a/l/a/b;

    const/4 p2, 0x0

    if-eqz p3, :cond_16

    move-object v2, p3

    goto :goto_1c

    :cond_16
    if-eqz p1, :cond_1b

    .line 8
    iget-object v2, p1, Lc/a/l/a/b$d;->b:Landroid/content/res/Resources;

    goto :goto_1c

    :cond_1b
    move-object v2, p2

    :goto_1c
    iput-object v2, p0, Lc/a/l/a/b$d;->b:Landroid/content/res/Resources;

    if-eqz p1, :cond_23

    .line 9
    iget v2, p1, Lc/a/l/a/b$d;->c:I

    goto :goto_24

    :cond_23
    const/4 v2, 0x0

    :goto_24
    invoke-static {p3, v2}, Lc/a/l/a/b;->f(Landroid/content/res/Resources;I)I

    move-result p3

    iput p3, p0, Lc/a/l/a/b$d;->c:I

    if-eqz p1, :cond_ef

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

    if-ne v2, p3, :cond_9d

    .line 29
    iget-boolean p3, p1, Lc/a/l/a/b$d;->j:Z

    if-eqz p3, :cond_87

    .line 30
    iget-object p3, p1, Lc/a/l/a/b$d;->k:Landroid/graphics/Rect;

    if-eqz p3, :cond_83

    .line 31
    new-instance p2, Landroid/graphics/Rect;

    iget-object p3, p1, Lc/a/l/a/b$d;->k:Landroid/graphics/Rect;

    invoke-direct {p2, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :cond_83
    iput-object p2, p0, Lc/a/l/a/b$d;->k:Landroid/graphics/Rect;

    .line 32
    iput-boolean v1, p0, Lc/a/l/a/b$d;->j:Z

    .line 33
    :cond_87
    iget-boolean p2, p1, Lc/a/l/a/b$d;->m:Z

    if-eqz p2, :cond_9d

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

    .line 39
    :cond_9d
    iget-boolean p2, p1, Lc/a/l/a/b$d;->r:Z

    if-eqz p2, :cond_a7

    .line 40
    iget p2, p1, Lc/a/l/a/b$d;->s:I

    iput p2, p0, Lc/a/l/a/b$d;->s:I

    .line 41
    iput-boolean v1, p0, Lc/a/l/a/b$d;->r:Z

    .line 42
    :cond_a7
    iget-boolean p2, p1, Lc/a/l/a/b$d;->t:Z

    if-eqz p2, :cond_b1

    .line 43
    iget-boolean p2, p1, Lc/a/l/a/b$d;->u:Z

    iput-boolean p2, p0, Lc/a/l/a/b$d;->u:Z

    .line 44
    iput-boolean v1, p0, Lc/a/l/a/b$d;->t:Z

    .line 45
    :cond_b1
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

    if-eqz p1, :cond_c7

    .line 49
    invoke-virtual {p1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object p1

    iput-object p1, p0, Lc/a/l/a/b$d;->f:Landroid/util/SparseArray;

    goto :goto_d0

    .line 50
    :cond_c7
    new-instance p1, Landroid/util/SparseArray;

    iget p3, p0, Lc/a/l/a/b$d;->h:I

    invoke-direct {p1, p3}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lc/a/l/a/b$d;->f:Landroid/util/SparseArray;

    .line 51
    :goto_d0
    iget p1, p0, Lc/a/l/a/b$d;->h:I

    :goto_d2
    if-ge v0, p1, :cond_f7

    .line 52
    aget-object p3, p2, v0

    if-eqz p3, :cond_ec

    .line 53
    aget-object p3, p2, v0

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p3

    if-eqz p3, :cond_e6

    .line 54
    iget-object v1, p0, Lc/a/l/a/b$d;->f:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_ec

    .line 55
    :cond_e6
    iget-object p3, p0, Lc/a/l/a/b$d;->g:[Landroid/graphics/drawable/Drawable;

    aget-object v1, p2, v0

    aput-object v1, p3, v0

    :cond_ec
    :goto_ec
    add-int/lit8 v0, v0, 0x1

    goto :goto_d2

    :cond_ef
    const/16 p1, 0xa

    new-array p1, p1, [Landroid/graphics/drawable/Drawable;

    .line 56
    iput-object p1, p0, Lc/a/l/a/b$d;->g:[Landroid/graphics/drawable/Drawable;

    .line 57
    iput v0, p0, Lc/a/l/a/b$d;->h:I

    :cond_f7
    return-void
.end method

.method private e()V
    .registers 7

    .line 1
    iget-object v0, p0, Lc/a/l/a/b$d;->f:Landroid/util/SparseArray;

    if-eqz v0, :cond_2d

    .line 2
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_2a

    .line 3
    iget-object v2, p0, Lc/a/l/a/b$d;->f:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 4
    iget-object v3, p0, Lc/a/l/a/b$d;->f:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 5
    iget-object v4, p0, Lc/a/l/a/b$d;->g:[Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lc/a/l/a/b$d;->b:Landroid/content/res/Resources;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {p0, v3}, Lc/a/l/a/b$d;->s(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v4, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_2a
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lc/a/l/a/b$d;->f:Landroid/util/SparseArray;

    :cond_2d
    return-void
.end method

.method private s(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_b

    .line 2
    iget v0, p0, Lc/a/l/a/b$d;->z:I

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/a;->m(Landroid/graphics/drawable/Drawable;I)Z

    .line 3
    :cond_b
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lc/a/l/a/b$d;->a:Lc/a/l/a/b;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-object p1
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;)I
    .registers 6

    .line 1
    iget v0, p0, Lc/a/l/a/b$d;->h:I

    .line 2
    iget-object v1, p0, Lc/a/l/a/b$d;->g:[Landroid/graphics/drawable/Drawable;

    array-length v1, v1

    if-lt v0, v1, :cond_c

    add-int/lit8 v1, v0, 0xa

    .line 3
    invoke-virtual {p0, v0, v1}, Lc/a/l/a/b$d;->o(II)V

    .line 4
    :cond_c
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 5
    invoke-virtual {p1, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 6
    iget-object v3, p0, Lc/a/l/a/b$d;->a:Lc/a/l/a/b;

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 7
    iget-object v3, p0, Lc/a/l/a/b$d;->g:[Landroid/graphics/drawable/Drawable;

    aput-object p1, v3, v0

    .line 8
    iget v3, p0, Lc/a/l/a/b$d;->h:I

    add-int/2addr v3, v2

    iput v3, p0, Lc/a/l/a/b$d;->h:I

    .line 9
    iget v2, p0, Lc/a/l/a/b$d;->e:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result p1

    or-int/2addr p1, v2

    iput p1, p0, Lc/a/l/a/b$d;->e:I

    .line 10
    invoke-virtual {p0}, Lc/a/l/a/b$d;->p()V

    const/4 p1, 0x0

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

    if-eqz p1, :cond_32

    .line 1
    invoke-direct {p0}, Lc/a/l/a/b$d;->e()V

    .line 2
    iget v0, p0, Lc/a/l/a/b$d;->h:I

    .line 3
    iget-object v1, p0, Lc/a/l/a/b$d;->g:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_2b

    .line 4
    aget-object v3, v1, v2

    if-eqz v3, :cond_28

    aget-object v3, v1, v2

    invoke-static {v3}, Landroidx/core/graphics/drawable/a;->b(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 5
    aget-object v3, v1, v2

    invoke-static {v3, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V

    .line 6
    iget v3, p0, Lc/a/l/a/b$d;->e:I

    aget-object v4, v1, v2

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v4

    or-int/2addr v3, v4

    iput v3, p0, Lc/a/l/a/b$d;->e:I

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 7
    :cond_2b
    invoke-static {p1}, Lc/a/l/a/b$b;->c(Landroid/content/res/Resources$Theme;)Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/a/l/a/b$d;->y(Landroid/content/res/Resources;)V

    :cond_32
    return-void
.end method

.method public c()Z
    .registers 7

    .line 1
    iget-boolean v0, p0, Lc/a/l/a/b$d;->v:Z

    if-eqz v0, :cond_7

    .line 2
    iget-boolean v0, p0, Lc/a/l/a/b$d;->w:Z

    return v0

    .line 3
    :cond_7
    invoke-direct {p0}, Lc/a/l/a/b$d;->e()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lc/a/l/a/b$d;->v:Z

    .line 5
    iget v1, p0, Lc/a/l/a/b$d;->h:I

    .line 6
    iget-object v2, p0, Lc/a/l/a/b$d;->g:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_13
    if-ge v4, v1, :cond_23

    .line 7
    aget-object v5, v2, v4

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    if-nez v5, :cond_20

    .line 8
    iput-boolean v3, p0, Lc/a/l/a/b$d;->w:Z

    return v3

    :cond_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 9
    :cond_23
    iput-boolean v0, p0, Lc/a/l/a/b$d;->w:Z

    return v0
.end method

.method public canApplyTheme()Z
    .registers 7

    .line 1
    iget v0, p0, Lc/a/l/a/b$d;->h:I

    .line 2
    iget-object v1, p0, Lc/a/l/a/b$d;->g:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v0, :cond_28

    .line 3
    aget-object v4, v1, v3

    const/4 v5, 0x1

    if-eqz v4, :cond_14

    .line 4
    invoke-static {v4}, Landroidx/core/graphics/drawable/a;->b(Landroid/graphics/drawable/Drawable;)Z

    move-result v4

    if-eqz v4, :cond_25

    return v5

    .line 5
    :cond_14
    iget-object v4, p0, Lc/a/l/a/b$d;->f:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v4, :cond_25

    .line 6
    invoke-static {v4}, Lc/a/l/a/b$b;->a(Landroid/graphics/drawable/Drawable$ConstantState;)Z

    move-result v4

    if-eqz v4, :cond_25

    return v5

    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_28
    return v2
.end method

.method protected d()V
    .registers 7

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lc/a/l/a/b$d;->m:Z

    .line 2
    invoke-direct {p0}, Lc/a/l/a/b$d;->e()V

    .line 3
    iget v0, p0, Lc/a/l/a/b$d;->h:I

    .line 4
    iget-object v1, p0, Lc/a/l/a/b$d;->g:[Landroid/graphics/drawable/Drawable;

    const/4 v2, -0x1

    .line 5
    iput v2, p0, Lc/a/l/a/b$d;->o:I

    iput v2, p0, Lc/a/l/a/b$d;->n:I

    const/4 v2, 0x0

    .line 6
    iput v2, p0, Lc/a/l/a/b$d;->q:I

    iput v2, p0, Lc/a/l/a/b$d;->p:I

    :goto_14
    if-ge v2, v0, :cond_43

    .line 7
    aget-object v3, v1, v2

    .line 8
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 9
    iget v5, p0, Lc/a/l/a/b$d;->n:I

    if-le v4, v5, :cond_22

    iput v4, p0, Lc/a/l/a/b$d;->n:I

    .line 10
    :cond_22
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 11
    iget v5, p0, Lc/a/l/a/b$d;->o:I

    if-le v4, v5, :cond_2c

    iput v4, p0, Lc/a/l/a/b$d;->o:I

    .line 12
    :cond_2c
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    .line 13
    iget v5, p0, Lc/a/l/a/b$d;->p:I

    if-le v4, v5, :cond_36

    iput v4, p0, Lc/a/l/a/b$d;->p:I

    .line 14
    :cond_36
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    .line 15
    iget v4, p0, Lc/a/l/a/b$d;->q:I

    if-le v3, v4, :cond_40

    iput v3, p0, Lc/a/l/a/b$d;->q:I

    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_43
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

    if-eqz v0, :cond_7

    return-object v0

    .line 2
    :cond_7
    iget-object v0, p0, Lc/a/l/a/b$d;->f:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_38

    .line 4
    iget-object v2, p0, Lc/a/l/a/b$d;->f:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 5
    iget-object v3, p0, Lc/a/l/a/b$d;->b:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2}, Lc/a/l/a/b$d;->s(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 6
    iget-object v3, p0, Lc/a/l/a/b$d;->g:[Landroid/graphics/drawable/Drawable;

    aput-object v2, v3, p1

    .line 7
    iget-object p1, p0, Lc/a/l/a/b$d;->f:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 8
    iget-object p1, p0, Lc/a/l/a/b$d;->f:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_37

    .line 9
    iput-object v1, p0, Lc/a/l/a/b$d;->f:Landroid/util/SparseArray;

    :cond_37
    return-object v2

    :cond_38
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

    if-nez v0, :cond_7

    .line 2
    invoke-virtual {p0}, Lc/a/l/a/b$d;->d()V

    .line 3
    :cond_7
    iget v0, p0, Lc/a/l/a/b$d;->o:I

    return v0
.end method

.method public final j()I
    .registers 2

    .line 1
    iget-boolean v0, p0, Lc/a/l/a/b$d;->m:Z

    if-nez v0, :cond_7

    .line 2
    invoke-virtual {p0}, Lc/a/l/a/b$d;->d()V

    .line 3
    :cond_7
    iget v0, p0, Lc/a/l/a/b$d;->q:I

    return v0
.end method

.method public final k()I
    .registers 2

    .line 1
    iget-boolean v0, p0, Lc/a/l/a/b$d;->m:Z

    if-nez v0, :cond_7

    .line 2
    invoke-virtual {p0}, Lc/a/l/a/b$d;->d()V

    .line 3
    :cond_7
    iget v0, p0, Lc/a/l/a/b$d;->p:I

    return v0
.end method

.method public final l()Landroid/graphics/Rect;
    .registers 9

    .line 1
    iget-boolean v0, p0, Lc/a/l/a/b$d;->i:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return-object v1

    .line 2
    :cond_6
    iget-object v0, p0, Lc/a/l/a/b$d;->k:Landroid/graphics/Rect;

    if-nez v0, :cond_57

    iget-boolean v0, p0, Lc/a/l/a/b$d;->j:Z

    if-eqz v0, :cond_f

    goto :goto_57

    .line 3
    :cond_f
    invoke-direct {p0}, Lc/a/l/a/b$d;->e()V

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 5
    iget v2, p0, Lc/a/l/a/b$d;->h:I

    .line 6
    iget-object v3, p0, Lc/a/l/a/b$d;->g:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1d
    if-ge v5, v2, :cond_51

    .line 7
    aget-object v6, v3, v5

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_4e

    if-nez v1, :cond_2e

    .line 8
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 9
    :cond_2e
    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, v1, Landroid/graphics/Rect;->left:I

    if-le v6, v7, :cond_36

    iput v6, v1, Landroid/graphics/Rect;->left:I

    .line 10
    :cond_36
    iget v6, v0, Landroid/graphics/Rect;->top:I

    iget v7, v1, Landroid/graphics/Rect;->top:I

    if-le v6, v7, :cond_3e

    iput v6, v1, Landroid/graphics/Rect;->top:I

    .line 11
    :cond_3e
    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, v1, Landroid/graphics/Rect;->right:I

    if-le v6, v7, :cond_46

    iput v6, v1, Landroid/graphics/Rect;->right:I

    .line 12
    :cond_46
    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    if-le v6, v7, :cond_4e

    iput v6, v1, Landroid/graphics/Rect;->bottom:I

    :cond_4e
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    :cond_51
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lc/a/l/a/b$d;->j:Z

    .line 14
    iput-object v1, p0, Lc/a/l/a/b$d;->k:Landroid/graphics/Rect;

    return-object v1

    .line 15
    :cond_57
    :goto_57
    iget-object v0, p0, Lc/a/l/a/b$d;->k:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final m()I
    .registers 2

    .line 1
    iget-boolean v0, p0, Lc/a/l/a/b$d;->m:Z

    if-nez v0, :cond_7

    .line 2
    invoke-virtual {p0}, Lc/a/l/a/b$d;->d()V

    .line 3
    :cond_7
    iget v0, p0, Lc/a/l/a/b$d;->n:I

    return v0
.end method

.method public final n()I
    .registers 7

    .line 1
    iget-boolean v0, p0, Lc/a/l/a/b$d;->r:Z

    if-eqz v0, :cond_7

    .line 2
    iget v0, p0, Lc/a/l/a/b$d;->s:I

    return v0

    .line 3
    :cond_7
    invoke-direct {p0}, Lc/a/l/a/b$d;->e()V

    .line 4
    iget v0, p0, Lc/a/l/a/b$d;->h:I

    .line 5
    iget-object v1, p0, Lc/a/l/a/b$d;->g:[Landroid/graphics/drawable/Drawable;

    if-lez v0, :cond_18

    const/4 v2, 0x0

    .line 6
    aget-object v2, v1, v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    goto :goto_19

    :cond_18
    const/4 v2, -0x2

    :goto_19
    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_1b
    if-ge v4, v0, :cond_2a

    .line 7
    aget-object v5, v1, v4

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v5

    invoke-static {v2, v5}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 8
    :cond_2a
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

    if-eqz v0, :cond_a

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1, p2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    :cond_a
    iput-object p2, p0, Lc/a/l/a/b$d;->g:[Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method p()V
    .registers 2

    const/4 v0, 0x0

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

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_7
    if-ge v3, v0, :cond_21

    .line 3
    aget-object v5, v1, v3

    if-eqz v5, :cond_1e

    .line 4
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_1a

    .line 5
    aget-object v5, v1, v3

    .line 6
    invoke-static {v5, p1}, Landroidx/core/graphics/drawable/a;->m(Landroid/graphics/drawable/Drawable;I)Z

    move-result v5

    goto :goto_1b

    :cond_1a
    const/4 v5, 0x0

    :goto_1b
    if-ne v3, p2, :cond_1e

    move v4, v5

    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 7
    :cond_21
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

    if-eqz p1, :cond_15

    .line 1
    iput-object p1, p0, Lc/a/l/a/b$d;->b:Landroid/content/res/Resources;

    .line 2
    iget v0, p0, Lc/a/l/a/b$d;->c:I

    invoke-static {p1, v0}, Lc/a/l/a/b;->f(Landroid/content/res/Resources;I)I

    move-result p1

    .line 3
    iget v0, p0, Lc/a/l/a/b$d;->c:I

    .line 4
    iput p1, p0, Lc/a/l/a/b$d;->c:I

    if-eq v0, p1, :cond_15

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lc/a/l/a/b$d;->m:Z

    .line 6
    iput-boolean p1, p0, Lc/a/l/a/b$d;->j:Z

    :cond_15
    return-void
.end method
