.class Landroidx/fragment/app/z$c;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/fragment/app/z;->s(Landroid/view/ViewGroup;Ljava/util/ArrayList;Ljava/util/Map;)V
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
    iput-object p2, p0, Landroidx/fragment/app/z$c;->b:Ljava/util/ArrayList;
    iput-object p3, p0, Landroidx/fragment/app/z$c;->c:Ljava/util/Map;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/z$c;->b:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    const/4 v1, 0
  :L0
    if-ge v1, v0, :L1
  .line 2
    iget-object v2, p0, Landroidx/fragment/app/z$c;->b:Ljava/util/ArrayList;
    invoke-virtual { v2, v1 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroid/view/View;
  .line 3
    invoke-static { v2 }, Landroidx/core/view/v;->L(Landroid/view/View;)Ljava/lang/String;
    move-result-object v3
  .line 4
    iget-object v4, p0, Landroidx/fragment/app/z$c;->c:Ljava/util/Map;
    invoke-interface { v4, v3 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/lang/String;
  .line 5
    invoke-static { v2, v3 }, Landroidx/core/view/v;->D0(Landroid/view/View;Ljava/lang/String;)V
    add-int/lit8 v1, v1, 1
    goto :L0
  :L1
    return-void
.end method
