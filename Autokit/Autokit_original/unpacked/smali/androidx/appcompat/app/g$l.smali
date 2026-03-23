.class Landroidx/appcompat/app/g$l;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/app/g;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = "l"
.end annotation

.method static a(Landroid/os/PowerManager;)Z
  .registers 1
  .line 1
    invoke-virtual { p0 }, Landroid/os/PowerManager;->isPowerSaveMode()Z
    move-result p0
    return p0
.end method
