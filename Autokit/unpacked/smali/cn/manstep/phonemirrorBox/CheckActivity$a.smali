.class Lcn/manstep/phonemirrorBox/CheckActivity$a;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/CheckActivity;->M()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/CheckActivity;

.method constructor <init>(Lcn/manstep/phonemirrorBox/CheckActivity;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/CheckActivity$a;->b:Lcn/manstep/phonemirrorBox/CheckActivity;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 5
  .line 1
    new-instance v0, Landroid/graphics/Point;
    invoke-direct { v0 }, Landroid/graphics/Point;-><init>()V
  .line 2
    new-instance v1, Landroid/graphics/Point;
    invoke-direct { v1 }, Landroid/graphics/Point;-><init>()V
  .line 3
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/CheckActivity$a;->b:Lcn/manstep/phonemirrorBox/CheckActivity;
    invoke-virtual { v2 }, Landroid/app/Activity;->getWindow()Landroid/view/Window;
    move-result-object v2
    invoke-virtual { v2 }, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;
    move-result-object v2
    invoke-interface { v2 }, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
    move-result-object v2
    invoke-virtual { v2, v0, v1 }, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V
  .line 4
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "CheckActivity,availableSize: CurrentSizeRange: "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v0, ","
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->h(Ljava/lang/String;)V
  .line 5
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "CheckActivity,availableSize:A -> View.getWidth()xView.getHeight()="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/CheckActivity$a;->b:Lcn/manstep/phonemirrorBox/CheckActivity;
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/CheckActivity;->L(Lcn/manstep/phonemirrorBox/CheckActivity;)Landroid/view/View;
    move-result-object v1
    invoke-virtual { v1 }, Landroid/view/View;->getWidth()I
    move-result v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, "x"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/CheckActivity$a;->b:Lcn/manstep/phonemirrorBox/CheckActivity;
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/CheckActivity;->L(Lcn/manstep/phonemirrorBox/CheckActivity;)Landroid/view/View;
    move-result-object v1
    invoke-virtual { v1 }, Landroid/view/View;->getHeight()I
    move-result v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 6
    new-instance v0, Landroid/os/Handler;
    invoke-direct { v0 }, Landroid/os/Handler;-><init>()V
    new-instance v1, Lcn/manstep/phonemirrorBox/CheckActivity$a$a;
    invoke-direct { v1, p0 }, Lcn/manstep/phonemirrorBox/CheckActivity$a$a;-><init>(Lcn/manstep/phonemirrorBox/CheckActivity$a;)V
    const-wide/16 v2, 800
    invoke-virtual { v0, v1, v2, v3 }, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    return-void
.end method
