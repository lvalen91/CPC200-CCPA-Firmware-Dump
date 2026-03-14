.class Lcn/manstep/phonemirrorBox/MainActivity$f;
.super Ljava/lang/Object;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/MainActivity;->Z0()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcn/manstep/phonemirrorBox/MainActivity;

.method constructor <init>(Lcn/manstep/phonemirrorBox/MainActivity;Landroid/view/View;)V
  .registers 3
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity$f;->c:Lcn/manstep/phonemirrorBox/MainActivity;
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/MainActivity$f;->b:Landroid/view/View;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onGlobalLayout()V
  .registers 7
    const/4 v0, 2
    new-array v0, v0, [I
  .line 1
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/MainActivity$f;->b:Landroid/view/View;
    invoke-virtual { v1, v0 }, Landroid/view/View;->getLocationOnScreen([I)V
    const/4 v1, 0
  .line 2
    aget v2, v0, v1
    const/4 v3, 1
  .line 3
    aget v0, v0, v3
  .line 4
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/MainActivity$f;->c:Lcn/manstep/phonemirrorBox/MainActivity;
    invoke-static { v4 }, Lcn/manstep/phonemirrorBox/MainActivity;->u0(Lcn/manstep/phonemirrorBox/MainActivity;)[I
    move-result-object v4
    aget v4, v4, v1
    if-ne v4, v2, :L0
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/MainActivity$f;->c:Lcn/manstep/phonemirrorBox/MainActivity;
    invoke-static { v4 }, Lcn/manstep/phonemirrorBox/MainActivity;->u0(Lcn/manstep/phonemirrorBox/MainActivity;)[I
    move-result-object v4
    aget v4, v4, v3
    if-eq v4, v0, :L2
  :L0
  .line 5
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "X Coordinate: "
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v4, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v5, ", Y Coordinate: "
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v4, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    const-string v5, "Position"
    invoke-static { v5, v4 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 6
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/MainActivity$f;->c:Lcn/manstep/phonemirrorBox/MainActivity;
    invoke-static { v4 }, Lcn/manstep/phonemirrorBox/MainActivity;->u0(Lcn/manstep/phonemirrorBox/MainActivity;)[I
    move-result-object v4
    aput v2, v4, v1
  .line 7
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/MainActivity$f;->c:Lcn/manstep/phonemirrorBox/MainActivity;
    invoke-static { v4 }, Lcn/manstep/phonemirrorBox/MainActivity;->u0(Lcn/manstep/phonemirrorBox/MainActivity;)[I
    move-result-object v4
    aput v0, v4, v3
  .line 8
    invoke-static { }, Lcn/manstep/phonemirrorBox/floatwindow/e;->g()Lcn/manstep/phonemirrorBox/floatwindow/e;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/floatwindow/e;->i()Z
    move-result v0
    if-eqz v0, :L2
    const-string v0, "MainActivity"
    const-string v4, "onGlobalLayout\uff1a "
  .line 9
    invoke-static { v0, v4 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 10
    invoke-static { }, Lcn/manstep/phonemirrorBox/floatwindow/e;->g()Lcn/manstep/phonemirrorBox/floatwindow/e;
    move-result-object v0
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/MainActivity$f;->c:Lcn/manstep/phonemirrorBox/MainActivity;
    invoke-virtual { v4 }, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;
    move-result-object v4
    invoke-static/range { v4 .. v4 }, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;
    move-result-object v4
    const/16 v5, 100
    if-le v2, v5, :L1
    const/4 v1, 1
  :L1
    invoke-virtual { v0, v4, v1 }, Lcn/manstep/phonemirrorBox/floatwindow/e;->p(Landroid/content/Context;Z)V
  :L2
    return-void
.end method
