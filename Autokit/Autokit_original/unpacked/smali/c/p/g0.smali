.class Lc/p/g0;
.super Lc/p/f0;
.source "SourceFile"

.field private static i:Z = true

.method static constructor <clinit>()V
  .registers 1
    return-void
.end method

.method constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lc/p/f0;-><init>()V
    return-void
.end method

.method public g(Landroid/view/View;I)V
  .annotation build Landroid/annotation/SuppressLint;
    value = {
      "NewApi"
    }
  .end annotation
  .catch Ljava/lang/NoSuchMethodError; { :L1 .. :L2 } :L3
  .registers 5
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 28
    if-ne v0, v1, :L0
  .line 2
    invoke-super { p0, p1, p2 }, Lc/p/i0;->g(Landroid/view/View;I)V
    goto :L4
  :L0
  .line 3
    sget-boolean v0, Lc/p/g0;->i:Z
    if-eqz v0, :L4
  :L1
  .line 4
    invoke-virtual { p1, p2 }, Landroid/view/View;->setTransitionVisibility(I)V
  :L2
    goto :L4
  :L3
    const/4 p1, 0
  .line 5
    sput-boolean p1, Lc/p/g0;->i:Z
  :L4
    return-void
.end method
