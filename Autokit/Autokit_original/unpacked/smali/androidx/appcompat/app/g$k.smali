.class Landroidx/appcompat/app/g$k;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/app/g;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = "k"
.end annotation

.method static a(Landroid/content/Context;Landroid/content/res/Configuration;)Landroid/content/Context;
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;
    move-result-object p0
    return-object p0
.end method

.method static b(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
  .registers 3
  .line 1
    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I
    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I
    if-eq p0, p1, :L0
  .line 2
    iput p1, p2, Landroid/content/res/Configuration;->densityDpi:I
  :L0
    return-void
.end method
