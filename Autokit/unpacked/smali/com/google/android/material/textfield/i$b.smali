.class Lcom/google/android/material/textfield/i$b;
.super Ljava/lang/Object;
.implements Lcom/google/android/material/textfield/TextInputLayout$f;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcom/google/android/material/textfield/i;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Lcom/google/android/material/textfield/i;

.method constructor <init>(Lcom/google/android/material/textfield/i;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/i$b;->a:Lcom/google/android/material/textfield/i;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(Lcom/google/android/material/textfield/TextInputLayout;)V
  .registers 5
  .line 1
    invoke-virtual { p1 }, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;
    move-result-object v0
    const/4 v1, 1
  .line 2
    invoke-virtual { p1, v1 }, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V
  .line 3
    invoke-virtual { p1, v1 }, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconCheckable(Z)V
  .line 4
    iget-object p1, p0, Lcom/google/android/material/textfield/i$b;->a:Lcom/google/android/material/textfield/i;
    iget-object v2, p1, Lcom/google/android/material/textfield/e;->c:Lcom/google/android/material/internal/CheckableImageButton;
    invoke-static { p1 }, Lcom/google/android/material/textfield/i;->e(Lcom/google/android/material/textfield/i;)Z
    move-result p1
    xor-int/2addr p1, v1
    invoke-virtual { v2, p1 }, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V
  .line 5
    iget-object p1, p0, Lcom/google/android/material/textfield/i$b;->a:Lcom/google/android/material/textfield/i;
    invoke-static { p1 }, Lcom/google/android/material/textfield/i;->f(Lcom/google/android/material/textfield/i;)Landroid/text/TextWatcher;
    move-result-object p1
    invoke-virtual { v0, p1 }, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V
  .line 6
    iget-object p1, p0, Lcom/google/android/material/textfield/i$b;->a:Lcom/google/android/material/textfield/i;
    invoke-static { p1 }, Lcom/google/android/material/textfield/i;->f(Lcom/google/android/material/textfield/i;)Landroid/text/TextWatcher;
    move-result-object p1
    invoke-virtual { v0, p1 }, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V
    return-void
.end method
