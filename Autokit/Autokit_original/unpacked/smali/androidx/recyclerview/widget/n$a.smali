.class Landroidx/recyclerview/widget/n$a;
.super Landroidx/recyclerview/widget/RecyclerView$s;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/recyclerview/widget/n;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field a:Z

.field final synthetic b:Landroidx/recyclerview/widget/n;

.method constructor <init>(Landroidx/recyclerview/widget/n;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/n$a;->b:Landroidx/recyclerview/widget/n;
    invoke-direct { p0 }, Landroidx/recyclerview/widget/RecyclerView$s;-><init>()V
    const/4 p1, 0
  .line 2
    iput-boolean p1, p0, Landroidx/recyclerview/widget/n$a;->a:Z
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;I)V
  .registers 3
  .line 1
    invoke-super { p0, p1, p2 }, Landroidx/recyclerview/widget/RecyclerView$s;->a(Landroidx/recyclerview/widget/RecyclerView;I)V
    if-nez p2, :L0
  .line 2
    iget-boolean p1, p0, Landroidx/recyclerview/widget/n$a;->a:Z
    if-eqz p1, :L0
    const/4 p1, 0
  .line 3
    iput-boolean p1, p0, Landroidx/recyclerview/widget/n$a;->a:Z
  .line 4
    iget-object p1, p0, Landroidx/recyclerview/widget/n$a;->b:Landroidx/recyclerview/widget/n;
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/n;->k()V
  :L0
    return-void
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView;II)V
  .registers 4
    if-nez p2, :L0
    if-eqz p3, :L1
  :L0
    const/4 p1, 1
  .line 1
    iput-boolean p1, p0, Landroidx/recyclerview/widget/n$a;->a:Z
  :L1
    return-void
.end method
