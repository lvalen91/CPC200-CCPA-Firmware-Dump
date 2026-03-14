.class public Ld/c/a/a/l/b;
.super Ljava/lang/Object;
.source "SourceFile"

.method public constructor <init>()V
  .registers 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static a(Landroid/animation/AnimatorSet;Ljava/util/List;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroid/animation/AnimatorSet;",
      "Ljava/util/List<",
      "Landroid/animation/Animator;",
      ">;)V"
    }
  .end annotation
  .registers 12
  .line 1
    invoke-interface { p1 }, Ljava/util/List;->size()I
    move-result v0
    const/4 v1, 0
    const-wide/16 v2, 0
    const/4 v4, 0
  :L0
    if-ge v4, v0, :L1
  .line 2
    invoke-interface { p1, v4 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Landroid/animation/Animator;
  .line 3
    invoke-virtual { v5 }, Landroid/animation/Animator;->getStartDelay()J
    move-result-wide v6
    invoke-virtual { v5 }, Landroid/animation/Animator;->getDuration()J
    move-result-wide v8
    add-long/2addr v6, v8
    invoke-static { v2, v3, v6, v7 }, Ljava/lang/Math;->max(JJ)J
    move-result-wide v2
    add-int/lit8 v4, v4, 1
    goto :L0
  :L1
    const/4 v0, 2
    new-array v0, v0, [I
  .line 4
    fill-array-data v0, :L2
    invoke-static { v0 }, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;
    move-result-object v0
  .line 5
    invoke-virtual { v0, v2, v3 }, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;
  .line 6
    invoke-interface { p1, v1, v0 }, Ljava/util/List;->add(ILjava/lang/Object;)V
  .line 7
    invoke-virtual { p0, p1 }, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V
    return-void
  :L2
  .array-data 4
    0t 0t 0t 0t
    0t 0t 0t 0t
  .end array-data
.end method
