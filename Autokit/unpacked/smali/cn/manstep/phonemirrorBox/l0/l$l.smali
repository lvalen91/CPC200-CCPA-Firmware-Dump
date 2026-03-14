.class Lcn/manstep/phonemirrorBox/l0/l$l;
.super Ljava/lang/Object;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/l0/l;->g1(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:Lcn/manstep/phonemirrorBox/l0/l;

.method constructor <init>(Lcn/manstep/phonemirrorBox/l0/l;Landroid/widget/CheckBox;)V
  .registers 3
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$l;->b:Lcn/manstep/phonemirrorBox/l0/l;
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/l0/l$l;->a:Landroid/widget/CheckBox;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
  .registers 3
  .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$l;->b:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;
    move-result-object p1
    invoke-virtual { p1, p2 }, Lcn/manstep/phonemirrorBox/x0/a;->b0(Z)V
    if-nez p2, :L2
  .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$l;->b:Lcn/manstep/phonemirrorBox/l0/l;
    const/4 p2, 0
    invoke-static { p1, p2 }, Lcn/manstep/phonemirrorBox/l0/l;->i2(Lcn/manstep/phonemirrorBox/l0/l;Z)Z
  .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$l;->b:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;
    move-result-object p1
    invoke-virtual { p1, p2 }, Lcn/manstep/phonemirrorBox/x0/a;->a0(I)V
  .line 4
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/c;->n()Lcn/manstep/phonemirrorBox/f0/c;
    move-result-object p1
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/f0/c;->g()V
  .line 5
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$l;->b:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/l0/l;->p2(Lcn/manstep/phonemirrorBox/l0/l;)Ld/b/a/b;
    move-result-object p1
    if-eqz p1, :L0
  .line 6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$l;->b:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/l0/l;->p2(Lcn/manstep/phonemirrorBox/l0/l;)Ld/b/a/b;
    move-result-object p1
    invoke-virtual { p1 }, Ld/b/a/b;->i()V
    goto :L1
  :L0
  .line 7
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$l;->b:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/l0/l;->q2(Lcn/manstep/phonemirrorBox/l0/l;)Ld/b/a/b;
    move-result-object p1
    invoke-virtual { p1 }, Ld/b/a/b;->i()V
  :L1
  .line 8
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$l;->a:Landroid/widget/CheckBox;
    invoke-virtual { p1, p2 }, Landroid/widget/CheckBox;->setChecked(Z)V
    goto :L3
  :L2
  .line 9
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$l;->b:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;
    move-result-object p1
    const/4 p2, 3
    invoke-virtual { p1, p2 }, Lcn/manstep/phonemirrorBox/x0/a;->a0(I)V
  .line 10
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$l;->b:Lcn/manstep/phonemirrorBox/l0/l;
    const/4 p2, 1
    invoke-static { p1, p2 }, Lcn/manstep/phonemirrorBox/l0/l;->i2(Lcn/manstep/phonemirrorBox/l0/l;Z)Z
  .line 11
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/c;->n()Lcn/manstep/phonemirrorBox/f0/c;
    move-result-object p1
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/f0/c;->u()I
  .line 12
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$l;->b:Lcn/manstep/phonemirrorBox/l0/l;
    const/4 p2, 5
    invoke-static { p1, p2 }, Lcn/manstep/phonemirrorBox/l0/l;->H2(Lcn/manstep/phonemirrorBox/l0/l;I)V
  :L3
    return-void
.end method
