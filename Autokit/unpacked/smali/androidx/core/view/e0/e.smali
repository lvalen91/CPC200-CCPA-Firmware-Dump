.class public Landroidx/core/view/e0/e;
.super Ljava/lang/Object;
.source "SourceFile"

.method public static a(Landroid/view/accessibility/AccessibilityRecord;I)V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 15
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0, p1 }, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollX(I)V
  :L0
    return-void
.end method

.method public static b(Landroid/view/accessibility/AccessibilityRecord;I)V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 15
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0, p1 }, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollY(I)V
  :L0
    return-void
.end method

.method public static c(Landroid/view/accessibility/AccessibilityRecord;Landroid/view/View;I)V
  .registers 5
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 16
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0, p1, p2 }, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;I)V
  :L0
    return-void
.end method
