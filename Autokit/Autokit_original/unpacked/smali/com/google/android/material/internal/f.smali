.class public final Lcom/google/android/material/internal/f;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcom/google/android/material/internal/f$b;
  }
.end annotation

.field private final a:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Lcom/google/android/material/internal/f$b;",
      ">;"
    }
  .end annotation
.end field

.field private b:Lcom/google/android/material/internal/f$b;

.field c:Landroid/animation/ValueAnimator;

.field private final d:Landroid/animation/Animator$AnimatorListener;

.method public constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Lcom/google/android/material/internal/f;->a:Ljava/util/ArrayList;
    const/4 v0, 0
  .line 3
    iput-object v0, p0, Lcom/google/android/material/internal/f;->b:Lcom/google/android/material/internal/f$b;
  .line 4
    iput-object v0, p0, Lcom/google/android/material/internal/f;->c:Landroid/animation/ValueAnimator;
  .line 5
    new-instance v0, Lcom/google/android/material/internal/f$a;
    invoke-direct { v0, p0 }, Lcom/google/android/material/internal/f$a;-><init>(Lcom/google/android/material/internal/f;)V
    iput-object v0, p0, Lcom/google/android/material/internal/f;->d:Landroid/animation/Animator$AnimatorListener;
    return-void
.end method

.method private b()V
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/f;->c:Landroid/animation/ValueAnimator;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Landroid/animation/ValueAnimator;->cancel()V
    const/4 v0, 0
  .line 3
    iput-object v0, p0, Lcom/google/android/material/internal/f;->c:Landroid/animation/ValueAnimator;
  :L0
    return-void
.end method

.method private e(Lcom/google/android/material/internal/f$b;)V
  .registers 2
  .line 1
    iget-object p1, p1, Lcom/google/android/material/internal/f$b;->b:Landroid/animation/ValueAnimator;
    iput-object p1, p0, Lcom/google/android/material/internal/f;->c:Landroid/animation/ValueAnimator;
  .line 2
    invoke-virtual { p1 }, Landroid/animation/ValueAnimator;->start()V
    return-void
.end method

.method public a([ILandroid/animation/ValueAnimator;)V
  .registers 4
  .line 1
    new-instance v0, Lcom/google/android/material/internal/f$b;
    invoke-direct { v0, p1, p2 }, Lcom/google/android/material/internal/f$b;-><init>([ILandroid/animation/ValueAnimator;)V
  .line 2
    iget-object p1, p0, Lcom/google/android/material/internal/f;->d:Landroid/animation/Animator$AnimatorListener;
    invoke-virtual { p2, p1 }, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V
  .line 3
    iget-object p1, p0, Lcom/google/android/material/internal/f;->a:Ljava/util/ArrayList;
    invoke-virtual { p1, v0 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    return-void
.end method

.method public c()V
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/f;->c:Landroid/animation/ValueAnimator;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Landroid/animation/ValueAnimator;->end()V
    const/4 v0, 0
  .line 3
    iput-object v0, p0, Lcom/google/android/material/internal/f;->c:Landroid/animation/ValueAnimator;
  :L0
    return-void
.end method

.method public d([I)V
  .registers 6
  .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/f;->a:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    const/4 v1, 0
  :L0
    if-ge v1, v0, :L2
  .line 2
    iget-object v2, p0, Lcom/google/android/material/internal/f;->a:Ljava/util/ArrayList;
    invoke-virtual { v2, v1 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lcom/google/android/material/internal/f$b;
  .line 3
    iget-object v3, v2, Lcom/google/android/material/internal/f$b;->a:[I
    invoke-static { v3, p1 }, Landroid/util/StateSet;->stateSetMatches([I[I)Z
    move-result v3
    if-eqz v3, :L1
    goto :L3
  :L1
    add-int/lit8 v1, v1, 1
    goto :L0
  :L2
    const/4 v2, 0
  :L3
  .line 4
    iget-object p1, p0, Lcom/google/android/material/internal/f;->b:Lcom/google/android/material/internal/f$b;
    if-ne v2, p1, :L4
    return-void
  :L4
    if-eqz p1, :L5
  .line 5
    invoke-direct { p0 }, Lcom/google/android/material/internal/f;->b()V
  :L5
  .line 6
    iput-object v2, p0, Lcom/google/android/material/internal/f;->b:Lcom/google/android/material/internal/f$b;
    if-eqz v2, :L6
  .line 7
    invoke-direct { p0, v2 }, Lcom/google/android/material/internal/f;->e(Lcom/google/android/material/internal/f$b;)V
  :L6
    return-void
.end method
