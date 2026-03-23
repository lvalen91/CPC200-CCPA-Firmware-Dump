.class public Landroidx/appcompat/widget/FitWindowsLinearLayout;
.super Landroid/widget/LinearLayout;
.implements Landroidx/appcompat/widget/e0;
.source "SourceFile"

.field private b:Landroidx/appcompat/widget/e0$a;

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 3
  .line 1
    invoke-direct { p0, p1, p2 }, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    return-void
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/FitWindowsLinearLayout;->b:Landroidx/appcompat/widget/e0$a;
    if-eqz v0, :L0
  .line 2
    invoke-interface { v0, p1 }, Landroidx/appcompat/widget/e0$a;->a(Landroid/graphics/Rect;)V
  :L0
  .line 3
    invoke-super { p0, p1 }, Landroid/widget/LinearLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z
    move-result p1
    return p1
.end method

.method public setOnFitSystemWindowsListener(Landroidx/appcompat/widget/e0$a;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/FitWindowsLinearLayout;->b:Landroidx/appcompat/widget/e0$a;
    return-void
.end method
