.class public Landroidx/appcompat/widget/DialogTitle;
.super Landroidx/appcompat/widget/x;
.source "SourceFile"

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 3
  .line 1
    invoke-direct { p0, p1, p2 }, Landroidx/appcompat/widget/x;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    return-void
.end method

.method protected onMeasure(II)V
  .registers 9
  .line 1
    invoke-super { p0, p1, p2 }, Landroidx/appcompat/widget/x;->onMeasure(II)V
  .line 2
    invoke-virtual { p0 }, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;
    move-result-object v0
    if-eqz v0, :L1
  .line 3
    invoke-virtual { v0 }, Landroid/text/Layout;->getLineCount()I
    move-result v1
    if-lez v1, :L1
    add-int/lit8 v1, v1, -1
  .line 4
    invoke-virtual { v0, v1 }, Landroid/text/Layout;->getEllipsisCount(I)I
    move-result v0
    if-lez v0, :L1
    const/4 v0, 0
  .line 5
    invoke-virtual { p0, v0 }, Landroid/widget/TextView;->setSingleLine(Z)V
    const/4 v1, 2
  .line 6
    invoke-virtual { p0, v1 }, Landroid/widget/TextView;->setMaxLines(I)V
  .line 7
    invoke-virtual { p0 }, Landroid/widget/TextView;->getContext()Landroid/content/Context;
    move-result-object v1
    const/4 v2, 0
    sget-object v3, Lc/a/j;->TextAppearance:[I
    const v4, 16842817
    const v5, 16973892
    invoke-virtual { v1, v2, v3, v4, v5 }, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    move-result-object v1
  .line 8
    sget v2, Lc/a/j;->TextAppearance_android_textSize:I
    invoke-virtual { v1, v2, v0 }, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
    move-result v2
    if-eqz v2, :L0
    int-to-float v2, v2
  .line 9
    invoke-virtual { p0, v0, v2 }, Landroidx/appcompat/widget/x;->setTextSize(IF)V
  :L0
  .line 10
    invoke-virtual { v1 }, Landroid/content/res/TypedArray;->recycle()V
  .line 11
    invoke-super { p0, p1, p2 }, Landroidx/appcompat/widget/x;->onMeasure(II)V
  :L1
    return-void
.end method
