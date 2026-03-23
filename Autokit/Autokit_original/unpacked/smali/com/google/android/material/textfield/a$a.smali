.class Lcom/google/android/material/textfield/a$a;
.super Ljava/lang/Object;
.implements Landroid/text/TextWatcher;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcom/google/android/material/textfield/a;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcom/google/android/material/textfield/a;

.method constructor <init>(Lcom/google/android/material/textfield/a;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/a$a;->b:Lcom/google/android/material/textfield/a;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/a$a;->b:Lcom/google/android/material/textfield/a;
    iget-object v0, v0, Lcom/google/android/material/textfield/e;->a:Lcom/google/android/material/textfield/TextInputLayout;
    invoke-virtual { v0 }, Lcom/google/android/material/textfield/TextInputLayout;->getSuffixText()Ljava/lang/CharSequence;
    move-result-object v0
    if-eqz v0, :L0
    return-void
  :L0
  .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/a$a;->b:Lcom/google/android/material/textfield/a;
    iget-object v1, v0, Lcom/google/android/material/textfield/e;->a:Lcom/google/android/material/textfield/TextInputLayout;
    invoke-virtual { v1 }, Landroid/widget/LinearLayout;->hasFocus()Z
    move-result v1
    if-eqz v1, :L1
    invoke-static { p1 }, Lcom/google/android/material/textfield/a;->e(Landroid/text/Editable;)Z
    move-result p1
    if-eqz p1, :L1
    const/4 p1, 1
    goto :L2
  :L1
    const/4 p1, 0
  :L2
    invoke-static { v0, p1 }, Lcom/google/android/material/textfield/a;->f(Lcom/google/android/material/textfield/a;Z)V
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
  .registers 5
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
  .registers 5
    return-void
.end method
