.class Lcom/google/android/material/textfield/d$e;
.super Ljava/lang/Object;
.implements Lcom/google/android/material/textfield/TextInputLayout$f;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcom/google/android/material/textfield/d;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Lcom/google/android/material/textfield/d;

.method constructor <init>(Lcom/google/android/material/textfield/d;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/d$e;->a:Lcom/google/android/material/textfield/d;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(Lcom/google/android/material/textfield/TextInputLayout;)V
  .registers 5
  .line 1
    invoke-virtual { p1 }, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;
    move-result-object v0
    invoke-static { v0 }, Lcom/google/android/material/textfield/d;->e(Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;
    move-result-object v0
  .line 2
    iget-object v1, p0, Lcom/google/android/material/textfield/d$e;->a:Lcom/google/android/material/textfield/d;
    invoke-static { v1, v0 }, Lcom/google/android/material/textfield/d;->r(Lcom/google/android/material/textfield/d;Landroid/widget/AutoCompleteTextView;)V
  .line 3
    iget-object v1, p0, Lcom/google/android/material/textfield/d$e;->a:Lcom/google/android/material/textfield/d;
    invoke-static { v1, v0 }, Lcom/google/android/material/textfield/d;->s(Lcom/google/android/material/textfield/d;Landroid/widget/AutoCompleteTextView;)V
  .line 4
    iget-object v1, p0, Lcom/google/android/material/textfield/d$e;->a:Lcom/google/android/material/textfield/d;
    invoke-static { v1, v0 }, Lcom/google/android/material/textfield/d;->t(Lcom/google/android/material/textfield/d;Landroid/widget/AutoCompleteTextView;)V
    const/4 v1, 0
  .line 5
    invoke-virtual { v0, v1 }, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V
  .line 6
    iget-object v1, p0, Lcom/google/android/material/textfield/d$e;->a:Lcom/google/android/material/textfield/d;
    invoke-static { v1 }, Lcom/google/android/material/textfield/d;->u(Lcom/google/android/material/textfield/d;)Landroid/text/TextWatcher;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/widget/AutoCompleteTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V
  .line 7
    iget-object v1, p0, Lcom/google/android/material/textfield/d$e;->a:Lcom/google/android/material/textfield/d;
    invoke-static { v1 }, Lcom/google/android/material/textfield/d;->u(Lcom/google/android/material/textfield/d;)Landroid/text/TextWatcher;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V
    const/4 v1, 1
  .line 8
    invoke-virtual { p1, v1 }, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconCheckable(Z)V
    const/4 v2, 0
  .line 9
    invoke-virtual { p1, v2 }, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V
  .line 10
    invoke-static { v0 }, Lcom/google/android/material/textfield/d;->n(Landroid/widget/EditText;)Z
    move-result v0
    if-nez v0, :L0
  .line 11
    iget-object v0, p0, Lcom/google/android/material/textfield/d$e;->a:Lcom/google/android/material/textfield/d;
    iget-object v0, v0, Lcom/google/android/material/textfield/e;->c:Lcom/google/android/material/internal/CheckableImageButton;
    const/4 v2, 2
    invoke-static { v0, v2 }, Landroidx/core/view/v;->x0(Landroid/view/View;I)V
  :L0
  .line 12
    iget-object v0, p0, Lcom/google/android/material/textfield/d$e;->a:Lcom/google/android/material/textfield/d;
    invoke-static { v0 }, Lcom/google/android/material/textfield/d;->g(Lcom/google/android/material/textfield/d;)Lcom/google/android/material/textfield/TextInputLayout$e;
    move-result-object v0
    invoke-virtual { p1, v0 }, Lcom/google/android/material/textfield/TextInputLayout;->setTextInputAccessibilityDelegate(Lcom/google/android/material/textfield/TextInputLayout$e;)V
  .line 13
    invoke-virtual { p1, v1 }, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V
    return-void
.end method
