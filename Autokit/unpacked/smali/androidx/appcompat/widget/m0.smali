.class Landroidx/appcompat/widget/m0;
.super Ljava/lang/Object;
.source "SourceFile"

.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:Z

.method constructor <init>()V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 0
  .line 2
    iput v0, p0, Landroidx/appcompat/widget/m0;->a:I
  .line 3
    iput v0, p0, Landroidx/appcompat/widget/m0;->b:I
    const/high16 v1, -32768
  .line 4
    iput v1, p0, Landroidx/appcompat/widget/m0;->c:I
  .line 5
    iput v1, p0, Landroidx/appcompat/widget/m0;->d:I
  .line 6
    iput v0, p0, Landroidx/appcompat/widget/m0;->e:I
  .line 7
    iput v0, p0, Landroidx/appcompat/widget/m0;->f:I
  .line 8
    iput-boolean v0, p0, Landroidx/appcompat/widget/m0;->g:Z
  .line 9
    iput-boolean v0, p0, Landroidx/appcompat/widget/m0;->h:Z
    return-void
.end method

.method public a()I
  .registers 2
  .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/m0;->g:Z
    if-eqz v0, :L0
    iget v0, p0, Landroidx/appcompat/widget/m0;->a:I
    goto :L1
  :L0
    iget v0, p0, Landroidx/appcompat/widget/m0;->b:I
  :L1
    return v0
.end method

.method public b()I
  .registers 2
  .line 1
    iget v0, p0, Landroidx/appcompat/widget/m0;->a:I
    return v0
.end method

.method public c()I
  .registers 2
  .line 1
    iget v0, p0, Landroidx/appcompat/widget/m0;->b:I
    return v0
.end method

.method public d()I
  .registers 2
  .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/m0;->g:Z
    if-eqz v0, :L0
    iget v0, p0, Landroidx/appcompat/widget/m0;->b:I
    goto :L1
  :L0
    iget v0, p0, Landroidx/appcompat/widget/m0;->a:I
  :L1
    return v0
.end method

.method public e(II)V
  .registers 4
    const/4 v0, 0
  .line 1
    iput-boolean v0, p0, Landroidx/appcompat/widget/m0;->h:Z
    const/high16 v0, -32768
    if-eq p1, v0, :L0
  .line 2
    iput p1, p0, Landroidx/appcompat/widget/m0;->e:I
    iput p1, p0, Landroidx/appcompat/widget/m0;->a:I
  :L0
    if-eq p2, v0, :L1
  .line 3
    iput p2, p0, Landroidx/appcompat/widget/m0;->f:I
    iput p2, p0, Landroidx/appcompat/widget/m0;->b:I
  :L1
    return-void
.end method

.method public f(Z)V
  .registers 3
  .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/m0;->g:Z
    if-ne p1, v0, :L0
    return-void
  :L0
  .line 2
    iput-boolean p1, p0, Landroidx/appcompat/widget/m0;->g:Z
  .line 3
    iget-boolean v0, p0, Landroidx/appcompat/widget/m0;->h:Z
    if-eqz v0, :L10
    const/high16 v0, -32768
    if-eqz p1, :L5
  .line 4
    iget p1, p0, Landroidx/appcompat/widget/m0;->d:I
    if-eq p1, v0, :L1
    goto :L2
  :L1
    iget p1, p0, Landroidx/appcompat/widget/m0;->e:I
  :L2
    iput p1, p0, Landroidx/appcompat/widget/m0;->a:I
  .line 5
    iget p1, p0, Landroidx/appcompat/widget/m0;->c:I
    if-eq p1, v0, :L3
    goto :L4
  :L3
    iget p1, p0, Landroidx/appcompat/widget/m0;->f:I
  :L4
    iput p1, p0, Landroidx/appcompat/widget/m0;->b:I
    goto :L11
  :L5
  .line 6
    iget p1, p0, Landroidx/appcompat/widget/m0;->c:I
    if-eq p1, v0, :L6
    goto :L7
  :L6
    iget p1, p0, Landroidx/appcompat/widget/m0;->e:I
  :L7
    iput p1, p0, Landroidx/appcompat/widget/m0;->a:I
  .line 7
    iget p1, p0, Landroidx/appcompat/widget/m0;->d:I
    if-eq p1, v0, :L8
    goto :L9
  :L8
    iget p1, p0, Landroidx/appcompat/widget/m0;->f:I
  :L9
    iput p1, p0, Landroidx/appcompat/widget/m0;->b:I
    goto :L11
  :L10
  .line 8
    iget p1, p0, Landroidx/appcompat/widget/m0;->e:I
    iput p1, p0, Landroidx/appcompat/widget/m0;->a:I
  .line 9
    iget p1, p0, Landroidx/appcompat/widget/m0;->f:I
    iput p1, p0, Landroidx/appcompat/widget/m0;->b:I
  :L11
    return-void
.end method

.method public g(II)V
  .registers 5
  .line 1
    iput p1, p0, Landroidx/appcompat/widget/m0;->c:I
  .line 2
    iput p2, p0, Landroidx/appcompat/widget/m0;->d:I
    const/4 v0, 1
  .line 3
    iput-boolean v0, p0, Landroidx/appcompat/widget/m0;->h:Z
  .line 4
    iget-boolean v0, p0, Landroidx/appcompat/widget/m0;->g:Z
    const/high16 v1, -32768
    if-eqz v0, :L1
    if-eq p2, v1, :L0
  .line 5
    iput p2, p0, Landroidx/appcompat/widget/m0;->a:I
  :L0
    if-eq p1, v1, :L3
  .line 6
    iput p1, p0, Landroidx/appcompat/widget/m0;->b:I
    goto :L3
  :L1
    if-eq p1, v1, :L2
  .line 7
    iput p1, p0, Landroidx/appcompat/widget/m0;->a:I
  :L2
    if-eq p2, v1, :L3
  .line 8
    iput p2, p0, Landroidx/appcompat/widget/m0;->b:I
  :L3
    return-void
.end method
