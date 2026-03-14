.class public Landroidx/appcompat/view/menu/e;
.super Ljava/lang/Object;
.implements Landroidx/appcompat/view/menu/m;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/appcompat/view/menu/e$a;
  }
.end annotation

.field b:Landroid/content/Context;

.field c:Landroid/view/LayoutInflater;

.field d:Landroidx/appcompat/view/menu/g;

.field e:Landroidx/appcompat/view/menu/ExpandedMenuView;

.field f:I

.field g:I

.field h:I

.field private i:Landroidx/appcompat/view/menu/m$a;

.field j:Landroidx/appcompat/view/menu/e$a;

.method public constructor <init>(II)V
  .registers 3
  .line 4
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 5
    iput p1, p0, Landroidx/appcompat/view/menu/e;->h:I
  .line 6
    iput p2, p0, Landroidx/appcompat/view/menu/e;->g:I
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
  .registers 4
    const/4 v0, 0
  .line 1
    invoke-direct { p0, p2, v0 }, Landroidx/appcompat/view/menu/e;-><init>(II)V
  .line 2
    iput-object p1, p0, Landroidx/appcompat/view/menu/e;->b:Landroid/content/Context;
  .line 3
    invoke-static { p1 }, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
    move-result-object p1
    iput-object p1, p0, Landroidx/appcompat/view/menu/e;->c:Landroid/view/LayoutInflater;
    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/g;Z)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/e;->i:Landroidx/appcompat/view/menu/m$a;
    if-eqz v0, :L0
  .line 2
    invoke-interface { v0, p1, p2 }, Landroidx/appcompat/view/menu/m$a;->a(Landroidx/appcompat/view/menu/g;Z)V
  :L0
    return-void
.end method

.method public b()Landroid/widget/ListAdapter;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/e;->j:Landroidx/appcompat/view/menu/e$a;
    if-nez v0, :L0
  .line 2
    new-instance v0, Landroidx/appcompat/view/menu/e$a;
    invoke-direct { v0, p0 }, Landroidx/appcompat/view/menu/e$a;-><init>(Landroidx/appcompat/view/menu/e;)V
    iput-object v0, p0, Landroidx/appcompat/view/menu/e;->j:Landroidx/appcompat/view/menu/e$a;
  :L0
  .line 3
    iget-object v0, p0, Landroidx/appcompat/view/menu/e;->j:Landroidx/appcompat/view/menu/e$a;
    return-object v0
.end method

.method public c()Z
  .registers 2
    const/4 v0, 0
    return v0
.end method

.method public d(Landroid/content/Context;Landroidx/appcompat/view/menu/g;)V
  .registers 5
  .line 1
    iget v0, p0, Landroidx/appcompat/view/menu/e;->g:I
    if-eqz v0, :L0
  .line 2
    new-instance v0, Landroid/view/ContextThemeWrapper;
    iget v1, p0, Landroidx/appcompat/view/menu/e;->g:I
    invoke-direct { v0, p1, v1 }, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V
    iput-object v0, p0, Landroidx/appcompat/view/menu/e;->b:Landroid/content/Context;
  .line 3
    invoke-static { v0 }, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
    move-result-object p1
    iput-object p1, p0, Landroidx/appcompat/view/menu/e;->c:Landroid/view/LayoutInflater;
    goto :L1
  :L0
  .line 4
    iget-object v0, p0, Landroidx/appcompat/view/menu/e;->b:Landroid/content/Context;
    if-eqz v0, :L1
  .line 5
    iput-object p1, p0, Landroidx/appcompat/view/menu/e;->b:Landroid/content/Context;
  .line 6
    iget-object v0, p0, Landroidx/appcompat/view/menu/e;->c:Landroid/view/LayoutInflater;
    if-nez v0, :L1
  .line 7
    invoke-static { p1 }, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
    move-result-object p1
    iput-object p1, p0, Landroidx/appcompat/view/menu/e;->c:Landroid/view/LayoutInflater;
  :L1
  .line 8
    iput-object p2, p0, Landroidx/appcompat/view/menu/e;->d:Landroidx/appcompat/view/menu/g;
  .line 9
    iget-object p1, p0, Landroidx/appcompat/view/menu/e;->j:Landroidx/appcompat/view/menu/e$a;
    if-eqz p1, :L2
  .line 10
    invoke-virtual { p1 }, Landroidx/appcompat/view/menu/e$a;->notifyDataSetChanged()V
  :L2
    return-void
.end method

.method public e(Landroidx/appcompat/view/menu/g;Landroidx/appcompat/view/menu/i;)Z
  .registers 3
    const/4 p1, 0
    return p1
.end method

.method public f(Landroidx/appcompat/view/menu/g;Landroidx/appcompat/view/menu/i;)Z
  .registers 3
    const/4 p1, 0
    return p1
.end method

.method public g(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/n;
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/e;->e:Landroidx/appcompat/view/menu/ExpandedMenuView;
    if-nez v0, :L1
  .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/e;->c:Landroid/view/LayoutInflater;
    sget v1, Lc/a/g;->abc_expanded_menu_layout:I
    const/4 v2, 0
    invoke-virtual { v0, v1, p1, v2 }, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    move-result-object p1
    check-cast p1, Landroidx/appcompat/view/menu/ExpandedMenuView;
    iput-object p1, p0, Landroidx/appcompat/view/menu/e;->e:Landroidx/appcompat/view/menu/ExpandedMenuView;
  .line 3
    iget-object p1, p0, Landroidx/appcompat/view/menu/e;->j:Landroidx/appcompat/view/menu/e$a;
    if-nez p1, :L0
  .line 4
    new-instance p1, Landroidx/appcompat/view/menu/e$a;
    invoke-direct { p1, p0 }, Landroidx/appcompat/view/menu/e$a;-><init>(Landroidx/appcompat/view/menu/e;)V
    iput-object p1, p0, Landroidx/appcompat/view/menu/e;->j:Landroidx/appcompat/view/menu/e$a;
  :L0
  .line 5
    iget-object p1, p0, Landroidx/appcompat/view/menu/e;->e:Landroidx/appcompat/view/menu/ExpandedMenuView;
    iget-object v0, p0, Landroidx/appcompat/view/menu/e;->j:Landroidx/appcompat/view/menu/e$a;
    invoke-virtual { p1, v0 }, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
  .line 6
    iget-object p1, p0, Landroidx/appcompat/view/menu/e;->e:Landroidx/appcompat/view/menu/ExpandedMenuView;
    invoke-virtual { p1, p0 }, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
  :L1
  .line 7
    iget-object p1, p0, Landroidx/appcompat/view/menu/e;->e:Landroidx/appcompat/view/menu/ExpandedMenuView;
    return-object p1
.end method

.method public h(Landroidx/appcompat/view/menu/m$a;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/e;->i:Landroidx/appcompat/view/menu/m$a;
    return-void
.end method

.method public i(Landroidx/appcompat/view/menu/r;)Z
  .registers 4
  .line 1
    invoke-virtual { p1 }, Landroidx/appcompat/view/menu/g;->hasVisibleItems()Z
    move-result v0
    if-nez v0, :L0
    const/4 p1, 0
    return p1
  :L0
  .line 2
    new-instance v0, Landroidx/appcompat/view/menu/h;
    invoke-direct { v0, p1 }, Landroidx/appcompat/view/menu/h;-><init>(Landroidx/appcompat/view/menu/g;)V
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Landroidx/appcompat/view/menu/h;->d(Landroid/os/IBinder;)V
  .line 3
    iget-object v0, p0, Landroidx/appcompat/view/menu/e;->i:Landroidx/appcompat/view/menu/m$a;
    if-eqz v0, :L1
  .line 4
    invoke-interface { v0, p1 }, Landroidx/appcompat/view/menu/m$a;->b(Landroidx/appcompat/view/menu/g;)Z
  :L1
    const/4 p1, 1
    return p1
.end method

.method public j(Z)V
  .registers 2
  .line 1
    iget-object p1, p0, Landroidx/appcompat/view/menu/e;->j:Landroidx/appcompat/view/menu/e$a;
    if-eqz p1, :L0
    invoke-virtual { p1 }, Landroidx/appcompat/view/menu/e$a;->notifyDataSetChanged()V
  :L0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroid/widget/AdapterView<",
      "*>;",
      "Landroid/view/View;",
      "IJ)V"
    }
  .end annotation
  .registers 6
  .line 1
    iget-object p1, p0, Landroidx/appcompat/view/menu/e;->d:Landroidx/appcompat/view/menu/g;
    iget-object p2, p0, Landroidx/appcompat/view/menu/e;->j:Landroidx/appcompat/view/menu/e$a;
    invoke-virtual { p2, p3 }, Landroidx/appcompat/view/menu/e$a;->b(I)Landroidx/appcompat/view/menu/i;
    move-result-object p2
    const/4 p3, 0
    invoke-virtual { p1, p2, p0, p3 }, Landroidx/appcompat/view/menu/g;->M(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/m;I)Z
    return-void
.end method
