.class public Lcn/manstep/phonemirrorBox/CheckActivity;
.super Landroidx/appcompat/app/d;
.source "SourceFile"

.field private b:Landroid/view/View;

.method static constructor <clinit>()V
  .registers 2
    const v0, 1468
    invoke-static { v0 }, Lcom/stub/StubApp;->interface11(I)V
    return-void
.end method

.method public constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Landroidx/appcompat/app/d;-><init>()V
    return-void
.end method

.method static synthetic L(Lcn/manstep/phonemirrorBox/CheckActivity;)Landroid/view/View;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/CheckActivity;->b:Landroid/view/View;
    return-object p0
.end method

.method private M()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/CheckActivity;->b:Landroid/view/View;
    new-instance v1, Lcn/manstep/phonemirrorBox/CheckActivity$a;
    invoke-direct { v1, p0 }, Lcn/manstep/phonemirrorBox/CheckActivity$a;-><init>(Lcn/manstep/phonemirrorBox/CheckActivity;)V
    invoke-virtual { v0, v1 }, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    return-void
.end method

.method private N(Landroid/view/Window;)V
  .registers 7
  .line 1
    sget-boolean v0, Lcn/manstep/phonemirrorBox/p;->j:Z
    if-eqz v0, :L0
    return-void
  :L0
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/u;->X()Z
    move-result v0
    const/16 v1, 1024
    if-eqz v0, :L1
  .line 3
    invoke-virtual { p0 }, Landroid/app/Activity;->getWindow()Landroid/view/Window;
    move-result-object v0
    invoke-virtual { v0, v1, v1 }, Landroid/view/Window;->setFlags(II)V
  :L1
  .line 4
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    const/4 v2, 1
    const-string v3, "HideSysNavBar"
    invoke-virtual { v0, v3, v2 }, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z
    move-result v0
    const/16 v2, 2048
  .line 5
    invoke-virtual { p1, v2 }, Landroid/view/Window;->clearFlags(I)V
  .line 6
    invoke-virtual { p1 }, Landroid/view/Window;->getDecorView()Landroid/view/View;
    move-result-object v2
  .line 7
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v4, 19
    if-lt v3, v4, :L3
    const/16 v1, 7428
    if-eqz v0, :L2
    const/16 v1, 7942
  .line 8
    invoke-virtual { p1 }, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;
    move-result-object v3
    const/16 v4, 2050
  .line 9
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I
  .line 10
    invoke-virtual { p1, v3 }, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
  :L2
  .line 11
    invoke-virtual { v2, v1 }, Landroid/view/View;->setSystemUiVisibility(I)V
    goto :L4
  :L3
  .line 12
    invoke-virtual { p1, v1, v1 }, Landroid/view/Window;->setFlags(II)V
    const/16 v1, 8
  .line 13
    invoke-virtual { v2, v1 }, Landroid/view/View;->setSystemUiVisibility(I)V
    const-string v1, "CheckActivity,setFullScreen: Because the Android version number is lower than 4.4.4, there is no hidden NavigationBar."
  .line 14
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  :L4
  .line 15
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 28
    if-gt v1, v2, :L5
    const/16 v1, 256
  .line 16
    invoke-virtual { p1, v1 }, Landroid/view/Window;->addFlags(I)V
  :L5
    if-eqz v0, :L6
    const/16 v0, 512
  .line 17
    invoke-virtual { p1, v0 }, Landroid/view/Window;->addFlags(I)V
  :L6
    return-void
.end method

.method protected native onCreate(Landroid/os/Bundle;)V
.end method
