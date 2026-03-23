.class public Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

.field private a0:Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;

.field private b0:Landroid/widget/FrameLayout;

.field private c0:Lcn/manstep/phonemirrorBox/x0/d;

.field private d0:Lcn/manstep/phonemirrorBox/x0/d$d;

.method public constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Landroidx/fragment/app/Fragment;-><init>()V
    return-void
.end method

.method static synthetic g2(Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment;)Landroid/widget/FrameLayout;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment;->b0:Landroid/widget/FrameLayout;
    return-object p0
.end method

.method static synthetic h2(Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment;)Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment;->a0:Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;
    return-object p0
.end method

.method public L0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
  .registers 8
  .line 1
    new-instance p3, Landroidx/lifecycle/w$a;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v0
    if-nez v0, :L0
    const/4 v0, 0
    goto :L1
  :L0
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/app/Activity;->getApplication()Landroid/app/Application;
    move-result-object v0
  :L1
    invoke-direct { p3, v0 }, Landroidx/lifecycle/w$a;-><init>(Landroid/app/Application;)V
  .line 2
    new-instance v0, Landroidx/lifecycle/w;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->J1()Landroidx/fragment/app/e;
    move-result-object v1
    invoke-direct { v0, v1, p3 }, Landroidx/lifecycle/w;-><init>(Landroidx/lifecycle/y;Landroidx/lifecycle/w$b;)V
    const-class v1, Lcn/manstep/phonemirrorBox/x0/i;
    invoke-virtual { v0, v1 }, Landroidx/lifecycle/w;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;
    move-result-object v0
    check-cast v0, Lcn/manstep/phonemirrorBox/x0/i;
  .line 3
    iget-object v1, v0, Lcn/manstep/phonemirrorBox/x0/i;->g:Landroidx/lifecycle/o;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->J1()Landroidx/fragment/app/e;
    move-result-object v2
    new-instance v3, Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment$a;
    invoke-direct { v3, p0 }, Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment$a;-><init>(Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment;)V
    invoke-virtual { v1, v2, v3 }, Landroidx/lifecycle/LiveData;->f(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V
  .line 4
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/x0/i;->f:Landroidx/lifecycle/o;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->J1()Landroidx/fragment/app/e;
    move-result-object v1
    new-instance v2, Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment$b;
    invoke-direct { v2, p0 }, Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment$b;-><init>(Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment;)V
    invoke-virtual { v0, v1, v2 }, Landroidx/lifecycle/LiveData;->f(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V
  .line 5
    new-instance v0, Landroidx/lifecycle/w;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->J1()Landroidx/fragment/app/e;
    move-result-object v1
    invoke-direct { v0, v1, p3 }, Landroidx/lifecycle/w;-><init>(Landroidx/lifecycle/y;Landroidx/lifecycle/w$b;)V
    const-class p3, Lcn/manstep/phonemirrorBox/x0/d;
    invoke-virtual { v0, p3 }, Landroidx/lifecycle/w;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;
    move-result-object p3
    check-cast p3, Lcn/manstep/phonemirrorBox/x0/d;
    iput-object p3, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment;->c0:Lcn/manstep/phonemirrorBox/x0/d;
  .line 6
    new-instance p3, Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment$c;
    invoke-direct { p3, p0 }, Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment$c;-><init>(Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment;)V
    iput-object p3, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment;->d0:Lcn/manstep/phonemirrorBox/x0/d$d;
  .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment;->c0:Lcn/manstep/phonemirrorBox/x0/d;
    invoke-virtual { v0, p3 }, Lcn/manstep/phonemirrorBox/x0/d;->u(Lcn/manstep/phonemirrorBox/x0/d$d;)V
    const p3, 2131492933
    const/4 v0, 0
  .line 8
    invoke-virtual { p1, p3, p2, v0 }, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    move-result-object p1
    return-object p1
.end method

.method public M0()V
  .registers 3
  .line 1
    invoke-super { p0 }, Landroidx/fragment/app/Fragment;->M0()V
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment;->c0:Lcn/manstep/phonemirrorBox/x0/d;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment;->d0:Lcn/manstep/phonemirrorBox/x0/d$d;
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/x0/d;->z(Lcn/manstep/phonemirrorBox/x0/d$d;)V
    return-void
.end method

.method public O0()V
  .registers 2
  .line 1
    invoke-super { p0 }, Landroidx/fragment/app/Fragment;->O0()V
    const/4 v0, 0
  .line 2
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment;->b0:Landroid/widget/FrameLayout;
    return-void
.end method

.method public g1(Landroid/view/View;Landroid/os/Bundle;)V
  .registers 3
  .line 1
    invoke-super { p0, p1, p2 }, Landroidx/fragment/app/Fragment;->g1(Landroid/view/View;Landroid/os/Bundle;)V
    const p2, 2131296257
  .line 2
    invoke-virtual { p1, p2 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object p2
    check-cast p2, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment;->a0:Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;
    const p2, 2131296641
  .line 3
    invoke-virtual { p1, p2 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object p1
    check-cast p1, Landroid/widget/FrameLayout;
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment;->b0:Landroid/widget/FrameLayout;
    return-void
.end method
