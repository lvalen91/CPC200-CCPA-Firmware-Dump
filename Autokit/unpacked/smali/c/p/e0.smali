.class Lc/p/e0;
.super Lc/p/d0;
.source "SourceFile"

.field private static f:Z = true

.field private static g:Z = true

.method static constructor <clinit>()V
  .registers 2
    return-void
.end method

.method constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lc/p/d0;-><init>()V
    return-void
.end method

.method public h(Landroid/view/View;Landroid/graphics/Matrix;)V
  .annotation build Landroid/annotation/SuppressLint;
    value = {
      "NewApi"
    }
  .end annotation
  .catch Ljava/lang/NoSuchMethodError; { :L0 .. :L1 } :L2
  .registers 4
  .line 1
    sget-boolean v0, Lc/p/e0;->f:Z
    if-eqz v0, :L3
  :L0
  .line 2
    invoke-virtual { p1, p2 }, Landroid/view/View;->transformMatrixToGlobal(Landroid/graphics/Matrix;)V
  :L1
    goto :L3
  :L2
    const/4 p1, 0
  .line 3
    sput-boolean p1, Lc/p/e0;->f:Z
  :L3
    return-void
.end method

.method public i(Landroid/view/View;Landroid/graphics/Matrix;)V
  .annotation build Landroid/annotation/SuppressLint;
    value = {
      "NewApi"
    }
  .end annotation
  .catch Ljava/lang/NoSuchMethodError; { :L0 .. :L1 } :L2
  .registers 4
  .line 1
    sget-boolean v0, Lc/p/e0;->g:Z
    if-eqz v0, :L3
  :L0
  .line 2
    invoke-virtual { p1, p2 }, Landroid/view/View;->transformMatrixToLocal(Landroid/graphics/Matrix;)V
  :L1
    goto :L3
  :L2
    const/4 p1, 0
  .line 3
    sput-boolean p1, Lc/p/e0;->g:Z
  :L3
    return-void
.end method
