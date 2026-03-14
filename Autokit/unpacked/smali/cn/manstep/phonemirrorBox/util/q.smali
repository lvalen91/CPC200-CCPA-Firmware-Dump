.class public Lcn/manstep/phonemirrorBox/util/q;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcn/manstep/phonemirrorBox/util/q$d;,
    Lcn/manstep/phonemirrorBox/util/q$c;
  }
.end annotation

.field private final a:Landroid/widget/ListPopupWindow;

.field private final b:Landroid/view/View;

.field private final c:Lcn/manstep/phonemirrorBox/d0/g;

.field private final d:Lcn/manstep/phonemirrorBox/util/q$c;

.field private e:Lcn/manstep/phonemirrorBox/util/q$d;

.method public constructor <init>(Lcn/manstep/phonemirrorBox/util/q$c;)V
  .registers 6
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Landroid/widget/ListPopupWindow;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/q$c;->a(Lcn/manstep/phonemirrorBox/util/q$c;)Landroid/content/Context;
    move-result-object v1
    invoke-direct { v0, v1 }, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/util/q;->a:Landroid/widget/ListPopupWindow;
  .line 3
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/q$c;->b(Lcn/manstep/phonemirrorBox/util/q$c;)Landroid/view/View;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/q;->a:Landroid/widget/ListPopupWindow;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/q$c;->e(Lcn/manstep/phonemirrorBox/util/q$c;)Lcn/manstep/phonemirrorBox/d0/g;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V
  .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/q;->a:Landroid/widget/ListPopupWindow;
    const/4 v1, 1
    invoke-virtual { v0, v1 }, Landroid/widget/ListPopupWindow;->setModal(Z)V
  .line 6
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/q;->d:Lcn/manstep/phonemirrorBox/util/q$c;
  .line 7
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/q$c;->b(Lcn/manstep/phonemirrorBox/util/q$c;)Landroid/view/View;
    move-result-object v0
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/util/q;->b:Landroid/view/View;
  .line 8
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/q$c;->e(Lcn/manstep/phonemirrorBox/util/q$c;)Lcn/manstep/phonemirrorBox/d0/g;
    move-result-object v0
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/util/q;->c:Lcn/manstep/phonemirrorBox/d0/g;
  .line 9
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/q$c;->b(Lcn/manstep/phonemirrorBox/util/q$c;)Landroid/view/View;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/view/View;->getWidth()I
    move-result v0
    div-int/lit8 v0, v0, 2
  .line 10
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/q$c;->b(Lcn/manstep/phonemirrorBox/util/q$c;)Landroid/view/View;
    move-result-object v1
    invoke-virtual { v1 }, Landroid/view/View;->getHeight()I
    move-result v1
    mul-int/lit8 v1, v1, 2
  .line 11
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/q$c;->f(Lcn/manstep/phonemirrorBox/util/q$c;)I
    move-result v2
    if-nez v2, :L0
  .line 12
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/util/q;->a:Landroid/widget/ListPopupWindow;
    invoke-virtual { v2, v0 }, Landroid/widget/ListPopupWindow;->setWidth(I)V
    goto :L1
  :L0
  .line 13
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/util/q;->a:Landroid/widget/ListPopupWindow;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/q$c;->f(Lcn/manstep/phonemirrorBox/util/q$c;)I
    move-result v3
    invoke-virtual { v2, v3 }, Landroid/widget/ListPopupWindow;->setWidth(I)V
  :L1
  .line 14
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/q$c;->g(Lcn/manstep/phonemirrorBox/util/q$c;)I
    move-result v2
    if-nez v2, :L2
  .line 15
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/util/q;->a:Landroid/widget/ListPopupWindow;
    invoke-virtual { v2, v1 }, Landroid/widget/ListPopupWindow;->setHeight(I)V
    goto :L3
  :L2
  .line 16
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/util/q;->a:Landroid/widget/ListPopupWindow;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/q$c;->g(Lcn/manstep/phonemirrorBox/util/q$c;)I
    move-result v2
    invoke-virtual { v1, v2 }, Landroid/widget/ListPopupWindow;->setHeight(I)V
  :L3
  .line 17
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/q$c;->h(Lcn/manstep/phonemirrorBox/util/q$c;)I
    move-result v1
    div-int/lit8 v0, v0, 2
    sub-int/2addr v1, v0
  .line 18
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/q;->a:Landroid/widget/ListPopupWindow;
    invoke-virtual { v0, v1 }, Landroid/widget/ListPopupWindow;->setHorizontalOffset(I)V
  .line 19
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/q;->a:Landroid/widget/ListPopupWindow;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/q$c;->b(Lcn/manstep/phonemirrorBox/util/q$c;)Landroid/view/View;
    move-result-object v1
    invoke-virtual { v1 }, Landroid/view/View;->getHeight()I
    move-result v1
    neg-int v1, v1
    div-int/lit8 v1, v1, 4
    invoke-virtual { v0, v1 }, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V
  .line 20
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/q$c;->i(Lcn/manstep/phonemirrorBox/util/q$c;)Landroid/graphics/drawable/Drawable;
    move-result-object v0
    if-eqz v0, :L4
  .line 21
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/q;->a:Landroid/widget/ListPopupWindow;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/q$c;->i(Lcn/manstep/phonemirrorBox/util/q$c;)Landroid/graphics/drawable/Drawable;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
  :L4
  .line 22
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/q;->a:Landroid/widget/ListPopupWindow;
    new-instance v1, Lcn/manstep/phonemirrorBox/util/q$a;
    invoke-direct { v1, p0, p1 }, Lcn/manstep/phonemirrorBox/util/q$a;-><init>(Lcn/manstep/phonemirrorBox/util/q;Lcn/manstep/phonemirrorBox/util/q$c;)V
    invoke-virtual { v0, v1 }, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
  .line 23
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/q;->a:Landroid/widget/ListPopupWindow;
    new-instance v1, Lcn/manstep/phonemirrorBox/util/q$b;
    invoke-direct { v1, p0, p1 }, Lcn/manstep/phonemirrorBox/util/q$b;-><init>(Lcn/manstep/phonemirrorBox/util/q;Lcn/manstep/phonemirrorBox/util/q$c;)V
    invoke-virtual { v0, v1 }, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    return-void
.end method

.method static synthetic a(Lcn/manstep/phonemirrorBox/util/q;)Lcn/manstep/phonemirrorBox/util/q$d;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/util/q;->e:Lcn/manstep/phonemirrorBox/util/q$d;
    return-object p0
.end method

.method static synthetic b(Lcn/manstep/phonemirrorBox/util/q;)Landroid/widget/ListPopupWindow;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/util/q;->a:Landroid/widget/ListPopupWindow;
    return-object p0
.end method

.method public c(Lcn/manstep/phonemirrorBox/util/q$d;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/q;->e:Lcn/manstep/phonemirrorBox/util/q$d;
    return-void
.end method

.method public d(II)V
  .registers 9
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/q;->b:Landroid/view/View;
    invoke-virtual { v0 }, Landroid/view/View;->getWidth()I
    move-result v0
    const/4 v1, 2
    div-int/2addr v0, v1
  .line 2
    div-int/2addr v0, v1
    sub-int/2addr p1, v0
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/q;->a:Landroid/widget/ListPopupWindow;
    invoke-virtual { v0, p1 }, Landroid/widget/ListPopupWindow;->setHorizontalOffset(I)V
  .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/q;->c:Lcn/manstep/phonemirrorBox/d0/g;
    invoke-virtual { p1, p2 }, Lcn/manstep/phonemirrorBox/d0/g;->a(I)V
  .line 5
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/q;->a:Landroid/widget/ListPopupWindow;
    invoke-virtual { p1 }, Landroid/widget/ListPopupWindow;->show()V
  .line 6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/q;->d:Lcn/manstep/phonemirrorBox/util/q$c;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/q$c;->k(Lcn/manstep/phonemirrorBox/util/q$c;)Lcn/manstep/phonemirrorBox/util/q$d;
    move-result-object p1
    const/4 v0, 0
    if-eqz p1, :L0
  .line 7
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/q;->d:Lcn/manstep/phonemirrorBox/util/q$c;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/q$c;->k(Lcn/manstep/phonemirrorBox/util/q$c;)Lcn/manstep/phonemirrorBox/util/q$d;
    move-result-object p1
    invoke-interface { p1, v0 }, Lcn/manstep/phonemirrorBox/util/q$d;->a(Z)V
  :L0
  .line 8
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/q;->e:Lcn/manstep/phonemirrorBox/util/q$d;
    const/4 v2, 1
    if-eqz p1, :L1
  .line 9
    invoke-interface { p1, v2 }, Lcn/manstep/phonemirrorBox/util/q$d;->a(Z)V
  :L1
  .line 10
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/q;->a:Landroid/widget/ListPopupWindow;
    invoke-virtual { p1 }, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;
    move-result-object p1
    if-eqz p1, :L2
  .line 11
    invoke-virtual { p1 }, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v3
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;
  .line 12
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/util/q;->d:Lcn/manstep/phonemirrorBox/util/q$c;
    invoke-static { v4 }, Lcn/manstep/phonemirrorBox/util/q$c;->c(Lcn/manstep/phonemirrorBox/util/q$c;)I
    move-result v4
    iget-object v5, p0, Lcn/manstep/phonemirrorBox/util/q;->d:Lcn/manstep/phonemirrorBox/util/q$c;
    invoke-static { v5 }, Lcn/manstep/phonemirrorBox/util/q$c;->c(Lcn/manstep/phonemirrorBox/util/q$c;)I
    move-result v5
    invoke-virtual { v3, v0, v4, v0, v5 }, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V
  .line 13
    invoke-virtual { p1, v2 }, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V
  .line 14
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/util/q;->d:Lcn/manstep/phonemirrorBox/util/q$c;
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/util/q$c;->d(Lcn/manstep/phonemirrorBox/util/q$c;)I
    move-result v2
    invoke-virtual { p1, v2 }, Landroid/widget/ListView;->setFadingEdgeLength(I)V
  .line 15
    invoke-virtual { p1, v0 }, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V
  .line 16
    invoke-virtual { p1, p2 }, Landroid/widget/ListView;->setSelection(I)V
  .line 17
    invoke-virtual { p1, v1 }, Landroid/widget/ListView;->setOverScrollMode(I)V
  :L2
    return-void
.end method
