.class public Landroidx/fragment/app/d;
.super Landroidx/fragment/app/Fragment;
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.source "SourceFile"

.field private a0:Landroid/os/Handler;

.field private b0:Ljava/lang/Runnable;

.field private c0:Landroid/content/DialogInterface$OnCancelListener;

.field private d0:Landroid/content/DialogInterface$OnDismissListener;

.field private e0:I

.field private f0:I

.field private g0:Z

.field private h0:Z

.field private i0:I

.field private j0:Z

.field private k0:Landroidx/lifecycle/p;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Landroidx/lifecycle/p<",
      "Landroidx/lifecycle/j;",
      ">;"
    }
  .end annotation
.end field

.field private l0:Landroid/app/Dialog;

.field private m0:Z

.field private n0:Z

.field private o0:Z

.field private p0:Z

.method public constructor <init>()V
  .registers 3
  .line 1
    invoke-direct { p0 }, Landroidx/fragment/app/Fragment;-><init>()V
  .line 2
    new-instance v0, Landroidx/fragment/app/d$a;
    invoke-direct { v0, p0 }, Landroidx/fragment/app/d$a;-><init>(Landroidx/fragment/app/d;)V
    iput-object v0, p0, Landroidx/fragment/app/d;->b0:Ljava/lang/Runnable;
  .line 3
    new-instance v0, Landroidx/fragment/app/d$b;
    invoke-direct { v0, p0 }, Landroidx/fragment/app/d$b;-><init>(Landroidx/fragment/app/d;)V
    iput-object v0, p0, Landroidx/fragment/app/d;->c0:Landroid/content/DialogInterface$OnCancelListener;
  .line 4
    new-instance v0, Landroidx/fragment/app/d$c;
    invoke-direct { v0, p0 }, Landroidx/fragment/app/d$c;-><init>(Landroidx/fragment/app/d;)V
    iput-object v0, p0, Landroidx/fragment/app/d;->d0:Landroid/content/DialogInterface$OnDismissListener;
    const/4 v0, 0
  .line 5
    iput v0, p0, Landroidx/fragment/app/d;->e0:I
  .line 6
    iput v0, p0, Landroidx/fragment/app/d;->f0:I
    const/4 v1, 1
  .line 7
    iput-boolean v1, p0, Landroidx/fragment/app/d;->g0:Z
  .line 8
    iput-boolean v1, p0, Landroidx/fragment/app/d;->h0:Z
    const/4 v1, -1
  .line 9
    iput v1, p0, Landroidx/fragment/app/d;->i0:I
  .line 10
    new-instance v1, Landroidx/fragment/app/d$d;
    invoke-direct { v1, p0 }, Landroidx/fragment/app/d$d;-><init>(Landroidx/fragment/app/d;)V
    iput-object v1, p0, Landroidx/fragment/app/d;->k0:Landroidx/lifecycle/p;
  .line 11
    iput-boolean v0, p0, Landroidx/fragment/app/d;->p0:Z
    return-void
.end method

.method static synthetic g2(Landroidx/fragment/app/d;)Landroid/app/Dialog;
  .registers 1
  .line 1
    iget-object p0, p0, Landroidx/fragment/app/d;->l0:Landroid/app/Dialog;
    return-object p0
.end method

.method static synthetic h2(Landroidx/fragment/app/d;)Landroid/content/DialogInterface$OnDismissListener;
  .registers 1
  .line 1
    iget-object p0, p0, Landroidx/fragment/app/d;->d0:Landroid/content/DialogInterface$OnDismissListener;
    return-object p0
.end method

.method static synthetic i2(Landroidx/fragment/app/d;)Z
  .registers 1
  .line 1
    iget-boolean p0, p0, Landroidx/fragment/app/d;->h0:Z
    return p0
.end method

.method private l2(ZZ)V
  .registers 6
  .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/d;->n0:Z
    if-eqz v0, :L0
    return-void
  :L0
    const/4 v0, 1
  .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/d;->n0:Z
    const/4 v1, 0
  .line 3
    iput-boolean v1, p0, Landroidx/fragment/app/d;->o0:Z
  .line 4
    iget-object v1, p0, Landroidx/fragment/app/d;->l0:Landroid/app/Dialog;
    if-eqz v1, :L2
    const/4 v2, 0
  .line 5
    invoke-virtual { v1, v2 }, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
  .line 6
    iget-object v1, p0, Landroidx/fragment/app/d;->l0:Landroid/app/Dialog;
    invoke-virtual { v1 }, Landroid/app/Dialog;->dismiss()V
    if-nez p2, :L2
  .line 7
    invoke-static { }, Landroid/os/Looper;->myLooper()Landroid/os/Looper;
    move-result-object p2
    iget-object v1, p0, Landroidx/fragment/app/d;->a0:Landroid/os/Handler;
    invoke-virtual { v1 }, Landroid/os/Handler;->getLooper()Landroid/os/Looper;
    move-result-object v1
    if-ne p2, v1, :L1
  .line 8
    iget-object p2, p0, Landroidx/fragment/app/d;->l0:Landroid/app/Dialog;
    invoke-virtual { p0, p2 }, Landroidx/fragment/app/d;->onDismiss(Landroid/content/DialogInterface;)V
    goto :L2
  :L1
  .line 9
    iget-object p2, p0, Landroidx/fragment/app/d;->a0:Landroid/os/Handler;
    iget-object v1, p0, Landroidx/fragment/app/d;->b0:Ljava/lang/Runnable;
    invoke-virtual { p2, v1 }, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
  :L2
  .line 10
    iput-boolean v0, p0, Landroidx/fragment/app/d;->m0:Z
  .line 11
    iget p2, p0, Landroidx/fragment/app/d;->i0:I
    if-ltz p2, :L3
  .line 12
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->X()Landroidx/fragment/app/n;
    move-result-object p1
    iget p2, p0, Landroidx/fragment/app/d;->i0:I
    invoke-virtual { p1, p2, v0 }, Landroidx/fragment/app/n;->U0(II)V
    const/4 p1, -1
  .line 13
    iput p1, p0, Landroidx/fragment/app/d;->i0:I
    goto :L5
  :L3
  .line 14
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->X()Landroidx/fragment/app/n;
    move-result-object p2
    invoke-virtual { p2 }, Landroidx/fragment/app/n;->l()Landroidx/fragment/app/w;
    move-result-object p2
  .line 15
    invoke-virtual { p2, p0 }, Landroidx/fragment/app/w;->o(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;
    if-eqz p1, :L4
  .line 16
    invoke-virtual { p2 }, Landroidx/fragment/app/w;->i()I
    goto :L5
  :L4
  .line 17
    invoke-virtual { p2 }, Landroidx/fragment/app/w;->h()I
  :L5
    return-void
.end method

.method private r2(Landroid/os/Bundle;)V
  .catchall { :L1 .. :L4 } :L5
  .registers 5
  .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/d;->h0:Z
    if-nez v0, :L0
    return-void
  :L0
  .line 2
    iget-boolean v0, p0, Landroidx/fragment/app/d;->p0:Z
    if-nez v0, :L6
    const/4 v0, 0
    const/4 v1, 1
  :L1
  .line 3
    iput-boolean v1, p0, Landroidx/fragment/app/d;->j0:Z
  .line 4
    invoke-virtual { p0, p1 }, Landroidx/fragment/app/d;->o2(Landroid/os/Bundle;)Landroid/app/Dialog;
    move-result-object p1
    iput-object p1, p0, Landroidx/fragment/app/d;->l0:Landroid/app/Dialog;
  .line 5
    iget-boolean v2, p0, Landroidx/fragment/app/d;->h0:Z
    if-eqz v2, :L3
  .line 6
    iget v2, p0, Landroidx/fragment/app/d;->e0:I
    invoke-virtual { p0, p1, v2 }, Landroidx/fragment/app/d;->t2(Landroid/app/Dialog;I)V
  .line 7
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;
    move-result-object p1
  .line 8
    instance-of v2, p1, Landroid/app/Activity;
    if-eqz v2, :L2
  .line 9
    iget-object v2, p0, Landroidx/fragment/app/d;->l0:Landroid/app/Dialog;
    check-cast p1, Landroid/app/Activity;
    invoke-virtual { v2, p1 }, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V
  :L2
  .line 10
    iget-object p1, p0, Landroidx/fragment/app/d;->l0:Landroid/app/Dialog;
    iget-boolean v2, p0, Landroidx/fragment/app/d;->g0:Z
    invoke-virtual { p1, v2 }, Landroid/app/Dialog;->setCancelable(Z)V
  .line 11
    iget-object p1, p0, Landroidx/fragment/app/d;->l0:Landroid/app/Dialog;
    iget-object v2, p0, Landroidx/fragment/app/d;->c0:Landroid/content/DialogInterface$OnCancelListener;
    invoke-virtual { p1, v2 }, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
  .line 12
    iget-object p1, p0, Landroidx/fragment/app/d;->l0:Landroid/app/Dialog;
    iget-object v2, p0, Landroidx/fragment/app/d;->d0:Landroid/content/DialogInterface$OnDismissListener;
    invoke-virtual { p1, v2 }, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
  .line 13
    iput-boolean v1, p0, Landroidx/fragment/app/d;->p0:Z
    goto :L4
  :L3
    const/4 p1, 0
  .line 14
    iput-object p1, p0, Landroidx/fragment/app/d;->l0:Landroid/app/Dialog;
  :L4
  .line 15
    iput-boolean v0, p0, Landroidx/fragment/app/d;->j0:Z
    goto :L6
  :L5
    move-exception p1
    iput-boolean v0, p0, Landroidx/fragment/app/d;->j0:Z
  .line 16
    throw p1
  :L6
    return-void
.end method

.method public E0(Landroid/content/Context;)V
  .registers 3
  .line 1
    invoke-super { p0, p1 }, Landroidx/fragment/app/Fragment;->E0(Landroid/content/Context;)V
  .line 2
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->m0()Landroidx/lifecycle/LiveData;
    move-result-object p1
    iget-object v0, p0, Landroidx/fragment/app/d;->k0:Landroidx/lifecycle/p;
    invoke-virtual { p1, v0 }, Landroidx/lifecycle/LiveData;->g(Landroidx/lifecycle/p;)V
  .line 3
    iget-boolean p1, p0, Landroidx/fragment/app/d;->o0:Z
    if-nez p1, :L0
    const/4 p1, 0
  .line 4
    iput-boolean p1, p0, Landroidx/fragment/app/d;->n0:Z
  :L0
    return-void
.end method

.method public H0(Landroid/os/Bundle;)V
  .registers 5
  .line 1
    invoke-super { p0, p1 }, Landroidx/fragment/app/Fragment;->H0(Landroid/os/Bundle;)V
  .line 2
    new-instance v0, Landroid/os/Handler;
    invoke-direct { v0 }, Landroid/os/Handler;-><init>()V
    iput-object v0, p0, Landroidx/fragment/app/d;->a0:Landroid/os/Handler;
  .line 3
    iget v0, p0, Landroidx/fragment/app/Fragment;->y:I
    const/4 v1, 1
    const/4 v2, 0
    if-nez v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    iput-boolean v0, p0, Landroidx/fragment/app/d;->h0:Z
    if-eqz p1, :L2
    const-string v0, "android:style"
  .line 4
    invoke-virtual { p1, v0, v2 }, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    move-result v0
    iput v0, p0, Landroidx/fragment/app/d;->e0:I
    const-string v0, "android:theme"
  .line 5
    invoke-virtual { p1, v0, v2 }, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    move-result v0
    iput v0, p0, Landroidx/fragment/app/d;->f0:I
    const-string v0, "android:cancelable"
  .line 6
    invoke-virtual { p1, v0, v1 }, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    move-result v0
    iput-boolean v0, p0, Landroidx/fragment/app/d;->g0:Z
  .line 7
    iget-boolean v0, p0, Landroidx/fragment/app/d;->h0:Z
    const-string v1, "android:showsDialog"
    invoke-virtual { p1, v1, v0 }, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    move-result v0
    iput-boolean v0, p0, Landroidx/fragment/app/d;->h0:Z
    const/4 v0, -1
    const-string v1, "android:backStackId"
  .line 8
    invoke-virtual { p1, v1, v0 }, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    move-result p1
    iput p1, p0, Landroidx/fragment/app/d;->i0:I
  :L2
    return-void
.end method

.method public O0()V
  .registers 3
  .line 1
    invoke-super { p0 }, Landroidx/fragment/app/Fragment;->O0()V
  .line 2
    iget-object v0, p0, Landroidx/fragment/app/d;->l0:Landroid/app/Dialog;
    if-eqz v0, :L1
    const/4 v1, 1
  .line 3
    iput-boolean v1, p0, Landroidx/fragment/app/d;->m0:Z
    const/4 v1, 0
  .line 4
    invoke-virtual { v0, v1 }, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
  .line 5
    iget-object v0, p0, Landroidx/fragment/app/d;->l0:Landroid/app/Dialog;
    invoke-virtual { v0 }, Landroid/app/Dialog;->dismiss()V
  .line 6
    iget-boolean v0, p0, Landroidx/fragment/app/d;->n0:Z
    if-nez v0, :L0
  .line 7
    iget-object v0, p0, Landroidx/fragment/app/d;->l0:Landroid/app/Dialog;
    invoke-virtual { p0, v0 }, Landroidx/fragment/app/d;->onDismiss(Landroid/content/DialogInterface;)V
  :L0
  .line 8
    iput-object v1, p0, Landroidx/fragment/app/d;->l0:Landroid/app/Dialog;
    const/4 v0, 0
  .line 9
    iput-boolean v0, p0, Landroidx/fragment/app/d;->p0:Z
  :L1
    return-void
.end method

.method public P0()V
  .registers 3
  .line 1
    invoke-super { p0 }, Landroidx/fragment/app/Fragment;->P0()V
  .line 2
    iget-boolean v0, p0, Landroidx/fragment/app/d;->o0:Z
    if-nez v0, :L0
    iget-boolean v0, p0, Landroidx/fragment/app/d;->n0:Z
    if-nez v0, :L0
    const/4 v0, 1
  .line 3
    iput-boolean v0, p0, Landroidx/fragment/app/d;->n0:Z
  :L0
  .line 4
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->m0()Landroidx/lifecycle/LiveData;
    move-result-object v0
    iget-object v1, p0, Landroidx/fragment/app/d;->k0:Landroidx/lifecycle/p;
    invoke-virtual { v0, v1 }, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/p;)V
    return-void
.end method

.method public Q0(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
  .registers 5
  .line 1
    invoke-super { p0, p1 }, Landroidx/fragment/app/Fragment;->Q0(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    move-result-object v0
  .line 2
    iget-boolean v1, p0, Landroidx/fragment/app/d;->h0:Z
    const/4 v2, 2
    if-eqz v1, :L3
    iget-boolean v1, p0, Landroidx/fragment/app/d;->j0:Z
    if-eqz v1, :L0
    goto :L3
  :L0
  .line 3
    invoke-direct { p0, p1 }, Landroidx/fragment/app/d;->r2(Landroid/os/Bundle;)V
  .line 4
    invoke-static { v2 }, Landroidx/fragment/app/n;->E0(I)Z
    move-result p1
    if-eqz p1, :L1
  .line 5
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "get layout inflater for DialogFragment "
    invoke-virtual { p1, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v1, " from dialog context"
    invoke-virtual { p1, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L1
  .line 6
    iget-object p1, p0, Landroidx/fragment/app/d;->l0:Landroid/app/Dialog;
    if-eqz p1, :L2
  .line 7
    invoke-virtual { p1 }, Landroid/app/Dialog;->getContext()Landroid/content/Context;
    move-result-object p1
    invoke-virtual { v0, p1 }, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;
    move-result-object v0
  :L2
    return-object v0
  :L3
  .line 8
    invoke-static { v2 }, Landroidx/fragment/app/n;->E0(I)Z
    move-result p1
    if-eqz p1, :L5
  .line 9
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "getting layout inflater for DialogFragment "
    invoke-virtual { p1, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
  .line 10
    iget-boolean v1, p0, Landroidx/fragment/app/d;->h0:Z
    if-nez v1, :L4
  .line 11
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "mShowsDialog = false: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    goto :L5
  :L4
  .line 12
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "mCreatingDialog = true: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L5
    return-object v0
.end method

.method public d1(Landroid/os/Bundle;)V
  .registers 5
  .line 1
    invoke-super { p0, p1 }, Landroidx/fragment/app/Fragment;->d1(Landroid/os/Bundle;)V
  .line 2
    iget-object v0, p0, Landroidx/fragment/app/d;->l0:Landroid/app/Dialog;
    if-eqz v0, :L0
  .line 3
    invoke-virtual { v0 }, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;
    move-result-object v0
    const/4 v1, 0
    const-string v2, "android:dialogShowing"
  .line 4
    invoke-virtual { v0, v2, v1 }, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    const-string v1, "android:savedDialogState"
  .line 5
    invoke-virtual { p1, v1, v0 }, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
  :L0
  .line 6
    iget v0, p0, Landroidx/fragment/app/d;->e0:I
    if-eqz v0, :L1
    const-string v1, "android:style"
  .line 7
    invoke-virtual { p1, v1, v0 }, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
  :L1
  .line 8
    iget v0, p0, Landroidx/fragment/app/d;->f0:I
    if-eqz v0, :L2
    const-string v1, "android:theme"
  .line 9
    invoke-virtual { p1, v1, v0 }, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
  :L2
  .line 10
    iget-boolean v0, p0, Landroidx/fragment/app/d;->g0:Z
    if-nez v0, :L3
    const-string v1, "android:cancelable"
  .line 11
    invoke-virtual { p1, v1, v0 }, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
  :L3
  .line 12
    iget-boolean v0, p0, Landroidx/fragment/app/d;->h0:Z
    if-nez v0, :L4
    const-string v1, "android:showsDialog"
  .line 13
    invoke-virtual { p1, v1, v0 }, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
  :L4
  .line 14
    iget v0, p0, Landroidx/fragment/app/d;->i0:I
    const/4 v1, -1
    if-eq v0, v1, :L5
    const-string v1, "android:backStackId"
  .line 15
    invoke-virtual { p1, v1, v0 }, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
  :L5
    return-void
.end method

.method public e1()V
  .registers 3
  .line 1
    invoke-super { p0 }, Landroidx/fragment/app/Fragment;->e1()V
  .line 2
    iget-object v0, p0, Landroidx/fragment/app/d;->l0:Landroid/app/Dialog;
    if-eqz v0, :L0
    const/4 v1, 0
  .line 3
    iput-boolean v1, p0, Landroidx/fragment/app/d;->m0:Z
  .line 4
    invoke-virtual { v0 }, Landroid/app/Dialog;->show()V
  .line 5
    iget-object v0, p0, Landroidx/fragment/app/d;->l0:Landroid/app/Dialog;
    invoke-virtual { v0 }, Landroid/app/Dialog;->getWindow()Landroid/view/Window;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/view/Window;->getDecorView()Landroid/view/View;
    move-result-object v0
  .line 6
    invoke-static { v0, p0 }, Landroidx/lifecycle/z;->a(Landroid/view/View;Landroidx/lifecycle/j;)V
  .line 7
    invoke-static { v0, p0 }, Landroidx/lifecycle/a0;->a(Landroid/view/View;Landroidx/lifecycle/y;)V
  .line 8
    invoke-static { v0, p0 }, Landroidx/savedstate/d;->a(Landroid/view/View;Landroidx/savedstate/c;)V
  :L0
    return-void
.end method

.method public f1()V
  .registers 2
  .line 1
    invoke-super { p0 }, Landroidx/fragment/app/Fragment;->f1()V
  .line 2
    iget-object v0, p0, Landroidx/fragment/app/d;->l0:Landroid/app/Dialog;
    if-eqz v0, :L0
  .line 3
    invoke-virtual { v0 }, Landroid/app/Dialog;->hide()V
  :L0
    return-void
.end method

.method public h1(Landroid/os/Bundle;)V
  .registers 3
  .line 1
    invoke-super { p0, p1 }, Landroidx/fragment/app/Fragment;->h1(Landroid/os/Bundle;)V
  .line 2
    iget-object v0, p0, Landroidx/fragment/app/d;->l0:Landroid/app/Dialog;
    if-eqz v0, :L0
    if-eqz p1, :L0
    const-string v0, "android:savedDialogState"
  .line 3
    invoke-virtual { p1, v0 }, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;
    move-result-object p1
    if-eqz p1, :L0
  .line 4
    iget-object v0, p0, Landroidx/fragment/app/d;->l0:Landroid/app/Dialog;
    invoke-virtual { v0, p1 }, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V
  :L0
    return-void
.end method

.method public j2()V
  .registers 2
    const/4 v0, 0
  .line 1
    invoke-direct { p0, v0, v0 }, Landroidx/fragment/app/d;->l2(ZZ)V
    return-void
.end method

.method public k2()V
  .registers 3
    const/4 v0, 1
    const/4 v1, 0
  .line 1
    invoke-direct { p0, v0, v1 }, Landroidx/fragment/app/d;->l2(ZZ)V
    return-void
.end method

.method public m2()Landroid/app/Dialog;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/d;->l0:Landroid/app/Dialog;
    return-object v0
.end method

.method public n2()I
  .registers 2
  .line 1
    iget v0, p0, Landroidx/fragment/app/d;->f0:I
    return v0
.end method

.method o1(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
  .registers 4
  .line 1
    invoke-super { p0, p1, p2, p3 }, Landroidx/fragment/app/Fragment;->o1(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
  .line 2
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
    if-nez p1, :L0
  .line 3
    iget-object p1, p0, Landroidx/fragment/app/d;->l0:Landroid/app/Dialog;
    if-eqz p1, :L0
    if-eqz p3, :L0
    const-string p1, "android:savedDialogState"
  .line 4
    invoke-virtual { p3, p1 }, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;
    move-result-object p1
    if-eqz p1, :L0
  .line 5
    iget-object p2, p0, Landroidx/fragment/app/d;->l0:Landroid/app/Dialog;
    invoke-virtual { p2, p1 }, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V
  :L0
    return-void
.end method

.method public o2(Landroid/os/Bundle;)Landroid/app/Dialog;
  .registers 4
    const/4 p1, 3
  .line 1
    invoke-static { p1 }, Landroidx/fragment/app/n;->E0(I)Z
    move-result p1
    if-eqz p1, :L0
  .line 2
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "onCreateDialog called for DialogFragment "
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L0
  .line 3
    new-instance p1, Landroid/app/Dialog;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;
    move-result-object v0
    invoke-virtual { p0 }, Landroidx/fragment/app/d;->n2()I
    move-result v1
    invoke-direct { p1, v0, v1 }, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V
    return-object p1
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
  .registers 2
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
  .registers 3
  .line 1
    iget-boolean p1, p0, Landroidx/fragment/app/d;->m0:Z
    if-nez p1, :L1
    const/4 p1, 3
  .line 2
    invoke-static { p1 }, Landroidx/fragment/app/n;->E0(I)Z
    move-result p1
    if-eqz p1, :L0
  .line 3
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "onDismiss called for DialogFragment "
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L0
    const/4 p1, 1
  .line 4
    invoke-direct { p0, p1, p1 }, Landroidx/fragment/app/d;->l2(ZZ)V
  :L1
    return-void
.end method

.method p2(I)Landroid/view/View;
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/d;->l0:Landroid/app/Dialog;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;
    move-result-object p1
    return-object p1
  :L0
    const/4 p1, 0
    return-object p1
.end method

.method q2()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/d;->p0:Z
    return v0
.end method

.method public final s2()Landroid/app/Dialog;
  .registers 4
  .line 1
    invoke-virtual { p0 }, Landroidx/fragment/app/d;->m2()Landroid/app/Dialog;
    move-result-object v0
    if-eqz v0, :L0
    return-object v0
  :L0
  .line 2
    new-instance v0, Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "DialogFragment "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v2, " does not have a Dialog."
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, v1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public t2(Landroid/app/Dialog;I)V
  .registers 5
    const/4 v0, 1
    if-eq p2, v0, :L1
    const/4 v1, 2
    if-eq p2, v1, :L1
    const/4 v1, 3
    if-eq p2, v1, :L0
    goto :L2
  :L0
  .line 1
    invoke-virtual { p1 }, Landroid/app/Dialog;->getWindow()Landroid/view/Window;
    move-result-object p2
    if-eqz p2, :L1
    const/16 v1, 24
  .line 2
    invoke-virtual { p2, v1 }, Landroid/view/Window;->addFlags(I)V
  :L1
  .line 3
    invoke-virtual { p1, v0 }, Landroid/app/Dialog;->requestWindowFeature(I)Z
  :L2
    return-void
.end method

.method public u2(Landroidx/fragment/app/n;Ljava/lang/String;)V
  .registers 4
    const/4 v0, 0
  .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/d;->n0:Z
    const/4 v0, 1
  .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/d;->o0:Z
  .line 3
    invoke-virtual { p1 }, Landroidx/fragment/app/n;->l()Landroidx/fragment/app/w;
    move-result-object p1
  .line 4
    invoke-virtual { p1, p0, p2 }, Landroidx/fragment/app/w;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/w;
  .line 5
    invoke-virtual { p1 }, Landroidx/fragment/app/w;->h()I
    return-void
.end method

.method y()Landroidx/fragment/app/g;
  .registers 3
  .line 1
    invoke-super { p0 }, Landroidx/fragment/app/Fragment;->y()Landroidx/fragment/app/g;
    move-result-object v0
  .line 2
    new-instance v1, Landroidx/fragment/app/d$e;
    invoke-direct { v1, p0, v0 }, Landroidx/fragment/app/d$e;-><init>(Landroidx/fragment/app/d;Landroidx/fragment/app/g;)V
    return-object v1
.end method
