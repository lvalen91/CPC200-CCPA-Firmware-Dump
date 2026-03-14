.class Landroidx/fragment/app/c$m;
.super Landroidx/fragment/app/c$l;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/fragment/app/c;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "m"
.end annotation

.field private final c:Ljava/lang/Object;

.field private final d:Z

.field private final e:Ljava/lang/Object;

.method constructor <init>(Landroidx/fragment/app/c0$e;Lc/g/g/b;ZZ)V
  .registers 6
  .line 1
    invoke-direct { p0, p1, p2 }, Landroidx/fragment/app/c$l;-><init>(Landroidx/fragment/app/c0$e;Lc/g/g/b;)V
  .line 2
    invoke-virtual { p1 }, Landroidx/fragment/app/c0$e;->e()Landroidx/fragment/app/c0$e$c;
    move-result-object p2
    sget-object v0, Landroidx/fragment/app/c0$e$c;->c:Landroidx/fragment/app/c0$e$c;
    if-ne p2, v0, :L4
    if-eqz p3, :L0
  .line 3
    invoke-virtual { p1 }, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;
    move-result-object p2
    invoke-virtual { p2 }, Landroidx/fragment/app/Fragment;->c0()Ljava/lang/Object;
    move-result-object p2
    goto :L1
  :L0
  .line 4
    invoke-virtual { p1 }, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;
    move-result-object p2
    invoke-virtual { p2 }, Landroidx/fragment/app/Fragment;->M()Ljava/lang/Object;
    move-result-object p2
  :L1
    iput-object p2, p0, Landroidx/fragment/app/c$m;->c:Ljava/lang/Object;
    if-eqz p3, :L2
  .line 5
    invoke-virtual { p1 }, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;
    move-result-object p2
    invoke-virtual { p2 }, Landroidx/fragment/app/Fragment;->F()Z
    move-result p2
    goto :L3
  :L2
  .line 6
    invoke-virtual { p1 }, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;
    move-result-object p2
    invoke-virtual { p2 }, Landroidx/fragment/app/Fragment;->E()Z
    move-result p2
  :L3
    iput-boolean p2, p0, Landroidx/fragment/app/c$m;->d:Z
    goto :L7
  :L4
    if-eqz p3, :L5
  .line 7
    invoke-virtual { p1 }, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;
    move-result-object p2
    invoke-virtual { p2 }, Landroidx/fragment/app/Fragment;->e0()Ljava/lang/Object;
    move-result-object p2
    goto :L6
  :L5
  .line 8
    invoke-virtual { p1 }, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;
    move-result-object p2
    invoke-virtual { p2 }, Landroidx/fragment/app/Fragment;->P()Ljava/lang/Object;
    move-result-object p2
  :L6
    iput-object p2, p0, Landroidx/fragment/app/c$m;->c:Ljava/lang/Object;
    const/4 p2, 1
  .line 9
    iput-boolean p2, p0, Landroidx/fragment/app/c$m;->d:Z
  :L7
    if-eqz p4, :L9
    if-eqz p3, :L8
  .line 10
    invoke-virtual { p1 }, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;
    move-result-object p1
    invoke-virtual { p1 }, Landroidx/fragment/app/Fragment;->g0()Ljava/lang/Object;
    move-result-object p1
    iput-object p1, p0, Landroidx/fragment/app/c$m;->e:Ljava/lang/Object;
    goto :L10
  :L8
  .line 11
    invoke-virtual { p1 }, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;
    move-result-object p1
    invoke-virtual { p1 }, Landroidx/fragment/app/Fragment;->f0()Ljava/lang/Object;
    move-result-object p1
    iput-object p1, p0, Landroidx/fragment/app/c$m;->e:Ljava/lang/Object;
    goto :L10
  :L9
    const/4 p1, 0
  .line 12
    iput-object p1, p0, Landroidx/fragment/app/c$m;->e:Ljava/lang/Object;
  :L10
    return-void
.end method

.method private f(Ljava/lang/Object;)Landroidx/fragment/app/z;
  .registers 5
    if-nez p1, :L0
    const/4 p1, 0
    return-object p1
  :L0
  .line 1
    sget-object v0, Landroidx/fragment/app/x;->b:Landroidx/fragment/app/z;
    if-eqz v0, :L1
  .line 2
    invoke-virtual { v0, p1 }, Landroidx/fragment/app/z;->e(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L1
  .line 3
    sget-object p1, Landroidx/fragment/app/x;->b:Landroidx/fragment/app/z;
    return-object p1
  :L1
  .line 4
    sget-object v0, Landroidx/fragment/app/x;->c:Landroidx/fragment/app/z;
    if-eqz v0, :L2
  .line 5
    invoke-virtual { v0, p1 }, Landroidx/fragment/app/z;->e(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L2
  .line 6
    sget-object p1, Landroidx/fragment/app/x;->c:Landroidx/fragment/app/z;
    return-object p1
  :L2
  .line 7
    new-instance v0, Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Transition "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string p1, " for fragment "
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 8
    invoke-virtual { p0 }, Landroidx/fragment/app/c$l;->b()Landroidx/fragment/app/c0$e;
    move-result-object p1
    invoke-virtual { p1 }, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;
    move-result-object p1
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string p1, " is not a valid framework Transition or AndroidX Transition"
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method e()Landroidx/fragment/app/z;
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/c$m;->c:Ljava/lang/Object;
    invoke-direct { p0, v0 }, Landroidx/fragment/app/c$m;->f(Ljava/lang/Object;)Landroidx/fragment/app/z;
    move-result-object v0
  .line 2
    iget-object v1, p0, Landroidx/fragment/app/c$m;->e:Ljava/lang/Object;
  .line 3
    invoke-direct { p0, v1 }, Landroidx/fragment/app/c$m;->f(Ljava/lang/Object;)Landroidx/fragment/app/z;
    move-result-object v1
    if-eqz v0, :L1
    if-eqz v1, :L1
    if-ne v0, v1, :L0
    goto :L1
  :L0
  .line 4
    new-instance v0, Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Mixing framework transitions and AndroidX transitions is not allowed. Fragment "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 5
    invoke-virtual { p0 }, Landroidx/fragment/app/c$l;->b()Landroidx/fragment/app/c0$e;
    move-result-object v2
    invoke-virtual { v2 }, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;
    move-result-object v2
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v2, " returned Transition "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Landroidx/fragment/app/c$m;->c:Ljava/lang/Object;
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v2, " which uses a different Transition  type than its shared element transition "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Landroidx/fragment/app/c$m;->e:Ljava/lang/Object;
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, v1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
  :L1
    if-eqz v0, :L2
    goto :L3
  :L2
    move-object v0, v1
  :L3
    return-object v0
.end method

.method public g()Ljava/lang/Object;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/c$m;->e:Ljava/lang/Object;
    return-object v0
.end method

.method h()Ljava/lang/Object;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/c$m;->c:Ljava/lang/Object;
    return-object v0
.end method

.method public i()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/c$m;->e:Ljava/lang/Object;
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method j()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/c$m;->d:Z
    return v0
.end method
