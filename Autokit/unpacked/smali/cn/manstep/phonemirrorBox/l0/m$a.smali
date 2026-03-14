.class Lcn/manstep/phonemirrorBox/l0/m$a;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnKeyListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/l0/m;->g1(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/l0/m;

.method constructor <init>(Lcn/manstep/phonemirrorBox/l0/m;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/m$a;->b:Lcn/manstep/phonemirrorBox/l0/m;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
  .registers 4
    const/4 p1, 4
    if-ne p2, p1, :L1
  .line 1
    invoke-virtual { p3 }, Landroid/view/KeyEvent;->getAction()I
    move-result p1
    const/4 p2, 1
    if-ne p1, p2, :L0
  .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/m$a;->b:Lcn/manstep/phonemirrorBox/l0/m;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/l0/m;->g2()V
  :L0
    return p2
  :L1
    const/4 p1, 0
    return p1
.end method
