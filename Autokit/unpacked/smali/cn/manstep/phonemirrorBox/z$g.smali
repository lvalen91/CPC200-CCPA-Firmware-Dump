.class Lcn/manstep/phonemirrorBox/z$g;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/z;->Q2()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/z;

.method constructor <init>(Lcn/manstep/phonemirrorBox/z;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/z$g;->b:Lcn/manstep/phonemirrorBox/z;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z$g;->b:Lcn/manstep/phonemirrorBox/z;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/z;->A2()V
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z$g;->b:Lcn/manstep/phonemirrorBox/z;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/z;->g2(Lcn/manstep/phonemirrorBox/z;)Landroid/widget/Button;
    move-result-object v0
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/z$g;->b:Lcn/manstep/phonemirrorBox/z;
    invoke-virtual { v1 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v1
    const v2, 2131689623
    invoke-static { v1, v2 }, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z$g;->b:Lcn/manstep/phonemirrorBox/z;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/z;->g2(Lcn/manstep/phonemirrorBox/z;)Landroid/widget/Button;
    move-result-object v0
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Landroid/widget/Button;->setEnabled(Z)V
    return-void
.end method
