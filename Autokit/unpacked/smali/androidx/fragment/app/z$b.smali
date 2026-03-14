.class Landroidx/fragment/app/z$b;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/fragment/app/z;->x(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Ljava/util/Map;

.method constructor <init>(Landroidx/fragment/app/z;Ljava/util/ArrayList;Ljava/util/Map;)V
  .registers 4
  .line 1
    iput-object p2, p0, Landroidx/fragment/app/z$b;->b:Ljava/util/ArrayList;
    iput-object p3, p0, Landroidx/fragment/app/z$b;->c:Ljava/util/Map;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/z$b;->b:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    const/4 v1, 0
  :L0
    if-ge v1, v0, :L2
  .line 2
    iget-object v2, p0, Landroidx/fragment/app/z$b;->b:Ljava/util/ArrayList;
    invoke-virtual { v2, v1 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroid/view/View;
  .line 3
    invoke-static { v2 }, Landroidx/core/view/v;->L(Landroid/view/View;)Ljava/lang/String;
    move-result-object v3
    if-eqz v3, :L1
  .line 4
    iget-object v4, p0, Landroidx/fragment/app/z$b;->c:Ljava/util/Map;
    invoke-static { v4, v3 }, Landroidx/fragment/app/z;->i(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
  .line 5
    invoke-static { v2, v3 }, Landroidx/core/view/v;->D0(Landroid/view/View;Ljava/lang/String;)V
  :L1
    add-int/lit8 v1, v1, 1
    goto :L0
  :L2
    return-void
.end method
