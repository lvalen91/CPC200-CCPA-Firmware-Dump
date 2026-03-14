.class public Lcn/manstep/phonemirrorBox/MainActivity;
.super Lcn/manstep/phonemirrorBox/k;
.implements Lcn/manstep/phonemirrorBox/p0/b;
.implements Lcn/manstep/phonemirrorBox/a$b;
.implements Lcn/manstep/phonemirrorBox/util/t$a;
.source "SourceFile"

.field public static a0:I = 2

.field public static b0:Z

.field private A:Landroid/content/ServiceConnection;

.field private B:Lcn/manstep/phonemirrorBox/ModeChangeService;

.field private C:Ljava/lang/String;

.field private D:Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;

.field private E:Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;

.field private F:Lcn/manstep/phonemirrorBox/floatwindow/b;

.field private G:Lcn/manstep/phonemirrorBox/p0/c;

.field private H:Z

.field private I:Lcn/manstep/phonemirrorBox/z;

.field private J:Landroidx/fragment/app/n;

.field private K:Lcn/manstep/phonemirrorBox/l0/n;

.field private L:Z

.field private M:Lcn/manstep/phonemirrorBox/util/t;

.field private N:Z

.field private O:Z

.field private P:Lcn/manstep/phonemirrorBox/a;

.field private Q:Lcn/manstep/phonemirrorBox/customview/a;

.field private R:Lcn/manstep/phonemirrorBox/k0/a;

.field private S:Z

.field private T:Z

.field private final U:Lcn/manstep/phonemirrorBox/util/u;

.field private V:Lcn/manstep/phonemirrorBox/l0/u;

.field private W:Z

.field private X:Z

.field private final Y:[I

.field private final Z:Lcn/manstep/phonemirrorBox/util/u;

.field public t:Z

.field public u:I

.field public v:I

.field private w:Landroid/widget/ViewAnimator;

.field private x:Landroid/view/animation/Animation;

.field private y:Landroid/view/animation/Animation;

.field private z:Landroid/widget/TextView;

.method static constructor <clinit>()V
  .registers 3
    const v0, 1526
    invoke-static { v0 }, Lcom/stub/StubApp;->interface11(I)V
    return-void
.end method

.method public constructor <init>()V
  .registers 4
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/k;-><init>()V
    const/4 v0, 0
  .line 2
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->t:Z
    const/4 v1, -1
  .line 3
    iput v1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->u:I
  .line 4
    iput v1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->v:I
    const/4 v1, 0
  .line 5
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->A:Landroid/content/ServiceConnection;
  .line 6
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->B:Lcn/manstep/phonemirrorBox/ModeChangeService;
    const-string v2, ""
  .line 7
    iput-object v2, p0, Lcn/manstep/phonemirrorBox/MainActivity;->C:Ljava/lang/String;
  .line 8
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->H:Z
  .line 9
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->L:Z
  .line 10
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->N:Z
  .line 11
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->O:Z
  .line 12
    new-instance v2, Lcn/manstep/phonemirrorBox/MainActivity$k;
    invoke-direct { v2, p0 }, Lcn/manstep/phonemirrorBox/MainActivity$k;-><init>(Lcn/manstep/phonemirrorBox/MainActivity;)V
    const/4 v2, 1
  .line 13
    iput-boolean v2, p0, Lcn/manstep/phonemirrorBox/MainActivity;->S:Z
  .line 14
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->T:Z
  .line 15
    new-instance v2, Lcn/manstep/phonemirrorBox/util/u;
    invoke-direct { v2 }, Lcn/manstep/phonemirrorBox/util/u;-><init>()V
    iput-object v2, p0, Lcn/manstep/phonemirrorBox/MainActivity;->U:Lcn/manstep/phonemirrorBox/util/u;
  .line 16
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->V:Lcn/manstep/phonemirrorBox/l0/u;
  .line 17
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->W:Z
  .line 18
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->X:Z
    const/4 v0, 2
    new-array v0, v0, [I
  .line 19
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->Y:[I
  .line 20
    new-instance v0, Lcn/manstep/phonemirrorBox/util/u;
    invoke-direct { v0 }, Lcn/manstep/phonemirrorBox/util/u;-><init>()V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->Z:Lcn/manstep/phonemirrorBox/util/u;
    return-void
.end method

.method static synthetic A0(Lcn/manstep/phonemirrorBox/MainActivity;)V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/MainActivity;->Y0()V
    return-void
.end method

.method static synthetic B0(Lcn/manstep/phonemirrorBox/MainActivity;)Lcn/manstep/phonemirrorBox/z;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->I:Lcn/manstep/phonemirrorBox/z;
    return-object p0
.end method

.method static synthetic C0(Lcn/manstep/phonemirrorBox/MainActivity;)Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->E:Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;
    return-object p0
.end method

.method static synthetic D0(Lcn/manstep/phonemirrorBox/MainActivity;)Lcn/manstep/phonemirrorBox/customview/a;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->Q:Lcn/manstep/phonemirrorBox/customview/a;
    return-object p0
.end method

.method static synthetic E0(Lcn/manstep/phonemirrorBox/MainActivity;Lcn/manstep/phonemirrorBox/customview/a;)Lcn/manstep/phonemirrorBox/customview/a;
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->Q:Lcn/manstep/phonemirrorBox/customview/a;
    return-object p1
.end method

.method static synthetic F0(Lcn/manstep/phonemirrorBox/MainActivity;)Lcn/manstep/phonemirrorBox/floatwindow/b;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->F:Lcn/manstep/phonemirrorBox/floatwindow/b;
    return-object p0
.end method

.method static synthetic G0(Lcn/manstep/phonemirrorBox/MainActivity;)V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/MainActivity;->O0()V
    return-void
.end method

.method static synthetic H0(Lcn/manstep/phonemirrorBox/MainActivity;)V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/MainActivity;->a1()V
    return-void
.end method

.method static synthetic I0(Lcn/manstep/phonemirrorBox/MainActivity;)V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/MainActivity;->p1()V
    return-void
.end method

.method private J0()V
  .registers 4
  .line 1
    new-instance v0, Lcn/manstep/phonemirrorBox/MainActivity$y;
    invoke-direct { v0, p0 }, Lcn/manstep/phonemirrorBox/MainActivity$y;-><init>(Lcn/manstep/phonemirrorBox/MainActivity;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->A:Landroid/content/ServiceConnection;
  .line 2
    new-instance v0, Landroid/content/Intent;
    const-class v1, Lcn/manstep/phonemirrorBox/ModeChangeService;
    invoke-direct { v0, p0, v1 }, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
  .line 3
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->A:Landroid/content/ServiceConnection;
    const/4 v2, 1
    invoke-virtual { p0, v0, v1, v2 }, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    return-void
.end method

.method private K0(Z)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->z:Landroid/widget/TextView;
    if-eqz v0, :L1
    if-eqz p1, :L0
    const/4 p1, 0
  .line 2
    invoke-virtual { v0, p1 }, Landroid/widget/TextView;->setVisibility(I)V
    goto :L1
  :L0
    const/4 p1, 4
  .line 3
    invoke-virtual { v0, p1 }, Landroid/widget/TextView;->setVisibility(I)V
  :L1
    return-void
.end method

.method private L0(IZ)V
  .registers 5
  .line 1
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/MainActivity;->D()V
  .line 2
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->O:Z
    if-eqz v0, :L0
  .line 3
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/MainActivity;->N0()Z
    return-void
  :L0
    const/4 v0, -1
    const/4 v1, 1
    if-ne p1, v0, :L1
    const/4 p1, 1
  :L1
  .line 4
    iget v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->u:I
    if-ne p1, v0, :L2
    if-nez p2, :L3
    return-void
  :L2
  .line 5
    iput p1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->u:I
  :L3
  .line 6
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "MainActivity,changeSingleWorkMode: mode = "
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-static { p2 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    const/4 p2, 2
    if-eq p1, v1, :L6
    const/4 v0, 4
    if-eq p1, p2, :L5
    const/4 p2, 3
    if-eq p1, p2, :L4
    goto :L7
  :L4
  .line 7
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->b(I)V
  .line 8
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->c(I)V
  .line 9
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    if-eqz p1, :L7
  .line 10
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->X0()Z
    goto :L7
  :L5
  .line 11
    invoke-static { p2 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->b(I)V
  .line 12
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->c(I)V
  .line 13
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    if-eqz p1, :L7
  .line 14
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->X0()Z
    goto :L7
  :L6
    const/4 p1, 0
  .line 15
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->b(I)V
  .line 16
    invoke-static { p2 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->c(I)V
  .line 17
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    if-eqz p1, :L7
  .line 18
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->X0()Z
  :L7
  .line 19
    iget p1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->u:I
    invoke-static { p0, p1 }, Lcn/manstep/phonemirrorBox/b0;->w(Landroid/content/Context;I)V
    return-void
.end method

.method private M0()V
  .registers 3
  .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->W:Z
    if-eqz v0, :L0
  .line 2
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->V()Z
    move-result v0
    if-nez v0, :L0
  .line 3
    invoke-static { }, Lcn/manstep/phonemirrorBox/util/b0;->m()Lcn/manstep/phonemirrorBox/util/b0;
    move-result-object v0
    new-instance v1, Lcn/manstep/phonemirrorBox/MainActivity$a;
    invoke-direct { v1, p0 }, Lcn/manstep/phonemirrorBox/MainActivity$a;-><init>(Lcn/manstep/phonemirrorBox/MainActivity;)V
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/util/b0;->h(Lcn/manstep/phonemirrorBox/util/b0$d;)V
  :L0
    return-void
.end method

.method private N0()Z
  .registers 2
    const/4 v0, 1
    return v0
.end method

.method private O0()V
  .registers 3
  .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->W:Z
    if-eqz v0, :L0
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/util/b0;->m()Lcn/manstep/phonemirrorBox/util/b0;
    move-result-object v0
    new-instance v1, Lcn/manstep/phonemirrorBox/MainActivity$c0;
    invoke-direct { v1, p0 }, Lcn/manstep/phonemirrorBox/MainActivity$c0;-><init>(Lcn/manstep/phonemirrorBox/MainActivity;)V
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/util/b0;->g(Lcn/manstep/phonemirrorBox/util/b0$d;)V
  :L0
    return-void
.end method

.method private P0()V
  .registers 4
  .line 1
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/b0;->h(Landroid/content/Context;)Z
    move-result v0
    if-nez v0, :L0
  .line 2
    new-instance v0, Ljava/lang/Thread;
    new-instance v1, Lcn/manstep/phonemirrorBox/MainActivity$p;
    invoke-direct { v1, p0 }, Lcn/manstep/phonemirrorBox/MainActivity$p;-><init>(Lcn/manstep/phonemirrorBox/MainActivity;)V
    const-string v2, "copyMute"
    invoke-direct { v0, v1, v2 }, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V
  .line 3
    invoke-virtual { v0 }, Ljava/lang/Thread;->start()V
  :L0
    return-void
.end method

.method private Q0(Landroid/net/Uri;Landroid/net/Uri;)V
  .registers 6
  .line 1
    new-instance v0, Lcom/yalantis/ucrop/UCrop$Options;
    invoke-direct { v0 }, Lcom/yalantis/ucrop/UCrop$Options;-><init>()V
    const v1, 2131099741
  .line 2
    invoke-static { p0, v1 }, Landroidx/core/content/a;->b(Landroid/content/Context;I)I
    move-result v2
    invoke-virtual { v0, v2 }, Lcom/yalantis/ucrop/UCrop$Options;->setToolbarColor(I)V
  .line 3
    invoke-static { p0, v1 }, Landroidx/core/content/a;->b(Landroid/content/Context;I)I
    move-result v1
    invoke-virtual { v0, v1 }, Lcom/yalantis/ucrop/UCrop$Options;->setStatusBarColor(I)V
  .line 4
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;
    invoke-virtual { v0, v1 }, Lcom/yalantis/ucrop/UCrop$Options;->setCompressionFormat(Landroid/graphics/Bitmap$CompressFormat;)V
    const/16 v1, 100
  .line 5
    invoke-virtual { v0, v1 }, Lcom/yalantis/ucrop/UCrop$Options;->setCompressionQuality(I)V
    const/4 v1, 0
  .line 6
    invoke-virtual { v0, v1 }, Lcom/yalantis/ucrop/UCrop$Options;->setHideBottomControls(Z)V
    const v1, 2131689909
  .line 7
    invoke-static { p0, v1 }, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Lcom/yalantis/ucrop/UCrop$Options;->setToolbarTitle(Ljava/lang/String;)V
  .line 8
    invoke-static { p1, p2 }, Lcom/yalantis/ucrop/UCrop;->of(Landroid/net/Uri;Landroid/net/Uri;)Lcom/yalantis/ucrop/UCrop;
    move-result-object p1
    const/high16 p2, 16256
  .line 9
    invoke-virtual { p1, p2, p2 }, Lcom/yalantis/ucrop/UCrop;->withAspectRatio(FF)Lcom/yalantis/ucrop/UCrop;
    move-result-object p1
    const/16 p2, 180
  .line 10
    invoke-virtual { p1, p2, p2 }, Lcom/yalantis/ucrop/UCrop;->withMaxResultSize(II)Lcom/yalantis/ucrop/UCrop;
    move-result-object p1
  .line 11
    invoke-virtual { p1, v0 }, Lcom/yalantis/ucrop/UCrop;->withOptions(Lcom/yalantis/ucrop/UCrop$Options;)Lcom/yalantis/ucrop/UCrop;
    move-result-object p1
  .line 12
    invoke-virtual { p1, p0 }, Lcom/yalantis/ucrop/UCrop;->start(Landroid/app/Activity;)V
    return-void
.end method

.method private R0(Ljava/lang/Runnable;J)V
  .registers 5
  .line 1
    new-instance v0, Landroid/os/Handler;
    invoke-direct { v0 }, Landroid/os/Handler;-><init>()V
    invoke-virtual { v0, p1, p2, p3 }, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    return-void
.end method

.method private S0(Landroid/view/Window;)V
  .registers 12
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "MainActivity,enterFullScreen: ###### isVideoNotFullscreen="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-boolean v1, Lcn/manstep/phonemirrorBox/p;->j:Z
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->o(Ljava/lang/String;)V
  .line 2
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/MainActivity;->b1()Z
    move-result v0
    if-eqz v0, :L0
    return-void
  :L0
  .line 3
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    const-string v1, "HideSysNavBar"
    const/4 v2, 1
    invoke-virtual { v0, v1, v2 }, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z
    move-result v0
  .line 4
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v1
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/b0;->k()Z
    move-result v1
  .line 5
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "enterFullScreen: isHideSysNavBar="
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    const-string v4, ", bShowStatusBar="
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3, v1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    const-string v4, "MainActivity"
    invoke-static { v4, v3 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    if-nez v0, :L1
    if-eqz v1, :L1
    return-void
  :L1
    const/4 v3, 4
  .line 6
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object v5
    invoke-virtual { v5 }, Lcn/manstep/phonemirrorBox/u;->v()I
    move-result v5
    if-ne v3, v5, :L2
    const/4 v0, 1
    goto :L3
  :L2
    move v2, v1
  :L3
  .line 7
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/k;->f0()V
    const/16 v1, 2048
  .line 8
    invoke-virtual { p1, v1 }, Landroid/view/Window;->clearFlags(I)V
  .line 9
    invoke-virtual { p1 }, Landroid/view/Window;->getDecorView()Landroid/view/View;
    move-result-object v3
  .line 10
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v6, 19
    const/16 v7, 256
    const/16 v8, 1024
    if-lt v5, v6, :L10
  .line 11
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object v5
    invoke-virtual { v5 }, Lcn/manstep/phonemirrorBox/u;->R()Z
    move-result v5
    const/16 v6, 4096
    const/4 v9, 0
    if-eqz v5, :L4
    const/16 v5, 4096
    goto :L5
  :L4
    const/4 v5, 0
  :L5
    or-int/2addr v1, v5
    if-nez v2, :L8
  .line 12
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object v1
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/u;->R()Z
    move-result v1
    if-eqz v1, :L6
    goto :L7
  :L6
    const/4 v6, 0
  :L7
    or-int/lit16 v1, v6, 2052
    or-int/2addr v1, v8
    or-int/2addr v1, v7
  :L8
    if-eqz v0, :L9
    or-int/lit16 v1, v1, 1538
  .line 13
    invoke-virtual { p1 }, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;
    move-result-object v2
    const/16 v5, 2050
  .line 14
    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I
  .line 15
    invoke-virtual { p1, v2 }, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
  :L9
  .line 16
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "enterFullScreen: setSystemUiVisibility->uiOptions="
    invoke-virtual { v2, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static { v4, v2 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 17
    invoke-virtual { v3, v1 }, Landroid/view/View;->setSystemUiVisibility(I)V
    goto :L11
  :L10
  .line 18
    invoke-virtual { p1, v8, v8 }, Landroid/view/Window;->setFlags(II)V
    const/16 v1, 8
  .line 19
    invoke-virtual { v3, v1 }, Landroid/view/View;->setSystemUiVisibility(I)V
    const-string v1, "Because the Android version number is lower than 4.4.4, there is no hidden NavigationBar."
  .line 20
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  :L11
  .line 21
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 28
    if-gt v1, v2, :L12
  .line 22
    invoke-virtual { p1, v7 }, Landroid/view/Window;->addFlags(I)V
  :L12
    if-eqz v0, :L13
    const/16 v0, 512
  .line 23
    invoke-virtual { p1, v0 }, Landroid/view/Window;->addFlags(I)V
  :L13
    return-void
.end method

.method private T0(Landroid/view/Window;)V
  .registers 9
    const-string v0, "MainActivity,exitFullScreen: ######"
  .line 1
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/k;->g0()V
    const/16 v0, 1024
  .line 3
    invoke-virtual { p1, v0 }, Landroid/view/Window;->clearFlags(I)V
  .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 28
    const/16 v3, 256
    if-gt v1, v2, :L0
  .line 5
    invoke-virtual { p1, v3 }, Landroid/view/Window;->clearFlags(I)V
  :L0
    const/16 v1, 512
  .line 6
    invoke-virtual { p1, v1 }, Landroid/view/Window;->clearFlags(I)V
  .line 7
    invoke-virtual { p1 }, Landroid/view/Window;->getDecorView()Landroid/view/View;
    move-result-object v1
  .line 8
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v5, 19
    const/4 v6, 0
    if-lt v4, v5, :L4
  .line 9
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object v4
    invoke-virtual { v4 }, Lcn/manstep/phonemirrorBox/u;->Q()Z
    move-result v4
    if-eqz v4, :L3
  .line 10
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object v4
    invoke-virtual { v4 }, Lcn/manstep/phonemirrorBox/u;->R()Z
    move-result v4
    if-eqz v4, :L1
    const/16 v4, 4096
    goto :L2
  :L1
    const/4 v4, 0
  :L2
    or-int/lit16 v4, v4, 2052
    or-int/2addr v0, v4
    or-int/2addr v0, v3
  .line 11
    invoke-virtual { v1, v0 }, Landroid/view/View;->setSystemUiVisibility(I)V
    goto :L5
  :L3
  .line 12
    invoke-virtual { v1, v6 }, Landroid/view/View;->setSystemUiVisibility(I)V
    goto :L5
  :L4
  .line 13
    invoke-virtual { v1, v6 }, Landroid/view/View;->setSystemUiVisibility(I)V
    const-string v0, "Because the Android version number is lower than 4.4.4, there is no hidden NavigationBar."
  .line 14
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  :L5
  .line 15
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    if-gt v0, v2, :L7
  .line 16
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/u;->Q()Z
    move-result v0
    if-eqz v0, :L6
  .line 17
    invoke-virtual { p1, v3 }, Landroid/view/Window;->addFlags(I)V
    goto :L7
  :L6
  .line 18
    invoke-virtual { p1 }, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;
    move-result-object v0
  .line 19
    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->flags:I
  .line 20
    invoke-virtual { p1, v0 }, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
  :L7
  .line 21
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/u;->Q()Z
    move-result v0
    if-nez v0, :L8
    const/16 v0, 2048
  .line 22
    invoke-virtual { p1, v0, v0 }, Landroid/view/Window;->setFlags(II)V
  :L8
    return-void
.end method

.method private V0(Landroid/content/Context;)V
  .catch Ljava/lang/Exception; { :L1 .. :L2 } :L3
  .registers 6
  .line 1
    new-instance v0, Landroid/content/Intent;
    invoke-direct { v0 }, Landroid/content/Intent;-><init>()V
    const/high16 v1, 4096
  .line 2
    invoke-virtual { v0, v1 }, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
  .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 9
    if-lt v1, v2, :L0
    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"
  .line 4
    invoke-virtual { v0, v1 }, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
  .line 5
    invoke-virtual { p0 }, Landroid/app/Activity;->getPackageName()Ljava/lang/String;
    move-result-object v1
    const/4 v2, 0
    const-string v3, "package"
    invoke-static { v3, v1, v2 }, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    goto :L1
  :L0
    const/16 v2, 8
    if-gt v1, v2, :L1
    const-string v1, "android.intent.action.VIEW"
  .line 6
    invoke-virtual { v0, v1 }, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    const-string v1, "com.android.settings"
    const-string v2, "com.android.settings.InstalledAppDetails"
  .line 7
    invoke-virtual { v0, v1, v2 }, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
  .line 8
    invoke-virtual { p0 }, Landroid/app/Activity;->getPackageName()Ljava/lang/String;
    move-result-object v1
    const-string v2, "com.android.settings.ApplicationPkgName"
    invoke-virtual { v0, v2, v1 }, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
  :L1
  .line 9
    invoke-virtual { p1, v0 }, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
  :L2
    goto :L4
  :L3
    move-exception p1
  .line 10
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "MainActivity,getAppDetailSettingIntent: \n"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { p1 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L4
    return-void
.end method

.method private W0(Landroid/content/Intent;)V
  .registers 4
    if-eqz p1, :L0
    const-string v0, "EXTRA_NAME_1"
    const/16 v1, -255
  .line 1
    invoke-virtual { p1, v0, v1 }, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    move-result p1
    if-eq p1, v1, :L0
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;
    if-eqz v0, :L0
  .line 3
    invoke-virtual { v0, p1 }, Lcn/manstep/phonemirrorBox/a;->E(I)V
  :L0
    return-void
.end method

.method private X0()Z
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/4 v1, 1
    const/16 v2, 23
    if-lt v0, v2, :L1
    const-string v0, "android.permission.RECORD_AUDIO"
  .line 2
    invoke-static { p0, v0 }, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I
    move-result v0
    if-nez v0, :L0
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"
  .line 3
    invoke-static { p0, v0 }, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I
    move-result v0
    if-eqz v0, :L1
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"
  .line 4
    invoke-static { p0, v0 }, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I
    move-result v0
    if-nez v0, :L0
    goto :L1
  :L0
    const/4 v1, 0
  :L1
    return v1
.end method

.method private Y0()V
  .registers 4
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/MainActivity;->b1()Z
    move-result v0
    if-eqz v0, :L0
    return-void
  :L0
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->G:Lcn/manstep/phonemirrorBox/p0/c;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/p0/c;->m()Z
    move-result v0
    const/4 v1, 1
    if-eqz v0, :L1
  .line 3
    invoke-direct { p0, v1 }, Lcn/manstep/phonemirrorBox/MainActivity;->k1(Z)V
    goto :L3
  :L1
  .line 4
    sget v0, Lcn/manstep/phonemirrorBox/p;->l:I
    const/16 v2, 600
    if-ne v0, v2, :L2
    sget v0, Lcn/manstep/phonemirrorBox/p;->k:I
    const/16 v2, 800
    if-ne v0, v2, :L2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->C:Ljava/lang/String;
    const-string v2, "rk3188"
    invoke-virtual { v2, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L2
  .line 5
    invoke-direct { p0, v1 }, Lcn/manstep/phonemirrorBox/MainActivity;->k1(Z)V
    goto :L3
  :L2
    const/4 v0, 0
  .line 6
    invoke-direct { p0, v0 }, Lcn/manstep/phonemirrorBox/MainActivity;->k1(Z)V
  :L3
    return-void
.end method

.method private Z0()V
  .registers 4
    const-string v0, "MainActivity"
    const-string v1, "initAnimation: "
  .line 1
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    const v0, 2130771980
  .line 2
    invoke-static { p0, v0 }, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
    move-result-object v0
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->y:Landroid/view/animation/Animation;
    const v0, 2130771981
  .line 3
    invoke-static { p0, v0 }, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
    move-result-object v0
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->x:Landroid/view/animation/Animation;
    const v0, 2131296702
  .line 4
    invoke-virtual { p0, v0 }, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/ViewAnimator;
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->w:Landroid/widget/ViewAnimator;
  .line 5
    new-instance v1, Lcn/manstep/phonemirrorBox/MainActivity$e;
    invoke-direct { v1, p0 }, Lcn/manstep/phonemirrorBox/MainActivity$e;-><init>(Lcn/manstep/phonemirrorBox/MainActivity;)V
    invoke-virtual { v0, v1 }, Landroid/widget/ViewAnimator;->post(Ljava/lang/Runnable;)Z
    const v0, 16908290
  .line 6
    invoke-virtual { p0, v0 }, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;
    move-result-object v0
  .line 7
    invoke-virtual { v0 }, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
    move-result-object v1
  .line 8
    new-instance v2, Lcn/manstep/phonemirrorBox/MainActivity$f;
    invoke-direct { v2, p0, v0 }, Lcn/manstep/phonemirrorBox/MainActivity$f;-><init>(Lcn/manstep/phonemirrorBox/MainActivity;Landroid/view/View;)V
    invoke-virtual { v1, v2 }, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
  .line 9
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->w:Landroid/widget/ViewAnimator;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->y:Landroid/view/animation/Animation;
    invoke-virtual { v0, v1 }, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V
  .line 10
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->w:Landroid/widget/ViewAnimator;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->x:Landroid/view/animation/Animation;
    invoke-virtual { v0, v1 }, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V
    return-void
.end method

.method private a1()V
  .catch Ljava/lang/Exception; { :L1 .. :L2 } :L3
  .registers 5
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->J:Landroidx/fragment/app/n;
    if-nez v0, :L0
  .line 2
    invoke-virtual { p0 }, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;
    move-result-object v0
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->J:Landroidx/fragment/app/n;
  :L0
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->I:Lcn/manstep/phonemirrorBox/z;
    const-string v1, "MainActivity"
    if-nez v0, :L4
  .line 4
    new-instance v0, Lcn/manstep/phonemirrorBox/z;
    invoke-direct { v0 }, Lcn/manstep/phonemirrorBox/z;-><init>()V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->I:Lcn/manstep/phonemirrorBox/z;
  .line 5
    invoke-virtual { v0 }, Landroidx/fragment/app/Fragment;->q0()Z
    move-result v0
    if-nez v0, :L4
  :L1
  .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->J:Landroidx/fragment/app/n;
    invoke-virtual { v0 }, Landroidx/fragment/app/n;->l()Landroidx/fragment/app/w;
    move-result-object v0
    const v2, 2131296606
  .line 7
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/MainActivity;->I:Lcn/manstep/phonemirrorBox/z;
    invoke-virtual { v0, v2, v3 }, Landroidx/fragment/app/w;->b(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;
  .line 8
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/MainActivity;->I:Lcn/manstep/phonemirrorBox/z;
    invoke-virtual { v0, v2 }, Landroidx/fragment/app/w;->n(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;
  .line 9
    invoke-virtual { v0 }, Landroidx/fragment/app/w;->i()I
  :L2
    goto :L4
  :L3
    move-exception v0
  .line 10
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "initSettingsFragment: "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->g(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
  :L4
  .line 11
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "initSettingsFragment: SettingsFragment="
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/MainActivity;->I:Lcn/manstep/phonemirrorBox/z;
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    return-void
.end method

.method private b1()Z
  .registers 4
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/u;->v()I
    move-result v0
    const/4 v1, 1
    if-ne v0, v1, :L0
    return v1
  :L0
  .line 2
    sget-boolean v0, Lcn/manstep/phonemirrorBox/p;->j:Z
    if-eqz v0, :L1
    return v1
  :L1
  .line 3
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    const-string v2, "HideSysNavBar"
    invoke-virtual { v0, v2, v1 }, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z
    move-result v0
  .line 4
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v2
    invoke-virtual { v2 }, Lcn/manstep/phonemirrorBox/b0;->k()Z
    move-result v2
    if-nez v0, :L2
    if-eqz v2, :L2
    return v1
  :L2
    const/4 v0, 0
    return v0
.end method

.method private d1()V
  .registers 4
  .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;
    invoke-direct { v0, p0 }, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
    const v1, 2131689700
  .line 2
    invoke-static { p0, v1 }, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    const v1, 2131689802
  .line 3
    invoke-static { p0, v1 }, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    const v1, 2131689625
  .line 4
    invoke-static { p0, v1 }, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;
    move-result-object v1
    const/4 v2, 0
    invoke-virtual { v0, v1, v2 }, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    const v1, 2131689621
  .line 5
    invoke-static { p0, v1 }, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;
    move-result-object v1
    new-instance v2, Lcn/manstep/phonemirrorBox/MainActivity$q;
    invoke-direct { v2, p0 }, Lcn/manstep/phonemirrorBox/MainActivity$q;-><init>(Lcn/manstep/phonemirrorBox/MainActivity;)V
    invoke-virtual { v0, v1, v2 }, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    const/4 v1, 0
  .line 6
    invoke-virtual { v0, v1 }, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;
  .line 7
    invoke-virtual { v0 }, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
    move-result-object v0
  .line 8
    invoke-virtual { v0, v1 }, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V
  .line 9
    invoke-virtual { v0 }, Landroid/app/AlertDialog;->show()V
    const/4 v1, -1
  .line 10
    invoke-virtual { v0, v1 }, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;
    move-result-object v1
    new-instance v2, Lcn/manstep/phonemirrorBox/MainActivity$r;
    invoke-direct { v2, p0, v0 }, Lcn/manstep/phonemirrorBox/MainActivity$r;-><init>(Lcn/manstep/phonemirrorBox/MainActivity;Landroid/app/AlertDialog;)V
    invoke-virtual { v1, v2 }, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    return-void
.end method

.method private e1()V
  .registers 5
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    const/4 v1, 1
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->n1(Z)V
  .line 3
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->a1()V
  :L0
  .line 4
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    invoke-static { v1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    const-string v3, "WirelessConnectMode"
    invoke-virtual { v0, v3, v2 }, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V
  .line 5
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/MainActivity;->h()V
  .line 6
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->N:Z
    return-void
.end method

.method private f1(Landroidx/fragment/app/Fragment;)V
  .registers 3
    if-eqz p1, :L0
  .line 1
    invoke-virtual { p1 }, Landroidx/fragment/app/Fragment;->z0()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->J:Landroidx/fragment/app/n;
    invoke-virtual { v0 }, Landroidx/fragment/app/n;->l()Landroidx/fragment/app/w;
    move-result-object v0
  .line 3
    invoke-virtual { v0, p1 }, Landroidx/fragment/app/w;->o(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;
  .line 4
    invoke-virtual { v0 }, Landroidx/fragment/app/w;->h()I
  :L0
    return-void
.end method

.method private g1()V
  .registers 5
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 23
    if-lt v0, v1, :L5
  .line 2
    invoke-virtual { p0 }, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;
    move-result-object v0
    invoke-static/range { v0 .. v0 }, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;
    move-result-object v0
    invoke-static { v0 }, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z
    move-result v0
    if-eqz v0, :L0
  .line 3
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/MainActivity;->h1()V
    return-void
  :L0
  .line 4
    invoke-virtual { p0 }, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    const v1, 2131034124
    invoke-virtual { v0, v1 }, Landroid/content/res/Resources;->getBoolean(I)Z
    move-result v0
    if-nez v0, :L2
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    invoke-virtual { p0 }, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;
    move-result-object v1
    const v2, 2131034136
    invoke-virtual { v1, v2 }, Landroid/content/res/Resources;->getBoolean(I)Z
    move-result v1
    const-string v2, "ShowFloatBall"
    invoke-virtual { v0, v2, v1 }, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z
    move-result v0
    if-eqz v0, :L1
    goto :L2
  :L1
  .line 5
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/MainActivity;->h1()V
    goto :L5
  :L2
    const-string v0, "com.android.settings"
    const-string v1, "com.android.settings.Settings$AppDrawOverlaySettingsActivity"
  .line 6
    invoke-static { p0, v0, v1 }, Lcn/manstep/phonemirrorBox/util/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    move-result v0
    const v1, 2131689564
    if-eqz v0, :L3
  .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->J:Landroidx/fragment/app/n;
    new-instance v2, Lcn/manstep/phonemirrorBox/MainActivity$i;
    invoke-direct { v2, p0 }, Lcn/manstep/phonemirrorBox/MainActivity$i;-><init>(Lcn/manstep/phonemirrorBox/MainActivity;)V
    new-instance v3, Lcn/manstep/phonemirrorBox/MainActivity$j;
    invoke-direct { v3, p0 }, Lcn/manstep/phonemirrorBox/MainActivity$j;-><init>(Lcn/manstep/phonemirrorBox/MainActivity;)V
    invoke-static { v0, v1, v2, v3 }, Lcn/manstep/phonemirrorBox/k0/a;->L2(Landroidx/fragment/app/n;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    goto :L5
  :L3
    const-string v0, "com.huawei.security.privilegemanager"
    const-string v2, "com.huawei.security.enhanced.permission.ui.activity.MainActivity"
  .line 8
    invoke-static { p0, v0, v2 }, Lcn/manstep/phonemirrorBox/util/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :L4
  .line 9
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->J:Landroidx/fragment/app/n;
    new-instance v2, Lcn/manstep/phonemirrorBox/MainActivity$l;
    invoke-direct { v2, p0 }, Lcn/manstep/phonemirrorBox/MainActivity$l;-><init>(Lcn/manstep/phonemirrorBox/MainActivity;)V
    new-instance v3, Lcn/manstep/phonemirrorBox/MainActivity$m;
    invoke-direct { v3, p0 }, Lcn/manstep/phonemirrorBox/MainActivity$m;-><init>(Lcn/manstep/phonemirrorBox/MainActivity;)V
    invoke-static { v0, v1, v2, v3 }, Lcn/manstep/phonemirrorBox/k0/a;->L2(Landroidx/fragment/app/n;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    goto :L5
  :L4
    const-string v0, "MainActivity"
    const-string v1, "requestCanDrawOverlaysPermission: Settings$AppDrawOverlaySettingsActivity does not exist."
  .line 10
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
  .line 11
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/MainActivity;->h1()V
  :L5
    return-void
.end method

.method private h1()V
  .registers 6
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    const-string v1, "ShowFloatBall"
    const/4 v2, 0
    invoke-virtual { v0, v1, v2 }, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z
    move-result v0
    if-eqz v0, :L0
    const-string v0, "MainActivity"
    const-string v1, "requestPermission: start FloatWindowService"
  .line 2
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 3
    new-instance v0, Landroid/content/Intent;
    invoke-virtual { p0 }, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;
    move-result-object v1
    invoke-static/range { v1 .. v1 }, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;
    move-result-object v1
    const-class v3, Lcn/manstep/phonemirrorBox/FloatWindowService;
    invoke-direct { v0, v1, v3 }, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    invoke-virtual { p0, v0 }, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
  :L0
  .line 4
    invoke-virtual { p0 }, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    const v1, 2131034120
    invoke-virtual { v0, v1 }, Landroid/content/res/Resources;->getBoolean(I)Z
    move-result v0
    const/16 v1, 23
    const-string v3, "android.permission.RECORD_AUDIO"
    if-eqz v0, :L2
  .line 5
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z
    move-result v0
    if-eqz v0, :L6
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    const-string v4, "PERMISSION"
    invoke-virtual { v0, v4, v2 }, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z
    move-result v0
    if-nez v0, :L6
  .line 6
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    invoke-virtual { v0, v4, v2 }, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V
  .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt v0, v1, :L6
  .line 8
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
  .line 9
    invoke-static { p0, v3 }, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I
    move-result v1
    if-eqz v1, :L1
  .line 10
    invoke-interface { v0, v3 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  :L1
  .line 11
    invoke-interface { v0 }, Ljava/util/List;->size()I
    move-result v1
    if-lez v1, :L6
    const v1, 2131886087
    const-string v2, "use_permission_tips"
  .line 12
    invoke-static { p0, v2, v1 }, Lcn/manstep/phonemirrorBox/util/n;->t(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    move-result-object v1
  .line 13
    invoke-virtual { p0 }, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;
    move-result-object v2
    new-instance v3, Lcn/manstep/phonemirrorBox/MainActivity$n;
    invoke-direct { v3, p0, v0 }, Lcn/manstep/phonemirrorBox/MainActivity$n;-><init>(Lcn/manstep/phonemirrorBox/MainActivity;Ljava/util/List;)V
    new-instance v0, Lcn/manstep/phonemirrorBox/MainActivity$o;
    invoke-direct { v0, p0 }, Lcn/manstep/phonemirrorBox/MainActivity$o;-><init>(Lcn/manstep/phonemirrorBox/MainActivity;)V
    invoke-static { v2, v1, v3, v0 }, Lcn/manstep/phonemirrorBox/k0/a;->J2(Landroidx/fragment/app/n;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    goto :L6
  :L2
  .line 14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt v0, v1, :L6
  .line 15
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
  .line 16
    invoke-static { p0, v3 }, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I
    move-result v1
    if-eqz v1, :L3
  .line 17
    invoke-interface { v0, v3 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  :L3
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"
  .line 18
    invoke-static { p0, v1 }, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I
    move-result v3
    if-eqz v3, :L4
  .line 19
    invoke-interface { v0, v1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  :L4
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"
  .line 20
    invoke-static { p0, v1 }, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I
    move-result v3
    if-eqz v3, :L5
  .line 21
    invoke-interface { v0, v1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  :L5
  .line 22
    invoke-interface { v0 }, Ljava/util/List;->size()I
    move-result v1
    if-lez v1, :L6
    new-array v1, v2, [Ljava/lang/String;
  .line 23
    invoke-interface { v0, v1 }, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    move-result-object v0
    check-cast v0, [Ljava/lang/String;
  .line 24
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v1
    const-string v2, "showRequestPermission"
    const/4 v3, 1
    invoke-virtual { v1, v2, v3 }, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z
    move-result v1
    if-eqz v1, :L6
  .line 25
    iget-boolean v1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->S:Z
    xor-int/2addr v1, v3
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->S:Z
    const/16 v1, 1000
  .line 26
    invoke-static { p0, v0, v1 }, Landroidx/core/app/a;->m(Landroid/app/Activity;[Ljava/lang/String;I)V
  :L6
    return-void
.end method

.method private init()V
  .registers 6
  .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->X:Z
    if-nez v0, :L2
    const/4 v0, 1
  .line 2
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->X:Z
    const v0, 2131296824
  .line 3
    invoke-virtual { p0, v0 }, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/view/ViewStub;
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Landroid/view/ViewStub;->setVisibility(I)V
  .line 4
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/MainActivity;->P0()V
  .line 5
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    const-string v2, "ShowFloatBall"
    invoke-virtual { v0, v2, v1 }, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z
    move-result v0
    if-eqz v0, :L0
  .line 6
    new-instance v0, Landroid/content/Intent;
    invoke-virtual { p0 }, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;
    move-result-object v1
    invoke-static/range { v1 .. v1 }, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;
    move-result-object v1
    const-class v2, Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;
    invoke-direct { v0, v1, v2 }, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    invoke-virtual { p0, v0 }, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
  :L0
  .line 7
    new-instance v0, Landroid/os/Handler;
    invoke-direct { v0 }, Landroid/os/Handler;-><init>()V
    new-instance v1, Lcn/manstep/phonemirrorBox/MainActivity$b;
    invoke-direct { v1, p0 }, Lcn/manstep/phonemirrorBox/MainActivity$b;-><init>(Lcn/manstep/phonemirrorBox/MainActivity;)V
    const-wide/16 v2, 500
    invoke-virtual { v0, v1, v2, v3 }, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
  .line 8
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/MainActivity;->Z0()V
  .line 9
    invoke-static { }, Lcn/manstep/phonemirrorBox/util/j;->c()Lcn/manstep/phonemirrorBox/util/j;
    move-result-object v0
    const-wide/16 v1, 50
    new-instance v3, Lcn/manstep/phonemirrorBox/MainActivity$c;
    invoke-direct { v3, p0 }, Lcn/manstep/phonemirrorBox/MainActivity$c;-><init>(Lcn/manstep/phonemirrorBox/MainActivity;)V
    const-string v4, "initSettingsFragment"
    invoke-virtual { v0, v4, v1, v2, v3 }, Lcn/manstep/phonemirrorBox/util/j;->e(Ljava/lang/String;JLjava/lang/Runnable;)Lcn/manstep/phonemirrorBox/util/j;
  .line 10
    new-instance v0, Lcn/manstep/phonemirrorBox/MainActivity$d;
    invoke-direct { v0, p0 }, Lcn/manstep/phonemirrorBox/MainActivity$d;-><init>(Lcn/manstep/phonemirrorBox/MainActivity;)V
    const-wide/16 v1, 800
    invoke-direct { p0, v0, v1, v2 }, Lcn/manstep/phonemirrorBox/MainActivity;->R0(Ljava/lang/Runnable;J)V
  .line 11
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/a;->a()V
  .line 12
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->G:Lcn/manstep/phonemirrorBox/p0/c;
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/a;->B(Lcn/manstep/phonemirrorBox/a$a;)V
  .line 13
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;
    invoke-virtual { v0, p0 }, Lcn/manstep/phonemirrorBox/a;->A(Lcn/manstep/phonemirrorBox/a$b;)V
    const v0, 2131296258
  .line 14
    invoke-virtual { p0, v0 }, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->D:Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;
    const v0, 2131296257
  .line 15
    invoke-virtual { p0, v0 }, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->E:Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;
  .line 16
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/MainActivity;->J0()V
  .line 17
    new-instance v0, Lcn/manstep/phonemirrorBox/util/t;
    invoke-direct { v0, p0 }, Lcn/manstep/phonemirrorBox/util/t;-><init>(Landroid/content/Context;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->M:Lcn/manstep/phonemirrorBox/util/t;
  .line 18
    invoke-virtual { v0, p0 }, Lcn/manstep/phonemirrorBox/util/t;->b(Lcn/manstep/phonemirrorBox/util/t$a;)V
  .line 19
    invoke-virtual { p0 }, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    invoke-virtual { p0 }, Landroid/app/Activity;->getPackageName()Ljava/lang/String;
    move-result-object v1
    const-string v2, "editText"
    const-string v3, "id"
    invoke-virtual { v0, v2, v3, v1 }, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    move-result v0
    if-eqz v0, :L1
    const v0, 2131296477
  .line 20
    invoke-virtual { p0, v0 }, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/TextView;
    if-eqz v0, :L1
  .line 21
    sget-object v1, Lcn/manstep/phonemirrorBox/p;->a:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  :L1
  .line 22
    invoke-virtual { p0 }, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    invoke-virtual { p0 }, Landroid/app/Activity;->getPackageName()Ljava/lang/String;
    move-result-object v1
    const-string v2, "boxintro"
    invoke-virtual { v0, v2, v3, v1 }, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    move-result v0
    if-eqz v0, :L2
  .line 23
    invoke-virtual { p0, v0 }, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/TextView;
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->z:Landroid/widget/TextView;
    if-eqz v0, :L2
    const v1, 2131689478
  .line 24
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setText(I)V
  :L2
    return-void
.end method

.method private j1(I)V
  .registers 5
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    const-string v1, "NightMode"
    const/4 v2, 2
    invoke-virtual { v0, v1, v2 }, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I
    move-result v0
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z
    move-result v1
    if-eqz v1, :L1
    if-ne v0, v2, :L1
    and-int/lit8 p1, p1, 48
  .line 3
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "setDayNightMode: uiMode="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v1, "MainActivity"
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    const/16 v0, 32
    if-ne p1, v0, :L0
    const/16 p1, 16
  .line 4
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->L(I)V
    goto :L1
  :L0
    const/16 p1, 17
  .line 5
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->L(I)V
  :L1
    return-void
.end method

.method private k1(Z)V
  .registers 4
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "MainActivity,setFullScreen: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;
    if-eqz v0, :L0
    invoke-virtual { v0, p1 }, Lcn/manstep/phonemirrorBox/a;->C(Z)Z
    move-result v0
    if-nez v0, :L0
    return-void
  :L0
    if-eqz p1, :L1
  .line 3
    sget-boolean v0, Lcn/manstep/phonemirrorBox/MainActivity;->b0:Z
    if-nez v0, :L1
    return-void
  :L1
  .line 4
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/u;->X()Z
    move-result v0
    if-eqz v0, :L2
  .line 5
    invoke-virtual { p0 }, Landroid/app/Activity;->getWindow()Landroid/view/Window;
    move-result-object p1
    invoke-virtual { p1 }, Landroid/view/Window;->getDecorView()Landroid/view/View;
    move-result-object p1
    const/4 v0, 0
  .line 6
    invoke-virtual { p1, v0 }, Landroid/view/View;->setSystemUiVisibility(I)V
    return-void
  :L2
  .line 7
    sget v0, Lcn/manstep/phonemirrorBox/p;->l:I
    sget v1, Lcn/manstep/phonemirrorBox/p;->k:I
    if-le v0, v1, :L3
  .line 8
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "setFullScreen: exitFullScreen "
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget v0, Lcn/manstep/phonemirrorBox/p;->k:I
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v0, "x"
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget v0, Lcn/manstep/phonemirrorBox/p;->l:I
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    const-string v0, "MainActivity"
    invoke-static { v0, p1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 9
    invoke-virtual { p0 }, Landroid/app/Activity;->getWindow()Landroid/view/Window;
    move-result-object p1
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/MainActivity;->T0(Landroid/view/Window;)V
    return-void
  :L3
    if-eqz p1, :L4
  .line 10
    invoke-virtual { p0 }, Landroid/app/Activity;->getWindow()Landroid/view/Window;
    move-result-object p1
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/MainActivity;->S0(Landroid/view/Window;)V
    goto :L5
  :L4
  .line 11
    invoke-virtual { p0 }, Landroid/app/Activity;->getWindow()Landroid/view/Window;
    move-result-object p1
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/MainActivity;->T0(Landroid/view/Window;)V
  :L5
    return-void
.end method

.method static synthetic n0(Lcn/manstep/phonemirrorBox/MainActivity;IZ)V
  .registers 3
  .line 1
    invoke-direct { p0, p1, p2 }, Lcn/manstep/phonemirrorBox/MainActivity;->L0(IZ)V
    return-void
.end method

.method private n1(II)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->z:Landroid/widget/TextView;
    if-nez v0, :L0
    return-void
  :L0
  .line 2
    invoke-virtual { v0, p2 }, Landroid/widget/TextView;->setTextColor(I)V
  .line 3
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/MainActivity;->z:Landroid/widget/TextView;
    invoke-virtual { p2, p1 }, Landroid/widget/TextView;->setText(I)V
    return-void
.end method

.method static synthetic o0(Lcn/manstep/phonemirrorBox/MainActivity;)Lcn/manstep/phonemirrorBox/ModeChangeService;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->B:Lcn/manstep/phonemirrorBox/ModeChangeService;
    return-object p0
.end method

.method private o1(Ljava/lang/String;I)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->z:Landroid/widget/TextView;
    if-nez v0, :L0
    return-void
  :L0
  .line 2
    invoke-virtual { v0, p2 }, Landroid/widget/TextView;->setTextColor(I)V
  .line 3
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/MainActivity;->z:Landroid/widget/TextView;
    invoke-virtual { p2, p1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    return-void
.end method

.method static synthetic p0(Lcn/manstep/phonemirrorBox/MainActivity;)Z
  .registers 1
  .line 1
    iget-boolean p0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->W:Z
    return p0
.end method

.method private p1()V
  .registers 1
    return-void
.end method

.method static synthetic q0(Lcn/manstep/phonemirrorBox/MainActivity;Z)Z
  .registers 2
  .line 1
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->W:Z
    return p1
.end method

.method private q1(Landroid/view/MotionEvent;)Z
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->M:Lcn/manstep/phonemirrorBox/util/t;
    if-nez v0, :L0
    const/4 p1, 0
    return p1
  :L0
  .line 2
    invoke-virtual { v0, p1 }, Lcn/manstep/phonemirrorBox/util/t;->c(Landroid/view/MotionEvent;)Z
    move-result p1
    return p1
.end method

.method static synthetic r0(Lcn/manstep/phonemirrorBox/MainActivity;Lcn/manstep/phonemirrorBox/ModeChangeService;)Lcn/manstep/phonemirrorBox/ModeChangeService;
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->B:Lcn/manstep/phonemirrorBox/ModeChangeService;
    return-object p1
.end method

.method private r1()V
  .registers 1
    return-void
.end method

.method static synthetic s0(Lcn/manstep/phonemirrorBox/MainActivity;)Landroid/widget/ViewAnimator;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->w:Landroid/widget/ViewAnimator;
    return-object p0
.end method

.method static synthetic t0(Lcn/manstep/phonemirrorBox/MainActivity;)Z
  .registers 1
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/MainActivity;->b1()Z
    move-result p0
    return p0
.end method

.method static synthetic u0(Lcn/manstep/phonemirrorBox/MainActivity;)[I
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->Y:[I
    return-object p0
.end method

.method static synthetic v0(Lcn/manstep/phonemirrorBox/MainActivity;)V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/MainActivity;->g1()V
    return-void
.end method

.method static synthetic w0(Lcn/manstep/phonemirrorBox/MainActivity;)V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/MainActivity;->h1()V
    return-void
.end method

.method static synthetic x0(Lcn/manstep/phonemirrorBox/MainActivity;)Lcn/manstep/phonemirrorBox/p0/c;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->G:Lcn/manstep/phonemirrorBox/p0/c;
    return-object p0
.end method

.method static synthetic y0(Lcn/manstep/phonemirrorBox/MainActivity;)V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/MainActivity;->M0()V
    return-void
.end method

.method static synthetic z0(Lcn/manstep/phonemirrorBox/MainActivity;)Landroidx/fragment/app/n;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->J:Landroidx/fragment/app/n;
    return-object p0
.end method

.method public A(Z)V
  .registers 4
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "MainActivity,onNoticeBoxWifiConnStatus: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;
    invoke-virtual { v0, p1 }, Lcn/manstep/phonemirrorBox/a;->l(Z)V
    return-void
.end method

.method public B()V
  .registers 3
    const/4 v0, 1
  .line 1
    invoke-direct { p0, v0 }, Lcn/manstep/phonemirrorBox/MainActivity;->K0(Z)V
    const v0, 2131689608
    const v1, -16711936
  .line 2
    invoke-direct { p0, v0, v1 }, Lcn/manstep/phonemirrorBox/MainActivity;->n1(II)V
    return-void
.end method

.method public C()V
  .registers 3
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->u()V
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/a;->e()V
    const v0, 2131689478
    const/4 v1, -1
  .line 3
    invoke-direct { p0, v0, v1 }, Lcn/manstep/phonemirrorBox/MainActivity;->n1(II)V
    const-string v0, ""
  .line 4
    invoke-virtual { p0, v0 }, Lcn/manstep/phonemirrorBox/MainActivity;->e(Ljava/lang/String;)V
  .line 5
    invoke-static { }, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->getInstance()Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->release()V
  .line 6
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/u;->M()Z
    move-result v0
    if-eqz v0, :L0
  .line 7
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->T:Z
    if-eqz v0, :L0
  .line 8
    invoke-static { }, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/bluetooth/BluetoothAdapter;->enable()Z
    const-string v0, "MainActivity"
    const-string v1, "onNoticeBoxPlugIn: Bluetooth enable"
  .line 9
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/util/s;->p(Ljava/lang/String;Ljava/lang/String;)V
    const/4 v0, 0
  .line 10
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->T:Z
  :L0
  .line 11
    invoke-static { }, Lcn/manstep/phonemirrorBox/util/r;->a()Lcn/manstep/phonemirrorBox/util/r;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/util/r;->e()V
    return-void
.end method

.method public D()V
  .registers 7
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z
    move-result v0
    if-eqz v0, :L10
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->N:Z
    if-eqz v0, :L0
    goto/16 :L10
  :L0
  .line 2
    invoke-static { }, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/Runtime;->gc()V
  .line 3
    invoke-static { }, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->getInstance()Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->release()V
  .line 4
    invoke-static { }, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;
    move-result-object v0
    invoke-virtual { v0, p0 }, Lcn/manstep/phonemirrorBox/u0/c;->w(Landroid/content/Context;)Z
  .line 5
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "onNoticePhonePlug: bBtEnable="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->T:Z
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v1, "MainActivity"
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 6
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/u;->M()Z
    move-result v0
    const/4 v2, 0
    if-eqz v0, :L1
  .line 7
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->T:Z
    if-eqz v0, :L1
  .line 8
    invoke-static { }, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/bluetooth/BluetoothAdapter;->enable()Z
    const-string v0, "onNoticePhonePlug: Bluetooth enable"
  .line 9
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
  .line 10
    iput-boolean v2, p0, Lcn/manstep/phonemirrorBox/MainActivity;->T:Z
  :L1
    const-string v0, "window"
  .line 11
    invoke-virtual { p0, v0 }, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/view/WindowManager;
  .line 12
    new-instance v1, Landroid/util/DisplayMetrics;
    invoke-direct { v1 }, Landroid/util/DisplayMetrics;-><init>()V
  .line 13
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v4, 17
    if-lt v3, v4, :L2
  .line 14
    invoke-interface { v0 }, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
    move-result-object v3
    invoke-virtual { v3, v1 }, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V
    goto :L3
  :L2
  .line 15
    invoke-interface { v0 }, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
    move-result-object v3
    invoke-virtual { v3, v1 }, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V
  :L3
  .line 16
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I
    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I
    invoke-static { v3, v4 }, Lcn/manstep/phonemirrorBox/p;->f(II)V
  .line 17
    invoke-interface { v0 }, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
    move-result-object v0
    invoke-virtual { v0, v1 }, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V
  .line 18
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I
    sput v0, Lcn/manstep/phonemirrorBox/p;->n:I
  .line 19
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I
    sput v0, Lcn/manstep/phonemirrorBox/p;->o:I
  .line 20
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->E()Z
    move-result v0
    if-eqz v0, :L4
  .line 21
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->L:Z
    if-eqz v0, :L4
  .line 22
    iput-boolean v2, p0, Lcn/manstep/phonemirrorBox/MainActivity;->L:Z
  .line 23
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/MainActivity;->p1()V
  :L4
  .line 24
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/k;->j:Z
    if-eqz v0, :L5
  .line 25
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/k;->recreate()V
  :L5
  .line 26
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->h()Z
    move-result v0
    if-eqz v0, :L6
  .line 27
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v1
    const-string v3, "MicType"
    invoke-virtual { v1, v3, v2 }, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I
    move-result v1
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/a;->h(I)V
  :L6
  .line 28
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/a;->q()V
  .line 29
    invoke-direct { p0, v2 }, Lcn/manstep/phonemirrorBox/MainActivity;->K0(Z)V
    const/4 v0, 0
  .line 30
    invoke-virtual { p0 }, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;
    move-result-object v1
    invoke-virtual { p0 }, Landroid/app/Activity;->getPackageName()Ljava/lang/String;
    move-result-object v3
    const-string v4, "tvNoticePlug"
    const-string v5, "id"
    invoke-virtual { v1, v4, v5, v3 }, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    move-result v1
    if-eqz v1, :L7
  .line 31
    invoke-virtual { p0, v1 }, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/TextView;
  :L7
    if-eqz v0, :L10
  .line 32
    iget v1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->v:I
    const v3, 2131689670
    const/4 v4, 1
    if-eq v1, v4, :L9
    const/4 v5, 3
    if-eq v1, v5, :L8
    const v1, 2131689886
  .line 33
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setText(I)V
    goto :L10
  :L8
  .line 34
    invoke-virtual { p0 }, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;
    move-result-object v1
    invoke-virtual { v1, v3 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v1
    new-array v3, v4, [Ljava/lang/Object;
    const-string v4, "Android Auto"
    aput-object v4, v3, v2
    invoke-static { v1, v3 }, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    goto :L10
  :L9
  .line 35
    invoke-virtual { p0 }, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;
    move-result-object v1
    invoke-virtual { v1, v3 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v1
    new-array v3, v4, [Ljava/lang/Object;
    const-string v4, "CarPlay"
    aput-object v4, v3, v2
    invoke-static { v1, v3 }, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  :L10
    return-void
.end method

.method public F()V
  .registers 3
    const/4 v0, 1
  .line 1
    invoke-direct { p0, v0 }, Lcn/manstep/phonemirrorBox/MainActivity;->K0(Z)V
    const v0, 2131690012
    const/16 v1, -256
  .line 2
    invoke-direct { p0, v0, v1 }, Lcn/manstep/phonemirrorBox/MainActivity;->n1(II)V
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/a;->p()V
    return-void
.end method

.method public G()V
  .registers 1
    return-void
.end method

.method public H(Z)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;
    invoke-virtual { v0, p1 }, Lcn/manstep/phonemirrorBox/a;->d(Z)V
    return-void
.end method

.method public I()V
  .registers 3
    const/4 v0, 1
  .line 1
    invoke-direct { p0, v0 }, Lcn/manstep/phonemirrorBox/MainActivity;->K0(Z)V
    const v0, 2131690010
    const v1, -16711936
  .line 2
    invoke-direct { p0, v0, v1 }, Lcn/manstep/phonemirrorBox/MainActivity;->n1(II)V
    return-void
.end method

.method public J(Z)V
  .registers 5
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "onNoticeWifiTransChanged: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v2, "MainActivity"
    invoke-static { v2, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    if-eqz p1, :L0
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;
    move-result-object v1
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v2, v0 }, Lcn/manstep/phonemirrorBox/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V
  :L0
    const v0, 2131296916
  .line 3
    invoke-virtual { p0, v0 }, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;
    move-result-object v1
    if-eqz v1, :L3
  .line 4
    invoke-virtual { p0, v0 }, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;
    move-result-object v0
    if-eqz p1, :L1
    const/16 p1, 8
    goto :L2
  :L1
    const/4 p1, 0
  :L2
    invoke-virtual { v0, p1 }, Landroid/view/View;->setVisibility(I)V
  :L3
    return-void
.end method

.method public K()V
  .registers 6
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "MainActivity,onSettingsPageBackFirstPage: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->w:Landroid/widget/ViewAnimator;
    invoke-virtual { v1 }, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    invoke-static { }, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/Runtime;->gc()V
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->I:Lcn/manstep/phonemirrorBox/z;
    invoke-virtual { p0, v0 }, Lcn/manstep/phonemirrorBox/MainActivity;->f(Landroidx/fragment/app/Fragment;)V
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;
    const/4 v1, 1
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/a;->x(Z)V
  .line 5
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/c;->n()Lcn/manstep/phonemirrorBox/f0/c;
    move-result-object v0
    invoke-virtual { p0 }, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;
    move-result-object v2
    invoke-static/range { v2 .. v2 }, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;
    move-result-object v2
    invoke-virtual { v0, v2 }, Lcn/manstep/phonemirrorBox/f0/c;->p(Landroid/content/Context;)V
  .line 6
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/b;->j()Lcn/manstep/phonemirrorBox/f0/b;
    move-result-object v0
    invoke-virtual { p0 }, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;
    move-result-object v2
    invoke-static/range { v2 .. v2 }, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;
    move-result-object v2
    invoke-virtual { v0, v2 }, Lcn/manstep/phonemirrorBox/f0/b;->l(Landroid/content/Context;)V
  .line 7
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/e;->j()Lcn/manstep/phonemirrorBox/f0/e;
    move-result-object v0
    invoke-virtual { p0 }, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;
    move-result-object v2
    invoke-static/range { v2 .. v2 }, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;
    move-result-object v2
    invoke-virtual { v0, v2 }, Lcn/manstep/phonemirrorBox/f0/e;->l(Landroid/content/Context;)V
  .line 8
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/g;->j()Lcn/manstep/phonemirrorBox/f0/g;
    move-result-object v0
    invoke-virtual { p0 }, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;
    move-result-object v2
    invoke-static/range { v2 .. v2 }, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;
    move-result-object v2
    invoke-virtual { v0, v2 }, Lcn/manstep/phonemirrorBox/f0/g;->l(Landroid/content/Context;)V
  .line 9
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/f;->j()Lcn/manstep/phonemirrorBox/f0/f;
    move-result-object v0
    invoke-virtual { p0 }, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;
    move-result-object v2
    invoke-static/range { v2 .. v2 }, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;
    move-result-object v2
    invoke-virtual { v0, v2 }, Lcn/manstep/phonemirrorBox/f0/f;->l(Landroid/content/Context;)V
  .line 10
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/MainActivity;->G()V
  .line 11
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->C()Z
    move-result v0
    if-eqz v0, :L0
  .line 12
    new-instance v0, Landroid/os/Handler;
    invoke-direct { v0 }, Landroid/os/Handler;-><init>()V
    new-instance v2, Lcn/manstep/phonemirrorBox/MainActivity$v;
    invoke-direct { v2, p0 }, Lcn/manstep/phonemirrorBox/MainActivity$v;-><init>(Lcn/manstep/phonemirrorBox/MainActivity;)V
    const-wide/16 v3, 500
    invoke-virtual { v0, v2, v3, v4 }, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    goto :L1
  :L0
  .line 13
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z
    move-result v0
    if-eqz v0, :L1
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z
    move-result v0
    if-nez v0, :L1
    const-string v0, "MainActivity"
    const-string v2, "onSettingsPageBackFirstPage: send_g_open_async"
  .line 14
    invoke-static { v0, v2 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 15
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->Y0()V
  :L1
  .line 16
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->O:Z
    if-eqz v0, :L2
  .line 17
    invoke-direct { p0, v1 }, Lcn/manstep/phonemirrorBox/MainActivity;->k1(Z)V
  :L2
    return-void
.end method

.method public U0()V
  .registers 3
  .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->H:Z
    if-eqz v0, :L0
    return-void
  :L0
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->I:Lcn/manstep/phonemirrorBox/z;
    if-nez v0, :L1
    return-void
  :L1
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/a;->x(Z)V
  .line 4
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->O:Z
    if-eqz v0, :L2
    const/4 v0, 1
    const/4 v1, 2
  .line 5
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
  :L2
    const/4 v0, 5
  .line 6
    invoke-virtual { p0, v0 }, Lcn/manstep/phonemirrorBox/MainActivity;->c1(I)V
  .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->G:Lcn/manstep/phonemirrorBox/p0/c;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/p0/c;->h()V
    return-void
.end method

.method public a()V
  .registers 2
    const/4 v0, 0
  .line 1
    invoke-virtual { p0, v0 }, Landroid/app/Activity;->moveTaskToBack(Z)Z
    return-void
.end method

.method public b()V
  .registers 3
    const-string v0, "Action"
    const-string v1, "OnRestart"
  .line 1
    invoke-virtual { p0, v0, v1 }, Lcn/manstep/phonemirrorBox/MainActivity;->i1(Ljava/lang/String;Ljava/lang/String;)V
    return-void
.end method

.method public c()V
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/a;->w()V
    return-void
.end method

.method public c1(I)V
  .catch Ljava/lang/Exception; { :L5 .. :L8 } :L9
  .registers 7
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->J:Landroidx/fragment/app/n;
    invoke-virtual { v0 }, Landroidx/fragment/app/n;->l()Landroidx/fragment/app/w;
    move-result-object v0
    const v1, 2130772009
    const v2, 2130772010
    const v3, 2130772008
    const v4, 2130772011
  .line 2
    invoke-virtual { v0, v1, v2, v3, v4 }, Landroidx/fragment/app/w;->r(IIII)Landroidx/fragment/app/w;
    const/4 v1, 5
    if-ne p1, v1, :L1
  .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->I:Lcn/manstep/phonemirrorBox/z;
    if-nez p1, :L0
  .line 4
    new-instance p1, Lcn/manstep/phonemirrorBox/z;
    invoke-direct { p1 }, Lcn/manstep/phonemirrorBox/z;-><init>()V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->I:Lcn/manstep/phonemirrorBox/z;
  :L0
  .line 5
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->I:Lcn/manstep/phonemirrorBox/z;
    goto :L4
  :L1
    const/16 v1, 11
    if-ne p1, v1, :L3
  .line 6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->K:Lcn/manstep/phonemirrorBox/l0/n;
    if-nez p1, :L2
  .line 7
    new-instance p1, Lcn/manstep/phonemirrorBox/l0/n;
    invoke-direct { p1 }, Lcn/manstep/phonemirrorBox/l0/n;-><init>()V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->K:Lcn/manstep/phonemirrorBox/l0/n;
  :L2
  .line 8
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->K:Lcn/manstep/phonemirrorBox/l0/n;
    goto :L4
  :L3
    const/4 p1, 0
  :L4
    if-eqz p1, :L7
  :L5
  .line 9
    invoke-virtual { p1 }, Landroidx/fragment/app/Fragment;->q0()Z
    move-result v1
    if-eqz v1, :L6
  .line 10
    invoke-virtual { v0, p1 }, Landroidx/fragment/app/w;->t(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;
    goto :L7
  :L6
    const v1, 2131296606
  .line 11
    invoke-virtual { v0, v1, p1 }, Landroidx/fragment/app/w;->b(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;
  :L7
  .line 12
    invoke-virtual { v0 }, Landroidx/fragment/app/w;->i()I
  :L8
    goto :L10
  :L9
    move-exception p1
  .line 13
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "onEnterPage: \n"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->g(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    const-string v0, "MainActivity"
    invoke-static { v0, p1 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
  :L10
    return-void
.end method

.method public d()V
  .registers 1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L2
  .registers 3
  .line 1
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/MainActivity;->q1(Landroid/view/MotionEvent;)Z
    move-result v0
    if-eqz v0, :L0
    const/4 p1, 1
    return p1
  :L0
  .line 2
    invoke-super { p0, p1 }, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    move-result p1
  :L1
    return p1
  :L2
    const/4 p1, 0
    return p1
.end method

.method public e(Ljava/lang/String;)V
  .catch Ljava/lang/Exception; { :L1 .. :L2 } :L4
  .catch Ljava/lang/Error; { :L1 .. :L2 } :L3
  .registers 6
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "MainActivity,onShowBoxVersion: BoxVer = "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, ",APP:"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, "2025.03.19.1126"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v2, ","
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    invoke-static { p1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    if-nez v0, :L0
  .line 3
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    const-string v1, "BoxVersion"
    invoke-virtual { v0, v1, p1 }, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V
  :L0
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/a;->b()Z
    move-result v0
    const/4 v1, 0
    if-nez v0, :L1
  .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;
    invoke-virtual { v0, p1 }, Lcn/manstep/phonemirrorBox/a;->u(Ljava/lang/String;)V
    goto :L11
  :L1
  .line 6
    invoke-static { }, Lcn/manstep/phonemirrorBox/util/JniTools;->check()I
    move-result v0
  :L2
    goto :L6
  :L3
    move-exception v0
    goto :L5
  :L4
    move-exception v0
  :L5
  .line 7
    invoke-virtual { v0 }, Ljava/lang/Throwable;->printStackTrace()V
  .line 8
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "onShowBoxVersion: \n"
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->g(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v2, "MainActivity"
    invoke-static { v2, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    const/4 v0, 0
  :L6
    if-eqz v0, :L10
  .line 9
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "MainActivity,onShowBoxVersion: ret="
    invoke-virtual { p1, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    const/4 p1, 1
    if-eq v0, p1, :L9
    const/4 p1, 2
    if-ne v0, p1, :L7
    goto :L9
  :L7
    const/4 p1, 3
    if-ne v0, p1, :L8
  .line 10
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/MainActivity;->e1()V
    goto :L9
  :L8
  .line 11
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/MainActivity;->e1()V
  :L9
    return-void
  :L10
  .line 12
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/p;->d(Ljava/lang/String;)Z
    move-result v0
    if-nez v0, :L11
  .line 13
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/MainActivity;->e1()V
    return-void
  :L11
  .line 14
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;
    invoke-virtual { v0, p1 }, Lcn/manstep/phonemirrorBox/a;->u(Ljava/lang/String;)V
  .line 15
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->N:Z
  .line 16
    invoke-virtual { p0 }, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    invoke-virtual { p0 }, Landroid/app/Activity;->getPackageName()Ljava/lang/String;
    move-result-object v1
    const-string v2, "BoxVerText"
    const-string v3, "id"
    invoke-virtual { v0, v2, v3, v1 }, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    move-result v0
    if-eqz v0, :L12
  .line 17
    invoke-virtual { p0, v0 }, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/TextView;
    if-eqz v0, :L12
  .line 18
    invoke-virtual { v0, p1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  :L12
  .line 19
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;
    move-result-object p1
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->o()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result p1
    if-nez p1, :L13
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;
    move-result-object p1
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->p()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result p1
    if-nez p1, :L13
  .line 20
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/MainActivity;->M0()V
  :L13
    return-void
.end method

.method public f(Landroidx/fragment/app/Fragment;)V
  .registers 7
    if-eqz p1, :L0
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->J:Landroidx/fragment/app/n;
    invoke-virtual { v0 }, Landroidx/fragment/app/n;->l()Landroidx/fragment/app/w;
    move-result-object v0
    const v1, 2130772008
    const v2, 2130772011
    const v3, 2130772009
    const v4, 2130772010
  .line 2
    invoke-virtual { v0, v1, v2, v3, v4 }, Landroidx/fragment/app/w;->r(IIII)Landroidx/fragment/app/w;
  .line 3
    invoke-virtual { v0, p1 }, Landroidx/fragment/app/w;->n(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;
  .line 4
    invoke-virtual { v0 }, Landroidx/fragment/app/w;->k()V
  :L0
    return-void
.end method

.method public g(I)V
  .registers 5
    const/4 v0, 1
  .line 1
    invoke-direct { p0, v0 }, Lcn/manstep/phonemirrorBox/MainActivity;->K0(Z)V
    const v1, -16711936
    if-nez p1, :L0
    const v0, 2131689488
  .line 2
    invoke-direct { p0, v0, v1 }, Lcn/manstep/phonemirrorBox/MainActivity;->n1(II)V
    goto :L3
  :L0
    const/high16 v2, -1
    if-ne v0, p1, :L1
    const v0, 2131689487
  .line 3
    invoke-direct { p0, v0, v2 }, Lcn/manstep/phonemirrorBox/MainActivity;->n1(II)V
    goto :L3
  :L1
    const/4 v0, 2
    if-ne v0, p1, :L2
    const v0, 2131689485
  .line 4
    invoke-direct { p0, v0, v1 }, Lcn/manstep/phonemirrorBox/MainActivity;->n1(II)V
  .line 5
    sget v0, Lcn/manstep/phonemirrorBox/MainActivity;->a0:I
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->c(I)V
    goto :L3
  :L2
    const/4 v0, 3
    if-ne v0, p1, :L3
    const v0, 2131689484
  .line 6
    invoke-direct { p0, v0, v2 }, Lcn/manstep/phonemirrorBox/MainActivity;->n1(II)V
  :L3
    const/4 v0, 0
  .line 7
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->H:Z
  .line 8
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;
    invoke-virtual { v0, p1 }, Lcn/manstep/phonemirrorBox/a;->i(I)V
  .line 9
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->K:Lcn/manstep/phonemirrorBox/l0/n;
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/MainActivity;->f1(Landroidx/fragment/app/Fragment;)V
    return-void
.end method

.method public h()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/a;->b()Z
    move-result v0
    if-eqz v0, :L0
    const/4 v0, 1
  .line 2
    invoke-direct { p0, v0 }, Lcn/manstep/phonemirrorBox/MainActivity;->K0(Z)V
    const v0, 2131689919
    const/high16 v1, -1
  .line 3
    invoke-direct { p0, v0, v1 }, Lcn/manstep/phonemirrorBox/MainActivity;->n1(II)V
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/a;->k()V
    goto :L1
  :L0
  .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/a;->z()V
  :L1
    return-void
.end method

.method public i()V
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/a;->v()V
  :L0
    return-void
.end method

.method i1(Ljava/lang/String;Ljava/lang/String;)V
  .registers 5
  .line 1
    new-instance v0, Landroid/content/Intent;
    const-string v1, "cn.manstep.phonemirror.MirrorService.INTENT_MSG_IN"
    invoke-direct { v0, v1 }, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
  .line 2
    invoke-virtual { v0, p1, p2 }, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
  .line 3
    invoke-virtual { p0, v0 }, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V
    return-void
.end method

.method public j()V
  .registers 5
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    if-eqz v0, :L0
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->O:Z
    if-eqz v0, :L0
    const/4 v0, 1
    const/16 v1, 25
  .line 2
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
  .line 3
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->b1()Z
  .line 4
    new-instance v0, Landroid/os/Handler;
    invoke-direct { v0 }, Landroid/os/Handler;-><init>()V
    new-instance v1, Lcn/manstep/phonemirrorBox/MainActivity$u;
    invoke-direct { v1, p0 }, Lcn/manstep/phonemirrorBox/MainActivity$u;-><init>(Lcn/manstep/phonemirrorBox/MainActivity;)V
    const-wide/16 v2, 1000
    invoke-virtual { v0, v1, v2, v3 }, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
  :L0
    return-void
.end method

.method public k(I)Z
  .registers 5
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->w:Landroid/widget/ViewAnimator;
    const/4 v1, 1
    if-eqz v0, :L1
    if-ltz p1, :L1
  .line 2
    invoke-virtual { v0 }, Landroid/widget/ViewAnimator;->getChildCount()I
    move-result v0
    if-lt p1, v0, :L0
    goto :L1
  :L0
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->w:Landroid/widget/ViewAnimator;
    invoke-virtual { v0 }, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;
    move-result-object v0
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/MainActivity;->w:Landroid/widget/ViewAnimator;
    invoke-virtual { v2, p1 }, Landroid/widget/ViewAnimator;->getChildAt(I)Landroid/view/View;
    move-result-object p1
    if-eq v0, p1, :L1
    const/4 p1, 0
    return p1
  :L1
    return v1
.end method

.method public l()V
  .registers 4
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "onNoticeBoxDisconnected: bRecreate="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Lcn/manstep/phonemirrorBox/k;->j:Z
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v1, "MainActivity"
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/a;->f()V
    const v0, 2131689478
    const/4 v2, -1
  .line 3
    invoke-direct { p0, v0, v2 }, Lcn/manstep/phonemirrorBox/MainActivity;->n1(II)V
    const-string v0, ""
  .line 4
    invoke-virtual { p0, v0 }, Lcn/manstep/phonemirrorBox/MainActivity;->e(Ljava/lang/String;)V
    const/4 v0, 0
  .line 5
    invoke-virtual { p0, v0 }, Lcn/manstep/phonemirrorBox/MainActivity;->H(Z)V
  .line 6
    invoke-virtual { p0, v0 }, Lcn/manstep/phonemirrorBox/MainActivity;->A(Z)V
  .line 7
    invoke-static { }, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->getInstance()Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;
    move-result-object v2
    invoke-virtual { v2 }, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->release()V
  .line 8
    iget-boolean v2, p0, Lcn/manstep/phonemirrorBox/k;->j:Z
    if-eqz v2, :L0
  .line 9
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/k;->recreate()V
  :L0
  .line 10
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object v2
    invoke-virtual { v2 }, Lcn/manstep/phonemirrorBox/u;->M()Z
    move-result v2
    if-eqz v2, :L1
  .line 11
    iget-boolean v2, p0, Lcn/manstep/phonemirrorBox/MainActivity;->T:Z
    if-eqz v2, :L1
  .line 12
    invoke-static { }, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;
    move-result-object v2
    invoke-virtual { v2 }, Landroid/bluetooth/BluetoothAdapter;->enable()Z
    const-string v2, "onNoticeBoxDisconnected: Bluetooth enable"
  .line 13
    invoke-static { v1, v2 }, Lcn/manstep/phonemirrorBox/util/s;->p(Ljava/lang/String;Ljava/lang/String;)V
  .line 14
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->T:Z
  :L1
  .line 15
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->R:Lcn/manstep/phonemirrorBox/k0/a;
    if-eqz v0, :L2
    invoke-virtual { v0 }, Landroidx/fragment/app/Fragment;->z0()Z
    move-result v0
    if-eqz v0, :L2
  .line 16
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->R:Lcn/manstep/phonemirrorBox/k0/a;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/k0/a;->j2()V
  :L2
  .line 17
    invoke-static { }, Lcn/manstep/phonemirrorBox/util/r;->a()Lcn/manstep/phonemirrorBox/util/r;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/util/r;->e()V
    return-void
.end method

.method public l1(ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Z)V
  .registers 15
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object p3
    if-eqz p7, :L0
    const-string v0, "AppLatestVer"
    goto :L1
  :L0
    const-string v0, "BoxLatestVer"
  :L1
    const-string v1, ""
    invoke-virtual { p3, v0, v1 }, Lcn/manstep/phonemirrorBox/b0;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object p3
  .line 2
    invoke-virtual { p3, p2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p3
    if-eqz p3, :L2
    return-void
  :L2
  .line 3
    iget-object p3, p0, Lcn/manstep/phonemirrorBox/MainActivity;->R:Lcn/manstep/phonemirrorBox/k0/a;
    if-eqz p3, :L3
    invoke-virtual { p3 }, Landroidx/fragment/app/Fragment;->z0()Z
    move-result p3
    if-eqz p3, :L3
    return-void
  :L3
  .line 4
    sget-boolean p3, Lcn/manstep/phonemirrorBox/BoxInterface/b;->h:Z
    if-eqz p3, :L4
    return-void
  :L4
  .line 5
    invoke-virtual { p0 }, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;
    move-result-object p3
    new-instance v6, Lcn/manstep/phonemirrorBox/MainActivity$s;
    move-object v0, v6
    move-object v1, p0
    move-wide v2, p4
    move v4, p7
    move-object v5, p6
    invoke-direct/range { v0 .. v5 }, Lcn/manstep/phonemirrorBox/MainActivity$s;-><init>(Lcn/manstep/phonemirrorBox/MainActivity;JZLjava/lang/String;)V
    if-eqz p1, :L5
    const/4 p1, 0
    goto :L6
  :L5
    new-instance p1, Lcn/manstep/phonemirrorBox/MainActivity$t;
    invoke-direct { p1, p0, p7, p2 }, Lcn/manstep/phonemirrorBox/MainActivity$t;-><init>(Lcn/manstep/phonemirrorBox/MainActivity;ZLjava/lang/String;)V
  :L6
    invoke-static { p3, v6, p1 }, Lcn/manstep/phonemirrorBox/k0/a;->K2(Landroidx/fragment/app/n;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Lcn/manstep/phonemirrorBox/k0/a;
    move-result-object p1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->R:Lcn/manstep/phonemirrorBox/k0/a;
    return-void
.end method

.method public m(Z)V
  .registers 3
    if-eqz p1, :L0
    const p1, 2131689733
    const/high16 v0, -1
  .line 1
    invoke-direct { p0, p1, v0 }, Lcn/manstep/phonemirrorBox/MainActivity;->n1(II)V
    goto :L3
  :L0
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z
    move-result p1
    const/4 v0, -1
    if-eqz p1, :L1
    const p1, 2131689478
  .line 3
    invoke-direct { p0, p1, v0 }, Lcn/manstep/phonemirrorBox/MainActivity;->n1(II)V
    goto :L2
  :L1
    const p1, 2131689479
  .line 4
    invoke-direct { p0, p1, v0 }, Lcn/manstep/phonemirrorBox/MainActivity;->n1(II)V
  :L2
    const/4 p1, 1
  .line 5
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/MainActivity;->K0(Z)V
  :L3
    return-void
.end method

.method public m1()V
  .registers 6
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->Q:Lcn/manstep/phonemirrorBox/customview/a;
    if-nez v0, :L0
  .line 2
    new-instance v0, Lcn/manstep/phonemirrorBox/customview/a;
    invoke-virtual { p0 }, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;
    move-result-object v1
    invoke-static/range { v1 .. v1 }, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;
    move-result-object v1
    invoke-direct { v0, v1 }, Lcn/manstep/phonemirrorBox/customview/a;-><init>(Landroid/content/Context;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->Q:Lcn/manstep/phonemirrorBox/customview/a;
  .line 3
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->F:Lcn/manstep/phonemirrorBox/floatwindow/b;
    invoke-virtual { p0 }, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;
    move-result-object v2
    const v3, 2131165332
    invoke-virtual { v2, v3 }, Landroid/content/res/Resources;->getDimension(I)F
    move-result v2
    invoke-virtual { p0 }, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;
    move-result-object v3
    const v4, 2131165331
    invoke-virtual { v3, v4 }, Landroid/content/res/Resources;->getDimension(I)F
    move-result v3
    invoke-virtual { v1, v0, v2, v3 }, Lcn/manstep/phonemirrorBox/floatwindow/b;->b(Landroid/view/View;FF)V
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->Q:Lcn/manstep/phonemirrorBox/customview/a;
    new-instance v1, Lcn/manstep/phonemirrorBox/MainActivity$b0;
    invoke-direct { v1, p0 }, Lcn/manstep/phonemirrorBox/MainActivity$b0;-><init>(Lcn/manstep/phonemirrorBox/MainActivity;)V
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/customview/a;->setCallback(Lcn/manstep/phonemirrorBox/customview/a$g;)V
  :L0
    return-void
.end method

.method public n(Z)V
  .registers 5
    const/4 v0, 1
  .line 1
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->H:Z
    if-eqz p1, :L0
  .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->I:Lcn/manstep/phonemirrorBox/z;
    invoke-virtual { p0, p1 }, Lcn/manstep/phonemirrorBox/MainActivity;->f(Landroidx/fragment/app/Fragment;)V
  :L0
  .line 3
    invoke-direct { p0, v0 }, Lcn/manstep/phonemirrorBox/MainActivity;->K0(Z)V
    const p1, 2131689483
    const/16 v0, -256
  .line 4
    invoke-direct { p0, p1, v0 }, Lcn/manstep/phonemirrorBox/MainActivity;->n1(II)V
  .line 5
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/a;->j()V
  .line 6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->U:Lcn/manstep/phonemirrorBox/util/u;
    new-instance v0, Lcn/manstep/phonemirrorBox/MainActivity$x;
    invoke-direct { v0, p0 }, Lcn/manstep/phonemirrorBox/MainActivity$x;-><init>(Lcn/manstep/phonemirrorBox/MainActivity;)V
    const-wide/16 v1, 800
    invoke-virtual { p1, v0, v1, v2 }, Lcn/manstep/phonemirrorBox/util/u;->b(Ljava/lang/Runnable;J)V
    return-void
.end method

.method public o()V
  .registers 1
  .line 1
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/k;->finish()V
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
  .registers 8
  .line 1
    invoke-super { p0, p1, p2, p3 }, Landroidx/fragment/app/e;->onActivityResult(IILandroid/content/Intent;)V
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "MainActivity,onActivityResult: requestCode="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, ", resultCode="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;
    invoke-virtual { v0, p1, p2, p3 }, Lcn/manstep/phonemirrorBox/a;->c(IILandroid/content/Intent;)Z
    move-result v0
    if-eqz v0, :L0
    return-void
  :L0
    const/16 v0, 69
    const/4 v1, 1
    const/4 v2, 0
    const/4 v3, -1
    if-ne p1, v0, :L3
    const-string p1, "MainActivity,onActivityResult: "
    if-ne p2, v3, :L1
  .line 4
    invoke-static { p3 }, Lcom/yalantis/ucrop/UCrop;->getOutput(Landroid/content/Intent;)Landroid/net/Uri;
    move-result-object p2
  .line 5
    new-instance p3, Ljava/lang/StringBuilder;
    invoke-direct { p3 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p3, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p3, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { p3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p3
    invoke-static { p3 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    if-eqz p2, :L5
  .line 6
    invoke-virtual { p2 }, Landroid/net/Uri;->getPath()Ljava/lang/String;
    move-result-object p2
  .line 7
    new-instance p3, Ljava/lang/StringBuilder;
    invoke-direct { p3 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p3, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p3, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 8
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object p1
    const-string p3, "custom"
    invoke-virtual { p1, p3, p2 }, Lcn/manstep/phonemirrorBox/b0;->z(Ljava/lang/String;Ljava/lang/String;)V
  .line 9
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->t:Z
    goto/16 :L5
  :L1
    const/16 v0, 96
    if-ne p2, v0, :L2
  .line 10
    invoke-static { p3 }, Lcom/yalantis/ucrop/UCrop;->getError(Landroid/content/Intent;)Ljava/lang/Throwable;
    move-result-object p2
  .line 11
    iput-boolean v2, p0, Lcn/manstep/phonemirrorBox/MainActivity;->t:Z
  .line 12
    new-instance p3, Ljava/lang/StringBuilder;
    invoke-direct { p3 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p3, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { p2 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { p3, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    goto/16 :L5
  :L2
    if-nez p2, :L5
  .line 13
    iput-boolean v2, p0, Lcn/manstep/phonemirrorBox/MainActivity;->t:Z
    const-string p1, "MainActivity,onActivityResult: Activity.RESULT_CANCELED"
  .line 14
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    goto/16 :L5
  :L3
    const/16 v0, 100
    if-ne p1, v0, :L4
    if-ne p2, v3, :L5
  .line 15
    new-instance p1, Landroid/graphics/Point;
    invoke-direct { p1 }, Landroid/graphics/Point;-><init>()V
  .line 16
    new-instance p2, Landroid/graphics/Point;
    invoke-direct { p2 }, Landroid/graphics/Point;-><init>()V
  .line 17
    new-instance v0, Landroid/graphics/Point;
    invoke-direct { v0 }, Landroid/graphics/Point;-><init>()V
  .line 18
    invoke-virtual { p0 }, Landroid/app/Activity;->getWindow()Landroid/view/Window;
    move-result-object v1
    invoke-virtual { v1 }, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;
    move-result-object v1
    invoke-interface { v1 }, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
    move-result-object v1
    invoke-virtual { v1, p1, p2 }, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V
  .line 19
    invoke-virtual { p0 }, Landroid/app/Activity;->getWindow()Landroid/view/Window;
    move-result-object v1
    invoke-virtual { v1 }, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;
    move-result-object v1
    invoke-interface { v1 }, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
    move-result-object v1
    invoke-virtual { v1, v0 }, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V
  .line 20
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "MainActivity,onActivityResult: CurrentSizeRange: "
    invoke-virtual { v1, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string p1, ","
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->h(Ljava/lang/String;)V
    const-string p1, "MaxSize"
  .line 21
    invoke-virtual { p3, p1 }, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
    move-result-object p1
    check-cast p1, Lcn/manstep/phonemirrorBox/util/x;
    if-eqz p1, :L5
  .line 22
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->I:Lcn/manstep/phonemirrorBox/z;
    if-eqz p1, :L5
    iget-object p1, p1, Lcn/manstep/phonemirrorBox/z;->y0:Lcn/manstep/phonemirrorBox/x0/k;
    if-eqz p1, :L5
    const-string p1, "ReAddSettingsFragment"
  .line 23
    invoke-virtual { p3, p1, v2 }, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
    move-result p1
    if-eqz p1, :L5
  .line 24
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->J:Landroidx/fragment/app/n;
    invoke-virtual { p1 }, Landroidx/fragment/app/n;->l()Landroidx/fragment/app/w;
    move-result-object p1
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/MainActivity;->I:Lcn/manstep/phonemirrorBox/z;
    invoke-virtual { p1, p2 }, Landroidx/fragment/app/w;->o(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;
    invoke-virtual { p1 }, Landroidx/fragment/app/w;->i()I
    const/4 p1, 0
  .line 25
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->I:Lcn/manstep/phonemirrorBox/z;
  .line 26
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/MainActivity;->a1()V
    goto :L5
  :L4
    if-ne p1, v1, :L5
    if-ne p2, v3, :L5
  .line 27
    invoke-virtual { p3 }, Landroid/content/Intent;->getData()Landroid/net/Uri;
    move-result-object p1
  .line 28
    new-instance p2, Ljava/io/File;
    invoke-virtual { p0 }, Landroid/app/Activity;->getCacheDir()Ljava/io/File;
    move-result-object p3
    const-string v0, "custom.png"
    invoke-direct { p2, p3, v0 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    invoke-static { p2 }, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    move-result-object p2
  .line 29
    invoke-direct { p0, p1, p2 }, Lcn/manstep/phonemirrorBox/MainActivity;->Q0(Landroid/net/Uri;Landroid/net/Uri;)V
  :L5
    return-void
.end method

.method public onBackPressed()V
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->G:Lcn/manstep/phonemirrorBox/p0/c;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/p0/c;->q()V
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
  .registers 9
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "MainActivity,onConfigurationChanged: newConfig.orientation = "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    invoke-super { p0, p1 }, Lcn/manstep/phonemirrorBox/k;->onConfigurationChanged(Landroid/content/res/Configuration;)V
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;
    invoke-virtual { v0, p1 }, Lcn/manstep/phonemirrorBox/a;->m(Landroid/content/res/Configuration;)Z
    move-result v0
    if-eqz v0, :L0
  .line 4
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "MainActivity,onConfigurationChanged: mFirstPageEx= "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    return-void
  :L0
  .line 5
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I
    invoke-direct { p0, v0 }, Lcn/manstep/phonemirrorBox/MainActivity;->j1(I)V
  .line 6
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/e;->C()Z
    move-result v0
    if-eqz v0, :L1
  .line 7
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/MainActivity;->p1()V
  :L1
  .line 8
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I
    const/4 v1, 2
    const/16 v2, 500
    const-string v3, "MainActivity,onConfigurationChanged: "
    const-string v4, " "
    const/4 v5, 1
    if-ne v0, v1, :L4
  .line 9
    iput-boolean v5, p0, Lcn/manstep/phonemirrorBox/MainActivity;->L:Z
  .line 10
    sget v0, Lcn/manstep/phonemirrorBox/p;->k:I
    sget v1, Lcn/manstep/phonemirrorBox/p;->l:I
    if-ge v0, v1, :L2
  .line 11
    sget v0, Lcn/manstep/phonemirrorBox/p;->k:I
  .line 12
    sget v1, Lcn/manstep/phonemirrorBox/p;->l:I
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/p;->f(II)V
  :L2
  .line 13
    sget v0, Lcn/manstep/phonemirrorBox/p;->n:I
    sget v1, Lcn/manstep/phonemirrorBox/p;->o:I
    if-ge v0, v1, :L3
  .line 14
    sget v0, Lcn/manstep/phonemirrorBox/p;->n:I
  .line 15
    sget v1, Lcn/manstep/phonemirrorBox/p;->o:I
    sput v1, Lcn/manstep/phonemirrorBox/p;->n:I
  .line 16
    sput v0, Lcn/manstep/phonemirrorBox/p;->o:I
  :L3
  .line 17
    sget v0, Lcn/manstep/phonemirrorBox/p;->k:I
    sget v1, Lcn/manstep/phonemirrorBox/p;->l:I
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->g(II)V
  .line 18
    invoke-static { v5, v2 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
  .line 19
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->G:Lcn/manstep/phonemirrorBox/p0/c;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/p0/c;->m()Z
    move-result v0
    if-eqz v0, :L8
  .line 20
    invoke-direct { p0, v5 }, Lcn/manstep/phonemirrorBox/MainActivity;->k1(Z)V
    goto/16 :L8
  :L4
    if-ne v0, v5, :L8
  .line 21
    iput-boolean v5, p0, Lcn/manstep/phonemirrorBox/MainActivity;->L:Z
  .line 22
    sget v0, Lcn/manstep/phonemirrorBox/p;->k:I
    sget v1, Lcn/manstep/phonemirrorBox/p;->l:I
    if-le v0, v1, :L5
  .line 23
    sget v0, Lcn/manstep/phonemirrorBox/p;->k:I
  .line 24
    sget v1, Lcn/manstep/phonemirrorBox/p;->l:I
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/p;->f(II)V
  :L5
  .line 25
    sget v0, Lcn/manstep/phonemirrorBox/p;->n:I
    sget v1, Lcn/manstep/phonemirrorBox/p;->o:I
    if-le v0, v1, :L6
  .line 26
    sget v0, Lcn/manstep/phonemirrorBox/p;->n:I
  .line 27
    sget v1, Lcn/manstep/phonemirrorBox/p;->o:I
    sput v1, Lcn/manstep/phonemirrorBox/p;->n:I
  .line 28
    sput v0, Lcn/manstep/phonemirrorBox/p;->o:I
  :L6
  .line 29
    new-instance v0, Landroid/graphics/Point;
    invoke-direct { v0 }, Landroid/graphics/Point;-><init>()V
  .line 30
    new-instance v1, Landroid/graphics/Point;
    invoke-direct { v1 }, Landroid/graphics/Point;-><init>()V
  .line 31
    invoke-virtual { p0 }, Landroid/app/Activity;->getWindow()Landroid/view/Window;
    move-result-object v6
    invoke-virtual { v6 }, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;
    move-result-object v6
    invoke-interface { v6 }, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
    move-result-object v6
    invoke-virtual { v6, v0, v1 }, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V
  .line 32
    iget-boolean v6, p0, Lcn/manstep/phonemirrorBox/k;->b:Z
    if-eqz v6, :L7
  .line 33
    new-instance v6, Ljava/lang/StringBuilder;
    invoke-direct { v6 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v6, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Landroid/graphics/Point;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v6, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v6, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Landroid/graphics/Point;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v6, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v6, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget v0, Lcn/manstep/phonemirrorBox/p;->o:I
    invoke-virtual { v6, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v6 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 34
    iget v0, v1, Landroid/graphics/Point;->y:I
    sget v1, Lcn/manstep/phonemirrorBox/p;->o:I
    if-ge v0, v1, :L7
  .line 35
    sput v0, Lcn/manstep/phonemirrorBox/p;->o:I
  :L7
  .line 36
    sget v0, Lcn/manstep/phonemirrorBox/p;->n:I
    sget v1, Lcn/manstep/phonemirrorBox/p;->o:I
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->g(II)V
  .line 37
    invoke-static { v5, v2 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
    const/4 v0, 0
  .line 38
    invoke-direct { p0, v0 }, Lcn/manstep/phonemirrorBox/MainActivity;->k1(Z)V
  :L8
  .line 39
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/e;->C()Z
    move-result v0
    if-eqz v0, :L9
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/k;->j:Z
    if-eqz v0, :L9
  .line 40
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z
    move-result v0
    if-nez v0, :L9
  .line 41
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/k;->recreate()V
  :L9
  .line 42
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget v1, Lcn/manstep/phonemirrorBox/p;->k:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget v1, Lcn/manstep/phonemirrorBox/p;->l:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    return-void
.end method

.method protected native onCreate(Landroid/os/Bundle;)V
.end method

.method protected onDestroy()V
  .registers 4
    const-string v0, "MainActivity,onDestroy"
  .line 1
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/q;->g()Lcn/manstep/phonemirrorBox/q;
    move-result-object v0
    const/4 v1, 0
    invoke-virtual { v0, p0, v1 }, Lcn/manstep/phonemirrorBox/q;->m(Landroid/app/Activity;Z)V
    const/4 v0, 0
  .line 3
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->J:Landroidx/fragment/app/n;
  .line 4
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->X:Z
  .line 5
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;
    if-eqz v1, :L0
  .line 6
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/a;->y()V
  .line 7
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;
  :L0
  .line 8
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->G:Lcn/manstep/phonemirrorBox/p0/c;
    if-eqz v1, :L1
  .line 9
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/p0/c;->E()V
  :L1
  .line 10
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->w:Landroid/widget/ViewAnimator;
    if-eqz v1, :L2
  .line 11
    invoke-virtual { v1 }, Landroid/widget/ViewAnimator;->removeAllViews()V
  :L2
  .line 12
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->A:Landroid/content/ServiceConnection;
    if-eqz v1, :L3
  .line 13
    invoke-virtual { p0, v1 }, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V
  :L3
  .line 14
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->B:Lcn/manstep/phonemirrorBox/ModeChangeService;
  .line 15
    new-instance v0, Landroid/content/Intent;
    const-class v1, Lcn/manstep/phonemirrorBox/ModeChangeService;
    invoke-direct { v0, p0, v1 }, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    invoke-virtual { p0, v0 }, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z
  .line 16
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/c;->n()Lcn/manstep/phonemirrorBox/f0/c;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/f0/c;->t()V
    const-string v0, "MainActivity,onDestroy: Stop AutoStartService"
  .line 17
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 18
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->I:Lcn/manstep/phonemirrorBox/z;
    if-eqz v0, :L4
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/z;->y0:Lcn/manstep/phonemirrorBox/x0/k;
    if-eqz v0, :L4
  .line 19
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/x0/k;->K0()V
  :L4
  .line 20
    new-instance v0, Landroid/content/Intent;
    const-class v1, Lcn/manstep/phonemirrorBox/AutoStartService;
    invoke-direct { v0, p0, v1 }, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    invoke-virtual { p0, v0 }, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z
  .line 21
    invoke-static { }, Lcn/manstep/phonemirrorBox/f;->e()V
  .line 22
    invoke-static { }, Lcn/manstep/phonemirrorBox/k0/b;->c()Lcn/manstep/phonemirrorBox/k0/b;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/k0/b;->g()V
  .line 23
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/MainActivity;->r1()V
    const-string v0, "Action"
    const-string v1, "onDestroy"
  .line 24
    invoke-virtual { p0, v0, v1 }, Lcn/manstep/phonemirrorBox/MainActivity;->i1(Ljava/lang/String;Ljava/lang/String;)V
  .line 25
    invoke-static { }, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->getInstance()Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->release()V
  .line 26
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/k;->j:Z
    if-nez v0, :L6
  .line 27
    invoke-static { }, Lcn/manstep/phonemirrorBox/floatwindow/e;->g()Lcn/manstep/phonemirrorBox/floatwindow/e;
    move-result-object v0
    invoke-virtual { p0 }, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;
    move-result-object v1
    invoke-static/range { v1 .. v1 }, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;
    move-result-object v1
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/floatwindow/e;->j(Landroid/content/Context;)V
  .line 28
    new-instance v0, Landroid/content/Intent;
    invoke-virtual { p0 }, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;
    move-result-object v1
    invoke-static/range { v1 .. v1 }, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;
    move-result-object v1
    const-class v2, Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;
    invoke-direct { v0, v1, v2 }, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    invoke-virtual { p0, v0 }, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z
  .line 29
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    if-eqz v0, :L5
  .line 30
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->b0()V
  :L5
  .line 31
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/e;->F()V
  .line 32
    invoke-static { }, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/u0/c;->v()V
  :L6
  .line 33
    invoke-static { }, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;
    move-result-object v0
    invoke-virtual { v0, p0 }, Lcn/manstep/phonemirrorBox/u0/c;->A(Landroid/content/Context;)V
  .line 34
    invoke-static { }, Lcn/manstep/phonemirrorBox/e0/b;->a()Lcn/manstep/phonemirrorBox/e0/b;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/e0/b;->b()V
  .line 35
    invoke-super { p0 }, Lcn/manstep/phonemirrorBox/k;->onDestroy()V
    const-string v0, "MainActivity,onDestroy Over"
  .line 36
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
  .registers 8
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "MainActivity,onKeyDown: keyCode="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, " "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Landroid/view/KeyEvent;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->s:Z
    if-nez v0, :L11
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/u;->P()Z
    move-result v0
    if-eqz v0, :L0
    goto/16 :L11
  :L0
    const/16 v0, 25
    const/4 v1, 1
    if-eq p1, v0, :L1
    const/16 v0, 24
    if-eq p1, v0, :L1
    const/16 v0, 164
    if-ne p1, v0, :L2
  :L1
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->G:Lcn/manstep/phonemirrorBox/p0/c;
    invoke-virtual { v0, p1, v1 }, Lcn/manstep/phonemirrorBox/p0/c;->o(IZ)Z
    move-result v0
    if-eqz v0, :L2
  .line 4
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "MainActivity,onKeyDown: UseVolumeKeySwitchMusic "
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    return v1
  :L2
  .line 5
    invoke-virtual { p2 }, Landroid/view/KeyEvent;->getRepeatCount()I
    move-result v0
    if-lez v0, :L3
  .line 6
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->O:Z
    goto :L4
  :L3
    const/4 v0, 0
  .line 7
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->O:Z
  :L4
  .line 8
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;
    invoke-virtual { v0, p1, p2 }, Lcn/manstep/phonemirrorBox/a;->n(ILandroid/view/KeyEvent;)Z
    move-result v0
    if-eqz v0, :L5
    return v1
  :L5
  .line 9
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->V:Lcn/manstep/phonemirrorBox/l0/u;
    if-eqz v0, :L6
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z
    move-result v0
    if-nez v0, :L6
  .line 10
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->V:Lcn/manstep/phonemirrorBox/l0/u;
    invoke-interface { v0, p1, p2 }, Lcn/manstep/phonemirrorBox/l0/u;->onKeyDown(ILandroid/view/KeyEvent;)Z
    move-result p1
    return p1
  :L6
  .line 11
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z
    move-result v0
    if-nez v0, :L7
  .line 12
    invoke-super { p0, p1, p2 }, Landroidx/appcompat/app/d;->onKeyDown(ILandroid/view/KeyEvent;)Z
    move-result p1
    return p1
  :L7
    const/16 v0, 300
    if-ne p1, v0, :L8
  .line 13
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;
    move-result-object v2
    invoke-virtual { v2 }, Lcn/manstep/phonemirrorBox/v0/a;->w()Z
    move-result v2
    if-eqz v2, :L9
  .line 14
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    return v1
  :L8
    const/16 v0, 301
    if-ne p1, v0, :L9
  .line 15
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;
    move-result-object v2
    invoke-virtual { v2 }, Lcn/manstep/phonemirrorBox/v0/a;->w()Z
    move-result v2
    if-eqz v2, :L9
  .line 16
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    return v1
  :L9
  .line 17
    invoke-static { p0, p1 }, Lcn/manstep/phonemirrorBox/b0;->f(Landroid/content/Context;I)I
    move-result v0
  .line 18
    invoke-static { p0, p1 }, Lcn/manstep/phonemirrorBox/b0;->g(Landroid/content/Context;I)I
    move-result v2
  .line 19
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "MainActivity,onKeyDown: cmd="
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v4, ", cmd2="
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-static { v3 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    if-nez v0, :L10
    if-nez v2, :L10
  .line 20
    invoke-super { p0, p1, p2 }, Landroidx/appcompat/app/d;->onKeyDown(ILandroid/view/KeyEvent;)Z
    move-result p1
    return p1
  :L10
    return v1
  :L11
  .line 21
    invoke-super { p0, p1, p2 }, Landroidx/appcompat/app/d;->onKeyDown(ILandroid/view/KeyEvent;)Z
    move-result p1
    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
  .registers 7
  .line 1
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->s:Z
    if-nez v0, :L12
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/u;->P()Z
    move-result v0
    if-eqz v0, :L0
    goto/16 :L12
  :L0
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "MainActivity,onKeyUp: keyCode="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, " "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Landroid/view/KeyEvent;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    const/16 v0, 25
    const/4 v1, 1
    if-eq p1, v0, :L1
    const/16 v0, 24
    if-eq p1, v0, :L1
    const/16 v0, 164
    if-ne p1, v0, :L2
  :L1
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->G:Lcn/manstep/phonemirrorBox/p0/c;
    const/4 v2, 0
    invoke-virtual { v0, p1, v2 }, Lcn/manstep/phonemirrorBox/p0/c;->o(IZ)Z
    move-result v0
    if-eqz v0, :L2
    return v1
  :L2
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;
    iget-boolean v2, p0, Lcn/manstep/phonemirrorBox/MainActivity;->O:Z
    invoke-virtual { v0, p1, p2, v2 }, Lcn/manstep/phonemirrorBox/a;->o(ILandroid/view/KeyEvent;Z)Z
    move-result v0
    if-eqz v0, :L3
    return v1
  :L3
  .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->V:Lcn/manstep/phonemirrorBox/l0/u;
    if-eqz v0, :L4
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z
    move-result v0
    if-nez v0, :L4
  .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->V:Lcn/manstep/phonemirrorBox/l0/u;
    iget-boolean v1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->O:Z
    invoke-interface { v0, p1, p2, v1 }, Lcn/manstep/phonemirrorBox/l0/u;->a(ILandroid/view/KeyEvent;Z)Z
    move-result p1
    return p1
  :L4
  .line 7
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->O:Z
    if-nez v0, :L5
  .line 8
    invoke-super { p0, p1, p2 }, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z
    move-result p1
    return p1
  :L5
    const/16 v0, 300
    if-eq p1, v0, :L11
    const/16 v0, 301
    if-ne p1, v0, :L6
    goto :L11
  :L6
  .line 9
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->O:Z
    if-eqz v0, :L7
  .line 10
    invoke-static { p0, p1 }, Lcn/manstep/phonemirrorBox/b0;->g(Landroid/content/Context;I)I
    move-result v0
    goto :L8
  :L7
  .line 11
    invoke-static { p0, p1 }, Lcn/manstep/phonemirrorBox/b0;->f(Landroid/content/Context;I)I
    move-result v0
  :L8
  .line 12
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "MainActivity,onKeyUp: cmd="
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v3, ", mLongPressKey="
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-boolean v3, p0, Lcn/manstep/phonemirrorBox/MainActivity;->O:Z
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    if-nez v0, :L10
  .line 13
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "MainActivity,onKeyUp: keyCode = "
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 14
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->O:Z
    if-eqz v0, :L9
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->O:Z
    if-eqz v0, :L9
    const/4 v0, 4
    if-ne v0, p1, :L9
  .line 15
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/MainActivity;->d1()V
    return v1
  :L9
  .line 16
    invoke-super { p0, p1, p2 }, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z
    move-result p1
    return p1
  :L10
  .line 17
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->G()V
  .line 18
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->G:Lcn/manstep/phonemirrorBox/p0/c;
    invoke-virtual { p1, v0 }, Lcn/manstep/phonemirrorBox/p0/c;->G(I)V
  :L11
    return v1
  :L12
  .line 19
    invoke-super { p0, p1, p2 }, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z
    move-result p1
    return p1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
  .registers 2
  .line 1
    invoke-super { p0, p1 }, Landroidx/fragment/app/e;->onNewIntent(Landroid/content/Intent;)V
  .line 2
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/MainActivity;->W0(Landroid/content/Intent;)V
    return-void
.end method

.method protected onPause()V
  .registers 3
  .line 1
    invoke-super { p0 }, Lcn/manstep/phonemirrorBox/k;->onPause()V
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/a;->x(Z)V
    const-string v0, "MainActivity,onPause"
  .line 3
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->G:Lcn/manstep/phonemirrorBox/p0/c;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/p0/c;->n()Z
    move-result v0
    if-eqz v0, :L0
  .line 5
    sget-boolean v0, Lcn/manstep/phonemirrorBox/p;->g:Z
    if-nez v0, :L0
  .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->C:Ljava/lang/String;
    const-string v1, "ac8317"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
  .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->D:Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;
    const/16 v1, 8
    invoke-virtual { v0, v1 }, Landroid/view/SurfaceView;->setVisibility(I)V
  :L0
    return-void
.end method

.method public native onRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end method

.method protected onResume()V
  .catch Ljava/lang/Exception; { :L9 .. :L11 } :L12
  .registers 5
  .line 1
    invoke-super { p0 }, Lcn/manstep/phonemirrorBox/k;->onResume()V
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "MainActivity,onResume: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-object v1, Lcn/manstep/phonemirrorBox/p;->b:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 3
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z
    move-result v0
    if-eqz v0, :L0
  .line 4
    invoke-static { }, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/u0/c;->H()V
  :L0
  .line 5
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z
    move-result v0
    if-eqz v0, :L1
  .line 6
    invoke-static { }, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;
    move-result-object v0
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/e;->C()Z
    move-result v1
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/u0/c;->d(Z)V
  :L1
  .line 7
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z
    move-result v0
    if-eqz v0, :L2
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/v0/a;->y()Z
    move-result v0
    if-eqz v0, :L2
  .line 8
    invoke-static { }, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->getInstance()Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;
    move-result-object v0
    invoke-virtual { p0 }, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;
    move-result-object v1
    invoke-static/range { v1 .. v1 }, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;
    move-result-object v1
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->init(Landroid/content/Context;)V
  :L2
  .line 9
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;
    if-nez v0, :L3
  .line 10
    new-instance v0, Lcn/manstep/phonemirrorBox/v;
    invoke-direct { v0, p0 }, Lcn/manstep/phonemirrorBox/v;-><init>(Landroid/app/Activity;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;
  .line 11
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/a;->a()V
  :L3
  .line 12
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->G:Lcn/manstep/phonemirrorBox/p0/c;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/p0/c;->i()I
    move-result v0
    const/4 v1, 0
    const/4 v2, 1
    if-eqz v0, :L5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->G:Lcn/manstep/phonemirrorBox/p0/c;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/p0/c;->i()I
    move-result v0
    const/4 v3, -1
    if-ne v0, v3, :L4
    goto :L5
  :L4
  .line 13
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/a;->x(Z)V
    goto :L6
  :L5
  .line 14
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;
    invoke-virtual { v0, v2 }, Lcn/manstep/phonemirrorBox/a;->x(Z)V
  :L6
  .line 15
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->G:Lcn/manstep/phonemirrorBox/p0/c;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/p0/c;->n()Z
    move-result v0
    if-eqz v0, :L7
  .line 16
    sget-boolean v0, Lcn/manstep/phonemirrorBox/p;->g:Z
    if-nez v0, :L7
  .line 17
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->C:Ljava/lang/String;
    const-string v3, "ac8317"
    invoke-virtual { v3, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L7
  .line 18
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->D:Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;
    invoke-virtual { v0, v1 }, Landroid/view/SurfaceView;->setVisibility(I)V
  :L7
  .line 19
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->G:Lcn/manstep/phonemirrorBox/p0/c;
    invoke-virtual { v0, v2 }, Lcn/manstep/phonemirrorBox/p0/c;->D(Z)V
  .line 20
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/MainActivity;->Y0()V
  .line 21
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "MainActivity,onResume: PhoneConnected="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-boolean v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->O:Z
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 22
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->O:Z
    if-eqz v0, :L9
  .line 23
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->w:Landroid/widget/ViewAnimator;
    if-nez v0, :L8
  .line 24
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/MainActivity;->init()V
  :L8
  .line 25
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->w:Landroid/widget/ViewAnimator;
    invoke-virtual { v0 }, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;
    move-result-object v0
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->w:Landroid/widget/ViewAnimator;
    const/4 v3, 3
    invoke-virtual { v1, v3 }, Landroid/widget/ViewAnimator;->getChildAt(I)Landroid/view/View;
    move-result-object v1
    if-eq v0, v1, :L9
  .line 26
    invoke-virtual { p0, v3, v2 }, Lcn/manstep/phonemirrorBox/MainActivity;->r(IZ)V
  :L9
    const-string v0, "Action"
    const-string v1, "onResume"
  .line 27
    invoke-virtual { p0, v0, v1 }, Lcn/manstep/phonemirrorBox/MainActivity;->i1(Ljava/lang/String;Ljava/lang/String;)V
  .line 28
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->G:Lcn/manstep/phonemirrorBox/p0/c;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/p0/c;->n()Z
    move-result v0
    if-eqz v0, :L13
  .line 29
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    if-eqz v0, :L13
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->J()Lcn/manstep/phonemirrorBox/q0/g;
    move-result-object v0
    if-eqz v0, :L13
  .line 30
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->J()Lcn/manstep/phonemirrorBox/q0/g;
    move-result-object v0
    invoke-interface { v0 }, Lcn/manstep/phonemirrorBox/q0/g;->b()Z
    move-result v0
    if-eqz v0, :L10
  .line 31
    new-instance v0, Landroid/content/Intent;
    const-string v1, "net.easyconn.a2dp.acquire"
    invoke-direct { v0, v1 }, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
  .line 32
    invoke-virtual { p0, v0 }, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V
    const-string v0, "A2DP"
    const-string v1, "send broad a2dp acquire"
  .line 33
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
    goto :L13
  :L10
  .line 34
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->B()V
  :L11
    goto :L13
  :L12
    move-exception v0
  .line 35
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "MainActivity,onResume: \n"
    invoke-virtual { v1, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { v0 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L13
  .line 36
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->B:Lcn/manstep/phonemirrorBox/ModeChangeService;
    if-eqz v0, :L14
  .line 37
    invoke-virtual { v0, v2 }, Lcn/manstep/phonemirrorBox/ModeChangeService;->n(Z)V
  :L14
  .line 38
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "bRequestPermissionStarted="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->S:Z
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v1, "MainActivity"
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 39
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->S:Z
    if-nez v0, :L15
  .line 40
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/MainActivity;->h1()V
    goto :L16
  :L15
  .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 23
    if-lt v0, v1, :L16
  .line 42
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->Z:Lcn/manstep/phonemirrorBox/util/u;
    new-instance v1, Lcn/manstep/phonemirrorBox/MainActivity$h;
    invoke-direct { v1, p0 }, Lcn/manstep/phonemirrorBox/MainActivity$h;-><init>(Lcn/manstep/phonemirrorBox/MainActivity;)V
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/util/u;->a(Ljava/lang/Runnable;)V
  :L16
  .line 43
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z
    move-result v0
    if-eqz v0, :L17
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/u;->M()Z
    move-result v0
    if-eqz v0, :L17
  .line 44
    invoke-static { }, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z
    move-result v0
    if-eqz v0, :L17
  .line 45
    iput-boolean v2, p0, Lcn/manstep/phonemirrorBox/MainActivity;->T:Z
  .line 46
    invoke-static { }, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/bluetooth/BluetoothAdapter;->disable()Z
  :L17
  .line 47
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->X:Z
    if-nez v0, :L18
    invoke-virtual { p0 }, Landroid/app/Activity;->hasWindowFocus()Z
    move-result v0
    if-eqz v0, :L18
  .line 48
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/MainActivity;->init()V
  :L18
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
  .registers 2
  .line 1
    invoke-super { p0, p1 }, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V
  .line 2
    invoke-virtual { p1 }, Landroid/os/Bundle;->clear()V
    return-void
.end method

.method protected onStart()V
  .registers 5
  .line 1
    invoke-super { p0 }, Lcn/manstep/phonemirrorBox/k;->onStart()V
    const-string v0, "MainActivity,onStart"
  .line 2
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->h(Ljava/lang/String;)V
  .line 3
    new-instance v0, Landroid/os/Handler;
    invoke-direct { v0 }, Landroid/os/Handler;-><init>()V
    new-instance v1, Lcn/manstep/phonemirrorBox/MainActivity$g;
    invoke-direct { v1, p0 }, Lcn/manstep/phonemirrorBox/MainActivity$g;-><init>(Lcn/manstep/phonemirrorBox/MainActivity;)V
    const-wide/16 v2, 800
    invoke-virtual { v0, v1, v2, v3 }, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    return-void
.end method

.method protected onStop()V
  .registers 5
  .line 1
    invoke-super { p0 }, Lcn/manstep/phonemirrorBox/k;->onStop()V
    const-string v0, "MainActivity,onStop"
  .line 2
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->h(Ljava/lang/String;)V
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/a;->x(Z)V
    const-string v0, "Action"
    const-string v2, "onStop"
  .line 4
    invoke-virtual { p0, v0, v2 }, Lcn/manstep/phonemirrorBox/MainActivity;->i1(Ljava/lang/String;Ljava/lang/String;)V
  .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->G:Lcn/manstep/phonemirrorBox/p0/c;
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/p0/c;->D(Z)V
  .line 6
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    const-string v2, "BgKeyValid"
    const/4 v3, 1
    invoke-virtual { v0, v2, v3 }, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z
    move-result v0
    invoke-static { p0, v0 }, Lcn/manstep/phonemirrorBox/util/c0;->t(Landroid/content/Context;Z)V
  .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->B:Lcn/manstep/phonemirrorBox/ModeChangeService;
    if-eqz v0, :L0
  .line 8
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/ModeChangeService;->n(Z)V
  :L0
  .line 9
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z
    move-result v0
    if-nez v0, :L1
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/u;->M()Z
    move-result v0
    if-eqz v0, :L1
  .line 10
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->T:Z
    if-eqz v0, :L1
  .line 11
    invoke-static { }, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/bluetooth/BluetoothAdapter;->enable()Z
    const-string v0, "MainActivity"
    const-string v2, "onStop: Bluetooth enable"
  .line 12
    invoke-static { v0, v2 }, Lcn/manstep/phonemirrorBox/util/s;->p(Ljava/lang/String;Ljava/lang/String;)V
  .line 13
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->T:Z
  :L1
  .line 14
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z
    move-result v0
    if-eqz v0, :L2
  .line 15
    invoke-static { }, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/u0/c;->x()V
  :L2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
  .registers 4
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z
    move-result v0
    if-eqz v0, :L0
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->P:Z
    if-eqz v0, :L0
  .line 2
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getAction()I
    move-result v0
    const/4 v1, 1
    if-ne v0, v1, :L0
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/a;->D(Z)V
  :L0
  .line 4
    invoke-super { p0, p1 }, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z
    move-result p1
    return p1
.end method

.method public onWindowFocusChanged(Z)V
  .registers 7
  .line 1
    invoke-super { p0, p1 }, Lcn/manstep/phonemirrorBox/k;->onWindowFocusChanged(Z)V
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "MainActivity, onWindowFocusChanged: hasFocus = "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    const-string v1, "================="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { }, Landroid/os/SystemClock;->elapsedRealtime()J
    move-result-wide v1
    invoke-static { }, Lcn/manstep/phonemirrorBox/MyApplication;->b()Lcn/manstep/phonemirrorBox/MyApplication;
    move-result-object v3
    iget-wide v3, v3, Lcn/manstep/phonemirrorBox/MyApplication;->b:J
    sub-long/2addr v1, v3
    invoke-virtual { v0, v1, v2 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->h(Ljava/lang/String;)V
    if-eqz p1, :L0
  .line 3
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/MainActivity;->init()V
  :L0
  .line 4
    sput-boolean p1, Lcn/manstep/phonemirrorBox/MainActivity;->b0:Z
  .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->G:Lcn/manstep/phonemirrorBox/p0/c;
    invoke-virtual { v0, p1 }, Lcn/manstep/phonemirrorBox/p0/c;->D(Z)V
  .line 6
    invoke-virtual { p0 }, Landroid/app/Activity;->getIntent()Landroid/content/Intent;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
    move-result-object v0
    const/4 v1, 0
    if-eqz v0, :L2
    const-string v2, "AutoStart"
  .line 7
    invoke-virtual { v0, v2 }, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    move-result v0
  .line 8
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "MainActivity, onWindowFocusChanged: flag = "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    const/4 v2, 1
    if-ne v0, v2, :L1
  .line 9
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z
    move-result v0
    if-nez v0, :L2
  .line 10
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/MainActivity;->D()V
    goto :L2
  :L1
    const/4 v2, 2
    if-ne v0, v2, :L2
  .line 11
    sput-boolean v1, Lcn/manstep/phonemirrorBox/MainActivity;->b0:Z
  .line 12
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->j()V
  .line 13
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    if-eqz v0, :L2
  .line 14
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->X0()Z
  :L2
  .line 15
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/b;->h:Z
    if-eqz v0, :L4
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/k;->d0()Z
    move-result v0
    if-eqz v0, :L4
    if-eqz p1, :L3
  .line 16
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/MainActivity;->Y0()V
    goto :L4
  :L3
  .line 17
    invoke-virtual { p0 }, Landroid/app/Activity;->getWindow()Landroid/view/Window;
    move-result-object v0
    invoke-direct { p0, v0 }, Lcn/manstep/phonemirrorBox/MainActivity;->T0(Landroid/view/Window;)V
  :L4
  .line 18
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->G:Lcn/manstep/phonemirrorBox/p0/c;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/p0/c;->n()Z
    move-result v0
    if-eqz v0, :L7
  .line 19
    sget-boolean v0, Lcn/manstep/phonemirrorBox/p;->g:Z
    if-nez v0, :L7
  .line 20
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->C:Ljava/lang/String;
    const-string v2, "ac8317"
    invoke-virtual { v2, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L7
  .line 21
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->D:Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;
    if-eqz p1, :L5
    goto :L6
  :L5
    const/16 v1, 8
  :L6
    invoke-virtual { v0, v1 }, Landroid/view/SurfaceView;->setVisibility(I)V
  :L7
    return-void
.end method

.method public p(I)V
  .registers 7
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "onBackHome: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v1, "MainActivity"
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    const/high16 v0, 4096
    if-nez p1, :L4
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/MyApplication;->b()Lcn/manstep/phonemirrorBox/MyApplication;
    move-result-object p1
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/MyApplication;->g()Z
    move-result p1
    if-eqz p1, :L5
  .line 3
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object p1
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/u;->y()Ljava/lang/String;
    move-result-object p1
    const-string v2, "ecarx-IHU3Q122-IHU3Q122-9(28)"
    invoke-virtual { v2, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p1
    if-eqz p1, :L0
  .line 4
    new-instance p1, Landroid/content/Intent;
    invoke-direct { p1 }, Landroid/content/Intent;-><init>()V
  .line 5
    new-instance v0, Landroid/content/ComponentName;
    const-string v1, "com.fawcar.dlife6.launcher"
    const-string v2, "com.fawcar.dlife6.launcher.activity.AllAppsActivity"
    invoke-direct { v0, v1, v2 }, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    invoke-virtual { p1, v0 }, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
  .line 6
    invoke-virtual { p0, p1 }, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    goto/16 :L5
  :L0
  .line 7
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object p1
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/u;->y()Ljava/lang/String;
    move-result-object p1
    const-string v2, "QTI-msmnile_gvmq for arm64-k6801_a-11(30)"
    invoke-virtual { v2, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p1
    if-eqz p1, :L1
  .line 8
    new-instance p1, Landroid/content/Intent;
    invoke-direct { p1 }, Landroid/content/Intent;-><init>()V
  .line 9
    new-instance v0, Landroid/content/ComponentName;
    const-string v2, "com.avatr.ivi.foundation.launcher"
    const-string v3, "com.avatr.ivi.foundation.launcher.base.LauncherService"
    invoke-direct { v0, v2, v3 }, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    invoke-virtual { p1, v0 }, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    const-string v0, "launcher_service:arg"
    const-string v2, "start_home"
  .line 10
    invoke-virtual { p1, v0, v2 }, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
  .line 11
    invoke-static { }, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
    move-result-object v0
    const/4 v2, 1
    new-array v2, v2, [Ljava/lang/Object;
    const/4 v3, 0
    invoke-virtual { p0 }, Landroid/app/Activity;->getPackageName()Ljava/lang/String;
    move-result-object v4
    aput-object v4, v2, v3
    const-string v3, "{\"extra\":\"\",\"from\":\"%s\"}"
    invoke-static { v0, v3, v2 }, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v0
  .line 12
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "onBackHome: extra="
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static { v1, v2 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    const-string v1, "launcher_service:arg_extra"
  .line 13
    invoke-virtual { p1, v1, v0 }, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
  .line 14
    invoke-virtual { p0, p1 }, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    goto/16 :L5
  :L1
  .line 15
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object p1
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/u;->y()Ljava/lang/String;
    move-result-object p1
    const-string v2, "CAIC-x9hp for arm64-x9hp_bestune_d511_overseas_none_linux_di_baseline-10(29)"
    invoke-virtual { v2, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p1
    if-eqz p1, :L2
  .line 16
    new-instance p1, Landroid/content/Intent;
    invoke-direct { p1 }, Landroid/content/Intent;-><init>()V
    const-string v0, "com.faw.factorymode.ui.activity."
  .line 17
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 18
    new-instance v0, Landroid/content/ComponentName;
    const-string v1, "com.faw.factorymode"
    const-string v2, "com.faw.factorymode.ui.activity.MainActivity"
    invoke-direct { v0, v1, v2 }, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    invoke-virtual { p1, v0 }, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
  .line 19
    invoke-virtual { p0, p1 }, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    goto :L5
  :L2
  .line 20
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object p1
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/u;->y()Ljava/lang/String;
    move-result-object p1
    const-string v2, "DesaySV-G6SA-r8a7795-g6sa_e111_basic-8.1.0(27)"
    invoke-virtual { v2, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p1
    if-eqz p1, :L3
  .line 21
    new-instance p1, Landroid/content/Intent;
    invoke-direct { p1 }, Landroid/content/Intent;-><init>()V
    const-string v0, "com.desaysv.setting.fragment.voice.TimbreActivity"
  .line 22
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 23
    new-instance v1, Landroid/content/ComponentName;
    const-string v2, "com.faw.systemsetting"
    invoke-direct { v1, v2, v0 }, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    invoke-virtual { p1, v1 }, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
  .line 24
    invoke-virtual { p0, p1 }, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    goto :L5
  :L3
  .line 25
    new-instance p1, Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"
    invoke-direct { p1, v1 }, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
  .line 26
    invoke-virtual { p1, v0 }, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    const-string v0, "android.intent.category.HOME"
  .line 27
    invoke-virtual { p1, v0 }, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;
  .line 28
    invoke-virtual { p0, p1 }, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    goto :L5
  :L4
  .line 29
    new-instance p1, Landroid/content/Intent;
    const-class v1, Lcn/manstep/phonemirrorBox/MainActivity;
    invoke-direct { p1, p0, v1 }, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
  .line 30
    invoke-virtual { p1, v0 }, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
  .line 31
    invoke-virtual { p0, p1 }, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
  .line 32
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->G()V
  :L5
    return-void
.end method

.method public q(Z)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->I:Lcn/manstep/phonemirrorBox/z;
    invoke-virtual { v0, p1 }, Lcn/manstep/phonemirrorBox/z;->M2(Z)V
    return-void
.end method

.method public r(IZ)V
  .registers 9
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "MainActivity, changePage: nextPage="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->w:Landroid/widget/ViewAnimator;
    if-nez v0, :L0
  .line 3
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/MainActivity;->init()V
  :L0
    const/4 v0, 0
    const/4 v2, 3
    const/4 v3, 1
    if-ne v2, p1, :L3
  .line 4
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/MainActivity;->B:Lcn/manstep/phonemirrorBox/ModeChangeService;
    if-nez v4, :L1
  .line 5
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/MainActivity;->J0()V
  :L1
  .line 6
    invoke-virtual { p0 }, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;
    move-result-object v4
    invoke-virtual { v4 }, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
    move-result-object v4
    iget v4, v4, Landroid/content/res/Configuration;->orientation:I
    invoke-static { v4 }, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->setOrientation(I)V
  .line 7
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->B()V
  .line 8
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;
    invoke-virtual { v4, v3 }, Lcn/manstep/phonemirrorBox/a;->s(Z)V
  .line 9
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/MainActivity;->G:Lcn/manstep/phonemirrorBox/p0/c;
    invoke-virtual { v4 }, Lcn/manstep/phonemirrorBox/p0/c;->m()Z
    move-result v4
    if-nez v4, :L2
  .line 10
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/MainActivity;->G:Lcn/manstep/phonemirrorBox/p0/c;
    invoke-virtual { v4, v2 }, Lcn/manstep/phonemirrorBox/p0/c;->H(I)V
  :L2
  .line 11
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/MainActivity;->Y0()V
  .line 12
    invoke-static { }, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->getInstance()Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;
    move-result-object v4
    invoke-virtual { p0 }, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;
    move-result-object v5
    invoke-static/range { v5 .. v5 }, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;
    move-result-object v5
    invoke-virtual { v4, v5 }, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->init(Landroid/content/Context;)V
  .line 13
    invoke-virtual { p0 }, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;
    move-result-object v4
    invoke-virtual { v4 }, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
    move-result-object v4
    iget v4, v4, Landroid/content/res/Configuration;->uiMode:I
    invoke-direct { p0, v4 }, Lcn/manstep/phonemirrorBox/MainActivity;->j1(I)V
  .line 14
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/MainActivity;->X0()Z
    move-result v4
    if-nez v4, :L5
    const v4, 2131689954
  .line 15
    invoke-static { p0, v4 }, Lcn/manstep/phonemirrorBox/widget/a;->c(Landroid/content/Context;I)V
    goto :L5
  :L3
    if-ne p1, v3, :L4
  .line 16
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;
    invoke-virtual { v4 }, Lcn/manstep/phonemirrorBox/a;->t()V
  .line 17
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/MainActivity;->Y0()V
    goto :L5
  :L4
  .line 18
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;
    invoke-virtual { v4, v0 }, Lcn/manstep/phonemirrorBox/a;->s(Z)V
  :L5
  .line 19
    invoke-virtual { p0 }, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;
    move-result-object v4
    const v5, 2131034139
    invoke-virtual { v4, v5 }, Landroid/content/res/Resources;->getBoolean(I)Z
    move-result v4
    if-nez v4, :L10
    if-eq p1, v2, :L8
    if-eqz p1, :L8
    if-ne p1, v3, :L6
  .line 20
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/a;->t()V
    goto :L7
  :L6
  .line 21
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;
    invoke-virtual { p1, v0 }, Lcn/manstep/phonemirrorBox/a;->s(Z)V
  :L7
    return-void
  :L8
    if-ne p1, v2, :L9
  .line 22
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/MainActivity;->Y0()V
  .line 23
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;
    invoke-virtual { p1, v3 }, Lcn/manstep/phonemirrorBox/a;->s(Z)V
    const/4 p1, 1
    goto :L10
  :L9
  .line 24
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;
    invoke-virtual { v4, v0 }, Lcn/manstep/phonemirrorBox/a;->s(Z)V
  :L10
    if-eqz p2, :L13
  .line 25
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/MainActivity;->w:Landroid/widget/ViewAnimator;
    invoke-virtual { p2, p1 }, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V
    if-nez p1, :L11
  .line 26
    invoke-direct { p0, v0 }, Lcn/manstep/phonemirrorBox/MainActivity;->k1(Z)V
    goto :L12
  :L11
    if-ne p1, v2, :L12
  .line 27
    invoke-direct { p0, v3 }, Lcn/manstep/phonemirrorBox/MainActivity;->k1(Z)V
  :L12
    return-void
  :L13
  .line 28
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v0, ", mSingleWorkMode="
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->u:I
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-static { p2 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 29
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/MainActivity;->w:Landroid/widget/ViewAnimator;
    invoke-virtual { p2 }, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;
    move-result-object p2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->w:Landroid/widget/ViewAnimator;
    invoke-virtual { v0, p1 }, Landroid/widget/ViewAnimator;->getChildAt(I)Landroid/view/View;
    move-result-object v0
    if-eq p2, v0, :L14
  .line 30
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/MainActivity;->w:Landroid/widget/ViewAnimator;
    invoke-virtual { p2, p1 }, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V
  :L14
  .line 31
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/MainActivity;->Y0()V
    return-void
.end method

.method public s()V
  .registers 1
    return-void
.end method

.method public t(Ljava/lang/String;)V
  .registers 5
    const/4 v0, 1
  .line 1
    invoke-direct { p0, v0 }, Lcn/manstep/phonemirrorBox/MainActivity;->K0(Z)V
  .line 2
    invoke-virtual { p0 }, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;
    move-result-object v1
    const v2, 2131690011
    invoke-virtual { v1, v2 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v1
    new-array v0, v0, [Ljava/lang/Object;
    const/4 v2, 0
    aput-object p1, v0, v2
    invoke-static { v1, v0 }, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object p1
    const/high16 v0, -1
  .line 3
    invoke-direct { p0, p1, v0 }, Lcn/manstep/phonemirrorBox/MainActivity;->o1(Ljava/lang/String;I)V
  .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/a;->q()V
    return-void
.end method

.method public u()V
  .registers 3
    const v0, 2131689954
  .line 1
    invoke-virtual { p0, v0 }, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    move-result-object v0
    const/4 v1, 1
    invoke-static { p0, v0, v1 }, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/widget/Toast;->show()V
  .line 2
    invoke-direct { p0, p0 }, Lcn/manstep/phonemirrorBox/MainActivity;->V0(Landroid/content/Context;)V
    return-void
.end method

.method public v(Ljava/lang/String;)V
  .registers 5
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "onNoticeWirelessDeviceConnFailed: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v1, "MainActivity"
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    const/4 v0, 1
  .line 2
    invoke-direct { p0, v0 }, Lcn/manstep/phonemirrorBox/MainActivity;->K0(Z)V
  .line 3
    invoke-virtual { p0 }, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;
    move-result-object v1
    const v2, 2131690009
    invoke-virtual { v1, v2 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v1
    new-array v0, v0, [Ljava/lang/Object;
    const/4 v2, 0
    aput-object p1, v0, v2
    invoke-static { v1, v0 }, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v0
    const/high16 v1, -1
  .line 4
    invoke-direct { p0, v0, v1 }, Lcn/manstep/phonemirrorBox/MainActivity;->o1(Ljava/lang/String;I)V
  .line 5
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->v()V
  .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/a;->q()V
  .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;
    invoke-virtual { v0, p1 }, Lcn/manstep/phonemirrorBox/a;->r(Ljava/lang/String;)V
    return-void
.end method

.method public x(Z)V
  .registers 5
    const/4 v0, 1
  .line 1
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->H:Z
    if-eqz p1, :L0
  .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->I:Lcn/manstep/phonemirrorBox/z;
    invoke-virtual { p0, p1 }, Lcn/manstep/phonemirrorBox/MainActivity;->f(Landroidx/fragment/app/Fragment;)V
  :L0
  .line 3
    invoke-direct { p0, v0 }, Lcn/manstep/phonemirrorBox/MainActivity;->K0(Z)V
    const p1, 2131689486
    const/16 v0, -256
  .line 4
    invoke-direct { p0, p1, v0 }, Lcn/manstep/phonemirrorBox/MainActivity;->n1(II)V
  .line 5
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/a;->j()V
  .line 6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->U:Lcn/manstep/phonemirrorBox/util/u;
    new-instance v0, Lcn/manstep/phonemirrorBox/MainActivity$w;
    invoke-direct { v0, p0 }, Lcn/manstep/phonemirrorBox/MainActivity$w;-><init>(Lcn/manstep/phonemirrorBox/MainActivity;)V
    const-wide/16 v1, 800
    invoke-virtual { p1, v0, v1, v2 }, Lcn/manstep/phonemirrorBox/util/u;->b(Ljava/lang/Runnable;J)V
    return-void
.end method

.method public y()V
  .registers 3
    const v0, 2131689984
    const v1, -16711936
  .line 1
    invoke-direct { p0, v0, v1 }, Lcn/manstep/phonemirrorBox/MainActivity;->n1(II)V
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/a;->g()V
    return-void
.end method

.method public z()V
  .registers 3
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/u;->M()Z
    move-result v0
    if-eqz v0, :L1
  .line 2
    invoke-static { }, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z
    move-result v0
    const-string v1, "MainActivity"
    if-eqz v0, :L0
    const/4 v0, 1
  .line 3
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->T:Z
    const-string v0, "onPhoneWorking: bBtEnable = true"
  .line 4
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 5
    invoke-static { }, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/bluetooth/BluetoothAdapter;->disable()Z
    goto :L1
  :L0
    const/4 v0, 0
  .line 6
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->T:Z
    const-string v0, "onPhoneWorking: bBtEnable = false"
  .line 7
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  :L1
  .line 8
    invoke-static { }, Lcn/manstep/phonemirrorBox/util/r;->a()Lcn/manstep/phonemirrorBox/util/r;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/util/r;->c()V
    return-void
.end method
