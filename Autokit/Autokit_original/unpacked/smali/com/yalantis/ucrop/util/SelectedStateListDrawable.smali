.class public Lcom/yalantis/ucrop/util/SelectedStateListDrawable;
.super Landroid/graphics/drawable/StateListDrawable;
.source "SourceFile"

.field private mSelectionColor:I

.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
  .registers 5
  .line 1
    invoke-direct { p0 }, Landroid/graphics/drawable/StateListDrawable;-><init>()V
  .line 2
    iput p2, p0, Lcom/yalantis/ucrop/util/SelectedStateListDrawable;->mSelectionColor:I
    const/4 p2, 1
    new-array p2, p2, [I
    const v0, 16842913
    const/4 v1, 0
    aput v0, p2, v1
  .line 3
    invoke-virtual { p0, p2, p1 }, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V
    new-array p2, v1, [I
  .line 4
    invoke-virtual { p0, p2, p1 }, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V
    return-void
.end method

.method public isStateful()Z
  .registers 2
    const/4 v0, 1
    return v0
.end method

.method protected onStateChange([I)Z
  .registers 7
  .line 1
    array-length v0, p1
    const/4 v1, 0
    const/4 v2, 0
  :L0
    if-ge v1, v0, :L2
    aget v3, p1, v1
    const v4, 16842913
    if-ne v3, v4, :L1
    const/4 v2, 1
  :L1
    add-int/lit8 v1, v1, 1
    goto :L0
  :L2
    if-eqz v2, :L3
  .line 2
    iget v0, p0, Lcom/yalantis/ucrop/util/SelectedStateListDrawable;->mSelectionColor:I
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;
    invoke-super { p0, v0, v1 }, Landroid/graphics/drawable/StateListDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    goto :L4
  :L3
  .line 3
    invoke-super { p0 }, Landroid/graphics/drawable/StateListDrawable;->clearColorFilter()V
  :L4
  .line 4
    invoke-super { p0, p1 }, Landroid/graphics/drawable/StateListDrawable;->onStateChange([I)Z
    move-result p1
    return p1
.end method
