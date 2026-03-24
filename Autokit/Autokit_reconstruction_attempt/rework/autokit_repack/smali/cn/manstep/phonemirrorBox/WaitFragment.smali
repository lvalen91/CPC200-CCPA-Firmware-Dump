.class public Lcn/manstep/phonemirrorBox/WaitFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcn/manstep/phonemirrorBox/BoxInterface/d$g;


# instance fields
.field private a0:Landroid/widget/ImageView;

.field private b0:Landroid/view/animation/Animation;

.field private c0:Landroid/graphics/drawable/AnimationDrawable;

.field private d0:Landroid/widget/TextView;

.field private e0:I

.field private f0:Landroid/view/View;

.field private g0:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcn/manstep/phonemirrorBox/WaitFragment;->e0:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/WaitFragment;->g0:Z

    return-void
.end method

.method private g2(Landroid/view/View;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 1
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object v0

    if-nez v0, :cond_a

    return-void

    .line 2
    :cond_a
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tvWirelessConnTips"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2c

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/WaitFragment;->d0:Landroid/widget/TextView;

    .line 4
    :cond_2c
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/WaitFragment;->d0:Landroid/widget/TextView;

    if-eqz v0, :cond_3b

    .line 5
    sget-boolean v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->R:Z

    if-eqz v1, :cond_36

    const/4 v1, 0x0

    goto :goto_38

    :cond_36
    const/16 v1, 0x8

    :goto_38
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3b
    const v0, 0x7f090056

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/WaitFragment;->a0:Landroid/widget/ImageView;

    .line 7
    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/WaitFragment;->c0:Landroid/graphics/drawable/AnimationDrawable;

    if-nez p1, :cond_65

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object p1

    const v0, 0x7f010022

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/WaitFragment;->b0:Landroid/view/animation/Animation;

    .line 9
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :cond_65
    return-void
.end method

.method private i2()V
    .registers 8

    .line 1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 2
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object v2

    if-nez v2, :cond_11

    return-void

    .line 4
    :cond_11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WaitFragment,resetDisplaySize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcn/manstep/phonemirrorBox/p;->k:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcn/manstep/phonemirrorBox/p;->l:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->l0()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_8e

    .line 8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WaitFragment,resetDisplaySize: VIDEO_MAX_SIZE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 9
    :cond_8e
    sget v2, Lcn/manstep/phonemirrorBox/p;->l:I

    sget v5, Lcn/manstep/phonemirrorBox/p;->k:I

    if-le v2, v5, :cond_c2

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcn/manstep/phonemirrorBox/WaitFragment;->h2(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_c7

    .line 11
    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->g(II)V

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcn/manstep/phonemirrorBox/p;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcn/manstep/phonemirrorBox/p;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    goto :goto_c7

    .line 13
    :cond_c2
    sget v0, Lcn/manstep/phonemirrorBox/p;->l:I

    invoke-static {v5, v0}, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->g(II)V

    :cond_c7
    :goto_c7
    return-void
.end method

.method private j2()V
    .registers 3

    const-string v0, "WaitFragment,startAnimation: ====A"

    .line 1
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/WaitFragment;->g0:Z

    if-eqz v0, :cond_a

    return-void

    :cond_a
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/WaitFragment;->g0:Z

    .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/WaitFragment;->d0:Landroid/widget/TextView;

    if-eqz v0, :cond_1c

    .line 5
    sget-boolean v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->R:Z

    if-eqz v1, :cond_17

    const/4 v1, 0x0

    goto :goto_19

    :cond_17
    const/16 v1, 0x8

    :goto_19
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WaitFragment,startAnimation: ====B BoxProtocol.bWifiDeviceConected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->R:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/WaitFragment;->c0:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v0, :cond_3e

    .line 8
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/WaitFragment;->a0:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/WaitFragment;->b0:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_41

    .line 9
    :cond_3e
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :goto_41
    return-void
.end method

.method private k2()V
    .registers 3

    const-string v0, "WaitFragment,stopAnimation: ====A"

    .line 1
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/WaitFragment;->g0:Z

    if-nez v0, :cond_a

    return-void

    :cond_a
    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/WaitFragment;->g0:Z

    .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/WaitFragment;->d0:Landroid/widget/TextView;

    if-eqz v0, :cond_16

    const/16 v1, 0x8

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_16
    const-string v0, "WaitFragment,stopAnimation: ====B"

    .line 6
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/WaitFragment;->c0:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v0, :cond_25

    .line 8
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/WaitFragment;->a0:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    goto :goto_28

    .line 9
    :cond_25
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :goto_28
    return-void
.end method


# virtual methods
.method public L0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    .line 1
    invoke-static {p0}, Lcn/manstep/phonemirrorBox/v0/e;->M(Lcn/manstep/phonemirrorBox/BoxInterface/d$g;)Lcn/manstep/phonemirrorBox/BoxInterface/d;

    const p3, 0x7f0c0053

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/WaitFragment;->f0:Landroid/view/View;

    .line 3
    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/WaitFragment;->g2(Landroid/view/View;)V

    .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/WaitFragment;->f0:Landroid/view/View;

    return-object p1
.end method

.method public O0()V
    .registers 1

    .line 1
    invoke-static {p0}, Lcn/manstep/phonemirrorBox/v0/e;->S(Lcn/manstep/phonemirrorBox/BoxInterface/d$g;)V

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->O0()V

    return-void
.end method

.method public a(ILjava/lang/Object;)V
    .registers 3

    return-void
.end method

.method public c(I)V
    .registers 2

    return-void
.end method

.method public h2(Landroid/app/Activity;)Z
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 2
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, p1, -0x401

    if-ne v0, p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method

.method public n(Lcn/manstep/phonemirrorBox/BoxInterface/d;)V
    .registers 2

    return-void
.end method

.method public o(I)V
    .registers 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WaitFragment,on_Box_Phase: phase = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    const/16 v0, 0xf

    if-ne p1, v0, :cond_1b

    .line 2
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/WaitFragment;->i2()V

    .line 3
    :cond_1b
    iget v1, p0, Lcn/manstep/phonemirrorBox/WaitFragment;->e0:I

    if-eq v1, p1, :cond_d8

    .line 4
    iput p1, p0, Lcn/manstep/phonemirrorBox/WaitFragment;->e0:I

    if-eqz p1, :cond_d5

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_c3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_d5

    const/4 v3, 0x3

    if-eq p1, v3, :cond_c3

    const/4 v4, 0x4

    if-eq p1, v4, :cond_3c

    const/16 v1, 0xc

    if-eq p1, v1, :cond_d5

    const/16 v1, 0xe

    if-eq p1, v1, :cond_d5

    if-eq p1, v0, :cond_d5

    goto/16 :goto_d8

    .line 5
    :cond_3c
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/WaitFragment;->f0:Landroid/view/View;

    const v0, 0x7f0902b9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_bf

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object v0

    check-cast v0, Lcn/manstep/phonemirrorBox/MainActivity;

    const/4 v4, -0x1

    if-eqz v0, :cond_54

    .line 7
    iget v4, v0, Lcn/manstep/phonemirrorBox/MainActivity;->u:I

    :cond_54
    const v0, 0x7f0f00cd

    if-eq v4, v2, :cond_aa

    if-eq v4, v3, :cond_94

    .line 8
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;

    move-result-object v3

    invoke-virtual {v3}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->k()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_78

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->d0()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f01b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_bf

    .line 10
    :cond_78
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->d0()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;

    move-result-object v3

    invoke-virtual {v3}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->k()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_bf

    .line 11
    :cond_94
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->d0()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Android Auto"

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_bf

    .line 12
    :cond_aa
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->d0()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "CarPlay"

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    :cond_bf
    :goto_bf
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/WaitFragment;->j2()V

    goto :goto_d8

    .line 14
    :cond_c3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/WaitFragment;->d0:Landroid/widget/TextView;

    if-eqz p1, :cond_d1

    .line 15
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->R:Z

    if-eqz v0, :cond_cc

    goto :goto_ce

    :cond_cc
    const/16 v1, 0x8

    :goto_ce
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    :cond_d1
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/WaitFragment;->j2()V

    goto :goto_d8

    .line 17
    :cond_d5
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/WaitFragment;->k2()V

    :cond_d8
    :goto_d8
    return-void
.end method

.method public v([B)V
    .registers 2

    return-void
.end method
