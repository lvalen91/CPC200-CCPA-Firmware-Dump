.class Lcom/google/android/material/bottomappbar/BottomAppBar$f;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/google/android/material/bottomappbar/BottomAppBar;->g0(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Lcom/google/android/material/bottomappbar/BottomAppBar;

.method constructor <init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$f;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;
    invoke-direct { p0 }, Landroid/animation/AnimatorListenerAdapter;-><init>()V
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$f;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;
    iget-object v0, v0, Lcom/google/android/material/bottomappbar/BottomAppBar;->j0:Landroid/animation/AnimatorListenerAdapter;
    invoke-virtual { v0, p1 }, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V
  .line 2
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$f;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;
    invoke-static { p1 }, Lcom/google/android/material/bottomappbar/BottomAppBar;->Y(Lcom/google/android/material/bottomappbar/BottomAppBar;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-result-object p1
    if-eqz p1, :L0
  .line 3
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$f;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;
    invoke-static { v0 }, Lcom/google/android/material/bottomappbar/BottomAppBar;->Z(Lcom/google/android/material/bottomappbar/BottomAppBar;)F
    move-result v0
    invoke-virtual { p1, v0 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setTranslationX(F)V
  :L0
    return-void
.end method
