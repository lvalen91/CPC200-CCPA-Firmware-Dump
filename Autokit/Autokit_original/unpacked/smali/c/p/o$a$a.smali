.class Lc/p/o$a$a;
.super Lc/p/n;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lc/p/o$a;->onPreDraw()Z
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Lc/d/a;

.field final synthetic b:Lc/p/o$a;

.method constructor <init>(Lc/p/o$a;Lc/d/a;)V
  .registers 3
  .line 1
    iput-object p1, p0, Lc/p/o$a$a;->b:Lc/p/o$a;
    iput-object p2, p0, Lc/p/o$a$a;->a:Lc/d/a;
    invoke-direct { p0 }, Lc/p/n;-><init>()V
    return-void
.end method

.method public e(Lc/p/m;)V
  .registers 4
  .line 1
    iget-object v0, p0, Lc/p/o$a$a;->a:Lc/d/a;
    iget-object v1, p0, Lc/p/o$a$a;->b:Lc/p/o$a;
    iget-object v1, v1, Lc/p/o$a;->c:Landroid/view/ViewGroup;
    invoke-virtual { v0, v1 }, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/util/ArrayList;
  .line 2
    invoke-virtual { v0, p1 }, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
  .line 3
    invoke-virtual { p1, p0 }, Lc/p/m;->O(Lc/p/m$f;)Lc/p/m;
    return-void
.end method
