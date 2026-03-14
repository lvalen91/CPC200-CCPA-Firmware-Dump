.class Lcn/manstep/phonemirrorBox/l0/o$g;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnClickListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/l0/o;->g1(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/l0/o;

.method constructor <init>(Lcn/manstep/phonemirrorBox/l0/o;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/o$g;->b:Lcn/manstep/phonemirrorBox/l0/o;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onClick(Landroid/view/View;)V
  .registers 3
  .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/o$g;->b:Lcn/manstep/phonemirrorBox/l0/o;
    invoke-virtual { p1 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object p1
    instance-of p1, p1, Lcn/manstep/phonemirrorBox/MainActivity;
    if-eqz p1, :L1
  .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/o$g;->b:Lcn/manstep/phonemirrorBox/l0/o;
    invoke-virtual { p1 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object p1
    check-cast p1, Lcn/manstep/phonemirrorBox/MainActivity;
  .line 3
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/MainActivity;->m1()V
  .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/o$g;->b:Lcn/manstep/phonemirrorBox/l0/o;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/l0/o;->i2(Lcn/manstep/phonemirrorBox/l0/o;)Lcn/manstep/phonemirrorBox/i0/m;
    move-result-object p1
    iget-object p1, p1, Lcn/manstep/phonemirrorBox/i0/m;->D:Landroidx/appcompat/widget/SwitchCompat;
    invoke-virtual { p1 }, Landroid/widget/CompoundButton;->isChecked()Z
    move-result p1
    if-nez p1, :L0
  .line 5
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/o$g;->b:Lcn/manstep/phonemirrorBox/l0/o;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/l0/o;->i2(Lcn/manstep/phonemirrorBox/l0/o;)Lcn/manstep/phonemirrorBox/i0/m;
    move-result-object p1
    iget-object p1, p1, Lcn/manstep/phonemirrorBox/i0/m;->D:Landroidx/appcompat/widget/SwitchCompat;
    invoke-virtual { p1 }, Landroid/widget/CompoundButton;->performClick()Z
  :L0
  .line 6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/o$g;->b:Lcn/manstep/phonemirrorBox/l0/o;
    invoke-virtual { p1 }, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;
    move-result-object p1
    const-string v0, "\u8bf7\u56de\u5230\u9996\u9875\u8fde\u63a5\u624b\u673a\uff0c\u518d\u8fdb\u884c\u8c03\u8282"
    invoke-static { p1, v0 }, Lcn/manstep/phonemirrorBox/widget/a;->b(Landroid/content/Context;Ljava/lang/CharSequence;)V
  :L1
    return-void
.end method
