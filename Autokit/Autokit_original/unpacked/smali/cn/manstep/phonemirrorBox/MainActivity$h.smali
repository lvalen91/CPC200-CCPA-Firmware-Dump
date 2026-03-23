.class Lcn/manstep/phonemirrorBox/MainActivity$h;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/MainActivity;->onResume()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/MainActivity;

.method constructor <init>(Lcn/manstep/phonemirrorBox/MainActivity;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity$h;->b:Lcn/manstep/phonemirrorBox/MainActivity;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity$h;->b:Lcn/manstep/phonemirrorBox/MainActivity;
    invoke-virtual { v0 }, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    const v1, 2131034120
    invoke-virtual { v0, v1 }, Landroid/content/res/Resources;->getBoolean(I)Z
    move-result v0
    if-nez v0, :L1
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity$h;->b:Lcn/manstep/phonemirrorBox/MainActivity;
    invoke-virtual { v0 }, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;
    move-result-object v0
    invoke-static/range { v0 .. v0 }, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;
    move-result-object v0
    invoke-static { v0 }, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z
    move-result v0
    if-nez v0, :L0
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity$h;->b:Lcn/manstep/phonemirrorBox/MainActivity;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/MainActivity;->v0(Lcn/manstep/phonemirrorBox/MainActivity;)V
    goto :L1
  :L0
  .line 4
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z
    move-result v0
    if-nez v0, :L1
  .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity$h;->b:Lcn/manstep/phonemirrorBox/MainActivity;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/MainActivity;->w0(Lcn/manstep/phonemirrorBox/MainActivity;)V
  :L1
    return-void
.end method
