.class Landroidx/fragment/app/c$l;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/fragment/app/c;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "l"
.end annotation

.field private final a:Landroidx/fragment/app/c0$e;

.field private final b:Lc/g/g/b;

.method constructor <init>(Landroidx/fragment/app/c0$e;Lc/g/g/b;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Landroidx/fragment/app/c$l;->a:Landroidx/fragment/app/c0$e;
  .line 3
    iput-object p2, p0, Landroidx/fragment/app/c$l;->b:Lc/g/g/b;
    return-void
.end method

.method a()V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/c$l;->a:Landroidx/fragment/app/c0$e;
    iget-object v1, p0, Landroidx/fragment/app/c$l;->b:Lc/g/g/b;
    invoke-virtual { v0, v1 }, Landroidx/fragment/app/c0$e;->d(Lc/g/g/b;)V
    return-void
.end method

.method b()Landroidx/fragment/app/c0$e;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/c$l;->a:Landroidx/fragment/app/c0$e;
    return-object v0
.end method

.method c()Lc/g/g/b;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/c$l;->b:Lc/g/g/b;
    return-object v0
.end method

.method d()Z
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/c$l;->a:Landroidx/fragment/app/c0$e;
  .line 2
    invoke-virtual { v0 }, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;
    move-result-object v0
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
  .line 3
    invoke-static { v0 }, Landroidx/fragment/app/c0$e$c;->c(Landroid/view/View;)Landroidx/fragment/app/c0$e$c;
    move-result-object v0
  .line 4
    iget-object v1, p0, Landroidx/fragment/app/c$l;->a:Landroidx/fragment/app/c0$e;
    invoke-virtual { v1 }, Landroidx/fragment/app/c0$e;->e()Landroidx/fragment/app/c0$e$c;
    move-result-object v1
    if-eq v0, v1, :L1
  .line 5
    sget-object v2, Landroidx/fragment/app/c0$e$c;->c:Landroidx/fragment/app/c0$e$c;
    if-eq v0, v2, :L0
    if-eq v1, v2, :L0
    goto :L1
  :L0
    const/4 v0, 0
    goto :L2
  :L1
    const/4 v0, 1
  :L2
    return v0
.end method
