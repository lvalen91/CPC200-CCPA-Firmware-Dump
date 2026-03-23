.class Landroidx/core/view/e0/d$b;
.super Landroidx/core/view/e0/d$a;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/core/view/e0/d;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = "b"
.end annotation

.method constructor <init>(Landroidx/core/view/e0/d;)V
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Landroidx/core/view/e0/d$a;-><init>(Landroidx/core/view/e0/d;)V
    return-void
.end method

.method public findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/core/view/e0/d$a;->a:Landroidx/core/view/e0/d;
    invoke-virtual { v0, p1 }, Landroidx/core/view/e0/d;->d(I)Landroidx/core/view/e0/c;
    move-result-object p1
    if-nez p1, :L0
    const/4 p1, 0
    return-object p1
  :L0
  .line 2
    invoke-virtual { p1 }, Landroidx/core/view/e0/c;->u0()Landroid/view/accessibility/AccessibilityNodeInfo;
    move-result-object p1
    return-object p1
.end method
