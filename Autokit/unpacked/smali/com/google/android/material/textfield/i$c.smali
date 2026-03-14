.class Lcom/google/android/material/textfield/i$c;
.super Ljava/lang/Object;
.implements Lcom/google/android/material/textfield/TextInputLayout$g;
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
    iput-object p1, p0, Lcom/google/android/material/textfield/i$c;->a:Lcom/google/android/material/textfield/i;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(Lcom/google/android/material/textfield/TextInputLayout;I)V
  .registers 4
  .line 1
    invoke-virtual { p1 }, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;
    move-result-object p1
    if-eqz p1, :L0
    const/4 v0, 1
    if-ne p2, v0, :L0
  .line 2
    invoke-static { }, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;
    move-result-object p2
    invoke-virtual { p1, p2 }, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V
  .line 3
    new-instance p2, Lcom/google/android/material/textfield/i$c$a;
    invoke-direct { p2, p0, p1 }, Lcom/google/android/material/textfield/i$c$a;-><init>(Lcom/google/android/material/textfield/i$c;Landroid/widget/EditText;)V
    invoke-virtual { p1, p2 }, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z
  :L0
    return-void
.end method
