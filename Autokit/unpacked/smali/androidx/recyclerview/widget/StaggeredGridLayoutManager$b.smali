.class Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = "b"
.end annotation

.field a:I

.field b:I

.field c:Z

.field d:Z

.field e:Z

.field f:[I

.field final synthetic g:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

.method constructor <init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->g:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c()V
    return-void
.end method

.method a()V
  .registers 2
  .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c:Z
    if-eqz v0, :L0
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->g:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/i;->i()I
    move-result v0
    goto :L1
  :L0
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->g:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
  .line 2
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/i;->m()I
    move-result v0
  :L1
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:I
    return-void
.end method

.method b(I)V
  .registers 3
  .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c:Z
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->g:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/i;->i()I
    move-result v0
    sub-int/2addr v0, p1
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:I
    goto :L1
  :L0
  .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->g:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/i;->m()I
    move-result v0
    add-int/2addr v0, p1
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:I
  :L1
    return-void
.end method

.method c()V
  .registers 3
    const/4 v0, -1
  .line 1
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:I
    const/high16 v1, -32768
  .line 2
    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:I
    const/4 v1, 0
  .line 3
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c:Z
  .line 4
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->d:Z
  .line 5
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->e:Z
  .line 6
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->f:[I
    if-eqz v1, :L0
  .line 7
    invoke-static { v1, v0 }, Ljava/util/Arrays;->fill([II)V
  :L0
    return-void
.end method

.method d([Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;)V
  .registers 7
  .line 1
    array-length v0, p1
  .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->f:[I
    if-eqz v1, :L0
    array-length v1, v1
    if-ge v1, v0, :L1
  :L0
  .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->g:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
    array-length v1, v1
    new-array v1, v1, [I
    iput-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->f:[I
  :L1
    const/4 v1, 0
  :L2
    if-ge v1, v0, :L3
  .line 4
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->f:[I
    aget-object v3, p1, v1
    const/high16 v4, -32768
    invoke-virtual { v3, v4 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->p(I)I
    move-result v3
    aput v3, v2, v1
    add-int/lit8 v1, v1, 1
    goto :L2
  :L3
    return-void
.end method
