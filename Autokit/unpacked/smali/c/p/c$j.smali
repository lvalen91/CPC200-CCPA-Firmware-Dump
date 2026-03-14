.class Lc/p/c$j;
.super Lc/p/n;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lc/p/c;->m(Landroid/view/ViewGroup;Lc/p/s;Lc/p/s;)Landroid/animation/Animator;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field a:Z

.field final synthetic b:Landroid/view/ViewGroup;

.method constructor <init>(Lc/p/c;Landroid/view/ViewGroup;)V
  .registers 3
  .line 1
    iput-object p2, p0, Lc/p/c$j;->b:Landroid/view/ViewGroup;
    invoke-direct { p0 }, Lc/p/n;-><init>()V
    const/4 p1, 0
  .line 2
    iput-boolean p1, p0, Lc/p/c$j;->a:Z
    return-void
.end method

.method public a(Lc/p/m;)V
  .registers 3
  .line 1
    iget-object p1, p0, Lc/p/c$j;->b:Landroid/view/ViewGroup;
    const/4 v0, 0
    invoke-static { p1, v0 }, Lc/p/x;->c(Landroid/view/ViewGroup;Z)V
    return-void
.end method

.method public b(Lc/p/m;)V
  .registers 3
  .line 1
    iget-object p1, p0, Lc/p/c$j;->b:Landroid/view/ViewGroup;
    const/4 v0, 1
    invoke-static { p1, v0 }, Lc/p/x;->c(Landroid/view/ViewGroup;Z)V
    return-void
.end method

.method public d(Lc/p/m;)V
  .registers 3
  .line 1
    iget-object p1, p0, Lc/p/c$j;->b:Landroid/view/ViewGroup;
    const/4 v0, 0
    invoke-static { p1, v0 }, Lc/p/x;->c(Landroid/view/ViewGroup;Z)V
    const/4 p1, 1
  .line 2
    iput-boolean p1, p0, Lc/p/c$j;->a:Z
    return-void
.end method

.method public e(Lc/p/m;)V
  .registers 4
  .line 1
    iget-boolean v0, p0, Lc/p/c$j;->a:Z
    if-nez v0, :L0
  .line 2
    iget-object v0, p0, Lc/p/c$j;->b:Landroid/view/ViewGroup;
    const/4 v1, 0
    invoke-static { v0, v1 }, Lc/p/x;->c(Landroid/view/ViewGroup;Z)V
  :L0
  .line 3
    invoke-virtual { p1, p0 }, Lc/p/m;->O(Lc/p/m$f;)Lc/p/m;
    return-void
.end method
