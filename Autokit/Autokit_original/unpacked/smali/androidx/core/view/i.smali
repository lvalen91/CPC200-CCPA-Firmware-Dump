.class public final Landroidx/core/view/i;
.super Ljava/lang/Object;
.source "SourceFile"

.method public static a(Landroid/view/MenuItem;Landroidx/core/view/b;)Landroid/view/MenuItem;
  .registers 3
  .line 1
    instance-of v0, p0, Lc/g/e/a/b;
    if-eqz v0, :L0
  .line 2
    check-cast p0, Lc/g/e/a/b;
    invoke-interface { p0, p1 }, Lc/g/e/a/b;->a(Landroidx/core/view/b;)Lc/g/e/a/b;
    move-result-object p0
  :L0
    return-object p0
.end method

.method public static b(Landroid/view/MenuItem;CI)V
  .registers 5
  .line 1
    instance-of v0, p0, Lc/g/e/a/b;
    if-eqz v0, :L0
  .line 2
    check-cast p0, Lc/g/e/a/b;
    invoke-interface { p0, p1, p2 }, Lc/g/e/a/b;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;
    goto :L1
  :L0
  .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 26
    if-lt v0, v1, :L1
  .line 4
    invoke-interface { p0, p1, p2 }, Landroid/view/MenuItem;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;
  :L1
    return-void
.end method

.method public static c(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V
  .registers 4
  .line 1
    instance-of v0, p0, Lc/g/e/a/b;
    if-eqz v0, :L0
  .line 2
    check-cast p0, Lc/g/e/a/b;
    invoke-interface { p0, p1 }, Lc/g/e/a/b;->setContentDescription(Ljava/lang/CharSequence;)Lc/g/e/a/b;
    goto :L1
  :L0
  .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 26
    if-lt v0, v1, :L1
  .line 4
    invoke-interface { p0, p1 }, Landroid/view/MenuItem;->setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
  :L1
    return-void
.end method

.method public static d(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)V
  .registers 4
  .line 1
    instance-of v0, p0, Lc/g/e/a/b;
    if-eqz v0, :L0
  .line 2
    check-cast p0, Lc/g/e/a/b;
    invoke-interface { p0, p1 }, Lc/g/e/a/b;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;
    goto :L1
  :L0
  .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 26
    if-lt v0, v1, :L1
  .line 4
    invoke-interface { p0, p1 }, Landroid/view/MenuItem;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;
  :L1
    return-void
.end method

.method public static e(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)V
  .registers 4
  .line 1
    instance-of v0, p0, Lc/g/e/a/b;
    if-eqz v0, :L0
  .line 2
    check-cast p0, Lc/g/e/a/b;
    invoke-interface { p0, p1 }, Lc/g/e/a/b;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;
    goto :L1
  :L0
  .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 26
    if-lt v0, v1, :L1
  .line 4
    invoke-interface { p0, p1 }, Landroid/view/MenuItem;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;
  :L1
    return-void
.end method

.method public static f(Landroid/view/MenuItem;CI)V
  .registers 5
  .line 1
    instance-of v0, p0, Lc/g/e/a/b;
    if-eqz v0, :L0
  .line 2
    check-cast p0, Lc/g/e/a/b;
    invoke-interface { p0, p1, p2 }, Lc/g/e/a/b;->setNumericShortcut(CI)Landroid/view/MenuItem;
    goto :L1
  :L0
  .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 26
    if-lt v0, v1, :L1
  .line 4
    invoke-interface { p0, p1, p2 }, Landroid/view/MenuItem;->setNumericShortcut(CI)Landroid/view/MenuItem;
  :L1
    return-void
.end method

.method public static g(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V
  .registers 4
  .line 1
    instance-of v0, p0, Lc/g/e/a/b;
    if-eqz v0, :L0
  .line 2
    check-cast p0, Lc/g/e/a/b;
    invoke-interface { p0, p1 }, Lc/g/e/a/b;->setTooltipText(Ljava/lang/CharSequence;)Lc/g/e/a/b;
    goto :L1
  :L0
  .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 26
    if-lt v0, v1, :L1
  .line 4
    invoke-interface { p0, p1 }, Landroid/view/MenuItem;->setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
  :L1
    return-void
.end method
