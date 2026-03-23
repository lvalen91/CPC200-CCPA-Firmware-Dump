.class Landroidx/recyclerview/widget/o;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/recyclerview/widget/o$b;,
    Landroidx/recyclerview/widget/o$a;
  }
.end annotation

.field final a:Landroidx/recyclerview/widget/o$b;

.field b:Landroidx/recyclerview/widget/o$a;

.method constructor <init>(Landroidx/recyclerview/widget/o$b;)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Landroidx/recyclerview/widget/o;->a:Landroidx/recyclerview/widget/o$b;
  .line 3
    new-instance p1, Landroidx/recyclerview/widget/o$a;
    invoke-direct { p1 }, Landroidx/recyclerview/widget/o$a;-><init>()V
    iput-object p1, p0, Landroidx/recyclerview/widget/o;->b:Landroidx/recyclerview/widget/o$a;
    return-void
.end method

.method a(IIII)Landroid/view/View;
  .registers 13
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/o;->a:Landroidx/recyclerview/widget/o$b;
    invoke-interface { v0 }, Landroidx/recyclerview/widget/o$b;->c()I
    move-result v0
  .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/o;->a:Landroidx/recyclerview/widget/o$b;
    invoke-interface { v1 }, Landroidx/recyclerview/widget/o$b;->b()I
    move-result v1
    if-le p2, p1, :L0
    const/4 v2, 1
    goto :L1
  :L0
    const/4 v2, -1
  :L1
    const/4 v3, 0
  :L2
    if-eq p1, p2, :L5
  .line 3
    iget-object v4, p0, Landroidx/recyclerview/widget/o;->a:Landroidx/recyclerview/widget/o$b;
    invoke-interface { v4, p1 }, Landroidx/recyclerview/widget/o$b;->a(I)Landroid/view/View;
    move-result-object v4
  .line 4
    iget-object v5, p0, Landroidx/recyclerview/widget/o;->a:Landroidx/recyclerview/widget/o$b;
    invoke-interface { v5, v4 }, Landroidx/recyclerview/widget/o$b;->e(Landroid/view/View;)I
    move-result v5
  .line 5
    iget-object v6, p0, Landroidx/recyclerview/widget/o;->a:Landroidx/recyclerview/widget/o$b;
    invoke-interface { v6, v4 }, Landroidx/recyclerview/widget/o$b;->d(Landroid/view/View;)I
    move-result v6
  .line 6
    iget-object v7, p0, Landroidx/recyclerview/widget/o;->b:Landroidx/recyclerview/widget/o$a;
    invoke-virtual { v7, v0, v1, v5, v6 }, Landroidx/recyclerview/widget/o$a;->e(IIII)V
    if-eqz p3, :L3
  .line 7
    iget-object v5, p0, Landroidx/recyclerview/widget/o;->b:Landroidx/recyclerview/widget/o$a;
    invoke-virtual { v5 }, Landroidx/recyclerview/widget/o$a;->d()V
  .line 8
    iget-object v5, p0, Landroidx/recyclerview/widget/o;->b:Landroidx/recyclerview/widget/o$a;
    invoke-virtual { v5, p3 }, Landroidx/recyclerview/widget/o$a;->a(I)V
  .line 9
    iget-object v5, p0, Landroidx/recyclerview/widget/o;->b:Landroidx/recyclerview/widget/o$a;
    invoke-virtual { v5 }, Landroidx/recyclerview/widget/o$a;->b()Z
    move-result v5
    if-eqz v5, :L3
    return-object v4
  :L3
    if-eqz p4, :L4
  .line 10
    iget-object v5, p0, Landroidx/recyclerview/widget/o;->b:Landroidx/recyclerview/widget/o$a;
    invoke-virtual { v5 }, Landroidx/recyclerview/widget/o$a;->d()V
  .line 11
    iget-object v5, p0, Landroidx/recyclerview/widget/o;->b:Landroidx/recyclerview/widget/o$a;
    invoke-virtual { v5, p4 }, Landroidx/recyclerview/widget/o$a;->a(I)V
  .line 12
    iget-object v5, p0, Landroidx/recyclerview/widget/o;->b:Landroidx/recyclerview/widget/o$a;
    invoke-virtual { v5 }, Landroidx/recyclerview/widget/o$a;->b()Z
    move-result v5
    if-eqz v5, :L4
    move-object v3, v4
  :L4
    add-int/2addr p1, v2
    goto :L2
  :L5
    return-object v3
.end method

.method b(Landroid/view/View;I)Z
  .registers 8
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/o;->b:Landroidx/recyclerview/widget/o$a;
    iget-object v1, p0, Landroidx/recyclerview/widget/o;->a:Landroidx/recyclerview/widget/o$b;
    invoke-interface { v1 }, Landroidx/recyclerview/widget/o$b;->c()I
    move-result v1
    iget-object v2, p0, Landroidx/recyclerview/widget/o;->a:Landroidx/recyclerview/widget/o$b;
    invoke-interface { v2 }, Landroidx/recyclerview/widget/o$b;->b()I
    move-result v2
    iget-object v3, p0, Landroidx/recyclerview/widget/o;->a:Landroidx/recyclerview/widget/o$b;
  .line 2
    invoke-interface { v3, p1 }, Landroidx/recyclerview/widget/o$b;->e(Landroid/view/View;)I
    move-result v3
    iget-object v4, p0, Landroidx/recyclerview/widget/o;->a:Landroidx/recyclerview/widget/o$b;
    invoke-interface { v4, p1 }, Landroidx/recyclerview/widget/o$b;->d(Landroid/view/View;)I
    move-result p1
  .line 3
    invoke-virtual { v0, v1, v2, v3, p1 }, Landroidx/recyclerview/widget/o$a;->e(IIII)V
    if-eqz p2, :L0
  .line 4
    iget-object p1, p0, Landroidx/recyclerview/widget/o;->b:Landroidx/recyclerview/widget/o$a;
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/o$a;->d()V
  .line 5
    iget-object p1, p0, Landroidx/recyclerview/widget/o;->b:Landroidx/recyclerview/widget/o$a;
    invoke-virtual { p1, p2 }, Landroidx/recyclerview/widget/o$a;->a(I)V
  .line 6
    iget-object p1, p0, Landroidx/recyclerview/widget/o;->b:Landroidx/recyclerview/widget/o$a;
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/o$a;->b()Z
    move-result p1
    return p1
  :L0
    const/4 p1, 0
    return p1
.end method
