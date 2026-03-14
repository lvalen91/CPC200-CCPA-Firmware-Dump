.class public Lcn/manstep/phonemirrorBox/l0/p;
.super Lcn/manstep/phonemirrorBox/l0/m;
.implements Landroid/view/View$OnClickListener;
.implements Lcn/manstep/phonemirrorBox/util/l$d;
.source "SourceFile"

.field private c0:Landroid/widget/TextView;

.field private d0:Landroid/view/View;

.field private e0:Landroid/view/animation/Animation;

.field private f0:Landroid/graphics/drawable/AnimationDrawable;

.field private g0:Landroid/widget/Button;

.field private h0:Landroid/widget/Button;

.field private i0:Landroid/widget/Button;

.field private j0:Landroid/widget/TextView;

.field private k0:Lcn/manstep/phonemirrorBox/util/l;

.field private l0:Landroid/widget/ImageView;

.field private m0:Landroid/widget/ImageView;

.field private n0:Landroid/widget/ImageView;

.field private o0:Landroid/widget/ImageView;

.field private p0:Lcn/manstep/phonemirrorBox/k0/j;

.field private q0:Landroid/widget/TextView;

.field private r0:Landroid/widget/TextView;

.field private s0:Z

.field private t0:Z

.field private u0:Z

.field private v0:I

.field private w0:Landroid/widget/LinearLayout;

.field private final x0:Landroid/content/BroadcastReceiver;

.method public constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/l0/m;-><init>()V
    const/4 v0, 0
  .line 2
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/l0/p;->s0:Z
  .line 3
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/l0/p;->t0:Z
  .line 4
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/l0/p;->u0:Z
  .line 5
    iput v0, p0, Lcn/manstep/phonemirrorBox/l0/p;->v0:I
  .line 6
    new-instance v0, Lcn/manstep/phonemirrorBox/l0/p$c;
    invoke-direct { v0, p0 }, Lcn/manstep/phonemirrorBox/l0/p$c;-><init>(Lcn/manstep/phonemirrorBox/l0/p;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/l0/p;->x0:Landroid/content/BroadcastReceiver;
    return-void
.end method

.method static synthetic h2(Lcn/manstep/phonemirrorBox/l0/p;)Landroid/widget/LinearLayout;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/l0/p;->w0:Landroid/widget/LinearLayout;
    return-object p0
.end method

.method static synthetic i2(Lcn/manstep/phonemirrorBox/l0/p;)Lcn/manstep/phonemirrorBox/util/l;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/l0/p;->k0:Lcn/manstep/phonemirrorBox/util/l;
    return-object p0
.end method

.method private j2()V
  .registers 2
    const/4 v0, 1
  .line 1
    invoke-direct { p0, v0 }, Lcn/manstep/phonemirrorBox/l0/p;->l2(Z)V
    return-void
.end method

.method private k2()V
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/p;->k0:Lcn/manstep/phonemirrorBox/util/l;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/util/l;->C()V
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/p;->k0:Lcn/manstep/phonemirrorBox/util/l;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/util/l;->D()V
  .line 3
    invoke-super { p0 }, Lcn/manstep/phonemirrorBox/l0/m;->g2()V
    return-void
.end method

.method private l2(Z)V
  .registers 5
    const/4 v0, 1
  .line 1
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/l0/p;->t0:Z
  .line 2
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/l0/p;->u0:Z
  .line 3
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object p1
    sget v0, Lnet/iwebrtc/audioprocess/sdk/AudioProcess;->RecordDelay:I
    const-string v1, "RecordDelay"
    invoke-virtual { p1, v1, v0 }, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I
    move-result p1
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/p;->o0:Landroid/widget/ImageView;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v1
    invoke-virtual { v1 }, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
    move-result-object v1
    const v2, 2131230959
    invoke-virtual { v1, v2 }, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
  .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/p;->r0:Landroid/widget/TextView;
    invoke-static { p1 }, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v0, p1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 6
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/l0/p;->s2()V
  .line 7
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/p;->h0:Landroid/widget/Button;
    const/4 v0, 0
    invoke-virtual { p1, v0 }, Landroid/widget/Button;->setEnabled(Z)V
  .line 8
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/p;->j0:Landroid/widget/TextView;
    invoke-virtual { p1, v0 }, Landroid/widget/TextView;->setVisibility(I)V
  .line 9
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/p;->m0:Landroid/widget/ImageView;
    const/4 v0, 4
    invoke-virtual { p1, v0 }, Landroid/widget/ImageView;->setVisibility(I)V
  .line 10
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/p;->j0:Landroid/widget/TextView;
    const v0, 2131689977
    invoke-virtual { p1, v0 }, Landroid/widget/TextView;->setText(I)V
  .line 11
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/p;->k0:Lcn/manstep/phonemirrorBox/util/l;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v0
    invoke-virtual { p1, v0 }, Lcn/manstep/phonemirrorBox/util/l;->m(Landroid/content/Context;)V
    return-void
.end method

.method private m2()V
  .registers 4
    const/4 v0, 0
  .line 1
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/l0/p;->t0:Z
  .line 2
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/l0/p;->s2()V
  .line 3
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/l0/p;->r0:Landroid/widget/TextView;
    const/4 v2, 4
    invoke-virtual { v1, v2 }, Landroid/widget/TextView;->setVisibility(I)V
  .line 4
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/l0/p;->i0:Landroid/widget/Button;
    invoke-virtual { v1, v0 }, Landroid/widget/Button;->setEnabled(Z)V
  .line 5
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/l0/p;->o0:Landroid/widget/ImageView;
    invoke-virtual { v1, v2 }, Landroid/widget/ImageView;->setVisibility(I)V
  .line 6
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/l0/p;->k0:Lcn/manstep/phonemirrorBox/util/l;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v2
    invoke-virtual { v1, v2, v0 }, Lcn/manstep/phonemirrorBox/util/l;->q(Landroid/content/Context;Z)V
    return-void
.end method

.method private n2()V
  .registers 2
  .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/l0/p;->s0:Z
    if-eqz v0, :L0
  .line 2
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/l0/p;->p2()V
    goto :L1
  :L0
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/p;->k0:Lcn/manstep/phonemirrorBox/util/l;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/util/l;->o()V
  :L1
    return-void
.end method

.method private o2()V
  .registers 3
    const/4 v0, 0
  .line 1
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/l0/p;->t0:Z
  .line 2
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/l0/p;->s2()V
  .line 3
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/l0/p;->h0:Landroid/widget/Button;
    invoke-virtual { v1, v0 }, Landroid/widget/Button;->setEnabled(Z)V
  .line 4
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/l0/p;->j0:Landroid/widget/TextView;
    invoke-virtual { v1, v0 }, Landroid/widget/TextView;->setVisibility(I)V
  .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/p;->m0:Landroid/widget/ImageView;
    const/4 v1, 4
    invoke-virtual { v0, v1 }, Landroid/widget/ImageView;->setVisibility(I)V
  .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/p;->j0:Landroid/widget/TextView;
    const v1, 2131689977
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setText(I)V
  .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/p;->k0:Lcn/manstep/phonemirrorBox/util/l;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v1
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/util/l;->s(Landroid/content/Context;)V
    return-void
.end method

.method private p2()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/p;->k0:Lcn/manstep/phonemirrorBox/util/l;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/util/l;->B()V
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/p;->p0:Lcn/manstep/phonemirrorBox/k0/j;
    if-nez v0, :L0
  .line 3
    new-instance v0, Lcn/manstep/phonemirrorBox/k0/j;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v1
    invoke-direct { v0, v1 }, Lcn/manstep/phonemirrorBox/k0/j;-><init>(Landroid/content/Context;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/l0/p;->p0:Lcn/manstep/phonemirrorBox/k0/j;
  :L0
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/p;->p0:Lcn/manstep/phonemirrorBox/k0/j;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/k0/j;->show()V
    return-void
.end method

.method private q2(I)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/p;->d0:Landroid/view/View;
    instance-of v1, v0, Landroid/widget/Button;
    if-eqz v1, :L0
  .line 2
    check-cast v0, Landroid/widget/Button;
    invoke-virtual { v0, p1 }, Landroid/widget/Button;->setText(I)V
  :L0
    return-void
.end method

.method private r2(Landroid/widget/Button;)V
  .registers 4
  .line 1
    invoke-virtual { p1 }, Landroid/widget/Button;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
    move-result-object v0
  .line 2
    new-instance v1, Lcn/manstep/phonemirrorBox/l0/p$b;
    invoke-direct { v1, p0, p1 }, Lcn/manstep/phonemirrorBox/l0/p$b;-><init>(Lcn/manstep/phonemirrorBox/l0/p;Landroid/widget/Button;)V
    invoke-virtual { v0, v1 }, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    return-void
.end method

.method private s2()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/p;->d0:Landroid/view/View;
    instance-of v1, v0, Landroid/widget/ImageView;
    if-eqz v1, :L1
  .line 2
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/l0/p;->f0:Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v1, :L0
  .line 3
    invoke-virtual { v1 }, Landroid/graphics/drawable/AnimationDrawable;->start()V
    goto :L1
  :L0
  .line 4
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/l0/p;->e0:Landroid/view/animation/Animation;
    invoke-virtual { v0, v1 }, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
  :L1
  .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/p;->c0:Landroid/widget/TextView;
    const v1, 2131689695
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setText(I)V
  .line 6
    invoke-direct { p0, v1 }, Lcn/manstep/phonemirrorBox/l0/p;->q2(I)V
    return-void
.end method

.method private t2()V
  .registers 3
  .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/l0/p;->t0:Z
    if-eqz v0, :L1
  .line 2
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/l0/p;->u0:Z
    if-eqz v0, :L0
  .line 3
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/l0/p;->u2()V
    goto :L2
  :L0
  .line 4
    iget v0, p0, Lcn/manstep/phonemirrorBox/l0/p;->v0:I
    add-int/lit8 v0, v0, 1
    iput v0, p0, Lcn/manstep/phonemirrorBox/l0/p;->v0:I
    const/4 v1, 2
    if-ne v0, v1, :L2
    const/4 v0, 0
  .line 5
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/l0/p;->t0:Z
  .line 6
    iput v0, p0, Lcn/manstep/phonemirrorBox/l0/p;->v0:I
  .line 7
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/l0/p;->u2()V
    goto :L2
  :L1
  .line 8
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/l0/p;->u2()V
  :L2
    return-void
.end method

.method private u2()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/p;->f0:Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Landroid/graphics/drawable/AnimationDrawable;->stop()V
    goto :L1
  :L0
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/p;->d0:Landroid/view/View;
    invoke-virtual { v0 }, Landroid/view/View;->clearAnimation()V
  :L1
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/p;->c0:Landroid/widget/TextView;
    const v1, 2131689893
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setText(I)V
  .line 5
    invoke-direct { p0, v1 }, Lcn/manstep/phonemirrorBox/l0/p;->q2(I)V
    return-void
.end method

.method public B0(Landroid/os/Bundle;)V
  .registers 2
  .line 1
    invoke-super { p0, p1 }, Landroidx/fragment/app/Fragment;->B0(Landroid/os/Bundle;)V
    return-void
.end method

.method public E0(Landroid/content/Context;)V
  .registers 3
  .line 1
    invoke-super { p0, p1 }, Lcn/manstep/phonemirrorBox/l0/m;->E0(Landroid/content/Context;)V
    const-string p1, "DeviceCheckFragment,onAttach"
  .line 2
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 3
    new-instance p1, Lcn/manstep/phonemirrorBox/util/l;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->J()Landroidx/fragment/app/n;
    move-result-object v0
    invoke-direct { p1, p0, v0 }, Lcn/manstep/phonemirrorBox/util/l;-><init>(Lcn/manstep/phonemirrorBox/util/l$d;Landroidx/fragment/app/n;)V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/p;->k0:Lcn/manstep/phonemirrorBox/util/l;
    return-void
.end method

.method public I0(IZI)Landroid/view/animation/Animation;
  .registers 4
    if-eqz p2, :L0
  .line 1
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object p1
    const p2, 2130772009
    invoke-static { p1, p2 }, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
    move-result-object p1
    return-object p1
  :L0
  .line 2
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object p1
    const p2, 2130772011
    invoke-static { p1, p2 }, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
    move-result-object p1
    return-object p1
.end method

.method public L0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
  .registers 5
    const p3, 2131492938
    const/4 v0, 0
  .line 1
    invoke-virtual { p1, p3, p2, v0 }, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    move-result-object p1
    return-object p1
.end method

.method public M0()V
  .registers 3
    const-string v0, "DeviceCheckFragment,onDestroy"
  .line 1
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/p;->k0:Lcn/manstep/phonemirrorBox/util/l;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/util/l;->t()V
    const/4 v0, 0
  .line 3
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/l0/p;->s0:Z
  .line 4
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;
    move-result-object v0
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/l0/p;->x0:Landroid/content/BroadcastReceiver;
    invoke-virtual { v0, v1 }, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
  .line 5
    invoke-super { p0 }, Landroidx/fragment/app/Fragment;->M0()V
    return-void
.end method

.method public R0(Z)V
  .registers 4
  .line 1
    invoke-super { p0, p1 }, Landroidx/fragment/app/Fragment;->R0(Z)V
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "DeviceCheckFragment,onHiddenChanged: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    if-nez p1, :L0
  .line 3
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/l0/p;->j2()V
  :L0
    return-void
.end method

.method public d(ZI)V
  .registers 6
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/p;->i0:Landroid/widget/Button;
    const/4 v1, 1
    invoke-virtual { v0, v1 }, Landroid/widget/Button;->setEnabled(Z)V
  .line 2
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/l0/p;->t2()V
    if-eqz p1, :L0
    return-void
  :L0
  .line 3
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;
    move-result-object p1
    if-eqz p1, :L3
  .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/p;->o0:Landroid/widget/ImageView;
    const/4 v0, 0
    invoke-virtual { p1, v0 }, Landroid/widget/ImageView;->setVisibility(I)V
    if-gez p2, :L2
  .line 5
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/p;->o0:Landroid/widget/ImageView;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v1
    invoke-virtual { v1 }, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
    move-result-object v1
    const v2, 2131230876
    invoke-virtual { v1, v2 }, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    move-result-object v1
    invoke-virtual { p1, v1 }, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
  .line 6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/p;->r0:Landroid/widget/TextView;
    invoke-static { p2 }, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { p1, v1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    const/4 p1, -1
    if-eq p2, p1, :L1
    const/4 p1, -2
    if-ne p2, p1, :L3
  :L1
  .line 7
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/p;->k0:Lcn/manstep/phonemirrorBox/util/l;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;
    move-result-object p2
    const v1, 2131689700
    invoke-virtual { p2, v1 }, Landroid/content/Context;->getString(I)Ljava/lang/String;
    move-result-object p2
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;
    move-result-object v1
    const v2, 2131689929
    invoke-virtual { v1, v2 }, Landroid/content/Context;->getString(I)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { p1, p2, v1, v0 }, Lcn/manstep/phonemirrorBox/util/l;->A(Ljava/lang/String;Ljava/lang/String;Z)V
    goto :L3
  :L2
  .line 8
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/p;->o0:Landroid/widget/ImageView;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v1
    invoke-virtual { v1 }, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
    move-result-object v1
    const v2, 2131230959
    invoke-virtual { v1, v2 }, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    move-result-object v1
    invoke-virtual { p1, v1 }, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
  .line 9
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/p;->r0:Landroid/widget/TextView;
    invoke-static { p2 }, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { p1, v1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 10
    sput p2, Lnet/iwebrtc/audioprocess/sdk/AudioProcess;->RecordDelay:I
  .line 11
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object p1
    sget p2, Lnet/iwebrtc/audioprocess/sdk/AudioProcess;->RecordDelay:I
    invoke-static { p2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p2
    const-string v1, "RecordDelay"
    invoke-virtual { p1, v1, p2 }, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V
  .line 12
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/p;->r0:Landroid/widget/TextView;
    invoke-virtual { p1, v0 }, Landroid/widget/TextView;->setVisibility(I)V
  :L3
    return-void
.end method

.method public f(I)V
  .registers 5
    const/4 v0, 1
    if-ne p1, v0, :L0
    const/16 p1, 17
  .line 1
    invoke-static { v0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
    return-void
  :L0
    const/4 v1, 2
    const/4 v2, 0
    if-ne p1, v1, :L1
  .line 2
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/l0/p;->s0:Z
    goto :L2
  :L1
  .line 3
    iput-boolean v2, p0, Lcn/manstep/phonemirrorBox/l0/p;->s0:Z
  :L2
    if-nez p1, :L5
  .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/p;->p0:Lcn/manstep/phonemirrorBox/k0/j;
    if-eqz p1, :L3
  .line 5
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/k0/j;->dismiss()V
  :L3
  .line 6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/p;->k0:Lcn/manstep/phonemirrorBox/util/l;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/util/l;->C()V
  .line 7
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object p1
    if-eqz p1, :L4
  .line 8
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/p;->l0:Landroid/widget/ImageView;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    const v1, 2131230959
    invoke-virtual { v0, v1 }, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
  :L4
  .line 9
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/p;->q0:Landroid/widget/TextView;
    const/16 v0, 8
    invoke-virtual { p1, v0 }, Landroid/widget/TextView;->setVisibility(I)V
  .line 10
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/p;->g0:Landroid/widget/Button;
    const v0, 2131689830
    invoke-virtual { p1, v0 }, Landroid/widget/Button;->setText(I)V
    goto :L7
  :L5
  .line 11
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/p;->g0:Landroid/widget/Button;
    const v0, 2131689659
    invoke-virtual { p1, v0 }, Landroid/widget/Button;->setText(I)V
  .line 12
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object p1
    if-eqz p1, :L6
  .line 13
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/p;->l0:Landroid/widget/ImageView;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    const v1, 2131230876
    invoke-virtual { v0, v1 }, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
  :L6
  .line 14
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/p;->q0:Landroid/widget/TextView;
    invoke-virtual { p1, v2 }, Landroid/widget/TextView;->setVisibility(I)V
  :L7
    return-void
.end method

.method public g1(Landroid/view/View;Landroid/os/Bundle;)V
  .registers 8
  .line 1
    invoke-super { p0, p1, p2 }, Lcn/manstep/phonemirrorBox/l0/m;->g1(Landroid/view/View;Landroid/os/Bundle;)V
    const p2, 2131296602
  .line 2
    invoke-virtual { p1, p2 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object p2
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/l0/p;->d0:Landroid/view/View;
  .line 3
    invoke-virtual { p2, p0 }, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  .line 4
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/l0/p;->d0:Landroid/view/View;
    new-instance v0, Lcn/manstep/phonemirrorBox/l0/p$a;
    invoke-direct { v0, p0 }, Lcn/manstep/phonemirrorBox/l0/p$a;-><init>(Lcn/manstep/phonemirrorBox/l0/p;)V
    invoke-virtual { p2, v0 }, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    const p2, 2131296585
  .line 5
    invoke-virtual { p1, p2 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object p2
    check-cast p2, Landroid/widget/LinearLayout;
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/l0/p;->w0:Landroid/widget/LinearLayout;
  .line 6
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/l0/p;->d0:Landroid/view/View;
    invoke-virtual { p2 }, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;
    move-result-object p2
  .line 7
    instance-of v0, p2, Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v0, :L0
  .line 8
    check-cast p2, Landroid/graphics/drawable/AnimationDrawable;
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/l0/p;->f0:Landroid/graphics/drawable/AnimationDrawable;
  :L0
  .line 9
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/l0/p;->f0:Landroid/graphics/drawable/AnimationDrawable;
    if-nez p2, :L1
  .line 10
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object p2
    const v0, 2130772002
    invoke-static { p2, v0 }, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
    move-result-object p2
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/l0/p;->e0:Landroid/view/animation/Animation;
  .line 11
    new-instance v0, Landroid/view/animation/LinearInterpolator;
    invoke-direct { v0 }, Landroid/view/animation/LinearInterpolator;-><init>()V
    invoke-virtual { p2, v0 }, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V
  :L1
    const p2, 2131296899
  .line 12
    invoke-virtual { p1, p2 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object p2
    check-cast p2, Landroid/widget/TextView;
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/l0/p;->c0:Landroid/widget/TextView;
    const p2, 2131296389
  .line 13
    invoke-virtual { p1, p2 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object p2
    check-cast p2, Landroid/widget/Button;
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/l0/p;->h0:Landroid/widget/Button;
  .line 14
    invoke-virtual { p2, p0 }, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    const p2, 2131296901
  .line 15
    invoke-virtual { p1, p2 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object p2
    check-cast p2, Landroid/widget/TextView;
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/l0/p;->j0:Landroid/widget/TextView;
    const p2, 2131296379
  .line 16
    invoke-virtual { p1, p2 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object p2
    check-cast p2, Landroid/widget/Button;
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/l0/p;->g0:Landroid/widget/Button;
  .line 17
    invoke-virtual { p2, p0 }, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    const p2, 2131296374
  .line 18
    invoke-virtual { p1, p2 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object p2
    check-cast p2, Landroid/widget/Button;
  .line 19
    invoke-virtual { p2, p0 }, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    const v0, 2131296376
  .line 20
    invoke-virtual { p1, v0 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/Button;
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/l0/p;->i0:Landroid/widget/Button;
  .line 21
    invoke-virtual { v0, p0 }, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    const/4 v0, 4
    new-array v1, v0, [Landroid/widget/Button;
  .line 22
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/l0/p;->g0:Landroid/widget/Button;
    const/4 v3, 0
    aput-object v2, v1, v3
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/l0/p;->h0:Landroid/widget/Button;
    const/4 v4, 1
    aput-object v2, v1, v4
    const/4 v2, 2
    aput-object p2, v1, v2
    const/4 p2, 3
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/l0/p;->i0:Landroid/widget/Button;
    aput-object v2, v1, p2
    const/4 p2, 0
  :L2
    if-ge p2, v0, :L3
  .line 23
    aget-object v2, v1, p2
  .line 24
    invoke-direct { p0, v2 }, Lcn/manstep/phonemirrorBox/l0/p;->r2(Landroid/widget/Button;)V
    add-int/lit8 p2, p2, 1
    goto :L2
  :L3
    const p2, 2131296370
  .line 25
    invoke-virtual { p1, p2 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object p2
  .line 26
    invoke-virtual { p2, p0 }, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    const p2, 2131296553
  .line 27
    invoke-virtual { p1, p2 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object p2
    check-cast p2, Landroid/widget/ImageView;
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/l0/p;->n0:Landroid/widget/ImageView;
    const p2, 2131296559
  .line 28
    invoke-virtual { p1, p2 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object p2
    check-cast p2, Landroid/widget/ImageView;
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/l0/p;->l0:Landroid/widget/ImageView;
    const p2, 2131296562
  .line 29
    invoke-virtual { p1, p2 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object p2
    check-cast p2, Landroid/widget/ImageView;
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/l0/p;->m0:Landroid/widget/ImageView;
    const p2, 2131296555
  .line 30
    invoke-virtual { p1, p2 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object p2
    check-cast p2, Landroid/widget/ImageView;
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/l0/p;->o0:Landroid/widget/ImageView;
    const p2, 2131296903
  .line 31
    invoke-virtual { p1, p2 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object p2
    check-cast p2, Landroid/widget/TextView;
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/l0/p;->q0:Landroid/widget/TextView;
    const p2, 2131296900
  .line 32
    invoke-virtual { p1, p2 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object p1
    check-cast p1, Landroid/widget/TextView;
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/p;->r0:Landroid/widget/TextView;
  .line 33
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;
    move-result-object p1
    new-instance p2, Landroid/content/Intent;
    const-string v0, "cn.manstep.phonemirror.USB_PERMISSION"
    invoke-direct { p2, v0 }, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    invoke-static { p1, v3, p2, v3 }, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    move-result-object p1
  .line 34
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/l0/p;->k0:Lcn/manstep/phonemirrorBox/util/l;
    invoke-virtual { p2, p1 }, Lcn/manstep/phonemirrorBox/util/l;->z(Landroid/app/PendingIntent;)V
  .line 35
    new-instance p1, Landroid/content/IntentFilter;
    invoke-direct { p1, v0 }, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
  .line 36
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;
    move-result-object p2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/p;->x0:Landroid/content/BroadcastReceiver;
    invoke-virtual { p2, v0, p1 }, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
  .line 37
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/l0/p;->j2()V
    return-void
.end method

.method public j([BI)V
  .registers 3
    return-void
.end method

.method public onClick(Landroid/view/View;)V
  .annotation build Landroid/annotation/SuppressLint;
    value = {
      "NonConstantResourceId"
    }
  .end annotation
  .registers 2
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getId()I
    move-result p1
    sparse-switch p1, :L7
    goto :L6
  :L0
    const/4 p1, 0
  .line 2
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/l0/p;->l2(Z)V
    goto :L6
  :L1
  .line 3
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/l0/p;->o2()V
    goto :L6
  :L2
  .line 4
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/l0/p;->n2()V
    goto :L6
  :L3
  .line 5
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/l0/p;->m2()V
    goto :L6
  :L4
  .line 6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/p;->k0:Lcn/manstep/phonemirrorBox/util/l;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/util/l;->n()V
    goto :L6
  :L5
  .line 7
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/l0/p;->k2()V
  :L6
    return-void
  :L7
  .sparse-switch
    2131296370 -> :L5
    2131296374 -> :L4
    2131296376 -> :L3
    2131296379 -> :L2
    2131296389 -> :L1
    2131296602 -> :L0
  .end sparse-switch
.end method

.method public p(ZII)V
  .registers 6
    if-eqz p1, :L0
  .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/p;->n0:Landroid/widget/ImageView;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    const v1, 2131230959
    invoke-virtual { v0, v1 }, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    if-eqz p2, :L1
    if-eqz p3, :L1
  .line 2
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object p1
    invoke-virtual { p1 }, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
    move-result-object p1
    const v0, 2131689823
    invoke-virtual { p1, v0 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object p1
    const/4 v0, 2
    new-array v0, v0, [Ljava/lang/Object;
    const/4 v1, 0
  .line 3
    invoke-static { p2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p2
    aput-object p2, v0, v1
    const/4 p2, 1
    invoke-static { p3 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p3
    aput-object p3, v0, p2
    invoke-static { p1, v0 }, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object p1
  .line 4
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->l0()Landroid/view/View;
    move-result-object p2
    const p3, 2131296902
    invoke-virtual { p2, p3 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object p2
    check-cast p2, Landroid/widget/TextView;
  .line 5
    invoke-virtual { p2, p1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    goto :L1
  :L0
  .line 6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/p;->n0:Landroid/widget/ImageView;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object p2
    invoke-virtual { p2 }, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
    move-result-object p2
    const p3, 2131230876
    invoke-virtual { p2, p3 }, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    move-result-object p2
    invoke-virtual { p1, p2 }, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
  :L1
    return-void
.end method

.method public q(ZLjava/lang/String;)V
  .registers 6
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/l0/p;->t2()V
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/p;->h0:Landroid/widget/Button;
    const/4 v1, 1
    invoke-virtual { v0, v1 }, Landroid/widget/Button;->setEnabled(Z)V
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/p;->j0:Landroid/widget/TextView;
    const/16 v1, 8
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setVisibility(I)V
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/p;->m0:Landroid/widget/ImageView;
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Landroid/widget/ImageView;->setVisibility(I)V
    if-eqz p1, :L0
  .line 5
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/p;->m0:Landroid/widget/ImageView;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    const v2, 2131230959
    invoke-virtual { v0, v2 }, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
  .line 6
    invoke-static { p2 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result p1
    if-nez p1, :L1
  .line 7
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/p;->j0:Landroid/widget/TextView;
    invoke-virtual { p1, p2 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 8
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/p;->j0:Landroid/widget/TextView;
    invoke-virtual { p1, v1 }, Landroid/widget/TextView;->setVisibility(I)V
    goto :L1
  :L0
  .line 9
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/p;->m0:Landroid/widget/ImageView;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object p2
    invoke-virtual { p2 }, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
    move-result-object p2
    const v0, 2131230876
    invoke-virtual { p2, v0 }, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    move-result-object p2
    invoke-virtual { p1, p2 }, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
  :L1
    return-void
.end method
