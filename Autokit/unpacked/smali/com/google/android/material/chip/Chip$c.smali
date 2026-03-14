.class Lcom/google/android/material/chip/Chip$c;
.super Lc/i/b/a;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcom/google/android/material/chip/Chip;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 2
  name = "c"
.end annotation

.field final synthetic q:Lcom/google/android/material/chip/Chip;

.method constructor <init>(Lcom/google/android/material/chip/Chip;Lcom/google/android/material/chip/Chip;)V
  .registers 3
  .line 1
    iput-object p1, p0, Lcom/google/android/material/chip/Chip$c;->q:Lcom/google/android/material/chip/Chip;
  .line 2
    invoke-direct { p0, p2 }, Lc/i/b/a;-><init>(Landroid/view/View;)V
    return-void
.end method

.method protected B(FF)I
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip$c;->q:Lcom/google/android/material/chip/Chip;
    invoke-static { v0 }, Lcom/google/android/material/chip/Chip;->c(Lcom/google/android/material/chip/Chip;)Z
    move-result v0
    if-eqz v0, :L0
    iget-object v0, p0, Lcom/google/android/material/chip/Chip$c;->q:Lcom/google/android/material/chip/Chip;
    invoke-static { v0 }, Lcom/google/android/material/chip/Chip;->d(Lcom/google/android/material/chip/Chip;)Landroid/graphics/RectF;
    move-result-object v0
    invoke-virtual { v0, p1, p2 }, Landroid/graphics/RectF;->contains(FF)Z
    move-result p1
    if-eqz p1, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    return p1
.end method

.method protected C(Ljava/util/List;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/List<",
      "Ljava/lang/Integer;",
      ">;)V"
    }
  .end annotation
  .registers 3
    const/4 v0, 0
  .line 1
    invoke-static { v0 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v0
    invoke-interface { p1, v0 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 2
    iget-object v0, p0, Lcom/google/android/material/chip/Chip$c;->q:Lcom/google/android/material/chip/Chip;
    invoke-static { v0 }, Lcom/google/android/material/chip/Chip;->c(Lcom/google/android/material/chip/Chip;)Z
    move-result v0
    if-eqz v0, :L0
    iget-object v0, p0, Lcom/google/android/material/chip/Chip$c;->q:Lcom/google/android/material/chip/Chip;
    invoke-virtual { v0 }, Lcom/google/android/material/chip/Chip;->s()Z
    move-result v0
    if-eqz v0, :L0
    iget-object v0, p0, Lcom/google/android/material/chip/Chip$c;->q:Lcom/google/android/material/chip/Chip;
    invoke-static { v0 }, Lcom/google/android/material/chip/Chip;->e(Lcom/google/android/material/chip/Chip;)Landroid/view/View$OnClickListener;
    move-result-object v0
    if-eqz v0, :L0
    const/4 v0, 1
  .line 3
    invoke-static { v0 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v0
    invoke-interface { p1, v0 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  :L0
    return-void
.end method

.method protected J(IILandroid/os/Bundle;)Z
  .registers 4
    const/16 p3, 16
    if-ne p2, p3, :L1
    if-nez p1, :L0
  .line 1
    iget-object p1, p0, Lcom/google/android/material/chip/Chip$c;->q:Lcom/google/android/material/chip/Chip;
    invoke-virtual { p1 }, Landroid/widget/CheckBox;->performClick()Z
    move-result p1
    return p1
  :L0
    const/4 p2, 1
    if-ne p1, p2, :L1
  .line 2
    iget-object p1, p0, Lcom/google/android/material/chip/Chip$c;->q:Lcom/google/android/material/chip/Chip;
    invoke-virtual { p1 }, Lcom/google/android/material/chip/Chip;->t()Z
    move-result p1
    return p1
  :L1
    const/4 p1, 0
    return p1
.end method

.method protected M(Landroidx/core/view/e0/c;)V
  .registers 5
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip$c;->q:Lcom/google/android/material/chip/Chip;
    invoke-virtual { v0 }, Lcom/google/android/material/chip/Chip;->r()Z
    move-result v0
    invoke-virtual { p1, v0 }, Landroidx/core/view/e0/c;->U(Z)V
  .line 2
    iget-object v0, p0, Lcom/google/android/material/chip/Chip$c;->q:Lcom/google/android/material/chip/Chip;
    invoke-virtual { v0 }, Landroid/widget/CheckBox;->isClickable()Z
    move-result v0
    invoke-virtual { p1, v0 }, Landroidx/core/view/e0/c;->X(Z)V
  .line 3
    iget-object v0, p0, Lcom/google/android/material/chip/Chip$c;->q:Lcom/google/android/material/chip/Chip;
    invoke-virtual { v0 }, Lcom/google/android/material/chip/Chip;->r()Z
    move-result v0
    if-nez v0, :L1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip$c;->q:Lcom/google/android/material/chip/Chip;
    invoke-virtual { v0 }, Landroid/widget/CheckBox;->isClickable()Z
    move-result v0
    if-eqz v0, :L0
    goto :L1
  :L0
    const-string v0, "android.view.View"
  .line 4
    invoke-virtual { p1, v0 }, Landroidx/core/view/e0/c;->W(Ljava/lang/CharSequence;)V
    goto :L4
  :L1
  .line 5
    iget-object v0, p0, Lcom/google/android/material/chip/Chip$c;->q:Lcom/google/android/material/chip/Chip;
  .line 6
    invoke-virtual { v0 }, Lcom/google/android/material/chip/Chip;->r()Z
    move-result v0
    if-eqz v0, :L2
    const-string v0, "android.widget.CompoundButton"
    goto :L3
  :L2
    const-string v0, "android.widget.Button"
  :L3
  .line 7
    invoke-virtual { p1, v0 }, Landroidx/core/view/e0/c;->W(Ljava/lang/CharSequence;)V
  :L4
  .line 8
    iget-object v0, p0, Lcom/google/android/material/chip/Chip$c;->q:Lcom/google/android/material/chip/Chip;
    invoke-virtual { v0 }, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;
    move-result-object v0
  .line 9
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 23
    if-lt v1, v2, :L5
  .line 10
    invoke-virtual { p1, v0 }, Landroidx/core/view/e0/c;->r0(Ljava/lang/CharSequence;)V
    goto :L6
  :L5
  .line 11
    invoke-virtual { p1, v0 }, Landroidx/core/view/e0/c;->a0(Ljava/lang/CharSequence;)V
  :L6
    return-void
.end method

.method protected N(ILandroidx/core/view/e0/c;)V
  .registers 9
    const-string v0, ""
    const/4 v1, 1
    if-ne p1, v1, :L3
  .line 1
    iget-object p1, p0, Lcom/google/android/material/chip/Chip$c;->q:Lcom/google/android/material/chip/Chip;
    invoke-virtual { p1 }, Lcom/google/android/material/chip/Chip;->getCloseIconContentDescription()Ljava/lang/CharSequence;
    move-result-object p1
    if-eqz p1, :L0
  .line 2
    invoke-virtual { p2, p1 }, Landroidx/core/view/e0/c;->a0(Ljava/lang/CharSequence;)V
    goto :L2
  :L0
  .line 3
    iget-object p1, p0, Lcom/google/android/material/chip/Chip$c;->q:Lcom/google/android/material/chip/Chip;
    invoke-virtual { p1 }, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;
    move-result-object p1
  .line 4
    iget-object v2, p0, Lcom/google/android/material/chip/Chip$c;->q:Lcom/google/android/material/chip/Chip;
  .line 5
    invoke-virtual { v2 }, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;
    move-result-object v2
    sget v3, Ld/c/a/a/i;->mtrl_chip_close_icon_content_description:I
    new-array v1, v1, [Ljava/lang/Object;
    const/4 v4, 0
  .line 6
    invoke-static { p1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v5
    if-nez v5, :L1
    move-object v0, p1
  :L1
    aput-object v0, v1, v4
  .line 7
    invoke-virtual { v2, v3, v1 }, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object p1
  .line 8
    invoke-virtual { p1 }, Ljava/lang/String;->trim()Ljava/lang/String;
    move-result-object p1
  .line 9
    invoke-virtual { p2, p1 }, Landroidx/core/view/e0/c;->a0(Ljava/lang/CharSequence;)V
  :L2
  .line 10
    iget-object p1, p0, Lcom/google/android/material/chip/Chip$c;->q:Lcom/google/android/material/chip/Chip;
    invoke-static { p1 }, Lcom/google/android/material/chip/Chip;->g(Lcom/google/android/material/chip/Chip;)Landroid/graphics/Rect;
    move-result-object p1
    invoke-virtual { p2, p1 }, Landroidx/core/view/e0/c;->S(Landroid/graphics/Rect;)V
  .line 11
    sget-object p1, Landroidx/core/view/e0/c$a;->e:Landroidx/core/view/e0/c$a;
    invoke-virtual { p2, p1 }, Landroidx/core/view/e0/c;->b(Landroidx/core/view/e0/c$a;)V
  .line 12
    iget-object p1, p0, Lcom/google/android/material/chip/Chip$c;->q:Lcom/google/android/material/chip/Chip;
    invoke-virtual { p1 }, Landroid/widget/CheckBox;->isEnabled()Z
    move-result p1
    invoke-virtual { p2, p1 }, Landroidx/core/view/e0/c;->b0(Z)V
    goto :L4
  :L3
  .line 13
    invoke-virtual { p2, v0 }, Landroidx/core/view/e0/c;->a0(Ljava/lang/CharSequence;)V
  .line 14
    invoke-static { }, Lcom/google/android/material/chip/Chip;->h()Landroid/graphics/Rect;
    move-result-object p1
    invoke-virtual { p2, p1 }, Landroidx/core/view/e0/c;->S(Landroid/graphics/Rect;)V
  :L4
    return-void
.end method

.method protected O(IZ)V
  .registers 4
    const/4 v0, 1
    if-ne p1, v0, :L0
  .line 1
    iget-object p1, p0, Lcom/google/android/material/chip/Chip$c;->q:Lcom/google/android/material/chip/Chip;
    invoke-static { p1, p2 }, Lcom/google/android/material/chip/Chip;->f(Lcom/google/android/material/chip/Chip;Z)Z
  .line 2
    iget-object p1, p0, Lcom/google/android/material/chip/Chip$c;->q:Lcom/google/android/material/chip/Chip;
    invoke-virtual { p1 }, Landroid/widget/CheckBox;->refreshDrawableState()V
  :L0
    return-void
.end method
