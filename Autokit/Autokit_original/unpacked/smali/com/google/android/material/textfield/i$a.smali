.class Lcom/google/android/material/textfield/i$a;
.super Lcom/google/android/material/internal/i;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcom/google/android/material/textfield/i;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcom/google/android/material/textfield/i;

.method constructor <init>(Lcom/google/android/material/textfield/i;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/i$a;->b:Lcom/google/android/material/textfield/i;
    invoke-direct { p0 }, Lcom/google/android/material/internal/i;-><init>()V
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
  .registers 5
  .line 1
    iget-object p1, p0, Lcom/google/android/material/textfield/i$a;->b:Lcom/google/android/material/textfield/i;
    iget-object p2, p1, Lcom/google/android/material/textfield/e;->c:Lcom/google/android/material/internal/CheckableImageButton;
    invoke-static { p1 }, Lcom/google/android/material/textfield/i;->e(Lcom/google/android/material/textfield/i;)Z
    move-result p1
    xor-int/lit8 p1, p1, 1
    invoke-virtual { p2, p1 }, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V
    return-void
.end method
