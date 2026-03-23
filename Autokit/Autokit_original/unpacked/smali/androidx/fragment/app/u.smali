.class Landroidx/fragment/app/u;
.super Ljava/lang/Object;
.source "SourceFile"

.field private final a:Landroidx/fragment/app/m;

.field private final b:Landroidx/fragment/app/v;

.field private final c:Landroidx/fragment/app/Fragment;

.field private d:Z

.field private e:I

.method constructor <init>(Landroidx/fragment/app/m;Landroidx/fragment/app/v;Landroidx/fragment/app/Fragment;)V
  .registers 5
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 0
  .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/u;->d:Z
    const/4 v0, -1
  .line 3
    iput v0, p0, Landroidx/fragment/app/u;->e:I
  .line 4
    iput-object p1, p0, Landroidx/fragment/app/u;->a:Landroidx/fragment/app/m;
  .line 5
    iput-object p2, p0, Landroidx/fragment/app/u;->b:Landroidx/fragment/app/v;
  .line 6
    iput-object p3, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    return-void
.end method

.method constructor <init>(Landroidx/fragment/app/m;Landroidx/fragment/app/v;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/t;)V
  .registers 7
  .line 32
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 0
  .line 33
    iput-boolean v0, p0, Landroidx/fragment/app/u;->d:Z
    const/4 v1, -1
  .line 34
    iput v1, p0, Landroidx/fragment/app/u;->e:I
  .line 35
    iput-object p1, p0, Landroidx/fragment/app/u;->a:Landroidx/fragment/app/m;
  .line 36
    iput-object p2, p0, Landroidx/fragment/app/u;->b:Landroidx/fragment/app/v;
  .line 37
    iput-object p3, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    const/4 p1, 0
  .line 38
    iput-object p1, p3, Landroidx/fragment/app/Fragment;->d:Landroid/util/SparseArray;
  .line 39
    iput-object p1, p3, Landroidx/fragment/app/Fragment;->e:Landroid/os/Bundle;
  .line 40
    iput v0, p3, Landroidx/fragment/app/Fragment;->s:I
  .line 41
    iput-boolean v0, p3, Landroidx/fragment/app/Fragment;->p:Z
  .line 42
    iput-boolean v0, p3, Landroidx/fragment/app/Fragment;->m:Z
  .line 43
    iget-object p2, p3, Landroidx/fragment/app/Fragment;->i:Landroidx/fragment/app/Fragment;
    if-eqz p2, :L0
    iget-object p2, p2, Landroidx/fragment/app/Fragment;->g:Ljava/lang/String;
    goto :L1
  :L0
    move-object p2, p1
  :L1
    iput-object p2, p3, Landroidx/fragment/app/Fragment;->j:Ljava/lang/String;
  .line 44
    iget-object p2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iput-object p1, p2, Landroidx/fragment/app/Fragment;->i:Landroidx/fragment/app/Fragment;
  .line 45
    iget-object p1, p4, Landroidx/fragment/app/t;->n:Landroid/os/Bundle;
    if-eqz p1, :L2
  .line 46
    iput-object p1, p2, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;
    goto :L3
  :L2
  .line 47
    new-instance p1, Landroid/os/Bundle;
    invoke-direct { p1 }, Landroid/os/Bundle;-><init>()V
    iput-object p1, p2, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;
  :L3
    return-void
.end method

.method constructor <init>(Landroidx/fragment/app/m;Landroidx/fragment/app/v;Ljava/lang/ClassLoader;Landroidx/fragment/app/j;Landroidx/fragment/app/t;)V
  .registers 7
  .line 7
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 0
  .line 8
    iput-boolean v0, p0, Landroidx/fragment/app/u;->d:Z
    const/4 v0, -1
  .line 9
    iput v0, p0, Landroidx/fragment/app/u;->e:I
  .line 10
    iput-object p1, p0, Landroidx/fragment/app/u;->a:Landroidx/fragment/app/m;
  .line 11
    iput-object p2, p0, Landroidx/fragment/app/u;->b:Landroidx/fragment/app/v;
  .line 12
    iget-object p1, p5, Landroidx/fragment/app/t;->b:Ljava/lang/String;
    invoke-virtual { p4, p3, p1 }, Landroidx/fragment/app/j;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    move-result-object p1
    iput-object p1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
  .line 13
    iget-object p1, p5, Landroidx/fragment/app/t;->k:Landroid/os/Bundle;
    if-eqz p1, :L0
  .line 14
    invoke-virtual { p1, p3 }, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
  :L0
  .line 15
    iget-object p1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object p2, p5, Landroidx/fragment/app/t;->k:Landroid/os/Bundle;
    invoke-virtual { p1, p2 }, Landroidx/fragment/app/Fragment;->S1(Landroid/os/Bundle;)V
  .line 16
    iget-object p1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object p2, p5, Landroidx/fragment/app/t;->c:Ljava/lang/String;
    iput-object p2, p1, Landroidx/fragment/app/Fragment;->g:Ljava/lang/String;
  .line 17
    iget-boolean p2, p5, Landroidx/fragment/app/t;->d:Z
    iput-boolean p2, p1, Landroidx/fragment/app/Fragment;->o:Z
    const/4 p2, 1
  .line 18
    iput-boolean p2, p1, Landroidx/fragment/app/Fragment;->q:Z
  .line 19
    iget p2, p5, Landroidx/fragment/app/t;->e:I
    iput p2, p1, Landroidx/fragment/app/Fragment;->x:I
  .line 20
    iget p2, p5, Landroidx/fragment/app/t;->f:I
    iput p2, p1, Landroidx/fragment/app/Fragment;->y:I
  .line 21
    iget-object p2, p5, Landroidx/fragment/app/t;->g:Ljava/lang/String;
    iput-object p2, p1, Landroidx/fragment/app/Fragment;->z:Ljava/lang/String;
  .line 22
    iget-boolean p2, p5, Landroidx/fragment/app/t;->h:Z
    iput-boolean p2, p1, Landroidx/fragment/app/Fragment;->C:Z
  .line 23
    iget-boolean p2, p5, Landroidx/fragment/app/t;->i:Z
    iput-boolean p2, p1, Landroidx/fragment/app/Fragment;->n:Z
  .line 24
    iget-boolean p2, p5, Landroidx/fragment/app/t;->j:Z
    iput-boolean p2, p1, Landroidx/fragment/app/Fragment;->B:Z
  .line 25
    iget-boolean p2, p5, Landroidx/fragment/app/t;->l:Z
    iput-boolean p2, p1, Landroidx/fragment/app/Fragment;->A:Z
  .line 26
    invoke-static { }, Landroidx/lifecycle/f$c;->values()[Landroidx/lifecycle/f$c;
    move-result-object p2
    iget p3, p5, Landroidx/fragment/app/t;->m:I
    aget-object p2, p2, p3
    iput-object p2, p1, Landroidx/fragment/app/Fragment;->R:Landroidx/lifecycle/f$c;
  .line 27
    iget-object p1, p5, Landroidx/fragment/app/t;->n:Landroid/os/Bundle;
    if-eqz p1, :L1
  .line 28
    iget-object p2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iput-object p1, p2, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;
    goto :L2
  :L1
  .line 29
    iget-object p1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    new-instance p2, Landroid/os/Bundle;
    invoke-direct { p2 }, Landroid/os/Bundle;-><init>()V
    iput-object p2, p1, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;
  :L2
    const/4 p1, 2
  .line 30
    invoke-static { p1 }, Landroidx/fragment/app/n;->E0(I)Z
    move-result p1
    if-eqz p1, :L3
  .line 31
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p2, "Instantiated fragment "
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object p2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L3
    return-void
.end method

.method private l(Landroid/view/View;)Z
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
    const/4 v1, 1
    if-ne p1, v0, :L0
    return v1
  :L0
  .line 2
    invoke-virtual { p1 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object p1
  :L1
    if-eqz p1, :L3
  .line 3
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
    if-ne p1, v0, :L2
    return v1
  :L2
  .line 4
    invoke-interface { p1 }, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;
    move-result-object p1
    goto :L1
  :L3
    const/4 p1, 0
    return p1
.end method

.method private q()Landroid/os/Bundle;
  .registers 5
  .line 1
    new-instance v0, Landroid/os/Bundle;
    invoke-direct { v0 }, Landroid/os/Bundle;-><init>()V
  .line 2
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    invoke-virtual { v1, v0 }, Landroidx/fragment/app/Fragment;->C1(Landroid/os/Bundle;)V
  .line 3
    iget-object v1, p0, Landroidx/fragment/app/u;->a:Landroidx/fragment/app/m;
    iget-object v2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    const/4 v3, 0
    invoke-virtual { v1, v2, v0, v3 }, Landroidx/fragment/app/m;->j(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
  .line 4
    invoke-virtual { v0 }, Landroid/os/Bundle;->isEmpty()Z
    move-result v1
    if-eqz v1, :L0
    const/4 v0, 0
  :L0
  .line 5
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
    if-eqz v1, :L1
  .line 6
    invoke-virtual { p0 }, Landroidx/fragment/app/u;->s()V
  :L1
  .line 7
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->d:Landroid/util/SparseArray;
    if-eqz v1, :L3
    if-nez v0, :L2
  .line 8
    new-instance v0, Landroid/os/Bundle;
    invoke-direct { v0 }, Landroid/os/Bundle;-><init>()V
  :L2
  .line 9
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->d:Landroid/util/SparseArray;
    const-string v2, "android:view_state"
    invoke-virtual { v0, v2, v1 }, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V
  :L3
  .line 10
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->e:Landroid/os/Bundle;
    if-eqz v1, :L5
    if-nez v0, :L4
  .line 11
    new-instance v0, Landroid/os/Bundle;
    invoke-direct { v0 }, Landroid/os/Bundle;-><init>()V
  :L4
  .line 12
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->e:Landroid/os/Bundle;
    const-string v2, "android:view_registry_state"
    invoke-virtual { v0, v2, v1 }, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
  :L5
  .line 13
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->K:Z
    if-nez v1, :L7
    if-nez v0, :L6
  .line 14
    new-instance v0, Landroid/os/Bundle;
    invoke-direct { v0 }, Landroid/os/Bundle;-><init>()V
  :L6
  .line 15
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->K:Z
    const-string v2, "android:user_visible_hint"
    invoke-virtual { v0, v2, v1 }, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
  :L7
    return-object v0
.end method

.method a()V
  .registers 5
    const/4 v0, 3
  .line 1
    invoke-static { v0 }, Landroidx/fragment/app/n;->E0(I)Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "moveto ACTIVITY_CREATED: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L0
  .line 3
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;
    invoke-virtual { v0, v1 }, Landroidx/fragment/app/Fragment;->i1(Landroid/os/Bundle;)V
  .line 4
    iget-object v0, p0, Landroidx/fragment/app/u;->a:Landroidx/fragment/app/m;
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;
    const/4 v3, 0
    invoke-virtual { v0, v1, v2, v3 }, Landroidx/fragment/app/m;->a(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    return-void
.end method

.method b()V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->b:Landroidx/fragment/app/v;
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    invoke-virtual { v0, v1 }, Landroidx/fragment/app/v;->j(Landroidx/fragment/app/Fragment;)I
    move-result v0
  .line 2
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->H:Landroid/view/ViewGroup;
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
    invoke-virtual { v2, v1, v0 }, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V
    return-void
.end method

.method c()V
  .registers 7
    const/4 v0, 3
  .line 1
    invoke-static { v0 }, Landroidx/fragment/app/n;->E0(I)Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "moveto ATTACHED: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L0
  .line 3
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->i:Landroidx/fragment/app/Fragment;
    const-string v2, " that does not belong to this FragmentManager!"
    const-string v3, " declared target fragment "
    const-string v4, "Fragment "
    const/4 v5, 0
    if-eqz v1, :L2
  .line 4
    iget-object v0, p0, Landroidx/fragment/app/u;->b:Landroidx/fragment/app/v;
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->g:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Landroidx/fragment/app/v;->m(Ljava/lang/String;)Landroidx/fragment/app/u;
    move-result-object v0
    if-eqz v0, :L1
  .line 5
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->i:Landroidx/fragment/app/Fragment;
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->g:Ljava/lang/String;
    iput-object v2, v1, Landroidx/fragment/app/Fragment;->j:Ljava/lang/String;
  .line 6
    iput-object v5, v1, Landroidx/fragment/app/Fragment;->i:Landroidx/fragment/app/Fragment;
    move-object v5, v0
    goto :L4
  :L1
  .line 7
    new-instance v0, Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v1, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v4, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    invoke-virtual { v1, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v3, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v3, v3, Landroidx/fragment/app/Fragment;->i:Landroidx/fragment/app/Fragment;
    invoke-virtual { v1, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, v1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
  :L2
  .line 8
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->j:Ljava/lang/String;
    if-eqz v0, :L4
  .line 9
    iget-object v1, p0, Landroidx/fragment/app/u;->b:Landroidx/fragment/app/v;
    invoke-virtual { v1, v0 }, Landroidx/fragment/app/v;->m(Ljava/lang/String;)Landroidx/fragment/app/u;
    move-result-object v5
    if-eqz v5, :L3
    goto :L4
  :L3
  .line 10
    new-instance v0, Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v1, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v4, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    invoke-virtual { v1, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v3, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v3, v3, Landroidx/fragment/app/Fragment;->j:Ljava/lang/String;
    invoke-virtual { v1, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, v1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
  :L4
    if-eqz v5, :L6
  .line 11
    sget-boolean v0, Landroidx/fragment/app/n;->P:Z
    if-nez v0, :L5
  .line 12
    invoke-virtual { v5 }, Landroidx/fragment/app/u;->k()Landroidx/fragment/app/Fragment;
    move-result-object v0
    iget v0, v0, Landroidx/fragment/app/Fragment;->b:I
    const/4 v1, 1
    if-ge v0, v1, :L6
  :L5
  .line 13
    invoke-virtual { v5 }, Landroidx/fragment/app/u;->m()V
  :L6
  .line 14
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/n;
    invoke-virtual { v1 }, Landroidx/fragment/app/n;->s0()Landroidx/fragment/app/k;
    move-result-object v1
    iput-object v1, v0, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/k;
  .line 15
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/n;
    invoke-virtual { v1 }, Landroidx/fragment/app/n;->v0()Landroidx/fragment/app/Fragment;
    move-result-object v1
    iput-object v1, v0, Landroidx/fragment/app/Fragment;->w:Landroidx/fragment/app/Fragment;
  .line 16
    iget-object v0, p0, Landroidx/fragment/app/u;->a:Landroidx/fragment/app/m;
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    const/4 v2, 0
    invoke-virtual { v0, v1, v2 }, Landroidx/fragment/app/m;->g(Landroidx/fragment/app/Fragment;Z)V
  .line 17
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    invoke-virtual { v0 }, Landroidx/fragment/app/Fragment;->j1()V
  .line 18
    iget-object v0, p0, Landroidx/fragment/app/u;->a:Landroidx/fragment/app/m;
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    invoke-virtual { v0, v1, v2 }, Landroidx/fragment/app/m;->b(Landroidx/fragment/app/Fragment;Z)V
    return-void
.end method

.method d()I
  .registers 11
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/n;
    if-nez v1, :L0
  .line 2
    iget v0, v0, Landroidx/fragment/app/Fragment;->b:I
    return v0
  :L0
  .line 3
    iget v1, p0, Landroidx/fragment/app/u;->e:I
  .line 4
    sget-object v2, Landroidx/fragment/app/u$b;->a:[I
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->R:Landroidx/lifecycle/f$c;
    invoke-virtual { v0 }, Ljava/lang/Enum;->ordinal()I
    move-result v0
    aget v0, v2, v0
    const/4 v2, -1
    const/4 v3, 5
    const/4 v4, 3
    const/4 v5, 4
    const/4 v6, 2
    const/4 v7, 1
    if-eq v0, v7, :L4
    if-eq v0, v6, :L3
    if-eq v0, v4, :L2
    if-eq v0, v5, :L1
  .line 5
    invoke-static { v1, v2 }, Ljava/lang/Math;->min(II)I
    move-result v1
    goto :L4
  :L1
    const/4 v0, 0
  .line 6
    invoke-static { v1, v0 }, Ljava/lang/Math;->min(II)I
    move-result v1
    goto :L4
  :L2
  .line 7
    invoke-static { v1, v7 }, Ljava/lang/Math;->min(II)I
    move-result v1
    goto :L4
  :L3
  .line 8
    invoke-static { v1, v3 }, Ljava/lang/Math;->min(II)I
    move-result v1
  :L4
  .line 9
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-boolean v8, v0, Landroidx/fragment/app/Fragment;->o:Z
    if-eqz v8, :L7
  .line 10
    iget-boolean v8, v0, Landroidx/fragment/app/Fragment;->p:Z
    if-eqz v8, :L5
  .line 11
    iget v0, p0, Landroidx/fragment/app/u;->e:I
    invoke-static { v0, v6 }, Ljava/lang/Math;->max(II)I
    move-result v1
  .line 12
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
    if-eqz v0, :L7
    invoke-virtual { v0 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v0
    if-nez v0, :L7
  .line 13
    invoke-static { v1, v6 }, Ljava/lang/Math;->min(II)I
    move-result v1
    goto :L7
  :L5
  .line 14
    iget v8, p0, Landroidx/fragment/app/u;->e:I
    if-ge v8, v5, :L6
  .line 15
    iget v0, v0, Landroidx/fragment/app/Fragment;->b:I
    invoke-static { v1, v0 }, Ljava/lang/Math;->min(II)I
    move-result v1
    goto :L7
  :L6
  .line 16
    invoke-static { v1, v7 }, Ljava/lang/Math;->min(II)I
    move-result v1
  :L7
  .line 17
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-boolean v0, v0, Landroidx/fragment/app/Fragment;->m:Z
    if-nez v0, :L8
  .line 18
    invoke-static { v1, v7 }, Ljava/lang/Math;->min(II)I
    move-result v1
  :L8
    const/4 v0, 0
  .line 19
    sget-boolean v8, Landroidx/fragment/app/n;->P:Z
    if-eqz v8, :L9
    iget-object v8, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v9, v8, Landroidx/fragment/app/Fragment;->H:Landroid/view/ViewGroup;
    if-eqz v9, :L9
  .line 20
    invoke-virtual { v8 }, Landroidx/fragment/app/Fragment;->X()Landroidx/fragment/app/n;
    move-result-object v0
  .line 21
    invoke-static { v9, v0 }, Landroidx/fragment/app/c0;->n(Landroid/view/ViewGroup;Landroidx/fragment/app/n;)Landroidx/fragment/app/c0;
    move-result-object v0
  .line 22
    invoke-virtual { v0, p0 }, Landroidx/fragment/app/c0;->l(Landroidx/fragment/app/u;)Landroidx/fragment/app/c0$e$b;
    move-result-object v0
  :L9
  .line 23
    sget-object v8, Landroidx/fragment/app/c0$e$b;->c:Landroidx/fragment/app/c0$e$b;
    if-ne v0, v8, :L10
    const/4 v0, 6
  .line 24
    invoke-static { v1, v0 }, Ljava/lang/Math;->min(II)I
    move-result v1
    goto :L13
  :L10
  .line 25
    sget-object v8, Landroidx/fragment/app/c0$e$b;->d:Landroidx/fragment/app/c0$e$b;
    if-ne v0, v8, :L11
  .line 26
    invoke-static { v1, v4 }, Ljava/lang/Math;->max(II)I
    move-result v1
    goto :L13
  :L11
  .line 27
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-boolean v4, v0, Landroidx/fragment/app/Fragment;->n:Z
    if-eqz v4, :L13
  .line 28
    invoke-virtual { v0 }, Landroidx/fragment/app/Fragment;->t0()Z
    move-result v0
    if-eqz v0, :L12
  .line 29
    invoke-static { v1, v7 }, Ljava/lang/Math;->min(II)I
    move-result v1
    goto :L13
  :L12
  .line 30
    invoke-static { v1, v2 }, Ljava/lang/Math;->min(II)I
    move-result v1
  :L13
  .line 31
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-boolean v2, v0, Landroidx/fragment/app/Fragment;->J:Z
    if-eqz v2, :L14
    iget v0, v0, Landroidx/fragment/app/Fragment;->b:I
    if-ge v0, v3, :L14
  .line 32
    invoke-static { v1, v5 }, Ljava/lang/Math;->min(II)I
    move-result v1
  :L14
  .line 33
    invoke-static { v6 }, Landroidx/fragment/app/n;->E0(I)Z
    move-result v0
    if-eqz v0, :L15
  .line 34
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "computeExpectedState() of "
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v2, " for "
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L15
    return v1
.end method

.method e()V
  .registers 5
    const/4 v0, 3
  .line 1
    invoke-static { v0 }, Landroidx/fragment/app/n;->E0(I)Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "moveto CREATED: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L0
  .line 3
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->Q:Z
    if-nez v1, :L1
  .line 4
    iget-object v1, p0, Landroidx/fragment/app/u;->a:Landroidx/fragment/app/m;
    iget-object v2, v0, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;
    const/4 v3, 0
    invoke-virtual { v1, v0, v2, v3 }, Landroidx/fragment/app/m;->h(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
  .line 5
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;
    invoke-virtual { v0, v1 }, Landroidx/fragment/app/Fragment;->m1(Landroid/os/Bundle;)V
  .line 6
    iget-object v0, p0, Landroidx/fragment/app/u;->a:Landroidx/fragment/app/m;
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;
    invoke-virtual { v0, v1, v2, v3 }, Landroidx/fragment/app/m;->c(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    goto :L2
  :L1
  .line 7
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;
    invoke-virtual { v0, v1 }, Landroidx/fragment/app/Fragment;->M1(Landroid/os/Bundle;)V
  .line 8
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    const/4 v1, 1
    iput v1, v0, Landroidx/fragment/app/Fragment;->b:I
  :L2
    return-void
.end method

.method f()V
  .catch Landroid/content/res/Resources$NotFoundException; { :L3 .. :L4 } :L5
  .registers 7
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-boolean v0, v0, Landroidx/fragment/app/Fragment;->o:Z
    if-eqz v0, :L0
    return-void
  :L0
    const/4 v0, 3
  .line 2
    invoke-static { v0 }, Landroidx/fragment/app/n;->E0(I)Z
    move-result v0
    if-eqz v0, :L1
  .line 3
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "moveto CREATE_VIEW: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L1
  .line 4
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;
    invoke-virtual { v0, v1 }, Landroidx/fragment/app/Fragment;->s1(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    move-result-object v0
    const/4 v1, 0
  .line 5
    iget-object v2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->H:Landroid/view/ViewGroup;
    if-eqz v3, :L2
    move-object v1, v3
    goto/16 :L8
  :L2
  .line 6
    iget v3, v2, Landroidx/fragment/app/Fragment;->y:I
    if-eqz v3, :L8
    const/4 v1, -1
    if-eq v3, v1, :L7
  .line 7
    iget-object v1, v2, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/n;
    invoke-virtual { v1 }, Landroidx/fragment/app/n;->n0()Landroidx/fragment/app/g;
    move-result-object v1
  .line 8
    iget-object v2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget v2, v2, Landroidx/fragment/app/Fragment;->y:I
    invoke-virtual { v1, v2 }, Landroidx/fragment/app/g;->c(I)Landroid/view/View;
    move-result-object v1
    check-cast v1, Landroid/view/ViewGroup;
    if-nez v1, :L8
  .line 9
    iget-object v2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-boolean v3, v2, Landroidx/fragment/app/Fragment;->q:Z
    if-eqz v3, :L3
    goto :L8
  :L3
  .line 10
    invoke-virtual { v2 }, Landroidx/fragment/app/Fragment;->d0()Landroid/content/res/Resources;
    move-result-object v0
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget v1, v1, Landroidx/fragment/app/Fragment;->y:I
    invoke-virtual { v0, v1 }, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    move-result-object v0
  :L4
    goto :L6
  :L5
    const-string v0, "unknown"
  :L6
  .line 11
    new-instance v1, Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "No view found for id 0x"
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v3, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget v3, v3, Landroidx/fragment/app/Fragment;->y:I
  .line 12
    invoke-static { v3 }, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v3, " ("
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, ") for fragment "
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-direct { v1, v0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v1
  :L7
  .line 13
    new-instance v0, Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Cannot create fragment "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v2, " for a container view with no id"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, v1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
  :L8
  .line 14
    iget-object v2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iput-object v1, v2, Landroidx/fragment/app/Fragment;->H:Landroid/view/ViewGroup;
  .line 15
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;
    invoke-virtual { v2, v0, v1, v3 }, Landroidx/fragment/app/Fragment;->o1(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
  .line 16
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
    const/4 v2, 2
    if-eqz v0, :L16
    const/4 v3, 0
  .line 17
    invoke-virtual { v0, v3 }, Landroid/view/View;->setSaveFromParentEnabled(Z)V
  .line 18
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v4, v0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
    sget v5, Lc/j/b;->fragment_container_view_tag:I
    invoke-virtual { v4, v5, v0 }, Landroid/view/View;->setTag(ILjava/lang/Object;)V
    if-eqz v1, :L9
  .line 19
    invoke-virtual { p0 }, Landroidx/fragment/app/u;->b()V
  :L9
  .line 20
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->A:Z
    if-eqz v1, :L10
  .line 21
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
    const/16 v1, 8
    invoke-virtual { v0, v1 }, Landroid/view/View;->setVisibility(I)V
  :L10
  .line 22
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
    invoke-static { v0 }, Landroidx/core/view/v;->S(Landroid/view/View;)Z
    move-result v0
    if-eqz v0, :L11
  .line 23
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
    invoke-static { v0 }, Landroidx/core/view/v;->l0(Landroid/view/View;)V
    goto :L12
  :L11
  .line 24
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
  .line 25
    new-instance v1, Landroidx/fragment/app/u$a;
    invoke-direct { v1, p0, v0 }, Landroidx/fragment/app/u$a;-><init>(Landroidx/fragment/app/u;Landroid/view/View;)V
    invoke-virtual { v0, v1 }, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
  :L12
  .line 26
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    invoke-virtual { v0 }, Landroidx/fragment/app/Fragment;->F1()V
  .line 27
    iget-object v0, p0, Landroidx/fragment/app/u;->a:Landroidx/fragment/app/m;
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v4, v1, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
    iget-object v5, v1, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;
    invoke-virtual { v0, v1, v4, v5, v3 }, Landroidx/fragment/app/m;->m(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V
  .line 28
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
    invoke-virtual { v0 }, Landroid/view/View;->getVisibility()I
    move-result v0
  .line 29
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
    invoke-virtual { v1 }, Landroid/view/View;->getAlpha()F
    move-result v1
  .line 30
    sget-boolean v4, Landroidx/fragment/app/n;->P:Z
    if-eqz v4, :L14
  .line 31
    iget-object v3, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    invoke-virtual { v3, v1 }, Landroidx/fragment/app/Fragment;->Y1(F)V
  .line 32
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v3, v1, Landroidx/fragment/app/Fragment;->H:Landroid/view/ViewGroup;
    if-eqz v3, :L16
    if-nez v0, :L16
  .line 33
    iget-object v0, v1, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
    invoke-virtual { v0 }, Landroid/view/View;->findFocus()Landroid/view/View;
    move-result-object v0
    if-eqz v0, :L13
  .line 34
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    invoke-virtual { v1, v0 }, Landroidx/fragment/app/Fragment;->T1(Landroid/view/View;)V
  .line 35
    invoke-static { v2 }, Landroidx/fragment/app/n;->E0(I)Z
    move-result v1
    if-eqz v1, :L13
  .line 36
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "requestFocus: Saved focused view "
    invoke-virtual { v1, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v0, " for Fragment "
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L13
  .line 37
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Landroid/view/View;->setAlpha(F)V
    goto :L16
  :L14
  .line 38
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    if-nez v0, :L15
    iget-object v0, v1, Landroidx/fragment/app/Fragment;->H:Landroid/view/ViewGroup;
    if-eqz v0, :L15
    const/4 v3, 1
  :L15
    iput-boolean v3, v1, Landroidx/fragment/app/Fragment;->M:Z
  :L16
  .line 39
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iput v2, v0, Landroidx/fragment/app/Fragment;->b:I
    return-void
.end method

.method g()V
  .registers 6
    const/4 v0, 3
  .line 1
    invoke-static { v0 }, Landroidx/fragment/app/n;->E0(I)Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "movefrom CREATED: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L0
  .line 3
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->n:Z
    const/4 v2, 1
    const/4 v3, 0
    if-eqz v1, :L1
    invoke-virtual { v0 }, Landroidx/fragment/app/Fragment;->t0()Z
    move-result v0
    if-nez v0, :L1
    const/4 v0, 1
    goto :L2
  :L1
    const/4 v0, 0
  :L2
    if-nez v0, :L4
  .line 4
    iget-object v1, p0, Landroidx/fragment/app/u;->b:Landroidx/fragment/app/v;
  .line 5
    invoke-virtual { v1 }, Landroidx/fragment/app/v;->o()Landroidx/fragment/app/q;
    move-result-object v1
    iget-object v4, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    invoke-virtual { v1, v4 }, Landroidx/fragment/app/q;->s(Landroidx/fragment/app/Fragment;)Z
    move-result v1
    if-eqz v1, :L3
    goto :L4
  :L3
    const/4 v1, 0
    goto :L5
  :L4
    const/4 v1, 1
  :L5
    if-eqz v1, :L13
  .line 6
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/k;
  .line 7
    instance-of v4, v1, Landroidx/lifecycle/y;
    if-eqz v4, :L6
  .line 8
    iget-object v1, p0, Landroidx/fragment/app/u;->b:Landroidx/fragment/app/v;
    invoke-virtual { v1 }, Landroidx/fragment/app/v;->o()Landroidx/fragment/app/q;
    move-result-object v1
    invoke-virtual { v1 }, Landroidx/fragment/app/q;->p()Z
    move-result v2
    goto :L7
  :L6
  .line 9
    invoke-virtual { v1 }, Landroidx/fragment/app/k;->f()Landroid/content/Context;
    move-result-object v4
    instance-of v4, v4, Landroid/app/Activity;
    if-eqz v4, :L7
  .line 10
    invoke-virtual { v1 }, Landroidx/fragment/app/k;->f()Landroid/content/Context;
    move-result-object v1
    check-cast v1, Landroid/app/Activity;
  .line 11
    invoke-virtual { v1 }, Landroid/app/Activity;->isChangingConfigurations()Z
    move-result v1
    xor-int/2addr v2, v1
  :L7
    if-nez v0, :L8
    if-eqz v2, :L9
  :L8
  .line 12
    iget-object v0, p0, Landroidx/fragment/app/u;->b:Landroidx/fragment/app/v;
    invoke-virtual { v0 }, Landroidx/fragment/app/v;->o()Landroidx/fragment/app/q;
    move-result-object v0
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    invoke-virtual { v0, v1 }, Landroidx/fragment/app/q;->j(Landroidx/fragment/app/Fragment;)V
  :L9
  .line 13
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    invoke-virtual { v0 }, Landroidx/fragment/app/Fragment;->p1()V
  .line 14
    iget-object v0, p0, Landroidx/fragment/app/u;->a:Landroidx/fragment/app/m;
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    invoke-virtual { v0, v1, v3 }, Landroidx/fragment/app/m;->d(Landroidx/fragment/app/Fragment;Z)V
  .line 15
    iget-object v0, p0, Landroidx/fragment/app/u;->b:Landroidx/fragment/app/v;
    invoke-virtual { v0 }, Landroidx/fragment/app/v;->k()Ljava/util/List;
    move-result-object v0
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L10
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L11
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/fragment/app/u;
    if-eqz v1, :L10
  .line 16
    invoke-virtual { v1 }, Landroidx/fragment/app/u;->k()Landroidx/fragment/app/Fragment;
    move-result-object v1
  .line 17
    iget-object v2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->g:Ljava/lang/String;
    iget-object v3, v1, Landroidx/fragment/app/Fragment;->j:Ljava/lang/String;
    invoke-virtual { v2, v3 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :L10
  .line 18
    iget-object v2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iput-object v2, v1, Landroidx/fragment/app/Fragment;->i:Landroidx/fragment/app/Fragment;
    const/4 v2, 0
  .line 19
    iput-object v2, v1, Landroidx/fragment/app/Fragment;->j:Ljava/lang/String;
    goto :L10
  :L11
  .line 20
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->j:Ljava/lang/String;
    if-eqz v1, :L12
  .line 21
    iget-object v2, p0, Landroidx/fragment/app/u;->b:Landroidx/fragment/app/v;
    invoke-virtual { v2, v1 }, Landroidx/fragment/app/v;->f(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    move-result-object v1
    iput-object v1, v0, Landroidx/fragment/app/Fragment;->i:Landroidx/fragment/app/Fragment;
  :L12
  .line 22
    iget-object v0, p0, Landroidx/fragment/app/u;->b:Landroidx/fragment/app/v;
    invoke-virtual { v0, p0 }, Landroidx/fragment/app/v;->q(Landroidx/fragment/app/u;)V
    goto :L15
  :L13
  .line 23
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->j:Ljava/lang/String;
    if-eqz v0, :L14
  .line 24
    iget-object v1, p0, Landroidx/fragment/app/u;->b:Landroidx/fragment/app/v;
    invoke-virtual { v1, v0 }, Landroidx/fragment/app/v;->f(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    move-result-object v0
    if-eqz v0, :L14
  .line 25
    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->C:Z
    if-eqz v1, :L14
  .line 26
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iput-object v0, v1, Landroidx/fragment/app/Fragment;->i:Landroidx/fragment/app/Fragment;
  :L14
  .line 27
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iput v3, v0, Landroidx/fragment/app/Fragment;->b:I
  :L15
    return-void
.end method

.method h()V
  .registers 4
    const/4 v0, 3
  .line 1
    invoke-static { v0 }, Landroidx/fragment/app/n;->E0(I)Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "movefrom CREATE_VIEW: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L0
  .line 3
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->H:Landroid/view/ViewGroup;
    if-eqz v1, :L1
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
    if-eqz v0, :L1
  .line 4
    invoke-virtual { v1, v0 }, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
  :L1
  .line 5
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    invoke-virtual { v0 }, Landroidx/fragment/app/Fragment;->q1()V
  .line 6
    iget-object v0, p0, Landroidx/fragment/app/u;->a:Landroidx/fragment/app/m;
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    const/4 v2, 0
    invoke-virtual { v0, v1, v2 }, Landroidx/fragment/app/m;->n(Landroidx/fragment/app/Fragment;Z)V
  .line 7
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    const/4 v1, 0
    iput-object v1, v0, Landroidx/fragment/app/Fragment;->H:Landroid/view/ViewGroup;
  .line 8
    iput-object v1, v0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
  .line 9
    iput-object v1, v0, Landroidx/fragment/app/Fragment;->T:Landroidx/fragment/app/a0;
  .line 10
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->U:Landroidx/lifecycle/o;
    invoke-virtual { v0, v1 }, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V
  .line 11
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iput-boolean v2, v0, Landroidx/fragment/app/Fragment;->p:Z
    return-void
.end method

.method i()V
  .registers 5
    const/4 v0, 3
  .line 1
    invoke-static { v0 }, Landroidx/fragment/app/n;->E0(I)Z
    move-result v1
    if-eqz v1, :L0
  .line 2
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "movefrom ATTACHED: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L0
  .line 3
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    invoke-virtual { v1 }, Landroidx/fragment/app/Fragment;->r1()V
  .line 4
    iget-object v1, p0, Landroidx/fragment/app/u;->a:Landroidx/fragment/app/m;
    iget-object v2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    const/4 v3, 0
    invoke-virtual { v1, v2, v3 }, Landroidx/fragment/app/m;->e(Landroidx/fragment/app/Fragment;Z)V
  .line 5
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    const/4 v2, -1
    iput v2, v1, Landroidx/fragment/app/Fragment;->b:I
    const/4 v2, 0
  .line 6
    iput-object v2, v1, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/k;
  .line 7
    iput-object v2, v1, Landroidx/fragment/app/Fragment;->w:Landroidx/fragment/app/Fragment;
  .line 8
    iput-object v2, v1, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/n;
  .line 9
    iget-boolean v2, v1, Landroidx/fragment/app/Fragment;->n:Z
    if-eqz v2, :L1
    invoke-virtual { v1 }, Landroidx/fragment/app/Fragment;->t0()Z
    move-result v1
    if-nez v1, :L1
    const/4 v3, 1
  :L1
    if-nez v3, :L2
  .line 10
    iget-object v1, p0, Landroidx/fragment/app/u;->b:Landroidx/fragment/app/v;
    invoke-virtual { v1 }, Landroidx/fragment/app/v;->o()Landroidx/fragment/app/q;
    move-result-object v1
    iget-object v2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    invoke-virtual { v1, v2 }, Landroidx/fragment/app/q;->s(Landroidx/fragment/app/Fragment;)Z
    move-result v1
    if-eqz v1, :L4
  :L2
  .line 11
    invoke-static { v0 }, Landroidx/fragment/app/n;->E0(I)Z
    move-result v0
    if-eqz v0, :L3
  .line 12
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "initState called for fragment: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L3
  .line 13
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    invoke-virtual { v0 }, Landroidx/fragment/app/Fragment;->o0()V
  :L4
    return-void
.end method

.method j()V
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->o:Z
    if-eqz v1, :L2
    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->p:Z
    if-eqz v1, :L2
    iget-boolean v0, v0, Landroidx/fragment/app/Fragment;->r:Z
    if-nez v0, :L2
    const/4 v0, 3
  .line 2
    invoke-static { v0 }, Landroidx/fragment/app/n;->E0(I)Z
    move-result v0
    if-eqz v0, :L0
  .line 3
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "moveto CREATE_VIEW: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L0
  .line 4
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;
    invoke-virtual { v0, v1 }, Landroidx/fragment/app/Fragment;->s1(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    move-result-object v1
    const/4 v2, 0
    iget-object v3, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v3, v3, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;
    invoke-virtual { v0, v1, v2, v3 }, Landroidx/fragment/app/Fragment;->o1(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
  .line 5
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
    if-eqz v0, :L2
    const/4 v1, 0
  .line 6
    invoke-virtual { v0, v1 }, Landroid/view/View;->setSaveFromParentEnabled(Z)V
  .line 7
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v2, v0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
    sget v3, Lc/j/b;->fragment_container_view_tag:I
    invoke-virtual { v2, v3, v0 }, Landroid/view/View;->setTag(ILjava/lang/Object;)V
  .line 8
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-boolean v2, v0, Landroidx/fragment/app/Fragment;->A:Z
    if-eqz v2, :L1
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
    const/16 v2, 8
    invoke-virtual { v0, v2 }, Landroid/view/View;->setVisibility(I)V
  :L1
  .line 9
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    invoke-virtual { v0 }, Landroidx/fragment/app/Fragment;->F1()V
  .line 10
    iget-object v0, p0, Landroidx/fragment/app/u;->a:Landroidx/fragment/app/m;
    iget-object v2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
    iget-object v4, v2, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;
    invoke-virtual { v0, v2, v3, v4, v1 }, Landroidx/fragment/app/m;->m(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V
  .line 11
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    const/4 v1, 2
    iput v1, v0, Landroidx/fragment/app/Fragment;->b:I
  :L2
    return-void
.end method

.method k()Landroidx/fragment/app/Fragment;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    return-object v0
.end method

.method m()V
  .catchall { :L2 .. :L29 } :L30
  .registers 7
  .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/u;->d:Z
    const/4 v1, 2
    if-eqz v0, :L1
  .line 2
    invoke-static { v1 }, Landroidx/fragment/app/n;->E0(I)Z
    move-result v0
    if-eqz v0, :L0
  .line 3
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Ignoring re-entrant call to moveToExpectedState() for "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 4
    invoke-virtual { p0 }, Landroidx/fragment/app/u;->k()Landroidx/fragment/app/Fragment;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L0
    return-void
  :L1
    const/4 v0, 0
    const/4 v2, 1
  :L2
  .line 5
    iput-boolean v2, p0, Landroidx/fragment/app/u;->d:Z
  :L3
  .line 6
    invoke-virtual { p0 }, Landroidx/fragment/app/u;->d()I
    move-result v3
    iget-object v4, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget v4, v4, Landroidx/fragment/app/Fragment;->b:I
    if-eq v3, v4, :L25
  .line 7
    iget-object v4, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget v4, v4, Landroidx/fragment/app/Fragment;->b:I
    if-le v3, v4, :L13
  .line 8
    iget-object v3, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget v3, v3, Landroidx/fragment/app/Fragment;->b:I
    add-int/2addr v3, v2
    packed-switch v3, :L33
    goto :L3
  :L4
  .line 9
    invoke-virtual { p0 }, Landroidx/fragment/app/u;->p()V
    goto :L3
  :L5
  .line 10
    iget-object v3, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    const/4 v4, 6
    iput v4, v3, Landroidx/fragment/app/Fragment;->b:I
    goto :L3
  :L6
  .line 11
    invoke-virtual { p0 }, Landroidx/fragment/app/u;->u()V
    goto :L3
  :L7
  .line 12
    iget-object v3, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v3, v3, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
    if-eqz v3, :L8
    iget-object v3, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v3, v3, Landroidx/fragment/app/Fragment;->H:Landroid/view/ViewGroup;
    if-eqz v3, :L8
  .line 13
    iget-object v3, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v3, v3, Landroidx/fragment/app/Fragment;->H:Landroid/view/ViewGroup;
    iget-object v4, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
  .line 14
    invoke-virtual { v4 }, Landroidx/fragment/app/Fragment;->X()Landroidx/fragment/app/n;
    move-result-object v4
  .line 15
    invoke-static { v3, v4 }, Landroidx/fragment/app/c0;->n(Landroid/view/ViewGroup;Landroidx/fragment/app/n;)Landroidx/fragment/app/c0;
    move-result-object v3
  .line 16
    iget-object v4, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v4, v4, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
    invoke-virtual { v4 }, Landroid/view/View;->getVisibility()I
    move-result v4
  .line 17
    invoke-static { v4 }, Landroidx/fragment/app/c0$e$c;->b(I)Landroidx/fragment/app/c0$e$c;
    move-result-object v4
  .line 18
    invoke-virtual { v3, v4, p0 }, Landroidx/fragment/app/c0;->b(Landroidx/fragment/app/c0$e$c;Landroidx/fragment/app/u;)V
  :L8
  .line 19
    iget-object v3, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    const/4 v4, 4
    iput v4, v3, Landroidx/fragment/app/Fragment;->b:I
    goto :L3
  :L9
  .line 20
    invoke-virtual { p0 }, Landroidx/fragment/app/u;->a()V
    goto :L3
  :L10
  .line 21
    invoke-virtual { p0 }, Landroidx/fragment/app/u;->j()V
  .line 22
    invoke-virtual { p0 }, Landroidx/fragment/app/u;->f()V
    goto :L3
  :L11
  .line 23
    invoke-virtual { p0 }, Landroidx/fragment/app/u;->e()V
    goto :L3
  :L12
  .line 24
    invoke-virtual { p0 }, Landroidx/fragment/app/u;->c()V
    goto :L3
  :L13
  .line 25
    iget-object v3, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget v3, v3, Landroidx/fragment/app/Fragment;->b:I
    sub-int/2addr v3, v2
    packed-switch v3, :L34
    goto :L3
  :L14
  .line 26
    invoke-virtual { p0 }, Landroidx/fragment/app/u;->n()V
    goto :L3
  :L15
  .line 27
    iget-object v3, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    const/4 v4, 5
    iput v4, v3, Landroidx/fragment/app/Fragment;->b:I
    goto :L3
  :L16
  .line 28
    invoke-virtual { p0 }, Landroidx/fragment/app/u;->v()V
    goto :L3
  :L17
    const/4 v3, 3
  .line 29
    invoke-static { v3 }, Landroidx/fragment/app/n;->E0(I)Z
    move-result v4
    if-eqz v4, :L18
  .line 30
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "movefrom ACTIVITY_CREATED: "
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v5, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L18
  .line 31
    iget-object v4, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v4, v4, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
    if-eqz v4, :L19
  .line 32
    iget-object v4, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v4, v4, Landroidx/fragment/app/Fragment;->d:Landroid/util/SparseArray;
    if-nez v4, :L19
  .line 33
    invoke-virtual { p0 }, Landroidx/fragment/app/u;->s()V
  :L19
  .line 34
    iget-object v4, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v4, v4, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
    if-eqz v4, :L20
    iget-object v4, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v4, v4, Landroidx/fragment/app/Fragment;->H:Landroid/view/ViewGroup;
    if-eqz v4, :L20
  .line 35
    iget-object v4, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v4, v4, Landroidx/fragment/app/Fragment;->H:Landroid/view/ViewGroup;
    iget-object v5, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
  .line 36
    invoke-virtual { v5 }, Landroidx/fragment/app/Fragment;->X()Landroidx/fragment/app/n;
    move-result-object v5
  .line 37
    invoke-static { v4, v5 }, Landroidx/fragment/app/c0;->n(Landroid/view/ViewGroup;Landroidx/fragment/app/n;)Landroidx/fragment/app/c0;
    move-result-object v4
  .line 38
    invoke-virtual { v4, p0 }, Landroidx/fragment/app/c0;->d(Landroidx/fragment/app/u;)V
  :L20
  .line 39
    iget-object v4, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iput v3, v4, Landroidx/fragment/app/Fragment;->b:I
    goto/16 :L3
  :L21
  .line 40
    iget-object v3, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iput-boolean v0, v3, Landroidx/fragment/app/Fragment;->p:Z
  .line 41
    iget-object v3, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iput v1, v3, Landroidx/fragment/app/Fragment;->b:I
    goto/16 :L3
  :L22
  .line 42
    invoke-virtual { p0 }, Landroidx/fragment/app/u;->h()V
  .line 43
    iget-object v3, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iput v2, v3, Landroidx/fragment/app/Fragment;->b:I
    goto/16 :L3
  :L23
  .line 44
    invoke-virtual { p0 }, Landroidx/fragment/app/u;->g()V
    goto/16 :L3
  :L24
  .line 45
    invoke-virtual { p0 }, Landroidx/fragment/app/u;->i()V
    goto/16 :L3
  :L25
  .line 46
    sget-boolean v1, Landroidx/fragment/app/n;->P:Z
    if-eqz v1, :L29
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->N:Z
    if-eqz v1, :L29
  .line 47
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
    if-eqz v1, :L27
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->H:Landroid/view/ViewGroup;
    if-eqz v1, :L27
  .line 48
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->H:Landroid/view/ViewGroup;
    iget-object v2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
  .line 49
    invoke-virtual { v2 }, Landroidx/fragment/app/Fragment;->X()Landroidx/fragment/app/n;
    move-result-object v2
  .line 50
    invoke-static { v1, v2 }, Landroidx/fragment/app/c0;->n(Landroid/view/ViewGroup;Landroidx/fragment/app/n;)Landroidx/fragment/app/c0;
    move-result-object v1
  .line 51
    iget-object v2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-boolean v2, v2, Landroidx/fragment/app/Fragment;->A:Z
    if-eqz v2, :L26
  .line 52
    invoke-virtual { v1, p0 }, Landroidx/fragment/app/c0;->c(Landroidx/fragment/app/u;)V
    goto :L27
  :L26
  .line 53
    invoke-virtual { v1, p0 }, Landroidx/fragment/app/c0;->e(Landroidx/fragment/app/u;)V
  :L27
  .line 54
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/n;
    if-eqz v1, :L28
  .line 55
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/n;
    iget-object v2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    invoke-virtual { v1, v2 }, Landroidx/fragment/app/n;->C0(Landroidx/fragment/app/Fragment;)V
  :L28
  .line 56
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iput-boolean v0, v1, Landroidx/fragment/app/Fragment;->N:Z
  .line 57
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-boolean v2, v2, Landroidx/fragment/app/Fragment;->A:Z
    invoke-virtual { v1, v2 }, Landroidx/fragment/app/Fragment;->R0(Z)V
  :L29
  .line 58
    iput-boolean v0, p0, Landroidx/fragment/app/u;->d:Z
    return-void
  :L30
    move-exception v1
    iput-boolean v0, p0, Landroidx/fragment/app/u;->d:Z
  .line 59
    goto :L32
  :L31
    throw v1
  :L32
    goto :L31
  :L33
  .packed-switch 0
    :L12
    :L11
    :L10
    :L9
    :L7
    :L6
    :L5
    :L4
  .end packed-switch
  :L34
  .packed-switch -1
    :L24
    :L23
    :L22
    :L21
    :L17
    :L16
    :L15
    :L14
  .end packed-switch
.end method

.method n()V
  .registers 4
    const/4 v0, 3
  .line 1
    invoke-static { v0 }, Landroidx/fragment/app/n;->E0(I)Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "movefrom RESUMED: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L0
  .line 3
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    invoke-virtual { v0 }, Landroidx/fragment/app/Fragment;->x1()V
  .line 4
    iget-object v0, p0, Landroidx/fragment/app/u;->a:Landroidx/fragment/app/m;
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    const/4 v2, 0
    invoke-virtual { v0, v1, v2 }, Landroidx/fragment/app/m;->f(Landroidx/fragment/app/Fragment;Z)V
    return-void
.end method

.method o(Ljava/lang/ClassLoader;)V
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;
    if-nez v0, :L0
    return-void
  :L0
  .line 2
    invoke-virtual { v0, p1 }, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
  .line 3
    iget-object p1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;
    const-string v1, "android:view_state"
    invoke-virtual { v0, v1 }, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;
    move-result-object v0
    iput-object v0, p1, Landroidx/fragment/app/Fragment;->d:Landroid/util/SparseArray;
  .line 4
    iget-object p1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;
    const-string v1, "android:view_registry_state"
    invoke-virtual { v0, v1 }, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;
    move-result-object v0
    iput-object v0, p1, Landroidx/fragment/app/Fragment;->e:Landroid/os/Bundle;
  .line 5
    iget-object p1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;
    const-string v1, "android:target_state"
    invoke-virtual { v0, v1 }, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    iput-object v0, p1, Landroidx/fragment/app/Fragment;->j:Ljava/lang/String;
  .line 6
    iget-object p1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->j:Ljava/lang/String;
    if-eqz v0, :L1
  .line 7
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;
    const/4 v1, 0
    const-string v2, "android:target_req_state"
    invoke-virtual { v0, v2, v1 }, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    move-result v0
    iput v0, p1, Landroidx/fragment/app/Fragment;->k:I
  :L1
  .line 8
    iget-object p1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->f:Ljava/lang/Boolean;
    const/4 v1, 1
    if-eqz v0, :L2
  .line 9
    invoke-virtual { v0 }, Ljava/lang/Boolean;->booleanValue()Z
    move-result v0
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->K:Z
  .line 10
    iget-object p1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    const/4 v0, 0
    iput-object v0, p1, Landroidx/fragment/app/Fragment;->f:Ljava/lang/Boolean;
    goto :L3
  :L2
  .line 11
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;
    const-string v2, "android:user_visible_hint"
    invoke-virtual { v0, v2, v1 }, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    move-result v0
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->K:Z
  :L3
  .line 12
    iget-object p1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->K:Z
    if-nez v0, :L4
  .line 13
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->J:Z
  :L4
    return-void
.end method

.method p()V
  .registers 5
    const/4 v0, 3
  .line 1
    invoke-static { v0 }, Landroidx/fragment/app/n;->E0(I)Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "moveto RESUMED: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L0
  .line 3
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    invoke-virtual { v0 }, Landroidx/fragment/app/Fragment;->R()Landroid/view/View;
    move-result-object v0
    if-eqz v0, :L3
  .line 4
    invoke-direct { p0, v0 }, Landroidx/fragment/app/u;->l(Landroid/view/View;)Z
    move-result v1
    if-eqz v1, :L3
  .line 5
    invoke-virtual { v0 }, Landroid/view/View;->requestFocus()Z
    move-result v1
    const/4 v2, 2
  .line 6
    invoke-static { v2 }, Landroidx/fragment/app/n;->E0(I)Z
    move-result v2
    if-eqz v2, :L3
  .line 7
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "requestFocus: Restoring focused view "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v0, " "
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    if-eqz v1, :L1
    const-string v0, "succeeded"
    goto :L2
  :L1
    const-string v0, "failed"
  :L2
  .line 8
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, " on Fragment "
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v0, " resulting in focused view "
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
  .line 9
    invoke-virtual { v0 }, Landroid/view/View;->findFocus()Landroid/view/View;
    move-result-object v0
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L3
  .line 10
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Landroidx/fragment/app/Fragment;->T1(Landroid/view/View;)V
  .line 11
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    invoke-virtual { v0 }, Landroidx/fragment/app/Fragment;->B1()V
  .line 12
    iget-object v0, p0, Landroidx/fragment/app/u;->a:Landroidx/fragment/app/m;
    iget-object v2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    const/4 v3, 0
    invoke-virtual { v0, v2, v3 }, Landroidx/fragment/app/m;->i(Landroidx/fragment/app/Fragment;Z)V
  .line 13
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iput-object v1, v0, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;
  .line 14
    iput-object v1, v0, Landroidx/fragment/app/Fragment;->d:Landroid/util/SparseArray;
  .line 15
    iput-object v1, v0, Landroidx/fragment/app/Fragment;->e:Landroid/os/Bundle;
    return-void
.end method

.method r()Landroidx/fragment/app/t;
  .registers 5
  .line 1
    new-instance v0, Landroidx/fragment/app/t;
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    invoke-direct { v0, v1 }, Landroidx/fragment/app/t;-><init>(Landroidx/fragment/app/Fragment;)V
  .line 2
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget v1, v1, Landroidx/fragment/app/Fragment;->b:I
    const/4 v2, -1
    if-le v1, v2, :L1
    iget-object v1, v0, Landroidx/fragment/app/t;->n:Landroid/os/Bundle;
    if-nez v1, :L1
  .line 3
    invoke-direct { p0 }, Landroidx/fragment/app/u;->q()Landroid/os/Bundle;
    move-result-object v1
    iput-object v1, v0, Landroidx/fragment/app/t;->n:Landroid/os/Bundle;
  .line 4
    iget-object v2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->j:Ljava/lang/String;
    if-eqz v2, :L2
    if-nez v1, :L0
  .line 5
    new-instance v1, Landroid/os/Bundle;
    invoke-direct { v1 }, Landroid/os/Bundle;-><init>()V
    iput-object v1, v0, Landroidx/fragment/app/t;->n:Landroid/os/Bundle;
  :L0
  .line 6
    iget-object v1, v0, Landroidx/fragment/app/t;->n:Landroid/os/Bundle;
    iget-object v2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->j:Ljava/lang/String;
    const-string v3, "android:target_state"
    invoke-virtual { v1, v3, v2 }, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
  .line 7
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget v1, v1, Landroidx/fragment/app/Fragment;->k:I
    if-eqz v1, :L2
  .line 8
    iget-object v2, v0, Landroidx/fragment/app/t;->n:Landroid/os/Bundle;
    const-string v3, "android:target_req_state"
    invoke-virtual { v2, v3, v1 }, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    goto :L2
  :L1
  .line 9
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;
    iput-object v1, v0, Landroidx/fragment/app/t;->n:Landroid/os/Bundle;
  :L2
    return-object v0
.end method

.method s()V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
    if-nez v0, :L0
    return-void
  :L0
  .line 2
    new-instance v0, Landroid/util/SparseArray;
    invoke-direct { v0 }, Landroid/util/SparseArray;-><init>()V
  .line 3
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
    invoke-virtual { v1, v0 }, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V
  .line 4
    invoke-virtual { v0 }, Landroid/util/SparseArray;->size()I
    move-result v1
    if-lez v1, :L1
  .line 5
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iput-object v0, v1, Landroidx/fragment/app/Fragment;->d:Landroid/util/SparseArray;
  :L1
  .line 6
    new-instance v0, Landroid/os/Bundle;
    invoke-direct { v0 }, Landroid/os/Bundle;-><init>()V
  .line 7
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->T:Landroidx/fragment/app/a0;
    invoke-virtual { v1, v0 }, Landroidx/fragment/app/a0;->e(Landroid/os/Bundle;)V
  .line 8
    invoke-virtual { v0 }, Landroid/os/Bundle;->isEmpty()Z
    move-result v1
    if-nez v1, :L2
  .line 9
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    iput-object v0, v1, Landroidx/fragment/app/Fragment;->e:Landroid/os/Bundle;
  :L2
    return-void
.end method

.method t(I)V
  .registers 2
  .line 1
    iput p1, p0, Landroidx/fragment/app/u;->e:I
    return-void
.end method

.method u()V
  .registers 4
    const/4 v0, 3
  .line 1
    invoke-static { v0 }, Landroidx/fragment/app/n;->E0(I)Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "moveto STARTED: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L0
  .line 3
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    invoke-virtual { v0 }, Landroidx/fragment/app/Fragment;->D1()V
  .line 4
    iget-object v0, p0, Landroidx/fragment/app/u;->a:Landroidx/fragment/app/m;
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    const/4 v2, 0
    invoke-virtual { v0, v1, v2 }, Landroidx/fragment/app/m;->k(Landroidx/fragment/app/Fragment;Z)V
    return-void
.end method

.method v()V
  .registers 4
    const/4 v0, 3
  .line 1
    invoke-static { v0 }, Landroidx/fragment/app/n;->E0(I)Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "movefrom STARTED: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L0
  .line 3
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    invoke-virtual { v0 }, Landroidx/fragment/app/Fragment;->E1()V
  .line 4
    iget-object v0, p0, Landroidx/fragment/app/u;->a:Landroidx/fragment/app/m;
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;
    const/4 v2, 0
    invoke-virtual { v0, v1, v2 }, Landroidx/fragment/app/m;->l(Landroidx/fragment/app/Fragment;Z)V
    return-void
.end method
