.class Lcom/google/android/material/textfield/d$f;
.super Ljava/lang/Object;
.implements Lcom/google/android/material/textfield/TextInputLayout$g;
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
    iput-object p1, p0, Lcom/google/android/material/textfield/d$f;->a:Lcom/google/android/material/textfield/d;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(Lcom/google/android/material/textfield/TextInputLayout;I)V
  .registers 5
  .line 1
    invoke-virtual { p1 }, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;
    move-result-object p1
    check-cast p1, Landroid/widget/AutoCompleteTextView;
    if-eqz p1, :L1
    const/4 v0, 3
    if-ne p2, v0, :L1
  .line 2
    new-instance p2, Lcom/google/android/material/textfield/d$f$a;
    invoke-direct { p2, p0, p1 }, Lcom/google/android/material/textfield/d$f$a;-><init>(Lcom/google/android/material/textfield/d$f;Landroid/widget/AutoCompleteTextView;)V
    invoke-virtual { p1, p2 }, Landroid/widget/AutoCompleteTextView;->post(Ljava/lang/Runnable;)Z
  .line 3
    invoke-virtual { p1 }, Landroid/widget/AutoCompleteTextView;->getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;
    move-result-object p2
    iget-object v0, p0, Lcom/google/android/material/textfield/d$f;->a:Lcom/google/android/material/textfield/d;
    invoke-static { v0 }, Lcom/google/android/material/textfield/d;->h(Lcom/google/android/material/textfield/d;)Landroid/view/View$OnFocusChangeListener;
    move-result-object v0
    const/4 v1, 0
    if-ne p2, v0, :L0
  .line 4
    invoke-virtual { p1, v1 }, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
  :L0
  .line 5
    invoke-virtual { p1, v1 }, Landroid/widget/AutoCompleteTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
  .line 6
    invoke-static { }, Lcom/google/android/material/textfield/d;->i()Z
    move-result p2
    if-eqz p2, :L1
  .line 7
    invoke-virtual { p1, v1 }, Landroid/widget/AutoCompleteTextView;->setOnDismissListener(Landroid/widget/AutoCompleteTextView$OnDismissListener;)V
  :L1
    return-void
.end method
