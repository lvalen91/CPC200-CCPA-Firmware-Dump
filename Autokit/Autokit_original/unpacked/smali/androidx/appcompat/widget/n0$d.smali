.class Landroidx/appcompat/widget/n0$d;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/widget/n0;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 2
  name = "d"
.end annotation

.field private final b:[I

.field private c:Landroidx/appcompat/app/a$c;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/view/View;

.field final synthetic g:Landroidx/appcompat/widget/n0;

.method public constructor <init>(Landroidx/appcompat/widget/n0;Landroid/content/Context;Landroidx/appcompat/app/a$c;Z)V
  .registers 8
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/n0$d;->g:Landroidx/appcompat/widget/n0;
  .line 2
    sget p1, Lc/a/a;->actionBarTabStyle:I
    const/4 v0, 0
    invoke-direct { p0, p2, v0, p1 }, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    const/4 p1, 1
    new-array p1, p1, [I
    const v1, 16842964
    const/4 v2, 0
    aput v1, p1, v2
  .line 3
    iput-object p1, p0, Landroidx/appcompat/widget/n0$d;->b:[I
  .line 4
    iput-object p3, p0, Landroidx/appcompat/widget/n0$d;->c:Landroidx/appcompat/app/a$c;
  .line 5
    sget p3, Lc/a/a;->actionBarTabStyle:I
    invoke-static { p2, v0, p1, p3, v2 }, Landroidx/appcompat/widget/u0;->v(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/u0;
    move-result-object p1
  .line 6
    invoke-virtual { p1, v2 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result p2
    if-eqz p2, :L0
  .line 7
    invoke-virtual { p1, v2 }, Landroidx/appcompat/widget/u0;->g(I)Landroid/graphics/drawable/Drawable;
    move-result-object p2
    invoke-virtual { p0, p2 }, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
  :L0
  .line 8
    invoke-virtual { p1 }, Landroidx/appcompat/widget/u0;->w()V
    if-eqz p4, :L1
    const p1, 8388627
  .line 9
    invoke-virtual { p0, p1 }, Landroid/widget/LinearLayout;->setGravity(I)V
  :L1
  .line 10
    invoke-virtual { p0 }, Landroidx/appcompat/widget/n0$d;->c()V
    return-void
.end method

.method public a(Landroidx/appcompat/app/a$c;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/n0$d;->c:Landroidx/appcompat/app/a$c;
  .line 2
    invoke-virtual { p0 }, Landroidx/appcompat/widget/n0$d;->c()V
    return-void
.end method

.method public b()Landroidx/appcompat/app/a$c;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/n0$d;->c:Landroidx/appcompat/app/a$c;
    return-object v0
.end method

.method public c()V
  .registers 11
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/n0$d;->c:Landroidx/appcompat/app/a$c;
  .line 2
    invoke-virtual { v0 }, Landroidx/appcompat/app/a$c;->b()Landroid/view/View;
    move-result-object v1
    const/16 v2, 8
    const/4 v3, 0
    if-eqz v1, :L3
  .line 3
    invoke-virtual { v1 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v0
    if-eq v0, p0, :L1
    if-eqz v0, :L0
  .line 4
    check-cast v0, Landroid/view/ViewGroup;
    invoke-virtual { v0, v1 }, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
  :L0
  .line 5
    invoke-virtual { p0, v1 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  :L1
  .line 6
    iput-object v1, p0, Landroidx/appcompat/widget/n0$d;->f:Landroid/view/View;
  .line 7
    iget-object v0, p0, Landroidx/appcompat/widget/n0$d;->d:Landroid/widget/TextView;
    if-eqz v0, :L2
    invoke-virtual { v0, v2 }, Landroid/widget/TextView;->setVisibility(I)V
  :L2
  .line 8
    iget-object v0, p0, Landroidx/appcompat/widget/n0$d;->e:Landroid/widget/ImageView;
    if-eqz v0, :L14
  .line 9
    invoke-virtual { v0, v2 }, Landroid/widget/ImageView;->setVisibility(I)V
  .line 10
    iget-object v0, p0, Landroidx/appcompat/widget/n0$d;->e:Landroid/widget/ImageView;
    invoke-virtual { v0, v3 }, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    goto/16 :L14
  :L3
  .line 11
    iget-object v1, p0, Landroidx/appcompat/widget/n0$d;->f:Landroid/view/View;
    if-eqz v1, :L4
  .line 12
    invoke-virtual { p0, v1 }, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V
  .line 13
    iput-object v3, p0, Landroidx/appcompat/widget/n0$d;->f:Landroid/view/View;
  :L4
  .line 14
    invoke-virtual { v0 }, Landroidx/appcompat/app/a$c;->c()Landroid/graphics/drawable/Drawable;
    move-result-object v1
  .line 15
    invoke-virtual { v0 }, Landroidx/appcompat/app/a$c;->d()Ljava/lang/CharSequence;
    move-result-object v4
    const/16 v5, 16
    const/4 v6, 0
    const/4 v7, -2
    if-eqz v1, :L6
  .line 16
    iget-object v8, p0, Landroidx/appcompat/widget/n0$d;->e:Landroid/widget/ImageView;
    if-nez v8, :L5
  .line 17
    new-instance v8, Landroidx/appcompat/widget/AppCompatImageView;
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;
    move-result-object v9
    invoke-direct { v8, v9 }, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V
  .line 18
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct { v9, v7, v7 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
  .line 19
    iput v5, v9, Landroid/widget/LinearLayout$LayoutParams;->gravity:I
  .line 20
    invoke-virtual { v8, v9 }, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  .line 21
    invoke-virtual { p0, v8, v6 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V
  .line 22
    iput-object v8, p0, Landroidx/appcompat/widget/n0$d;->e:Landroid/widget/ImageView;
  :L5
  .line 23
    iget-object v8, p0, Landroidx/appcompat/widget/n0$d;->e:Landroid/widget/ImageView;
    invoke-virtual { v8, v1 }, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
  .line 24
    iget-object v1, p0, Landroidx/appcompat/widget/n0$d;->e:Landroid/widget/ImageView;
    invoke-virtual { v1, v6 }, Landroid/widget/ImageView;->setVisibility(I)V
    goto :L7
  :L6
  .line 25
    iget-object v1, p0, Landroidx/appcompat/widget/n0$d;->e:Landroid/widget/ImageView;
    if-eqz v1, :L7
  .line 26
    invoke-virtual { v1, v2 }, Landroid/widget/ImageView;->setVisibility(I)V
  .line 27
    iget-object v1, p0, Landroidx/appcompat/widget/n0$d;->e:Landroid/widget/ImageView;
    invoke-virtual { v1, v3 }, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
  :L7
  .line 28
    invoke-static { v4 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v1
    xor-int/lit8 v1, v1, 1
    if-eqz v1, :L9
  .line 29
    iget-object v2, p0, Landroidx/appcompat/widget/n0$d;->d:Landroid/widget/TextView;
    if-nez v2, :L8
  .line 30
    new-instance v2, Landroidx/appcompat/widget/x;
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;
    move-result-object v8
    sget v9, Lc/a/a;->actionBarTabTextStyle:I
    invoke-direct { v2, v8, v3, v9 }, Landroidx/appcompat/widget/x;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .line 31
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;
    invoke-virtual { v2, v8 }, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
  .line 32
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct { v8, v7, v7 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
  .line 33
    iput v5, v8, Landroid/widget/LinearLayout$LayoutParams;->gravity:I
  .line 34
    invoke-virtual { v2, v8 }, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  .line 35
    invoke-virtual { p0, v2 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 36
    iput-object v2, p0, Landroidx/appcompat/widget/n0$d;->d:Landroid/widget/TextView;
  :L8
  .line 37
    iget-object v2, p0, Landroidx/appcompat/widget/n0$d;->d:Landroid/widget/TextView;
    invoke-virtual { v2, v4 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 38
    iget-object v2, p0, Landroidx/appcompat/widget/n0$d;->d:Landroid/widget/TextView;
    invoke-virtual { v2, v6 }, Landroid/widget/TextView;->setVisibility(I)V
    goto :L10
  :L9
  .line 39
    iget-object v4, p0, Landroidx/appcompat/widget/n0$d;->d:Landroid/widget/TextView;
    if-eqz v4, :L10
  .line 40
    invoke-virtual { v4, v2 }, Landroid/widget/TextView;->setVisibility(I)V
  .line 41
    iget-object v2, p0, Landroidx/appcompat/widget/n0$d;->d:Landroid/widget/TextView;
    invoke-virtual { v2, v3 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  :L10
  .line 42
    iget-object v2, p0, Landroidx/appcompat/widget/n0$d;->e:Landroid/widget/ImageView;
    if-eqz v2, :L11
  .line 43
    invoke-virtual { v0 }, Landroidx/appcompat/app/a$c;->a()Ljava/lang/CharSequence;
    move-result-object v4
    invoke-virtual { v2, v4 }, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V
  :L11
    if-eqz v1, :L12
    goto :L13
  :L12
  .line 44
    invoke-virtual { v0 }, Landroidx/appcompat/app/a$c;->a()Ljava/lang/CharSequence;
    move-result-object v3
  :L13
    invoke-static { p0, v3 }, Landroidx/appcompat/widget/w0;->a(Landroid/view/View;Ljava/lang/CharSequence;)V
  :L14
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
  .registers 3
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    const-string v0, "androidx.appcompat.app.ActionBar$Tab"
  .line 2
    invoke-virtual { p1, v0 }, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
  .registers 3
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    const-string v0, "androidx.appcompat.app.ActionBar$Tab"
  .line 2
    invoke-virtual { p1, v0 }, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V
    return-void
.end method

.method public onMeasure(II)V
  .registers 4
  .line 1
    invoke-super { p0, p1, p2 }, Landroid/widget/LinearLayout;->onMeasure(II)V
  .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/n0$d;->g:Landroidx/appcompat/widget/n0;
    iget p1, p1, Landroidx/appcompat/widget/n0;->g:I
    if-lez p1, :L0
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getMeasuredWidth()I
    move-result p1
    iget-object v0, p0, Landroidx/appcompat/widget/n0$d;->g:Landroidx/appcompat/widget/n0;
    iget v0, v0, Landroidx/appcompat/widget/n0;->g:I
    if-le p1, v0, :L0
    const/high16 p1, 16384
  .line 3
    invoke-static { v0, p1 }, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result p1
    invoke-super { p0, p1, p2 }, Landroid/widget/LinearLayout;->onMeasure(II)V
  :L0
    return-void
.end method

.method public setSelected(Z)V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->isSelected()Z
    move-result v0
    if-eq v0, p1, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
  .line 2
    invoke-super { p0, p1 }, Landroid/widget/LinearLayout;->setSelected(Z)V
    if-eqz v0, :L2
    if-eqz p1, :L2
    const/4 p1, 4
  .line 3
    invoke-virtual { p0, p1 }, Landroid/widget/LinearLayout;->sendAccessibilityEvent(I)V
  :L2
    return-void
.end method
