.class public Lcn/manstep/phonemirrorBox/l0/n;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

.field private a0:Landroid/widget/ImageView;

.field private b0:Lcn/manstep/phonemirrorBox/x0/g;

.method public constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Landroidx/fragment/app/Fragment;-><init>()V
    return-void
.end method

.method public L0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
  .registers 5
    const p3, 2131492935
    const/4 v0, 0
  .line 1
    invoke-static { p1, p3, p2, v0 }, Landroidx/databinding/f;->e(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;
    move-result-object p1
    check-cast p1, Lcn/manstep/phonemirrorBox/i0/k;
  .line 2
    invoke-virtual { p1, p0 }, Landroidx/databinding/ViewDataBinding;->G(Landroidx/lifecycle/j;)V
  .line 3
    new-instance p2, Landroidx/lifecycle/w$a;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object p3
    if-nez p3, :L0
    const/4 p3, 0
    goto :L1
  :L0
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object p3
    invoke-virtual { p3 }, Landroid/app/Activity;->getApplication()Landroid/app/Application;
    move-result-object p3
  :L1
    invoke-direct { p2, p3 }, Landroidx/lifecycle/w$a;-><init>(Landroid/app/Application;)V
  .line 4
    new-instance p3, Landroidx/lifecycle/w;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->J1()Landroidx/fragment/app/e;
    move-result-object v0
    invoke-direct { p3, v0, p2 }, Landroidx/lifecycle/w;-><init>(Landroidx/lifecycle/y;Landroidx/lifecycle/w$b;)V
    const-class p2, Lcn/manstep/phonemirrorBox/x0/g;
    invoke-virtual { p3, p2 }, Landroidx/lifecycle/w;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;
    move-result-object p2
    check-cast p2, Lcn/manstep/phonemirrorBox/x0/g;
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/l0/n;->b0:Lcn/manstep/phonemirrorBox/x0/g;
  .line 5
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->J()Landroidx/fragment/app/n;
    move-result-object p3
    invoke-virtual { p2, p3 }, Lcn/manstep/phonemirrorBox/x0/g;->J(Landroidx/fragment/app/n;)V
  .line 6
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/l0/n;->b0:Lcn/manstep/phonemirrorBox/x0/g;
    invoke-virtual { p1, p2 }, Lcn/manstep/phonemirrorBox/i0/k;->L(Lcn/manstep/phonemirrorBox/x0/g;)V
  .line 7
    invoke-virtual { p1 }, Landroidx/databinding/ViewDataBinding;->t()Landroid/view/View;
    move-result-object p1
    return-object p1
.end method

.method public M0()V
  .registers 3
  .line 1
    invoke-super { p0 }, Landroidx/fragment/app/Fragment;->M0()V
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/n;->a0:Landroid/widget/ImageView;
    invoke-virtual { v0 }, Landroid/widget/ImageView;->clearAnimation()V
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/n;->b0:Lcn/manstep/phonemirrorBox/x0/g;
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/x0/g;->H(I)V
    return-void
.end method

.method public P0()V
  .registers 2
  .line 1
    invoke-super { p0 }, Landroidx/fragment/app/Fragment;->P0()V
    const/4 v0, 0
  .line 2
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/l0/n;->b0:Lcn/manstep/phonemirrorBox/x0/g;
    return-void
.end method

.method public g1(Landroid/view/View;Landroid/os/Bundle;)V
  .registers 3
  .line 1
    invoke-super { p0, p1, p2 }, Landroidx/fragment/app/Fragment;->g1(Landroid/view/View;Landroid/os/Bundle;)V
    const p2, 2131296952
  .line 2
    invoke-virtual { p1, p2 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object p1
    check-cast p1, Landroid/widget/ImageView;
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/n;->a0:Landroid/widget/ImageView;
  .line 3
    invoke-virtual { p1 }, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;
    move-result-object p1
    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;
    if-eqz p1, :L0
  .line 4
    invoke-virtual { p1 }, Landroid/graphics/drawable/AnimationDrawable;->start()V
    goto :L1
  :L0
  .line 5
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object p1
    const p2, 2130772002
    invoke-static { p1, p2 }, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
    move-result-object p1
  .line 6
    new-instance p2, Landroid/view/animation/LinearInterpolator;
    invoke-direct { p2 }, Landroid/view/animation/LinearInterpolator;-><init>()V
    invoke-virtual { p1, p2 }, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V
  .line 7
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/l0/n;->a0:Landroid/widget/ImageView;
    invoke-virtual { p2, p1 }, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V
  :L1
    return-void
.end method
