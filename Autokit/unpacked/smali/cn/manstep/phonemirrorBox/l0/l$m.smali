.class Lcn/manstep/phonemirrorBox/l0/l$m;
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

.field final synthetic a:Lcn/manstep/phonemirrorBox/l0/l;

.method constructor <init>(Lcn/manstep/phonemirrorBox/l0/l;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$m;->a:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
  .registers 8
  .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$m;->a:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;
    move-result-object p1
    invoke-virtual { p1, p2 }, Lcn/manstep/phonemirrorBox/x0/a;->b0(Z)V
    if-nez p2, :L0
  .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$m;->a:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/l0/l;->v2(Lcn/manstep/phonemirrorBox/l0/l;)Landroid/os/CountDownTimer;
    move-result-object p1
    invoke-virtual { p1 }, Landroid/os/CountDownTimer;->cancel()V
  .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$m;->a:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;
    move-result-object p1
    const/4 p2, 0
    invoke-virtual { p1, p2 }, Lcn/manstep/phonemirrorBox/x0/a;->a0(I)V
  .line 4
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/e;->j()Lcn/manstep/phonemirrorBox/f0/e;
    move-result-object p1
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/f0/e;->g()V
  .line 5
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$m;->a:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { p1, p2 }, Lcn/manstep/phonemirrorBox/l0/l;->i2(Lcn/manstep/phonemirrorBox/l0/l;Z)Z
  .line 6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$m;->a:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/l0/l;->q2(Lcn/manstep/phonemirrorBox/l0/l;)Ld/b/a/b;
    move-result-object p1
    invoke-virtual { p1 }, Ld/b/a/b;->i()V
    goto/16 :L2
  :L0
  .line 7
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$m;->a:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/l0/l;->r2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/i0/g;
    move-result-object p1
    iget-object p1, p1, Lcn/manstep/phonemirrorBox/i0/g;->w:Landroid/widget/CheckBox;
    invoke-virtual { p1 }, Landroid/widget/CheckBox;->isChecked()Z
    move-result p1
    if-eqz p1, :L1
  .line 8
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$m;->a:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/l0/l;->v2(Lcn/manstep/phonemirrorBox/l0/l;)Landroid/os/CountDownTimer;
    move-result-object p1
    invoke-virtual { p1 }, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;
  :L1
  .line 9
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$m;->a:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;
    move-result-object p1
    const/4 p2, 1
    invoke-virtual { p1, p2 }, Lcn/manstep/phonemirrorBox/x0/a;->a0(I)V
  .line 10
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$m;->a:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { p1, p2 }, Lcn/manstep/phonemirrorBox/l0/l;->i2(Lcn/manstep/phonemirrorBox/l0/l;Z)Z
  .line 11
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/e;->j()Lcn/manstep/phonemirrorBox/f0/e;
    move-result-object p1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l$m;->a:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;
    move-result-object v1
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/x0/a;->z()Landroidx/lifecycle/o;
    move-result-object v1
    invoke-virtual { v1 }, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/Boolean;
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/l0/l;->E2(Lcn/manstep/phonemirrorBox/l0/l;Ljava/lang/Boolean;)Z
    move-result v0
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/l0/l$m;->a:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;
    move-result-object v2
    invoke-virtual { v2 }, Lcn/manstep/phonemirrorBox/x0/a;->C()Landroidx/lifecycle/o;
    move-result-object v2
    invoke-virtual { v2 }, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/Integer;
    invoke-static { v1, v2 }, Lcn/manstep/phonemirrorBox/l0/l;->F2(Lcn/manstep/phonemirrorBox/l0/l;Ljava/lang/Integer;)I
    move-result v2
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/l0/l$m;->a:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { v3 }, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;
    move-result-object v4
    invoke-virtual { v4 }, Lcn/manstep/phonemirrorBox/x0/a;->B()Landroidx/lifecycle/o;
    move-result-object v4
    invoke-virtual { v4 }, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Ljava/lang/Integer;
    invoke-static { v3, v4 }, Lcn/manstep/phonemirrorBox/l0/l;->F2(Lcn/manstep/phonemirrorBox/l0/l;Ljava/lang/Integer;)I
    move-result v3
    invoke-static { v1, v2, v3 }, Lcn/manstep/phonemirrorBox/l0/l;->G2(Lcn/manstep/phonemirrorBox/l0/l;II)Landroid/media/AudioAttributes;
    move-result-object v1
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/l0/l$m;->a:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;
    move-result-object v3
    invoke-virtual { v3 }, Lcn/manstep/phonemirrorBox/x0/a;->C()Landroidx/lifecycle/o;
    move-result-object v3
    invoke-virtual { v3 }, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/lang/Integer;
    invoke-static { v2, v3 }, Lcn/manstep/phonemirrorBox/l0/l;->F2(Lcn/manstep/phonemirrorBox/l0/l;Ljava/lang/Integer;)I
    move-result v2
    invoke-virtual { p1, v0, v1, v2 }, Lcn/manstep/phonemirrorBox/f0/e;->n(ZLandroid/media/AudioAttributes;I)I
  .line 12
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$m;->a:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { p1, p2 }, Lcn/manstep/phonemirrorBox/l0/l;->H2(Lcn/manstep/phonemirrorBox/l0/l;I)V
  :L2
    return-void
.end method
