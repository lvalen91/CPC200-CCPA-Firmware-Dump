.class Landroidx/recyclerview/widget/c$c;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/recyclerview/widget/c;->u()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Landroidx/recyclerview/widget/c;

.method constructor <init>(Landroidx/recyclerview/widget/c;Ljava/util/ArrayList;)V
  .registers 3
  .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/c$c;->c:Landroidx/recyclerview/widget/c;
    iput-object p2, p0, Landroidx/recyclerview/widget/c$c;->b:Ljava/util/ArrayList;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/c$c;->b:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$c0;
  .line 2
    iget-object v2, p0, Landroidx/recyclerview/widget/c$c;->c:Landroidx/recyclerview/widget/c;
    invoke-virtual { v2, v1 }, Landroidx/recyclerview/widget/c;->Q(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    goto :L0
  :L1
  .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/c$c;->b:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->clear()V
  .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/c$c;->c:Landroidx/recyclerview/widget/c;
    iget-object v0, v0, Landroidx/recyclerview/widget/c;->l:Ljava/util/ArrayList;
    iget-object v1, p0, Landroidx/recyclerview/widget/c$c;->b:Ljava/util/ArrayList;
    invoke-virtual { v0, v1 }, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    return-void
.end method
