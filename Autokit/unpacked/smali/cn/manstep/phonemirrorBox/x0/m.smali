.class public Lcn/manstep/phonemirrorBox/x0/m;
.super Landroidx/lifecycle/a;
.source "SourceFile"

.field private d:Ljava/lang/ref/WeakReference;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/ref/WeakReference<",
      "Landroidx/fragment/app/n;",
      ">;"
    }
  .end annotation
.end field

.field private e:Lcn/manstep/phonemirrorBox/l0/t;

.field private f:Landroidx/lifecycle/o;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Landroidx/lifecycle/o<",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
.end field

.field private g:Landroidx/lifecycle/o;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Landroidx/lifecycle/o<",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
.end field

.field private h:Landroidx/lifecycle/o;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Landroidx/lifecycle/o<",
      "Ljava/lang/Integer;",
      ">;"
    }
  .end annotation
.end field

.field private i:Landroidx/lifecycle/o;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Landroidx/lifecycle/o<",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
.end field

.field private final j:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List<",
      "Lcn/manstep/phonemirrorBox/g0/e;",
      ">;"
    }
  .end annotation
.end field

.field private final k:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List<",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
.end field

.method public constructor <init>(Landroid/app/Application;)V
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Landroidx/lifecycle/a;-><init>(Landroid/app/Application;)V
  .line 2
    new-instance p1, Ljava/util/ArrayList;
    invoke-direct { p1 }, Ljava/util/ArrayList;-><init>()V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/x0/m;->j:Ljava/util/List;
  .line 3
    new-instance p1, Ljava/util/ArrayList;
    invoke-direct { p1 }, Ljava/util/ArrayList;-><init>()V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/x0/m;->k:Ljava/util/List;
    return-void
.end method

.method static synthetic j(Lcn/manstep/phonemirrorBox/x0/m;)Landroidx/lifecycle/o;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/x0/m;->f:Landroidx/lifecycle/o;
    return-object p0
.end method

.method static synthetic k(Lcn/manstep/phonemirrorBox/x0/m;)Landroidx/lifecycle/o;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/x0/m;->g:Landroidx/lifecycle/o;
    return-object p0
.end method

.method private m(Z)Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(Z)",
      "Ljava/util/List<",
      "Lcn/manstep/phonemirrorBox/g0/e;",
      ">;"
    }
  .end annotation
  .registers 7
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/m;->j:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->clear()V
    const/4 v0, 0
    const/4 v1, 0
  :L0
  .line 2
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/x0/m;->k:Ljava/util/List;
    invoke-interface { v2 }, Ljava/util/List;->size()I
    move-result v2
    if-ge v1, v2, :L5
  .line 3
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;
    move-result-object v2
    invoke-virtual { v2 }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->r()I
    move-result v2
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/x0/m;->k:Ljava/util/List;
    invoke-interface { v3, v1 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/lang/String;
    invoke-static { v3 }, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v3
    if-ne v2, v3, :L1
    const/4 v2, 1
    goto :L2
  :L1
    const/4 v2, 0
  :L2
    const/16 v3, 36
    if-eqz p1, :L3
  .line 4
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/x0/m;->k:Ljava/util/List;
    invoke-interface { v4, v1 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Ljava/lang/String;
    invoke-static { v4 }, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v4
    if-lt v4, v3, :L4
  .line 5
    new-instance v3, Lcn/manstep/phonemirrorBox/g0/e;
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/x0/m;->k:Ljava/util/List;
    invoke-interface { v4, v1 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Ljava/lang/String;
    invoke-direct { v3, v4, v2 }, Lcn/manstep/phonemirrorBox/g0/e;-><init>(Ljava/lang/String;Z)V
  .line 6
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/x0/m;->j:Ljava/util/List;
    invoke-interface { v2, v3 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    goto :L4
  :L3
  .line 7
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/x0/m;->k:Ljava/util/List;
    invoke-interface { v4, v1 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Ljava/lang/String;
    invoke-static { v4 }, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v4
    if-ge v4, v3, :L4
  .line 8
    new-instance v3, Lcn/manstep/phonemirrorBox/g0/e;
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/x0/m;->k:Ljava/util/List;
    invoke-interface { v4, v1 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Ljava/lang/String;
    invoke-direct { v3, v4, v2 }, Lcn/manstep/phonemirrorBox/g0/e;-><init>(Ljava/lang/String;Z)V
  .line 9
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/x0/m;->j:Ljava/util/List;
    invoke-interface { v2, v3 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  :L4
    add-int/lit8 v1, v1, 1
    goto :L0
  :L5
  .line 10
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/x0/m;->j:Ljava/util/List;
    return-object p1
.end method

.method private p()V
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/m;->k:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->clear()V
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->s()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    if-nez v0, :L0
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/m;->k:Ljava/util/List;
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;
    move-result-object v1
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->s()Ljava/lang/String;
    move-result-object v1
    const-string v2, ","
    invoke-virtual { v1, v2 }, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    move-result-object v1
    invoke-interface { v0, v1 }, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
  :L0
    return-void
.end method

.method private w()V
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/m;->e:Lcn/manstep/phonemirrorBox/l0/t;
    if-eqz v0, :L2
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/m;->d:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroidx/fragment/app/n;
    invoke-virtual { v0 }, Landroidx/fragment/app/n;->l()Landroidx/fragment/app/w;
    move-result-object v0
  .line 3
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/x0/m;->e:Lcn/manstep/phonemirrorBox/l0/t;
    invoke-virtual { v1 }, Landroidx/fragment/app/Fragment;->q0()Z
    move-result v1
    if-eqz v1, :L0
  .line 4
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/x0/m;->e:Lcn/manstep/phonemirrorBox/l0/t;
    invoke-virtual { v0, v1 }, Landroidx/fragment/app/w;->t(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;
    goto :L1
  :L0
    const v1, 2131296606
  .line 5
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/x0/m;->e:Lcn/manstep/phonemirrorBox/l0/t;
    invoke-virtual { v0, v1, v2 }, Landroidx/fragment/app/w;->b(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;
  :L1
  .line 6
    invoke-virtual { v0 }, Landroidx/fragment/app/w;->h()I
  :L2
    return-void
.end method

.method public l()Landroidx/lifecycle/o;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Landroidx/lifecycle/o<",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/m;->f:Landroidx/lifecycle/o;
    if-nez v0, :L1
  .line 2
    new-instance v0, Landroidx/lifecycle/o;
    invoke-direct { v0 }, Landroidx/lifecycle/o;-><init>()V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/x0/m;->f:Landroidx/lifecycle/o;
  .line 3
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    const-string v1, "BtName"
    const-string v2, ""
    invoke-virtual { v0, v1, v2 }, Lcn/manstep/phonemirrorBox/b0;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
  .line 4
    invoke-static { v0 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v1
    if-eqz v1, :L0
    sget-object v1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    if-eqz v1, :L0
  .line 5
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->r()Ljava/lang/String;
    move-result-object v0
  :L0
  .line 6
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/x0/m;->f:Landroidx/lifecycle/o;
    invoke-virtual { v1, v0 }, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V
  :L1
  .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/m;->f:Landroidx/lifecycle/o;
    return-object v0
.end method

.method public n()Landroidx/lifecycle/o;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Landroidx/lifecycle/o<",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/m;->g:Landroidx/lifecycle/o;
    if-nez v0, :L1
  .line 2
    new-instance v0, Landroidx/lifecycle/o;
    invoke-direct { v0 }, Landroidx/lifecycle/o;-><init>()V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/x0/m;->g:Landroidx/lifecycle/o;
  .line 3
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    const-string v1, "WifiName"
    const-string v2, ""
    invoke-virtual { v0, v1, v2 }, Lcn/manstep/phonemirrorBox/b0;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
  .line 4
    invoke-static { v0 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v1
    if-eqz v1, :L0
    sget-object v1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    if-eqz v1, :L0
  .line 5
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->D()Ljava/lang/String;
    move-result-object v0
  :L0
  .line 6
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/x0/m;->g:Landroidx/lifecycle/o;
    invoke-virtual { v1, v0 }, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V
  :L1
  .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/m;->g:Landroidx/lifecycle/o;
    return-object v0
.end method

.method public o()Landroidx/lifecycle/o;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Landroidx/lifecycle/o<",
      "Ljava/lang/Integer;",
      ">;"
    }
  .end annotation
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/m;->h:Landroidx/lifecycle/o;
    if-nez v0, :L0
  .line 2
    new-instance v0, Landroidx/lifecycle/o;
    invoke-direct { v0 }, Landroidx/lifecycle/o;-><init>()V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/x0/m;->h:Landroidx/lifecycle/o;
  .line 3
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    const/4 v1, 5
    const-string v2, "wifi_type"
    invoke-virtual { v0, v2, v1 }, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I
    move-result v0
  .line 4
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/x0/m;->h:Landroidx/lifecycle/o;
    invoke-static { v0 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v0
    invoke-virtual { v1, v0 }, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V
  :L0
  .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/m;->h:Landroidx/lifecycle/o;
    return-object v0
.end method

.method public q()V
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/m;->e:Lcn/manstep/phonemirrorBox/l0/t;
    if-nez v0, :L0
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/m;->d:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroidx/fragment/app/n;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/l0/t;->j2(Landroidx/fragment/app/n;)Lcn/manstep/phonemirrorBox/l0/t;
    move-result-object v0
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/x0/m;->e:Lcn/manstep/phonemirrorBox/l0/t;
  :L0
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/m;->e:Lcn/manstep/phonemirrorBox/l0/t;
    new-instance v1, Lcn/manstep/phonemirrorBox/x0/m$a;
    invoke-direct { v1, p0 }, Lcn/manstep/phonemirrorBox/x0/m$a;-><init>(Lcn/manstep/phonemirrorBox/x0/m;)V
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/l0/t;->k2(Lcn/manstep/phonemirrorBox/l0/t$e;)V
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/m;->e:Lcn/manstep/phonemirrorBox/l0/t;
    invoke-virtual { p0 }, Landroidx/lifecycle/a;->i()Landroid/app/Application;
    move-result-object v1
    invoke-virtual { v1 }, Landroid/app/Application;->getResources()Landroid/content/res/Resources;
    move-result-object v1
    const v2, 2131689605
    invoke-virtual { v1, v2 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v1
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/x0/m;->f:Landroidx/lifecycle/o;
    invoke-virtual { v2 }, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/String;
    invoke-virtual { v0, v1, v2 }, Lcn/manstep/phonemirrorBox/l0/t;->m2(Ljava/lang/String;Ljava/lang/String;)V
  .line 5
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/x0/m;->w()V
    return-void
.end method

.method public r()V
  .registers 4
  .line 1
    new-instance v0, Lcn/manstep/phonemirrorBox/k0/h;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/x0/m;->f:Landroidx/lifecycle/o;
    invoke-virtual { v1 }, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/String;
    const v2, 2131689605
    invoke-direct { v0, v2, v1 }, Lcn/manstep/phonemirrorBox/k0/h;-><init>(ILjava/lang/String;)V
  .line 2
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/x0/m;->d:Ljava/lang/ref/WeakReference;
    invoke-virtual { v1 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/fragment/app/n;
    const-string v2, "InputDialog"
    invoke-virtual { v0, v1, v2 }, Landroidx/fragment/app/d;->u2(Landroidx/fragment/app/n;Ljava/lang/String;)V
  .line 3
    new-instance v1, Lcn/manstep/phonemirrorBox/x0/m$c;
    invoke-direct { v1, p0 }, Lcn/manstep/phonemirrorBox/x0/m$c;-><init>(Lcn/manstep/phonemirrorBox/x0/m;)V
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/k0/h;->A2(Lcn/manstep/phonemirrorBox/k0/h$c;)V
    return-void
.end method

.method public s(Landroidx/fragment/app/n;)V
  .registers 3
  .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;
    invoke-direct { v0, p1 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/x0/m;->d:Ljava/lang/ref/WeakReference;
    return-void
.end method

.method public t()V
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/m;->e:Lcn/manstep/phonemirrorBox/l0/t;
    if-nez v0, :L0
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/m;->d:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroidx/fragment/app/n;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/l0/t;->j2(Landroidx/fragment/app/n;)Lcn/manstep/phonemirrorBox/l0/t;
    move-result-object v0
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/x0/m;->e:Lcn/manstep/phonemirrorBox/l0/t;
  :L0
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/m;->e:Lcn/manstep/phonemirrorBox/l0/t;
    new-instance v1, Lcn/manstep/phonemirrorBox/x0/m$b;
    invoke-direct { v1, p0 }, Lcn/manstep/phonemirrorBox/x0/m$b;-><init>(Lcn/manstep/phonemirrorBox/x0/m;)V
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/l0/t;->k2(Lcn/manstep/phonemirrorBox/l0/t$e;)V
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/m;->e:Lcn/manstep/phonemirrorBox/l0/t;
    invoke-virtual { p0 }, Landroidx/lifecycle/a;->i()Landroid/app/Application;
    move-result-object v1
    invoke-virtual { v1 }, Landroid/app/Application;->getResources()Landroid/content/res/Resources;
    move-result-object v1
    const v2, 2131690014
    invoke-virtual { v1, v2 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v1
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/x0/m;->g:Landroidx/lifecycle/o;
    invoke-virtual { v2 }, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/String;
    invoke-virtual { v0, v1, v2 }, Lcn/manstep/phonemirrorBox/l0/t;->m2(Ljava/lang/String;Ljava/lang/String;)V
  .line 5
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/x0/m;->w()V
    return-void
.end method

.method public u()V
  .registers 4
  .line 1
    new-instance v0, Lcn/manstep/phonemirrorBox/k0/h;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/x0/m;->g:Landroidx/lifecycle/o;
    invoke-virtual { v1 }, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/String;
    const v2, 2131690014
    invoke-direct { v0, v2, v1 }, Lcn/manstep/phonemirrorBox/k0/h;-><init>(ILjava/lang/String;)V
  .line 2
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/x0/m;->d:Ljava/lang/ref/WeakReference;
    invoke-virtual { v1 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/fragment/app/n;
    const-string v2, "InputDialog"
    invoke-virtual { v0, v1, v2 }, Landroidx/fragment/app/d;->u2(Landroidx/fragment/app/n;Ljava/lang/String;)V
  .line 3
    new-instance v1, Lcn/manstep/phonemirrorBox/x0/m$d;
    invoke-direct { v1, p0 }, Lcn/manstep/phonemirrorBox/x0/m$d;-><init>(Lcn/manstep/phonemirrorBox/x0/m;)V
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/k0/h;->A2(Lcn/manstep/phonemirrorBox/k0/h$c;)V
    return-void
.end method

.method public v(I)V
  .registers 5
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/m;->h:Landroidx/lifecycle/o;
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    const-string v2, "wifi_type"
    invoke-virtual { v0, v2, v1 }, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V
  .line 3
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z
    move-result v0
    if-eqz v0, :L0
  .line 4
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-virtual { v0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->K0(I)Z
  :L0
  .line 5
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/x0/m;->p()V
    const/4 v0, 5
    const/4 v1, 0
    if-ne p1, v0, :L1
    const/4 p1, 1
    goto :L2
  :L1
    const/4 p1, 0
  :L2
  .line 6
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/x0/m;->m(Z)Ljava/util/List;
    move-result-object p1
  .line 7
    invoke-interface { p1 }, Ljava/util/List;->isEmpty()Z
    move-result v0
    if-nez v0, :L3
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z
    move-result v0
    if-eqz v0, :L3
  .line 8
    invoke-interface { p1, v1 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Lcn/manstep/phonemirrorBox/g0/e;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/g0/e;->a()Ljava/lang/String;
    move-result-object p1
  .line 9
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/m;->i:Landroidx/lifecycle/o;
    invoke-virtual { v0, p1 }, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V
  .line 10
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;
    move-result-object v0
    invoke-static { p1 }, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v1
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->z(I)V
  .line 11
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-static { p1 }, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result p1
    invoke-virtual { v0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->o1(I)Z
    goto :L4
  :L3
  .line 12
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z
    move-result p1
    if-nez p1, :L4
  .line 13
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/x0/m;->i:Landroidx/lifecycle/o;
    const-string v0, "0"
    invoke-virtual { p1, v0 }, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V
  :L4
    return-void
.end method
