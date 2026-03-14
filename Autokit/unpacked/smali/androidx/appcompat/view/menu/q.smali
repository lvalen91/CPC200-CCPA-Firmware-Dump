.class final Landroidx/appcompat/view/menu/q;
.super Landroidx/appcompat/view/menu/k;
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroidx/appcompat/view/menu/m;
.implements Landroid/view/View$OnKeyListener;
.source "SourceFile"

.field private final static w:I

.field private final c:Landroid/content/Context;

.field private final d:Landroidx/appcompat/view/menu/g;

.field private final e:Landroidx/appcompat/view/menu/f;

.field private final f:Z

.field private final g:I

.field private final h:I

.field private final i:I

.field final j:Landroidx/appcompat/widget/j0;

.field final k:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final l:Landroid/view/View$OnAttachStateChangeListener;

.field private m:Landroid/widget/PopupWindow$OnDismissListener;

.field private n:Landroid/view/View;

.field o:Landroid/view/View;

.field private p:Landroidx/appcompat/view/menu/m$a;

.field q:Landroid/view/ViewTreeObserver;

.field private r:Z

.field private s:Z

.field private t:I

.field private u:I

.field private v:Z

.method static constructor <clinit>()V
  .registers 1
  .line 1
    sget v0, Lc/a/g;->abc_popup_menu_item_layout:I
    sput v0, Landroidx/appcompat/view/menu/q;->w:I
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/view/menu/g;Landroid/view/View;IIZ)V
  .registers 10
  .line 1
    invoke-direct { p0 }, Landroidx/appcompat/view/menu/k;-><init>()V
  .line 2
    new-instance v0, Landroidx/appcompat/view/menu/q$a;
    invoke-direct { v0, p0 }, Landroidx/appcompat/view/menu/q$a;-><init>(Landroidx/appcompat/view/menu/q;)V
    iput-object v0, p0, Landroidx/appcompat/view/menu/q;->k:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
  .line 3
    new-instance v0, Landroidx/appcompat/view/menu/q$b;
    invoke-direct { v0, p0 }, Landroidx/appcompat/view/menu/q$b;-><init>(Landroidx/appcompat/view/menu/q;)V
    iput-object v0, p0, Landroidx/appcompat/view/menu/q;->l:Landroid/view/View$OnAttachStateChangeListener;
    const/4 v0, 0
  .line 4
    iput v0, p0, Landroidx/appcompat/view/menu/q;->u:I
  .line 5
    iput-object p1, p0, Landroidx/appcompat/view/menu/q;->c:Landroid/content/Context;
  .line 6
    iput-object p2, p0, Landroidx/appcompat/view/menu/q;->d:Landroidx/appcompat/view/menu/g;
  .line 7
    iput-boolean p6, p0, Landroidx/appcompat/view/menu/q;->f:Z
  .line 8
    invoke-static { p1 }, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
    move-result-object p6
  .line 9
    new-instance v0, Landroidx/appcompat/view/menu/f;
    iget-boolean v1, p0, Landroidx/appcompat/view/menu/q;->f:Z
    sget v2, Landroidx/appcompat/view/menu/q;->w:I
    invoke-direct { v0, p2, p6, v1, v2 }, Landroidx/appcompat/view/menu/f;-><init>(Landroidx/appcompat/view/menu/g;Landroid/view/LayoutInflater;ZI)V
    iput-object v0, p0, Landroidx/appcompat/view/menu/q;->e:Landroidx/appcompat/view/menu/f;
  .line 10
    iput p4, p0, Landroidx/appcompat/view/menu/q;->h:I
  .line 11
    iput p5, p0, Landroidx/appcompat/view/menu/q;->i:I
  .line 12
    invoke-virtual { p1 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object p4
  .line 13
    invoke-virtual { p4 }, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
    move-result-object p5
    iget p5, p5, Landroid/util/DisplayMetrics;->widthPixels:I
    div-int/lit8 p5, p5, 2
    sget p6, Lc/a/d;->abc_config_prefDialogWidth:I
  .line 14
    invoke-virtual { p4, p6 }, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    move-result p4
  .line 15
    invoke-static { p5, p4 }, Ljava/lang/Math;->max(II)I
    move-result p4
    iput p4, p0, Landroidx/appcompat/view/menu/q;->g:I
  .line 16
    iput-object p3, p0, Landroidx/appcompat/view/menu/q;->n:Landroid/view/View;
  .line 17
    new-instance p3, Landroidx/appcompat/widget/j0;
    iget-object p4, p0, Landroidx/appcompat/view/menu/q;->c:Landroid/content/Context;
    iget p5, p0, Landroidx/appcompat/view/menu/q;->h:I
    iget p6, p0, Landroidx/appcompat/view/menu/q;->i:I
    const/4 v0, 0
    invoke-direct { p3, p4, v0, p5, p6 }, Landroidx/appcompat/widget/j0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    iput-object p3, p0, Landroidx/appcompat/view/menu/q;->j:Landroidx/appcompat/widget/j0;
  .line 18
    invoke-virtual { p2, p0, p1 }, Landroidx/appcompat/view/menu/g;->c(Landroidx/appcompat/view/menu/m;Landroid/content/Context;)V
    return-void
.end method

.method private z()Z
  .registers 8
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/view/menu/q;->b()Z
    move-result v0
    const/4 v1, 1
    if-eqz v0, :L0
    return v1
  :L0
  .line 2
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/q;->r:Z
    const/4 v2, 0
    if-nez v0, :L8
    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->n:Landroid/view/View;
    if-nez v0, :L1
    goto/16 :L8
  :L1
  .line 3
    iput-object v0, p0, Landroidx/appcompat/view/menu/q;->o:Landroid/view/View;
  .line 4
    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->j:Landroidx/appcompat/widget/j0;
    invoke-virtual { v0, p0 }, Landroidx/appcompat/widget/h0;->K(Landroid/widget/PopupWindow$OnDismissListener;)V
  .line 5
    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->j:Landroidx/appcompat/widget/j0;
    invoke-virtual { v0, p0 }, Landroidx/appcompat/widget/h0;->L(Landroid/widget/AdapterView$OnItemClickListener;)V
  .line 6
    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->j:Landroidx/appcompat/widget/j0;
    invoke-virtual { v0, v1 }, Landroidx/appcompat/widget/h0;->J(Z)V
  .line 7
    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->o:Landroid/view/View;
  .line 8
    iget-object v3, p0, Landroidx/appcompat/view/menu/q;->q:Landroid/view/ViewTreeObserver;
    if-nez v3, :L2
    const/4 v3, 1
    goto :L3
  :L2
    const/4 v3, 0
  :L3
  .line 9
    invoke-virtual { v0 }, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
    move-result-object v4
    iput-object v4, p0, Landroidx/appcompat/view/menu/q;->q:Landroid/view/ViewTreeObserver;
    if-eqz v3, :L4
  .line 10
    iget-object v3, p0, Landroidx/appcompat/view/menu/q;->k:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-virtual { v4, v3 }, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
  :L4
  .line 11
    iget-object v3, p0, Landroidx/appcompat/view/menu/q;->l:Landroid/view/View$OnAttachStateChangeListener;
    invoke-virtual { v0, v3 }, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
  .line 12
    iget-object v3, p0, Landroidx/appcompat/view/menu/q;->j:Landroidx/appcompat/widget/j0;
    invoke-virtual { v3, v0 }, Landroidx/appcompat/widget/h0;->D(Landroid/view/View;)V
  .line 13
    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->j:Landroidx/appcompat/widget/j0;
    iget v3, p0, Landroidx/appcompat/view/menu/q;->u:I
    invoke-virtual { v0, v3 }, Landroidx/appcompat/widget/h0;->G(I)V
  .line 14
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/q;->s:Z
    const/4 v3, 0
    if-nez v0, :L5
  .line 15
    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->e:Landroidx/appcompat/view/menu/f;
    iget-object v4, p0, Landroidx/appcompat/view/menu/q;->c:Landroid/content/Context;
    iget v5, p0, Landroidx/appcompat/view/menu/q;->g:I
    invoke-static { v0, v3, v4, v5 }, Landroidx/appcompat/view/menu/k;->o(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I
    move-result v0
    iput v0, p0, Landroidx/appcompat/view/menu/q;->t:I
  .line 16
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/q;->s:Z
  :L5
  .line 17
    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->j:Landroidx/appcompat/widget/j0;
    iget v4, p0, Landroidx/appcompat/view/menu/q;->t:I
    invoke-virtual { v0, v4 }, Landroidx/appcompat/widget/h0;->F(I)V
  .line 18
    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->j:Landroidx/appcompat/widget/j0;
    const/4 v4, 2
    invoke-virtual { v0, v4 }, Landroidx/appcompat/widget/h0;->I(I)V
  .line 19
    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->j:Landroidx/appcompat/widget/j0;
    invoke-virtual { p0 }, Landroidx/appcompat/view/menu/k;->n()Landroid/graphics/Rect;
    move-result-object v4
    invoke-virtual { v0, v4 }, Landroidx/appcompat/widget/h0;->H(Landroid/graphics/Rect;)V
  .line 20
    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->j:Landroidx/appcompat/widget/j0;
    invoke-virtual { v0 }, Landroidx/appcompat/widget/h0;->g()V
  .line 21
    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->j:Landroidx/appcompat/widget/j0;
    invoke-virtual { v0 }, Landroidx/appcompat/widget/h0;->l()Landroid/widget/ListView;
    move-result-object v0
  .line 22
    invoke-virtual { v0, p0 }, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V
  .line 23
    iget-boolean v4, p0, Landroidx/appcompat/view/menu/q;->v:Z
    if-eqz v4, :L7
    iget-object v4, p0, Landroidx/appcompat/view/menu/q;->d:Landroidx/appcompat/view/menu/g;
    invoke-virtual { v4 }, Landroidx/appcompat/view/menu/g;->x()Ljava/lang/CharSequence;
    move-result-object v4
    if-eqz v4, :L7
  .line 24
    iget-object v4, p0, Landroidx/appcompat/view/menu/q;->c:Landroid/content/Context;
  .line 25
    invoke-static { v4 }, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
    move-result-object v4
    sget v5, Lc/a/g;->abc_popup_menu_header_item_layout:I
    invoke-virtual { v4, v5, v0, v2 }, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    move-result-object v4
    check-cast v4, Landroid/widget/FrameLayout;
    const v5, 16908310
  .line 26
    invoke-virtual { v4, v5 }, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;
    move-result-object v5
    check-cast v5, Landroid/widget/TextView;
    if-eqz v5, :L6
  .line 27
    iget-object v6, p0, Landroidx/appcompat/view/menu/q;->d:Landroidx/appcompat/view/menu/g;
    invoke-virtual { v6 }, Landroidx/appcompat/view/menu/g;->x()Ljava/lang/CharSequence;
    move-result-object v6
    invoke-virtual { v5, v6 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  :L6
  .line 28
    invoke-virtual { v4, v2 }, Landroid/widget/FrameLayout;->setEnabled(Z)V
  .line 29
    invoke-virtual { v0, v4, v3, v2 }, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
  :L7
  .line 30
    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->j:Landroidx/appcompat/widget/j0;
    iget-object v2, p0, Landroidx/appcompat/view/menu/q;->e:Landroidx/appcompat/view/menu/f;
    invoke-virtual { v0, v2 }, Landroidx/appcompat/widget/h0;->o(Landroid/widget/ListAdapter;)V
  .line 31
    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->j:Landroidx/appcompat/widget/j0;
    invoke-virtual { v0 }, Landroidx/appcompat/widget/h0;->g()V
    return v1
  :L8
    return v2
.end method

.method public a(Landroidx/appcompat/view/menu/g;Z)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->d:Landroidx/appcompat/view/menu/g;
    if-eq p1, v0, :L0
    return-void
  :L0
  .line 2
    invoke-virtual { p0 }, Landroidx/appcompat/view/menu/q;->dismiss()V
  .line 3
    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->p:Landroidx/appcompat/view/menu/m$a;
    if-eqz v0, :L1
  .line 4
    invoke-interface { v0, p1, p2 }, Landroidx/appcompat/view/menu/m$a;->a(Landroidx/appcompat/view/menu/g;Z)V
  :L1
    return-void
.end method

.method public b()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/q;->r:Z
    if-nez v0, :L0
    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->j:Landroidx/appcompat/widget/j0;
    invoke-virtual { v0 }, Landroidx/appcompat/widget/h0;->b()Z
    move-result v0
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public c()Z
  .registers 2
    const/4 v0, 0
    return v0
.end method

.method public dismiss()V
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/view/menu/q;->b()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->j:Landroidx/appcompat/widget/j0;
    invoke-virtual { v0 }, Landroidx/appcompat/widget/h0;->dismiss()V
  :L0
    return-void
.end method

.method public g()V
  .registers 3
  .line 1
    invoke-direct { p0 }, Landroidx/appcompat/view/menu/q;->z()Z
    move-result v0
    if-eqz v0, :L0
    return-void
  :L0
  .line 2
    new-instance v0, Ljava/lang/IllegalStateException;
    const-string v1, "StandardMenuPopup cannot be used without an anchor"
    invoke-direct { v0, v1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public h(Landroidx/appcompat/view/menu/m$a;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/q;->p:Landroidx/appcompat/view/menu/m$a;
    return-void
.end method

.method public i(Landroidx/appcompat/view/menu/r;)Z
  .registers 11
  .line 1
    invoke-virtual { p1 }, Landroidx/appcompat/view/menu/g;->hasVisibleItems()Z
    move-result v0
    const/4 v1, 0
    if-eqz v0, :L2
  .line 2
    new-instance v0, Landroidx/appcompat/view/menu/l;
    iget-object v3, p0, Landroidx/appcompat/view/menu/q;->c:Landroid/content/Context;
    iget-object v5, p0, Landroidx/appcompat/view/menu/q;->o:Landroid/view/View;
    iget-boolean v6, p0, Landroidx/appcompat/view/menu/q;->f:Z
    iget v7, p0, Landroidx/appcompat/view/menu/q;->h:I
    iget v8, p0, Landroidx/appcompat/view/menu/q;->i:I
    move-object v2, v0
    move-object v4, p1
    invoke-direct/range { v2 .. v8 }, Landroidx/appcompat/view/menu/l;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/g;Landroid/view/View;ZII)V
  .line 3
    iget-object v2, p0, Landroidx/appcompat/view/menu/q;->p:Landroidx/appcompat/view/menu/m$a;
    invoke-virtual { v0, v2 }, Landroidx/appcompat/view/menu/l;->j(Landroidx/appcompat/view/menu/m$a;)V
  .line 4
    invoke-static { p1 }, Landroidx/appcompat/view/menu/k;->x(Landroidx/appcompat/view/menu/g;)Z
    move-result v2
    invoke-virtual { v0, v2 }, Landroidx/appcompat/view/menu/l;->g(Z)V
  .line 5
    iget-object v2, p0, Landroidx/appcompat/view/menu/q;->m:Landroid/widget/PopupWindow$OnDismissListener;
    invoke-virtual { v0, v2 }, Landroidx/appcompat/view/menu/l;->i(Landroid/widget/PopupWindow$OnDismissListener;)V
    const/4 v2, 0
  .line 6
    iput-object v2, p0, Landroidx/appcompat/view/menu/q;->m:Landroid/widget/PopupWindow$OnDismissListener;
  .line 7
    iget-object v2, p0, Landroidx/appcompat/view/menu/q;->d:Landroidx/appcompat/view/menu/g;
    invoke-virtual { v2, v1 }, Landroidx/appcompat/view/menu/g;->e(Z)V
  .line 8
    iget-object v2, p0, Landroidx/appcompat/view/menu/q;->j:Landroidx/appcompat/widget/j0;
    invoke-virtual { v2 }, Landroidx/appcompat/widget/h0;->e()I
    move-result v2
  .line 9
    iget-object v3, p0, Landroidx/appcompat/view/menu/q;->j:Landroidx/appcompat/widget/j0;
    invoke-virtual { v3 }, Landroidx/appcompat/widget/h0;->h()I
    move-result v3
  .line 10
    iget v4, p0, Landroidx/appcompat/view/menu/q;->u:I
    iget-object v5, p0, Landroidx/appcompat/view/menu/q;->n:Landroid/view/View;
  .line 11
    invoke-static { v5 }, Landroidx/core/view/v;->C(Landroid/view/View;)I
    move-result v5
  .line 12
    invoke-static { v4, v5 }, Landroid/view/Gravity;->getAbsoluteGravity(II)I
    move-result v4
    and-int/lit8 v4, v4, 7
    const/4 v5, 5
    if-ne v4, v5, :L0
  .line 13
    iget-object v4, p0, Landroidx/appcompat/view/menu/q;->n:Landroid/view/View;
    invoke-virtual { v4 }, Landroid/view/View;->getWidth()I
    move-result v4
    add-int/2addr v2, v4
  :L0
  .line 14
    invoke-virtual { v0, v2, v3 }, Landroidx/appcompat/view/menu/l;->n(II)Z
    move-result v0
    if-eqz v0, :L2
  .line 15
    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->p:Landroidx/appcompat/view/menu/m$a;
    if-eqz v0, :L1
  .line 16
    invoke-interface { v0, p1 }, Landroidx/appcompat/view/menu/m$a;->b(Landroidx/appcompat/view/menu/g;)Z
  :L1
    const/4 p1, 1
    return p1
  :L2
    return v1
.end method

.method public j(Z)V
  .registers 2
    const/4 p1, 0
  .line 1
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/q;->s:Z
  .line 2
    iget-object p1, p0, Landroidx/appcompat/view/menu/q;->e:Landroidx/appcompat/view/menu/f;
    if-eqz p1, :L0
  .line 3
    invoke-virtual { p1 }, Landroidx/appcompat/view/menu/f;->notifyDataSetChanged()V
  :L0
    return-void
.end method

.method public k(Landroidx/appcompat/view/menu/g;)V
  .registers 2
    return-void
.end method

.method public l()Landroid/widget/ListView;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->j:Landroidx/appcompat/widget/j0;
    invoke-virtual { v0 }, Landroidx/appcompat/widget/h0;->l()Landroid/widget/ListView;
    move-result-object v0
    return-object v0
.end method

.method public onDismiss()V
  .registers 3
    const/4 v0, 1
  .line 1
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/q;->r:Z
  .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->d:Landroidx/appcompat/view/menu/g;
    invoke-virtual { v0 }, Landroidx/appcompat/view/menu/g;->close()V
  .line 3
    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->q:Landroid/view/ViewTreeObserver;
    if-eqz v0, :L1
  .line 4
    invoke-virtual { v0 }, Landroid/view/ViewTreeObserver;->isAlive()Z
    move-result v0
    if-nez v0, :L0
    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->o:Landroid/view/View;
    invoke-virtual { v0 }, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
    move-result-object v0
    iput-object v0, p0, Landroidx/appcompat/view/menu/q;->q:Landroid/view/ViewTreeObserver;
  :L0
  .line 5
    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->q:Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroidx/appcompat/view/menu/q;->k:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-virtual { v0, v1 }, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    const/4 v0, 0
  .line 6
    iput-object v0, p0, Landroidx/appcompat/view/menu/q;->q:Landroid/view/ViewTreeObserver;
  :L1
  .line 7
    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->o:Landroid/view/View;
    iget-object v1, p0, Landroidx/appcompat/view/menu/q;->l:Landroid/view/View$OnAttachStateChangeListener;
    invoke-virtual { v0, v1 }, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
  .line 8
    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->m:Landroid/widget/PopupWindow$OnDismissListener;
    if-eqz v0, :L2
  .line 9
    invoke-interface { v0 }, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V
  :L2
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
  .registers 4
  .line 1
    invoke-virtual { p3 }, Landroid/view/KeyEvent;->getAction()I
    move-result p1
    const/4 p3, 1
    if-ne p1, p3, :L0
    const/16 p1, 82
    if-ne p2, p1, :L0
  .line 2
    invoke-virtual { p0 }, Landroidx/appcompat/view/menu/q;->dismiss()V
    return p3
  :L0
    const/4 p1, 0
    return p1
.end method

.method public p(Landroid/view/View;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/q;->n:Landroid/view/View;
    return-void
.end method

.method public r(Z)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->e:Landroidx/appcompat/view/menu/f;
    invoke-virtual { v0, p1 }, Landroidx/appcompat/view/menu/f;->d(Z)V
    return-void
.end method

.method public s(I)V
  .registers 2
  .line 1
    iput p1, p0, Landroidx/appcompat/view/menu/q;->u:I
    return-void
.end method

.method public t(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->j:Landroidx/appcompat/widget/j0;
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/h0;->d(I)V
    return-void
.end method

.method public u(Landroid/widget/PopupWindow$OnDismissListener;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/q;->m:Landroid/widget/PopupWindow$OnDismissListener;
    return-void
.end method

.method public v(Z)V
  .registers 2
  .line 1
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/q;->v:Z
    return-void
.end method

.method public w(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->j:Landroidx/appcompat/widget/j0;
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/h0;->n(I)V
    return-void
.end method
