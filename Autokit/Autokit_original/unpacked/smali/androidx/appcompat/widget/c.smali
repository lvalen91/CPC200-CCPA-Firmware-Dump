.class Landroidx/appcompat/widget/c;
.super Landroidx/appcompat/view/menu/b;
.implements Landroidx/core/view/b$a;
.source "SourceFile"

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

.method public constructor <init>(Landroid/content/Context;)V
  .registers 4
  .line 1
    sget v0, Lc/a/g;->abc_action_menu_layout:I
    sget v1, Lc/a/g;->abc_action_menu_item_layout:I
    invoke-direct { p0, p1, v0, v1 }, Landroidx/appcompat/view/menu/b;-><init>(Landroid/content/Context;II)V
  .line 2
    new-instance p1, Landroid/util/SparseBooleanArray;
    invoke-direct { p1 }, Landroid/util/SparseBooleanArray;-><init>()V
    iput-object p1, p0, Landroidx/appcompat/widget/c;->w:Landroid/util/SparseBooleanArray;
  .line 3
    new-instance p1, Landroidx/appcompat/widget/c$f;
    invoke-direct { p1, p0 }, Landroidx/appcompat/widget/c$f;-><init>(Landroidx/appcompat/widget/c;)V
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
    const/4 v1, 0
    if-nez v0, :L0
    return-object v1
  :L0
  .line 2
    invoke-virtual { v0 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v2
    const/4 v3, 0
  :L1
    if-ge v3, v2, :L3
  .line 3
    invoke-virtual { v0, v3 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v4
  .line 4
    instance-of v5, v4, Landroidx/appcompat/view/menu/n$a;
    if-eqz v5, :L2
    move-object v5, v4
    check-cast v5, Landroidx/appcompat/view/menu/n$a;
  .line 5
    invoke-interface { v5 }, Landroidx/appcompat/view/menu/n$a;->getItemData()Landroidx/appcompat/view/menu/i;
    move-result-object v5
    if-ne v5, p1, :L2
    return-object v4
  :L2
    add-int/lit8 v3, v3, 1
    goto :L1
  :L3
    return-object v1
.end method

.method public A()Landroid/graphics/drawable/Drawable;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/c;->j:Landroidx/appcompat/widget/c$d;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    return-object v0
  :L0
  .line 3
    iget-boolean v0, p0, Landroidx/appcompat/widget/c;->l:Z
    if-eqz v0, :L1
  .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/c;->k:Landroid/graphics/drawable/Drawable;
    return-object v0
  :L1
    const/4 v0, 0
    return-object v0
.end method

.method public B()Z
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/c;->z:Landroidx/appcompat/widget/c$c;
    const/4 v1, 1
    if-eqz v0, :L0
    iget-object v2, p0, Landroidx/appcompat/view/menu/b;->i:Landroidx/appcompat/view/menu/n;
    if-eqz v2, :L0
  .line 2
    check-cast v2, Landroid/view/View;
    invoke-virtual { v2, v0 }, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z
    const/4 v0, 0
  .line 3
    iput-object v0, p0, Landroidx/appcompat/widget/c;->z:Landroidx/appcompat/widget/c$c;
    return v1
  :L0
  .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/c;->x:Landroidx/appcompat/widget/c$e;
    if-eqz v0, :L1
  .line 5
    invoke-virtual { v0 }, Landroidx/appcompat/view/menu/l;->b()V
    return v1
  :L1
    const/4 v0, 0
    return v0
.end method

.method public C()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/c;->y:Landroidx/appcompat/widget/c$a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Landroidx/appcompat/view/menu/l;->b()V
    const/4 v0, 1
    return v0
  :L0
    const/4 v0, 0
    return v0
.end method

.method public D()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/c;->z:Landroidx/appcompat/widget/c$c;
    if-nez v0, :L1
    invoke-virtual { p0 }, Landroidx/appcompat/widget/c;->E()Z
    move-result v0
    if-eqz v0, :L0
    goto :L1
  :L0
    const/4 v0, 0
    goto :L2
  :L1
    const/4 v0, 1
  :L2
    return v0
.end method

.method public E()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/c;->x:Landroidx/appcompat/widget/c$e;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Landroidx/appcompat/view/menu/l;->d()Z
    move-result v0
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public F(Landroid/content/res/Configuration;)V
  .registers 3
  .line 1
    iget-boolean p1, p0, Landroidx/appcompat/widget/c;->r:Z
    if-nez p1, :L0
  .line 2
    iget-object p1, p0, Landroidx/appcompat/view/menu/b;->c:Landroid/content/Context;
    invoke-static { p1 }, Lc/a/o/a;->b(Landroid/content/Context;)Lc/a/o/a;
    move-result-object p1
    invoke-virtual { p1 }, Lc/a/o/a;->d()I
    move-result p1
    iput p1, p0, Landroidx/appcompat/widget/c;->q:I
  :L0
  .line 3
    iget-object p1, p0, Landroidx/appcompat/view/menu/b;->d:Landroidx/appcompat/view/menu/g;
    if-eqz p1, :L1
    const/4 v0, 1
  .line 4
    invoke-virtual { p1, v0 }, Landroidx/appcompat/view/menu/g;->K(Z)V
  :L1
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
    invoke-virtual { p1, v0 }, Landroidx/appcompat/widget/ActionMenuView;->b(Landroidx/appcompat/view/menu/g;)V
    return-void
.end method

.method public I(Landroid/graphics/drawable/Drawable;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/c;->j:Landroidx/appcompat/widget/c$d;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    goto :L1
  :L0
    const/4 v0, 1
  .line 3
    iput-boolean v0, p0, Landroidx/appcompat/widget/c;->l:Z
  .line 4
    iput-object p1, p0, Landroidx/appcompat/widget/c;->k:Landroid/graphics/drawable/Drawable;
  :L1
    return-void
.end method

.method public J(Z)V
  .registers 2
  .line 1
    iput-boolean p1, p0, Landroidx/appcompat/widget/c;->m:Z
    const/4 p1, 1
  .line 2
    iput-boolean p1, p0, Landroidx/appcompat/widget/c;->n:Z
    return-void
.end method

.method public K()Z
  .registers 8
  .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/c;->m:Z
    if-eqz v0, :L0
    invoke-virtual { p0 }, Landroidx/appcompat/widget/c;->E()Z
    move-result v0
    if-nez v0, :L0
    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->d:Landroidx/appcompat/view/menu/g;
    if-eqz v0, :L0
    iget-object v1, p0, Landroidx/appcompat/view/menu/b;->i:Landroidx/appcompat/view/menu/n;
    if-eqz v1, :L0
    iget-object v1, p0, Landroidx/appcompat/widget/c;->z:Landroidx/appcompat/widget/c$c;
    if-nez v1, :L0
  .line 2
    invoke-virtual { v0 }, Landroidx/appcompat/view/menu/g;->z()Ljava/util/ArrayList;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/util/ArrayList;->isEmpty()Z
    move-result v0
    if-nez v0, :L0
  .line 3
    new-instance v0, Landroidx/appcompat/widget/c$e;
    iget-object v3, p0, Landroidx/appcompat/view/menu/b;->c:Landroid/content/Context;
    iget-object v4, p0, Landroidx/appcompat/view/menu/b;->d:Landroidx/appcompat/view/menu/g;
    iget-object v5, p0, Landroidx/appcompat/widget/c;->j:Landroidx/appcompat/widget/c$d;
    const/4 v6, 1
    move-object v1, v0
    move-object v2, p0
    invoke-direct/range { v1 .. v6 }, Landroidx/appcompat/widget/c$e;-><init>(Landroidx/appcompat/widget/c;Landroid/content/Context;Landroidx/appcompat/view/menu/g;Landroid/view/View;Z)V
  .line 4
    new-instance v1, Landroidx/appcompat/widget/c$c;
    invoke-direct { v1, p0, v0 }, Landroidx/appcompat/widget/c$c;-><init>(Landroidx/appcompat/widget/c;Landroidx/appcompat/widget/c$e;)V
    iput-object v1, p0, Landroidx/appcompat/widget/c;->z:Landroidx/appcompat/widget/c$c;
  .line 5
    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->i:Landroidx/appcompat/view/menu/n;
    check-cast v0, Landroid/view/View;
    invoke-virtual { v0, v1 }, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    const/4 v0, 1
    return v0
  :L0
    const/4 v0, 0
    return v0
.end method

.method public a(Landroidx/appcompat/view/menu/g;Z)V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/widget/c;->y()Z
  .line 2
    invoke-super { p0, p1, p2 }, Landroidx/appcompat/view/menu/b;->a(Landroidx/appcompat/view/menu/g;Z)V
    return-void
.end method

.method public c()Z
  .registers 21
    move-object/from16 v0, p0
  .line 1
    iget-object v1, v0, Landroidx/appcompat/view/menu/b;->d:Landroidx/appcompat/view/menu/g;
    const/4 v2, 0
    const/4 v3, 0
    if-eqz v1, :L0
  .line 2
    invoke-virtual { v1 }, Landroidx/appcompat/view/menu/g;->E()Ljava/util/ArrayList;
    move-result-object v1
  .line 3
    invoke-virtual { v1 }, Ljava/util/ArrayList;->size()I
    move-result v4
    goto :L1
  :L0
    move-object v1, v2
    const/4 v4, 0
  :L1
  .line 4
    iget v5, v0, Landroidx/appcompat/widget/c;->q:I
  .line 5
    iget v6, v0, Landroidx/appcompat/widget/c;->p:I
  .line 6
    invoke-static { v3, v3 }, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result v7
  .line 7
    iget-object v8, v0, Landroidx/appcompat/view/menu/b;->i:Landroidx/appcompat/view/menu/n;
    check-cast v8, Landroid/view/ViewGroup;
    const/4 v9, 0
    const/4 v10, 0
    const/4 v11, 0
    const/4 v12, 0
  :L2
    if-ge v9, v4, :L7
  .line 8
    invoke-virtual { v1, v9 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v14
    check-cast v14, Landroidx/appcompat/view/menu/i;
  .line 9
    invoke-virtual { v14 }, Landroidx/appcompat/view/menu/i;->o()Z
    move-result v15
    if-eqz v15, :L3
    add-int/lit8 v11, v11, 1
    goto :L5
  :L3
  .line 10
    invoke-virtual { v14 }, Landroidx/appcompat/view/menu/i;->n()Z
    move-result v15
    if-eqz v15, :L4
    add-int/lit8 v12, v12, 1
    goto :L5
  :L4
    const/4 v10, 1
  :L5
  .line 11
    iget-boolean v13, v0, Landroidx/appcompat/widget/c;->u:Z
    if-eqz v13, :L6
    invoke-virtual { v14 }, Landroidx/appcompat/view/menu/i;->isActionViewExpanded()Z
    move-result v13
    if-eqz v13, :L6
    const/4 v5, 0
  :L6
    add-int/lit8 v9, v9, 1
    goto :L2
  :L7
  .line 12
    iget-boolean v9, v0, Landroidx/appcompat/widget/c;->m:Z
    if-eqz v9, :L9
    if-nez v10, :L8
    add-int/2addr v12, v11
    if-le v12, v5, :L9
  :L8
    add-int/lit8 v5, v5, -1
  :L9
    sub-int/2addr v5, v11
  .line 13
    iget-object v9, v0, Landroidx/appcompat/widget/c;->w:Landroid/util/SparseBooleanArray;
  .line 14
    invoke-virtual { v9 }, Landroid/util/SparseBooleanArray;->clear()V
  .line 15
    iget-boolean v10, v0, Landroidx/appcompat/widget/c;->s:Z
    if-eqz v10, :L10
  .line 16
    iget v10, v0, Landroidx/appcompat/widget/c;->v:I
    div-int v11, v6, v10
  .line 17
    rem-int v12, v6, v10
  .line 18
    div-int/2addr v12, v11
    add-int/2addr v10, v12
    goto :L11
  :L10
    const/4 v10, 0
    const/4 v11, 0
  :L11
    const/4 v12, 0
    const/4 v14, 0
  :L12
    if-ge v12, v4, :L39
  .line 19
    invoke-virtual { v1, v12 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v15
    check-cast v15, Landroidx/appcompat/view/menu/i;
  .line 20
    invoke-virtual { v15 }, Landroidx/appcompat/view/menu/i;->o()Z
    move-result v16
    if-eqz v16, :L18
  .line 21
    invoke-virtual { v0, v15, v2, v8 }, Landroidx/appcompat/widget/c;->n(Landroidx/appcompat/view/menu/i;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    move-result-object v13
  .line 22
    iget-boolean v2, v0, Landroidx/appcompat/widget/c;->s:Z
    if-eqz v2, :L13
  .line 23
    invoke-static { v13, v10, v11, v7, v3 }, Landroidx/appcompat/widget/ActionMenuView;->L(Landroid/view/View;IIII)I
    move-result v2
    sub-int/2addr v11, v2
    goto :L14
  :L13
  .line 24
    invoke-virtual { v13, v7, v7 }, Landroid/view/View;->measure(II)V
  :L14
  .line 25
    invoke-virtual { v13 }, Landroid/view/View;->getMeasuredWidth()I
    move-result v2
    sub-int/2addr v6, v2
    if-nez v14, :L15
    move v14, v2
  :L15
  .line 26
    invoke-virtual { v15 }, Landroidx/appcompat/view/menu/i;->getGroupId()I
    move-result v2
    const/4 v13, 1
    if-eqz v2, :L16
  .line 27
    invoke-virtual { v9, v2, v13 }, Landroid/util/SparseBooleanArray;->put(IZ)V
  :L16
  .line 28
    invoke-virtual { v15, v13 }, Landroidx/appcompat/view/menu/i;->u(Z)V
    move/from16 v17, v4
  :L17
    const/4 v0, 0
    goto/16 :L38
  :L18
  .line 29
    invoke-virtual { v15 }, Landroidx/appcompat/view/menu/i;->n()Z
    move-result v2
    if-eqz v2, :L37
  .line 30
    invoke-virtual { v15 }, Landroidx/appcompat/view/menu/i;->getGroupId()I
    move-result v2
  .line 31
    invoke-virtual { v9, v2 }, Landroid/util/SparseBooleanArray;->get(I)Z
    move-result v13
    if-gtz v5, :L19
    if-eqz v13, :L21
  :L19
    if-lez v6, :L21
  .line 32
    iget-boolean v3, v0, Landroidx/appcompat/widget/c;->s:Z
    if-eqz v3, :L20
    if-lez v11, :L21
  :L20
    const/4 v3, 1
    goto :L22
  :L21
    const/4 v3, 0
  :L22
    move/from16 v18, v3
    move/from16 v17, v4
    if-eqz v3, :L30
    const/4 v3, 0
  .line 33
    invoke-virtual { v0, v15, v3, v8 }, Landroidx/appcompat/widget/c;->n(Landroidx/appcompat/view/menu/i;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    move-result-object v4
  .line 34
    iget-boolean v3, v0, Landroidx/appcompat/widget/c;->s:Z
    if-eqz v3, :L23
    const/4 v3, 0
  .line 35
    invoke-static { v4, v10, v11, v7, v3 }, Landroidx/appcompat/widget/ActionMenuView;->L(Landroid/view/View;IIII)I
    move-result v19
    sub-int v11, v11, v19
    if-nez v19, :L24
    const/16 v18, 0
    goto :L24
  :L23
  .line 36
    invoke-virtual { v4, v7, v7 }, Landroid/view/View;->measure(II)V
  :L24
    move/from16 v3, v18
  .line 37
    invoke-virtual { v4 }, Landroid/view/View;->getMeasuredWidth()I
    move-result v4
    sub-int/2addr v6, v4
    if-nez v14, :L25
    move v14, v4
  :L25
  .line 38
    iget-boolean v4, v0, Landroidx/appcompat/widget/c;->s:Z
    if-eqz v4, :L26
    if-ltz v6, :L28
    goto :L27
  :L26
    add-int v4, v6, v14
    if-lez v4, :L28
  :L27
    const/4 v4, 1
    goto :L29
  :L28
    const/4 v4, 0
  :L29
    and-int/2addr v3, v4
  :L30
    if-eqz v3, :L31
    if-eqz v2, :L31
    const/4 v4, 1
  .line 39
    invoke-virtual { v9, v2, v4 }, Landroid/util/SparseBooleanArray;->put(IZ)V
    goto :L35
  :L31
    if-eqz v13, :L35
    const/4 v4, 0
  .line 40
    invoke-virtual { v9, v2, v4 }, Landroid/util/SparseBooleanArray;->put(IZ)V
    const/4 v4, 0
  :L32
    if-ge v4, v12, :L35
  .line 41
    invoke-virtual { v1, v4 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v13
    check-cast v13, Landroidx/appcompat/view/menu/i;
  .line 42
    invoke-virtual { v13 }, Landroidx/appcompat/view/menu/i;->getGroupId()I
    move-result v0
    if-ne v0, v2, :L34
  .line 43
    invoke-virtual { v13 }, Landroidx/appcompat/view/menu/i;->l()Z
    move-result v0
    if-eqz v0, :L33
    add-int/lit8 v5, v5, 1
  :L33
    const/4 v0, 0
  .line 44
    invoke-virtual { v13, v0 }, Landroidx/appcompat/view/menu/i;->u(Z)V
  :L34
    add-int/lit8 v4, v4, 1
    move-object/from16 v0, p0
    goto :L32
  :L35
    if-eqz v3, :L36
    add-int/lit8 v5, v5, -1
  :L36
  .line 45
    invoke-virtual { v15, v3 }, Landroidx/appcompat/view/menu/i;->u(Z)V
    goto/16 :L17
  :L37
    move/from16 v17, v4
    const/4 v0, 0
  .line 46
    invoke-virtual { v15, v0 }, Landroidx/appcompat/view/menu/i;->u(Z)V
  :L38
    add-int/lit8 v12, v12, 1
    const/4 v2, 0
    move-object/from16 v0, p0
    move/from16 v4, v17
    const/4 v3, 0
    goto/16 :L12
  :L39
    const/4 v2, 1
    return v2
.end method

.method public d(Landroid/content/Context;Landroidx/appcompat/view/menu/g;)V
  .registers 7
  .line 1
    invoke-super { p0, p1, p2 }, Landroidx/appcompat/view/menu/b;->d(Landroid/content/Context;Landroidx/appcompat/view/menu/g;)V
  .line 2
    invoke-virtual { p1 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object p2
  .line 3
    invoke-static { p1 }, Lc/a/o/a;->b(Landroid/content/Context;)Lc/a/o/a;
    move-result-object p1
  .line 4
    iget-boolean v0, p0, Landroidx/appcompat/widget/c;->n:Z
    if-nez v0, :L0
  .line 5
    invoke-virtual { p1 }, Lc/a/o/a;->h()Z
    move-result v0
    iput-boolean v0, p0, Landroidx/appcompat/widget/c;->m:Z
  :L0
  .line 6
    iget-boolean v0, p0, Landroidx/appcompat/widget/c;->t:Z
    if-nez v0, :L1
  .line 7
    invoke-virtual { p1 }, Lc/a/o/a;->c()I
    move-result v0
    iput v0, p0, Landroidx/appcompat/widget/c;->o:I
  :L1
  .line 8
    iget-boolean v0, p0, Landroidx/appcompat/widget/c;->r:Z
    if-nez v0, :L2
  .line 9
    invoke-virtual { p1 }, Lc/a/o/a;->d()I
    move-result p1
    iput p1, p0, Landroidx/appcompat/widget/c;->q:I
  :L2
  .line 10
    iget p1, p0, Landroidx/appcompat/widget/c;->o:I
  .line 11
    iget-boolean v0, p0, Landroidx/appcompat/widget/c;->m:Z
    const/4 v1, 0
    if-eqz v0, :L5
  .line 12
    iget-object v0, p0, Landroidx/appcompat/widget/c;->j:Landroidx/appcompat/widget/c$d;
    if-nez v0, :L4
  .line 13
    new-instance v0, Landroidx/appcompat/widget/c$d;
    iget-object v2, p0, Landroidx/appcompat/view/menu/b;->b:Landroid/content/Context;
    invoke-direct { v0, p0, v2 }, Landroidx/appcompat/widget/c$d;-><init>(Landroidx/appcompat/widget/c;Landroid/content/Context;)V
    iput-object v0, p0, Landroidx/appcompat/widget/c;->j:Landroidx/appcompat/widget/c$d;
  .line 14
    iget-boolean v2, p0, Landroidx/appcompat/widget/c;->l:Z
    const/4 v3, 0
    if-eqz v2, :L3
  .line 15
    iget-object v2, p0, Landroidx/appcompat/widget/c;->k:Landroid/graphics/drawable/Drawable;
    invoke-virtual { v0, v2 }, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
  .line 16
    iput-object v1, p0, Landroidx/appcompat/widget/c;->k:Landroid/graphics/drawable/Drawable;
  .line 17
    iput-boolean v3, p0, Landroidx/appcompat/widget/c;->l:Z
  :L3
  .line 18
    invoke-static { v3, v3 }, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result v0
  .line 19
    iget-object v1, p0, Landroidx/appcompat/widget/c;->j:Landroidx/appcompat/widget/c$d;
    invoke-virtual { v1, v0, v0 }, Landroid/widget/ImageView;->measure(II)V
  :L4
  .line 20
    iget-object v0, p0, Landroidx/appcompat/widget/c;->j:Landroidx/appcompat/widget/c$d;
    invoke-virtual { v0 }, Landroid/widget/ImageView;->getMeasuredWidth()I
    move-result v0
    sub-int/2addr p1, v0
    goto :L6
  :L5
  .line 21
    iput-object v1, p0, Landroidx/appcompat/widget/c;->j:Landroidx/appcompat/widget/c$d;
  :L6
  .line 22
    iput p1, p0, Landroidx/appcompat/widget/c;->p:I
    const/high16 p1, 16992
  .line 23
    invoke-virtual { p2 }, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
    move-result-object p2
    iget p2, p2, Landroid/util/DisplayMetrics;->density:F
    mul-float p2, p2, p1
    float-to-int p1, p2
    iput p1, p0, Landroidx/appcompat/widget/c;->v:I
    return-void
.end method

.method public g(Landroidx/appcompat/view/menu/i;Landroidx/appcompat/view/menu/n$a;)V
  .registers 4
    const/4 v0, 0
  .line 1
    invoke-interface { p2, p1, v0 }, Landroidx/appcompat/view/menu/n$a;->f(Landroidx/appcompat/view/menu/i;I)V
  .line 2
    iget-object p1, p0, Landroidx/appcompat/view/menu/b;->i:Landroidx/appcompat/view/menu/n;
    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;
  .line 3
    check-cast p2, Landroidx/appcompat/view/menu/ActionMenuItemView;
  .line 4
    invoke-virtual { p2, p1 }, Landroidx/appcompat/view/menu/ActionMenuItemView;->setItemInvoker(Landroidx/appcompat/view/menu/g$b;)V
  .line 5
    iget-object p1, p0, Landroidx/appcompat/widget/c;->A:Landroidx/appcompat/widget/c$b;
    if-nez p1, :L0
  .line 6
    new-instance p1, Landroidx/appcompat/widget/c$b;
    invoke-direct { p1, p0 }, Landroidx/appcompat/widget/c$b;-><init>(Landroidx/appcompat/widget/c;)V
    iput-object p1, p0, Landroidx/appcompat/widget/c;->A:Landroidx/appcompat/widget/c$b;
  :L0
  .line 7
    iget-object p1, p0, Landroidx/appcompat/widget/c;->A:Landroidx/appcompat/widget/c$b;
    invoke-virtual { p2, p1 }, Landroidx/appcompat/view/menu/ActionMenuItemView;->setPopupCallback(Landroidx/appcompat/view/menu/ActionMenuItemView$b;)V
    return-void
.end method

.method public i(Landroidx/appcompat/view/menu/r;)Z
  .registers 9
  .line 1
    invoke-virtual { p1 }, Landroidx/appcompat/view/menu/g;->hasVisibleItems()Z
    move-result v0
    const/4 v1, 0
    if-nez v0, :L0
    return v1
  :L0
    move-object v0, p1
  :L1
  .line 2
    invoke-virtual { v0 }, Landroidx/appcompat/view/menu/r;->e0()Landroid/view/Menu;
    move-result-object v2
    iget-object v3, p0, Landroidx/appcompat/view/menu/b;->d:Landroidx/appcompat/view/menu/g;
    if-eq v2, v3, :L2
  .line 3
    invoke-virtual { v0 }, Landroidx/appcompat/view/menu/r;->e0()Landroid/view/Menu;
    move-result-object v0
    check-cast v0, Landroidx/appcompat/view/menu/r;
    goto :L1
  :L2
  .line 4
    invoke-virtual { v0 }, Landroidx/appcompat/view/menu/r;->getItem()Landroid/view/MenuItem;
    move-result-object v0
    invoke-direct { p0, v0 }, Landroidx/appcompat/widget/c;->z(Landroid/view/MenuItem;)Landroid/view/View;
    move-result-object v0
    if-nez v0, :L3
    return v1
  :L3
  .line 5
    invoke-virtual { p1 }, Landroidx/appcompat/view/menu/r;->getItem()Landroid/view/MenuItem;
    move-result-object v2
    invoke-interface { v2 }, Landroid/view/MenuItem;->getItemId()I
  .line 6
    invoke-virtual { p1 }, Landroidx/appcompat/view/menu/g;->size()I
    move-result v2
    const/4 v3, 0
  :L4
    const/4 v4, 1
    if-ge v3, v2, :L6
  .line 7
    invoke-virtual { p1, v3 }, Landroidx/appcompat/view/menu/g;->getItem(I)Landroid/view/MenuItem;
    move-result-object v5
  .line 8
    invoke-interface { v5 }, Landroid/view/MenuItem;->isVisible()Z
    move-result v6
    if-eqz v6, :L5
    invoke-interface { v5 }, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;
    move-result-object v5
    if-eqz v5, :L5
    const/4 v1, 1
    goto :L6
  :L5
    add-int/lit8 v3, v3, 1
    goto :L4
  :L6
  .line 9
    new-instance v2, Landroidx/appcompat/widget/c$a;
    iget-object v3, p0, Landroidx/appcompat/view/menu/b;->c:Landroid/content/Context;
    invoke-direct { v2, p0, v3, p1, v0 }, Landroidx/appcompat/widget/c$a;-><init>(Landroidx/appcompat/widget/c;Landroid/content/Context;Landroidx/appcompat/view/menu/r;Landroid/view/View;)V
    iput-object v2, p0, Landroidx/appcompat/widget/c;->y:Landroidx/appcompat/widget/c$a;
  .line 10
    invoke-virtual { v2, v1 }, Landroidx/appcompat/view/menu/l;->g(Z)V
  .line 11
    iget-object v0, p0, Landroidx/appcompat/widget/c;->y:Landroidx/appcompat/widget/c$a;
    invoke-virtual { v0 }, Landroidx/appcompat/view/menu/l;->k()V
  .line 12
    invoke-super { p0, p1 }, Landroidx/appcompat/view/menu/b;->i(Landroidx/appcompat/view/menu/r;)Z
    return v4
.end method

.method public j(Z)V
  .registers 6
  .line 1
    invoke-super { p0, p1 }, Landroidx/appcompat/view/menu/b;->j(Z)V
  .line 2
    iget-object p1, p0, Landroidx/appcompat/view/menu/b;->i:Landroidx/appcompat/view/menu/n;
    check-cast p1, Landroid/view/View;
    invoke-virtual { p1 }, Landroid/view/View;->requestLayout()V
  .line 3
    iget-object p1, p0, Landroidx/appcompat/view/menu/b;->d:Landroidx/appcompat/view/menu/g;
    const/4 v0, 0
    if-eqz p1, :L2
  .line 4
    invoke-virtual { p1 }, Landroidx/appcompat/view/menu/g;->s()Ljava/util/ArrayList;
    move-result-object p1
  .line 5
    invoke-virtual { p1 }, Ljava/util/ArrayList;->size()I
    move-result v1
    const/4 v2, 0
  :L0
    if-ge v2, v1, :L2
  .line 6
    invoke-virtual { p1, v2 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Landroidx/appcompat/view/menu/i;
    invoke-virtual { v3 }, Landroidx/appcompat/view/menu/i;->b()Landroidx/core/view/b;
    move-result-object v3
    if-eqz v3, :L1
  .line 7
    invoke-virtual { v3, p0 }, Landroidx/core/view/b;->i(Landroidx/core/view/b$a;)V
  :L1
    add-int/lit8 v2, v2, 1
    goto :L0
  :L2
  .line 8
    iget-object p1, p0, Landroidx/appcompat/view/menu/b;->d:Landroidx/appcompat/view/menu/g;
    if-eqz p1, :L3
  .line 9
    invoke-virtual { p1 }, Landroidx/appcompat/view/menu/g;->z()Ljava/util/ArrayList;
    move-result-object p1
    goto :L4
  :L3
    const/4 p1, 0
  :L4
  .line 10
    iget-boolean v1, p0, Landroidx/appcompat/widget/c;->m:Z
    if-eqz v1, :L6
    if-eqz p1, :L6
  .line 11
    invoke-virtual { p1 }, Ljava/util/ArrayList;->size()I
    move-result v1
    const/4 v2, 1
    if-ne v1, v2, :L5
  .line 12
    invoke-virtual { p1, v0 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroidx/appcompat/view/menu/i;
    invoke-virtual { p1 }, Landroidx/appcompat/view/menu/i;->isActionViewExpanded()Z
    move-result p1
    xor-int/lit8 v0, p1, 1
    goto :L6
  :L5
    if-lez v1, :L6
    const/4 v0, 1
  :L6
    if-eqz v0, :L9
  .line 13
    iget-object p1, p0, Landroidx/appcompat/widget/c;->j:Landroidx/appcompat/widget/c$d;
    if-nez p1, :L7
  .line 14
    new-instance p1, Landroidx/appcompat/widget/c$d;
    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->b:Landroid/content/Context;
    invoke-direct { p1, p0, v0 }, Landroidx/appcompat/widget/c$d;-><init>(Landroidx/appcompat/widget/c;Landroid/content/Context;)V
    iput-object p1, p0, Landroidx/appcompat/widget/c;->j:Landroidx/appcompat/widget/c$d;
  :L7
  .line 15
    iget-object p1, p0, Landroidx/appcompat/widget/c;->j:Landroidx/appcompat/widget/c$d;
    invoke-virtual { p1 }, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;
    move-result-object p1
    check-cast p1, Landroid/view/ViewGroup;
  .line 16
    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->i:Landroidx/appcompat/view/menu/n;
    if-eq p1, v0, :L10
    if-eqz p1, :L8
  .line 17
    iget-object v0, p0, Landroidx/appcompat/widget/c;->j:Landroidx/appcompat/widget/c$d;
    invoke-virtual { p1, v0 }, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
  :L8
  .line 18
    iget-object p1, p0, Landroidx/appcompat/view/menu/b;->i:Landroidx/appcompat/view/menu/n;
    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;
  .line 19
    iget-object v0, p0, Landroidx/appcompat/widget/c;->j:Landroidx/appcompat/widget/c$d;
    invoke-virtual { p1 }, Landroidx/appcompat/widget/ActionMenuView;->F()Landroidx/appcompat/widget/ActionMenuView$c;
    move-result-object v1
    invoke-virtual { p1, v0, v1 }, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    goto :L10
  :L9
  .line 20
    iget-object p1, p0, Landroidx/appcompat/widget/c;->j:Landroidx/appcompat/widget/c$d;
    if-eqz p1, :L10
    invoke-virtual { p1 }, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;
    move-result-object p1
    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->i:Landroidx/appcompat/view/menu/n;
    if-ne p1, v0, :L10
  .line 21
    check-cast v0, Landroid/view/ViewGroup;
    iget-object p1, p0, Landroidx/appcompat/widget/c;->j:Landroidx/appcompat/widget/c$d;
    invoke-virtual { v0, p1 }, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
  :L10
  .line 22
    iget-object p1, p0, Landroidx/appcompat/view/menu/b;->i:Landroidx/appcompat/view/menu/n;
    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;
    iget-boolean v0, p0, Landroidx/appcompat/widget/c;->m:Z
    invoke-virtual { p1, v0 }, Landroidx/appcompat/widget/ActionMenuView;->setOverflowReserved(Z)V
    return-void
.end method

.method public l(Landroid/view/ViewGroup;I)Z
  .registers 5
  .line 1
    invoke-virtual { p1, p2 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v0
    iget-object v1, p0, Landroidx/appcompat/widget/c;->j:Landroidx/appcompat/widget/c$d;
    if-ne v0, v1, :L0
    const/4 p1, 0
    return p1
  :L0
  .line 2
    invoke-super { p0, p1, p2 }, Landroidx/appcompat/view/menu/b;->l(Landroid/view/ViewGroup;I)Z
    move-result p1
    return p1
.end method

.method public n(Landroidx/appcompat/view/menu/i;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
  .registers 6
  .line 1
    invoke-virtual { p1 }, Landroidx/appcompat/view/menu/i;->getActionView()Landroid/view/View;
    move-result-object v0
    if-eqz v0, :L0
  .line 2
    invoke-virtual { p1 }, Landroidx/appcompat/view/menu/i;->j()Z
    move-result v1
    if-eqz v1, :L1
  :L0
  .line 3
    invoke-super { p0, p1, p2, p3 }, Landroidx/appcompat/view/menu/b;->n(Landroidx/appcompat/view/menu/i;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    move-result-object v0
  :L1
  .line 4
    invoke-virtual { p1 }, Landroidx/appcompat/view/menu/i;->isActionViewExpanded()Z
    move-result p1
    if-eqz p1, :L2
    const/16 p1, 8
    goto :L3
  :L2
    const/4 p1, 0
  :L3
    invoke-virtual { v0, p1 }, Landroid/view/View;->setVisibility(I)V
  .line 5
    check-cast p3, Landroidx/appcompat/widget/ActionMenuView;
  .line 6
    invoke-virtual { v0 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object p1
  .line 7
    invoke-virtual { p3, p1 }, Landroidx/appcompat/widget/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    move-result p2
    if-nez p2, :L4
  .line 8
    invoke-virtual { p3, p1 }, Landroidx/appcompat/widget/ActionMenuView;->E(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$c;
    move-result-object p1
    invoke-virtual { v0, p1 }, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  :L4
    return-object v0
.end method

.method public o(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/n;
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->i:Landroidx/appcompat/view/menu/n;
  .line 2
    invoke-super { p0, p1 }, Landroidx/appcompat/view/menu/b;->o(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/n;
    move-result-object p1
    if-eq v0, p1, :L0
  .line 3
    move-object v0, p1
    check-cast v0, Landroidx/appcompat/widget/ActionMenuView;
    invoke-virtual { v0, p0 }, Landroidx/appcompat/widget/ActionMenuView;->setPresenter(Landroidx/appcompat/widget/c;)V
  :L0
    return-object p1
.end method

.method public q(ILandroidx/appcompat/view/menu/i;)Z
  .registers 3
  .line 1
    invoke-virtual { p2 }, Landroidx/appcompat/view/menu/i;->l()Z
    move-result p1
    return p1
.end method

.method public y()Z
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/widget/c;->B()Z
    move-result v0
  .line 2
    invoke-virtual { p0 }, Landroidx/appcompat/widget/c;->C()Z
    move-result v1
    or-int/2addr v0, v1
    return v0
.end method
