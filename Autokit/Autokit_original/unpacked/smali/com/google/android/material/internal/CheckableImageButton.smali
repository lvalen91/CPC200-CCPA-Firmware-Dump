.class public Lcom/google/android/material/internal/CheckableImageButton;
.super Landroidx/appcompat/widget/l;
.implements Landroid/widget/Checkable;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcom/google/android/material/internal/CheckableImageButton$b;
  }
.end annotation

.field private final static g:[I

.field private d:Z

.field private e:Z

.field private f:Z

.method static constructor <clinit>()V
  .registers 3
    const/4 v0, 1
    new-array v0, v0, [I
    const/4 v1, 0
    const v2, 16842912
    aput v2, v0, v1
  .line 1
    sput-object v0, Lcom/google/android/material/internal/CheckableImageButton;->g:[I
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 4
  .line 1
    sget v0, Lc/a/a;->imageButtonStyle:I
    invoke-direct { p0, p1, p2, v0 }, Lcom/google/android/material/internal/CheckableImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .registers 4
  .line 2
    invoke-direct { p0, p1, p2, p3 }, Landroidx/appcompat/widget/l;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    const/4 p1, 1
  .line 3
    iput-boolean p1, p0, Lcom/google/android/material/internal/CheckableImageButton;->e:Z
  .line 4
    iput-boolean p1, p0, Lcom/google/android/material/internal/CheckableImageButton;->f:Z
  .line 5
    new-instance p1, Lcom/google/android/material/internal/CheckableImageButton$a;
    invoke-direct { p1, p0 }, Lcom/google/android/material/internal/CheckableImageButton$a;-><init>(Lcom/google/android/material/internal/CheckableImageButton;)V
    invoke-static { p0, p1 }, Landroidx/core/view/v;->o0(Landroid/view/View;Landroidx/core/view/a;)V
    return-void
.end method

.method public a()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Lcom/google/android/material/internal/CheckableImageButton;->e:Z
    return v0
.end method

.method public isChecked()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Lcom/google/android/material/internal/CheckableImageButton;->d:Z
    return v0
.end method

.method public onCreateDrawableState(I)[I
  .registers 3
  .line 1
    iget-boolean v0, p0, Lcom/google/android/material/internal/CheckableImageButton;->d:Z
    if-eqz v0, :L0
  .line 2
    sget-object v0, Lcom/google/android/material/internal/CheckableImageButton;->g:[I
    array-length v0, v0
    add-int/2addr p1, v0
  .line 3
    invoke-super { p0, p1 }, Landroid/widget/ImageButton;->onCreateDrawableState(I)[I
    move-result-object p1
    sget-object v0, Lcom/google/android/material/internal/CheckableImageButton;->g:[I
  .line 4
    invoke-static { p1, v0 }, Landroid/widget/ImageButton;->mergeDrawableStates([I[I)[I
    move-result-object p1
    return-object p1
  :L0
  .line 5
    invoke-super { p0, p1 }, Landroid/widget/ImageButton;->onCreateDrawableState(I)[I
    move-result-object p1
    return-object p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
  .registers 3
  .line 1
    instance-of v0, p1, Lcom/google/android/material/internal/CheckableImageButton$b;
    if-nez v0, :L0
  .line 2
    invoke-super { p0, p1 }, Landroid/widget/ImageButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V
    return-void
  :L0
  .line 3
    check-cast p1, Lcom/google/android/material/internal/CheckableImageButton$b;
  .line 4
    invoke-virtual { p1 }, Lc/i/a/a;->j()Landroid/os/Parcelable;
    move-result-object v0
    invoke-super { p0, v0 }, Landroid/widget/ImageButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V
  .line 5
    iget-boolean p1, p1, Lcom/google/android/material/internal/CheckableImageButton$b;->d:Z
    invoke-virtual { p0, p1 }, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
  .registers 3
  .line 1
    invoke-super { p0 }, Landroid/widget/ImageButton;->onSaveInstanceState()Landroid/os/Parcelable;
    move-result-object v0
  .line 2
    new-instance v1, Lcom/google/android/material/internal/CheckableImageButton$b;
    invoke-direct { v1, v0 }, Lcom/google/android/material/internal/CheckableImageButton$b;-><init>(Landroid/os/Parcelable;)V
  .line 3
    iget-boolean v0, p0, Lcom/google/android/material/internal/CheckableImageButton;->d:Z
    iput-boolean v0, v1, Lcom/google/android/material/internal/CheckableImageButton$b;->d:Z
    return-object v1
.end method

.method public setCheckable(Z)V
  .registers 3
  .line 1
    iget-boolean v0, p0, Lcom/google/android/material/internal/CheckableImageButton;->e:Z
    if-eq v0, p1, :L0
  .line 2
    iput-boolean p1, p0, Lcom/google/android/material/internal/CheckableImageButton;->e:Z
    const/4 p1, 0
  .line 3
    invoke-virtual { p0, p1 }, Landroid/widget/ImageButton;->sendAccessibilityEvent(I)V
  :L0
    return-void
.end method

.method public setChecked(Z)V
  .registers 3
  .line 1
    iget-boolean v0, p0, Lcom/google/android/material/internal/CheckableImageButton;->e:Z
    if-eqz v0, :L0
    iget-boolean v0, p0, Lcom/google/android/material/internal/CheckableImageButton;->d:Z
    if-eq v0, p1, :L0
  .line 2
    iput-boolean p1, p0, Lcom/google/android/material/internal/CheckableImageButton;->d:Z
  .line 3
    invoke-virtual { p0 }, Landroid/widget/ImageButton;->refreshDrawableState()V
    const/16 p1, 2048
  .line 4
    invoke-virtual { p0, p1 }, Landroid/widget/ImageButton;->sendAccessibilityEvent(I)V
  :L0
    return-void
.end method

.method public setPressable(Z)V
  .registers 2
  .line 1
    iput-boolean p1, p0, Lcom/google/android/material/internal/CheckableImageButton;->f:Z
    return-void
.end method

.method public setPressed(Z)V
  .registers 3
  .line 1
    iget-boolean v0, p0, Lcom/google/android/material/internal/CheckableImageButton;->f:Z
    if-eqz v0, :L0
  .line 2
    invoke-super { p0, p1 }, Landroid/widget/ImageButton;->setPressed(Z)V
  :L0
    return-void
.end method

.method public toggle()V
  .registers 2
  .line 1
    iget-boolean v0, p0, Lcom/google/android/material/internal/CheckableImageButton;->d:Z
    xor-int/lit8 v0, v0, 1
    invoke-virtual { p0, v0 }, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V
    return-void
.end method
