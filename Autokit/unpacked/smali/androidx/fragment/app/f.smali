.class Landroidx/fragment/app/f;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/fragment/app/f$e;,
    Landroidx/fragment/app/f$d;
  }
.end annotation

.method static a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/f$d;Landroidx/fragment/app/x$g;)V
  .registers 10
  .line 1
    iget-object v2, p0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
  .line 2
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->H:Landroid/view/ViewGroup;
  .line 3
    invoke-virtual { v1, v2 }, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V
  .line 4
    new-instance v5, Lc/g/g/b;
    invoke-direct { v5 }, Lc/g/g/b;-><init>()V
  .line 5
    new-instance v0, Landroidx/fragment/app/f$a;
    invoke-direct { v0, p0 }, Landroidx/fragment/app/f$a;-><init>(Landroidx/fragment/app/Fragment;)V
    invoke-virtual { v5, v0 }, Lc/g/g/b;->c(Lc/g/g/b$a;)V
  .line 6
    invoke-interface { p2, p0, v5 }, Landroidx/fragment/app/x$g;->b(Landroidx/fragment/app/Fragment;Lc/g/g/b;)V
  .line 7
    iget-object v0, p1, Landroidx/fragment/app/f$d;->a:Landroid/view/animation/Animation;
    if-eqz v0, :L0
  .line 8
    new-instance v0, Landroidx/fragment/app/f$e;
    iget-object p1, p1, Landroidx/fragment/app/f$d;->a:Landroid/view/animation/Animation;
    invoke-direct { v0, p1, v1, v2 }, Landroidx/fragment/app/f$e;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V
  .line 9
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
    invoke-virtual { p0, p1 }, Landroidx/fragment/app/Fragment;->P1(Landroid/view/View;)V
  .line 10
    new-instance p1, Landroidx/fragment/app/f$b;
    invoke-direct { p1, v1, p0, p2, v5 }, Landroidx/fragment/app/f$b;-><init>(Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/x$g;Lc/g/g/b;)V
    invoke-virtual { v0, p1 }, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
  .line 11
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
    invoke-virtual { p0, v0 }, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    goto :L1
  :L0
  .line 12
    iget-object p1, p1, Landroidx/fragment/app/f$d;->b:Landroid/animation/Animator;
  .line 13
    invoke-virtual { p0, p1 }, Landroidx/fragment/app/Fragment;->R1(Landroid/animation/Animator;)V
  .line 14
    new-instance v6, Landroidx/fragment/app/f$c;
    move-object v0, v6
    move-object v3, p0
    move-object v4, p2
    invoke-direct/range { v0 .. v5 }, Landroidx/fragment/app/f$c;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/x$g;Lc/g/g/b;)V
    invoke-virtual { p1, v6 }, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V
  .line 15
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
    invoke-virtual { p1, p0 }, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V
  .line 16
    invoke-virtual { p1 }, Landroid/animation/Animator;->start()V
  :L1
    return-void
.end method

.method private static b(Landroidx/fragment/app/Fragment;ZZ)I
  .registers 3
    if-eqz p2, :L1
    if-eqz p1, :L0
  .line 1
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->Z()I
    move-result p0
    return p0
  :L0
  .line 2
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->a0()I
    move-result p0
    return p0
  :L1
    if-eqz p1, :L2
  .line 3
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->L()I
    move-result p0
    return p0
  :L2
  .line 4
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->O()I
    move-result p0
    return p0
.end method

.method static c(Landroid/content/Context;Landroidx/fragment/app/Fragment;ZZ)Landroidx/fragment/app/f$d;
  .catch Landroid/content/res/Resources$NotFoundException; { :L5 .. :L6 } :L9
  .catch Ljava/lang/RuntimeException; { :L5 .. :L6 } :L8
  .catch Ljava/lang/RuntimeException; { :L11 .. :L12 } :L13
  .registers 9
  .line 1
    invoke-virtual { p1 }, Landroidx/fragment/app/Fragment;->V()I
    move-result v0
  .line 2
    invoke-static { p1, p2, p3 }, Landroidx/fragment/app/f;->b(Landroidx/fragment/app/Fragment;ZZ)I
    move-result p3
    const/4 v1, 0
  .line 3
    invoke-virtual { p1, v1, v1, v1, v1 }, Landroidx/fragment/app/Fragment;->Q1(IIII)V
  .line 4
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->H:Landroid/view/ViewGroup;
    const/4 v3, 0
    if-eqz v2, :L0
    sget v4, Lc/j/b;->visible_removing_fragment_view_tag:I
  .line 5
    invoke-virtual { v2, v4 }, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;
    move-result-object v2
    if-eqz v2, :L0
  .line 6
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->H:Landroid/view/ViewGroup;
    sget v4, Lc/j/b;->visible_removing_fragment_view_tag:I
    invoke-virtual { v2, v4, v3 }, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V
  :L0
  .line 7
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->H:Landroid/view/ViewGroup;
    if-eqz v2, :L1
    invoke-virtual { v2 }, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;
    move-result-object v2
    if-eqz v2, :L1
    return-object v3
  :L1
  .line 8
    invoke-virtual { p1, v0, p2, p3 }, Landroidx/fragment/app/Fragment;->I0(IZI)Landroid/view/animation/Animation;
    move-result-object v2
    if-eqz v2, :L2
  .line 9
    new-instance p0, Landroidx/fragment/app/f$d;
    invoke-direct { p0, v2 }, Landroidx/fragment/app/f$d;-><init>(Landroid/view/animation/Animation;)V
    return-object p0
  :L2
  .line 10
    invoke-virtual { p1, v0, p2, p3 }, Landroidx/fragment/app/Fragment;->J0(IZI)Landroid/animation/Animator;
    move-result-object p1
    if-eqz p1, :L3
  .line 11
    new-instance p0, Landroidx/fragment/app/f$d;
    invoke-direct { p0, p1 }, Landroidx/fragment/app/f$d;-><init>(Landroid/animation/Animator;)V
    return-object p0
  :L3
    if-nez p3, :L4
    if-eqz v0, :L4
  .line 12
    invoke-static { v0, p2 }, Landroidx/fragment/app/f;->d(IZ)I
    move-result p3
  :L4
    if-eqz p3, :L15
  .line 13
    invoke-virtual { p0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object p1
    invoke-virtual { p1, p3 }, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;
    move-result-object p1
    const-string p2, "anim"
  .line 14
    invoke-virtual { p2, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p1
    if-eqz p1, :L10
  :L5
  .line 15
    invoke-static { p0, p3 }, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
    move-result-object p2
    if-eqz p2, :L7
  .line 16
    new-instance v0, Landroidx/fragment/app/f$d;
    invoke-direct { v0, p2 }, Landroidx/fragment/app/f$d;-><init>(Landroid/view/animation/Animation;)V
  :L6
    return-object v0
  :L7
    const/4 v1, 1
    goto :L10
  :L8
    nop
    goto :L10
  :L9
    move-exception p0
  .line 17
    throw p0
  :L10
    if-nez v1, :L15
  :L11
  .line 18
    invoke-static { p0, p3 }, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;
    move-result-object p2
    if-eqz p2, :L15
  .line 19
    new-instance v0, Landroidx/fragment/app/f$d;
    invoke-direct { v0, p2 }, Landroidx/fragment/app/f$d;-><init>(Landroid/animation/Animator;)V
  :L12
    return-object v0
  :L13
    move-exception p2
    if-nez p1, :L14
  .line 20
    invoke-static { p0, p3 }, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
    move-result-object p0
    if-eqz p0, :L15
  .line 21
    new-instance p1, Landroidx/fragment/app/f$d;
    invoke-direct { p1, p0 }, Landroidx/fragment/app/f$d;-><init>(Landroid/view/animation/Animation;)V
    return-object p1
  :L14
  .line 22
    throw p2
  :L15
    return-object v3
.end method

.method private static d(IZ)I
  .registers 3
    const/16 v0, 4097
    if-eq p0, v0, :L4
    const/16 v0, 4099
    if-eq p0, v0, :L2
    const/16 v0, 8194
    if-eq p0, v0, :L0
    const/4 p0, -1
    goto :L6
  :L0
    if-eqz p1, :L1
  .line 1
    sget p0, Lc/j/a;->fragment_close_enter:I
    goto :L6
  :L1
    sget p0, Lc/j/a;->fragment_close_exit:I
    goto :L6
  :L2
    if-eqz p1, :L3
  .line 2
    sget p0, Lc/j/a;->fragment_fade_enter:I
    goto :L6
  :L3
    sget p0, Lc/j/a;->fragment_fade_exit:I
    goto :L6
  :L4
    if-eqz p1, :L5
  .line 3
    sget p0, Lc/j/a;->fragment_open_enter:I
    goto :L6
  :L5
    sget p0, Lc/j/a;->fragment_open_exit:I
  :L6
    return p0
.end method
