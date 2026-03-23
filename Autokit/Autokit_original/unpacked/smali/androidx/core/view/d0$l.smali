.class Landroidx/core/view/d0$l;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/core/view/d0;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "l"
.end annotation

.field final static b:Landroidx/core/view/d0;

.field final a:Landroidx/core/view/d0;

.method static constructor <clinit>()V
  .registers 1
  .line 1
    new-instance v0, Landroidx/core/view/d0$b;
    invoke-direct { v0 }, Landroidx/core/view/d0$b;-><init>()V
  .line 2
    invoke-virtual { v0 }, Landroidx/core/view/d0$b;->a()Landroidx/core/view/d0;
    move-result-object v0
  .line 3
    invoke-virtual { v0 }, Landroidx/core/view/d0;->a()Landroidx/core/view/d0;
    move-result-object v0
  .line 4
    invoke-virtual { v0 }, Landroidx/core/view/d0;->b()Landroidx/core/view/d0;
    move-result-object v0
  .line 5
    invoke-virtual { v0 }, Landroidx/core/view/d0;->c()Landroidx/core/view/d0;
    move-result-object v0
    sput-object v0, Landroidx/core/view/d0$l;->b:Landroidx/core/view/d0;
    return-void
.end method

.method constructor <init>(Landroidx/core/view/d0;)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Landroidx/core/view/d0$l;->a:Landroidx/core/view/d0;
    return-void
.end method

.method a()Landroidx/core/view/d0;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/view/d0$l;->a:Landroidx/core/view/d0;
    return-object v0
.end method

.method b()Landroidx/core/view/d0;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/view/d0$l;->a:Landroidx/core/view/d0;
    return-object v0
.end method

.method c()Landroidx/core/view/d0;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/view/d0$l;->a:Landroidx/core/view/d0;
    return-object v0
.end method

.method d(Landroid/view/View;)V
  .registers 2
    return-void
.end method

.method e(Landroidx/core/view/d0;)V
  .registers 2
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
  .registers 6
    const/4 v0, 1
    if-ne p0, p1, :L0
    return v0
  :L0
  .line 1
    instance-of v1, p1, Landroidx/core/view/d0$l;
    const/4 v2, 0
    if-nez v1, :L1
    return v2
  :L1
  .line 2
    check-cast p1, Landroidx/core/view/d0$l;
  .line 3
    invoke-virtual { p0 }, Landroidx/core/view/d0$l;->l()Z
    move-result v1
    invoke-virtual { p1 }, Landroidx/core/view/d0$l;->l()Z
    move-result v3
    if-ne v1, v3, :L2
  .line 4
    invoke-virtual { p0 }, Landroidx/core/view/d0$l;->k()Z
    move-result v1
    invoke-virtual { p1 }, Landroidx/core/view/d0$l;->k()Z
    move-result v3
    if-ne v1, v3, :L2
  .line 5
    invoke-virtual { p0 }, Landroidx/core/view/d0$l;->i()Lc/g/d/b;
    move-result-object v1
    invoke-virtual { p1 }, Landroidx/core/view/d0$l;->i()Lc/g/d/b;
    move-result-object v3
    invoke-static { v1, v3 }, Lc/g/j/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L2
  .line 6
    invoke-virtual { p0 }, Landroidx/core/view/d0$l;->h()Lc/g/d/b;
    move-result-object v1
    invoke-virtual { p1 }, Landroidx/core/view/d0$l;->h()Lc/g/d/b;
    move-result-object v3
    invoke-static { v1, v3 }, Lc/g/j/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L2
  .line 7
    invoke-virtual { p0 }, Landroidx/core/view/d0$l;->f()Landroidx/core/view/d;
    move-result-object v1
    invoke-virtual { p1 }, Landroidx/core/view/d0$l;->f()Landroidx/core/view/d;
    move-result-object p1
    invoke-static { v1, p1 }, Lc/g/j/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
    move-result p1
    if-eqz p1, :L2
    goto :L3
  :L2
    const/4 v0, 0
  :L3
    return v0
.end method

.method f()Landroidx/core/view/d;
  .registers 2
    const/4 v0, 0
    return-object v0
.end method

.method g()Lc/g/d/b;
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroidx/core/view/d0$l;->i()Lc/g/d/b;
    move-result-object v0
    return-object v0
.end method

.method h()Lc/g/d/b;
  .registers 2
  .line 1
    sget-object v0, Lc/g/d/b;->e:Lc/g/d/b;
    return-object v0
.end method

.method public hashCode()I
  .registers 4
    const/4 v0, 5
    new-array v0, v0, [Ljava/lang/Object;
  .line 1
    invoke-virtual { p0 }, Landroidx/core/view/d0$l;->l()Z
    move-result v1
    invoke-static { v1 }, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    move-result-object v1
    const/4 v2, 0
    aput-object v1, v0, v2
    invoke-virtual { p0 }, Landroidx/core/view/d0$l;->k()Z
    move-result v1
    invoke-static { v1 }, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    move-result-object v1
    const/4 v2, 1
    aput-object v1, v0, v2
    invoke-virtual { p0 }, Landroidx/core/view/d0$l;->i()Lc/g/d/b;
    move-result-object v1
    const/4 v2, 2
    aput-object v1, v0, v2
  .line 2
    invoke-virtual { p0 }, Landroidx/core/view/d0$l;->h()Lc/g/d/b;
    move-result-object v1
    const/4 v2, 3
    aput-object v1, v0, v2
    invoke-virtual { p0 }, Landroidx/core/view/d0$l;->f()Landroidx/core/view/d;
    move-result-object v1
    const/4 v2, 4
    aput-object v1, v0, v2
  .line 3
    invoke-static { v0 }, Lc/g/j/c;->b([Ljava/lang/Object;)I
    move-result v0
    return v0
.end method

.method i()Lc/g/d/b;
  .registers 2
  .line 1
    sget-object v0, Lc/g/d/b;->e:Lc/g/d/b;
    return-object v0
.end method

.method j(IIII)Landroidx/core/view/d0;
  .registers 5
  .line 1
    sget-object p1, Landroidx/core/view/d0$l;->b:Landroidx/core/view/d0;
    return-object p1
.end method

.method k()Z
  .registers 2
    const/4 v0, 0
    return v0
.end method

.method l()Z
  .registers 2
    const/4 v0, 0
    return v0
.end method

.method public m([Lc/g/d/b;)V
  .registers 2
    return-void
.end method

.method n(Lc/g/d/b;)V
  .registers 2
    return-void
.end method

.method o(Landroidx/core/view/d0;)V
  .registers 2
    return-void
.end method

.method public p(Lc/g/d/b;)V
  .registers 2
    return-void
.end method
