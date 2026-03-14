.class Lcom/google/android/material/textfield/d$a$a;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/google/android/material/textfield/d$a;->afterTextChanged(Landroid/text/Editable;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Landroid/widget/AutoCompleteTextView;

.field final synthetic c:Lcom/google/android/material/textfield/d$a;

.method constructor <init>(Lcom/google/android/material/textfield/d$a;Landroid/widget/AutoCompleteTextView;)V
  .registers 3
  .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/d$a$a;->c:Lcom/google/android/material/textfield/d$a;
    iput-object p2, p0, Lcom/google/android/material/textfield/d$a$a;->b:Landroid/widget/AutoCompleteTextView;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/d$a$a;->b:Landroid/widget/AutoCompleteTextView;
    invoke-virtual { v0 }, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z
    move-result v0
  .line 2
    iget-object v1, p0, Lcom/google/android/material/textfield/d$a$a;->c:Lcom/google/android/material/textfield/d$a;
    iget-object v1, v1, Lcom/google/android/material/textfield/d$a;->b:Lcom/google/android/material/textfield/d;
    invoke-static { v1, v0 }, Lcom/google/android/material/textfield/d;->o(Lcom/google/android/material/textfield/d;Z)V
  .line 3
    iget-object v1, p0, Lcom/google/android/material/textfield/d$a$a;->c:Lcom/google/android/material/textfield/d$a;
    iget-object v1, v1, Lcom/google/android/material/textfield/d$a;->b:Lcom/google/android/material/textfield/d;
    invoke-static { v1, v0 }, Lcom/google/android/material/textfield/d;->p(Lcom/google/android/material/textfield/d;Z)Z
    return-void
.end method
