.class public Lcn/manstep/phonemirrorBox/MainActivity;
.super Lcn/manstep/phonemirrorBox/k;
.source "SourceFile"

# interfaces
.implements Lcn/manstep/phonemirrorBox/p0/b;
.implements Lcn/manstep/phonemirrorBox/a$b;
.implements Lcn/manstep/phonemirrorBox/util/t$a;


# static fields
.field public static a0:I = 0x2

.field public static b0:Z


# instance fields
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


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const v0, 0x5f6

    invoke-static {v0}, Lcom/stub/StubApp;->interface11(I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/k;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->t:Z

    const/4 v1, -0x1

    .line 3
    iput v1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->u:I

    .line 4
    iput v1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->v:I

    const/4 v1, 0x0

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

    invoke-direct {v2, p0}, Lcn/manstep/phonemirrorBox/MainActivity$k;-><init>(Lcn/manstep/phonemirrorBox/MainActivity;)V

    const/4 v2, 0x1

    .line 13
    iput-boolean v2, p0, Lcn/manstep/phonemirrorBox/MainActivity;->S:Z

    .line 14
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->T:Z

    .line 15
    new-instance v2, Lcn/manstep/phonemirrorBox/util/u;

    invoke-direct {v2}, Lcn/manstep/phonemirrorBox/util/u;-><init>()V

    iput-object v2, p0, Lcn/manstep/phonemirrorBox/MainActivity;->U:Lcn/manstep/phonemirrorBox/util/u;

    .line 16
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->V:Lcn/manstep/phonemirrorBox/l0/u;

    .line 17
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->W:Z

    .line 18
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->X:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 19
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->Y:[I

    .line 20
    new-instance v0, Lcn/manstep/phonemirrorBox/util/u;

    invoke-direct {v0}, Lcn/manstep/phonemirrorBox/util/u;-><init>()V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->Z:Lcn/manstep/phonemirrorBox/util/u;

    return-void
.end method

.method static synthetic A0(Lcn/manstep/phonemirrorBox/MainActivity;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/MainActivity;->Y0()V

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
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/MainActivity;->O0()V

    return-void
.end method

.method static synthetic H0(Lcn/manstep/phonemirrorBox/MainActivity;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/MainActivity;->a1()V

    return-void
.end method

.method static synthetic I0(Lcn/manstep/phonemirrorBox/MainActivity;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/MainActivity;->p1()V

    return-void
.end method

.method private J0()V
    .registers 4

    .line 1
    new-instance v0, Lcn/manstep/phonemirrorBox/MainActivity$y;

    invoke-direct {v0, p0}, Lcn/manstep/phonemirrorBox/MainActivity$y;-><init>(Lcn/manstep/phonemirrorBox/MainActivity;)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->A:Landroid/content/ServiceConnection;

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/manstep/phonemirrorBox/ModeChangeService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->A:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private K0(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->z:Landroid/widget/TextView;

    if-eqz v0, :cond_f

    if-eqz p1, :cond_b

    const/4 p1, 0x0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_f

    :cond_b
    const/4 p1, 0x4

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_f
    :goto_f
    return-void
.end method

.method private L0(IZ)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/MainActivity;->D()V

    .line 2
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->O:Z

    if-eqz v0, :cond_b

    .line 3
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/MainActivity;->N0()Z

    return-void

    :cond_b
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p1, v0, :cond_10

    const/4 p1, 0x1

    .line 4
    :cond_10
    iget v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->u:I

    if-ne p1, v0, :cond_17

    if-nez p2, :cond_19

    return-void

    .line 5
    :cond_17
    iput p1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->u:I

    .line 6
    :cond_19
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MainActivity,changeSingleWorkMode: mode = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    const/4 p2, 0x2

    if-eq p1, v1, :cond_53

    const/4 v0, 0x4

    if-eq p1, p2, :cond_45

    const/4 p2, 0x3

    if-eq p1, p2, :cond_37

    goto :goto_61

    .line 7
    :cond_37
    invoke-static {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->b(I)V

    .line 8
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->c(I)V

    .line 9
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    if-eqz p1, :cond_61

    .line 10
    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->X0()Z

    goto :goto_61

    .line 11
    :cond_45
    invoke-static {p2}, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->b(I)V

    .line 12
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->c(I)V

    .line 13
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    if-eqz p1, :cond_61

    .line 14
    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->X0()Z

    goto :goto_61

    :cond_53
    const/4 p1, 0x0

    .line 15
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->b(I)V

    .line 16
    invoke-static {p2}, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->c(I)V

    .line 17
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    if-eqz p1, :cond_61

    .line 18
    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->X0()Z

    .line 19
    :cond_61
    :goto_61
    iget p1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->u:I

    invoke-static {p0, p1}, Lcn/manstep/phonemirrorBox/b0;->w(Landroid/content/Context;I)V

    return-void
.end method

.method private M0()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->W:Z

    if-eqz v0, :cond_1a

    .line 2
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->V()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 3
    invoke-static {}, Lcn/manstep/phonemirrorBox/util/b0;->m()Lcn/manstep/phonemirrorBox/util/b0;

    move-result-object v0

    new-instance v1, Lcn/manstep/phonemirrorBox/MainActivity$a;

    invoke-direct {v1, p0}, Lcn/manstep/phonemirrorBox/MainActivity$a;-><init>(Lcn/manstep/phonemirrorBox/MainActivity;)V

    invoke-virtual {v0, v1}, Lcn/manstep/phonemirrorBox/util/b0;->h(Lcn/manstep/phonemirrorBox/util/b0$d;)V

    :cond_1a
    return-void
.end method

.method private N0()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method private O0()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->W:Z

    if-eqz v0, :cond_10

    .line 2
    invoke-static {}, Lcn/manstep/phonemirrorBox/util/b0;->m()Lcn/manstep/phonemirrorBox/util/b0;

    move-result-object v0

    new-instance v1, Lcn/manstep/phonemirrorBox/MainActivity$c0;

    invoke-direct {v1, p0}, Lcn/manstep/phonemirrorBox/MainActivity$c0;-><init>(Lcn/manstep/phonemirrorBox/MainActivity;)V

    invoke-virtual {v0, v1}, Lcn/manstep/phonemirrorBox/util/b0;->g(Lcn/manstep/phonemirrorBox/util/b0$d;)V

    :cond_10
    return-void
.end method

.method private P0()V
    .registers 4

    .line 1
    invoke-static {p0}, Lcn/manstep/phonemirrorBox/b0;->h(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/manstep/phonemirrorBox/MainActivity$p;

    invoke-direct {v1, p0}, Lcn/manstep/phonemirrorBox/MainActivity$p;-><init>(Lcn/manstep/phonemirrorBox/MainActivity;)V

    const-string v2, "copyMute"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_15
    return-void
.end method

.method private Q0(Landroid/net/Uri;Landroid/net/Uri;)V
    .registers 6

    .line 1
    new-instance v0, Lcom/yalantis/ucrop/UCrop$Options;

    invoke-direct {v0}, Lcom/yalantis/ucrop/UCrop$Options;-><init>()V

    const v1, 0x7f06005d

    .line 2
    invoke-static {p0, v1}, Landroidx/core/content/a;->b(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/yalantis/ucrop/UCrop$Options;->setToolbarColor(I)V

    .line 3
    invoke-static {p0, v1}, Landroidx/core/content/a;->b(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/UCrop$Options;->setStatusBarColor(I)V

    .line 4
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/UCrop$Options;->setCompressionFormat(Landroid/graphics/Bitmap$CompressFormat;)V

    const/16 v1, 0x64

    .line 5
    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/UCrop$Options;->setCompressionQuality(I)V

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/UCrop$Options;->setHideBottomControls(Z)V

    const v1, 0x7f0f01b5

    .line 7
    invoke-static {p0, v1}, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/UCrop$Options;->setToolbarTitle(Ljava/lang/String;)V

    .line 8
    invoke-static {p1, p2}, Lcom/yalantis/ucrop/UCrop;->of(Landroid/net/Uri;Landroid/net/Uri;)Lcom/yalantis/ucrop/UCrop;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    .line 9
    invoke-virtual {p1, p2, p2}, Lcom/yalantis/ucrop/UCrop;->withAspectRatio(FF)Lcom/yalantis/ucrop/UCrop;

    move-result-object p1

    const/16 p2, 0xb4

    .line 10
    invoke-virtual {p1, p2, p2}, Lcom/yalantis/ucrop/UCrop;->withMaxResultSize(II)Lcom/yalantis/ucrop/UCrop;

    move-result-object p1

    .line 11
    invoke-virtual {p1, v0}, Lcom/yalantis/ucrop/UCrop;->withOptions(Lcom/yalantis/ucrop/UCrop$Options;)Lcom/yalantis/ucrop/UCrop;

    move-result-object p1

    .line 12
    invoke-virtual {p1, p0}, Lcom/yalantis/ucrop/UCrop;->start(Landroid/app/Activity;)V

    return-void
.end method

.method private R0(Ljava/lang/Runnable;J)V
    .registers 5

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private S0(Landroid/view/Window;)V
    .registers 12

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MainActivity,enterFullScreen: ###### isVideoNotFullscreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcn/manstep/phonemirrorBox/p;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->o(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/MainActivity;->b1()Z

    move-result v0

    if-eqz v0, :cond_1d

    return-void

    .line 3
    :cond_1d
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    const-string v1, "HideSysNavBar"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z

    move-result v0

    .line 4
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v1

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/b0;->k()Z

    move-result v1

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enterFullScreen: isHideSysNavBar="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", bShowStatusBar="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MainActivity"

    invoke-static {v4, v3}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_53

    if-eqz v1, :cond_53

    return-void

    :cond_53
    const/4 v3, 0x4

    .line 6
    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object v5

    invoke-virtual {v5}, Lcn/manstep/phonemirrorBox/u;->v()I

    move-result v5

    if-ne v3, v5, :cond_60

    const/4 v0, 0x1

    goto :goto_61

    :cond_60
    move v2, v1

    .line 7
    :goto_61
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/k;->f0()V

    const/16 v1, 0x800

    .line 8
    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 9
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 10
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    const/16 v7, 0x100

    const/16 v8, 0x400

    if-lt v5, v6, :cond_c2

    .line 11
    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object v5

    invoke-virtual {v5}, Lcn/manstep/phonemirrorBox/u;->R()Z

    move-result v5

    const/16 v6, 0x1000

    const/4 v9, 0x0

    if-eqz v5, :cond_87

    const/16 v5, 0x1000

    goto :goto_88

    :cond_87
    const/4 v5, 0x0

    :goto_88
    or-int/2addr v1, v5

    if-nez v2, :cond_9b

    .line 12
    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object v1

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/u;->R()Z

    move-result v1

    if-eqz v1, :cond_96

    goto :goto_97

    :cond_96
    const/4 v6, 0x0

    :goto_97
    or-int/lit16 v1, v6, 0x804

    or-int/2addr v1, v8

    or-int/2addr v1, v7

    :cond_9b
    if-eqz v0, :cond_aa

    or-int/lit16 v1, v1, 0x602

    .line 13
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/16 v5, 0x802

    .line 14
    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 15
    invoke-virtual {p1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 16
    :cond_aa
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enterFullScreen: setSystemUiVisibility->uiOptions="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v3, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_cf

    .line 18
    :cond_c2
    invoke-virtual {p1, v8, v8}, Landroid/view/Window;->setFlags(II)V

    const/16 v1, 0x8

    .line 19
    invoke-virtual {v3, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const-string v1, "Because the Android version number is lower than 4.4.4, there is no hidden NavigationBar."

    .line 20
    invoke-static {v1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 21
    :goto_cf
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-gt v1, v2, :cond_d8

    .line 22
    invoke-virtual {p1, v7}, Landroid/view/Window;->addFlags(I)V

    :cond_d8
    if-eqz v0, :cond_df

    const/16 v0, 0x200

    .line 23
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    :cond_df
    return-void
.end method

.method private T0(Landroid/view/Window;)V
    .registers 9

    const-string v0, "MainActivity,exitFullScreen: ######"

    .line 1
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/k;->g0()V

    const/16 v0, 0x400

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    const/16 v3, 0x100

    if-gt v1, v2, :cond_18

    .line 5
    invoke-virtual {p1, v3}, Landroid/view/Window;->clearFlags(I)V

    :cond_18
    const/16 v1, 0x200

    .line 6
    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 7
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 8
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    const/4 v6, 0x0

    if-lt v4, v5, :cond_4c

    .line 9
    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object v4

    invoke-virtual {v4}, Lcn/manstep/phonemirrorBox/u;->Q()Z

    move-result v4

    if-eqz v4, :cond_48

    .line 10
    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object v4

    invoke-virtual {v4}, Lcn/manstep/phonemirrorBox/u;->R()Z

    move-result v4

    if-eqz v4, :cond_3f

    const/16 v4, 0x1000

    goto :goto_40

    :cond_3f
    const/4 v4, 0x0

    :goto_40
    or-int/lit16 v4, v4, 0x804

    or-int/2addr v0, v4

    or-int/2addr v0, v3

    .line 11
    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_54

    .line 12
    :cond_48
    invoke-virtual {v1, v6}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_54

    .line 13
    :cond_4c
    invoke-virtual {v1, v6}, Landroid/view/View;->setSystemUiVisibility(I)V

    const-string v0, "Because the Android version number is lower than 4.4.4, there is no hidden NavigationBar."

    .line 14
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 15
    :goto_54
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v2, :cond_6f

    .line 16
    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/u;->Q()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 17
    invoke-virtual {p1, v3}, Landroid/view/Window;->addFlags(I)V

    goto :goto_6f

    .line 18
    :cond_66
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 19
    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 21
    :cond_6f
    :goto_6f
    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/u;->Q()Z

    move-result v0

    if-nez v0, :cond_7e

    const/16 v0, 0x800

    .line 22
    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    :cond_7e
    return-void
.end method

.method private V0(Landroid/content/Context;)V
    .registers 6

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_24

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "package"

    invoke-static {v3, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_3d

    :cond_24
    const/16 v2, 0x8

    if-gt v1, v2, :cond_3d

    const-string v1, "android.intent.action.VIEW"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.InstalledAppDetails"

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.settings.ApplicationPkgName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    :cond_3d
    :goto_3d
    :try_start_3d
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_41

    goto :goto_5a

    :catch_41
    move-exception p1

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MainActivity,getAppDetailSettingIntent: \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    :goto_5a
    return-void
.end method

.method private W0(Landroid/content/Intent;)V
    .registers 4

    if-eqz p1, :cond_13

    const-string v0, "EXTRA_NAME_1"

    const/16 v1, -0xff

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v1, :cond_13

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;

    if-eqz v0, :cond_13

    .line 3
    invoke-virtual {v0, p1}, Lcn/manstep/phonemirrorBox/a;->E(I)V

    :cond_13
    return-void
.end method

.method private X0()Z
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-lt v0, v2, :cond_21

    const-string v0, "android.permission.RECORD_AUDIO"

    .line 2
    invoke-static {p0, v0}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 3
    invoke-static {p0, v0}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 4
    invoke-static {p0, v0}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_20

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :cond_21
    :goto_21
    return v1
.end method

.method private Y0()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/MainActivity;->b1()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2
    :cond_7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->G:Lcn/manstep/phonemirrorBox/p0/c;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/p0/c;->m()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    .line 3
    invoke-direct {p0, v1}, Lcn/manstep/phonemirrorBox/MainActivity;->k1(Z)V

    goto :goto_32

    .line 4
    :cond_14
    sget v0, Lcn/manstep/phonemirrorBox/p;->l:I

    const/16 v2, 0x258

    if-ne v0, v2, :cond_2e

    sget v0, Lcn/manstep/phonemirrorBox/p;->k:I

    const/16 v2, 0x320

    if-ne v0, v2, :cond_2e

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->C:Ljava/lang/String;

    const-string v2, "rk3188"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 5
    invoke-direct {p0, v1}, Lcn/manstep/phonemirrorBox/MainActivity;->k1(Z)V

    goto :goto_32

    :cond_2e
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, v0}, Lcn/manstep/phonemirrorBox/MainActivity;->k1(Z)V

    :goto_32
    return-void
.end method

.method private Z0()V
    .registers 4

    const-string v0, "MainActivity"

    const-string v1, "initAnimation: "

    .line 1
    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f01000c

    .line 2
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->y:Landroid/view/animation/Animation;

    const v0, 0x7f01000d

    .line 3
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->x:Landroid/view/animation/Animation;

    const v0, 0x7f0901be

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewAnimator;

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->w:Landroid/widget/ViewAnimator;

    .line 5
    new-instance v1, Lcn/manstep/phonemirrorBox/MainActivity$e;

    invoke-direct {v1, p0}, Lcn/manstep/phonemirrorBox/MainActivity$e;-><init>(Lcn/manstep/phonemirrorBox/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->post(Ljava/lang/Runnable;)Z

    const v0, 0x1020002

    .line 6
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 8
    new-instance v2, Lcn/manstep/phonemirrorBox/MainActivity$f;

    invoke-direct {v2, p0, v0}, Lcn/manstep/phonemirrorBox/MainActivity$f;-><init>(Lcn/manstep/phonemirrorBox/MainActivity;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 9
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->w:Landroid/widget/ViewAnimator;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->y:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 10
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->w:Landroid/widget/ViewAnimator;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->x:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private a1()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->J:Landroidx/fragment/app/n;

    if-nez v0, :cond_a

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;

    move-result-object v0

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->J:Landroidx/fragment/app/n;

    .line 3
    :cond_a
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->I:Lcn/manstep/phonemirrorBox/z;

    const-string v1, "MainActivity"

    if-nez v0, :cond_4d

    .line 4
    new-instance v0, Lcn/manstep/phonemirrorBox/z;

    invoke-direct {v0}, Lcn/manstep/phonemirrorBox/z;-><init>()V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->I:Lcn/manstep/phonemirrorBox/z;

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->q0()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 6
    :try_start_1d
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->J:Landroidx/fragment/app/n;

    invoke-virtual {v0}, Landroidx/fragment/app/n;->l()Landroidx/fragment/app/w;

    move-result-object v0

    const v2, 0x7f09015e

    .line 7
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/MainActivity;->I:Lcn/manstep/phonemirrorBox/z;

    invoke-virtual {v0, v2, v3}, Landroidx/fragment/app/w;->b(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    .line 8
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/MainActivity;->I:Lcn/manstep/phonemirrorBox/z;

    invoke-virtual {v0, v2}, Landroidx/fragment/app/w;->n(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    .line 9
    invoke-virtual {v0}, Landroidx/fragment/app/w;->i()I
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_33} :catch_34

    goto :goto_4d

    :catch_34
    move-exception v0

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSettingsFragment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->g(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_4d
    :goto_4d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initSettingsFragment: SettingsFragment="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/manstep/phonemirrorBox/MainActivity;->I:Lcn/manstep/phonemirrorBox/z;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b1()Z
    .registers 4

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/u;->v()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    return v1

    .line 2
    :cond_c
    sget-boolean v0, Lcn/manstep/phonemirrorBox/p;->j:Z

    if-eqz v0, :cond_11

    return v1

    .line 3
    :cond_11
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    const-string v2, "HideSysNavBar"

    invoke-virtual {v0, v2, v1}, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z

    move-result v0

    .line 4
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v2

    invoke-virtual {v2}, Lcn/manstep/phonemirrorBox/b0;->k()Z

    move-result v2

    if-nez v0, :cond_28

    if-eqz v2, :cond_28

    return v1

    :cond_28
    const/4 v0, 0x0

    return v0
.end method

.method private d1()V
    .registers 4

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f00e4

    .line 2
    invoke-static {p0, v1}, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0f014a

    .line 3
    invoke-static {p0, v1}, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0f0099

    .line 4
    invoke-static {p0, v1}, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0f0095

    .line 5
    invoke-static {p0, v1}, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcn/manstep/phonemirrorBox/MainActivity$q;

    invoke-direct {v2, p0}, Lcn/manstep/phonemirrorBox/MainActivity$q;-><init>(Lcn/manstep/phonemirrorBox/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 7
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 8
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 9
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const/4 v1, -0x1

    .line 10
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcn/manstep/phonemirrorBox/MainActivity$r;

    invoke-direct {v2, p0, v0}, Lcn/manstep/phonemirrorBox/MainActivity$r;-><init>(Lcn/manstep/phonemirrorBox/MainActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private e1()V
    .registers 5

    .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    .line 2
    invoke-virtual {v0, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->n1(Z)V

    .line 3
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->a1()V

    .line 4
    :cond_d
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "WirelessConnectMode"

    invoke-virtual {v0, v3, v2}, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/MainActivity;->h()V

    .line 6
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->N:Z

    return-void
.end method

.method private f1(Landroidx/fragment/app/Fragment;)V
    .registers 3

    if-eqz p1, :cond_14

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->z0()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->J:Landroidx/fragment/app/n;

    invoke-virtual {v0}, Landroidx/fragment/app/n;->l()Landroidx/fragment/app/w;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Landroidx/fragment/app/w;->o(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    .line 4
    invoke-virtual {v0}, Landroidx/fragment/app/w;->h()I

    :cond_14
    return-void
.end method

.method private g1()V
    .registers 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_82

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static/range {v0 .. v0}, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/MainActivity;->h1()V

    return-void

    .line 4
    :cond_18
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_41

    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    const-string v2, "ShowFloatBall"

    invoke-virtual {v0, v2, v1}, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3d

    goto :goto_41

    .line 5
    :cond_3d
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/MainActivity;->h1()V

    goto :goto_82

    :cond_41
    :goto_41
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$AppDrawOverlaySettingsActivity"

    .line 6
    invoke-static {p0, v0, v1}, Lcn/manstep/phonemirrorBox/util/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const v1, 0x7f0f005c

    if-eqz v0, :cond_5e

    .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->J:Landroidx/fragment/app/n;

    new-instance v2, Lcn/manstep/phonemirrorBox/MainActivity$i;

    invoke-direct {v2, p0}, Lcn/manstep/phonemirrorBox/MainActivity$i;-><init>(Lcn/manstep/phonemirrorBox/MainActivity;)V

    new-instance v3, Lcn/manstep/phonemirrorBox/MainActivity$j;

    invoke-direct {v3, p0}, Lcn/manstep/phonemirrorBox/MainActivity$j;-><init>(Lcn/manstep/phonemirrorBox/MainActivity;)V

    invoke-static {v0, v1, v2, v3}, Lcn/manstep/phonemirrorBox/k0/a;->L2(Landroidx/fragment/app/n;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    goto :goto_82

    :cond_5e
    const-string v0, "com.huawei.security.privilegemanager"

    const-string v2, "com.huawei.security.enhanced.permission.ui.activity.MainActivity"

    .line 8
    invoke-static {p0, v0, v2}, Lcn/manstep/phonemirrorBox/util/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 9
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->J:Landroidx/fragment/app/n;

    new-instance v2, Lcn/manstep/phonemirrorBox/MainActivity$l;

    invoke-direct {v2, p0}, Lcn/manstep/phonemirrorBox/MainActivity$l;-><init>(Lcn/manstep/phonemirrorBox/MainActivity;)V

    new-instance v3, Lcn/manstep/phonemirrorBox/MainActivity$m;

    invoke-direct {v3, p0}, Lcn/manstep/phonemirrorBox/MainActivity$m;-><init>(Lcn/manstep/phonemirrorBox/MainActivity;)V

    invoke-static {v0, v1, v2, v3}, Lcn/manstep/phonemirrorBox/k0/a;->L2(Landroidx/fragment/app/n;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    goto :goto_82

    :cond_78
    const-string v0, "MainActivity"

    const-string v1, "requestCanDrawOverlaysPermission: Settings$AppDrawOverlaySettingsActivity does not exist."

    .line 10
    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/MainActivity;->h1()V

    :cond_82
    :goto_82
    return-void
.end method

.method private h1()V
    .registers 6

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    const-string v1, "ShowFloatBall"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "MainActivity"

    const-string v1, "requestPermission: start FloatWindowService"

    .line 2
    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static/range {v1 .. v1}, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    const-class v3, Lcn/manstep/phonemirrorBox/FloatWindowService;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 4
    :cond_26
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/16 v1, 0x17

    const-string v3, "android.permission.RECORD_AUDIO"

    if-eqz v0, :cond_85

    .line 5
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z

    move-result v0

    if-eqz v0, :cond_d2

    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    const-string v4, "PERMISSION"

    invoke-virtual {v0, v4, v2}, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_d2

    .line 6
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v4, v2}, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_d2

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-static {p0, v3}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_64

    .line 10
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_64
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_d2

    const v1, 0x7f120007

    const-string v2, "use_permission_tips"

    .line 12
    invoke-static {p0, v2, v1}, Lcn/manstep/phonemirrorBox/util/n;->t(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;

    move-result-object v2

    new-instance v3, Lcn/manstep/phonemirrorBox/MainActivity$n;

    invoke-direct {v3, p0, v0}, Lcn/manstep/phonemirrorBox/MainActivity$n;-><init>(Lcn/manstep/phonemirrorBox/MainActivity;Ljava/util/List;)V

    new-instance v0, Lcn/manstep/phonemirrorBox/MainActivity$o;

    invoke-direct {v0, p0}, Lcn/manstep/phonemirrorBox/MainActivity$o;-><init>(Lcn/manstep/phonemirrorBox/MainActivity;)V

    invoke-static {v2, v1, v3, v0}, Lcn/manstep/phonemirrorBox/k0/a;->J2(Landroidx/fragment/app/n;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    goto :goto_d2

    .line 14
    :cond_85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_d2

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-static {p0, v3}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_97

    .line 17
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_97
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 18
    invoke-static {p0, v1}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_a2

    .line 19
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a2
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 20
    invoke-static {p0, v1}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_ad

    .line 21
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_ad
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_d2

    new-array v1, v2, [Ljava/lang/String;

    .line 23
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 24
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v1

    const-string v2, "showRequestPermission"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_d2

    .line 25
    iget-boolean v1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->S:Z

    xor-int/2addr v1, v3

    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->S:Z

    const/16 v1, 0x3e8

    .line 26
    invoke-static {p0, v0, v1}, Landroidx/core/app/a;->m(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_d2
    :goto_d2
    return-void
.end method

.method private init()V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->X:Z

    if-nez v0, :cond_d7

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->X:Z

    const v0, 0x7f090238

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 4
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/MainActivity;->P0()V

    .line 5
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    const-string v2, "ShowFloatBall"

    invoke-virtual {v0, v2, v1}, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 6
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static/range {v1 .. v1}, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 7
    :cond_35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcn/manstep/phonemirrorBox/MainActivity$b;

    invoke-direct {v1, p0}, Lcn/manstep/phonemirrorBox/MainActivity$b;-><init>(Lcn/manstep/phonemirrorBox/MainActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/MainActivity;->Z0()V

    .line 9
    invoke-static {}, Lcn/manstep/phonemirrorBox/util/j;->c()Lcn/manstep/phonemirrorBox/util/j;

    move-result-object v0

    const-wide/16 v1, 0x32

    new-instance v3, Lcn/manstep/phonemirrorBox/MainActivity$c;

    invoke-direct {v3, p0}, Lcn/manstep/phonemirrorBox/MainActivity$c;-><init>(Lcn/manstep/phonemirrorBox/MainActivity;)V

    const-string v4, "initSettingsFragment"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcn/manstep/phonemirrorBox/util/j;->e(Ljava/lang/String;JLjava/lang/Runnable;)Lcn/manstep/phonemirrorBox/util/j;

    .line 10
    new-instance v0, Lcn/manstep/phonemirrorBox/MainActivity$d;

    invoke-direct {v0, p0}, Lcn/manstep/phonemirrorBox/MainActivity$d;-><init>(Lcn/manstep/phonemirrorBox/MainActivity;)V

    const-wide/16 v1, 0x320

    invoke-direct {p0, v0, v1, v2}, Lcn/manstep/phonemirrorBox/MainActivity;->R0(Ljava/lang/Runnable;J)V

    .line 11
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/a;->a()V

    .line 12
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->G:Lcn/manstep/phonemirrorBox/p0/c;

    invoke-virtual {v0, v1}, Lcn/manstep/phonemirrorBox/a;->B(Lcn/manstep/phonemirrorBox/a$a;)V

    .line 13
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;

    invoke-virtual {v0, p0}, Lcn/manstep/phonemirrorBox/a;->A(Lcn/manstep/phonemirrorBox/a$b;)V

    const v0, 0x7f090002

    .line 14
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->D:Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;

    const v0, 0x7f090001

    .line 15
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->E:Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;

    .line 16
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/MainActivity;->J0()V

    .line 17
    new-instance v0, Lcn/manstep/phonemirrorBox/util/t;

    invoke-direct {v0, p0}, Lcn/manstep/phonemirrorBox/util/t;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->M:Lcn/manstep/phonemirrorBox/util/t;

    .line 18
    invoke-virtual {v0, p0}, Lcn/manstep/phonemirrorBox/util/t;->b(Lcn/manstep/phonemirrorBox/util/t$a;)V

    .line 19
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "editText"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_b7

    const v0, 0x7f0900dd

    .line 20
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_b7

    .line 21
    sget-object v1, Lcn/manstep/phonemirrorBox/p;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    :cond_b7
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "boxintro"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_d7

    .line 23
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->z:Landroid/widget/TextView;

    if-eqz v0, :cond_d7

    const v1, 0x7f0f0006

    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_d7
    return-void
.end method

.method private j1(I)V
    .registers 5

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    const-string v1, "NightMode"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I

    move-result v0

    .line 2
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z

    move-result v1

    if-eqz v1, :cond_3a

    if-ne v0, v2, :cond_3a

    and-int/lit8 p1, p1, 0x30

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDayNightMode: uiMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainActivity"

    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x20

    if-ne p1, v0, :cond_35

    const/16 p1, 0x10

    .line 4
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->L(I)V

    goto :goto_3a

    :cond_35
    const/16 p1, 0x11

    .line 5
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->L(I)V

    :cond_3a
    :goto_3a
    return-void
.end method

.method private k1(Z)V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MainActivity,setFullScreen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;

    if-eqz v0, :cond_1f

    invoke-virtual {v0, p1}, Lcn/manstep/phonemirrorBox/a;->C(Z)Z

    move-result v0

    if-nez v0, :cond_1f

    return-void

    :cond_1f
    if-eqz p1, :cond_26

    .line 3
    sget-boolean v0, Lcn/manstep/phonemirrorBox/MainActivity;->b0:Z

    if-nez v0, :cond_26

    return-void

    .line 4
    :cond_26
    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/u;->X()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void

    .line 7
    :cond_3d
    sget v0, Lcn/manstep/phonemirrorBox/p;->l:I

    sget v1, Lcn/manstep/phonemirrorBox/p;->k:I

    if-le v0, v1, :cond_6d

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setFullScreen: exitFullScreen "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcn/manstep/phonemirrorBox/p;->k:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcn/manstep/phonemirrorBox/p;->l:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MainActivity"

    invoke-static {v0, p1}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/MainActivity;->T0(Landroid/view/Window;)V

    return-void

    :cond_6d
    if-eqz p1, :cond_77

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/MainActivity;->S0(Landroid/view/Window;)V

    goto :goto_7e

    .line 11
    :cond_77
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/MainActivity;->T0(Landroid/view/Window;)V

    :goto_7e
    return-void
.end method

.method static synthetic n0(Lcn/manstep/phonemirrorBox/MainActivity;IZ)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/manstep/phonemirrorBox/MainActivity;->L0(IZ)V

    return-void
.end method

.method private n1(II)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->z:Landroid/widget/TextView;

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/MainActivity;->z:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(I)V

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

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/MainActivity;->z:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_6
    invoke-virtual {v0, p1}, Lcn/manstep/phonemirrorBox/util/t;->c(Landroid/view/MotionEvent;)Z

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
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/MainActivity;->b1()Z

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
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/MainActivity;->g1()V

    return-void
.end method

.method static synthetic w0(Lcn/manstep/phonemirrorBox/MainActivity;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/MainActivity;->h1()V

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
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/MainActivity;->M0()V

    return-void
.end method

.method static synthetic z0(Lcn/manstep/phonemirrorBox/MainActivity;)Landroidx/fragment/app/n;
    .registers 1

    .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->J:Landroidx/fragment/app/n;

    return-object p0
.end method


# virtual methods
.method public A(Z)V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MainActivity,onNoticeBoxWifiConnStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;

    invoke-virtual {v0, p1}, Lcn/manstep/phonemirrorBox/a;->l(Z)V

    return-void
.end method

.method public B()V
    .registers 3

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcn/manstep/phonemirrorBox/MainActivity;->K0(Z)V

    const v0, 0x7f0f0088

    const v1, -0xff0100

    .line 2
    invoke-direct {p0, v0, v1}, Lcn/manstep/phonemirrorBox/MainActivity;->n1(II)V

    return-void
.end method

.method public C()V
    .registers 3

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->u()V

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/a;->e()V

    const v0, 0x7f0f0006

    const/4 v1, -0x1

    .line 3
    invoke-direct {p0, v0, v1}, Lcn/manstep/phonemirrorBox/MainActivity;->n1(II)V

    const-string v0, ""

    .line 4
    invoke-virtual {p0, v0}, Lcn/manstep/phonemirrorBox/MainActivity;->e(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->getInstance()Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->release()V

    .line 6
    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/u;->M()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 7
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->T:Z

    if-eqz v0, :cond_3e

    .line 8
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    const-string v0, "MainActivity"

    const-string v1, "onNoticeBoxPlugIn: Bluetooth enable"

    .line 9
    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/util/s;->p(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->T:Z

    .line 11
    :cond_3e
    invoke-static {}, Lcn/manstep/phonemirrorBox/util/r;->a()Lcn/manstep/phonemirrorBox/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/util/r;->e()V

    return-void
.end method

.method public D()V
    .registers 7

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z

    move-result v0

    if-eqz v0, :cond_119

    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->N:Z

    if-eqz v0, :cond_c

    goto/16 :goto_119

    .line 2
    :cond_c
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 3
    invoke-static {}, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->getInstance()Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->release()V

    .line 4
    invoke-static {}, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/manstep/phonemirrorBox/u0/c;->w(Landroid/content/Context;)Z

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNoticePhonePlug: bBtEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->T:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainActivity"

    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/u;->M()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_56

    .line 7
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->T:Z

    if-eqz v0, :cond_56

    .line 8
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    const-string v0, "onNoticePhonePlug: Bluetooth enable"

    .line 9
    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iput-boolean v2, p0, Lcn/manstep/phonemirrorBox/MainActivity;->T:Z

    :cond_56
    const-string v0, "window"

    .line 11
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 12
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 13
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_71

    .line 14
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_78

    .line 15
    :cond_71
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 16
    :goto_78
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Lcn/manstep/phonemirrorBox/p;->f(II)V

    .line 17
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 18
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lcn/manstep/phonemirrorBox/p;->n:I

    .line 19
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v0, Lcn/manstep/phonemirrorBox/p;->o:I

    .line 20
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->E()Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 21
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->L:Z

    if-eqz v0, :cond_9d

    .line 22
    iput-boolean v2, p0, Lcn/manstep/phonemirrorBox/MainActivity;->L:Z

    .line 23
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/MainActivity;->p1()V

    .line 24
    :cond_9d
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/k;->j:Z

    if-eqz v0, :cond_a4

    .line 25
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/k;->recreate()V

    .line 26
    :cond_a4
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->h()Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 27
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;

    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v1

    const-string v3, "MicType"

    invoke-virtual {v1, v3, v2}, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/manstep/phonemirrorBox/a;->h(I)V

    .line 28
    :cond_b9
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/a;->q()V

    .line 29
    invoke-direct {p0, v2}, Lcn/manstep/phonemirrorBox/MainActivity;->K0(Z)V

    const/4 v0, 0x0

    .line 30
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "tvNoticePlug"

    const-string v5, "id"

    invoke-virtual {v1, v4, v5, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_da

    .line 31
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    :cond_da
    if-eqz v0, :cond_119

    .line 32
    iget v1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->v:I

    const v3, 0x7f0f00c6

    const/4 v4, 0x1

    if-eq v1, v4, :cond_104

    const/4 v5, 0x3

    if-eq v1, v5, :cond_ee

    const v1, 0x7f0f019e

    .line 33
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_119

    .line 34
    :cond_ee
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, "Android Auto"

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_119

    .line 35
    :cond_104
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, "CarPlay"

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_119
    :goto_119
    return-void
.end method

.method public F()V
    .registers 3

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcn/manstep/phonemirrorBox/MainActivity;->K0(Z)V

    const v0, 0x7f0f021c

    const/16 v1, -0x100

    .line 2
    invoke-direct {p0, v0, v1}, Lcn/manstep/phonemirrorBox/MainActivity;->n1(II)V

    .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/a;->p()V

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

    invoke-virtual {v0, p1}, Lcn/manstep/phonemirrorBox/a;->d(Z)V

    return-void
.end method

.method public I()V
    .registers 3

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcn/manstep/phonemirrorBox/MainActivity;->K0(Z)V

    const v0, 0x7f0f021a

    const v1, -0xff0100

    .line 2
    invoke-direct {p0, v0, v1}, Lcn/manstep/phonemirrorBox/MainActivity;->n1(II)V

    return-void
.end method

.method public J(Z)V
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNoticeWifiTransChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MainActivity"

    invoke-static {v2, v0}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_32

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/manstep/phonemirrorBox/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_32
    const v0, 0x7f090294

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_48

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_44

    const/16 p1, 0x8

    goto :goto_45

    :cond_44
    const/4 p1, 0x0

    :goto_45
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_48
    return-void
.end method

.method public K()V
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MainActivity,onSettingsPageBackFirstPage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->w:Landroid/widget/ViewAnimator;

    invoke-virtual {v1}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->I:Lcn/manstep/phonemirrorBox/z;

    invoke-virtual {p0, v0}, Lcn/manstep/phonemirrorBox/MainActivity;->f(Landroidx/fragment/app/Fragment;)V

    .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/manstep/phonemirrorBox/a;->x(Z)V

    .line 5
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/c;->n()Lcn/manstep/phonemirrorBox/f0/c;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static/range {v2 .. v2}, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/manstep/phonemirrorBox/f0/c;->p(Landroid/content/Context;)V

    .line 6
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/b;->j()Lcn/manstep/phonemirrorBox/f0/b;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static/range {v2 .. v2}, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/manstep/phonemirrorBox/f0/b;->l(Landroid/content/Context;)V

    .line 7
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/e;->j()Lcn/manstep/phonemirrorBox/f0/e;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static/range {v2 .. v2}, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/manstep/phonemirrorBox/f0/e;->l(Landroid/content/Context;)V

    .line 8
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/g;->j()Lcn/manstep/phonemirrorBox/f0/g;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static/range {v2 .. v2}, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/manstep/phonemirrorBox/f0/g;->l(Landroid/content/Context;)V

    .line 9
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/f;->j()Lcn/manstep/phonemirrorBox/f0/f;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static/range {v2 .. v2}, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/manstep/phonemirrorBox/f0/f;->l(Landroid/content/Context;)V

    .line 10
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/MainActivity;->G()V

    .line 11
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->C()Z

    move-result v0

    if-eqz v0, :cond_90

    .line 12
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcn/manstep/phonemirrorBox/MainActivity$v;

    invoke-direct {v2, p0}, Lcn/manstep/phonemirrorBox/MainActivity$v;-><init>(Lcn/manstep/phonemirrorBox/MainActivity;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_a8

    .line 13
    :cond_90
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z

    move-result v0

    if-eqz v0, :cond_a8

    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z

    move-result v0

    if-nez v0, :cond_a8

    const-string v0, "MainActivity"

    const-string v2, "onSettingsPageBackFirstPage: send_g_open_async"

    .line 14
    invoke-static {v0, v2}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->Y0()V

    .line 16
    :cond_a8
    :goto_a8
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->O:Z

    if-eqz v0, :cond_af

    .line 17
    invoke-direct {p0, v1}, Lcn/manstep/phonemirrorBox/MainActivity;->k1(Z)V

    :cond_af
    return-void
.end method

.method public U0()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->H:Z

    if-eqz v0, :cond_5

    return-void

    .line 2
    :cond_5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->I:Lcn/manstep/phonemirrorBox/z;

    if-nez v0, :cond_a

    return-void

    .line 3
    :cond_a
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/manstep/phonemirrorBox/a;->x(Z)V

    .line 4
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->O:Z

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 5
    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    :cond_19
    const/4 v0, 0x5

    .line 6
    invoke-virtual {p0, v0}, Lcn/manstep/phonemirrorBox/MainActivity;->c1(I)V

    .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->G:Lcn/manstep/phonemirrorBox/p0/c;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/p0/c;->h()V

    return-void
.end method

.method public a()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    return-void
.end method

.method public b()V
    .registers 3

    const-string v0, "Action"

    const-string v1, "OnRestart"

    .line 1
    invoke-virtual {p0, v0, v1}, Lcn/manstep/phonemirrorBox/MainActivity;->i1(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/a;->w()V

    return-void
.end method

.method public c1(I)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->J:Landroidx/fragment/app/n;

    invoke-virtual {v0}, Landroidx/fragment/app/n;->l()Landroidx/fragment/app/w;

    move-result-object v0

    const v1, 0x7f010029

    const v2, 0x7f01002a

    const v3, 0x7f010028

    const v4, 0x7f01002b

    .line 2
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/fragment/app/w;->r(IIII)Landroidx/fragment/app/w;

    const/4 v1, 0x5

    if-ne p1, v1, :cond_26

    .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->I:Lcn/manstep/phonemirrorBox/z;

    if-nez p1, :cond_23

    .line 4
    new-instance p1, Lcn/manstep/phonemirrorBox/z;

    invoke-direct {p1}, Lcn/manstep/phonemirrorBox/z;-><init>()V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->I:Lcn/manstep/phonemirrorBox/z;

    .line 5
    :cond_23
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->I:Lcn/manstep/phonemirrorBox/z;

    goto :goto_39

    :cond_26
    const/16 v1, 0xb

    if-ne p1, v1, :cond_38

    .line 6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->K:Lcn/manstep/phonemirrorBox/l0/n;

    if-nez p1, :cond_35

    .line 7
    new-instance p1, Lcn/manstep/phonemirrorBox/l0/n;

    invoke-direct {p1}, Lcn/manstep/phonemirrorBox/l0/n;-><init>()V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->K:Lcn/manstep/phonemirrorBox/l0/n;

    .line 8
    :cond_35
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->K:Lcn/manstep/phonemirrorBox/l0/n;

    goto :goto_39

    :cond_38
    const/4 p1, 0x0

    :goto_39
    if-eqz p1, :cond_4b

    .line 9
    :try_start_3b
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->q0()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 10
    invoke-virtual {v0, p1}, Landroidx/fragment/app/w;->t(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    goto :goto_4b

    :cond_45
    const v1, 0x7f09015e

    .line 11
    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/w;->b(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    .line 12
    :cond_4b
    :goto_4b
    invoke-virtual {v0}, Landroidx/fragment/app/w;->i()I
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_4e} :catch_4f

    goto :goto_6a

    :catch_4f
    move-exception p1

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEnterPage: \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->g(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MainActivity"

    invoke-static {v0, p1}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6a
    return-void
.end method

.method public d()V
    .registers 1

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/MainActivity;->q1(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_8
    :try_start_8
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_c} :catch_d

    return p1

    :catch_d
    const/4 p1, 0x0

    return p1
.end method

.method public e(Ljava/lang/String;)V
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MainActivity,onShowBoxVersion: BoxVer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",APP:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "2025.03.19.1126"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 3
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    const-string v1, "BoxVersion"

    invoke-virtual {v0, v1, p1}, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    :cond_35
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/a;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_44

    .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;

    invoke-virtual {v0, p1}, Lcn/manstep/phonemirrorBox/a;->u(Ljava/lang/String;)V

    goto :goto_9c

    .line 6
    :cond_44
    :try_start_44
    invoke-static {}, Lcn/manstep/phonemirrorBox/util/JniTools;->check()I

    move-result v0
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_48} :catch_4b
    .catch Ljava/lang/Error; {:try_start_44 .. :try_end_48} :catch_49

    goto :goto_6a

    :catch_49
    move-exception v0

    goto :goto_4c

    :catch_4b
    move-exception v0

    .line 7
    :goto_4c
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onShowBoxVersion: \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->g(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MainActivity"

    invoke-static {v2, v0}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_6a
    if-eqz v0, :cond_92

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MainActivity,onShowBoxVersion: ret="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    const/4 p1, 0x1

    if-eq v0, p1, :cond_91

    const/4 p1, 0x2

    if-ne v0, p1, :cond_87

    goto :goto_91

    :cond_87
    const/4 p1, 0x3

    if-ne v0, p1, :cond_8e

    .line 10
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/MainActivity;->e1()V

    goto :goto_91

    .line 11
    :cond_8e
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/MainActivity;->e1()V

    :cond_91
    :goto_91
    return-void

    .line 12
    :cond_92
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/p;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9c

    .line 13
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/MainActivity;->e1()V

    return-void

    .line 14
    :cond_9c
    :goto_9c
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;

    invoke-virtual {v0, p1}, Lcn/manstep/phonemirrorBox/a;->u(Ljava/lang/String;)V

    .line 15
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->N:Z

    .line 16
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BoxVerText"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_c0

    .line 17
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_c0

    .line 18
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    :cond_c0
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->o()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_df

    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->p()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_df

    .line 20
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/MainActivity;->M0()V

    :cond_df
    return-void
.end method

.method public f(Landroidx/fragment/app/Fragment;)V
    .registers 7

    if-eqz p1, :cond_1d

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->J:Landroidx/fragment/app/n;

    invoke-virtual {v0}, Landroidx/fragment/app/n;->l()Landroidx/fragment/app/w;

    move-result-object v0

    const v1, 0x7f010028

    const v2, 0x7f01002b

    const v3, 0x7f010029

    const v4, 0x7f01002a

    .line 2
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/fragment/app/w;->r(IIII)Landroidx/fragment/app/w;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/fragment/app/w;->n(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    .line 4
    invoke-virtual {v0}, Landroidx/fragment/app/w;->k()V

    :cond_1d
    return-void
.end method

.method public g(I)V
    .registers 5

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcn/manstep/phonemirrorBox/MainActivity;->K0(Z)V

    const v1, -0xff0100

    if-nez p1, :cond_10

    const v0, 0x7f0f0010

    .line 2
    invoke-direct {p0, v0, v1}, Lcn/manstep/phonemirrorBox/MainActivity;->n1(II)V

    goto :goto_33

    :cond_10
    const/high16 v2, -0x10000

    if-ne v0, p1, :cond_1b

    const v0, 0x7f0f000f

    .line 3
    invoke-direct {p0, v0, v2}, Lcn/manstep/phonemirrorBox/MainActivity;->n1(II)V

    goto :goto_33

    :cond_1b
    const/4 v0, 0x2

    if-ne v0, p1, :cond_2a

    const v0, 0x7f0f000d

    .line 4
    invoke-direct {p0, v0, v1}, Lcn/manstep/phonemirrorBox/MainActivity;->n1(II)V

    .line 5
    sget v0, Lcn/manstep/phonemirrorBox/MainActivity;->a0:I

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->c(I)V

    goto :goto_33

    :cond_2a
    const/4 v0, 0x3

    if-ne v0, p1, :cond_33

    const v0, 0x7f0f000c

    .line 6
    invoke-direct {p0, v0, v2}, Lcn/manstep/phonemirrorBox/MainActivity;->n1(II)V

    :cond_33
    :goto_33
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->H:Z

    .line 8
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;

    invoke-virtual {v0, p1}, Lcn/manstep/phonemirrorBox/a;->i(I)V

    .line 9
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->K:Lcn/manstep/phonemirrorBox/l0/n;

    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/MainActivity;->f1(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public h()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcn/manstep/phonemirrorBox/MainActivity;->K0(Z)V

    const v0, 0x7f0f01bf

    const/high16 v1, -0x10000

    .line 3
    invoke-direct {p0, v0, v1}, Lcn/manstep/phonemirrorBox/MainActivity;->n1(II)V

    .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/a;->k()V

    goto :goto_1f

    .line 5
    :cond_1a
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/a;->z()V

    :goto_1f
    return-void
.end method

.method public i()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/a;->v()V

    :cond_7
    return-void
.end method

.method i1(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.manstep.phonemirror.MirrorService.INTENT_MSG_IN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public j()V
    .registers 5

    .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    if-eqz v0, :cond_22

    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->O:Z

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    const/16 v1, 0x19

    .line 2
    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    .line 3
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->b1()Z

    .line 4
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcn/manstep/phonemirrorBox/MainActivity$u;

    invoke-direct {v1, p0}, Lcn/manstep/phonemirrorBox/MainActivity$u;-><init>(Lcn/manstep/phonemirrorBox/MainActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_22
    return-void
.end method

.method public k(I)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->w:Landroid/widget/ViewAnimator;

    const/4 v1, 0x1

    if-eqz v0, :cond_1e

    if-ltz p1, :cond_1e

    .line 2
    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_e

    goto :goto_1e

    .line 3
    :cond_e
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->w:Landroid/widget/ViewAnimator;

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcn/manstep/phonemirrorBox/MainActivity;->w:Landroid/widget/ViewAnimator;

    invoke-virtual {v2, p1}, Landroid/widget/ViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eq v0, p1, :cond_1e

    const/4 p1, 0x0

    return p1

    :cond_1e
    :goto_1e
    return v1
.end method

.method public l()V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNoticeBoxDisconnected: bRecreate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/manstep/phonemirrorBox/k;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainActivity"

    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/a;->f()V

    const v0, 0x7f0f0006

    const/4 v2, -0x1

    .line 3
    invoke-direct {p0, v0, v2}, Lcn/manstep/phonemirrorBox/MainActivity;->n1(II)V

    const-string v0, ""

    .line 4
    invoke-virtual {p0, v0}, Lcn/manstep/phonemirrorBox/MainActivity;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcn/manstep/phonemirrorBox/MainActivity;->H(Z)V

    .line 6
    invoke-virtual {p0, v0}, Lcn/manstep/phonemirrorBox/MainActivity;->A(Z)V

    .line 7
    invoke-static {}, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->getInstance()Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->release()V

    .line 8
    iget-boolean v2, p0, Lcn/manstep/phonemirrorBox/k;->j:Z

    if-eqz v2, :cond_3e

    .line 9
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/k;->recreate()V

    .line 10
    :cond_3e
    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object v2

    invoke-virtual {v2}, Lcn/manstep/phonemirrorBox/u;->M()Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 11
    iget-boolean v2, p0, Lcn/manstep/phonemirrorBox/MainActivity;->T:Z

    if-eqz v2, :cond_5a

    .line 12
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    const-string v2, "onNoticeBoxDisconnected: Bluetooth enable"

    .line 13
    invoke-static {v1, v2}, Lcn/manstep/phonemirrorBox/util/s;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->T:Z

    .line 15
    :cond_5a
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->R:Lcn/manstep/phonemirrorBox/k0/a;

    if-eqz v0, :cond_69

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->z0()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 16
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->R:Lcn/manstep/phonemirrorBox/k0/a;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/k0/a;->j2()V

    .line 17
    :cond_69
    invoke-static {}, Lcn/manstep/phonemirrorBox/util/r;->a()Lcn/manstep/phonemirrorBox/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/util/r;->e()V

    return-void
.end method

.method public l1(ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Z)V
    .registers 15

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object p3

    if-eqz p7, :cond_9

    const-string v0, "AppLatestVer"

    goto :goto_b

    :cond_9
    const-string v0, "BoxLatestVer"

    :goto_b
    const-string v1, ""

    invoke-virtual {p3, v0, v1}, Lcn/manstep/phonemirrorBox/b0;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 2
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_18

    return-void

    .line 3
    :cond_18
    iget-object p3, p0, Lcn/manstep/phonemirrorBox/MainActivity;->R:Lcn/manstep/phonemirrorBox/k0/a;

    if-eqz p3, :cond_23

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->z0()Z

    move-result p3

    if-eqz p3, :cond_23

    return-void

    .line 4
    :cond_23
    sget-boolean p3, Lcn/manstep/phonemirrorBox/BoxInterface/b;->h:Z

    if-eqz p3, :cond_28

    return-void

    .line 5
    :cond_28
    invoke-virtual {p0}, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;

    move-result-object p3

    new-instance v6, Lcn/manstep/phonemirrorBox/MainActivity$s;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p4

    move v4, p7

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcn/manstep/phonemirrorBox/MainActivity$s;-><init>(Lcn/manstep/phonemirrorBox/MainActivity;JZLjava/lang/String;)V

    if-eqz p1, :cond_3a

    const/4 p1, 0x0

    goto :goto_3f

    :cond_3a
    new-instance p1, Lcn/manstep/phonemirrorBox/MainActivity$t;

    invoke-direct {p1, p0, p7, p2}, Lcn/manstep/phonemirrorBox/MainActivity$t;-><init>(Lcn/manstep/phonemirrorBox/MainActivity;ZLjava/lang/String;)V

    :goto_3f
    invoke-static {p3, v6, p1}, Lcn/manstep/phonemirrorBox/k0/a;->K2(Landroidx/fragment/app/n;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Lcn/manstep/phonemirrorBox/k0/a;

    move-result-object p1

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->R:Lcn/manstep/phonemirrorBox/k0/a;

    return-void
.end method

.method public m(Z)V
    .registers 3

    if-eqz p1, :cond_b

    const p1, 0x7f0f0105

    const/high16 v0, -0x10000

    .line 1
    invoke-direct {p0, p1, v0}, Lcn/manstep/phonemirrorBox/MainActivity;->n1(II)V

    goto :goto_23

    .line 2
    :cond_b
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z

    move-result p1

    const/4 v0, -0x1

    if-eqz p1, :cond_19

    const p1, 0x7f0f0006

    .line 3
    invoke-direct {p0, p1, v0}, Lcn/manstep/phonemirrorBox/MainActivity;->n1(II)V

    goto :goto_1f

    :cond_19
    const p1, 0x7f0f0007

    .line 4
    invoke-direct {p0, p1, v0}, Lcn/manstep/phonemirrorBox/MainActivity;->n1(II)V

    :goto_1f
    const/4 p1, 0x1

    .line 5
    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/MainActivity;->K0(Z)V

    :goto_23
    return-void
.end method

.method public m1()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->Q:Lcn/manstep/phonemirrorBox/customview/a;

    if-nez v0, :cond_38

    .line 2
    new-instance v0, Lcn/manstep/phonemirrorBox/customview/a;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static/range {v1 .. v1}, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/manstep/phonemirrorBox/customview/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->Q:Lcn/manstep/phonemirrorBox/customview/a;

    .line 3
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->F:Lcn/manstep/phonemirrorBox/floatwindow/b;

    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070094

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070093

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcn/manstep/phonemirrorBox/floatwindow/b;->b(Landroid/view/View;FF)V

    .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->Q:Lcn/manstep/phonemirrorBox/customview/a;

    new-instance v1, Lcn/manstep/phonemirrorBox/MainActivity$b0;

    invoke-direct {v1, p0}, Lcn/manstep/phonemirrorBox/MainActivity$b0;-><init>(Lcn/manstep/phonemirrorBox/MainActivity;)V

    invoke-virtual {v0, v1}, Lcn/manstep/phonemirrorBox/customview/a;->setCallback(Lcn/manstep/phonemirrorBox/customview/a$g;)V

    :cond_38
    return-void
.end method

.method public n(Z)V
    .registers 5

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->H:Z

    if-eqz p1, :cond_a

    .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->I:Lcn/manstep/phonemirrorBox/z;

    invoke-virtual {p0, p1}, Lcn/manstep/phonemirrorBox/MainActivity;->f(Landroidx/fragment/app/Fragment;)V

    .line 3
    :cond_a
    invoke-direct {p0, v0}, Lcn/manstep/phonemirrorBox/MainActivity;->K0(Z)V

    const p1, 0x7f0f000b

    const/16 v0, -0x100

    .line 4
    invoke-direct {p0, p1, v0}, Lcn/manstep/phonemirrorBox/MainActivity;->n1(II)V

    .line 5
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/a;->j()V

    .line 6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->U:Lcn/manstep/phonemirrorBox/util/u;

    new-instance v0, Lcn/manstep/phonemirrorBox/MainActivity$x;

    invoke-direct {v0, p0}, Lcn/manstep/phonemirrorBox/MainActivity$x;-><init>(Lcn/manstep/phonemirrorBox/MainActivity;)V

    const-wide/16 v1, 0x320

    invoke-virtual {p1, v0, v1, v2}, Lcn/manstep/phonemirrorBox/util/u;->b(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public o()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/k;->finish()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 8

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/e;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MainActivity,onActivityResult: requestCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;

    invoke-virtual {v0, p1, p2, p3}, Lcn/manstep/phonemirrorBox/a;->c(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_28

    return-void

    :cond_28
    const/16 v0, 0x45

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne p1, v0, :cond_9b

    const-string p1, "MainActivity,onActivityResult: "

    if-ne p2, v3, :cond_6e

    .line 4
    invoke-static {p3}, Lcom/yalantis/ucrop/UCrop;->getOutput(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object p2

    .line 5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    if-eqz p2, :cond_139

    .line 6
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    .line 7
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object p1

    const-string p3, "custom"

    invoke-virtual {p1, p3, p2}, Lcn/manstep/phonemirrorBox/b0;->z(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->t:Z

    goto/16 :goto_139

    :cond_6e
    const/16 v0, 0x60

    if-ne p2, v0, :cond_90

    .line 10
    invoke-static {p3}, Lcom/yalantis/ucrop/UCrop;->getError(Landroid/content/Intent;)Ljava/lang/Throwable;

    move-result-object p2

    .line 11
    iput-boolean v2, p0, Lcn/manstep/phonemirrorBox/MainActivity;->t:Z

    .line 12
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    goto/16 :goto_139

    :cond_90
    if-nez p2, :cond_139

    .line 13
    iput-boolean v2, p0, Lcn/manstep/phonemirrorBox/MainActivity;->t:Z

    const-string p1, "MainActivity,onActivityResult: Activity.RESULT_CANCELED"

    .line 14
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    goto/16 :goto_139

    :cond_9b
    const/16 v0, 0x64

    if-ne p1, v0, :cond_11f

    if-ne p2, v3, :cond_139

    .line 15
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    .line 16
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    .line 17
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MainActivity,onActivityResult: CurrentSizeRange: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->h(Ljava/lang/String;)V

    const-string p1, "MaxSize"

    .line 21
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcn/manstep/phonemirrorBox/util/x;

    if-eqz p1, :cond_139

    .line 22
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->I:Lcn/manstep/phonemirrorBox/z;

    if-eqz p1, :cond_139

    iget-object p1, p1, Lcn/manstep/phonemirrorBox/z;->y0:Lcn/manstep/phonemirrorBox/x0/k;

    if-eqz p1, :cond_139

    const-string p1, "ReAddSettingsFragment"

    .line 23
    invoke-virtual {p3, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_139

    .line 24
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->J:Landroidx/fragment/app/n;

    invoke-virtual {p1}, Landroidx/fragment/app/n;->l()Landroidx/fragment/app/w;

    move-result-object p1

    iget-object p2, p0, Lcn/manstep/phonemirrorBox/MainActivity;->I:Lcn/manstep/phonemirrorBox/z;

    invoke-virtual {p1, p2}, Landroidx/fragment/app/w;->o(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    invoke-virtual {p1}, Landroidx/fragment/app/w;->i()I

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->I:Lcn/manstep/phonemirrorBox/z;

    .line 26
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/MainActivity;->a1()V

    goto :goto_139

    :cond_11f
    if-ne p1, v1, :cond_139

    if-ne p2, v3, :cond_139

    .line 27
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 28
    new-instance p2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object p3

    const-string v0, "custom.png"

    invoke-direct {p2, p3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    .line 29
    invoke-direct {p0, p1, p2}, Lcn/manstep/phonemirrorBox/MainActivity;->Q0(Landroid/net/Uri;Landroid/net/Uri;)V

    :cond_139
    :goto_139
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->G:Lcn/manstep/phonemirrorBox/p0/c;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/p0/c;->q()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MainActivity,onConfigurationChanged: newConfig.orientation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1}, Lcn/manstep/phonemirrorBox/k;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;

    invoke-virtual {v0, p1}, Lcn/manstep/phonemirrorBox/a;->m(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MainActivity,onConfigurationChanged: mFirstPageEx= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_38
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    invoke-direct {p0, v0}, Lcn/manstep/phonemirrorBox/MainActivity;->j1(I)V

    .line 6
    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/e;->C()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 7
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/MainActivity;->p1()V

    .line 8
    :cond_46
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    const/16 v2, 0x1f4

    const-string v3, "MainActivity,onConfigurationChanged: "

    const-string v4, " "

    const/4 v5, 0x1

    if-ne v0, v1, :cond_86

    .line 9
    iput-boolean v5, p0, Lcn/manstep/phonemirrorBox/MainActivity;->L:Z

    .line 10
    sget v0, Lcn/manstep/phonemirrorBox/p;->k:I

    sget v1, Lcn/manstep/phonemirrorBox/p;->l:I

    if-ge v0, v1, :cond_61

    .line 11
    sget v0, Lcn/manstep/phonemirrorBox/p;->k:I

    .line 12
    sget v1, Lcn/manstep/phonemirrorBox/p;->l:I

    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/p;->f(II)V

    .line 13
    :cond_61
    sget v0, Lcn/manstep/phonemirrorBox/p;->n:I

    sget v1, Lcn/manstep/phonemirrorBox/p;->o:I

    if-ge v0, v1, :cond_6f

    .line 14
    sget v0, Lcn/manstep/phonemirrorBox/p;->n:I

    .line 15
    sget v1, Lcn/manstep/phonemirrorBox/p;->o:I

    sput v1, Lcn/manstep/phonemirrorBox/p;->n:I

    .line 16
    sput v0, Lcn/manstep/phonemirrorBox/p;->o:I

    .line 17
    :cond_6f
    sget v0, Lcn/manstep/phonemirrorBox/p;->k:I

    sget v1, Lcn/manstep/phonemirrorBox/p;->l:I

    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->g(II)V

    .line 18
    invoke-static {v5, v2}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    .line 19
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->G:Lcn/manstep/phonemirrorBox/p0/c;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/p0/c;->m()Z

    move-result v0

    if-eqz v0, :cond_100

    .line 20
    invoke-direct {p0, v5}, Lcn/manstep/phonemirrorBox/MainActivity;->k1(Z)V

    goto/16 :goto_100

    :cond_86
    if-ne v0, v5, :cond_100

    .line 21
    iput-boolean v5, p0, Lcn/manstep/phonemirrorBox/MainActivity;->L:Z

    .line 22
    sget v0, Lcn/manstep/phonemirrorBox/p;->k:I

    sget v1, Lcn/manstep/phonemirrorBox/p;->l:I

    if-le v0, v1, :cond_97

    .line 23
    sget v0, Lcn/manstep/phonemirrorBox/p;->k:I

    .line 24
    sget v1, Lcn/manstep/phonemirrorBox/p;->l:I

    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/p;->f(II)V

    .line 25
    :cond_97
    sget v0, Lcn/manstep/phonemirrorBox/p;->n:I

    sget v1, Lcn/manstep/phonemirrorBox/p;->o:I

    if-le v0, v1, :cond_a5

    .line 26
    sget v0, Lcn/manstep/phonemirrorBox/p;->n:I

    .line 27
    sget v1, Lcn/manstep/phonemirrorBox/p;->o:I

    sput v1, Lcn/manstep/phonemirrorBox/p;->n:I

    .line 28
    sput v0, Lcn/manstep/phonemirrorBox/p;->o:I

    .line 29
    :cond_a5
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 30
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 32
    iget-boolean v6, p0, Lcn/manstep/phonemirrorBox/k;->b:Z

    if-eqz v6, :cond_f2

    .line 33
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcn/manstep/phonemirrorBox/p;->o:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 34
    iget v0, v1, Landroid/graphics/Point;->y:I

    sget v1, Lcn/manstep/phonemirrorBox/p;->o:I

    if-ge v0, v1, :cond_f2

    .line 35
    sput v0, Lcn/manstep/phonemirrorBox/p;->o:I

    .line 36
    :cond_f2
    sget v0, Lcn/manstep/phonemirrorBox/p;->n:I

    sget v1, Lcn/manstep/phonemirrorBox/p;->o:I

    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->g(II)V

    .line 37
    invoke-static {v5, v2}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, v0}, Lcn/manstep/phonemirrorBox/MainActivity;->k1(Z)V

    .line 39
    :cond_100
    :goto_100
    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/e;->C()Z

    move-result v0

    if-eqz v0, :cond_113

    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/k;->j:Z

    if-eqz v0, :cond_113

    .line 40
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z

    move-result v0

    if-nez v0, :cond_113

    .line 41
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/k;->recreate()V

    .line 42
    :cond_113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcn/manstep/phonemirrorBox/p;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcn/manstep/phonemirrorBox/p;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcn/manstep/phonemirrorBox/k;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0c0021
    invoke-virtual {p0, v0}, Lcn/manstep/phonemirrorBox/MainActivity;->setContentView(I)V

    # Initialize G (p0.c ProtocolController)
    new-instance v0, Lcn/manstep/phonemirrorBox/p0/c;
    invoke-virtual {p0}, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;
    move-result-object v1
    invoke-direct {v0, p0, p0, v1}, Lcn/manstep/phonemirrorBox/p0/c;-><init>(Lcn/manstep/phonemirrorBox/p0/b;Landroid/content/Context;Landroidx/fragment/app/n;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->G:Lcn/manstep/phonemirrorBox/p0/c;

    # Initialize J (FragmentManager)  
    invoke-virtual {p0}, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;
    move-result-object v0
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->J:Landroidx/fragment/app/n;

    return-void
.end method

.method protected onDestroy()V
    .registers 4

    const-string v0, "MainActivity,onDestroy"

    .line 1
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcn/manstep/phonemirrorBox/q;->g()Lcn/manstep/phonemirrorBox/q;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcn/manstep/phonemirrorBox/q;->m(Landroid/app/Activity;Z)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->J:Landroidx/fragment/app/n;

    .line 4
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->X:Z

    .line 5
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;

    if-eqz v1, :cond_1b

    .line 6
    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/a;->y()V

    .line 7
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;

    .line 8
    :cond_1b
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->G:Lcn/manstep/phonemirrorBox/p0/c;

    if-eqz v1, :cond_22

    .line 9
    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/p0/c;->E()V

    .line 10
    :cond_22
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->w:Landroid/widget/ViewAnimator;

    if-eqz v1, :cond_29

    .line 11
    invoke-virtual {v1}, Landroid/widget/ViewAnimator;->removeAllViews()V

    .line 12
    :cond_29
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->A:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_30

    .line 13
    invoke-virtual {p0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 14
    :cond_30
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->B:Lcn/manstep/phonemirrorBox/ModeChangeService;

    .line 15
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/manstep/phonemirrorBox/ModeChangeService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    .line 16
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/c;->n()Lcn/manstep/phonemirrorBox/f0/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/f0/c;->t()V

    const-string v0, "MainActivity,onDestroy: Stop AutoStartService"

    .line 17
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->I:Lcn/manstep/phonemirrorBox/z;

    if-eqz v0, :cond_53

    iget-object v0, v0, Lcn/manstep/phonemirrorBox/z;->y0:Lcn/manstep/phonemirrorBox/x0/k;

    if-eqz v0, :cond_53

    .line 19
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/x0/k;->K0()V

    .line 20
    :cond_53
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/manstep/phonemirrorBox/AutoStartService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    .line 21
    invoke-static {}, Lcn/manstep/phonemirrorBox/f;->e()V

    .line 22
    invoke-static {}, Lcn/manstep/phonemirrorBox/k0/b;->c()Lcn/manstep/phonemirrorBox/k0/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/k0/b;->g()V

    .line 23
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/MainActivity;->r1()V

    const-string v0, "Action"

    const-string v1, "onDestroy"

    .line 24
    invoke-virtual {p0, v0, v1}, Lcn/manstep/phonemirrorBox/MainActivity;->i1(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->getInstance()Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->release()V

    .line 26
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/k;->j:Z

    if-nez v0, :cond_ae

    .line 27
    invoke-static {}, Lcn/manstep/phonemirrorBox/floatwindow/e;->g()Lcn/manstep/phonemirrorBox/floatwindow/e;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static/range {v1 .. v1}, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/manstep/phonemirrorBox/floatwindow/e;->j(Landroid/content/Context;)V

    .line 28
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static/range {v1 .. v1}, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    .line 29
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    if-eqz v0, :cond_a4

    .line 30
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->b0()V

    .line 31
    :cond_a4
    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/e;->F()V

    .line 32
    invoke-static {}, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/u0/c;->v()V

    .line 33
    :cond_ae
    invoke-static {}, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/manstep/phonemirrorBox/u0/c;->A(Landroid/content/Context;)V

    .line 34
    invoke-static {}, Lcn/manstep/phonemirrorBox/e0/b;->a()Lcn/manstep/phonemirrorBox/e0/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/e0/b;->b()V

    .line 35
    invoke-super {p0}, Lcn/manstep/phonemirrorBox/k;->onDestroy()V

    const-string v0, "MainActivity,onDestroy Over"

    .line 36
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MainActivity,onKeyDown: keyCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 2
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->s:Z

    if-nez v0, :cond_dd

    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/u;->P()Z

    move-result v0

    if-eqz v0, :cond_30

    goto/16 :goto_dd

    :cond_30
    const/16 v0, 0x19

    const/4 v1, 0x1

    if-eq p1, v0, :cond_3d

    const/16 v0, 0x18

    if-eq p1, v0, :cond_3d

    const/16 v0, 0xa4

    if-ne p1, v0, :cond_5a

    .line 3
    :cond_3d
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->G:Lcn/manstep/phonemirrorBox/p0/c;

    invoke-virtual {v0, p1, v1}, Lcn/manstep/phonemirrorBox/p0/c;->o(IZ)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MainActivity,onKeyDown: UseVolumeKeySwitchMusic "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    return v1

    .line 5
    :cond_5a
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_63

    .line 6
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->O:Z

    goto :goto_66

    :cond_63
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->O:Z

    .line 8
    :goto_66
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;

    invoke-virtual {v0, p1, p2}, Lcn/manstep/phonemirrorBox/a;->n(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_6f

    return v1

    .line 9
    :cond_6f
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->V:Lcn/manstep/phonemirrorBox/l0/u;

    if-eqz v0, :cond_80

    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z

    move-result v0

    if-nez v0, :cond_80

    .line 10
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->V:Lcn/manstep/phonemirrorBox/l0/u;

    invoke-interface {v0, p1, p2}, Lcn/manstep/phonemirrorBox/l0/u;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 11
    :cond_80
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z

    move-result v0

    if-nez v0, :cond_8b

    .line 12
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/d;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_8b
    const/16 v0, 0x12c

    if-ne p1, v0, :cond_9d

    .line 13
    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/manstep/phonemirrorBox/v0/a;->w()Z

    move-result v2

    if-eqz v2, :cond_af

    .line 14
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    return v1

    :cond_9d
    const/16 v0, 0x12d

    if-ne p1, v0, :cond_af

    .line 15
    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/manstep/phonemirrorBox/v0/a;->w()Z

    move-result v2

    if-eqz v2, :cond_af

    .line 16
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    return v1

    .line 17
    :cond_af
    invoke-static {p0, p1}, Lcn/manstep/phonemirrorBox/b0;->f(Landroid/content/Context;I)I

    move-result v0

    .line 18
    invoke-static {p0, p1}, Lcn/manstep/phonemirrorBox/b0;->g(Landroid/content/Context;I)I

    move-result v2

    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MainActivity,onKeyDown: cmd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", cmd2="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    if-nez v0, :cond_dc

    if-nez v2, :cond_dc

    .line 20
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/d;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_dc
    return v1

    .line 21
    :cond_dd
    :goto_dd
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/d;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 7

    .line 1
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->s:Z

    if-nez v0, :cond_d5

    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/u;->P()Z

    move-result v0

    if-eqz v0, :cond_10

    goto/16 :goto_d5

    .line 2
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MainActivity,onKeyUp: keyCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    const/16 v0, 0x19

    const/4 v1, 0x1

    if-eq p1, v0, :cond_3d

    const/16 v0, 0x18

    if-eq p1, v0, :cond_3d

    const/16 v0, 0xa4

    if-ne p1, v0, :cond_47

    .line 3
    :cond_3d
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->G:Lcn/manstep/phonemirrorBox/p0/c;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcn/manstep/phonemirrorBox/p0/c;->o(IZ)Z

    move-result v0

    if-eqz v0, :cond_47

    return v1

    .line 4
    :cond_47
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;

    iget-boolean v2, p0, Lcn/manstep/phonemirrorBox/MainActivity;->O:Z

    invoke-virtual {v0, p1, p2, v2}, Lcn/manstep/phonemirrorBox/a;->o(ILandroid/view/KeyEvent;Z)Z

    move-result v0

    if-eqz v0, :cond_52

    return v1

    .line 5
    :cond_52
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->V:Lcn/manstep/phonemirrorBox/l0/u;

    if-eqz v0, :cond_65

    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z

    move-result v0

    if-nez v0, :cond_65

    .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->V:Lcn/manstep/phonemirrorBox/l0/u;

    iget-boolean v1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->O:Z

    invoke-interface {v0, p1, p2, v1}, Lcn/manstep/phonemirrorBox/l0/u;->a(ILandroid/view/KeyEvent;Z)Z

    move-result p1

    return p1

    .line 7
    :cond_65
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->O:Z

    if-nez v0, :cond_6e

    .line 8
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_6e
    const/16 v0, 0x12c

    if-eq p1, v0, :cond_d4

    const/16 v0, 0x12d

    if-ne p1, v0, :cond_77

    goto :goto_d4

    .line 9
    :cond_77
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->O:Z

    if-eqz v0, :cond_80

    .line 10
    invoke-static {p0, p1}, Lcn/manstep/phonemirrorBox/b0;->g(Landroid/content/Context;I)I

    move-result v0

    goto :goto_84

    .line 11
    :cond_80
    invoke-static {p0, p1}, Lcn/manstep/phonemirrorBox/b0;->f(Landroid/content/Context;I)I

    move-result v0

    .line 12
    :goto_84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MainActivity,onKeyUp: cmd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mLongPressKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcn/manstep/phonemirrorBox/MainActivity;->O:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    if-nez v0, :cond_cc

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MainActivity,onKeyUp: keyCode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 14
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->O:Z

    if-eqz v0, :cond_c7

    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->O:Z

    if-eqz v0, :cond_c7

    const/4 v0, 0x4

    if-ne v0, p1, :cond_c7

    .line 15
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/MainActivity;->d1()V

    return v1

    .line 16
    :cond_c7
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 17
    :cond_cc
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->G()V

    .line 18
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->G:Lcn/manstep/phonemirrorBox/p0/c;

    invoke-virtual {p1, v0}, Lcn/manstep/phonemirrorBox/p0/c;->G(I)V

    :cond_d4
    :goto_d4
    return v1

    .line 19
    :cond_d5
    :goto_d5
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/e;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/MainActivity;->W0(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcn/manstep/phonemirrorBox/k;->onPause()V

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/manstep/phonemirrorBox/a;->x(Z)V

    const-string v0, "MainActivity,onPause"

    .line 3
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->G:Lcn/manstep/phonemirrorBox/p0/c;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/p0/c;->n()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 5
    sget-boolean v0, Lcn/manstep/phonemirrorBox/p;->g:Z

    if-nez v0, :cond_2b

    .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->C:Ljava/lang/String;

    const-string v1, "ac8317"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->D:Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    :cond_2b
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4
    invoke-super {p0, p1, p2, p3}, Lcn/manstep/phonemirrorBox/k;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    return-void
.end method

.method protected onResume()V
    .registers 5

    .line 1
    invoke-super {p0}, Lcn/manstep/phonemirrorBox/k;->onResume()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MainActivity,onResume: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcn/manstep/phonemirrorBox/p;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 4
    invoke-static {}, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/u0/c;->H()V

    .line 5
    :cond_26
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 6
    invoke-static {}, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;

    move-result-object v0

    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/e;->C()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/manstep/phonemirrorBox/u0/c;->d(Z)V

    .line 7
    :cond_37
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/v0/a;->y()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 8
    invoke-static {}, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->getInstance()Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static/range {v1 .. v1}, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->init(Landroid/content/Context;)V

    .line 9
    :cond_56
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;

    if-nez v0, :cond_64

    .line 10
    new-instance v0, Lcn/manstep/phonemirrorBox/v;

    invoke-direct {v0, p0}, Lcn/manstep/phonemirrorBox/v;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;

    .line 11
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/a;->a()V

    .line 12
    :cond_64
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->G:Lcn/manstep/phonemirrorBox/p0/c;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/p0/c;->i()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_7e

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->G:Lcn/manstep/phonemirrorBox/p0/c;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/p0/c;->i()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_78

    goto :goto_7e

    .line 13
    :cond_78
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;

    invoke-virtual {v0, v1}, Lcn/manstep/phonemirrorBox/a;->x(Z)V

    goto :goto_83

    .line 14
    :cond_7e
    :goto_7e
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;

    invoke-virtual {v0, v2}, Lcn/manstep/phonemirrorBox/a;->x(Z)V

    .line 15
    :goto_83
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->G:Lcn/manstep/phonemirrorBox/p0/c;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/p0/c;->n()Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 16
    sget-boolean v0, Lcn/manstep/phonemirrorBox/p;->g:Z

    if-nez v0, :cond_9e

    .line 17
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->C:Ljava/lang/String;

    const-string v3, "ac8317"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 18
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->D:Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 19
    :cond_9e
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->G:Lcn/manstep/phonemirrorBox/p0/c;

    invoke-virtual {v0, v2}, Lcn/manstep/phonemirrorBox/p0/c;->D(Z)V

    .line 20
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/MainActivity;->Y0()V

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MainActivity,onResume: PhoneConnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->O:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 22
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->O:Z

    if-eqz v0, :cond_d9

    .line 23
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->w:Landroid/widget/ViewAnimator;

    if-nez v0, :cond_c7

    .line 24
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/MainActivity;->init()V

    .line 25
    :cond_c7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->w:Landroid/widget/ViewAnimator;

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->w:Landroid/widget/ViewAnimator;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/widget/ViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eq v0, v1, :cond_d9

    .line 26
    invoke-virtual {p0, v3, v2}, Lcn/manstep/phonemirrorBox/MainActivity;->r(IZ)V

    :cond_d9
    :try_start_d9
    const-string v0, "Action"

    const-string v1, "onResume"

    .line 27
    invoke-virtual {p0, v0, v1}, Lcn/manstep/phonemirrorBox/MainActivity;->i1(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->G:Lcn/manstep/phonemirrorBox/p0/c;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/p0/c;->n()Z

    move-result v0

    if-eqz v0, :cond_12f

    .line 29
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    if-eqz v0, :cond_12f

    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->J()Lcn/manstep/phonemirrorBox/q0/g;

    move-result-object v0

    if-eqz v0, :cond_12f

    .line 30
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->J()Lcn/manstep/phonemirrorBox/q0/g;

    move-result-object v0

    invoke-interface {v0}, Lcn/manstep/phonemirrorBox/q0/g;->b()Z

    move-result v0

    if-eqz v0, :cond_112

    .line 31
    new-instance v0, Landroid/content/Intent;

    const-string v1, "net.easyconn.a2dp.acquire"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    const-string v0, "A2DP"

    const-string v1, "send broad a2dp acquire"

    .line 33
    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12f

    .line 34
    :cond_112
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->B()V
    :try_end_115
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_115} :catch_116

    goto :goto_12f

    :catch_116
    move-exception v0

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MainActivity,onResume: \n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 36
    :cond_12f
    :goto_12f
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->B:Lcn/manstep/phonemirrorBox/ModeChangeService;

    if-eqz v0, :cond_136

    .line 37
    invoke-virtual {v0, v2}, Lcn/manstep/phonemirrorBox/ModeChangeService;->n(Z)V

    .line 38
    :cond_136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bRequestPermissionStarted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->S:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainActivity"

    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->S:Z

    if-nez v0, :cond_156

    .line 40
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/MainActivity;->h1()V

    goto :goto_166

    .line 41
    :cond_156
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_166

    .line 42
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->Z:Lcn/manstep/phonemirrorBox/util/u;

    new-instance v1, Lcn/manstep/phonemirrorBox/MainActivity$h;

    invoke-direct {v1, p0}, Lcn/manstep/phonemirrorBox/MainActivity$h;-><init>(Lcn/manstep/phonemirrorBox/MainActivity;)V

    invoke-virtual {v0, v1}, Lcn/manstep/phonemirrorBox/util/u;->a(Ljava/lang/Runnable;)V

    .line 43
    :cond_166
    :goto_166
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z

    move-result v0

    if-eqz v0, :cond_189

    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/u;->M()Z

    move-result v0

    if-eqz v0, :cond_189

    .line 44
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_189

    .line 45
    iput-boolean v2, p0, Lcn/manstep/phonemirrorBox/MainActivity;->T:Z

    .line 46
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 47
    :cond_189
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->X:Z

    if-nez v0, :cond_196

    invoke-virtual {p0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_196

    .line 48
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/MainActivity;->init()V

    :cond_196
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Bundle;->clear()V

    return-void
.end method

.method protected onStart()V
    .registers 5

    .line 1
    invoke-super {p0}, Lcn/manstep/phonemirrorBox/k;->onStart()V

    const-string v0, "MainActivity,onStart"

    .line 2
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->h(Ljava/lang/String;)V

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcn/manstep/phonemirrorBox/MainActivity$g;

    invoke-direct {v1, p0}, Lcn/manstep/phonemirrorBox/MainActivity$g;-><init>(Lcn/manstep/phonemirrorBox/MainActivity;)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onStop()V
    .registers 5

    .line 1
    invoke-super {p0}, Lcn/manstep/phonemirrorBox/k;->onStop()V

    const-string v0, "MainActivity,onStop"

    .line 2
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->h(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/manstep/phonemirrorBox/a;->x(Z)V

    const-string v0, "Action"

    const-string v2, "onStop"

    .line 4
    invoke-virtual {p0, v0, v2}, Lcn/manstep/phonemirrorBox/MainActivity;->i1(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->G:Lcn/manstep/phonemirrorBox/p0/c;

    invoke-virtual {v0, v1}, Lcn/manstep/phonemirrorBox/p0/c;->D(Z)V

    .line 6
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    const-string v2, "BgKeyValid"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {p0, v0}, Lcn/manstep/phonemirrorBox/util/c0;->t(Landroid/content/Context;Z)V

    .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->B:Lcn/manstep/phonemirrorBox/ModeChangeService;

    if-eqz v0, :cond_2f

    .line 8
    invoke-virtual {v0, v1}, Lcn/manstep/phonemirrorBox/ModeChangeService;->n(Z)V

    .line 9
    :cond_2f
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z

    move-result v0

    if-nez v0, :cond_53

    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/u;->M()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 10
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->T:Z

    if-eqz v0, :cond_53

    .line 11
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    const-string v0, "MainActivity"

    const-string v2, "onStop: Bluetooth enable"

    .line 12
    invoke-static {v0, v2}, Lcn/manstep/phonemirrorBox/util/s;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->T:Z

    .line 14
    :cond_53
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 15
    invoke-static {}, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/u0/c;->x()V

    :cond_60
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z

    move-result v0

    if-eqz v0, :cond_17

    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->P:Z

    if-eqz v0, :cond_17

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/manstep/phonemirrorBox/a;->D(Z)V

    .line 4
    :cond_17
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onWindowFocusChanged(Z)V
    .registers 7

    .line 1
    invoke-super {p0, p1}, Lcn/manstep/phonemirrorBox/k;->onWindowFocusChanged(Z)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MainActivity, onWindowFocusChanged: hasFocus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "================="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {}, Lcn/manstep/phonemirrorBox/MyApplication;->b()Lcn/manstep/phonemirrorBox/MyApplication;

    move-result-object v3

    iget-wide v3, v3, Lcn/manstep/phonemirrorBox/MyApplication;->b:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->h(Ljava/lang/String;)V

    if-eqz p1, :cond_2f

    .line 3
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/MainActivity;->init()V

    .line 4
    :cond_2f
    sput-boolean p1, Lcn/manstep/phonemirrorBox/MainActivity;->b0:Z

    .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->G:Lcn/manstep/phonemirrorBox/p0/c;

    invoke-virtual {v0, p1}, Lcn/manstep/phonemirrorBox/p0/c;->D(Z)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_77

    const-string v2, "AutoStart"

    .line 7
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MainActivity, onWindowFocusChanged: flag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    const/4 v2, 0x1

    if-ne v0, v2, :cond_68

    .line 9
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z

    move-result v0

    if-nez v0, :cond_77

    .line 10
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/MainActivity;->D()V

    goto :goto_77

    :cond_68
    const/4 v2, 0x2

    if-ne v0, v2, :cond_77

    .line 11
    sput-boolean v1, Lcn/manstep/phonemirrorBox/MainActivity;->b0:Z

    .line 12
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->j()V

    .line 13
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    if-eqz v0, :cond_77

    .line 14
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->X0()Z

    .line 15
    :cond_77
    :goto_77
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/b;->h:Z

    if-eqz v0, :cond_8e

    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/k;->d0()Z

    move-result v0

    if-eqz v0, :cond_8e

    if-eqz p1, :cond_87

    .line 16
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/MainActivity;->Y0()V

    goto :goto_8e

    .line 17
    :cond_87
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/manstep/phonemirrorBox/MainActivity;->T0(Landroid/view/Window;)V

    .line 18
    :cond_8e
    :goto_8e
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->G:Lcn/manstep/phonemirrorBox/p0/c;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/p0/c;->n()Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 19
    sget-boolean v0, Lcn/manstep/phonemirrorBox/p;->g:Z

    if-nez v0, :cond_ae

    .line 20
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->C:Ljava/lang/String;

    const-string v2, "ac8317"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 21
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->D:Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;

    if-eqz p1, :cond_a9

    goto :goto_ab

    :cond_a9
    const/16 v1, 0x8

    :goto_ab
    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    :cond_ae
    return-void
.end method

.method public p(I)V
    .registers 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBackHome: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainActivity"

    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    if-nez p1, :cond_109

    .line 2
    invoke-static {}, Lcn/manstep/phonemirrorBox/MyApplication;->b()Lcn/manstep/phonemirrorBox/MyApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/MyApplication;->g()Z

    move-result p1

    if-eqz p1, :cond_119

    .line 3
    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/u;->y()Ljava/lang/String;

    move-result-object p1

    const-string v2, "ecarx-IHU3Q122-IHU3Q122-9(28)"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4a

    .line 4
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 5
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.fawcar.dlife6.launcher"

    const-string v2, "com.fawcar.dlife6.launcher.activity.AllAppsActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_119

    .line 7
    :cond_4a
    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/u;->y()Ljava/lang/String;

    move-result-object p1

    const-string v2, "QTI-msmnile_gvmq for arm64-k6801_a-11(30)"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a4

    .line 8
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 9
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.avatr.ivi.foundation.launcher"

    const-string v3, "com.avatr.ivi.foundation.launcher.base.LauncherService"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "launcher_service:arg"

    const-string v2, "start_home"

    .line 10
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "{\"extra\":\"\",\"from\":\"%s\"}"

    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBackHome: extra="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "launcher_service:arg_extra"

    .line 13
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_119

    .line 15
    :cond_a4
    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/u;->y()Ljava/lang/String;

    move-result-object p1

    const-string v2, "CAIC-x9hp for arm64-x9hp_bestune_d511_overseas_none_linux_di_baseline-10(29)"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ce

    .line 16
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.faw.factorymode.ui.activity."

    .line 17
    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.faw.factorymode"

    const-string v2, "com.faw.factorymode.ui.activity.MainActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 19
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_119

    .line 20
    :cond_ce
    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/u;->y()Ljava/lang/String;

    move-result-object p1

    const-string v2, "DesaySV-G6SA-r8a7795-g6sa_e111_basic-8.1.0(27)"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f6

    .line 21
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.desaysv.setting.fragment.voice.TimbreActivity"

    .line 22
    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.faw.systemsetting"

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 24
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_119

    .line 25
    :cond_f6
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "android.intent.category.HOME"

    .line 27
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_119

    .line 29
    :cond_109
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcn/manstep/phonemirrorBox/MainActivity;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 31
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 32
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->G()V

    :cond_119
    :goto_119
    return-void
.end method

.method public q(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->I:Lcn/manstep/phonemirrorBox/z;

    invoke-virtual {v0, p1}, Lcn/manstep/phonemirrorBox/z;->M2(Z)V

    return-void
.end method

.method public r(IZ)V
    .registers 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MainActivity, changePage: nextPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->w:Landroid/widget/ViewAnimator;

    if-nez v0, :cond_1b

    .line 3
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/MainActivity;->init()V

    :cond_1b
    const/4 v0, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v2, p1, :cond_75

    .line 4
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/MainActivity;->B:Lcn/manstep/phonemirrorBox/ModeChangeService;

    if-nez v4, :cond_27

    .line 5
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/MainActivity;->J0()V

    .line 6
    :cond_27
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v4}, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->setOrientation(I)V

    .line 7
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->B()V

    .line 8
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;

    invoke-virtual {v4, v3}, Lcn/manstep/phonemirrorBox/a;->s(Z)V

    .line 9
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/MainActivity;->G:Lcn/manstep/phonemirrorBox/p0/c;

    invoke-virtual {v4}, Lcn/manstep/phonemirrorBox/p0/c;->m()Z

    move-result v4

    if-nez v4, :cond_49

    .line 10
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/MainActivity;->G:Lcn/manstep/phonemirrorBox/p0/c;

    invoke-virtual {v4, v2}, Lcn/manstep/phonemirrorBox/p0/c;->H(I)V

    .line 11
    :cond_49
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/MainActivity;->Y0()V

    .line 12
    invoke-static {}, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->getInstance()Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static/range {v5 .. v5}, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->init(Landroid/content/Context;)V

    .line 13
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->uiMode:I

    invoke-direct {p0, v4}, Lcn/manstep/phonemirrorBox/MainActivity;->j1(I)V

    .line 14
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/MainActivity;->X0()Z

    move-result v4

    if-nez v4, :cond_85

    const v4, 0x7f0f01e2

    .line 15
    invoke-static {p0, v4}, Lcn/manstep/phonemirrorBox/widget/a;->c(Landroid/content/Context;I)V

    goto :goto_85

    :cond_75
    if-ne p1, v3, :cond_80

    .line 16
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;

    invoke-virtual {v4}, Lcn/manstep/phonemirrorBox/a;->t()V

    .line 17
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/MainActivity;->Y0()V

    goto :goto_85

    .line 18
    :cond_80
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;

    invoke-virtual {v4, v0}, Lcn/manstep/phonemirrorBox/a;->s(Z)V

    .line 19
    :cond_85
    :goto_85
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f05001b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-nez v4, :cond_b5

    if-eq p1, v2, :cond_a4

    if-eqz p1, :cond_a4

    if-ne p1, v3, :cond_9e

    .line 20
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/a;->t()V

    goto :goto_a3

    .line 21
    :cond_9e
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;

    invoke-virtual {p1, v0}, Lcn/manstep/phonemirrorBox/a;->s(Z)V

    :goto_a3
    return-void

    :cond_a4
    if-ne p1, v2, :cond_b0

    .line 22
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/MainActivity;->Y0()V

    .line 23
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;

    invoke-virtual {p1, v3}, Lcn/manstep/phonemirrorBox/a;->s(Z)V

    const/4 p1, 0x1

    goto :goto_b5

    .line 24
    :cond_b0
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;

    invoke-virtual {v4, v0}, Lcn/manstep/phonemirrorBox/a;->s(Z)V

    :cond_b5
    :goto_b5
    if-eqz p2, :cond_c8

    .line 25
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/MainActivity;->w:Landroid/widget/ViewAnimator;

    invoke-virtual {p2, p1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    if-nez p1, :cond_c2

    .line 26
    invoke-direct {p0, v0}, Lcn/manstep/phonemirrorBox/MainActivity;->k1(Z)V

    goto :goto_c7

    :cond_c2
    if-ne p1, v2, :cond_c7

    .line 27
    invoke-direct {p0, v3}, Lcn/manstep/phonemirrorBox/MainActivity;->k1(Z)V

    :cond_c7
    :goto_c7
    return-void

    .line 28
    :cond_c8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mSingleWorkMode="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->u:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 29
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/MainActivity;->w:Landroid/widget/ViewAnimator;

    invoke-virtual {p2}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->w:Landroid/widget/ViewAnimator;

    invoke-virtual {v0, p1}, Landroid/widget/ViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eq p2, v0, :cond_f7

    .line 30
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/MainActivity;->w:Landroid/widget/ViewAnimator;

    invoke-virtual {p2, p1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 31
    :cond_f7
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/MainActivity;->Y0()V

    return-void
.end method

.method public s()V
    .registers 1

    return-void
.end method

.method public t(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcn/manstep/phonemirrorBox/MainActivity;->K0(Z)V

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f021b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/high16 v0, -0x10000

    .line 3
    invoke-direct {p0, p1, v0}, Lcn/manstep/phonemirrorBox/MainActivity;->o1(Ljava/lang/String;I)V

    .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/a;->q()V

    return-void
.end method

.method public u()V
    .registers 3

    const v0, 0x7f0f01e2

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2
    invoke-direct {p0, p0}, Lcn/manstep/phonemirrorBox/MainActivity;->V0(Landroid/content/Context;)V

    return-void
.end method

.method public v(Ljava/lang/String;)V
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNoticeWirelessDeviceConnFailed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainActivity"

    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcn/manstep/phonemirrorBox/MainActivity;->K0(Z)V

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0219

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, -0x10000

    .line 4
    invoke-direct {p0, v0, v1}, Lcn/manstep/phonemirrorBox/MainActivity;->o1(Ljava/lang/String;I)V

    .line 5
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->v()V

    .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/a;->q()V

    .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;

    invoke-virtual {v0, p1}, Lcn/manstep/phonemirrorBox/a;->r(Ljava/lang/String;)V

    return-void
.end method

.method public x(Z)V
    .registers 5

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->H:Z

    if-eqz p1, :cond_a

    .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->I:Lcn/manstep/phonemirrorBox/z;

    invoke-virtual {p0, p1}, Lcn/manstep/phonemirrorBox/MainActivity;->f(Landroidx/fragment/app/Fragment;)V

    .line 3
    :cond_a
    invoke-direct {p0, v0}, Lcn/manstep/phonemirrorBox/MainActivity;->K0(Z)V

    const p1, 0x7f0f000e

    const/16 v0, -0x100

    .line 4
    invoke-direct {p0, p1, v0}, Lcn/manstep/phonemirrorBox/MainActivity;->n1(II)V

    .line 5
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/a;->j()V

    .line 6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity;->U:Lcn/manstep/phonemirrorBox/util/u;

    new-instance v0, Lcn/manstep/phonemirrorBox/MainActivity$w;

    invoke-direct {v0, p0}, Lcn/manstep/phonemirrorBox/MainActivity$w;-><init>(Lcn/manstep/phonemirrorBox/MainActivity;)V

    const-wide/16 v1, 0x320

    invoke-virtual {p1, v0, v1, v2}, Lcn/manstep/phonemirrorBox/util/u;->b(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public y()V
    .registers 3

    const v0, 0x7f0f0200

    const v1, -0xff0100

    .line 1
    invoke-direct {p0, v0, v1}, Lcn/manstep/phonemirrorBox/MainActivity;->n1(II)V

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->P:Lcn/manstep/phonemirrorBox/a;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/a;->g()V

    return-void
.end method

.method public z()V
    .registers 3

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/u;->M()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    const-string v1, "MainActivity"

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->T:Z

    const-string v0, "onPhoneWorking: bBtEnable = true"

    .line 4
    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_2e

    :cond_26
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/MainActivity;->T:Z

    const-string v0, "onPhoneWorking: bBtEnable = false"

    .line 7
    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_2e
    :goto_2e
    invoke-static {}, Lcn/manstep/phonemirrorBox/util/r;->a()Lcn/manstep/phonemirrorBox/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/util/r;->c()V

    return-void
.end method
