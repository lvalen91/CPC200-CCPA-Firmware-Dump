.class abstract Landroidx/appcompat/view/menu/c;
.super Ljava/lang/Object;
.source "SourceFile"

.field final a:Landroid/content/Context;

.field private b:Lc/d/g;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Lc/d/g<",
      "Lc/g/e/a/b;",
      "Landroid/view/MenuItem;",
      ">;"
    }
  .end annotation
.end field

.field private c:Lc/d/g;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Lc/d/g<",
      "Lc/g/e/a/c;",
      "Landroid/view/SubMenu;",
      ">;"
    }
  .end annotation
.end field

.method constructor <init>(Landroid/content/Context;)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Landroidx/appcompat/view/menu/c;->a:Landroid/content/Context;
    return-void
.end method

.method final c(Landroid/view/MenuItem;)Landroid/view/MenuItem;
  .registers 4
  .line 1
    instance-of v0, p1, Lc/g/e/a/b;
    if-eqz v0, :L1
  .line 2
    move-object v0, p1
    check-cast v0, Lc/g/e/a/b;
  .line 3
    iget-object v1, p0, Landroidx/appcompat/view/menu/c;->b:Lc/d/g;
    if-nez v1, :L0
  .line 4
    new-instance v1, Lc/d/g;
    invoke-direct { v1 }, Lc/d/g;-><init>()V
    iput-object v1, p0, Landroidx/appcompat/view/menu/c;->b:Lc/d/g;
  :L0
  .line 5
    iget-object v1, p0, Landroidx/appcompat/view/menu/c;->b:Lc/d/g;
    invoke-virtual { v1, p1 }, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroid/view/MenuItem;
    if-nez p1, :L1
  .line 6
    new-instance p1, Landroidx/appcompat/view/menu/j;
    iget-object v1, p0, Landroidx/appcompat/view/menu/c;->a:Landroid/content/Context;
    invoke-direct { p1, v1, v0 }, Landroidx/appcompat/view/menu/j;-><init>(Landroid/content/Context;Lc/g/e/a/b;)V
  .line 7
    iget-object v1, p0, Landroidx/appcompat/view/menu/c;->b:Lc/d/g;
    invoke-virtual { v1, v0, p1 }, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L1
    return-object p1
.end method

.method final d(Landroid/view/SubMenu;)Landroid/view/SubMenu;
  .registers 4
  .line 1
    instance-of v0, p1, Lc/g/e/a/c;
    if-eqz v0, :L2
  .line 2
    check-cast p1, Lc/g/e/a/c;
  .line 3
    iget-object v0, p0, Landroidx/appcompat/view/menu/c;->c:Lc/d/g;
    if-nez v0, :L0
  .line 4
    new-instance v0, Lc/d/g;
    invoke-direct { v0 }, Lc/d/g;-><init>()V
    iput-object v0, p0, Landroidx/appcompat/view/menu/c;->c:Lc/d/g;
  :L0
  .line 5
    iget-object v0, p0, Landroidx/appcompat/view/menu/c;->c:Lc/d/g;
    invoke-virtual { v0, p1 }, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/view/SubMenu;
    if-nez v0, :L1
  .line 6
    new-instance v0, Landroidx/appcompat/view/menu/s;
    iget-object v1, p0, Landroidx/appcompat/view/menu/c;->a:Landroid/content/Context;
    invoke-direct { v0, v1, p1 }, Landroidx/appcompat/view/menu/s;-><init>(Landroid/content/Context;Lc/g/e/a/c;)V
  .line 7
    iget-object v1, p0, Landroidx/appcompat/view/menu/c;->c:Lc/d/g;
    invoke-virtual { v1, p1, v0 }, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L1
    return-object v0
  :L2
    return-object p1
.end method

.method final e()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/c;->b:Lc/d/g;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Lc/d/g;->clear()V
  :L0
  .line 3
    iget-object v0, p0, Landroidx/appcompat/view/menu/c;->c:Lc/d/g;
    if-eqz v0, :L1
  .line 4
    invoke-virtual { v0 }, Lc/d/g;->clear()V
  :L1
    return-void
.end method

.method final f(I)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/c;->b:Lc/d/g;
    if-nez v0, :L0
    return-void
  :L0
    const/4 v0, 0
  :L1
  .line 2
    iget-object v1, p0, Landroidx/appcompat/view/menu/c;->b:Lc/d/g;
    invoke-virtual { v1 }, Lc/d/g;->size()I
    move-result v1
    if-ge v0, v1, :L3
  .line 3
    iget-object v1, p0, Landroidx/appcompat/view/menu/c;->b:Lc/d/g;
    invoke-virtual { v1, v0 }, Lc/d/g;->i(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lc/g/e/a/b;
    invoke-interface { v1 }, Landroid/view/MenuItem;->getGroupId()I
    move-result v1
    if-ne v1, p1, :L2
  .line 4
    iget-object v1, p0, Landroidx/appcompat/view/menu/c;->b:Lc/d/g;
    invoke-virtual { v1, v0 }, Lc/d/g;->k(I)Ljava/lang/Object;
    add-int/lit8 v0, v0, -1
  :L2
    add-int/lit8 v0, v0, 1
    goto :L1
  :L3
    return-void
.end method

.method final g(I)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/c;->b:Lc/d/g;
    if-nez v0, :L0
    return-void
  :L0
    const/4 v0, 0
  :L1
  .line 2
    iget-object v1, p0, Landroidx/appcompat/view/menu/c;->b:Lc/d/g;
    invoke-virtual { v1 }, Lc/d/g;->size()I
    move-result v1
    if-ge v0, v1, :L3
  .line 3
    iget-object v1, p0, Landroidx/appcompat/view/menu/c;->b:Lc/d/g;
    invoke-virtual { v1, v0 }, Lc/d/g;->i(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lc/g/e/a/b;
    invoke-interface { v1 }, Landroid/view/MenuItem;->getItemId()I
    move-result v1
    if-ne v1, p1, :L2
  .line 4
    iget-object p1, p0, Landroidx/appcompat/view/menu/c;->b:Lc/d/g;
    invoke-virtual { p1, v0 }, Lc/d/g;->k(I)Ljava/lang/Object;
    goto :L3
  :L2
    add-int/lit8 v0, v0, 1
    goto :L1
  :L3
    return-void
.end method
