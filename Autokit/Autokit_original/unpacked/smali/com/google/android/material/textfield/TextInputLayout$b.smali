.class Lcom/google/android/material/textfield/TextInputLayout$b;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/google/android/material/textfield/TextInputLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcom/google/android/material/textfield/TextInputLayout;

.method constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout$b;->b:Lcom/google/android/material/textfield/TextInputLayout;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout$b;->b:Lcom/google/android/material/textfield/TextInputLayout;
    invoke-static { v0 }, Lcom/google/android/material/textfield/TextInputLayout;->d(Lcom/google/android/material/textfield/TextInputLayout;)Lcom/google/android/material/internal/CheckableImageButton;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/widget/ImageButton;->performClick()Z
  .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout$b;->b:Lcom/google/android/material/textfield/TextInputLayout;
    invoke-static { v0 }, Lcom/google/android/material/textfield/TextInputLayout;->d(Lcom/google/android/material/textfield/TextInputLayout;)Lcom/google/android/material/internal/CheckableImageButton;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/widget/ImageButton;->jumpDrawablesToCurrentState()V
    return-void
.end method
