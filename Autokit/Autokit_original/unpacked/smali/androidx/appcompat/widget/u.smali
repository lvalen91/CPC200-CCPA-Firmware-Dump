.class public Landroidx/appcompat/widget/u;
.super Landroid/widget/Spinner;
.implements Landroidx/core/view/u;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/appcompat/widget/u$e;,
    Landroidx/appcompat/widget/u$c;,
    Landroidx/appcompat/widget/u$g;,
    Landroidx/appcompat/widget/u$d;,
    Landroidx/appcompat/widget/u$f;
  }
.end annotation

.field private final static j:[I

.field private final b:Landroidx/appcompat/widget/e;

.field private final c:Landroid/content/Context;

.field private d:Landroidx/appcompat/widget/f0;

.field private e:Landroid/widget/SpinnerAdapter;

.field private final f:Z

.field private g:Landroidx/appcompat/widget/u$g;

.field h:I

.field final i:Landroid/graphics/Rect;

.method static constructor <clinit>()V
  .registers 3
    const/4 v0, 1
    new-array v0, v0, [I
    const/4 v1, 0
    const v2, 16843505
    aput v2, v0, v1
  .line 1
    sput-object v0, Landroidx/appcompat/widget/u;->j:[I
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 4
  .line 1
    sget v0, Lc/a/a;->spinnerStyle:I
    invoke-direct { p0, p1, p2, v0 }, Landroidx/appcompat/widget/u;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .registers 5
    const/4 v0, -1
  .line 2
    invoke-direct { p0, p1, p2, p3, v0 }, Landroidx/appcompat/widget/u;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
  .registers 11
    const/4 v5, 0
    move-object v0, p0
    move-object v1, p1
    move-object v2, p2
    move v3, p3
    move v4, p4
  .line 3
    invoke-direct/range { v0 .. v5 }, Landroidx/appcompat/widget/u;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V
  .catch Ljava/lang/Exception; { :L3 .. :L4 } :L11
  .catchall { :L3 .. :L4 } :L8
  .catch Ljava/lang/Exception; { :L4 .. :L5 } :L12
  .catchall { :L4 .. :L5 } :L7
  .registers 11
  .line 4
    invoke-direct { p0, p1, p2, p3 }, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .line 5
    new-instance v0, Landroid/graphics/Rect;
    invoke-direct { v0 }, Landroid/graphics/Rect;-><init>()V
    iput-object v0, p0, Landroidx/appcompat/widget/u;->i:Landroid/graphics/Rect;
  .line 6
    invoke-virtual { p0 }, Landroid/widget/Spinner;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-static { p0, v0 }, Landroidx/appcompat/widget/p0;->a(Landroid/view/View;Landroid/content/Context;)V
  .line 7
    sget-object v0, Lc/a/j;->Spinner:[I
    const/4 v1, 0
    invoke-static { p1, p2, v0, p3, v1 }, Landroidx/appcompat/widget/u0;->v(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/u0;
    move-result-object v0
  .line 8
    new-instance v2, Landroidx/appcompat/widget/e;
    invoke-direct { v2, p0 }, Landroidx/appcompat/widget/e;-><init>(Landroid/view/View;)V
    iput-object v2, p0, Landroidx/appcompat/widget/u;->b:Landroidx/appcompat/widget/e;
    if-eqz p5, :L0
  .line 9
    new-instance v2, Lc/a/o/d;
    invoke-direct { v2, p1, p5 }, Lc/a/o/d;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V
    iput-object v2, p0, Landroidx/appcompat/widget/u;->c:Landroid/content/Context;
    goto :L2
  :L0
  .line 10
    sget p5, Lc/a/j;->Spinner_popupTheme:I
    invoke-virtual { v0, p5, v1 }, Landroidx/appcompat/widget/u0;->n(II)I
    move-result p5
    if-eqz p5, :L1
  .line 11
    new-instance v2, Lc/a/o/d;
    invoke-direct { v2, p1, p5 }, Lc/a/o/d;-><init>(Landroid/content/Context;I)V
    iput-object v2, p0, Landroidx/appcompat/widget/u;->c:Landroid/content/Context;
    goto :L2
  :L1
  .line 12
    iput-object p1, p0, Landroidx/appcompat/widget/u;->c:Landroid/content/Context;
  :L2
    const/4 p5, -1
    const/4 v2, 0
    if-ne p4, p5, :L13
  :L3
  .line 13
    sget-object p5, Landroidx/appcompat/widget/u;->j:[I
    invoke-virtual { p1, p2, p5, p3, v1 }, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    move-result-object p5
  :L4
  .line 14
    invoke-virtual { p5, v1 }, Landroid/content/res/TypedArray;->hasValue(I)Z
    move-result v3
    if-eqz v3, :L5
  .line 15
    invoke-virtual { p5, v1, v1 }, Landroid/content/res/TypedArray;->getInt(II)I
    move-result p4
  :L5
    if-eqz p5, :L13
  :L6
  .line 16
    invoke-virtual { p5 }, Landroid/content/res/TypedArray;->recycle()V
    goto :L13
  :L7
    move-exception p1
    move-object v2, p5
    goto :L9
  :L8
    move-exception p1
  :L9
    if-eqz v2, :L10
    invoke-virtual { v2 }, Landroid/content/res/TypedArray;->recycle()V
  :L10
  .line 17
    throw p1
  :L11
    move-object p5, v2
  :L12
    if-eqz p5, :L13
    goto :L6
  :L13
    const/4 p5, 1
    if-eqz p4, :L15
    if-eq p4, p5, :L14
    goto :L16
  :L14
  .line 18
    new-instance p4, Landroidx/appcompat/widget/u$e;
    iget-object v3, p0, Landroidx/appcompat/widget/u;->c:Landroid/content/Context;
    invoke-direct { p4, p0, v3, p2, p3 }, Landroidx/appcompat/widget/u$e;-><init>(Landroidx/appcompat/widget/u;Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .line 19
    iget-object v3, p0, Landroidx/appcompat/widget/u;->c:Landroid/content/Context;
    sget-object v4, Lc/a/j;->Spinner:[I
    invoke-static { v3, p2, v4, p3, v1 }, Landroidx/appcompat/widget/u0;->v(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/u0;
    move-result-object v1
  .line 20
    sget v3, Lc/a/j;->Spinner_android_dropDownWidth:I
    const/4 v4, -2
    invoke-virtual { v1, v3, v4 }, Landroidx/appcompat/widget/u0;->m(II)I
    move-result v3
    iput v3, p0, Landroidx/appcompat/widget/u;->h:I
  .line 21
    sget v3, Lc/a/j;->Spinner_android_popupBackground:I
  .line 22
    invoke-virtual { v1, v3 }, Landroidx/appcompat/widget/u0;->g(I)Landroid/graphics/drawable/Drawable;
    move-result-object v3
  .line 23
    invoke-virtual { p4, v3 }, Landroidx/appcompat/widget/h0;->c(Landroid/graphics/drawable/Drawable;)V
  .line 24
    sget v3, Lc/a/j;->Spinner_android_prompt:I
    invoke-virtual { v0, v3 }, Landroidx/appcompat/widget/u0;->o(I)Ljava/lang/String;
    move-result-object v3
    invoke-virtual { p4, v3 }, Landroidx/appcompat/widget/u$e;->m(Ljava/lang/CharSequence;)V
  .line 25
    invoke-virtual { v1 }, Landroidx/appcompat/widget/u0;->w()V
  .line 26
    iput-object p4, p0, Landroidx/appcompat/widget/u;->g:Landroidx/appcompat/widget/u$g;
  .line 27
    new-instance v1, Landroidx/appcompat/widget/u$a;
    invoke-direct { v1, p0, p0, p4 }, Landroidx/appcompat/widget/u$a;-><init>(Landroidx/appcompat/widget/u;Landroid/view/View;Landroidx/appcompat/widget/u$e;)V
    iput-object v1, p0, Landroidx/appcompat/widget/u;->d:Landroidx/appcompat/widget/f0;
    goto :L16
  :L15
  .line 28
    new-instance p4, Landroidx/appcompat/widget/u$c;
    invoke-direct { p4, p0 }, Landroidx/appcompat/widget/u$c;-><init>(Landroidx/appcompat/widget/u;)V
    iput-object p4, p0, Landroidx/appcompat/widget/u;->g:Landroidx/appcompat/widget/u$g;
  .line 29
    sget v1, Lc/a/j;->Spinner_android_prompt:I
    invoke-virtual { v0, v1 }, Landroidx/appcompat/widget/u0;->o(I)Ljava/lang/String;
    move-result-object v1
    invoke-interface { p4, v1 }, Landroidx/appcompat/widget/u$g;->m(Ljava/lang/CharSequence;)V
  :L16
  .line 30
    sget p4, Lc/a/j;->Spinner_android_entries:I
    invoke-virtual { v0, p4 }, Landroidx/appcompat/widget/u0;->q(I)[Ljava/lang/CharSequence;
    move-result-object p4
    if-eqz p4, :L17
  .line 31
    new-instance v1, Landroid/widget/ArrayAdapter;
    const v3, 17367048
    invoke-direct { v1, p1, v3, p4 }, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V
  .line 32
    sget p1, Lc/a/g;->support_simple_spinner_dropdown_item:I
    invoke-virtual { v1, p1 }, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V
  .line 33
    invoke-virtual { p0, v1 }, Landroidx/appcompat/widget/u;->setAdapter(Landroid/widget/SpinnerAdapter;)V
  :L17
  .line 34
    invoke-virtual { v0 }, Landroidx/appcompat/widget/u0;->w()V
  .line 35
    iput-boolean p5, p0, Landroidx/appcompat/widget/u;->f:Z
  .line 36
    iget-object p1, p0, Landroidx/appcompat/widget/u;->e:Landroid/widget/SpinnerAdapter;
    if-eqz p1, :L18
  .line 37
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/u;->setAdapter(Landroid/widget/SpinnerAdapter;)V
  .line 38
    iput-object v2, p0, Landroidx/appcompat/widget/u;->e:Landroid/widget/SpinnerAdapter;
  :L18
  .line 39
    iget-object p1, p0, Landroidx/appcompat/widget/u;->b:Landroidx/appcompat/widget/e;
    invoke-virtual { p1, p2, p3 }, Landroidx/appcompat/widget/e;->e(Landroid/util/AttributeSet;I)V
    return-void
.end method

.method a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
  .registers 13
    const/4 v0, 0
    if-nez p1, :L0
    return v0
  :L0
  .line 1
    invoke-virtual { p0 }, Landroid/widget/Spinner;->getMeasuredWidth()I
    move-result v1
    invoke-static { v1, v0 }, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result v1
  .line 2
    invoke-virtual { p0 }, Landroid/widget/Spinner;->getMeasuredHeight()I
    move-result v2
    invoke-static { v2, v0 }, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result v2
  .line 3
    invoke-virtual { p0 }, Landroid/widget/Spinner;->getSelectedItemPosition()I
    move-result v3
    invoke-static { v0, v3 }, Ljava/lang/Math;->max(II)I
    move-result v3
  .line 4
    invoke-interface { p1 }, Landroid/widget/SpinnerAdapter;->getCount()I
    move-result v4
    add-int/lit8 v5, v3, 15
    invoke-static { v4, v5 }, Ljava/lang/Math;->min(II)I
    move-result v4
    sub-int v5, v4, v3
    rsub-int/lit8 v5, v5, 15
    sub-int/2addr v3, v5
  .line 5
    invoke-static { v0, v3 }, Ljava/lang/Math;->max(II)I
    move-result v3
    const/4 v5, 0
    move v6, v3
    move-object v7, v5
    const/4 v3, 0
  :L1
    if-ge v6, v4, :L4
  .line 6
    invoke-interface { p1, v6 }, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I
    move-result v8
    if-eq v8, v0, :L2
    move-object v7, v5
    move v0, v8
  :L2
  .line 7
    invoke-interface { p1, v6, v7, p0 }, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    move-result-object v7
  .line 8
    invoke-virtual { v7 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v8
    if-nez v8, :L3
  .line 9
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;
    const/4 v9, -2
    invoke-direct { v8, v9, v9 }, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
    invoke-virtual { v7, v8 }, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  :L3
  .line 10
    invoke-virtual { v7, v1, v2 }, Landroid/view/View;->measure(II)V
  .line 11
    invoke-virtual { v7 }, Landroid/view/View;->getMeasuredWidth()I
    move-result v8
    invoke-static { v3, v8 }, Ljava/lang/Math;->max(II)I
    move-result v3
    add-int/lit8 v6, v6, 1
    goto :L1
  :L4
    if-eqz p2, :L5
  .line 12
    iget-object p1, p0, Landroidx/appcompat/widget/u;->i:Landroid/graphics/Rect;
    invoke-virtual { p2, p1 }, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z
  .line 13
    iget-object p1, p0, Landroidx/appcompat/widget/u;->i:Landroid/graphics/Rect;
    iget p2, p1, Landroid/graphics/Rect;->left:I
    iget p1, p1, Landroid/graphics/Rect;->right:I
    add-int/2addr p2, p1
    add-int/2addr v3, p2
  :L5
    return v3
.end method

.method b()V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 17
    if-lt v0, v1, :L0
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/u;->g:Landroidx/appcompat/widget/u$g;
    invoke-virtual { p0 }, Landroid/widget/Spinner;->getTextDirection()I
    move-result v1
    invoke-virtual { p0 }, Landroid/widget/Spinner;->getTextAlignment()I
    move-result v2
    invoke-interface { v0, v1, v2 }, Landroidx/appcompat/widget/u$g;->f(II)V
    goto :L1
  :L0
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/u;->g:Landroidx/appcompat/widget/u$g;
    const/4 v1, -1
    invoke-interface { v0, v1, v1 }, Landroidx/appcompat/widget/u$g;->f(II)V
  :L1
    return-void
.end method

.method protected drawableStateChanged()V
  .registers 2
  .line 1
    invoke-super { p0 }, Landroid/widget/Spinner;->drawableStateChanged()V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/u;->b:Landroidx/appcompat/widget/e;
    if-eqz v0, :L0
  .line 3
    invoke-virtual { v0 }, Landroidx/appcompat/widget/e;->b()V
  :L0
    return-void
.end method

.method public getDropDownHorizontalOffset()I
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u;->g:Landroidx/appcompat/widget/u$g;
    if-eqz v0, :L0
  .line 2
    invoke-interface { v0 }, Landroidx/appcompat/widget/u$g;->e()I
    move-result v0
    return v0
  :L0
  .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 16
    if-lt v0, v1, :L1
  .line 4
    invoke-super { p0 }, Landroid/widget/Spinner;->getDropDownHorizontalOffset()I
    move-result v0
    return v0
  :L1
    const/4 v0, 0
    return v0
.end method

.method public getDropDownVerticalOffset()I
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u;->g:Landroidx/appcompat/widget/u$g;
    if-eqz v0, :L0
  .line 2
    invoke-interface { v0 }, Landroidx/appcompat/widget/u$g;->h()I
    move-result v0
    return v0
  :L0
  .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 16
    if-lt v0, v1, :L1
  .line 4
    invoke-super { p0 }, Landroid/widget/Spinner;->getDropDownVerticalOffset()I
    move-result v0
    return v0
  :L1
    const/4 v0, 0
    return v0
.end method

.method public getDropDownWidth()I
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u;->g:Landroidx/appcompat/widget/u$g;
    if-eqz v0, :L0
  .line 2
    iget v0, p0, Landroidx/appcompat/widget/u;->h:I
    return v0
  :L0
  .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 16
    if-lt v0, v1, :L1
  .line 4
    invoke-super { p0 }, Landroid/widget/Spinner;->getDropDownWidth()I
    move-result v0
    return v0
  :L1
    const/4 v0, 0
    return v0
.end method

.method final getInternalPopup()Landroidx/appcompat/widget/u$g;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u;->g:Landroidx/appcompat/widget/u$g;
    return-object v0
.end method

.method public getPopupBackground()Landroid/graphics/drawable/Drawable;
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u;->g:Landroidx/appcompat/widget/u$g;
    if-eqz v0, :L0
  .line 2
    invoke-interface { v0 }, Landroidx/appcompat/widget/u$g;->j()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    return-object v0
  :L0
  .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 16
    if-lt v0, v1, :L1
  .line 4
    invoke-super { p0 }, Landroid/widget/Spinner;->getPopupBackground()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    return-object v0
  :L1
    const/4 v0, 0
    return-object v0
.end method

.method public getPopupContext()Landroid/content/Context;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u;->c:Landroid/content/Context;
    return-object v0
.end method

.method public getPrompt()Ljava/lang/CharSequence;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u;->g:Landroidx/appcompat/widget/u$g;
    if-eqz v0, :L0
    invoke-interface { v0 }, Landroidx/appcompat/widget/u$g;->k()Ljava/lang/CharSequence;
    move-result-object v0
    goto :L1
  :L0
    invoke-super { p0 }, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;
    move-result-object v0
  :L1
    return-object v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u;->b:Landroidx/appcompat/widget/e;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Landroidx/appcompat/widget/e;->c()Landroid/content/res/ColorStateList;
    move-result-object v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u;->b:Landroidx/appcompat/widget/e;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Landroidx/appcompat/widget/e;->d()Landroid/graphics/PorterDuff$Mode;
    move-result-object v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return-object v0
.end method

.method protected onDetachedFromWindow()V
  .registers 2
  .line 1
    invoke-super { p0 }, Landroid/widget/Spinner;->onDetachedFromWindow()V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/u;->g:Landroidx/appcompat/widget/u$g;
    if-eqz v0, :L0
    invoke-interface { v0 }, Landroidx/appcompat/widget/u$g;->b()Z
    move-result v0
    if-eqz v0, :L0
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/u;->g:Landroidx/appcompat/widget/u$g;
    invoke-interface { v0 }, Landroidx/appcompat/widget/u$g;->dismiss()V
  :L0
    return-void
.end method

.method protected onMeasure(II)V
  .registers 5
  .line 1
    invoke-super { p0, p1, p2 }, Landroid/widget/Spinner;->onMeasure(II)V
  .line 2
    iget-object p2, p0, Landroidx/appcompat/widget/u;->g:Landroidx/appcompat/widget/u$g;
    if-eqz p2, :L0
    invoke-static { p1 }, Landroid/view/View$MeasureSpec;->getMode(I)I
    move-result p2
    const/high16 v0, -32768
    if-ne p2, v0, :L0
  .line 3
    invoke-virtual { p0 }, Landroid/widget/Spinner;->getMeasuredWidth()I
    move-result p2
  .line 4
    invoke-virtual { p0 }, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;
    move-result-object v0
    invoke-virtual { p0 }, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;
    move-result-object v1
    invoke-virtual { p0, v0, v1 }, Landroidx/appcompat/widget/u;->a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    move-result v0
  .line 5
    invoke-static { p2, v0 }, Ljava/lang/Math;->max(II)I
    move-result p2
  .line 6
    invoke-static { p1 }, Landroid/view/View$MeasureSpec;->getSize(I)I
    move-result p1
  .line 7
    invoke-static { p2, p1 }, Ljava/lang/Math;->min(II)I
    move-result p1
  .line 8
    invoke-virtual { p0 }, Landroid/widget/Spinner;->getMeasuredHeight()I
    move-result p2
  .line 9
    invoke-virtual { p0, p1, p2 }, Landroid/widget/Spinner;->setMeasuredDimension(II)V
  :L0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
  .registers 3
  .line 1
    check-cast p1, Landroidx/appcompat/widget/u$f;
  .line 2
    invoke-virtual { p1 }, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;
    move-result-object v0
    invoke-super { p0, v0 }, Landroid/widget/Spinner;->onRestoreInstanceState(Landroid/os/Parcelable;)V
  .line 3
    iget-boolean p1, p1, Landroidx/appcompat/widget/u$f;->b:Z
    if-eqz p1, :L0
  .line 4
    invoke-virtual { p0 }, Landroid/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
    move-result-object p1
    if-eqz p1, :L0
  .line 5
    new-instance v0, Landroidx/appcompat/widget/u$b;
    invoke-direct { v0, p0 }, Landroidx/appcompat/widget/u$b;-><init>(Landroidx/appcompat/widget/u;)V
  .line 6
    invoke-virtual { p1, v0 }, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
  :L0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
  .registers 3
  .line 1
    new-instance v0, Landroidx/appcompat/widget/u$f;
  .line 2
    invoke-super { p0 }, Landroid/widget/Spinner;->onSaveInstanceState()Landroid/os/Parcelable;
    move-result-object v1
    invoke-direct { v0, v1 }, Landroidx/appcompat/widget/u$f;-><init>(Landroid/os/Parcelable;)V
  .line 3
    iget-object v1, p0, Landroidx/appcompat/widget/u;->g:Landroidx/appcompat/widget/u$g;
    if-eqz v1, :L0
    invoke-interface { v1 }, Landroidx/appcompat/widget/u$g;->b()Z
    move-result v1
    if-eqz v1, :L0
    const/4 v1, 1
    goto :L1
  :L0
    const/4 v1, 0
  :L1
    iput-boolean v1, v0, Landroidx/appcompat/widget/u$f;->b:Z
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u;->d:Landroidx/appcompat/widget/f0;
    if-eqz v0, :L0
    invoke-virtual { v0, p0, p1 }, Landroidx/appcompat/widget/f0;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    move-result v0
    if-eqz v0, :L0
    const/4 p1, 1
    return p1
  :L0
  .line 2
    invoke-super { p0, p1 }, Landroid/widget/Spinner;->onTouchEvent(Landroid/view/MotionEvent;)Z
    move-result p1
    return p1
.end method

.method public performClick()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u;->g:Landroidx/appcompat/widget/u$g;
    if-eqz v0, :L1
  .line 2
    invoke-interface { v0 }, Landroidx/appcompat/widget/u$g;->b()Z
    move-result v0
    if-nez v0, :L0
  .line 3
    invoke-virtual { p0 }, Landroidx/appcompat/widget/u;->b()V
  :L0
    const/4 v0, 1
    return v0
  :L1
  .line 4
    invoke-super { p0 }, Landroid/widget/Spinner;->performClick()Z
    move-result v0
    return v0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
  .registers 2
  .line 1
    check-cast p1, Landroid/widget/SpinnerAdapter;
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/u;->setAdapter(Landroid/widget/SpinnerAdapter;)V
    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
  .registers 5
  .line 2
    iget-boolean v0, p0, Landroidx/appcompat/widget/u;->f:Z
    if-nez v0, :L0
  .line 3
    iput-object p1, p0, Landroidx/appcompat/widget/u;->e:Landroid/widget/SpinnerAdapter;
    return-void
  :L0
  .line 4
    invoke-super { p0, p1 }, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V
  .line 5
    iget-object v0, p0, Landroidx/appcompat/widget/u;->g:Landroidx/appcompat/widget/u$g;
    if-eqz v0, :L2
  .line 6
    iget-object v0, p0, Landroidx/appcompat/widget/u;->c:Landroid/content/Context;
    if-nez v0, :L1
    invoke-virtual { p0 }, Landroid/widget/Spinner;->getContext()Landroid/content/Context;
    move-result-object v0
  :L1
  .line 7
    iget-object v1, p0, Landroidx/appcompat/widget/u;->g:Landroidx/appcompat/widget/u$g;
    new-instance v2, Landroidx/appcompat/widget/u$d;
    invoke-virtual { v0 }, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;
    move-result-object v0
    invoke-direct { v2, p1, v0 }, Landroidx/appcompat/widget/u$d;-><init>(Landroid/widget/SpinnerAdapter;Landroid/content/res/Resources$Theme;)V
    invoke-interface { v1, v2 }, Landroidx/appcompat/widget/u$g;->o(Landroid/widget/ListAdapter;)V
  :L2
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
  .registers 3
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/Spinner;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/u;->b:Landroidx/appcompat/widget/e;
    if-eqz v0, :L0
  .line 3
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/e;->f(Landroid/graphics/drawable/Drawable;)V
  :L0
    return-void
.end method

.method public setBackgroundResource(I)V
  .registers 3
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/Spinner;->setBackgroundResource(I)V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/u;->b:Landroidx/appcompat/widget/e;
    if-eqz v0, :L0
  .line 3
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/e;->g(I)V
  :L0
    return-void
.end method

.method public setDropDownHorizontalOffset(I)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u;->g:Landroidx/appcompat/widget/u$g;
    if-eqz v0, :L0
  .line 2
    invoke-interface { v0, p1 }, Landroidx/appcompat/widget/u$g;->p(I)V
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/u;->g:Landroidx/appcompat/widget/u$g;
    invoke-interface { v0, p1 }, Landroidx/appcompat/widget/u$g;->d(I)V
    goto :L1
  :L0
  .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 16
    if-lt v0, v1, :L1
  .line 5
    invoke-super { p0, p1 }, Landroid/widget/Spinner;->setDropDownHorizontalOffset(I)V
  :L1
    return-void
.end method

.method public setDropDownVerticalOffset(I)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u;->g:Landroidx/appcompat/widget/u$g;
    if-eqz v0, :L0
  .line 2
    invoke-interface { v0, p1 }, Landroidx/appcompat/widget/u$g;->n(I)V
    goto :L1
  :L0
  .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 16
    if-lt v0, v1, :L1
  .line 4
    invoke-super { p0, p1 }, Landroid/widget/Spinner;->setDropDownVerticalOffset(I)V
  :L1
    return-void
.end method

.method public setDropDownWidth(I)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u;->g:Landroidx/appcompat/widget/u$g;
    if-eqz v0, :L0
  .line 2
    iput p1, p0, Landroidx/appcompat/widget/u;->h:I
    goto :L1
  :L0
  .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 16
    if-lt v0, v1, :L1
  .line 4
    invoke-super { p0, p1 }, Landroid/widget/Spinner;->setDropDownWidth(I)V
  :L1
    return-void
.end method

.method public setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u;->g:Landroidx/appcompat/widget/u$g;
    if-eqz v0, :L0
  .line 2
    invoke-interface { v0, p1 }, Landroidx/appcompat/widget/u$g;->c(Landroid/graphics/drawable/Drawable;)V
    goto :L1
  :L0
  .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 16
    if-lt v0, v1, :L1
  .line 4
    invoke-super { p0, p1 }, Landroid/widget/Spinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
  :L1
    return-void
.end method

.method public setPopupBackgroundResource(I)V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/widget/u;->getPopupContext()Landroid/content/Context;
    move-result-object v0
    invoke-static { v0, p1 }, Lc/a/k/a/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    move-result-object p1
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/u;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    return-void
.end method

.method public setPrompt(Ljava/lang/CharSequence;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u;->g:Landroidx/appcompat/widget/u$g;
    if-eqz v0, :L0
  .line 2
    invoke-interface { v0, p1 }, Landroidx/appcompat/widget/u$g;->m(Ljava/lang/CharSequence;)V
    goto :L1
  :L0
  .line 3
    invoke-super { p0, p1 }, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V
  :L1
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u;->b:Landroidx/appcompat/widget/e;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/e;->i(Landroid/content/res/ColorStateList;)V
  :L0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u;->b:Landroidx/appcompat/widget/e;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/e;->j(Landroid/graphics/PorterDuff$Mode;)V
  :L0
    return-void
.end method
