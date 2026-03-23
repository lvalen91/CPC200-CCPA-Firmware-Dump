.class public Lcn/manstep/phonemirrorBox/l0/k;
.super Lcn/manstep/phonemirrorBox/l0/m;
.source "SourceFile"

.field private c0:Lcn/manstep/phonemirrorBox/x0/i;

.field private d0:Lcn/manstep/phonemirrorBox/x0/k;

.field private e0:Lcn/manstep/phonemirrorBox/x0/d;

.field private f0:Lcn/manstep/phonemirrorBox/i0/e;

.field private final g0:Lcn/manstep/phonemirrorBox/x0/d$d;

.method private constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/l0/m;-><init>()V
  .line 2
    new-instance v0, Lcn/manstep/phonemirrorBox/l0/k$a;
    invoke-direct { v0, p0 }, Lcn/manstep/phonemirrorBox/l0/k$a;-><init>(Lcn/manstep/phonemirrorBox/l0/k;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/l0/k;->g0:Lcn/manstep/phonemirrorBox/x0/d$d;
    return-void
.end method

.method static synthetic h2(Lcn/manstep/phonemirrorBox/l0/k;)Lcn/manstep/phonemirrorBox/x0/i;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/l0/k;->c0:Lcn/manstep/phonemirrorBox/x0/i;
    return-object p0
.end method

.method public static newInstance()Lcn/manstep/phonemirrorBox/l0/k;
  .registers 2
  .line 1
    new-instance v0, Lcn/manstep/phonemirrorBox/l0/k;
    invoke-direct { v0 }, Lcn/manstep/phonemirrorBox/l0/k;-><init>()V
    return-object v0
.end method

.method public H0(Landroid/os/Bundle;)V
  .registers 2
  .line 1
    invoke-super { p0, p1 }, Landroidx/fragment/app/Fragment;->H0(Landroid/os/Bundle;)V
    return-void
.end method

.method public L0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
  .registers 5
    const p3, 2131492930
    const/4 v0, 0
  .line 1
    invoke-static { p1, p3, p2, v0 }, Landroidx/databinding/f;->e(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;
    move-result-object p1
    check-cast p1, Lcn/manstep/phonemirrorBox/i0/e;
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/k;->f0:Lcn/manstep/phonemirrorBox/i0/e;
  .line 2
    new-instance p1, Landroidx/lifecycle/w;
    invoke-static { }, Lcn/manstep/phonemirrorBox/q;->g()Lcn/manstep/phonemirrorBox/q;
    move-result-object p2
    invoke-virtual { p2 }, Lcn/manstep/phonemirrorBox/q;->h()Lcn/manstep/phonemirrorBox/MainActivity;
    move-result-object p2
    iget-object p3, p0, Lcn/manstep/phonemirrorBox/l0/m;->a0:Landroidx/lifecycle/w$b;
    invoke-direct { p1, p2, p3 }, Landroidx/lifecycle/w;-><init>(Landroidx/lifecycle/y;Landroidx/lifecycle/w$b;)V
    const-class p2, Lcn/manstep/phonemirrorBox/x0/k;
    invoke-virtual { p1, p2 }, Landroidx/lifecycle/w;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;
    move-result-object p1
    check-cast p1, Lcn/manstep/phonemirrorBox/x0/k;
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/k;->d0:Lcn/manstep/phonemirrorBox/x0/k;
  .line 3
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/l0/k;->f0:Lcn/manstep/phonemirrorBox/i0/e;
    invoke-virtual { p2, p1 }, Lcn/manstep/phonemirrorBox/i0/e;->M(Lcn/manstep/phonemirrorBox/x0/k;)V
  .line 4
    new-instance p1, Landroidx/lifecycle/w;
    invoke-static { }, Lcn/manstep/phonemirrorBox/q;->g()Lcn/manstep/phonemirrorBox/q;
    move-result-object p2
    invoke-virtual { p2 }, Lcn/manstep/phonemirrorBox/q;->h()Lcn/manstep/phonemirrorBox/MainActivity;
    move-result-object p2
    iget-object p3, p0, Lcn/manstep/phonemirrorBox/l0/m;->a0:Landroidx/lifecycle/w$b;
    invoke-direct { p1, p2, p3 }, Landroidx/lifecycle/w;-><init>(Landroidx/lifecycle/y;Landroidx/lifecycle/w$b;)V
    const-class p2, Lcn/manstep/phonemirrorBox/x0/i;
    invoke-virtual { p1, p2 }, Landroidx/lifecycle/w;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;
    move-result-object p1
    check-cast p1, Lcn/manstep/phonemirrorBox/x0/i;
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/k;->c0:Lcn/manstep/phonemirrorBox/x0/i;
  .line 5
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/x0/i;->A()V
  .line 6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/k;->f0:Lcn/manstep/phonemirrorBox/i0/e;
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/l0/k;->c0:Lcn/manstep/phonemirrorBox/x0/i;
    invoke-virtual { p1, p2 }, Lcn/manstep/phonemirrorBox/i0/e;->L(Lcn/manstep/phonemirrorBox/x0/i;)V
  .line 7
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/k;->f0:Lcn/manstep/phonemirrorBox/i0/e;
    invoke-virtual { p1, p0 }, Landroidx/databinding/ViewDataBinding;->G(Landroidx/lifecycle/j;)V
  .line 8
    new-instance p1, Landroidx/lifecycle/w;
    invoke-static { }, Lcn/manstep/phonemirrorBox/q;->g()Lcn/manstep/phonemirrorBox/q;
    move-result-object p2
    invoke-virtual { p2 }, Lcn/manstep/phonemirrorBox/q;->h()Lcn/manstep/phonemirrorBox/MainActivity;
    move-result-object p2
    iget-object p3, p0, Lcn/manstep/phonemirrorBox/l0/m;->a0:Landroidx/lifecycle/w$b;
    invoke-direct { p1, p2, p3 }, Landroidx/lifecycle/w;-><init>(Landroidx/lifecycle/y;Landroidx/lifecycle/w$b;)V
    const-class p2, Lcn/manstep/phonemirrorBox/x0/d;
    invoke-virtual { p1, p2 }, Landroidx/lifecycle/w;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;
    move-result-object p1
    check-cast p1, Lcn/manstep/phonemirrorBox/x0/d;
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/k;->e0:Lcn/manstep/phonemirrorBox/x0/d;
  .line 9
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/l0/k;->g0:Lcn/manstep/phonemirrorBox/x0/d$d;
    invoke-virtual { p1, p2 }, Lcn/manstep/phonemirrorBox/x0/d;->u(Lcn/manstep/phonemirrorBox/x0/d$d;)V
  .line 10
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z
    move-result p1
    if-eqz p1, :L0
  .line 11
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/k;->c0:Lcn/manstep/phonemirrorBox/x0/i;
    const/4 p2, 1
    invoke-virtual { p1, p2 }, Lcn/manstep/phonemirrorBox/x0/i;->C(Z)V
  :L0
  .line 12
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/k;->f0:Lcn/manstep/phonemirrorBox/i0/e;
    invoke-virtual { p1 }, Landroidx/databinding/ViewDataBinding;->t()Landroid/view/View;
    move-result-object p1
    return-object p1
.end method

.method public O0()V
  .registers 4
    const/4 v0, 0
  .line 1
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/l0/k;->d0:Lcn/manstep/phonemirrorBox/x0/k;
  .line 2
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/l0/k;->c0:Lcn/manstep/phonemirrorBox/x0/i;
  .line 3
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/l0/k;->e0:Lcn/manstep/phonemirrorBox/x0/d;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/l0/k;->g0:Lcn/manstep/phonemirrorBox/x0/d$d;
    invoke-virtual { v1, v2 }, Lcn/manstep/phonemirrorBox/x0/d;->z(Lcn/manstep/phonemirrorBox/x0/d$d;)V
  .line 4
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/l0/k;->e0:Lcn/manstep/phonemirrorBox/x0/d;
  .line 5
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/l0/k;->f0:Lcn/manstep/phonemirrorBox/i0/e;
  .line 6
    invoke-super { p0 }, Landroidx/fragment/app/Fragment;->O0()V
    return-void
.end method

.method public g1(Landroid/view/View;Landroid/os/Bundle;)V
  .registers 4
  .line 1
    invoke-super { p0, p1, p2 }, Lcn/manstep/phonemirrorBox/l0/m;->g1(Landroid/view/View;Landroid/os/Bundle;)V
  .line 2
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/l0/k;->c0:Lcn/manstep/phonemirrorBox/x0/i;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v0
    if-nez v0, :L0
    const/4 v0, 0
    goto :L1
  :L0
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v0
    invoke-virtual { v0 }, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;
    move-result-object v0
  :L1
    invoke-virtual { p2, v0 }, Lcn/manstep/phonemirrorBox/x0/i;->F(Landroidx/fragment/app/n;)V
    const p2, 2131296370
  .line 3
    invoke-virtual { p1, p2 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object p1
    new-instance p2, Lcn/manstep/phonemirrorBox/l0/k$b;
    invoke-direct { p2, p0 }, Lcn/manstep/phonemirrorBox/l0/k$b;-><init>(Lcn/manstep/phonemirrorBox/l0/k;)V
    invoke-virtual { p1, p2 }, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    return-void
.end method
