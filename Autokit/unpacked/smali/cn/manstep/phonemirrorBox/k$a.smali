.class Lcn/manstep/phonemirrorBox/k$a;
.super Ljava/lang/Object;
.implements Landroid/content/ComponentCallbacks;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcn/manstep/phonemirrorBox/k;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/k;

.method constructor <init>(Lcn/manstep/phonemirrorBox/k;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/k$a;->b:Lcn/manstep/phonemirrorBox/k;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
  .registers 5
  .line 1
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F
    const/4 v1, 0
    cmpl-float v0, v0, v1
    if-lez v0, :L2
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k$a;->b:Lcn/manstep/phonemirrorBox/k;
    invoke-virtual { v0 }, Landroid/app/Activity;->getApplication()Landroid/app/Application;
    move-result-object v2
    invoke-virtual { v2 }, Landroid/app/Application;->getResources()Landroid/content/res/Resources;
    move-result-object v2
    invoke-virtual { v2 }, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
    move-result-object v2
    iget v2, v2, Landroid/util/DisplayMetrics;->scaledDensity:F
    invoke-static { v0, v2 }, Lcn/manstep/phonemirrorBox/k;->L(Lcn/manstep/phonemirrorBox/k;F)F
  .line 3
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "ComponentCallbacks->onConfigurationChanged: fontScale="
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    const-string v2, ",newLocale="
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v2, ",curLocale="
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/k$a;->b:Lcn/manstep/phonemirrorBox/k;
    invoke-virtual { v2 }, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;
    move-result-object v2
    invoke-virtual { v2 }, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
    move-result-object v2
    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v2, "BaseActivity"
    invoke-static { v2, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k$a;->b:Lcn/manstep/phonemirrorBox/k;
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/k;->g:Ljava/util/Locale;
    invoke-virtual { v0 }, Ljava/util/Locale;->toString()Ljava/lang/String;
    move-result-object v0
    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
    invoke-virtual { v2 }, Ljava/util/Locale;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v0, v2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L0
  .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k$a;->b:Lcn/manstep/phonemirrorBox/k;
    const/4 v2, 1
    iput-boolean v2, v0, Lcn/manstep/phonemirrorBox/k;->j:Z
  .line 6
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z
    move-result v0
    if-nez v0, :L0
  .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k$a;->b:Lcn/manstep/phonemirrorBox/k;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/k;->recreate()V
  :L0
  .line 8
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k$a;->b:Lcn/manstep/phonemirrorBox/k;
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/k;->M(Lcn/manstep/phonemirrorBox/k;F)F
  .line 9
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/u;->y()Ljava/lang/String;
    move-result-object v0
    const-string v1, "QTI-msmnile_gvmq for arm64-k6801_a-11(30)"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k$a;->b:Lcn/manstep/phonemirrorBox/k;
    invoke-static { v0, p1 }, Lcn/manstep/phonemirrorBox/k;->N(Lcn/manstep/phonemirrorBox/k;Landroid/content/res/Configuration;)Z
    move-result p1
    if-eqz p1, :L1
    return-void
  :L1
  .line 10
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/k$a;->b:Lcn/manstep/phonemirrorBox/k;
    invoke-virtual { p1 }, Landroid/app/Activity;->getApplication()Landroid/app/Application;
    move-result-object v0
    invoke-static { p1, p1, v0 }, Lcn/manstep/phonemirrorBox/k;->O(Lcn/manstep/phonemirrorBox/k;Landroid/app/Activity;Landroid/app/Application;)V
  .line 11
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z
    move-result p1
    if-nez p1, :L2
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object p1
    const/4 v0, 0
    const-string v1, "ShowFloatBall"
    invoke-virtual { p1, v1, v0 }, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z
    move-result p1
    if-eqz p1, :L2
  .line 12
    invoke-static { }, Lcn/manstep/phonemirrorBox/floatwindow/e;->g()Lcn/manstep/phonemirrorBox/floatwindow/e;
    move-result-object p1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k$a;->b:Lcn/manstep/phonemirrorBox/k;
    invoke-virtual { v0 }, Landroid/app/Activity;->getApplication()Landroid/app/Application;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;
    move-result-object v0
    invoke-static/range { v0 .. v0 }, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;
    move-result-object v0
    invoke-virtual { p1, v0 }, Lcn/manstep/phonemirrorBox/floatwindow/e;->o(Landroid/content/Context;)V
  :L2
    return-void
.end method

.method public onLowMemory()V
  .registers 1
    return-void
.end method
