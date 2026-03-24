.class Landroidx/appcompat/widget/c;
.super Landroidx/appcompat/view/menu/b;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/b$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/c$b;,
        Landroidx/appcompat/widget/c$c;,
        Landroidx/appcompat/widget/c$f;,
        Landroidx/appcompat/widget/c$a;,
        Landroidx/appcompat/widget/c$e;,
        Landroidx/appcompat/widget/c$d;
    }
.end annotation


# instance fields
.field private A:Landroidx/appcompat/widget/c$b;

.field final B:Landroidx/appcompat/widget/c$f;

.field C:I

.field j:Landroidx/appcompat/widget/c$d;

.field private k:Landroid/graphics/drawable/Drawable;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:I

.field private p:I

.field private q:I

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:I

.field private final w:Landroid/util/SparseBooleanArray;

.field x:Landroidx/appcompat/widget/c$e;

.field y:Landroidx/appcompat/widget/c$a;

.field z:Landroidx/appcompat/widget/c$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1
    sget v0, Lc/a/g;->abc_action_menu_layout:I

    sget v1, Lc/a/g;->abc_action_menu_item_layout:I

    invoke-direct {p0, p1, v0, v1}, Landroidx/appcompat/view/menu/b;-><init>(Landroid/content/Context;II)V

    .line 2
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/c;->w:Landroid/util/SparseBooleanArray;

    .line 3
    new-instance p1, Landroidx/appcompat/widget/c$f;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/c$f;-><init>(Landroidx/appcompat/widget/c;)V

    iput-object p1, p0, Landroidx/appcompat/widget/c;->B:Landroidx/appcompat/widget/c$f;

    return-void
.end method

.method static synthetic r(Landroidx/appcompat/widget/c;)Landroidx/appcompat/view/menu/g;
    .registers 1

    .line 1
    iget-object p0, p0, Landroidx/appcompat/view/menu/b;->d:Landroidx/appcompat/view/menu/g;

    return-object p0
.end method

.method static synthetic s(Landroidx/appcompat/widget/c;)Landroidx/appcompat/view/menu/g;
    .registers 1

    .line 1
    iget-object p0, p0, Landroidx/appcompat/view/menu/b;->d:Landroidx/appcompat/view/menu/g;

    return-object p0
.end method

.method static synthetic t(Landroidx/appcompat/widget/c;)Landroidx/appcompat/view/menu/n;
    .registers 1

    .line 1
    iget-object p0, p0, Landroidx/appcompat/view/menu/b;->i:Landroidx/appcompat/view/menu/n;

    return-object p0
.end method

.method static synthetic u(Landroidx/appcompat/widget/c;)Landroidx/appcompat/view/menu/g;
    .registers 1

    .line 1
    iget-object p0, p0, Landroidx/appcompat/view/menu/b;->d:Landroidx/appcompat/view/menu/g;

    return-object p0
.end method

.method static synthetic v(Landroidx/appcompat/widget/c;)Landroidx/appcompat/view/menu/g;
    .registers 1

    .line 1
    iget-object p0, p0, Landroidx/appcompat/view/menu/b;->d:Landroidx/appcompat/view/menu/g;

    return-object p0
.end method

.method static synthetic w(Landroidx/appcompat/widget/c;)Landroidx/appcompat/view/menu/g;
    .registers 1

    .line 1
    iget-object p0, p0, Landroidx/appcompat/view/menu/b;->d:Landroidx/appcompat/view/menu/g;

    return-object p0
.end method

.method static synthetic x(Landroidx/appcompat/widget/c;)Landroidx/appcompat/view/menu/n;
    .registers 1

    .line 1
    iget-object p0, p0, Landroidx/appcompat/view/menu/b;->i:Landroidx/appcompat/view/menu/n;

    return-object p0
.end method

.method private z(Landroid/view/MenuItem;)Landroid/view/View;
    .registers 8

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->i:Landroidx/appcompat/view/menu/n;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 2
    :cond_8
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_24

    .line 3
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4
    instance-of v5, v4, Landroidx/appcompat/view/menu/n$a;

    if-eqz v5, :cond_21

    move-object v5, v4

    check-cast v5, Landroidx/appcompat/view/menu/n$a;

    .line 5
    invoke-interface {v5}, Landroidx/appcompat/view/menu/n$a;->getItemData()Landroidx/appcompat/view/menu/i;

    move-result-object v5

    if-ne v5, p1, :cond_21

    return-object v4

    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_24
    return-object v1
.end method


# virtual methods
.method public A()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/c;->j:Landroidx/appcompat/widget/c$d;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 3
    :cond_9
    iget-boolean v0, p0, Landroidx/appcompat/widget/c;->l:Z

    if-eqz v0, :cond_10

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/c;->k:Landroid/graphics/drawable/Drawable;

    return-object v0

    :cond_10
    const/4 v0, 0x0

    return-object v0
.end method

.method public B()Z
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/c;->z:Landroidx/appcompat/widget/c$c;

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    iget-object v2, p0, Landroidx/appcompat/view/menu/b;->i:Landroidx/appcompat/view/menu/n;

    if-eqz v2, :cond_12

    .line 2
    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroidx/appcompat/widget/c;->z:Landroidx/appcompat/widget/c$c;

    return v1

    .line 4
    :cond_12
    iget-object v0, p0, Landroidx/appcompat/widget/c;->x:Landroidx/appcompat/widget/c$e;

    if-eqz v0, :cond_1a

    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/l;->b()V

    return v1

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public C()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/c;->y:Landroidx/appcompat/widget/c$a;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/l;->b()V

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public D()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/c;->z:Landroidx/appcompat/widget/c$c;

    if-nez v0, :cond_d

    invoke-virtual {p0}, Landroidx/appcompat/widget/c;->E()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public E()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/c;->x:Landroidx/appcompat/widget/c$e;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/l;->d()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public F(Landroid/content/res/Configuration;)V
    .registers 3

    .line 1
    iget-boolean p1, p0, Landroidx/appcompat/widget/c;->r:Z

    if-nez p1, :cond_10

    .line 2
    iget-object p1, p0, Landroidx/appcompat/view/menu/b;->c:Landroid/content/Context;

    invoke-static {p1}, Lc/a/o/a;->b(Landroid/content/Context;)Lc/a/o/a;

    move-result-object p1

    invoke-virtual {p1}, Lc/a/o/a;->d()I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/c;->q:I

    .line 3
    :cond_10
    iget-object p1, p0, Landroidx/appcompat/view/menu/b;->d:Landroidx/appcompat/view/menu/g;

    if-eqz p1, :cond_18

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/g;->K(Z)V

    :cond_18
    return-void
.end method

.method public G(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/widget/c;->u:Z

    return-void
.end method

.method public H(Landroidx/appcompat/widget/ActionMenuView;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/b;->i:Landroidx/appcompat/view/menu/n;

    .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->d:Landroidx/appcompat/view/menu/g;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionMenuView;->b(Landroidx/appcompat/view/menu/g;)V

    return-void
.end method

.method public I(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/c;->j:Landroidx/appcompat/widget/c$d;

    if-eqz v0, :cond_8

    .line 2
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_d

    :cond_8
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroidx/appcompat/widget/c;->l:Z

    .line 4
    iput-object p1, p0, Landroidx/appcompat/widget/c;->k:Landroid/graphics/drawable/Drawable;

    :goto_d
    return-void
.end method

.method public J(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/widget/c;->m:Z

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/appcompat/widget/c;->n:Z

    return-void
.end method

.method public K()Z
    .registers 8

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/c;->m:Z

    if-eqz v0, :cond_3e

    invoke-virtual {p0}, Landroidx/appcompat/widget/c;->E()Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->d:Landroidx/appcompat/view/menu/g;

    if-eqz v0, :cond_3e

    iget-object v1, p0, Landroidx/appcompat/view/menu/b;->i:Landroidx/appcompat/view/menu/n;

    if-eqz v1, :cond_3e

    iget-object v1, p0, Landroidx/appcompat/widget/c;->z:Landroidx/appcompat/widget/c$c;

    if-nez v1, :cond_3e

    .line 2
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->z()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 3
    new-instance v0, Landroidx/appcompat/widget/c$e;

    iget-object v3, p0, Landroidx/appcompat/view/menu/b;->c:Landroid/content/Context;

    iget-object v4, p0, Landroidx/appcompat/view/menu/b;->d:Landroidx/appcompat/view/menu/g;

    iget-object v5, p0, Landroidx/appcompat/widget/c;->j:Landroidx/appcompat/widget/c$d;

    const/4 v6, 0x1

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Landroidx/appcompat/widget/c$e;-><init>(Landroidx/appcompat/widget/c;Landroid/content/Context;Landroidx/appcompat/view/menu/g;Landroid/view/View;Z)V

    .line 4
    new-instance v1, Landroidx/appcompat/widget/c$c;

    invoke-direct {v1, p0, v0}, Landroidx/appcompat/widget/c$c;-><init>(Landroidx/appcompat/widget/c;Landroidx/appcompat/widget/c$e;)V

    iput-object v1, p0, Landroidx/appcompat/widget/c;->z:Landroidx/appcompat/widget/c$c;

    .line 5
    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->i:Landroidx/appcompat/view/menu/n;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    return v0

    :cond_3e
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroidx/appcompat/view/menu/g;Z)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/c;->y()Z

    .line 2
    invoke-super {p0, p1, p2}, Landroidx/appcompat/view/menu/b;->a(Landroidx/appcompat/view/menu/g;Z)V

    return-void
.end method

.method public c()Z
    .registers 21

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Landroidx/appcompat/view/menu/b;->d:Landroidx/appcompat/view/menu/g;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_11

    .line 2
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/g;->E()Ljava/util/ArrayList;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    goto :goto_13

    :cond_11
    move-object v1, v2

    const/4 v4, 0x0

    .line 4
    :goto_13
    iget v5, v0, Landroidx/appcompat/widget/c;->q:I

    .line 5
    iget v6, v0, Landroidx/appcompat/widget/c;->p:I

    .line 6
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 7
    iget-object v8, v0, Landroidx/appcompat/view/menu/b;->i:Landroidx/appcompat/view/menu/n;

    check-cast v8, Landroid/view/ViewGroup;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_23
    if-ge v9, v4, :cond_4c

    .line 8
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/appcompat/view/menu/i;

    .line 9
    invoke-virtual {v14}, Landroidx/appcompat/view/menu/i;->o()Z

    move-result v15

    if-eqz v15, :cond_34

    add-int/lit8 v11, v11, 0x1

    goto :goto_3e

    .line 10
    :cond_34
    invoke-virtual {v14}, Landroidx/appcompat/view/menu/i;->n()Z

    move-result v15

    if-eqz v15, :cond_3d

    add-int/lit8 v12, v12, 0x1

    goto :goto_3e

    :cond_3d
    const/4 v10, 0x1

    .line 11
    :goto_3e
    iget-boolean v13, v0, Landroidx/appcompat/widget/c;->u:Z

    if-eqz v13, :cond_49

    invoke-virtual {v14}, Landroidx/appcompat/view/menu/i;->isActionViewExpanded()Z

    move-result v13

    if-eqz v13, :cond_49

    const/4 v5, 0x0

    :cond_49
    add-int/lit8 v9, v9, 0x1

    goto :goto_23

    .line 12
    :cond_4c
    iget-boolean v9, v0, Landroidx/appcompat/widget/c;->m:Z

    if-eqz v9, :cond_57

    if-nez v10, :cond_55

    add-int/2addr v12, v11

    if-le v12, v5, :cond_57

    :cond_55
    add-int/lit8 v5, v5, -0x1

    :cond_57
    sub-int/2addr v5, v11

    .line 13
    iget-object v9, v0, Landroidx/appcompat/widget/c;->w:Landroid/util/SparseBooleanArray;

    .line 14
    invoke-virtual {v9}, Landroid/util/SparseBooleanArray;->clear()V

    .line 15
    iget-boolean v10, v0, Landroidx/appcompat/widget/c;->s:Z

    if-eqz v10, :cond_6a

    .line 16
    iget v10, v0, Landroidx/appcompat/widget/c;->v:I

    div-int v11, v6, v10

    .line 17
    rem-int v12, v6, v10

    .line 18
    div-int/2addr v12, v11

    add-int/2addr v10, v12

    goto :goto_6c

    :cond_6a
    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_6c
    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_6e
    if-ge v12, v4, :cond_143

    .line 19
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/appcompat/view/menu/i;

    .line 20
    invoke-virtual {v15}, Landroidx/appcompat/view/menu/i;->o()Z

    move-result v16

    if-eqz v16, :cond_a7

    .line 21
    invoke-virtual {v0, v15, v2, v8}, Landroidx/appcompat/widget/c;->n(Landroidx/appcompat/view/menu/i;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 22
    iget-boolean v2, v0, Landroidx/appcompat/widget/c;->s:Z

    if-eqz v2, :cond_8a

    .line 23
    invoke-static {v13, v10, v11, v7, v3}, Landroidx/appcompat/widget/ActionMenuView;->L(Landroid/view/View;IIII)I

    move-result v2

    sub-int/2addr v11, v2

    goto :goto_8d

    .line 24
    :cond_8a
    invoke-virtual {v13, v7, v7}, Landroid/view/View;->measure(II)V

    .line 25
    :goto_8d
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v6, v2

    if-nez v14, :cond_95

    move v14, v2

    .line 26
    :cond_95
    invoke-virtual {v15}, Landroidx/appcompat/view/menu/i;->getGroupId()I

    move-result v2

    const/4 v13, 0x1

    if-eqz v2, :cond_9f

    .line 27
    invoke-virtual {v9, v2, v13}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 28
    :cond_9f
    invoke-virtual {v15, v13}, Landroidx/appcompat/view/menu/i;->u(Z)V

    move/from16 v17, v4

    :goto_a4
    const/4 v0, 0x0

    goto/16 :goto_139

    .line 29
    :cond_a7
    invoke-virtual {v15}, Landroidx/appcompat/view/menu/i;->n()Z

    move-result v2

    if-eqz v2, :cond_133

    .line 30
    invoke-virtual {v15}, Landroidx/appcompat/view/menu/i;->getGroupId()I

    move-result v2

    .line 31
    invoke-virtual {v9, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v13

    if-gtz v5, :cond_b9

    if-eqz v13, :cond_c3

    :cond_b9
    if-lez v6, :cond_c3

    .line 32
    iget-boolean v3, v0, Landroidx/appcompat/widget/c;->s:Z

    if-eqz v3, :cond_c1

    if-lez v11, :cond_c3

    :cond_c1
    const/4 v3, 0x1

    goto :goto_c4

    :cond_c3
    const/4 v3, 0x0

    :goto_c4
    move/from16 v18, v3

    move/from16 v17, v4

    if-eqz v3, :cond_fb

    const/4 v3, 0x0

    .line 33
    invoke-virtual {v0, v15, v3, v8}, Landroidx/appcompat/widget/c;->n(Landroidx/appcompat/view/menu/i;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 34
    iget-boolean v3, v0, Landroidx/appcompat/widget/c;->s:Z

    if-eqz v3, :cond_df

    const/4 v3, 0x0

    .line 35
    invoke-static {v4, v10, v11, v7, v3}, Landroidx/appcompat/widget/ActionMenuView;->L(Landroid/view/View;IIII)I

    move-result v19

    sub-int v11, v11, v19

    if-nez v19, :cond_e2

    const/16 v18, 0x0

    goto :goto_e2

    .line 36
    :cond_df
    invoke-virtual {v4, v7, v7}, Landroid/view/View;->measure(II)V

    :cond_e2
    :goto_e2
    move/from16 v3, v18

    .line 37
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v6, v4

    if-nez v14, :cond_ec

    move v14, v4

    .line 38
    :cond_ec
    iget-boolean v4, v0, Landroidx/appcompat/widget/c;->s:Z

    if-eqz v4, :cond_f3

    if-ltz v6, :cond_f9

    goto :goto_f7

    :cond_f3
    add-int v4, v6, v14

    if-lez v4, :cond_f9

    :goto_f7
    const/4 v4, 0x1

    goto :goto_fa

    :cond_f9
    const/4 v4, 0x0

    :goto_fa
    and-int/2addr v3, v4

    :cond_fb
    if-eqz v3, :cond_104

    if-eqz v2, :cond_104

    const/4 v4, 0x1

    .line 39
    invoke-virtual {v9, v2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_12a

    :cond_104
    if-eqz v13, :cond_12a

    const/4 v4, 0x0

    .line 40
    invoke-virtual {v9, v2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/4 v4, 0x0

    :goto_10b
    if-ge v4, v12, :cond_12a

    .line 41
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/appcompat/view/menu/i;

    .line 42
    invoke-virtual {v13}, Landroidx/appcompat/view/menu/i;->getGroupId()I

    move-result v0

    if-ne v0, v2, :cond_125

    .line 43
    invoke-virtual {v13}, Landroidx/appcompat/view/menu/i;->l()Z

    move-result v0

    if-eqz v0, :cond_121

    add-int/lit8 v5, v5, 0x1

    :cond_121
    const/4 v0, 0x0

    .line 44
    invoke-virtual {v13, v0}, Landroidx/appcompat/view/menu/i;->u(Z)V

    :cond_125
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    goto :goto_10b

    :cond_12a
    :goto_12a
    if-eqz v3, :cond_12e

    add-int/lit8 v5, v5, -0x1

    .line 45
    :cond_12e
    invoke-virtual {v15, v3}, Landroidx/appcompat/view/menu/i;->u(Z)V

    goto/16 :goto_a4

    :cond_133
    move/from16 v17, v4

    const/4 v0, 0x0

    .line 46
    invoke-virtual {v15, v0}, Landroidx/appcompat/view/menu/i;->u(Z)V

    :goto_139
    add-int/lit8 v12, v12, 0x1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v4, v17

    const/4 v3, 0x0

    goto/16 :goto_6e

    :cond_143
    const/4 v2, 0x1

    return v2
.end method

.method public d(Landroid/content/Context;Landroidx/appcompat/view/menu/g;)V
    .registers 7

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/view/menu/b;->d(Landroid/content/Context;Landroidx/appcompat/view/menu/g;)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 3
    invoke-static {p1}, Lc/a/o/a;->b(Landroid/content/Context;)Lc/a/o/a;

    move-result-object p1

    .line 4
    iget-boolean v0, p0, Landroidx/appcompat/widget/c;->n:Z

    if-nez v0, :cond_15

    .line 5
    invoke-virtual {p1}, Lc/a/o/a;->h()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/appcompat/widget/c;->m:Z

    .line 6
    :cond_15
    iget-boolean v0, p0, Landroidx/appcompat/widget/c;->t:Z

    if-nez v0, :cond_1f

    .line 7
    invoke-virtual {p1}, Lc/a/o/a;->c()I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/c;->o:I

    .line 8
    :cond_1f
    iget-boolean v0, p0, Landroidx/appcompat/widget/c;->r:Z

    if-nez v0, :cond_29

    .line 9
    invoke-virtual {p1}, Lc/a/o/a;->d()I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/c;->q:I

    .line 10
    :cond_29
    iget p1, p0, Landroidx/appcompat/widget/c;->o:I

    .line 11
    iget-boolean v0, p0, Landroidx/appcompat/widget/c;->m:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5c

    .line 12
    iget-object v0, p0, Landroidx/appcompat/widget/c;->j:Landroidx/appcompat/widget/c$d;

    if-nez v0, :cond_54

    .line 13
    new-instance v0, Landroidx/appcompat/widget/c$d;

    iget-object v2, p0, Landroidx/appcompat/view/menu/b;->b:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Landroidx/appcompat/widget/c$d;-><init>(Landroidx/appcompat/widget/c;Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/widget/c;->j:Landroidx/appcompat/widget/c$d;

    .line 14
    iget-boolean v2, p0, Landroidx/appcompat/widget/c;->l:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_4b

    .line 15
    iget-object v2, p0, Landroidx/appcompat/widget/c;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 16
    iput-object v1, p0, Landroidx/appcompat/widget/c;->k:Landroid/graphics/drawable/Drawable;

    .line 17
    iput-boolean v3, p0, Landroidx/appcompat/widget/c;->l:Z

    .line 18
    :cond_4b
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 19
    iget-object v1, p0, Landroidx/appcompat/widget/c;->j:Landroidx/appcompat/widget/c$d;

    invoke-virtual {v1, v0, v0}, Landroid/widget/ImageView;->measure(II)V

    .line 20
    :cond_54
    iget-object v0, p0, Landroidx/appcompat/widget/c;->j:Landroidx/appcompat/widget/c$d;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p1, v0

    goto :goto_5e

    .line 21
    :cond_5c
    iput-object v1, p0, Landroidx/appcompat/widget/c;->j:Landroidx/appcompat/widget/c$d;

    .line 22
    :goto_5e
    iput p1, p0, Landroidx/appcompat/widget/c;->p:I

    const/high16 p1, 0x42600000    # 56.0f

    .line 23
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    mul-float p2, p2, p1

    float-to-int p1, p2

    iput p1, p0, Landroidx/appcompat/widget/c;->v:I

    return-void
.end method

.method public g(Landroidx/appcompat/view/menu/i;Landroidx/appcompat/view/menu/n$a;)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-interface {p2, p1, v0}, Landroidx/appcompat/view/menu/n$a;->f(Landroidx/appcompat/view/menu/i;I)V

    .line 2
    iget-object p1, p0, Landroidx/appcompat/view/menu/b;->i:Landroidx/appcompat/view/menu/n;

    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    .line 3
    check-cast p2, Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 4
    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setItemInvoker(Landroidx/appcompat/view/menu/g$b;)V

    .line 5
    iget-object p1, p0, Landroidx/appcompat/widget/c;->A:Landroidx/appcompat/widget/c$b;

    if-nez p1, :cond_18

    .line 6
    new-instance p1, Landroidx/appcompat/widget/c$b;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/c$b;-><init>(Landroidx/appcompat/widget/c;)V

    iput-object p1, p0, Landroidx/appcompat/widget/c;->A:Landroidx/appcompat/widget/c$b;

    .line 7
    :cond_18
    iget-object p1, p0, Landroidx/appcompat/widget/c;->A:Landroidx/appcompat/widget/c$b;

    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setPopupCallback(Landroidx/appcompat/view/menu/ActionMenuItemView$b;)V

    return-void
.end method

.method public i(Landroidx/appcompat/view/menu/r;)Z
    .registers 9

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    move-object v0, p1

    .line 2
    :goto_9
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/r;->e0()Landroid/view/Menu;

    move-result-object v2

    iget-object v3, p0, Landroidx/appcompat/view/menu/b;->d:Landroidx/appcompat/view/menu/g;

    if-eq v2, v3, :cond_18

    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/r;->e0()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/r;

    goto :goto_9

    .line 4
    :cond_18
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/r;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/c;->z(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_23

    return v1

    .line 5
    :cond_23
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/r;->getItem()Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    .line 6
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_2f
    const/4 v4, 0x1

    if-ge v3, v2, :cond_47

    .line 7
    invoke-virtual {p1, v3}, Landroidx/appcompat/view/menu/g;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 8
    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_44

    invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_44

    const/4 v1, 0x1

    goto :goto_47

    :cond_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    .line 9
    :cond_47
    :goto_47
    new-instance v2, Landroidx/appcompat/widget/c$a;

    iget-object v3, p0, Landroidx/appcompat/view/menu/b;->c:Landroid/content/Context;

    invoke-direct {v2, p0, v3, p1, v0}, Landroidx/appcompat/widget/c$a;-><init>(Landroidx/appcompat/widget/c;Landroid/content/Context;Landroidx/appcompat/view/menu/r;Landroid/view/View;)V

    iput-object v2, p0, Landroidx/appcompat/widget/c;->y:Landroidx/appcompat/widget/c$a;

    .line 10
    invoke-virtual {v2, v1}, Landroidx/appcompat/view/menu/l;->g(Z)V

    .line 11
    iget-object v0, p0, Landroidx/appcompat/widget/c;->y:Landroidx/appcompat/widget/c$a;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/l;->k()V

    .line 12
    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/b;->i(Landroidx/appcompat/view/menu/r;)Z

    return v4
.end method

.method public j(Z)V
    .registers 6

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/b;->j(Z)V

    .line 2
    iget-object p1, p0, Landroidx/appcompat/view/menu/b;->i:Landroidx/appcompat/view/menu/n;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 3
    iget-object p1, p0, Landroidx/appcompat/view/menu/b;->d:Landroidx/appcompat/view/menu/g;

    const/4 v0, 0x0

    if-eqz p1, :cond_2c

    .line 4
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g;->s()Ljava/util/ArrayList;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_18
    if-ge v2, v1, :cond_2c

    .line 6
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/i;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/i;->b()Landroidx/core/view/b;

    move-result-object v3

    if-eqz v3, :cond_29

    .line 7
    invoke-virtual {v3, p0}, Landroidx/core/view/b;->i(Landroidx/core/view/b$a;)V

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 8
    :cond_2c
    iget-object p1, p0, Landroidx/appcompat/view/menu/b;->d:Landroidx/appcompat/view/menu/g;

    if-eqz p1, :cond_35

    .line 9
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g;->z()Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_36

    :cond_35
    const/4 p1, 0x0

    .line 10
    :goto_36
    iget-boolean v1, p0, Landroidx/appcompat/widget/c;->m:Z

    if-eqz v1, :cond_53

    if-eqz p1, :cond_53

    .line 11
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_50

    .line 12
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/i;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->isActionViewExpanded()Z

    move-result p1

    xor-int/lit8 v0, p1, 0x1

    goto :goto_53

    :cond_50
    if-lez v1, :cond_53

    const/4 v0, 0x1

    :cond_53
    :goto_53
    if-eqz v0, :cond_83

    .line 13
    iget-object p1, p0, Landroidx/appcompat/widget/c;->j:Landroidx/appcompat/widget/c$d;

    if-nez p1, :cond_62

    .line 14
    new-instance p1, Landroidx/appcompat/widget/c$d;

    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->b:Landroid/content/Context;

    invoke-direct {p1, p0, v0}, Landroidx/appcompat/widget/c$d;-><init>(Landroidx/appcompat/widget/c;Landroid/content/Context;)V

    iput-object p1, p0, Landroidx/appcompat/widget/c;->j:Landroidx/appcompat/widget/c$d;

    .line 15
    :cond_62
    iget-object p1, p0, Landroidx/appcompat/widget/c;->j:Landroidx/appcompat/widget/c$d;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 16
    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->i:Landroidx/appcompat/view/menu/n;

    if-eq p1, v0, :cond_96

    if-eqz p1, :cond_75

    .line 17
    iget-object v0, p0, Landroidx/appcompat/widget/c;->j:Landroidx/appcompat/widget/c$d;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 18
    :cond_75
    iget-object p1, p0, Landroidx/appcompat/view/menu/b;->i:Landroidx/appcompat/view/menu/n;

    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    .line 19
    iget-object v0, p0, Landroidx/appcompat/widget/c;->j:Landroidx/appcompat/widget/c$d;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuView;->F()Landroidx/appcompat/widget/ActionMenuView$c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_96

    .line 20
    :cond_83
    iget-object p1, p0, Landroidx/appcompat/widget/c;->j:Landroidx/appcompat/widget/c$d;

    if-eqz p1, :cond_96

    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->i:Landroidx/appcompat/view/menu/n;

    if-ne p1, v0, :cond_96

    .line 21
    check-cast v0, Landroid/view/ViewGroup;

    iget-object p1, p0, Landroidx/appcompat/widget/c;->j:Landroidx/appcompat/widget/c$d;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 22
    :cond_96
    :goto_96
    iget-object p1, p0, Landroidx/appcompat/view/menu/b;->i:Landroidx/appcompat/view/menu/n;

    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    iget-boolean v0, p0, Landroidx/appcompat/widget/c;->m:Z

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionMenuView;->setOverflowReserved(Z)V

    return-void
.end method

.method public l(Landroid/view/ViewGroup;I)Z
    .registers 5

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/widget/c;->j:Landroidx/appcompat/widget/c$d;

    if-ne v0, v1, :cond_a

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_a
    invoke-super {p0, p1, p2}, Landroidx/appcompat/view/menu/b;->l(Landroid/view/ViewGroup;I)Z

    move-result p1

    return p1
.end method

.method public n(Landroidx/appcompat/view/menu/i;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->getActionView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 2
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->j()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 3
    :cond_c
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/b;->n(Landroidx/appcompat/view/menu/i;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 4
    :cond_10
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->isActionViewExpanded()Z

    move-result p1

    if-eqz p1, :cond_19

    const/16 p1, 0x8

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    :goto_1a
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    check-cast p3, Landroidx/appcompat/widget/ActionMenuView;

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 7
    invoke-virtual {p3, p1}, Landroidx/appcompat/widget/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p2

    if-nez p2, :cond_30

    .line 8
    invoke-virtual {p3, p1}, Landroidx/appcompat/widget/ActionMenuView;->E(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$c;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_30
    return-object v0
.end method

.method public o(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/n;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->i:Landroidx/appcompat/view/menu/n;

    .line 2
    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/b;->o(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/n;

    move-result-object p1

    if-eq v0, p1, :cond_e

    .line 3
    move-object v0, p1

    check-cast v0, Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ActionMenuView;->setPresenter(Landroidx/appcompat/widget/c;)V

    :cond_e
    return-object p1
.end method

.method public q(ILandroidx/appcompat/view/menu/i;)Z
    .registers 3

    .line 1
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/i;->l()Z

    move-result p1

    return p1
.end method

.method public y()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/c;->B()Z

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/widget/c;->C()Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method
