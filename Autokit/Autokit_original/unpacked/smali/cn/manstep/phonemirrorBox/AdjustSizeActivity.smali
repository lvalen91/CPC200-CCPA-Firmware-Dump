.class public Lcn/manstep/phonemirrorBox/AdjustSizeActivity;
.super Landroidx/appcompat/app/d;
.source "SourceFile"

.field private b:Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;

.method static constructor <clinit>()V
  .registers 2
    const v0, 1370
    invoke-static { v0 }, Lcom/stub/StubApp;->interface11(I)V
    return-void
.end method

.method public constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Landroidx/appcompat/app/d;-><init>()V
    return-void
.end method

.method static synthetic L(Lcn/manstep/phonemirrorBox/AdjustSizeActivity;)Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/AdjustSizeActivity;->b:Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;
    return-object p0
.end method

.method private M()V
  .registers 6
  .line 1
    invoke-virtual { p0 }, Landroid/app/Activity;->getWindow()Landroid/view/Window;
    move-result-object v0
    const/16 v1, 2048
  .line 2
    invoke-virtual { v0, v1 }, Landroid/view/Window;->clearFlags(I)V
  .line 3
    invoke-virtual { v0 }, Landroid/view/Window;->getDecorView()Landroid/view/View;
    move-result-object v1
  .line 4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v3, 19
    if-lt v2, v3, :L0
    const/16 v2, 7942
  .line 5
    invoke-virtual { v0 }, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;
    move-result-object v3
    const/4 v4, 2
  .line 6
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I
  .line 7
    invoke-virtual { v0, v3 }, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
  .line 8
    invoke-virtual { v1, v2 }, Landroid/view/View;->setSystemUiVisibility(I)V
    goto :L1
  :L0
    const/16 v2, 1024
  .line 9
    invoke-virtual { v0, v2, v2 }, Landroid/view/Window;->setFlags(II)V
    const/16 v2, 8
  .line 10
    invoke-virtual { v1, v2 }, Landroid/view/View;->setSystemUiVisibility(I)V
  :L1
  .line 11
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 28
    if-gt v1, v2, :L2
    const/16 v1, 256
  .line 12
    invoke-virtual { v0, v1 }, Landroid/view/Window;->addFlags(I)V
  :L2
    const/16 v1, 512
  .line 13
    invoke-virtual { v0, v1 }, Landroid/view/Window;->addFlags(I)V
    return-void
.end method

.method public N()V
  .registers 5
  .line 1
    new-instance v0, Landroid/os/Handler;
    invoke-direct { v0 }, Landroid/os/Handler;-><init>()V
    new-instance v1, Lcn/manstep/phonemirrorBox/AdjustSizeActivity$c;
    invoke-direct { v1, p0 }, Lcn/manstep/phonemirrorBox/AdjustSizeActivity$c;-><init>(Lcn/manstep/phonemirrorBox/AdjustSizeActivity;)V
    const-wide/16 v2, 500
    invoke-virtual { v0, v1, v2, v3 }, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    return-void
.end method

.method protected native onCreate(Landroid/os/Bundle;)V
.end method
