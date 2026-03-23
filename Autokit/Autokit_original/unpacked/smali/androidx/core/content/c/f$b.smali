.class public final Landroidx/core/content/c/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/core/content/c/f;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 25
  name = "b"
.end annotation
.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/core/content/c/f$b$a;,
    Landroidx/core/content/c/f$b$b;
  }
.end annotation

.method public static a(Landroid/content/res/Resources$Theme;)V
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 29
    if-lt v0, v1, :L0
  .line 2
    invoke-static { p0 }, Landroidx/core/content/c/f$b$b;->a(Landroid/content/res/Resources$Theme;)V
    goto :L1
  :L0
    const/16 v1, 23
    if-lt v0, v1, :L1
  .line 3
    invoke-static { p0 }, Landroidx/core/content/c/f$b$a;->a(Landroid/content/res/Resources$Theme;)V
  :L1
    return-void
.end method
