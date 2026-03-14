.class public Landroidx/fragment/app/i;
.super Ljava/lang/Object;
.source "SourceFile"

.field private final a:Landroidx/fragment/app/k;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Landroidx/fragment/app/k<",
      "*>;"
    }
  .end annotation
.end field

.method private constructor <init>(Landroidx/fragment/app/k;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/fragment/app/k<",
      "*>;)V"
    }
  .end annotation
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Landroidx/fragment/app/i;->a:Landroidx/fragment/app/k;
    return-void
.end method

.method public static b(Landroidx/fragment/app/k;)Landroidx/fragment/app/i;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/fragment/app/k<",
      "*>;)",
      "Landroidx/fragment/app/i;"
    }
  .end annotation
  .registers 3
  .line 1
    new-instance v0, Landroidx/fragment/app/i;
    const-string v1, "callbacks == null"
    invoke-static { p0, v1 }, Lc/g/j/h;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    check-cast p0, Landroidx/fragment/app/k;
    invoke-direct { v0, p0 }, Landroidx/fragment/app/i;-><init>(Landroidx/fragment/app/k;)V
    return-object v0
.end method

.method public a(Landroidx/fragment/app/Fragment;)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/i;->a:Landroidx/fragment/app/k;
    iget-object v1, v0, Landroidx/fragment/app/k;->e:Landroidx/fragment/app/n;
    invoke-virtual { v1, v0, v0, p1 }, Landroidx/fragment/app/n;->j(Landroidx/fragment/app/k;Landroidx/fragment/app/g;Landroidx/fragment/app/Fragment;)V
    return-void
.end method

.method public c()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/i;->a:Landroidx/fragment/app/k;
    iget-object v0, v0, Landroidx/fragment/app/k;->e:Landroidx/fragment/app/n;
    invoke-virtual { v0 }, Landroidx/fragment/app/n;->y()V
    return-void
.end method

.method public d(Landroid/content/res/Configuration;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/i;->a:Landroidx/fragment/app/k;
    iget-object v0, v0, Landroidx/fragment/app/k;->e:Landroidx/fragment/app/n;
    invoke-virtual { v0, p1 }, Landroidx/fragment/app/n;->A(Landroid/content/res/Configuration;)V
    return-void
.end method

.method public e(Landroid/view/MenuItem;)Z
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/i;->a:Landroidx/fragment/app/k;
    iget-object v0, v0, Landroidx/fragment/app/k;->e:Landroidx/fragment/app/n;
    invoke-virtual { v0, p1 }, Landroidx/fragment/app/n;->B(Landroid/view/MenuItem;)Z
    move-result p1
    return p1
.end method

.method public f()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/i;->a:Landroidx/fragment/app/k;
    iget-object v0, v0, Landroidx/fragment/app/k;->e:Landroidx/fragment/app/n;
    invoke-virtual { v0 }, Landroidx/fragment/app/n;->C()V
    return-void
.end method

.method public g(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/i;->a:Landroidx/fragment/app/k;
    iget-object v0, v0, Landroidx/fragment/app/k;->e:Landroidx/fragment/app/n;
    invoke-virtual { v0, p1, p2 }, Landroidx/fragment/app/n;->D(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    move-result p1
    return p1
.end method

.method public h()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/i;->a:Landroidx/fragment/app/k;
    iget-object v0, v0, Landroidx/fragment/app/k;->e:Landroidx/fragment/app/n;
    invoke-virtual { v0 }, Landroidx/fragment/app/n;->E()V
    return-void
.end method

.method public i()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/i;->a:Landroidx/fragment/app/k;
    iget-object v0, v0, Landroidx/fragment/app/k;->e:Landroidx/fragment/app/n;
    invoke-virtual { v0 }, Landroidx/fragment/app/n;->G()V
    return-void
.end method

.method public j(Z)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/i;->a:Landroidx/fragment/app/k;
    iget-object v0, v0, Landroidx/fragment/app/k;->e:Landroidx/fragment/app/n;
    invoke-virtual { v0, p1 }, Landroidx/fragment/app/n;->H(Z)V
    return-void
.end method

.method public k(Landroid/view/MenuItem;)Z
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/i;->a:Landroidx/fragment/app/k;
    iget-object v0, v0, Landroidx/fragment/app/k;->e:Landroidx/fragment/app/n;
    invoke-virtual { v0, p1 }, Landroidx/fragment/app/n;->J(Landroid/view/MenuItem;)Z
    move-result p1
    return p1
.end method

.method public l(Landroid/view/Menu;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/i;->a:Landroidx/fragment/app/k;
    iget-object v0, v0, Landroidx/fragment/app/k;->e:Landroidx/fragment/app/n;
    invoke-virtual { v0, p1 }, Landroidx/fragment/app/n;->K(Landroid/view/Menu;)V
    return-void
.end method

.method public m()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/i;->a:Landroidx/fragment/app/k;
    iget-object v0, v0, Landroidx/fragment/app/k;->e:Landroidx/fragment/app/n;
    invoke-virtual { v0 }, Landroidx/fragment/app/n;->M()V
    return-void
.end method

.method public n(Z)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/i;->a:Landroidx/fragment/app/k;
    iget-object v0, v0, Landroidx/fragment/app/k;->e:Landroidx/fragment/app/n;
    invoke-virtual { v0, p1 }, Landroidx/fragment/app/n;->N(Z)V
    return-void
.end method

.method public o(Landroid/view/Menu;)Z
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/i;->a:Landroidx/fragment/app/k;
    iget-object v0, v0, Landroidx/fragment/app/k;->e:Landroidx/fragment/app/n;
    invoke-virtual { v0, p1 }, Landroidx/fragment/app/n;->O(Landroid/view/Menu;)Z
    move-result p1
    return p1
.end method

.method public p()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/i;->a:Landroidx/fragment/app/k;
    iget-object v0, v0, Landroidx/fragment/app/k;->e:Landroidx/fragment/app/n;
    invoke-virtual { v0 }, Landroidx/fragment/app/n;->Q()V
    return-void
.end method

.method public q()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/i;->a:Landroidx/fragment/app/k;
    iget-object v0, v0, Landroidx/fragment/app/k;->e:Landroidx/fragment/app/n;
    invoke-virtual { v0 }, Landroidx/fragment/app/n;->R()V
    return-void
.end method

.method public r()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/i;->a:Landroidx/fragment/app/k;
    iget-object v0, v0, Landroidx/fragment/app/k;->e:Landroidx/fragment/app/n;
    invoke-virtual { v0 }, Landroidx/fragment/app/n;->T()V
    return-void
.end method

.method public s()Z
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/i;->a:Landroidx/fragment/app/k;
    iget-object v0, v0, Landroidx/fragment/app/k;->e:Landroidx/fragment/app/n;
    const/4 v1, 1
    invoke-virtual { v0, v1 }, Landroidx/fragment/app/n;->a0(Z)Z
    move-result v0
    return v0
.end method

.method public t()Landroidx/fragment/app/n;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/i;->a:Landroidx/fragment/app/k;
    iget-object v0, v0, Landroidx/fragment/app/k;->e:Landroidx/fragment/app/n;
    return-object v0
.end method

.method public u()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/i;->a:Landroidx/fragment/app/k;
    iget-object v0, v0, Landroidx/fragment/app/k;->e:Landroidx/fragment/app/n;
    invoke-virtual { v0 }, Landroidx/fragment/app/n;->R0()V
    return-void
.end method

.method public v(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/i;->a:Landroidx/fragment/app/k;
    iget-object v0, v0, Landroidx/fragment/app/k;->e:Landroidx/fragment/app/n;
    invoke-virtual { v0 }, Landroidx/fragment/app/n;->t0()Landroid/view/LayoutInflater$Factory2;
    move-result-object v0
  .line 2
    invoke-interface { v0, p1, p2, p3, p4 }, Landroid/view/LayoutInflater$Factory2;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    move-result-object p1
    return-object p1
.end method

.method public w(Landroid/os/Parcelable;)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/i;->a:Landroidx/fragment/app/k;
    instance-of v1, v0, Landroidx/lifecycle/y;
    if-eqz v1, :L0
  .line 2
    iget-object v0, v0, Landroidx/fragment/app/k;->e:Landroidx/fragment/app/n;
    invoke-virtual { v0, p1 }, Landroidx/fragment/app/n;->d1(Landroid/os/Parcelable;)V
    return-void
  :L0
  .line 3
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string v0, "Your FragmentHostCallback must implement ViewModelStoreOwner to call restoreSaveState(). Call restoreAllState()  if you're still using retainNestedNonConfig()."
    invoke-direct { p1, v0 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public x()Landroid/os/Parcelable;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/i;->a:Landroidx/fragment/app/k;
    iget-object v0, v0, Landroidx/fragment/app/k;->e:Landroidx/fragment/app/n;
    invoke-virtual { v0 }, Landroidx/fragment/app/n;->f1()Landroid/os/Parcelable;
    move-result-object v0
    return-object v0
.end method
