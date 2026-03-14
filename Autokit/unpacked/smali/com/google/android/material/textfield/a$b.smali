.class Lcom/google/android/material/textfield/a$b;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnFocusChangeListener;
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
    iput-object p1, p0, Lcom/google/android/material/textfield/a$b;->b:Lcom/google/android/material/textfield/a;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
  .registers 5
  .line 1
    check-cast p1, Landroid/widget/EditText;
    invoke-virtual { p1 }, Landroid/widget/EditText;->getText()Landroid/text/Editable;
    move-result-object p1
    invoke-static { p1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result p1
    const/4 v0, 1
    xor-int/2addr p1, v0
  .line 2
    iget-object v1, p0, Lcom/google/android/material/textfield/a$b;->b:Lcom/google/android/material/textfield/a;
    if-eqz p1, :L0
    if-eqz p2, :L0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    invoke-static { v1, v0 }, Lcom/google/android/material/textfield/a;->f(Lcom/google/android/material/textfield/a;Z)V
    return-void
.end method
