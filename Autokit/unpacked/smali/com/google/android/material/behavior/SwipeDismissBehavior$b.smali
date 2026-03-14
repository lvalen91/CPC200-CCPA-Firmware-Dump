.class Lcom/google/android/material/behavior/SwipeDismissBehavior$b;
.super Ljava/lang/Object;
.implements Landroidx/core/view/e0/f;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/google/android/material/behavior/SwipeDismissBehavior;->M(Landroid/view/View;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Lcom/google/android/material/behavior/SwipeDismissBehavior;

.method constructor <init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$b;->a:Lcom/google/android/material/behavior/SwipeDismissBehavior;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(Landroid/view/View;Landroidx/core/view/e0/f$a;)Z
  .registers 6
  .line 1
    iget-object p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$b;->a:Lcom/google/android/material/behavior/SwipeDismissBehavior;
    invoke-virtual { p2, p1 }, Lcom/google/android/material/behavior/SwipeDismissBehavior;->E(Landroid/view/View;)Z
    move-result p2
    const/4 v0, 0
    if-eqz p2, :L7
  .line 2
    invoke-static { p1 }, Landroidx/core/view/v;->C(Landroid/view/View;)I
    move-result p2
    const/4 v1, 1
    if-ne p2, v1, :L0
    const/4 p2, 1
    goto :L1
  :L0
    const/4 p2, 0
  :L1
  .line 3
    iget-object v2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$b;->a:Lcom/google/android/material/behavior/SwipeDismissBehavior;
    iget v2, v2, Lcom/google/android/material/behavior/SwipeDismissBehavior;->f:I
    if-nez v2, :L2
    if-nez p2, :L3
  :L2
    iget-object v2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$b;->a:Lcom/google/android/material/behavior/SwipeDismissBehavior;
    iget v2, v2, Lcom/google/android/material/behavior/SwipeDismissBehavior;->f:I
    if-ne v2, v1, :L4
    if-nez p2, :L4
  :L3
    const/4 v0, 1
  :L4
  .line 4
    invoke-virtual { p1 }, Landroid/view/View;->getWidth()I
    move-result p2
    if-eqz v0, :L5
    neg-int p2, p2
  :L5
  .line 5
    invoke-static { p1, p2 }, Landroidx/core/view/v;->Y(Landroid/view/View;I)V
    const/4 p2, 0
  .line 6
    invoke-virtual { p1, p2 }, Landroid/view/View;->setAlpha(F)V
  .line 7
    iget-object p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$b;->a:Lcom/google/android/material/behavior/SwipeDismissBehavior;
    iget-object p2, p2, Lcom/google/android/material/behavior/SwipeDismissBehavior;->b:Lcom/google/android/material/behavior/SwipeDismissBehavior$c;
    if-eqz p2, :L6
  .line 8
    invoke-interface { p2, p1 }, Lcom/google/android/material/behavior/SwipeDismissBehavior$c;->a(Landroid/view/View;)V
  :L6
    return v1
  :L7
    return v0
.end method
