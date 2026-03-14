.class Landroidx/appcompat/app/g$c;
.super Ljava/lang/Object;
.implements Landroidx/core/view/q;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/appcompat/app/g;->W()Landroid/view/ViewGroup;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Landroidx/appcompat/app/g;

.method constructor <init>(Landroidx/appcompat/app/g;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/app/g$c;->a:Landroidx/appcompat/app/g;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(Landroid/view/View;Landroidx/core/view/d0;)Landroidx/core/view/d0;
  .registers 7
  .line 1
    invoke-virtual { p2 }, Landroidx/core/view/d0;->i()I
    move-result v0
  .line 2
    iget-object v1, p0, Landroidx/appcompat/app/g$c;->a:Landroidx/appcompat/app/g;
    const/4 v2, 0
    invoke-virtual { v1, p2, v2 }, Landroidx/appcompat/app/g;->Q0(Landroidx/core/view/d0;Landroid/graphics/Rect;)I
    move-result v1
    if-eq v0, v1, :L0
  .line 3
    invoke-virtual { p2 }, Landroidx/core/view/d0;->g()I
    move-result v0
  .line 4
    invoke-virtual { p2 }, Landroidx/core/view/d0;->h()I
    move-result v2
  .line 5
    invoke-virtual { p2 }, Landroidx/core/view/d0;->f()I
    move-result v3
  .line 6
    invoke-virtual { p2, v0, v1, v2, v3 }, Landroidx/core/view/d0;->m(IIII)Landroidx/core/view/d0;
    move-result-object p2
  :L0
  .line 7
    invoke-static { p1, p2 }, Landroidx/core/view/v;->a0(Landroid/view/View;Landroidx/core/view/d0;)Landroidx/core/view/d0;
    move-result-object p1
    return-object p1
.end method
