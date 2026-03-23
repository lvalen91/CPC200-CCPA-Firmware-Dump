.class Landroidx/core/view/e0/d$a;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/core/view/e0/d;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = "a"
.end annotation

.field final a:Landroidx/core/view/e0/d;

.method constructor <init>(Landroidx/core/view/e0/d;)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V
  .line 2
    iput-object p1, p0, Landroidx/core/view/e0/d$a;->a:Landroidx/core/view/e0/d;
    return-void
.end method

.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/core/view/e0/d$a;->a:Landroidx/core/view/e0/d;
  .line 2
    invoke-virtual { v0, p1 }, Landroidx/core/view/e0/d;->b(I)Landroidx/core/view/e0/c;
    move-result-object p1
    if-nez p1, :L0
    const/4 p1, 0
    return-object p1
  :L0
  .line 3
    invoke-virtual { p1 }, Landroidx/core/view/e0/c;->u0()Landroid/view/accessibility/AccessibilityNodeInfo;
    move-result-object p1
    return-object p1
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/String;",
      "I)",
      "Ljava/util/List<",
      "Landroid/view/accessibility/AccessibilityNodeInfo;",
      ">;"
    }
  .end annotation
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/core/view/e0/d$a;->a:Landroidx/core/view/e0/d;
  .line 2
    invoke-virtual { v0, p1, p2 }, Landroidx/core/view/e0/d;->c(Ljava/lang/String;I)Ljava/util/List;
    move-result-object p1
    if-nez p1, :L0
    const/4 p1, 0
    return-object p1
  :L0
  .line 3
    new-instance p2, Ljava/util/ArrayList;
    invoke-direct { p2 }, Ljava/util/ArrayList;-><init>()V
  .line 4
    invoke-interface { p1 }, Ljava/util/List;->size()I
    move-result v0
    const/4 v1, 0
  :L1
    if-ge v1, v0, :L2
  .line 5
    invoke-interface { p1, v1 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroidx/core/view/e0/c;
  .line 6
    invoke-virtual { v2 }, Landroidx/core/view/e0/c;->u0()Landroid/view/accessibility/AccessibilityNodeInfo;
    move-result-object v2
    invoke-interface { p2, v2 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    add-int/lit8 v1, v1, 1
    goto :L1
  :L2
    return-object p2
.end method

.method public performAction(IILandroid/os/Bundle;)Z
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/core/view/e0/d$a;->a:Landroidx/core/view/e0/d;
    invoke-virtual { v0, p1, p2, p3 }, Landroidx/core/view/e0/d;->f(IILandroid/os/Bundle;)Z
    move-result p1
    return p1
.end method
