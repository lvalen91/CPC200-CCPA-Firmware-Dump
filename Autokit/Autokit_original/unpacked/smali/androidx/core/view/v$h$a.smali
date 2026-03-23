.class Landroidx/core/view/v$h$a;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnApplyWindowInsetsListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/core/view/v$h;->d(Landroid/view/View;Landroidx/core/view/q;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field a:Landroidx/core/view/d0;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroidx/core/view/q;

.method constructor <init>(Landroid/view/View;Landroidx/core/view/q;)V
  .registers 3
  .line 1
    iput-object p1, p0, Landroidx/core/view/v$h$a;->b:Landroid/view/View;
    iput-object p2, p0, Landroidx/core/view/v$h$a;->c:Landroidx/core/view/q;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 p1, 0
  .line 2
    iput-object p1, p0, Landroidx/core/view/v$h$a;->a:Landroidx/core/view/d0;
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
  .registers 6
  .line 1
    invoke-static { p2, p1 }, Landroidx/core/view/d0;->t(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/d0;
    move-result-object v0
  .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 30
    if-ge v1, v2, :L0
  .line 3
    iget-object v1, p0, Landroidx/core/view/v$h$a;->b:Landroid/view/View;
    invoke-static { p2, v1 }, Landroidx/core/view/v$h;->a(Landroid/view/WindowInsets;Landroid/view/View;)V
  .line 4
    iget-object p2, p0, Landroidx/core/view/v$h$a;->a:Landroidx/core/view/d0;
    invoke-virtual { v0, p2 }, Landroidx/core/view/d0;->equals(Ljava/lang/Object;)Z
    move-result p2
    if-eqz p2, :L0
  .line 5
    iget-object p2, p0, Landroidx/core/view/v$h$a;->c:Landroidx/core/view/q;
    invoke-interface { p2, p1, v0 }, Landroidx/core/view/q;->a(Landroid/view/View;Landroidx/core/view/d0;)Landroidx/core/view/d0;
    move-result-object p1
  .line 6
    invoke-virtual { p1 }, Landroidx/core/view/d0;->r()Landroid/view/WindowInsets;
    move-result-object p1
    return-object p1
  :L0
  .line 7
    iput-object v0, p0, Landroidx/core/view/v$h$a;->a:Landroidx/core/view/d0;
  .line 8
    iget-object p2, p0, Landroidx/core/view/v$h$a;->c:Landroidx/core/view/q;
    invoke-interface { p2, p1, v0 }, Landroidx/core/view/q;->a(Landroid/view/View;Landroidx/core/view/d0;)Landroidx/core/view/d0;
    move-result-object p2
  .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt v0, v2, :L1
  .line 10
    invoke-virtual { p2 }, Landroidx/core/view/d0;->r()Landroid/view/WindowInsets;
    move-result-object p1
    return-object p1
  :L1
  .line 11
    invoke-static { p1 }, Landroidx/core/view/v;->l0(Landroid/view/View;)V
  .line 12
    invoke-virtual { p2 }, Landroidx/core/view/d0;->r()Landroid/view/WindowInsets;
    move-result-object p1
    return-object p1
.end method
