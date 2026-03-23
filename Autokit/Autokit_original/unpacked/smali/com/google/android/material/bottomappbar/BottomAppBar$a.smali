.class Lcom/google/android/material/bottomappbar/BottomAppBar$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/google/android/material/bottomappbar/BottomAppBar;->t0(I)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Lcom/google/android/material/bottomappbar/BottomAppBar;

.method constructor <init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$a;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;
    invoke-direct { p0 }, Landroid/animation/AnimatorListenerAdapter;-><init>()V
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
  .registers 3
  .line 1
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$a;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;
    invoke-static { p1 }, Lcom/google/android/material/bottomappbar/BottomAppBar;->S(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
  .line 2
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$a;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;
    const/4 v0, 0
    invoke-static { p1, v0 }, Lcom/google/android/material/bottomappbar/BottomAppBar;->T(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroid/animation/Animator;)Landroid/animation/Animator;
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
  .registers 2
  .line 1
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$a;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;
    invoke-static { p1 }, Lcom/google/android/material/bottomappbar/BottomAppBar;->R(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    return-void
.end method
