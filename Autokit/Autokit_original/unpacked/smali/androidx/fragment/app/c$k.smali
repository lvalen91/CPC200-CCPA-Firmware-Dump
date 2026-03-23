.class Landroidx/fragment/app/c$k;
.super Landroidx/fragment/app/c$l;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/fragment/app/c;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "k"
.end annotation

.field private c:Z

.field private d:Z

.field private e:Landroidx/fragment/app/f$d;

.method constructor <init>(Landroidx/fragment/app/c0$e;Lc/g/g/b;Z)V
  .registers 4
  .line 1
    invoke-direct { p0, p1, p2 }, Landroidx/fragment/app/c$l;-><init>(Landroidx/fragment/app/c0$e;Lc/g/g/b;)V
    const/4 p1, 0
  .line 2
    iput-boolean p1, p0, Landroidx/fragment/app/c$k;->d:Z
  .line 3
    iput-boolean p3, p0, Landroidx/fragment/app/c$k;->c:Z
    return-void
.end method

.method e(Landroid/content/Context;)Landroidx/fragment/app/f$d;
  .registers 6
  .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/c$k;->d:Z
    if-eqz v0, :L0
  .line 2
    iget-object p1, p0, Landroidx/fragment/app/c$k;->e:Landroidx/fragment/app/f$d;
    return-object p1
  :L0
  .line 3
    invoke-virtual { p0 }, Landroidx/fragment/app/c$l;->b()Landroidx/fragment/app/c0$e;
    move-result-object v0
    invoke-virtual { v0 }, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;
    move-result-object v0
  .line 4
    invoke-virtual { p0 }, Landroidx/fragment/app/c$l;->b()Landroidx/fragment/app/c0$e;
    move-result-object v1
    invoke-virtual { v1 }, Landroidx/fragment/app/c0$e;->e()Landroidx/fragment/app/c0$e$c;
    move-result-object v1
    sget-object v2, Landroidx/fragment/app/c0$e$c;->c:Landroidx/fragment/app/c0$e$c;
    const/4 v3, 1
    if-ne v1, v2, :L1
    const/4 v1, 1
    goto :L2
  :L1
    const/4 v1, 0
  :L2
    iget-boolean v2, p0, Landroidx/fragment/app/c$k;->c:Z
  .line 5
    invoke-static { p1, v0, v1, v2 }, Landroidx/fragment/app/f;->c(Landroid/content/Context;Landroidx/fragment/app/Fragment;ZZ)Landroidx/fragment/app/f$d;
    move-result-object p1
    iput-object p1, p0, Landroidx/fragment/app/c$k;->e:Landroidx/fragment/app/f$d;
  .line 6
    iput-boolean v3, p0, Landroidx/fragment/app/c$k;->d:Z
    return-object p1
.end method
