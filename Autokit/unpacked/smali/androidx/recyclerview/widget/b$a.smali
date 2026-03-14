.class Landroidx/recyclerview/widget/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/recyclerview/widget/b;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = "a"
.end annotation

.field a:J

.field b:Landroidx/recyclerview/widget/b$a;

.method constructor <init>()V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const-wide/16 v0, 0
  .line 2
    iput-wide v0, p0, Landroidx/recyclerview/widget/b$a;->a:J
    return-void
.end method

.method private c()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/b$a;->b:Landroidx/recyclerview/widget/b$a;
    if-nez v0, :L0
  .line 2
    new-instance v0, Landroidx/recyclerview/widget/b$a;
    invoke-direct { v0 }, Landroidx/recyclerview/widget/b$a;-><init>()V
    iput-object v0, p0, Landroidx/recyclerview/widget/b$a;->b:Landroidx/recyclerview/widget/b$a;
  :L0
    return-void
.end method

.method a(I)V
  .registers 8
    const/16 v0, 64
    if-lt p1, v0, :L0
  .line 1
    iget-object v1, p0, Landroidx/recyclerview/widget/b$a;->b:Landroidx/recyclerview/widget/b$a;
    if-eqz v1, :L1
    sub-int/2addr p1, v0
  .line 2
    invoke-virtual { v1, p1 }, Landroidx/recyclerview/widget/b$a;->a(I)V
    goto :L1
  :L0
  .line 3
    iget-wide v0, p0, Landroidx/recyclerview/widget/b$a;->a:J
    const-wide/16 v2, 1
    shl-long/2addr v2, p1
    const-wide/16 v4, -1
    xor-long/2addr v2, v4
    and-long/2addr v0, v2
    iput-wide v0, p0, Landroidx/recyclerview/widget/b$a;->a:J
  :L1
    return-void
.end method

.method b(I)I
  .registers 8
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/b$a;->b:Landroidx/recyclerview/widget/b$a;
    const/16 v1, 64
    const-wide/16 v2, 1
    if-nez v0, :L1
    if-lt p1, v1, :L0
  .line 2
    iget-wide v0, p0, Landroidx/recyclerview/widget/b$a;->a:J
    invoke-static { v0, v1 }, Ljava/lang/Long;->bitCount(J)I
    move-result p1
    return p1
  :L0
  .line 3
    iget-wide v0, p0, Landroidx/recyclerview/widget/b$a;->a:J
    shl-long v4, v2, p1
    sub-long/2addr v4, v2
    and-long/2addr v0, v4
    invoke-static { v0, v1 }, Ljava/lang/Long;->bitCount(J)I
    move-result p1
    return p1
  :L1
    if-ge p1, v1, :L2
  .line 4
    iget-wide v0, p0, Landroidx/recyclerview/widget/b$a;->a:J
    shl-long v4, v2, p1
    sub-long/2addr v4, v2
    and-long/2addr v0, v4
    invoke-static { v0, v1 }, Ljava/lang/Long;->bitCount(J)I
    move-result p1
    return p1
  :L2
    sub-int/2addr p1, v1
  .line 5
    invoke-virtual { v0, p1 }, Landroidx/recyclerview/widget/b$a;->b(I)I
    move-result p1
    iget-wide v0, p0, Landroidx/recyclerview/widget/b$a;->a:J
    invoke-static { v0, v1 }, Ljava/lang/Long;->bitCount(J)I
    move-result v0
    add-int/2addr p1, v0
    return p1
.end method

.method d(I)Z
  .registers 6
    const/16 v0, 64
    if-lt p1, v0, :L0
  .line 1
    invoke-direct { p0 }, Landroidx/recyclerview/widget/b$a;->c()V
  .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/b$a;->b:Landroidx/recyclerview/widget/b$a;
    sub-int/2addr p1, v0
    invoke-virtual { v1, p1 }, Landroidx/recyclerview/widget/b$a;->d(I)Z
    move-result p1
    return p1
  :L0
  .line 3
    iget-wide v0, p0, Landroidx/recyclerview/widget/b$a;->a:J
    const-wide/16 v2, 1
    shl-long/2addr v2, p1
    and-long/2addr v0, v2
    const-wide/16 v2, 0
    cmp-long p1, v0, v2
    if-eqz p1, :L1
    const/4 p1, 1
    goto :L2
  :L1
    const/4 p1, 0
  :L2
    return p1
.end method

.method e(IZ)V
  .registers 15
    const/16 v0, 64
    if-lt p1, v0, :L0
  .line 1
    invoke-direct { p0 }, Landroidx/recyclerview/widget/b$a;->c()V
  .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/b$a;->b:Landroidx/recyclerview/widget/b$a;
    sub-int/2addr p1, v0
    invoke-virtual { v1, p1, p2 }, Landroidx/recyclerview/widget/b$a;->e(IZ)V
    goto :L6
  :L0
  .line 3
    iget-wide v0, p0, Landroidx/recyclerview/widget/b$a;->a:J
    const-wide/high16 v2, -32768
    and-long/2addr v0, v2
    const-wide/16 v2, 0
    const/4 v4, 1
    const/4 v5, 0
    cmp-long v6, v0, v2
    if-eqz v6, :L1
    const/4 v0, 1
    goto :L2
  :L1
    const/4 v0, 0
  :L2
    const-wide/16 v1, 1
    shl-long v6, v1, p1
    sub-long/2addr v6, v1
  .line 4
    iget-wide v1, p0, Landroidx/recyclerview/widget/b$a;->a:J
    and-long v8, v1, v6
    const-wide/16 v10, -1
    xor-long/2addr v6, v10
    and-long/2addr v1, v6
    shl-long/2addr v1, v4
    or-long/2addr v1, v8
  .line 5
    iput-wide v1, p0, Landroidx/recyclerview/widget/b$a;->a:J
    if-eqz p2, :L3
  .line 6
    invoke-virtual { p0, p1 }, Landroidx/recyclerview/widget/b$a;->h(I)V
    goto :L4
  :L3
  .line 7
    invoke-virtual { p0, p1 }, Landroidx/recyclerview/widget/b$a;->a(I)V
  :L4
    if-nez v0, :L5
  .line 8
    iget-object p1, p0, Landroidx/recyclerview/widget/b$a;->b:Landroidx/recyclerview/widget/b$a;
    if-eqz p1, :L6
  :L5
  .line 9
    invoke-direct { p0 }, Landroidx/recyclerview/widget/b$a;->c()V
  .line 10
    iget-object p1, p0, Landroidx/recyclerview/widget/b$a;->b:Landroidx/recyclerview/widget/b$a;
    invoke-virtual { p1, v5, v0 }, Landroidx/recyclerview/widget/b$a;->e(IZ)V
  :L6
    return-void
.end method

.method f(I)Z
  .registers 15
    const/16 v0, 64
    if-lt p1, v0, :L0
  .line 1
    invoke-direct { p0 }, Landroidx/recyclerview/widget/b$a;->c()V
  .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/b$a;->b:Landroidx/recyclerview/widget/b$a;
    sub-int/2addr p1, v0
    invoke-virtual { v1, p1 }, Landroidx/recyclerview/widget/b$a;->f(I)Z
    move-result p1
    return p1
  :L0
    const-wide/16 v0, 1
    shl-long v2, v0, p1
  .line 3
    iget-wide v4, p0, Landroidx/recyclerview/widget/b$a;->a:J
    and-long/2addr v4, v2
    const-wide/16 v6, 0
    const/4 p1, 1
    const/4 v8, 0
    cmp-long v9, v4, v6
    if-eqz v9, :L1
    const/4 v4, 1
    goto :L2
  :L1
    const/4 v4, 0
  :L2
  .line 4
    iget-wide v5, p0, Landroidx/recyclerview/widget/b$a;->a:J
    const-wide/16 v9, -1
    xor-long v11, v2, v9
    and-long/2addr v5, v11
    iput-wide v5, p0, Landroidx/recyclerview/widget/b$a;->a:J
    sub-long/2addr v2, v0
    and-long v0, v5, v2
    xor-long/2addr v2, v9
    and-long/2addr v2, v5
  .line 5
    invoke-static { v2, v3, p1 }, Ljava/lang/Long;->rotateRight(JI)J
    move-result-wide v2
    or-long/2addr v0, v2
  .line 6
    iput-wide v0, p0, Landroidx/recyclerview/widget/b$a;->a:J
  .line 7
    iget-object p1, p0, Landroidx/recyclerview/widget/b$a;->b:Landroidx/recyclerview/widget/b$a;
    if-eqz p1, :L4
  .line 8
    invoke-virtual { p1, v8 }, Landroidx/recyclerview/widget/b$a;->d(I)Z
    move-result p1
    if-eqz p1, :L3
    const/16 p1, 63
  .line 9
    invoke-virtual { p0, p1 }, Landroidx/recyclerview/widget/b$a;->h(I)V
  :L3
  .line 10
    iget-object p1, p0, Landroidx/recyclerview/widget/b$a;->b:Landroidx/recyclerview/widget/b$a;
    invoke-virtual { p1, v8 }, Landroidx/recyclerview/widget/b$a;->f(I)Z
  :L4
    return v4
.end method

.method g()V
  .registers 3
    const-wide/16 v0, 0
  .line 1
    iput-wide v0, p0, Landroidx/recyclerview/widget/b$a;->a:J
  .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/b$a;->b:Landroidx/recyclerview/widget/b$a;
    if-eqz v0, :L0
  .line 3
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/b$a;->g()V
  :L0
    return-void
.end method

.method h(I)V
  .registers 6
    const/16 v0, 64
    if-lt p1, v0, :L0
  .line 1
    invoke-direct { p0 }, Landroidx/recyclerview/widget/b$a;->c()V
  .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/b$a;->b:Landroidx/recyclerview/widget/b$a;
    sub-int/2addr p1, v0
    invoke-virtual { v1, p1 }, Landroidx/recyclerview/widget/b$a;->h(I)V
    goto :L1
  :L0
  .line 3
    iget-wide v0, p0, Landroidx/recyclerview/widget/b$a;->a:J
    const-wide/16 v2, 1
    shl-long/2addr v2, p1
    or-long/2addr v0, v2
    iput-wide v0, p0, Landroidx/recyclerview/widget/b$a;->a:J
  :L1
    return-void
.end method

.method public toString()Ljava/lang/String;
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/b$a;->b:Landroidx/recyclerview/widget/b$a;
    if-nez v0, :L0
    iget-wide v0, p0, Landroidx/recyclerview/widget/b$a;->a:J
    invoke-static { v0, v1 }, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;
    move-result-object v0
    goto :L1
  :L0
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    iget-object v1, p0, Landroidx/recyclerview/widget/b$a;->b:Landroidx/recyclerview/widget/b$a;
  .line 2
    invoke-virtual { v1 }, Landroidx/recyclerview/widget/b$a;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, "xx"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-wide v1, p0, Landroidx/recyclerview/widget/b$a;->a:J
    invoke-static { v1, v2 }, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
  :L1
    return-object v0
.end method
