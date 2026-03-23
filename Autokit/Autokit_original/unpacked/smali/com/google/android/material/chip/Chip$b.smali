.class Lcom/google/android/material/chip/Chip$b;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/google/android/material/chip/Chip;->p()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Lcom/google/android/material/chip/Chip;

.method constructor <init>(Lcom/google/android/material/chip/Chip;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/google/android/material/chip/Chip$b;->a:Lcom/google/android/material/chip/Chip;
    invoke-direct { p0 }, Landroid/view/ViewOutlineProvider;-><init>()V
    return-void
.end method

.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
  .annotation build Landroid/annotation/TargetApi;
    value = 21
  .end annotation
  .registers 3
  .line 1
    iget-object p1, p0, Lcom/google/android/material/chip/Chip$b;->a:Lcom/google/android/material/chip/Chip;
    invoke-static { p1 }, Lcom/google/android/material/chip/Chip;->b(Lcom/google/android/material/chip/Chip;)Lcom/google/android/material/chip/a;
    move-result-object p1
    if-eqz p1, :L0
  .line 2
    iget-object p1, p0, Lcom/google/android/material/chip/Chip$b;->a:Lcom/google/android/material/chip/Chip;
    invoke-static { p1 }, Lcom/google/android/material/chip/Chip;->b(Lcom/google/android/material/chip/Chip;)Lcom/google/android/material/chip/a;
    move-result-object p1
    invoke-virtual { p1, p2 }, Lcom/google/android/material/chip/a;->getOutline(Landroid/graphics/Outline;)V
    goto :L1
  :L0
    const/4 p1, 0
  .line 3
    invoke-virtual { p2, p1 }, Landroid/graphics/Outline;->setAlpha(F)V
  :L1
    return-void
.end method
