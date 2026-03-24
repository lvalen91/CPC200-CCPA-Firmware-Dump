.class public Lcn/manstep/phonemirrorBox/Main1Activity;
.super Landroidx/appcompat/app/d;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const v0, 0x5d2

    invoke-static {v0}, Lcom/stub/StubApp;->interface11(I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/d;-><init>()V

    return-void
.end method

.method private L()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x33

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 3
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 5
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v2, 0x1

    .line 6
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 7
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, 0x0

    .line 8
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/16 v1, 0x7d3

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    const/16 v1, 0x20

    .line 11
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    const/high16 v1, 0x40000

    .line 12
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 13
    invoke-virtual {v0, v2}, Landroid/view/Window;->setDimAmount(F)V

    return-void
.end method

.method private init()V
    .registers 4

    .line 1
    invoke-static {p0}, Lcn/manstep/phonemirrorBox/v0/e;->B(Landroid/content/Context;)V

    const-string v0, "Main1Activity"

    const-string v1, "init: Start AutoStartService"

    .line 2
    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcn/manstep/phonemirrorBox/AutoStartService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "starter"

    .line 4
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x1a

    .line 5
    :try_start_18
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v0, :cond_20

    .line 6
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_23

    .line 7
    :cond_20
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_23} :catch_23

    .line 8
    :catch_23
    :goto_23
    :try_start_23
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v0, :cond_32

    .line 9
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/manstep/phonemirrorBox/service/BackgroundService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_3e

    .line 10
    :cond_32
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/manstep/phonemirrorBox/service/BackgroundService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_3c
    .catchall {:try_start_23 .. :try_end_3c} :catchall_3d

    goto :goto_3e

    :catchall_3d
    nop

    .line 11
    :goto_3e
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "ShowFloatBall"

    invoke-virtual {v0, v2, v1}, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 12
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static/range {v1 .. v1}, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_5d
    return-void
.end method


# virtual methods
.method public finish()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    const v0, 0x7f01000e

    .line 2
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public onBackPressed()V
    .registers 2

    const-string v0, "Main1Activity,onBackPressed!!!"

    .line 1
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->m(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Landroidx/appcompat/app/d;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/q;->g()Lcn/manstep/phonemirrorBox/q;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/manstep/phonemirrorBox/q;->l(Landroid/app/Activity;)V

    const-string v0, "Main1Activity"

    const-string v1, "onDestroy: "

    .line 2
    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/Main1Activity;->finish()V

    .line 4
    invoke-super {p0}, Landroidx/appcompat/app/d;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/e;->onResume()V

    const-string v0, "Main1Activity"

    const-string v1, "onResume: "

    .line 2
    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/util/s;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onStart()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/d;->onStart()V

    const-string v0, "Main1Activity"

    const-string v1, "onStart: "

    .line 2
    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/util/s;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/Main1Activity;->init()V

    .line 4
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/Main1Activity;->finish()V

    return-void
.end method

.method protected onStop()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/d;->onStop()V

    const-string v0, "Main1Activity"

    const-string v1, "onStop: "

    .line 2
    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/util/s;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    const-string v0, "Main1Activity,MotionEvent!!!"

    .line 1
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->m(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v1, v0, :cond_10

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 4
    :cond_10
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/Main1Activity;->finish()V

    .line 5
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
