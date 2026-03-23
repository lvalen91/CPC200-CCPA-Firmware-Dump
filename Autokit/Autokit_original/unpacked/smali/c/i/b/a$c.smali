.class Lc/i/b/a$c;
.super Landroidx/core/view/e0/d;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lc/i/b/a;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 2
  name = "c"
.end annotation

.field final synthetic b:Lc/i/b/a;

.method constructor <init>(Lc/i/b/a;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lc/i/b/a$c;->b:Lc/i/b/a;
    invoke-direct { p0 }, Landroidx/core/view/e0/d;-><init>()V
    return-void
.end method

.method public b(I)Landroidx/core/view/e0/c;
  .registers 3
  .line 1
    iget-object v0, p0, Lc/i/b/a$c;->b:Lc/i/b/a;
  .line 2
    invoke-virtual { v0, p1 }, Lc/i/b/a;->H(I)Landroidx/core/view/e0/c;
    move-result-object p1
  .line 3
    invoke-static { p1 }, Landroidx/core/view/e0/c;->M(Landroidx/core/view/e0/c;)Landroidx/core/view/e0/c;
    move-result-object p1
    return-object p1
.end method

.method public d(I)Landroidx/core/view/e0/c;
  .registers 3
    const/4 v0, 2
    if-ne p1, v0, :L0
  .line 1
    iget-object p1, p0, Lc/i/b/a$c;->b:Lc/i/b/a;
    iget p1, p1, Lc/i/b/a;->k:I
    goto :L1
  :L0
    iget-object p1, p0, Lc/i/b/a$c;->b:Lc/i/b/a;
    iget p1, p1, Lc/i/b/a;->l:I
  :L1
    const/high16 v0, -32768
    if-ne p1, v0, :L2
    const/4 p1, 0
    return-object p1
  :L2
  .line 2
    invoke-virtual { p0, p1 }, Lc/i/b/a$c;->b(I)Landroidx/core/view/e0/c;
    move-result-object p1
    return-object p1
.end method

.method public f(IILandroid/os/Bundle;)Z
  .registers 5
  .line 1
    iget-object v0, p0, Lc/i/b/a$c;->b:Lc/i/b/a;
    invoke-virtual { v0, p1, p2, p3 }, Lc/i/b/a;->P(IILandroid/os/Bundle;)Z
    move-result p1
    return p1
.end method
