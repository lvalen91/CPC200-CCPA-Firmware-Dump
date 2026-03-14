.class Lcom/google/android/material/behavior/SwipeDismissBehavior$d;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcom/google/android/material/behavior/SwipeDismissBehavior;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 2
  name = "d"
.end annotation

.field private final b:Landroid/view/View;

.field private final c:Z

.field final synthetic d:Lcom/google/android/material/behavior/SwipeDismissBehavior;

.method constructor <init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;Landroid/view/View;Z)V
  .registers 4
  .line 1
    iput-object p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$d;->d:Lcom/google/android/material/behavior/SwipeDismissBehavior;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$d;->b:Landroid/view/View;
  .line 3
    iput-boolean p3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$d;->c:Z
    return-void
.end method

.method public run()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$d;->d:Lcom/google/android/material/behavior/SwipeDismissBehavior;
    iget-object v0, v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:Lc/i/b/c;
    if-eqz v0, :L0
    const/4 v1, 1
    invoke-virtual { v0, v1 }, Lc/i/b/c;->k(Z)Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$d;->b:Landroid/view/View;
    invoke-static { v0, p0 }, Landroidx/core/view/v;->g0(Landroid/view/View;Ljava/lang/Runnable;)V
    goto :L1
  :L0
  .line 3
    iget-boolean v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$d;->c:Z
    if-eqz v0, :L1
    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$d;->d:Lcom/google/android/material/behavior/SwipeDismissBehavior;
    iget-object v0, v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->b:Lcom/google/android/material/behavior/SwipeDismissBehavior$c;
    if-eqz v0, :L1
  .line 4
    iget-object v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$d;->b:Landroid/view/View;
    invoke-interface { v0, v1 }, Lcom/google/android/material/behavior/SwipeDismissBehavior$c;->a(Landroid/view/View;)V
  :L1
    return-void
.end method
