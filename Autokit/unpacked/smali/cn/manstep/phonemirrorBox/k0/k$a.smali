.class Lcn/manstep/phonemirrorBox/k0/k$a;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnClickListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/k0/k;->g1(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/k0/k;

.method constructor <init>(Lcn/manstep/phonemirrorBox/k0/k;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/k0/k$a;->b:Lcn/manstep/phonemirrorBox/k0/k;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onClick(Landroid/view/View;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/k$a;->b:Lcn/manstep/phonemirrorBox/k0/k;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/k0/k;->v2(Lcn/manstep/phonemirrorBox/k0/k;)Landroid/view/View$OnClickListener;
    move-result-object v0
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/k$a;->b:Lcn/manstep/phonemirrorBox/k0/k;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/k0/k;->v2(Lcn/manstep/phonemirrorBox/k0/k;)Landroid/view/View$OnClickListener;
    move-result-object v0
    invoke-interface { v0, p1 }, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V
  .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/k0/k$a;->b:Lcn/manstep/phonemirrorBox/k0/k;
    invoke-virtual { p1 }, Landroidx/fragment/app/d;->j2()V
  :L0
    return-void
.end method
