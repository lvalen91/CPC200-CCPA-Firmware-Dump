.class public Landroidx/appcompat/widget/w0;
.super Ljava/lang/Object;
.source "SourceFile"

.method public static a(Landroid/view/View;Ljava/lang/CharSequence;)V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 26
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0, p1 }, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V
    goto :L1
  :L0
  .line 3
    invoke-static { p0, p1 }, Landroidx/appcompat/widget/x0;->f(Landroid/view/View;Ljava/lang/CharSequence;)V
  :L1
    return-void
.end method
