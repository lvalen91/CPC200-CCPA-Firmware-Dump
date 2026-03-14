.class Lc/p/f;
.super Ljava/lang/Object;
.source "SourceFile"

.method public constructor <init>()V
  .registers 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method static a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "<T:",
      "Ljava/lang/Object;",
      ">(TT;",
      "Landroid/util/Property<",
      "TT;",
      "Landroid/graphics/PointF;",
      ">;",
      "Landroid/graphics/Path;",
      ")",
      "Landroid/animation/ObjectAnimator;"
    }
  .end annotation
  .registers 5
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L0
    const/4 v0, 0
  .line 2
    invoke-static { p0, p1, v0, p2 }, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
    move-result-object p0
    return-object p0
  :L0
  .line 3
    new-instance v0, Lc/p/h;
    invoke-direct { v0, p1, p2 }, Lc/p/h;-><init>(Landroid/util/Property;Landroid/graphics/Path;)V
    const/4 p1, 2
    new-array p1, p1, [F
    fill-array-data p1, :L1
    invoke-static { p0, v0, p1 }, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;
    move-result-object p0
    return-object p0
  :L1
  .array-data 4
    0t 0t 0t 0t
    0t 0t -128t 63t
  .end array-data
.end method
