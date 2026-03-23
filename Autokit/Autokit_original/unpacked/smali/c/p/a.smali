.class Lc/p/a;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lc/p/a$a;
  }
.end annotation

.method public constructor <init>()V
  .registers 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method static a(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 19
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0, p1 }, Landroid/animation/Animator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V
  :L0
    return-void
.end method

.method static b(Landroid/animation/Animator;)V
  .registers 6
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 19
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/animation/Animator;->pause()V
    goto :L3
  :L0
  .line 3
    invoke-virtual { p0 }, Landroid/animation/Animator;->getListeners()Ljava/util/ArrayList;
    move-result-object v0
    if-eqz v0, :L3
    const/4 v1, 0
  .line 4
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v2
  :L1
    if-ge v1, v2, :L3
  .line 5
    invoke-virtual { v0, v1 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Landroid/animation/Animator$AnimatorListener;
  .line 6
    instance-of v4, v3, Lc/p/a$a;
    if-eqz v4, :L2
  .line 7
    check-cast v3, Lc/p/a$a;
    invoke-interface { v3, p0 }, Lc/p/a$a;->onAnimationPause(Landroid/animation/Animator;)V
  :L2
    add-int/lit8 v1, v1, 1
    goto :L1
  :L3
    return-void
.end method

.method static c(Landroid/animation/Animator;)V
  .registers 6
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 19
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/animation/Animator;->resume()V
    goto :L3
  :L0
  .line 3
    invoke-virtual { p0 }, Landroid/animation/Animator;->getListeners()Ljava/util/ArrayList;
    move-result-object v0
    if-eqz v0, :L3
    const/4 v1, 0
  .line 4
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v2
  :L1
    if-ge v1, v2, :L3
  .line 5
    invoke-virtual { v0, v1 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Landroid/animation/Animator$AnimatorListener;
  .line 6
    instance-of v4, v3, Lc/p/a$a;
    if-eqz v4, :L2
  .line 7
    check-cast v3, Lc/p/a$a;
    invoke-interface { v3, p0 }, Lc/p/a$a;->onAnimationResume(Landroid/animation/Animator;)V
  :L2
    add-int/lit8 v1, v1, 1
    goto :L1
  :L3
    return-void
.end method
