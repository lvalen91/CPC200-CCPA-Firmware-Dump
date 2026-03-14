.class Lcom/google/android/material/textfield/d$c;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnFocusChangeListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcom/google/android/material/textfield/d;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcom/google/android/material/textfield/d;

.method constructor <init>(Lcom/google/android/material/textfield/d;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/d$c;->b:Lcom/google/android/material/textfield/d;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
  .registers 3
  .line 1
    iget-object p1, p0, Lcom/google/android/material/textfield/d$c;->b:Lcom/google/android/material/textfield/d;
    iget-object p1, p1, Lcom/google/android/material/textfield/e;->a:Lcom/google/android/material/textfield/TextInputLayout;
    invoke-virtual { p1, p2 }, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconActivated(Z)V
    if-nez p2, :L0
  .line 2
    iget-object p1, p0, Lcom/google/android/material/textfield/d$c;->b:Lcom/google/android/material/textfield/d;
    const/4 p2, 0
    invoke-static { p1, p2 }, Lcom/google/android/material/textfield/d;->o(Lcom/google/android/material/textfield/d;Z)V
  .line 3
    iget-object p1, p0, Lcom/google/android/material/textfield/d$c;->b:Lcom/google/android/material/textfield/d;
    invoke-static { p1, p2 }, Lcom/google/android/material/textfield/d;->p(Lcom/google/android/material/textfield/d;Z)Z
  :L0
    return-void
.end method
