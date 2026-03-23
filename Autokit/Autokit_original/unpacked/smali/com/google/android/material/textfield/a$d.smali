.class Lcom/google/android/material/textfield/a$d;
.super Ljava/lang/Object;
.implements Lcom/google/android/material/textfield/TextInputLayout$g;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcom/google/android/material/textfield/a;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Lcom/google/android/material/textfield/a;

.method constructor <init>(Lcom/google/android/material/textfield/a;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/a$d;->a:Lcom/google/android/material/textfield/a;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(Lcom/google/android/material/textfield/TextInputLayout;I)V
  .registers 4
  .line 1
    invoke-virtual { p1 }, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;
    move-result-object p1
    if-eqz p1, :L0
    const/4 v0, 2
    if-ne p2, v0, :L0
  .line 2
    new-instance p2, Lcom/google/android/material/textfield/a$d$a;
    invoke-direct { p2, p0, p1 }, Lcom/google/android/material/textfield/a$d$a;-><init>(Lcom/google/android/material/textfield/a$d;Landroid/widget/EditText;)V
    invoke-virtual { p1, p2 }, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z
  .line 3
    invoke-virtual { p1 }, Landroid/widget/EditText;->getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;
    move-result-object p2
    iget-object v0, p0, Lcom/google/android/material/textfield/a$d;->a:Lcom/google/android/material/textfield/a;
    invoke-static { v0 }, Lcom/google/android/material/textfield/a;->g(Lcom/google/android/material/textfield/a;)Landroid/view/View$OnFocusChangeListener;
    move-result-object v0
    if-ne p2, v0, :L0
    const/4 p2, 0
  .line 4
    invoke-virtual { p1, p2 }, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
  :L0
    return-void
.end method
