.class final Landroidx/recyclerview/widget/e$a;
.super Ljava/lang/Object;
.implements Ljava/util/Comparator;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/recyclerview/widget/e;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = null
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "Ljava/lang/Object;",
    "Ljava/util/Comparator<",
    "Landroidx/recyclerview/widget/e$c;",
    ">;"
  }
.end annotation

.method constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/e$c;Landroidx/recyclerview/widget/e$c;)I
  .registers 8
  .line 1
    iget-object v0, p1, Landroidx/recyclerview/widget/e$c;->d:Landroidx/recyclerview/widget/RecyclerView;
    const/4 v1, 0
    const/4 v2, 1
    if-nez v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    iget-object v3, p2, Landroidx/recyclerview/widget/e$c;->d:Landroidx/recyclerview/widget/RecyclerView;
    if-nez v3, :L2
    const/4 v3, 1
    goto :L3
  :L2
    const/4 v3, 0
  :L3
    const/4 v4, -1
    if-eq v0, v3, :L6
  .line 2
    iget-object p1, p1, Landroidx/recyclerview/widget/e$c;->d:Landroidx/recyclerview/widget/RecyclerView;
    if-nez p1, :L4
    goto :L5
  :L4
    const/4 v2, -1
  :L5
    return v2
  :L6
  .line 3
    iget-boolean v0, p1, Landroidx/recyclerview/widget/e$c;->a:Z
    iget-boolean v3, p2, Landroidx/recyclerview/widget/e$c;->a:Z
    if-eq v0, v3, :L8
    if-eqz v0, :L7
    const/4 v2, -1
  :L7
    return v2
  :L8
  .line 4
    iget v0, p2, Landroidx/recyclerview/widget/e$c;->b:I
    iget v2, p1, Landroidx/recyclerview/widget/e$c;->b:I
    sub-int/2addr v0, v2
    if-eqz v0, :L9
    return v0
  :L9
  .line 5
    iget p1, p1, Landroidx/recyclerview/widget/e$c;->c:I
    iget p2, p2, Landroidx/recyclerview/widget/e$c;->c:I
    sub-int/2addr p1, p2
    if-eqz p1, :L10
    return p1
  :L10
    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
  .registers 3
  .line 1
    check-cast p1, Landroidx/recyclerview/widget/e$c;
    check-cast p2, Landroidx/recyclerview/widget/e$c;
    invoke-virtual { p0, p1, p2 }, Landroidx/recyclerview/widget/e$a;->a(Landroidx/recyclerview/widget/e$c;Landroidx/recyclerview/widget/e$c;)I
    move-result p1
    return p1
.end method
