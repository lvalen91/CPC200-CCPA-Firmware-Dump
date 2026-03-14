.class public final Landroidx/core/view/e0/b;
.super Ljava/lang/Object;
.source "SourceFile"

.method public static a(Landroid/view/accessibility/AccessibilityEvent;)I
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 19
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I
    move-result p0
    return p0
  :L0
    const/4 p0, 0
    return p0
.end method

.method public static b(Landroid/view/accessibility/AccessibilityEvent;I)V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 19
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0, p1 }, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V
  :L0
    return-void
.end method
