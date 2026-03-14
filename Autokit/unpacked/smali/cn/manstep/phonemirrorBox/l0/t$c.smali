.class Lcn/manstep/phonemirrorBox/l0/t$c;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnClickListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/l0/t;->B0(Landroid/os/Bundle;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/l0/t;

.method constructor <init>(Lcn/manstep/phonemirrorBox/l0/t;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/t$c;->b:Lcn/manstep/phonemirrorBox/l0/t;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onClick(Landroid/view/View;)V
  .registers 4
  .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/t$c;->b:Lcn/manstep/phonemirrorBox/l0/t;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/l0/t;->h2(Lcn/manstep/phonemirrorBox/l0/t;)Lcn/manstep/phonemirrorBox/l0/t$e;
    move-result-object p1
    if-eqz p1, :L0
  .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/t$c;->b:Lcn/manstep/phonemirrorBox/l0/t;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/l0/t;->h2(Lcn/manstep/phonemirrorBox/l0/t;)Lcn/manstep/phonemirrorBox/l0/t$e;
    move-result-object p1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/t$c;->b:Lcn/manstep/phonemirrorBox/l0/t;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/l0/t;->i2(Lcn/manstep/phonemirrorBox/l0/t;)Lcn/manstep/phonemirrorBox/i0/w;
    move-result-object v0
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/i0/w;->x:Landroid/widget/EditText;
    invoke-virtual { v0 }, Landroid/widget/EditText;->getText()Landroid/text/Editable;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-interface { p1, v0 }, Lcn/manstep/phonemirrorBox/l0/t$e;->a(Ljava/lang/String;)Z
    move-result p1
    if-nez p1, :L0
  .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/t$c;->b:Lcn/manstep/phonemirrorBox/l0/t;
    invoke-virtual { p1 }, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;
    move-result-object p1
    const v0, 2131689754
    const/4 v1, 0
    invoke-static { p1, v0, v1 }, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
    move-result-object p1
    invoke-virtual { p1 }, Landroid/widget/Toast;->show()V
    return-void
  :L0
  .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/t$c;->b:Lcn/manstep/phonemirrorBox/l0/t;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/l0/t;->g2(Lcn/manstep/phonemirrorBox/l0/t;)Landroidx/fragment/app/n;
    move-result-object p1
    invoke-virtual { p1 }, Landroidx/fragment/app/n;->l()Landroidx/fragment/app/w;
    move-result-object p1
  .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/t$c;->b:Lcn/manstep/phonemirrorBox/l0/t;
    invoke-virtual { p1, v0 }, Landroidx/fragment/app/w;->o(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;
  .line 6
    invoke-virtual { p1 }, Landroidx/fragment/app/w;->h()I
    return-void
.end method
