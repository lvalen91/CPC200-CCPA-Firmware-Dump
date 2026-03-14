.class Landroidx/recyclerview/widget/f;
.super Ljava/lang/Object;
.source "SourceFile"

.field a:Z

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field h:Z

.field i:Z

.method constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 1
  .line 2
    iput-boolean v0, p0, Landroidx/recyclerview/widget/f;->a:Z
    const/4 v0, 0
  .line 3
    iput v0, p0, Landroidx/recyclerview/widget/f;->f:I
  .line 4
    iput v0, p0, Landroidx/recyclerview/widget/f;->g:I
    return-void
.end method

.method a(Landroidx/recyclerview/widget/RecyclerView$z;)Z
  .registers 3
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/f;->c:I
    if-ltz v0, :L0
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$z;->b()I
    move-result p1
    if-ge v0, p1, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    return p1
.end method

.method b(Landroidx/recyclerview/widget/RecyclerView$u;)Landroid/view/View;
  .registers 4
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/f;->c:I
    invoke-virtual { p1, v0 }, Landroidx/recyclerview/widget/RecyclerView$u;->o(I)Landroid/view/View;
    move-result-object p1
  .line 2
    iget v0, p0, Landroidx/recyclerview/widget/f;->c:I
    iget v1, p0, Landroidx/recyclerview/widget/f;->d:I
    add-int/2addr v0, v1
    iput v0, p0, Landroidx/recyclerview/widget/f;->c:I
    return-object p1
.end method

.method public toString()Ljava/lang/String;
  .registers 3
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "LayoutState{mAvailable="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Landroidx/recyclerview/widget/f;->b:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, ", mCurrentPosition="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Landroidx/recyclerview/widget/f;->c:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, ", mItemDirection="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Landroidx/recyclerview/widget/f;->d:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, ", mLayoutDirection="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Landroidx/recyclerview/widget/f;->e:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, ", mStartLine="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Landroidx/recyclerview/widget/f;->f:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, ", mEndLine="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Landroidx/recyclerview/widget/f;->g:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const/16 v1, 125
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method
