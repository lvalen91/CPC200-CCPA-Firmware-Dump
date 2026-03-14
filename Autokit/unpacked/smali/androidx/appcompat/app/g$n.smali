.class Landroidx/appcompat/app/g$n;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/app/g;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = "n"
.end annotation

.method static a(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
  .registers 6
  .line 1
    iget v0, p0, Landroid/content/res/Configuration;->colorMode:I
    and-int/lit8 v0, v0, 3
    iget v1, p1, Landroid/content/res/Configuration;->colorMode:I
    and-int/lit8 v2, v1, 3
    if-eq v0, v2, :L0
  .line 2
    iget v0, p2, Landroid/content/res/Configuration;->colorMode:I
    and-int/lit8 v1, v1, 3
    or-int/2addr v0, v1
    iput v0, p2, Landroid/content/res/Configuration;->colorMode:I
  :L0
  .line 3
    iget p0, p0, Landroid/content/res/Configuration;->colorMode:I
    and-int/lit8 p0, p0, 12
    iget p1, p1, Landroid/content/res/Configuration;->colorMode:I
    and-int/lit8 v0, p1, 12
    if-eq p0, v0, :L1
  .line 4
    iget p0, p2, Landroid/content/res/Configuration;->colorMode:I
    and-int/lit8 p1, p1, 12
    or-int/2addr p0, p1
    iput p0, p2, Landroid/content/res/Configuration;->colorMode:I
  :L1
    return-void
.end method
