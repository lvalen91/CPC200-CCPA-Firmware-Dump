.class Landroidx/appcompat/widget/c$d;
.super Landroidx/appcompat/widget/AppCompatImageView;
.implements Landroidx/appcompat/widget/ActionMenuView$a;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/widget/c;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 2
  name = "d"
.end annotation

.field final synthetic d:Landroidx/appcompat/widget/c;

.method public constructor <init>(Landroidx/appcompat/widget/c;Landroid/content/Context;)V
  .registers 5
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/c$d;->d:Landroidx/appcompat/widget/c;
  .line 2
    sget v0, Lc/a/a;->actionOverflowButtonStyle:I
    const/4 v1, 0
    invoke-direct { p0, p2, v1, v0 }, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    const/4 p2, 1
  .line 3
    invoke-virtual { p0, p2 }, Landroid/widget/ImageView;->setClickable(Z)V
  .line 4
    invoke-virtual { p0, p2 }, Landroid/widget/ImageView;->setFocusable(Z)V
    const/4 v0, 0
  .line 5
    invoke-virtual { p0, v0 }, Landroid/widget/ImageView;->setVisibility(I)V
  .line 6
    invoke-virtual { p0, p2 }, Landroid/widget/ImageView;->setEnabled(Z)V
  .line 7
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;
    move-result-object p2
    invoke-static { p0, p2 }, Landroidx/appcompat/widget/w0;->a(Landroid/view/View;Ljava/lang/CharSequence;)V
  .line 8
    new-instance p2, Landroidx/appcompat/widget/c$d$a;
    invoke-direct { p2, p0, p0, p1 }, Landroidx/appcompat/widget/c$d$a;-><init>(Landroidx/appcompat/widget/c$d;Landroid/view/View;Landroidx/appcompat/widget/c;)V
    invoke-virtual { p0, p2 }, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    return-void
.end method

.method public b()Z
  .registers 2
    const/4 v0, 0
    return v0
.end method

.method public d()Z
  .registers 2
    const/4 v0, 0
    return v0
.end method

.method public performClick()Z
  .registers 3
  .line 1
    invoke-super { p0 }, Landroid/widget/ImageView;->performClick()Z
    move-result v0
    const/4 v1, 1
    if-eqz v0, :L0
    return v1
  :L0
    const/4 v0, 0
  .line 2
    invoke-virtual { p0, v0 }, Landroid/widget/ImageView;->playSoundEffect(I)V
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/c$d;->d:Landroidx/appcompat/widget/c;
    invoke-virtual { v0 }, Landroidx/appcompat/widget/c;->K()Z
    return v1
.end method

.method protected setFrame(IIII)Z
  .registers 9
  .line 1
    invoke-super { p0, p1, p2, p3, p4 }, Landroid/widget/ImageView;->setFrame(IIII)Z
    move-result p1
  .line 2
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;
    move-result-object p2
  .line 3
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;
    move-result-object p3
    if-eqz p2, :L0
    if-eqz p3, :L0
  .line 4
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getWidth()I
    move-result p2
  .line 5
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getHeight()I
    move-result p4
  .line 6
    invoke-static { p2, p4 }, Ljava/lang/Math;->max(II)I
    move-result v0
    div-int/lit8 v0, v0, 2
  .line 7
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getPaddingLeft()I
    move-result v1
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getPaddingRight()I
    move-result v2
    sub-int/2addr v1, v2
  .line 8
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getPaddingTop()I
    move-result v2
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getPaddingBottom()I
    move-result v3
    sub-int/2addr v2, v3
    add-int/2addr p2, v1
  .line 9
    div-int/lit8 p2, p2, 2
    add-int/2addr p4, v2
  .line 10
    div-int/lit8 p4, p4, 2
    sub-int v1, p2, v0
    sub-int v2, p4, v0
    add-int/2addr p2, v0
    add-int/2addr p4, v0
  .line 11
    invoke-static { p3, v1, v2, p2, p4 }, Landroidx/core/graphics/drawable/a;->l(Landroid/graphics/drawable/Drawable;IIII)V
  :L0
    return p1
.end method
