.class Lcom/google/android/material/textfield/a$f;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/google/android/material/textfield/a;->m()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Lcom/google/android/material/textfield/a;

.method constructor <init>(Lcom/google/android/material/textfield/a;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/a$f;->a:Lcom/google/android/material/textfield/a;
    invoke-direct { p0 }, Landroid/animation/AnimatorListenerAdapter;-><init>()V
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
  .registers 3
  .line 1
    iget-object p1, p0, Lcom/google/android/material/textfield/a$f;->a:Lcom/google/android/material/textfield/a;
    iget-object p1, p1, Lcom/google/android/material/textfield/e;->a:Lcom/google/android/material/textfield/TextInputLayout;
    const/4 v0, 1
    invoke-virtual { p1, v0 }, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V
    return-void
.end method
