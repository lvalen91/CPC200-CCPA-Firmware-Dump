.class Lc/a/l/a/a$e;
.super Lc/a/l/a/a$g;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lc/a/l/a/a;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "e"
.end annotation

.field private final a:Landroid/animation/ObjectAnimator;

.field private final b:Z

.method constructor <init>(Landroid/graphics/drawable/AnimationDrawable;ZZ)V
  .registers 9
    const/4 v0, 0
  .line 1
    invoke-direct { p0, v0 }, Lc/a/l/a/a$g;-><init>(Lc/a/l/a/a$a;)V
  .line 2
    invoke-virtual { p1 }, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I
    move-result v0
    const/4 v1, 0
    if-eqz p2, :L0
    add-int/lit8 v2, v0, -1
    goto :L1
  :L0
    const/4 v2, 0
  :L1
    const/4 v3, 1
    if-eqz p2, :L2
    const/4 v0, 0
    goto :L3
  :L2
    sub-int/2addr v0, v3
  :L3
  .line 3
    new-instance v4, Lc/a/l/a/a$f;
    invoke-direct { v4, p1, p2 }, Lc/a/l/a/a$f;-><init>(Landroid/graphics/drawable/AnimationDrawable;Z)V
    const/4 p2, 2
    new-array p2, p2, [I
    aput v2, p2, v1
    aput v0, p2, v3
    const-string v0, "currentIndex"
  .line 4
    invoke-static { p1, v0, p2 }, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;
    move-result-object p1
  .line 5
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v0, 18
    if-lt p2, v0, :L4
  .line 6
    invoke-virtual { p1, v3 }, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V
  :L4
  .line 7
    invoke-virtual { v4 }, Lc/a/l/a/a$f;->a()I
    move-result p2
    int-to-long v0, p2
    invoke-virtual { p1, v0, v1 }, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;
  .line 8
    invoke-virtual { p1, v4 }, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V
  .line 9
    iput-boolean p3, p0, Lc/a/l/a/a$e;->b:Z
  .line 10
    iput-object p1, p0, Lc/a/l/a/a$e;->a:Landroid/animation/ObjectAnimator;
    return-void
.end method

.method public a()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Lc/a/l/a/a$e;->b:Z
    return v0
.end method

.method public b()V
  .registers 2
  .line 1
    iget-object v0, p0, Lc/a/l/a/a$e;->a:Landroid/animation/ObjectAnimator;
    invoke-virtual { v0 }, Landroid/animation/ObjectAnimator;->reverse()V
    return-void
.end method

.method public c()V
  .registers 2
  .line 1
    iget-object v0, p0, Lc/a/l/a/a$e;->a:Landroid/animation/ObjectAnimator;
    invoke-virtual { v0 }, Landroid/animation/ObjectAnimator;->start()V
    return-void
.end method

.method public d()V
  .registers 2
  .line 1
    iget-object v0, p0, Lc/a/l/a/a$e;->a:Landroid/animation/ObjectAnimator;
    invoke-virtual { v0 }, Landroid/animation/ObjectAnimator;->cancel()V
    return-void
.end method
