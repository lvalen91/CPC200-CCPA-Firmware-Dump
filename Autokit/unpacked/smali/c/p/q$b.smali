.class Lc/p/q$b;
.super Lc/p/n;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lc/p/q;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = "b"
.end annotation

.field a:Lc/p/q;

.method constructor <init>(Lc/p/q;)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Lc/p/n;-><init>()V
  .line 2
    iput-object p1, p0, Lc/p/q$b;->a:Lc/p/q;
    return-void
.end method

.method public c(Lc/p/m;)V
  .registers 3
  .line 1
    iget-object p1, p0, Lc/p/q$b;->a:Lc/p/q;
    iget-boolean v0, p1, Lc/p/q;->N:Z
    if-nez v0, :L0
  .line 2
    invoke-virtual { p1 }, Lc/p/m;->Z()V
  .line 3
    iget-object p1, p0, Lc/p/q$b;->a:Lc/p/q;
    const/4 v0, 1
    iput-boolean v0, p1, Lc/p/q;->N:Z
  :L0
    return-void
.end method

.method public e(Lc/p/m;)V
  .registers 4
  .line 1
    iget-object v0, p0, Lc/p/q$b;->a:Lc/p/q;
    iget v1, v0, Lc/p/q;->M:I
    add-int/lit8 v1, v1, -1
    iput v1, v0, Lc/p/q;->M:I
    if-nez v1, :L0
    const/4 v1, 0
  .line 2
    iput-boolean v1, v0, Lc/p/q;->N:Z
  .line 3
    invoke-virtual { v0 }, Lc/p/m;->o()V
  :L0
  .line 4
    invoke-virtual { p1, p0 }, Lc/p/m;->O(Lc/p/m$f;)Lc/p/m;
    return-void
.end method
