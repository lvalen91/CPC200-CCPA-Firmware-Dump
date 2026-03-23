.class Landroidx/recyclerview/widget/o$a;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/recyclerview/widget/o;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = "a"
.end annotation

.field a:I

.field b:I

.field c:I

.field d:I

.field e:I

.method constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 0
  .line 2
    iput v0, p0, Landroidx/recyclerview/widget/o$a;->a:I
    return-void
.end method

.method a(I)V
  .registers 3
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/o$a;->a:I
    or-int/2addr p1, v0
    iput p1, p0, Landroidx/recyclerview/widget/o$a;->a:I
    return-void
.end method

.method b()Z
  .registers 5
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/o$a;->a:I
    and-int/lit8 v1, v0, 7
    const/4 v2, 0
    if-eqz v1, :L0
  .line 2
    iget v1, p0, Landroidx/recyclerview/widget/o$a;->d:I
    iget v3, p0, Landroidx/recyclerview/widget/o$a;->b:I
    invoke-virtual { p0, v1, v3 }, Landroidx/recyclerview/widget/o$a;->c(II)I
    move-result v1
    shl-int/2addr v1, v2
    and-int/2addr v0, v1
    if-nez v0, :L0
    return v2
  :L0
  .line 3
    iget v0, p0, Landroidx/recyclerview/widget/o$a;->a:I
    and-int/lit8 v1, v0, 112
    if-eqz v1, :L1
  .line 4
    iget v1, p0, Landroidx/recyclerview/widget/o$a;->d:I
    iget v3, p0, Landroidx/recyclerview/widget/o$a;->c:I
    invoke-virtual { p0, v1, v3 }, Landroidx/recyclerview/widget/o$a;->c(II)I
    move-result v1
    shl-int/lit8 v1, v1, 4
    and-int/2addr v0, v1
    if-nez v0, :L1
    return v2
  :L1
  .line 5
    iget v0, p0, Landroidx/recyclerview/widget/o$a;->a:I
    and-int/lit16 v1, v0, 1792
    if-eqz v1, :L2
  .line 6
    iget v1, p0, Landroidx/recyclerview/widget/o$a;->e:I
    iget v3, p0, Landroidx/recyclerview/widget/o$a;->b:I
    invoke-virtual { p0, v1, v3 }, Landroidx/recyclerview/widget/o$a;->c(II)I
    move-result v1
    shl-int/lit8 v1, v1, 8
    and-int/2addr v0, v1
    if-nez v0, :L2
    return v2
  :L2
  .line 7
    iget v0, p0, Landroidx/recyclerview/widget/o$a;->a:I
    and-int/lit16 v1, v0, 28672
    if-eqz v1, :L3
  .line 8
    iget v1, p0, Landroidx/recyclerview/widget/o$a;->e:I
    iget v3, p0, Landroidx/recyclerview/widget/o$a;->c:I
    invoke-virtual { p0, v1, v3 }, Landroidx/recyclerview/widget/o$a;->c(II)I
    move-result v1
    shl-int/lit8 v1, v1, 12
    and-int/2addr v0, v1
    if-nez v0, :L3
    return v2
  :L3
    const/4 v0, 1
    return v0
.end method

.method c(II)I
  .registers 3
    if-le p1, p2, :L0
    const/4 p1, 1
    return p1
  :L0
    if-ne p1, p2, :L1
    const/4 p1, 2
    return p1
  :L1
    const/4 p1, 4
    return p1
.end method

.method d()V
  .registers 2
    const/4 v0, 0
  .line 1
    iput v0, p0, Landroidx/recyclerview/widget/o$a;->a:I
    return-void
.end method

.method e(IIII)V
  .registers 5
  .line 1
    iput p1, p0, Landroidx/recyclerview/widget/o$a;->b:I
  .line 2
    iput p2, p0, Landroidx/recyclerview/widget/o$a;->c:I
  .line 3
    iput p3, p0, Landroidx/recyclerview/widget/o$a;->d:I
  .line 4
    iput p4, p0, Landroidx/recyclerview/widget/o$a;->e:I
    return-void
.end method
