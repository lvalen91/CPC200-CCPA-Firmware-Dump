.class public final Landroidx/core/widget/d;
.super Ljava/lang/Object;
.source "SourceFile"

.method public static a(Landroid/widget/EdgeEffect;FF)V
  .registers 5
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0, p1, p2 }, Landroid/widget/EdgeEffect;->onPull(FF)V
    goto :L1
  :L0
  .line 3
    invoke-virtual { p0, p1 }, Landroid/widget/EdgeEffect;->onPull(F)V
  :L1
    return-void
.end method
