.class public Lcn/manstep/phonemirrorBox/FirstPage;
.super Landroidx/fragment/app/Fragment;
.implements Lcn/manstep/phonemirrorBox/v0/e$d;
.source "SourceFile"

.field private a0:Lcn/manstep/phonemirrorBox/x0/g;

.field private b0:Lcn/manstep/phonemirrorBox/x0/d;

.method public constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Landroidx/fragment/app/Fragment;-><init>()V
    return-void
.end method

.method public L0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
  .registers 6
    const p3, 2131492941
    const/4 v0, 0
  .line 1
    invoke-virtual { p1, p3, p2, v0 }, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    move-result-object p1
  .line 2
    new-instance p2, Landroidx/lifecycle/w$a;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object p3
    if-nez p3, :L0
    const/4 p3, 0
    goto :L1
  :L0
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object p3
    invoke-virtual { p3 }, Landroid/app/Activity;->getApplication()Landroid/app/Application;
    move-result-object p3
  :L1
    invoke-direct { p2, p3 }, Landroidx/lifecycle/w$a;-><init>(Landroid/app/Application;)V
  .line 3
    new-instance p3, Landroidx/lifecycle/w;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->J1()Landroidx/fragment/app/e;
    move-result-object v0
    invoke-direct { p3, v0, p2 }, Landroidx/lifecycle/w;-><init>(Landroidx/lifecycle/y;Landroidx/lifecycle/w$b;)V
    const-class v0, Lcn/manstep/phonemirrorBox/x0/k;
    invoke-virtual { p3, v0 }, Landroidx/lifecycle/w;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;
    move-result-object p3
    check-cast p3, Lcn/manstep/phonemirrorBox/x0/k;
  .line 4
    new-instance v0, Landroidx/lifecycle/w;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->J1()Landroidx/fragment/app/e;
    move-result-object v1
    invoke-direct { v0, v1, p2 }, Landroidx/lifecycle/w;-><init>(Landroidx/lifecycle/y;Landroidx/lifecycle/w$b;)V
    const-class v1, Lcn/manstep/phonemirrorBox/x0/g;
    invoke-virtual { v0, v1 }, Landroidx/lifecycle/w;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;
    move-result-object v0
    check-cast v0, Lcn/manstep/phonemirrorBox/x0/g;
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/FirstPage;->a0:Lcn/manstep/phonemirrorBox/x0/g;
  .line 5
    new-instance v0, Landroidx/lifecycle/w;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->J1()Landroidx/fragment/app/e;
    move-result-object v1
    invoke-direct { v0, v1, p2 }, Landroidx/lifecycle/w;-><init>(Landroidx/lifecycle/y;Landroidx/lifecycle/w$b;)V
    const-class p2, Lcn/manstep/phonemirrorBox/x0/d;
    invoke-virtual { v0, p2 }, Landroidx/lifecycle/w;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;
    move-result-object p2
    check-cast p2, Lcn/manstep/phonemirrorBox/x0/d;
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/FirstPage;->b0:Lcn/manstep/phonemirrorBox/x0/d;
  .line 6
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/FirstPage;->a0:Lcn/manstep/phonemirrorBox/x0/g;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->J()Landroidx/fragment/app/n;
    move-result-object v0
    invoke-virtual { p2, v0 }, Lcn/manstep/phonemirrorBox/x0/g;->J(Landroidx/fragment/app/n;)V
  .line 7
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/FirstPage;->a0:Lcn/manstep/phonemirrorBox/x0/g;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v0
    invoke-virtual { p2, v0 }, Lcn/manstep/phonemirrorBox/x0/g;->D(Landroid/app/Activity;)V
  .line 8
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/FirstPage;->a0:Lcn/manstep/phonemirrorBox/x0/g;
    invoke-virtual { p2, p3 }, Lcn/manstep/phonemirrorBox/x0/g;->L(Lcn/manstep/phonemirrorBox/x0/k;)V
  .line 9
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/i0/o;->L(Landroid/view/View;)Lcn/manstep/phonemirrorBox/i0/o;
    move-result-object p2
  .line 10
    iget-object p3, p0, Lcn/manstep/phonemirrorBox/FirstPage;->a0:Lcn/manstep/phonemirrorBox/x0/g;
    invoke-virtual { p2, p3 }, Lcn/manstep/phonemirrorBox/i0/o;->N(Lcn/manstep/phonemirrorBox/x0/g;)V
  .line 11
    invoke-virtual { p2, p0 }, Landroidx/databinding/ViewDataBinding;->G(Landroidx/lifecycle/j;)V
  .line 12
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/v0/e;->O(Lcn/manstep/phonemirrorBox/v0/e$d;)V
    return-object p1
.end method

.method public M0()V
  .registers 1
  .line 1
    invoke-super { p0 }, Landroidx/fragment/app/Fragment;->M0()V
  .line 2
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/v0/e;->T(Lcn/manstep/phonemirrorBox/v0/e$d;)V
    return-void
.end method

.method public g(III)V
  .registers 8
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "onListenMsg: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, ", "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v1, "FirstPage"
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    const/4 v0, 4
    const/4 v2, 0
    const/4 v3, 1
    if-ne p1, v0, :L14
    const/16 p1, 53
    if-ne p2, p1, :L0
  .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/FirstPage;->a0:Lcn/manstep/phonemirrorBox/x0/g;
    if-eqz p1, :L17
    sget-object p2, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    if-eqz p2, :L17
  .line 3
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->r()Ljava/lang/String;
    move-result-object p2
    invoke-virtual { p1, p2 }, Lcn/manstep/phonemirrorBox/x0/g;->F(Ljava/lang/String;)V
    goto/16 :L17
  :L0
    const/16 p1, 52
    if-eq p2, p1, :L13
    const/16 p1, 8
    if-ne p2, p1, :L1
    goto/16 :L13
  :L1
    const/4 p1, 2
    if-ne p2, v3, :L2
  .line 4
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/FirstPage;->a0:Lcn/manstep/phonemirrorBox/x0/g;
    invoke-virtual { p2, v3 }, Lcn/manstep/phonemirrorBox/x0/g;->q(Z)V
  .line 5
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/FirstPage;->b0:Lcn/manstep/phonemirrorBox/x0/d;
    invoke-virtual { p2, p1 }, Lcn/manstep/phonemirrorBox/x0/d;->E(I)V
    goto/16 :L17
  :L2
    const/16 v0, 15
    if-ne p2, v0, :L3
  .line 6
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/FirstPage;->b0:Lcn/manstep/phonemirrorBox/x0/d;
    invoke-virtual { p2, p1 }, Lcn/manstep/phonemirrorBox/x0/d;->E(I)V
    goto/16 :L17
  :L3
    const/16 v0, 24
    if-ne p2, v0, :L4
  .line 7
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/FirstPage;->a0:Lcn/manstep/phonemirrorBox/x0/g;
    invoke-virtual { p1, v3 }, Lcn/manstep/phonemirrorBox/x0/g;->E(Z)V
    goto/16 :L17
  :L4
    const/16 v0, 25
    if-ne p2, v0, :L5
  .line 8
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/FirstPage;->a0:Lcn/manstep/phonemirrorBox/x0/g;
    invoke-virtual { p1, v2 }, Lcn/manstep/phonemirrorBox/x0/g;->E(Z)V
    goto/16 :L17
  :L5
    const/16 v0, 26
    if-ne p2, v0, :L6
  .line 9
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/FirstPage;->a0:Lcn/manstep/phonemirrorBox/x0/g;
    invoke-virtual { p1, v3 }, Lcn/manstep/phonemirrorBox/x0/g;->M(Z)V
    goto/16 :L17
  :L6
    const/16 v0, 27
    if-ne p2, v0, :L7
  .line 10
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/FirstPage;->a0:Lcn/manstep/phonemirrorBox/x0/g;
    invoke-virtual { p1, v2 }, Lcn/manstep/phonemirrorBox/x0/g;->M(Z)V
    goto/16 :L17
  :L7
    const/16 v0, 29
    if-ne p2, v0, :L8
  .line 11
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/FirstPage;->a0:Lcn/manstep/phonemirrorBox/x0/g;
    invoke-virtual { p1, v2 }, Lcn/manstep/phonemirrorBox/x0/g;->Q(Z)V
    goto/16 :L17
  :L8
    const/16 v0, 30
    if-ne p2, v0, :L9
  .line 12
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/FirstPage;->a0:Lcn/manstep/phonemirrorBox/x0/g;
    invoke-virtual { p1, v3 }, Lcn/manstep/phonemirrorBox/x0/g;->Q(Z)V
    goto/16 :L17
  :L9
    const/16 v0, 50
    if-ne p2, v0, :L10
  .line 13
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/FirstPage;->a0:Lcn/manstep/phonemirrorBox/x0/g;
    invoke-virtual { p1, v3 }, Lcn/manstep/phonemirrorBox/x0/g;->A(I)V
    goto/16 :L17
  :L10
    const/16 v0, 51
    if-ne p2, v0, :L11
  .line 14
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/FirstPage;->a0:Lcn/manstep/phonemirrorBox/x0/g;
    invoke-virtual { p2, p1 }, Lcn/manstep/phonemirrorBox/x0/g;->A(I)V
    goto/16 :L17
  :L11
    const/16 p1, 70
    if-ne p2, p1, :L12
  .line 15
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/FirstPage;->a0:Lcn/manstep/phonemirrorBox/x0/g;
    invoke-virtual { p1, p3 }, Lcn/manstep/phonemirrorBox/x0/g;->G(I)V
    goto/16 :L17
  :L12
    const/16 p1, 56
    if-ne p2, p1, :L17
  .line 16
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/FirstPage;->b0:Lcn/manstep/phonemirrorBox/x0/d;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/x0/d;->y()V
    goto/16 :L17
  :L13
  .line 17
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/FirstPage;->a0:Lcn/manstep/phonemirrorBox/x0/g;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/x0/g;->z()V
  .line 18
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p3, "onListenMsg: wParam="
    invoke-virtual { p1, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { v1, p1 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
  .line 19
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/FirstPage;->a0:Lcn/manstep/phonemirrorBox/x0/g;
    invoke-virtual { p1, v2 }, Lcn/manstep/phonemirrorBox/x0/g;->q(Z)V
  .line 20
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;
    move-result-object p1
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->u()V
  .line 21
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/FirstPage;->b0:Lcn/manstep/phonemirrorBox/x0/d;
    invoke-virtual { p1, v2 }, Lcn/manstep/phonemirrorBox/x0/d;->E(I)V
    goto :L17
  :L14
    if-ne p1, v3, :L17
  .line 22
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p3, "onListenMsg: page="
    invoke-virtual { p1, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p3, ","
    invoke-virtual { p1, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { p2 }, Lcn/manstep/phonemirrorBox/v0/e;->E(I)Ljava/lang/String;
    move-result-object p3
    invoke-virtual { p1, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { v1, p1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    const/4 p1, 5
    if-ne p2, p1, :L15
  .line 23
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/FirstPage;->a0:Lcn/manstep/phonemirrorBox/x0/g;
    invoke-virtual { p1, v3 }, Lcn/manstep/phonemirrorBox/x0/g;->B(Z)V
  .line 24
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/FirstPage;->b0:Lcn/manstep/phonemirrorBox/x0/d;
    const/4 p2, 3
    invoke-virtual { p1, p2 }, Lcn/manstep/phonemirrorBox/x0/d;->E(I)V
    goto :L17
  :L15
    if-ne p2, v0, :L16
  .line 25
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/FirstPage;->b0:Lcn/manstep/phonemirrorBox/x0/d;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/x0/d;->v()Landroidx/lifecycle/o;
    move-result-object p1
    invoke-virtual { p1 }, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Ljava/lang/Integer;
    invoke-virtual { p1 }, Ljava/lang/Integer;->intValue()I
    move-result p1
    if-eq v0, p1, :L17
  .line 26
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/FirstPage;->b0:Lcn/manstep/phonemirrorBox/x0/d;
    invoke-virtual { p1, v0 }, Lcn/manstep/phonemirrorBox/x0/d;->E(I)V
  .line 27
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/FirstPage;->a0:Lcn/manstep/phonemirrorBox/x0/g;
    invoke-virtual { p1, v2 }, Lcn/manstep/phonemirrorBox/x0/g;->B(Z)V
    goto :L17
  :L16
  .line 28
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/FirstPage;->a0:Lcn/manstep/phonemirrorBox/x0/g;
    invoke-virtual { p1, v2 }, Lcn/manstep/phonemirrorBox/x0/g;->B(Z)V
  :L17
    return-void
.end method

.method public g1(Landroid/view/View;Landroid/os/Bundle;)V
  .registers 3
  .line 1
    invoke-super { p0, p1, p2 }, Landroidx/fragment/app/Fragment;->g1(Landroid/view/View;Landroid/os/Bundle;)V
  .line 2
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->l0()Landroid/view/View;
    move-result-object p1
    if-eqz p1, :L0
  .line 3
    new-instance p2, Lcn/manstep/phonemirrorBox/FirstPage$a;
    invoke-direct { p2, p0, p1 }, Lcn/manstep/phonemirrorBox/FirstPage$a;-><init>(Lcn/manstep/phonemirrorBox/FirstPage;Landroid/view/View;)V
    invoke-virtual { p1, p2 }, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
  :L0
    return-void
.end method

.method public s(IILandroid/os/Bundle;)V
  .registers 5
    const/4 v0, 4
    if-ne p1, v0, :L0
    const/16 p1, 62
    if-ne p2, p1, :L0
  .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/FirstPage;->b0:Lcn/manstep/phonemirrorBox/x0/d;
    if-eqz p1, :L0
    const-string p1, "COVER"
  .line 2
    invoke-virtual { p3, p1 }, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B
    move-result-object p1
  .line 3
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/FirstPage;->b0:Lcn/manstep/phonemirrorBox/x0/d;
    invoke-virtual { p2, p1 }, Lcn/manstep/phonemirrorBox/x0/d;->A([B)V
  :L0
    return-void
.end method

.method public x(IILjava/lang/String;)V
  .registers 5
    const/4 v0, 4
    if-ne p1, v0, :L2
    const/16 p1, 60
    if-ne p2, p1, :L0
  .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/FirstPage;->b0:Lcn/manstep/phonemirrorBox/x0/d;
    if-eqz p1, :L2
  .line 2
    invoke-virtual { p1, p3 }, Lcn/manstep/phonemirrorBox/x0/d;->C(Ljava/lang/String;)V
    goto :L2
  :L0
    const/16 p1, 61
    if-ne p2, p1, :L1
  .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/FirstPage;->b0:Lcn/manstep/phonemirrorBox/x0/d;
    if-eqz p1, :L2
  .line 4
    invoke-virtual { p1, p3 }, Lcn/manstep/phonemirrorBox/x0/d;->B(Ljava/lang/String;)V
    goto :L2
  :L1
    const/16 p1, 63
    if-ne p2, p1, :L2
  .line 5
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/FirstPage;->b0:Lcn/manstep/phonemirrorBox/x0/d;
    if-eqz p1, :L2
  .line 6
    invoke-virtual { p1, p3 }, Lcn/manstep/phonemirrorBox/x0/d;->D(Ljava/lang/String;)V
  :L2
    return-void
.end method
