.class Lc/p/e$b;
.super Ljava/lang/Object;
.implements Lc/p/m$f;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lc/p/e;->r(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Landroid/view/View;

.field final synthetic b:Ljava/util/ArrayList;

.method constructor <init>(Lc/p/e;Landroid/view/View;Ljava/util/ArrayList;)V
  .registers 4
  .line 1
    iput-object p2, p0, Lc/p/e$b;->a:Landroid/view/View;
    iput-object p3, p0, Lc/p/e$b;->b:Ljava/util/ArrayList;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(Lc/p/m;)V
  .registers 2
    return-void
.end method

.method public b(Lc/p/m;)V
  .registers 2
    return-void
.end method

.method public c(Lc/p/m;)V
  .registers 2
    return-void
.end method

.method public d(Lc/p/m;)V
  .registers 2
    return-void
.end method

.method public e(Lc/p/m;)V
  .registers 5
  .line 1
    invoke-virtual { p1, p0 }, Lc/p/m;->O(Lc/p/m$f;)Lc/p/m;
  .line 2
    iget-object p1, p0, Lc/p/e$b;->a:Landroid/view/View;
    const/16 v0, 8
    invoke-virtual { p1, v0 }, Landroid/view/View;->setVisibility(I)V
  .line 3
    iget-object p1, p0, Lc/p/e$b;->b:Ljava/util/ArrayList;
    invoke-virtual { p1 }, Ljava/util/ArrayList;->size()I
    move-result p1
    const/4 v0, 0
    const/4 v1, 0
  :L0
    if-ge v1, p1, :L1
  .line 4
    iget-object v2, p0, Lc/p/e$b;->b:Ljava/util/ArrayList;
    invoke-virtual { v2, v1 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroid/view/View;
    invoke-virtual { v2, v0 }, Landroid/view/View;->setVisibility(I)V
    add-int/lit8 v1, v1, 1
    goto :L0
  :L1
    return-void
.end method
