.class public abstract Landroidx/recyclerview/widget/RecyclerView$y;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 1033
  name = "y"
.end annotation
.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/recyclerview/widget/RecyclerView$y$b;,
    Landroidx/recyclerview/widget/RecyclerView$y$a;
  }
.end annotation

.field private a:I

.field private b:Landroidx/recyclerview/widget/RecyclerView;

.field private c:Landroidx/recyclerview/widget/RecyclerView$n;

.field private d:Z

.field private e:Z

.field private f:Landroid/view/View;

.field private final g:Landroidx/recyclerview/widget/RecyclerView$y$a;

.field private h:Z

.method public constructor <init>()V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, -1
  .line 2
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$y;->a:I
  .line 3
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$y$a;
    const/4 v1, 0
    invoke-direct { v0, v1, v1 }, Landroidx/recyclerview/widget/RecyclerView$y$a;-><init>(II)V
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$y;->g:Landroidx/recyclerview/widget/RecyclerView$y$a;
    return-void
.end method

.method public a(I)Landroid/graphics/PointF;
  .registers 4
  .line 1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$y;->e()Landroidx/recyclerview/widget/RecyclerView$n;
    move-result-object v0
  .line 2
    instance-of v1, v0, Landroidx/recyclerview/widget/RecyclerView$y$b;
    if-eqz v1, :L0
  .line 3
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$y$b;
  .line 4
    invoke-interface { v0, p1 }, Landroidx/recyclerview/widget/RecyclerView$y$b;->a(I)Landroid/graphics/PointF;
    move-result-object p1
    return-object p1
  :L0
  .line 5
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "You should override computeScrollVectorForPosition when the LayoutManager does not implement "
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-class v0, Landroidx/recyclerview/widget/RecyclerView$y$b;
  .line 6
    invoke-virtual { v0 }, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    const/4 p1, 0
    return-object p1
.end method

.method public b(I)Landroid/view/View;
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$y;->b:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/RecyclerView$n;
    invoke-virtual { v0, p1 }, Landroidx/recyclerview/widget/RecyclerView$n;->C(I)Landroid/view/View;
    move-result-object p1
    return-object p1
.end method

.method public c()I
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$y;->b:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/RecyclerView$n;
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result v0
    return v0
.end method

.method public d(Landroid/view/View;)I
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$y;->b:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { v0, p1 }, Landroidx/recyclerview/widget/RecyclerView;->d0(Landroid/view/View;)I
    move-result p1
    return p1
.end method

.method public e()Landroidx/recyclerview/widget/RecyclerView$n;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$y;->c:Landroidx/recyclerview/widget/RecyclerView$n;
    return-object v0
.end method

.method public f()I
  .registers 2
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$y;->a:I
    return v0
.end method

.method public g()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$y;->d:Z
    return v0
.end method

.method public h()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$y;->e:Z
    return v0
.end method

.method protected i(Landroid/graphics/PointF;)V
  .registers 4
  .line 1
    iget v0, p1, Landroid/graphics/PointF;->x:F
    mul-float v0, v0, v0
    iget v1, p1, Landroid/graphics/PointF;->y:F
    mul-float v1, v1, v1
    add-float/2addr v0, v1
    float-to-double v0, v0
    invoke-static { v0, v1 }, Ljava/lang/Math;->sqrt(D)D
    move-result-wide v0
    double-to-float v0, v0
  .line 2
    iget v1, p1, Landroid/graphics/PointF;->x:F
    div-float/2addr v1, v0
    iput v1, p1, Landroid/graphics/PointF;->x:F
  .line 3
    iget v1, p1, Landroid/graphics/PointF;->y:F
    div-float/2addr v1, v0
    iput v1, p1, Landroid/graphics/PointF;->y:F
    return-void
.end method

.method j(II)V
  .registers 8
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$y;->b:Landroidx/recyclerview/widget/RecyclerView;
  .line 2
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$y;->a:I
    const/4 v2, -1
    if-eq v1, v2, :L0
    if-nez v0, :L1
  :L0
  .line 3
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$y;->r()V
  :L1
  .line 4
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$y;->d:Z
    const/4 v2, 0
    if-eqz v1, :L3
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$y;->f:Landroid/view/View;
    if-nez v1, :L3
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$y;->c:Landroidx/recyclerview/widget/RecyclerView$n;
    if-eqz v1, :L3
  .line 5
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$y;->a:I
    invoke-virtual { p0, v1 }, Landroidx/recyclerview/widget/RecyclerView$y;->a(I)Landroid/graphics/PointF;
    move-result-object v1
    if-eqz v1, :L3
  .line 6
    iget v3, v1, Landroid/graphics/PointF;->x:F
    const/4 v4, 0
    cmpl-float v3, v3, v4
    if-nez v3, :L2
    iget v3, v1, Landroid/graphics/PointF;->y:F
    cmpl-float v3, v3, v4
    if-eqz v3, :L3
  :L2
  .line 7
    iget v3, v1, Landroid/graphics/PointF;->x:F
  .line 8
    invoke-static { v3 }, Ljava/lang/Math;->signum(F)F
    move-result v3
    float-to-int v3, v3
    iget v1, v1, Landroid/graphics/PointF;->y:F
  .line 9
    invoke-static { v1 }, Ljava/lang/Math;->signum(F)F
    move-result v1
    float-to-int v1, v1
  .line 10
    invoke-virtual { v0, v3, v1, v2 }, Landroidx/recyclerview/widget/RecyclerView;->f1(II[I)V
  :L3
    const/4 v1, 0
  .line 11
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$y;->d:Z
  .line 12
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$y;->f:Landroid/view/View;
    if-eqz v1, :L5
  .line 13
    invoke-virtual { p0, v1 }, Landroidx/recyclerview/widget/RecyclerView$y;->d(Landroid/view/View;)I
    move-result v1
    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView$y;->a:I
    if-ne v1, v3, :L4
  .line 14
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$y;->f:Landroid/view/View;
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->h0:Landroidx/recyclerview/widget/RecyclerView$z;
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$y;->g:Landroidx/recyclerview/widget/RecyclerView$y$a;
    invoke-virtual { p0, v1, v2, v3 }, Landroidx/recyclerview/widget/RecyclerView$y;->o(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/RecyclerView$y$a;)V
  .line 15
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$y;->g:Landroidx/recyclerview/widget/RecyclerView$y$a;
    invoke-virtual { v1, v0 }, Landroidx/recyclerview/widget/RecyclerView$y$a;->c(Landroidx/recyclerview/widget/RecyclerView;)V
  .line 16
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$y;->r()V
    goto :L5
  :L4
  .line 17
    iput-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$y;->f:Landroid/view/View;
  :L5
  .line 18
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$y;->e:Z
    if-eqz v1, :L6
  .line 19
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->h0:Landroidx/recyclerview/widget/RecyclerView$z;
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$y;->g:Landroidx/recyclerview/widget/RecyclerView$y$a;
    invoke-virtual { p0, p1, p2, v1, v2 }, Landroidx/recyclerview/widget/RecyclerView$y;->l(IILandroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/RecyclerView$y$a;)V
  .line 20
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$y;->g:Landroidx/recyclerview/widget/RecyclerView$y$a;
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$y$a;->a()Z
    move-result p1
  .line 21
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$y;->g:Landroidx/recyclerview/widget/RecyclerView$y$a;
    invoke-virtual { p2, v0 }, Landroidx/recyclerview/widget/RecyclerView$y$a;->c(Landroidx/recyclerview/widget/RecyclerView;)V
    if-eqz p1, :L6
  .line 22
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$y;->e:Z
    if-eqz p1, :L6
    const/4 p1, 1
  .line 23
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$y;->d:Z
  .line 24
    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView;->e0:Landroidx/recyclerview/widget/RecyclerView$b0;
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$b0;->e()V
  :L6
    return-void
.end method

.method protected k(Landroid/view/View;)V
  .registers 4
  .line 1
    invoke-virtual { p0, p1 }, Landroidx/recyclerview/widget/RecyclerView$y;->d(Landroid/view/View;)I
    move-result v0
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$y;->f()I
    move-result v1
    if-ne v0, v1, :L0
  .line 2
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$y;->f:Landroid/view/View;
  :L0
    return-void
.end method

.method protected abstract l(IILandroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/RecyclerView$y$a;)V
.end method

.method protected abstract m()V
.end method

.method protected abstract n()V
.end method

.method protected abstract o(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/RecyclerView$y$a;)V
.end method

.method public p(I)V
  .registers 2
  .line 1
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$y;->a:I
    return-void
.end method

.method q(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$n;)V
  .registers 5
  .line 1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->e0:Landroidx/recyclerview/widget/RecyclerView$b0;
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView$b0;->g()V
  .line 2
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$y;->h:Z
    if-eqz v0, :L0
  .line 3
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "An instance of "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, " was started more than once. Each instance of"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 4
    invoke-virtual { p0 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, " is intended to only be used once. You should create a new instance for each use."
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L0
  .line 5
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$y;->b:Landroidx/recyclerview/widget/RecyclerView;
  .line 6
    iput-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$y;->c:Landroidx/recyclerview/widget/RecyclerView$n;
  .line 7
    iget p2, p0, Landroidx/recyclerview/widget/RecyclerView$y;->a:I
    const/4 v0, -1
    if-eq p2, v0, :L1
  .line 8
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->h0:Landroidx/recyclerview/widget/RecyclerView$z;
    iput p2, p1, Landroidx/recyclerview/widget/RecyclerView$z;->a:I
    const/4 p1, 1
  .line 9
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$y;->e:Z
  .line 10
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$y;->d:Z
  .line 11
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$y;->f()I
    move-result p2
    invoke-virtual { p0, p2 }, Landroidx/recyclerview/widget/RecyclerView$y;->b(I)Landroid/view/View;
    move-result-object p2
    iput-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$y;->f:Landroid/view/View;
  .line 12
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$y;->m()V
  .line 13
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$y;->b:Landroidx/recyclerview/widget/RecyclerView;
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView;->e0:Landroidx/recyclerview/widget/RecyclerView$b0;
    invoke-virtual { p2 }, Landroidx/recyclerview/widget/RecyclerView$b0;->e()V
  .line 14
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$y;->h:Z
    return-void
  :L1
  .line 15
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string p2, "Invalid target position"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method protected final r()V
  .registers 4
  .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$y;->e:Z
    if-nez v0, :L0
    return-void
  :L0
    const/4 v0, 0
  .line 2
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$y;->e:Z
  .line 3
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$y;->n()V
  .line 4
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$y;->b:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->h0:Landroidx/recyclerview/widget/RecyclerView$z;
    const/4 v2, -1
    iput v2, v1, Landroidx/recyclerview/widget/RecyclerView$z;->a:I
    const/4 v1, 0
  .line 5
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$y;->f:Landroid/view/View;
  .line 6
    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView$y;->a:I
  .line 7
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$y;->d:Z
  .line 8
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$y;->c:Landroidx/recyclerview/widget/RecyclerView$n;
    invoke-virtual { v0, p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->f1(Landroidx/recyclerview/widget/RecyclerView$y;)V
  .line 9
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$y;->c:Landroidx/recyclerview/widget/RecyclerView$n;
  .line 10
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$y;->b:Landroidx/recyclerview/widget/RecyclerView;
    return-void
.end method
