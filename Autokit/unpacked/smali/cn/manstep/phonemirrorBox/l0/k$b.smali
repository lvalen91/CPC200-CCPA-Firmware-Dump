.class Lcn/manstep/phonemirrorBox/l0/k$b;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnClickListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/l0/k;->g1(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/l0/k;

.method constructor <init>(Lcn/manstep/phonemirrorBox/l0/k;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/k$b;->b:Lcn/manstep/phonemirrorBox/l0/k;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onClick(Landroid/view/View;)V
  .registers 3
  .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/k$b;->b:Lcn/manstep/phonemirrorBox/l0/k;
    invoke-virtual { p1 }, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;
    move-result-object p1
    instance-of p1, p1, Lcn/manstep/phonemirrorBox/l0/s;
    if-eqz p1, :L0
  .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/k$b;->b:Lcn/manstep/phonemirrorBox/l0/k;
    invoke-virtual { p1 }, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;
    move-result-object p1
    check-cast p1, Lcn/manstep/phonemirrorBox/l0/s;
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/k$b;->b:Lcn/manstep/phonemirrorBox/l0/k;
    invoke-interface { p1, v0 }, Lcn/manstep/phonemirrorBox/l0/s;->f(Landroidx/fragment/app/Fragment;)V
    goto :L1
  :L0
  .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/k$b;->b:Lcn/manstep/phonemirrorBox/l0/k;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/l0/m;->g2()V
  :L1
    return-void
.end method
