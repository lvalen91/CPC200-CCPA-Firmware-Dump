.class public Landroidx/appcompat/app/o$d;
.super Lc/a/o/b;
.implements Landroidx/appcompat/view/menu/g$a;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/app/o;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 1
  name = "d"
.end annotation

.field private final d:Landroid/content/Context;

.field private final e:Landroidx/appcompat/view/menu/g;

.field private f:Lc/a/o/b$a;

.field private g:Ljava/lang/ref/WeakReference;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/ref/WeakReference<",
      "Landroid/view/View;",
      ">;"
    }
  .end annotation
.end field

.field final synthetic h:Landroidx/appcompat/app/o;

.method public constructor <init>(Landroidx/appcompat/app/o;Landroid/content/Context;Lc/a/o/b$a;)V
  .registers 4
  .line 1
    iput-object p1, p0, Landroidx/appcompat/app/o$d;->h:Landroidx/appcompat/app/o;
    invoke-direct { p0 }, Lc/a/o/b;-><init>()V
  .line 2
    iput-object p2, p0, Landroidx/appcompat/app/o$d;->d:Landroid/content/Context;
  .line 3
    iput-object p3, p0, Landroidx/appcompat/app/o$d;->f:Lc/a/o/b$a;
  .line 4
    new-instance p1, Landroidx/appcompat/view/menu/g;
    invoke-direct { p1, p2 }, Landroidx/appcompat/view/menu/g;-><init>(Landroid/content/Context;)V
    const/4 p2, 1
  .line 5
    invoke-virtual { p1, p2 }, Landroidx/appcompat/view/menu/g;->S(I)Landroidx/appcompat/view/menu/g;
    iput-object p1, p0, Landroidx/appcompat/app/o$d;->e:Landroidx/appcompat/view/menu/g;
  .line 6
    invoke-virtual { p1, p0 }, Landroidx/appcompat/view/menu/g;->R(Landroidx/appcompat/view/menu/g$a;)V
    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/g;Landroid/view/MenuItem;)Z
  .registers 3
  .line 1
    iget-object p1, p0, Landroidx/appcompat/app/o$d;->f:Lc/a/o/b$a;
    if-eqz p1, :L0
  .line 2
    invoke-interface { p1, p0, p2 }, Lc/a/o/b$a;->b(Lc/a/o/b;Landroid/view/MenuItem;)Z
    move-result p1
    return p1
  :L0
    const/4 p1, 0
    return p1
.end method

.method public b(Landroidx/appcompat/view/menu/g;)V
  .registers 2
  .line 1
    iget-object p1, p0, Landroidx/appcompat/app/o$d;->f:Lc/a/o/b$a;
    if-nez p1, :L0
    return-void
  :L0
  .line 2
    invoke-virtual { p0 }, Landroidx/appcompat/app/o$d;->k()V
  .line 3
    iget-object p1, p0, Landroidx/appcompat/app/o$d;->h:Landroidx/appcompat/app/o;
    iget-object p1, p1, Landroidx/appcompat/app/o;->f:Landroidx/appcompat/widget/ActionBarContextView;
    invoke-virtual { p1 }, Landroidx/appcompat/widget/ActionBarContextView;->l()Z
    return-void
.end method

.method public c()V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/app/o$d;->h:Landroidx/appcompat/app/o;
    iget-object v1, v0, Landroidx/appcompat/app/o;->j:Landroidx/appcompat/app/o$d;
    if-eq v1, p0, :L0
    return-void
  :L0
  .line 2
    iget-boolean v1, v0, Landroidx/appcompat/app/o;->r:Z
    iget-boolean v0, v0, Landroidx/appcompat/app/o;->s:Z
    const/4 v2, 0
    invoke-static { v1, v0, v2 }, Landroidx/appcompat/app/o;->y(ZZZ)Z
    move-result v0
    if-nez v0, :L1
  .line 3
    iget-object v0, p0, Landroidx/appcompat/app/o$d;->h:Landroidx/appcompat/app/o;
    iput-object p0, v0, Landroidx/appcompat/app/o;->k:Lc/a/o/b;
  .line 4
    iget-object v1, p0, Landroidx/appcompat/app/o$d;->f:Lc/a/o/b$a;
    iput-object v1, v0, Landroidx/appcompat/app/o;->l:Lc/a/o/b$a;
    goto :L2
  :L1
  .line 5
    iget-object v0, p0, Landroidx/appcompat/app/o$d;->f:Lc/a/o/b$a;
    invoke-interface { v0, p0 }, Lc/a/o/b$a;->d(Lc/a/o/b;)V
  :L2
    const/4 v0, 0
  .line 6
    iput-object v0, p0, Landroidx/appcompat/app/o$d;->f:Lc/a/o/b$a;
  .line 7
    iget-object v1, p0, Landroidx/appcompat/app/o$d;->h:Landroidx/appcompat/app/o;
    invoke-virtual { v1, v2 }, Landroidx/appcompat/app/o;->x(Z)V
  .line 8
    iget-object v1, p0, Landroidx/appcompat/app/o$d;->h:Landroidx/appcompat/app/o;
    iget-object v1, v1, Landroidx/appcompat/app/o;->f:Landroidx/appcompat/widget/ActionBarContextView;
    invoke-virtual { v1 }, Landroidx/appcompat/widget/ActionBarContextView;->g()V
  .line 9
    iget-object v1, p0, Landroidx/appcompat/app/o$d;->h:Landroidx/appcompat/app/o;
    iget-object v1, v1, Landroidx/appcompat/app/o;->e:Landroidx/appcompat/widget/b0;
    invoke-interface { v1 }, Landroidx/appcompat/widget/b0;->o()Landroid/view/ViewGroup;
    move-result-object v1
    const/16 v2, 32
    invoke-virtual { v1, v2 }, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V
  .line 10
    iget-object v1, p0, Landroidx/appcompat/app/o$d;->h:Landroidx/appcompat/app/o;
    iget-object v2, v1, Landroidx/appcompat/app/o;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;
    iget-boolean v1, v1, Landroidx/appcompat/app/o;->x:Z
    invoke-virtual { v2, v1 }, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V
  .line 11
    iget-object v1, p0, Landroidx/appcompat/app/o$d;->h:Landroidx/appcompat/app/o;
    iput-object v0, v1, Landroidx/appcompat/app/o;->j:Landroidx/appcompat/app/o$d;
    return-void
.end method

.method public d()Landroid/view/View;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/app/o$d;->g:Ljava/lang/ref/WeakReference;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/view/View;
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return-object v0
.end method

.method public e()Landroid/view/Menu;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/app/o$d;->e:Landroidx/appcompat/view/menu/g;
    return-object v0
.end method

.method public f()Landroid/view/MenuInflater;
  .registers 3
  .line 1
    new-instance v0, Lc/a/o/g;
    iget-object v1, p0, Landroidx/appcompat/app/o$d;->d:Landroid/content/Context;
    invoke-direct { v0, v1 }, Lc/a/o/g;-><init>(Landroid/content/Context;)V
    return-object v0
.end method

.method public g()Ljava/lang/CharSequence;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/app/o$d;->h:Landroidx/appcompat/app/o;
    iget-object v0, v0, Landroidx/appcompat/app/o;->f:Landroidx/appcompat/widget/ActionBarContextView;
    invoke-virtual { v0 }, Landroidx/appcompat/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;
    move-result-object v0
    return-object v0
.end method

.method public i()Ljava/lang/CharSequence;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/app/o$d;->h:Landroidx/appcompat/app/o;
    iget-object v0, v0, Landroidx/appcompat/app/o;->f:Landroidx/appcompat/widget/ActionBarContextView;
    invoke-virtual { v0 }, Landroidx/appcompat/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;
    move-result-object v0
    return-object v0
.end method

.method public k()V
  .catchall { :L1 .. :L2 } :L3
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/app/o$d;->h:Landroidx/appcompat/app/o;
    iget-object v0, v0, Landroidx/appcompat/app/o;->j:Landroidx/appcompat/app/o$d;
    if-eq v0, p0, :L0
    return-void
  :L0
  .line 2
    iget-object v0, p0, Landroidx/appcompat/app/o$d;->e:Landroidx/appcompat/view/menu/g;
    invoke-virtual { v0 }, Landroidx/appcompat/view/menu/g;->d0()V
  :L1
  .line 3
    iget-object v0, p0, Landroidx/appcompat/app/o$d;->f:Lc/a/o/b$a;
    iget-object v1, p0, Landroidx/appcompat/app/o$d;->e:Landroidx/appcompat/view/menu/g;
    invoke-interface { v0, p0, v1 }, Lc/a/o/b$a;->a(Lc/a/o/b;Landroid/view/Menu;)Z
  :L2
  .line 4
    iget-object v0, p0, Landroidx/appcompat/app/o$d;->e:Landroidx/appcompat/view/menu/g;
    invoke-virtual { v0 }, Landroidx/appcompat/view/menu/g;->c0()V
    return-void
  :L3
    move-exception v0
    iget-object v1, p0, Landroidx/appcompat/app/o$d;->e:Landroidx/appcompat/view/menu/g;
    invoke-virtual { v1 }, Landroidx/appcompat/view/menu/g;->c0()V
  .line 5
    throw v0
.end method

.method public l()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/app/o$d;->h:Landroidx/appcompat/app/o;
    iget-object v0, v0, Landroidx/appcompat/app/o;->f:Landroidx/appcompat/widget/ActionBarContextView;
    invoke-virtual { v0 }, Landroidx/appcompat/widget/ActionBarContextView;->j()Z
    move-result v0
    return v0
.end method

.method public m(Landroid/view/View;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/app/o$d;->h:Landroidx/appcompat/app/o;
    iget-object v0, v0, Landroidx/appcompat/app/o;->f:Landroidx/appcompat/widget/ActionBarContextView;
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V
  .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;
    invoke-direct { v0, p1 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    iput-object v0, p0, Landroidx/appcompat/app/o$d;->g:Ljava/lang/ref/WeakReference;
    return-void
.end method

.method public n(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/app/o$d;->h:Landroidx/appcompat/app/o;
    iget-object v0, v0, Landroidx/appcompat/app/o;->a:Landroid/content/Context;
    invoke-virtual { v0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    invoke-virtual { v0, p1 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { p0, p1 }, Landroidx/appcompat/app/o$d;->o(Ljava/lang/CharSequence;)V
    return-void
.end method

.method public o(Ljava/lang/CharSequence;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/app/o$d;->h:Landroidx/appcompat/app/o;
    iget-object v0, v0, Landroidx/appcompat/app/o;->f:Landroidx/appcompat/widget/ActionBarContextView;
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V
    return-void
.end method

.method public q(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/app/o$d;->h:Landroidx/appcompat/app/o;
    iget-object v0, v0, Landroidx/appcompat/app/o;->a:Landroid/content/Context;
    invoke-virtual { v0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    invoke-virtual { v0, p1 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { p0, p1 }, Landroidx/appcompat/app/o$d;->r(Ljava/lang/CharSequence;)V
    return-void
.end method

.method public r(Ljava/lang/CharSequence;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/app/o$d;->h:Landroidx/appcompat/app/o;
    iget-object v0, v0, Landroidx/appcompat/app/o;->f:Landroidx/appcompat/widget/ActionBarContextView;
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V
    return-void
.end method

.method public s(Z)V
  .registers 3
  .line 1
    invoke-super { p0, p1 }, Lc/a/o/b;->s(Z)V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/app/o$d;->h:Landroidx/appcompat/app/o;
    iget-object v0, v0, Landroidx/appcompat/app/o;->f:Landroidx/appcompat/widget/ActionBarContextView;
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/ActionBarContextView;->setTitleOptional(Z)V
    return-void
.end method

.method public t()Z
  .catchall { :L0 .. :L1 } :L2
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/app/o$d;->e:Landroidx/appcompat/view/menu/g;
    invoke-virtual { v0 }, Landroidx/appcompat/view/menu/g;->d0()V
  :L0
  .line 2
    iget-object v0, p0, Landroidx/appcompat/app/o$d;->f:Lc/a/o/b$a;
    iget-object v1, p0, Landroidx/appcompat/app/o$d;->e:Landroidx/appcompat/view/menu/g;
    invoke-interface { v0, p0, v1 }, Lc/a/o/b$a;->c(Lc/a/o/b;Landroid/view/Menu;)Z
    move-result v0
  :L1
  .line 3
    iget-object v1, p0, Landroidx/appcompat/app/o$d;->e:Landroidx/appcompat/view/menu/g;
    invoke-virtual { v1 }, Landroidx/appcompat/view/menu/g;->c0()V
    return v0
  :L2
    move-exception v0
    iget-object v1, p0, Landroidx/appcompat/app/o$d;->e:Landroidx/appcompat/view/menu/g;
    invoke-virtual { v1 }, Landroidx/appcompat/view/menu/g;->c0()V
  .line 4
    throw v0
.end method
