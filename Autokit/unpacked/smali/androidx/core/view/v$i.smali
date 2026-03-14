.class Landroidx/core/view/v$i;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/core/view/v;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "i"
.end annotation

.method public static a(Landroid/view/View;)Landroidx/core/view/d0;
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;
    move-result-object v0
    if-nez v0, :L0
    const/4 p0, 0
    return-object p0
  :L0
  .line 2
    invoke-static { v0 }, Landroidx/core/view/d0;->s(Landroid/view/WindowInsets;)Landroidx/core/view/d0;
    move-result-object v0
  .line 3
    invoke-virtual { v0, v0 }, Landroidx/core/view/d0;->p(Landroidx/core/view/d0;)V
  .line 4
    invoke-virtual { p0 }, Landroid/view/View;->getRootView()Landroid/view/View;
    move-result-object p0
    invoke-virtual { v0, p0 }, Landroidx/core/view/d0;->d(Landroid/view/View;)V
    return-object v0
.end method
