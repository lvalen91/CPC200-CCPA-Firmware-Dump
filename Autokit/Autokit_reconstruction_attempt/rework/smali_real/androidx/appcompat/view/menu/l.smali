.class public Landroidx/appcompat/view/menu/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroidx/appcompat/view/menu/g;

.field private final c:Z

.field private final d:I

.field private final e:I

.field private f:Landroid/view/View;

.field private g:I

.field private h:Z

.field private i:Landroidx/appcompat/view/menu/m$a;

.field private j:Landroidx/appcompat/view/menu/k;

.field private k:Landroid/widget/PopupWindow$OnDismissListener;

.field private final l:Landroid/widget/PopupWindow$OnDismissListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/view/menu/g;Landroid/view/View;ZI)V
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/view/menu/l;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/g;Landroid/view/View;ZII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/view/menu/g;Landroid/view/View;ZII)V
    .registers 8

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x800003

    .line 3
    iput v0, p0, Landroidx/appcompat/view/menu/l;->g:I

    .line 4
    new-instance v0, Landroidx/appcompat/view/menu/l$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/l$a;-><init>(Landroidx/appcompat/view/menu/l;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/l;->l:Landroid/widget/PopupWindow$OnDismissListener;

    .line 5
    iput-object p1, p0, Landroidx/appcompat/view/menu/l;->a:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Landroidx/appcompat/view/menu/l;->b:Landroidx/appcompat/view/menu/g;

    .line 7
    iput-object p3, p0, Landroidx/appcompat/view/menu/l;->f:Landroid/view/View;

    .line 8
    iput-boolean p4, p0, Landroidx/appcompat/view/menu/l;->c:Z

    .line 9
    iput p5, p0, Landroidx/appcompat/view/menu/l;->d:I

    .line 10
    iput p6, p0, Landroidx/appcompat/view/menu/l;->e:I

    return-void
.end method

.method private a()Landroidx/appcompat/view/menu/k;
    .registers 15

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/l;->a:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 2
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_1d

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    goto :goto_20

    .line 6
    :cond_1d
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 7
    :goto_20
    iget v0, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 8
    iget-object v1, p0, Landroidx/appcompat/view/menu/l;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lc/a/d;->abc_cascading_menus_min_smallest_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-lt v0, v1, :cond_38

    const/4 v0, 0x1

    goto :goto_39

    :cond_38
    const/4 v0, 0x0

    :goto_39
    if-eqz v0, :cond_4c

    .line 9
    new-instance v0, Landroidx/appcompat/view/menu/d;

    iget-object v2, p0, Landroidx/appcompat/view/menu/l;->a:Landroid/content/Context;

    iget-object v3, p0, Landroidx/appcompat/view/menu/l;->f:Landroid/view/View;

    iget v4, p0, Landroidx/appcompat/view/menu/l;->d:I

    iget v5, p0, Landroidx/appcompat/view/menu/l;->e:I

    iget-boolean v6, p0, Landroidx/appcompat/view/menu/l;->c:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/appcompat/view/menu/d;-><init>(Landroid/content/Context;Landroid/view/View;IIZ)V

    goto :goto_5e

    .line 10
    :cond_4c
    new-instance v0, Landroidx/appcompat/view/menu/q;

    iget-object v8, p0, Landroidx/appcompat/view/menu/l;->a:Landroid/content/Context;

    iget-object v9, p0, Landroidx/appcompat/view/menu/l;->b:Landroidx/appcompat/view/menu/g;

    iget-object v10, p0, Landroidx/appcompat/view/menu/l;->f:Landroid/view/View;

    iget v11, p0, Landroidx/appcompat/view/menu/l;->d:I

    iget v12, p0, Landroidx/appcompat/view/menu/l;->e:I

    iget-boolean v13, p0, Landroidx/appcompat/view/menu/l;->c:Z

    move-object v7, v0

    invoke-direct/range {v7 .. v13}, Landroidx/appcompat/view/menu/q;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/g;Landroid/view/View;IIZ)V

    .line 11
    :goto_5e
    iget-object v1, p0, Landroidx/appcompat/view/menu/l;->b:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/k;->k(Landroidx/appcompat/view/menu/g;)V

    .line 12
    iget-object v1, p0, Landroidx/appcompat/view/menu/l;->l:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/k;->u(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 13
    iget-object v1, p0, Landroidx/appcompat/view/menu/l;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/k;->p(Landroid/view/View;)V

    .line 14
    iget-object v1, p0, Landroidx/appcompat/view/menu/l;->i:Landroidx/appcompat/view/menu/m$a;

    invoke-interface {v0, v1}, Landroidx/appcompat/view/menu/m;->h(Landroidx/appcompat/view/menu/m$a;)V

    .line 15
    iget-boolean v1, p0, Landroidx/appcompat/view/menu/l;->h:Z

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/k;->r(Z)V

    .line 16
    iget v1, p0, Landroidx/appcompat/view/menu/l;->g:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/k;->s(I)V

    return-object v0
.end method

.method private l(IIZZ)V
    .registers 8

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/l;->c()Landroidx/appcompat/view/menu/k;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p4}, Landroidx/appcompat/view/menu/k;->v(Z)V

    if-eqz p3, :cond_49

    .line 3
    iget p3, p0, Landroidx/appcompat/view/menu/l;->g:I

    iget-object p4, p0, Landroidx/appcompat/view/menu/l;->f:Landroid/view/View;

    .line 4
    invoke-static {p4}, Landroidx/core/view/v;->C(Landroid/view/View;)I

    move-result p4

    .line 5
    invoke-static {p3, p4}, Landroidx/core/view/e;->b(II)I

    move-result p3

    and-int/lit8 p3, p3, 0x7

    const/4 p4, 0x5

    if-ne p3, p4, :cond_21

    .line 6
    iget-object p3, p0, Landroidx/appcompat/view/menu/l;->f:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    sub-int/2addr p1, p3

    .line 7
    :cond_21
    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/k;->t(I)V

    .line 8
    invoke-virtual {v0, p2}, Landroidx/appcompat/view/menu/k;->w(I)V

    .line 9
    iget-object p3, p0, Landroidx/appcompat/view/menu/l;->a:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    const/high16 p4, 0x42400000    # 48.0f

    mul-float p3, p3, p4

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p3, p4

    float-to-int p3, p3

    .line 10
    new-instance p4, Landroid/graphics/Rect;

    sub-int v1, p1, p3

    sub-int v2, p2, p3

    add-int/2addr p1, p3

    add-int/2addr p2, p3

    invoke-direct {p4, v1, v2, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 11
    invoke-virtual {v0, p4}, Landroidx/appcompat/view/menu/k;->q(Landroid/graphics/Rect;)V

    .line 12
    :cond_49
    invoke-interface {v0}, Landroidx/appcompat/view/menu/p;->g()V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/l;->d()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/l;->j:Landroidx/appcompat/view/menu/k;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/p;->dismiss()V

    :cond_b
    return-void
.end method

.method public c()Landroidx/appcompat/view/menu/k;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/l;->j:Landroidx/appcompat/view/menu/k;

    if-nez v0, :cond_a

    .line 2
    invoke-direct {p0}, Landroidx/appcompat/view/menu/l;->a()Landroidx/appcompat/view/menu/k;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/l;->j:Landroidx/appcompat/view/menu/k;

    .line 3
    :cond_a
    iget-object v0, p0, Landroidx/appcompat/view/menu/l;->j:Landroidx/appcompat/view/menu/k;

    return-object v0
.end method

.method public d()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/l;->j:Landroidx/appcompat/view/menu/k;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Landroidx/appcompat/view/menu/p;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method protected e()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Landroidx/appcompat/view/menu/l;->j:Landroidx/appcompat/view/menu/k;

    .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/l;->k:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_a

    .line 3
    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_a
    return-void
.end method

.method public f(Landroid/view/View;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/l;->f:Landroid/view/View;

    return-void
.end method

.method public g(Z)V
    .registers 3

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/l;->h:Z

    .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/l;->j:Landroidx/appcompat/view/menu/k;

    if-eqz v0, :cond_9

    .line 3
    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/k;->r(Z)V

    :cond_9
    return-void
.end method

.method public h(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/appcompat/view/menu/l;->g:I

    return-void
.end method

.method public i(Landroid/widget/PopupWindow$OnDismissListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/l;->k:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public j(Landroidx/appcompat/view/menu/m$a;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/l;->i:Landroidx/appcompat/view/menu/m$a;

    .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/l;->j:Landroidx/appcompat/view/menu/k;

    if-eqz v0, :cond_9

    .line 3
    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/m;->h(Landroidx/appcompat/view/menu/m$a;)V

    :cond_9
    return-void
.end method

.method public k()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/l;->m()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public m()Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/l;->d()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 2
    :cond_8
    iget-object v0, p0, Landroidx/appcompat/view/menu/l;->f:Landroid/view/View;

    const/4 v2, 0x0

    if-nez v0, :cond_e

    return v2

    .line 3
    :cond_e
    invoke-direct {p0, v2, v2, v2, v2}, Landroidx/appcompat/view/menu/l;->l(IIZZ)V

    return v1
.end method

.method public n(II)Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/l;->d()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 2
    :cond_8
    iget-object v0, p0, Landroidx/appcompat/view/menu/l;->f:Landroid/view/View;

    if-nez v0, :cond_e

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_e
    invoke-direct {p0, p1, p2, v1, v1}, Landroidx/appcompat/view/menu/l;->l(IIZZ)V

    return v1
.end method
