.class Lcom/google/android/material/textfield/TextInputLayout$a;
.super Ljava/lang/Object;
.implements Landroid/text/TextWatcher;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/google/android/material/textfield/TextInputLayout;->setEditText(Landroid/widget/EditText;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcom/google/android/material/textfield/TextInputLayout;

.method constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout$a;->b:Lcom/google/android/material/textfield/TextInputLayout;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout$a;->b:Lcom/google/android/material/textfield/TextInputLayout;
    invoke-static { v0 }, Lcom/google/android/material/textfield/TextInputLayout;->a(Lcom/google/android/material/textfield/TextInputLayout;)Z
    move-result v1
    xor-int/lit8 v1, v1, 1
    invoke-virtual { v0, v1 }, Lcom/google/android/material/textfield/TextInputLayout;->v0(Z)V
  .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout$a;->b:Lcom/google/android/material/textfield/TextInputLayout;
    iget-boolean v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->k:Z
    if-eqz v1, :L0
  .line 3
    invoke-interface { p1 }, Landroid/text/Editable;->length()I
    move-result v1
    invoke-virtual { v0, v1 }, Lcom/google/android/material/textfield/TextInputLayout;->n0(I)V
  :L0
  .line 4
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout$a;->b:Lcom/google/android/material/textfield/TextInputLayout;
    invoke-static { v0 }, Lcom/google/android/material/textfield/TextInputLayout;->b(Lcom/google/android/material/textfield/TextInputLayout;)Z
    move-result v0
    if-eqz v0, :L1
  .line 5
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout$a;->b:Lcom/google/android/material/textfield/TextInputLayout;
    invoke-interface { p1 }, Landroid/text/Editable;->length()I
    move-result p1
    invoke-static { v0, p1 }, Lcom/google/android/material/textfield/TextInputLayout;->c(Lcom/google/android/material/textfield/TextInputLayout;I)V
  :L1
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
