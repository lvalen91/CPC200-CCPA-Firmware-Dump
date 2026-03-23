.class Lc/p/f0;
.super Lc/p/e0;
.source "SourceFile"

.field private static h:Z = true

.method static constructor <clinit>()V
  .registers 1
    return-void
.end method

.method constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lc/p/e0;-><init>()V
    return-void
.end method

.method public e(Landroid/view/View;IIII)V
  .annotation build Landroid/annotation/SuppressLint;
    value = {
      "NewApi"
    }
  .end annotation
  .catch Ljava/lang/NoSuchMethodError; { :L0 .. :L1 } :L2
  .registers 7
  .line 1
    sget-boolean v0, Lc/p/f0;->h:Z
    if-eqz v0, :L3
  :L0
  .line 2
    invoke-virtual { p1, p2, p3, p4, p5 }, Landroid/view/View;->setLeftTopRightBottom(IIII)V
  :L1
    goto :L3
  :L2
    const/4 p1, 0
  .line 3
    sput-boolean p1, Lc/p/f0;->h:Z
  :L3
    return-void
.end method
