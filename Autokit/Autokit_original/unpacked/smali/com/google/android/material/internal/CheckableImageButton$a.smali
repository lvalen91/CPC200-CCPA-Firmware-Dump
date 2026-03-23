.class Lcom/google/android/material/internal/CheckableImageButton$a;
.super Landroidx/core/view/a;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/google/android/material/internal/CheckableImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic d:Lcom/google/android/material/internal/CheckableImageButton;

.method constructor <init>(Lcom/google/android/material/internal/CheckableImageButton;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/google/android/material/internal/CheckableImageButton$a;->d:Lcom/google/android/material/internal/CheckableImageButton;
    invoke-direct { p0 }, Landroidx/core/view/a;-><init>()V
    return-void
.end method

.method public f(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
  .registers 3
  .line 1
    invoke-super { p0, p1, p2 }, Landroidx/core/view/a;->f(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
  .line 2
    iget-object p1, p0, Lcom/google/android/material/internal/CheckableImageButton$a;->d:Lcom/google/android/material/internal/CheckableImageButton;
    invoke-virtual { p1 }, Lcom/google/android/material/internal/CheckableImageButton;->isChecked()Z
    move-result p1
    invoke-virtual { p2, p1 }, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V
    return-void
.end method

.method public g(Landroid/view/View;Landroidx/core/view/e0/c;)V
  .registers 3
  .line 1
    invoke-super { p0, p1, p2 }, Landroidx/core/view/a;->g(Landroid/view/View;Landroidx/core/view/e0/c;)V
  .line 2
    iget-object p1, p0, Lcom/google/android/material/internal/CheckableImageButton$a;->d:Lcom/google/android/material/internal/CheckableImageButton;
    invoke-virtual { p1 }, Lcom/google/android/material/internal/CheckableImageButton;->a()Z
    move-result p1
    invoke-virtual { p2, p1 }, Landroidx/core/view/e0/c;->U(Z)V
  .line 3
    iget-object p1, p0, Lcom/google/android/material/internal/CheckableImageButton$a;->d:Lcom/google/android/material/internal/CheckableImageButton;
    invoke-virtual { p1 }, Lcom/google/android/material/internal/CheckableImageButton;->isChecked()Z
    move-result p1
    invoke-virtual { p2, p1 }, Landroidx/core/view/e0/c;->V(Z)V
    return-void
.end method
