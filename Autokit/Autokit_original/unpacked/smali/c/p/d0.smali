.class Lc/p/d0;
.super Lc/p/i0;
.source "SourceFile"

.field private static e:Z = true

.method static constructor <clinit>()V
  .registers 2
    return-void
.end method

.method constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lc/p/i0;-><init>()V
    return-void
.end method

.method public a(Landroid/view/View;)V
  .registers 2
    return-void
.end method

.method public c(Landroid/view/View;)F
  .annotation build Landroid/annotation/SuppressLint;
    value = {
      "NewApi"
    }
  .end annotation
  .catch Ljava/lang/NoSuchMethodError; { :L0 .. :L1 } :L2
  .registers 3
  .line 1
    sget-boolean v0, Lc/p/d0;->e:Z
    if-eqz v0, :L3
  :L0
  .line 2
    invoke-virtual { p1 }, Landroid/view/View;->getTransitionAlpha()F
    move-result p1
  :L1
    return p1
  :L2
    const/4 v0, 0
  .line 3
    sput-boolean v0, Lc/p/d0;->e:Z
  :L3
  .line 4
    invoke-virtual { p1 }, Landroid/view/View;->getAlpha()F
    move-result p1
    return p1
.end method

.method public d(Landroid/view/View;)V
  .registers 2
    return-void
.end method

.method public f(Landroid/view/View;F)V
  .annotation build Landroid/annotation/SuppressLint;
    value = {
      "NewApi"
    }
  .end annotation
  .catch Ljava/lang/NoSuchMethodError; { :L0 .. :L1 } :L2
  .registers 4
  .line 1
    sget-boolean v0, Lc/p/d0;->e:Z
    if-eqz v0, :L3
  :L0
  .line 2
    invoke-virtual { p1, p2 }, Landroid/view/View;->setTransitionAlpha(F)V
  :L1
    return-void
  :L2
    const/4 v0, 0
  .line 3
    sput-boolean v0, Lc/p/d0;->e:Z
  :L3
  .line 4
    invoke-virtual { p1, p2 }, Landroid/view/View;->setAlpha(F)V
    return-void
.end method
