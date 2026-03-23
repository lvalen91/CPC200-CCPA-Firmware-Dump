.class public Lcom/google/android/material/textfield/g;
.super Landroidx/appcompat/widget/d;
.source "SourceFile"

.field private final e:Landroidx/appcompat/widget/h0;

.field private final f:Landroid/view/accessibility/AccessibilityManager;

.field private final g:Landroid/graphics/Rect;

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 4
  .line 1
    sget v0, Ld/c/a/a/b;->autoCompleteTextViewStyle:I
    invoke-direct { p0, p1, p2, v0 }, Lcom/google/android/material/textfield/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .registers 11
    const/4 v0, 0
  .line 2
    invoke-static { p1, p2, p3, v0 }, Lcom/google/android/material/theme/a/a;->c(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;
    move-result-object p1
    invoke-direct { p0, p1, p2, p3 }, Landroidx/appcompat/widget/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .line 3
    new-instance p1, Landroid/graphics/Rect;
    invoke-direct { p1 }, Landroid/graphics/Rect;-><init>()V
    iput-object p1, p0, Lcom/google/android/material/textfield/g;->g:Landroid/graphics/Rect;
  .line 4
    invoke-virtual { p0 }, Landroid/widget/AutoCompleteTextView;->getContext()Landroid/content/Context;
    move-result-object p1
  .line 5
    sget-object v3, Ld/c/a/a/k;->MaterialAutoCompleteTextView:[I
    sget v5, Ld/c/a/a/j;->Widget_AppCompat_AutoCompleteTextView:I
    new-array v6, v0, [I
    move-object v1, p1
    move-object v2, p2
    move v4, p3
  .line 6
    invoke-static/range { v1 .. v6 }, Lcom/google/android/material/internal/j;->h(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;
    move-result-object p2
  .line 7
    sget p3, Ld/c/a/a/k;->MaterialAutoCompleteTextView_android_inputType:I
    invoke-virtual { p2, p3 }, Landroid/content/res/TypedArray;->hasValue(I)Z
    move-result p3
    if-eqz p3, :L0
  .line 8
    sget p3, Ld/c/a/a/k;->MaterialAutoCompleteTextView_android_inputType:I
  .line 9
    invoke-virtual { p2, p3, v0 }, Landroid/content/res/TypedArray;->getInt(II)I
    move-result p3
    if-nez p3, :L0
    const/4 p3, 0
  .line 10
    invoke-virtual { p0, p3 }, Landroid/widget/AutoCompleteTextView;->setKeyListener(Landroid/text/method/KeyListener;)V
  :L0
    const-string p3, "accessibility"
  .line 11
    invoke-virtual { p1, p3 }, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object p3
    check-cast p3, Landroid/view/accessibility/AccessibilityManager;
    iput-object p3, p0, Lcom/google/android/material/textfield/g;->f:Landroid/view/accessibility/AccessibilityManager;
  .line 12
    new-instance p3, Landroidx/appcompat/widget/h0;
    invoke-direct { p3, p1 }, Landroidx/appcompat/widget/h0;-><init>(Landroid/content/Context;)V
    iput-object p3, p0, Lcom/google/android/material/textfield/g;->e:Landroidx/appcompat/widget/h0;
    const/4 p1, 1
  .line 13
    invoke-virtual { p3, p1 }, Landroidx/appcompat/widget/h0;->J(Z)V
  .line 14
    iget-object p1, p0, Lcom/google/android/material/textfield/g;->e:Landroidx/appcompat/widget/h0;
    invoke-virtual { p1, p0 }, Landroidx/appcompat/widget/h0;->D(Landroid/view/View;)V
  .line 15
    iget-object p1, p0, Lcom/google/android/material/textfield/g;->e:Landroidx/appcompat/widget/h0;
    const/4 p3, 2
    invoke-virtual { p1, p3 }, Landroidx/appcompat/widget/h0;->I(I)V
  .line 16
    iget-object p1, p0, Lcom/google/android/material/textfield/g;->e:Landroidx/appcompat/widget/h0;
    invoke-virtual { p0 }, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;
    move-result-object p3
    invoke-virtual { p1, p3 }, Landroidx/appcompat/widget/h0;->o(Landroid/widget/ListAdapter;)V
  .line 17
    iget-object p1, p0, Lcom/google/android/material/textfield/g;->e:Landroidx/appcompat/widget/h0;
    new-instance p3, Lcom/google/android/material/textfield/g$a;
    invoke-direct { p3, p0 }, Lcom/google/android/material/textfield/g$a;-><init>(Lcom/google/android/material/textfield/g;)V
    invoke-virtual { p1, p3 }, Landroidx/appcompat/widget/h0;->L(Landroid/widget/AdapterView$OnItemClickListener;)V
  .line 18
    invoke-virtual { p2 }, Landroid/content/res/TypedArray;->recycle()V
    return-void
.end method

.method static synthetic a(Lcom/google/android/material/textfield/g;)Landroidx/appcompat/widget/h0;
  .registers 1
  .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/g;->e:Landroidx/appcompat/widget/h0;
    return-object p0
.end method

.method static synthetic b(Lcom/google/android/material/textfield/g;Ljava/lang/Object;)V
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Lcom/google/android/material/textfield/g;->e(Ljava/lang/Object;)V
    return-void
.end method

.method private c()Lcom/google/android/material/textfield/TextInputLayout;
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroid/widget/AutoCompleteTextView;->getParent()Landroid/view/ViewParent;
    move-result-object v0
  :L0
    if-eqz v0, :L2
  .line 2
    instance-of v1, v0, Lcom/google/android/material/textfield/TextInputLayout;
    if-eqz v1, :L1
  .line 3
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;
    return-object v0
  :L1
  .line 4
    invoke-interface { v0 }, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;
    move-result-object v0
    goto :L0
  :L2
    const/4 v0, 0
    return-object v0
.end method

.method private d()I
  .registers 13
  .line 1
    invoke-virtual { p0 }, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;
    move-result-object v0
  .line 2
    invoke-direct { p0 }, Lcom/google/android/material/textfield/g;->c()Lcom/google/android/material/textfield/TextInputLayout;
    move-result-object v1
    const/4 v2, 0
    if-eqz v0, :L6
    if-nez v1, :L0
    goto/16 :L6
  :L0
  .line 3
    invoke-virtual { p0 }, Landroid/widget/AutoCompleteTextView;->getMeasuredWidth()I
    move-result v3
    invoke-static { v3, v2 }, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result v3
  .line 4
    invoke-virtual { p0 }, Landroid/widget/AutoCompleteTextView;->getMeasuredHeight()I
    move-result v4
    invoke-static { v4, v2 }, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result v4
  .line 5
    iget-object v5, p0, Lcom/google/android/material/textfield/g;->e:Landroidx/appcompat/widget/h0;
    invoke-virtual { v5 }, Landroidx/appcompat/widget/h0;->x()I
    move-result v5
    invoke-static { v2, v5 }, Ljava/lang/Math;->max(II)I
    move-result v5
  .line 6
    invoke-interface { v0 }, Landroid/widget/ListAdapter;->getCount()I
    move-result v6
    add-int/lit8 v5, v5, 15
    invoke-static { v6, v5 }, Ljava/lang/Math;->min(II)I
    move-result v5
    add-int/lit8 v6, v5, -15
  .line 7
    invoke-static { v2, v6 }, Ljava/lang/Math;->max(II)I
    move-result v6
    const/4 v7, 0
    move v8, v6
    move-object v9, v7
    const/4 v6, 0
  :L1
    if-ge v8, v5, :L4
  .line 8
    invoke-interface { v0, v8 }, Landroid/widget/ListAdapter;->getItemViewType(I)I
    move-result v10
    if-eq v10, v2, :L2
    move-object v9, v7
    move v2, v10
  :L2
  .line 9
    invoke-interface { v0, v8, v9, v1 }, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    move-result-object v9
  .line 10
    invoke-virtual { v9 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v10
    if-nez v10, :L3
  .line 11
    new-instance v10, Landroid/view/ViewGroup$LayoutParams;
    const/4 v11, -2
    invoke-direct { v10, v11, v11 }, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
    invoke-virtual { v9, v10 }, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  :L3
  .line 12
    invoke-virtual { v9, v3, v4 }, Landroid/view/View;->measure(II)V
  .line 13
    invoke-virtual { v9 }, Landroid/view/View;->getMeasuredWidth()I
    move-result v10
    invoke-static { v6, v10 }, Ljava/lang/Math;->max(II)I
    move-result v6
    add-int/lit8 v8, v8, 1
    goto :L1
  :L4
  .line 14
    iget-object v0, p0, Lcom/google/android/material/textfield/g;->e:Landroidx/appcompat/widget/h0;
    invoke-virtual { v0 }, Landroidx/appcompat/widget/h0;->j()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    if-eqz v0, :L5
  .line 15
    iget-object v2, p0, Lcom/google/android/material/textfield/g;->g:Landroid/graphics/Rect;
    invoke-virtual { v0, v2 }, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z
  .line 16
    iget-object v0, p0, Lcom/google/android/material/textfield/g;->g:Landroid/graphics/Rect;
    iget v2, v0, Landroid/graphics/Rect;->left:I
    iget v0, v0, Landroid/graphics/Rect;->right:I
    add-int/2addr v2, v0
    add-int/2addr v6, v2
  :L5
  .line 17
    invoke-virtual { v1 }, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconView()Lcom/google/android/material/internal/CheckableImageButton;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/widget/ImageButton;->getMeasuredWidth()I
    move-result v0
    add-int/2addr v6, v0
    return v6
  :L6
    return v2
.end method

.method private e(Ljava/lang/Object;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "<T::",
      "Landroid/widget/ListAdapter;",
      ":",
      "Landroid/widget/Filterable;",
      ">(",
      "Ljava/lang/Object;",
      ")V"
    }
  .end annotation
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 17
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0, p1 }, Landroid/widget/AutoCompleteTextView;->convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    move-result-object p1
    const/4 v0, 0
    invoke-virtual { p0, p1, v0 }, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;Z)V
    goto :L1
  :L0
  .line 3
    invoke-virtual { p0 }, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;
    move-result-object v0
    const/4 v1, 0
  .line 4
    invoke-virtual { p0, v1 }, Lcom/google/android/material/textfield/g;->setAdapter(Landroid/widget/ListAdapter;)V
  .line 5
    invoke-virtual { p0, p1 }, Landroid/widget/AutoCompleteTextView;->convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    move-result-object p1
    invoke-virtual { p0, p1 }, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V
  .line 6
    invoke-virtual { p0, v0 }, Lcom/google/android/material/textfield/g;->setAdapter(Landroid/widget/ListAdapter;)V
  :L1
    return-void
.end method

.method public getHint()Ljava/lang/CharSequence;
  .registers 3
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/textfield/g;->c()Lcom/google/android/material/textfield/TextInputLayout;
    move-result-object v0
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Lcom/google/android/material/textfield/TextInputLayout;->O()Z
    move-result v1
    if-eqz v1, :L0
  .line 3
    invoke-virtual { v0 }, Lcom/google/android/material/textfield/TextInputLayout;->getHint()Ljava/lang/CharSequence;
    move-result-object v0
    return-object v0
  :L0
  .line 4
    invoke-super { p0 }, Landroid/widget/AutoCompleteTextView;->getHint()Ljava/lang/CharSequence;
    move-result-object v0
    return-object v0
.end method

.method protected onAttachedToWindow()V
  .registers 2
  .line 1
    invoke-super { p0 }, Landroid/widget/AutoCompleteTextView;->onAttachedToWindow()V
  .line 2
    invoke-direct { p0 }, Lcom/google/android/material/textfield/g;->c()Lcom/google/android/material/textfield/TextInputLayout;
    move-result-object v0
    if-eqz v0, :L0
  .line 3
    invoke-virtual { v0 }, Lcom/google/android/material/textfield/TextInputLayout;->O()Z
    move-result v0
    if-eqz v0, :L0
  .line 4
    invoke-super { p0 }, Landroid/widget/AutoCompleteTextView;->getHint()Ljava/lang/CharSequence;
    move-result-object v0
    if-nez v0, :L0
  .line 5
    invoke-static { }, Lcom/google/android/material/internal/e;->a()Z
    move-result v0
    if-eqz v0, :L0
    const-string v0, ""
  .line 6
    invoke-virtual { p0, v0 }, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V
  :L0
    return-void
.end method

.method protected onMeasure(II)V
  .registers 4
  .line 1
    invoke-super { p0, p1, p2 }, Landroid/widget/AutoCompleteTextView;->onMeasure(II)V
  .line 2
    invoke-static { p1 }, Landroid/view/View$MeasureSpec;->getMode(I)I
    move-result p2
    const/high16 v0, -32768
    if-ne p2, v0, :L0
  .line 3
    invoke-virtual { p0 }, Landroid/widget/AutoCompleteTextView;->getMeasuredWidth()I
    move-result p2
  .line 4
    invoke-direct { p0 }, Lcom/google/android/material/textfield/g;->d()I
    move-result v0
    invoke-static { p2, v0 }, Ljava/lang/Math;->max(II)I
    move-result p2
  .line 5
    invoke-static { p1 }, Landroid/view/View$MeasureSpec;->getSize(I)I
    move-result p1
  .line 6
    invoke-static { p2, p1 }, Ljava/lang/Math;->min(II)I
    move-result p1
  .line 7
    invoke-virtual { p0 }, Landroid/widget/AutoCompleteTextView;->getMeasuredHeight()I
    move-result p2
  .line 8
    invoke-virtual { p0, p1, p2 }, Landroid/widget/AutoCompleteTextView;->setMeasuredDimension(II)V
  :L0
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "<T::",
      "Landroid/widget/ListAdapter;",
      ":",
      "Landroid/widget/Filterable;",
      ">(TT;)V"
    }
  .end annotation
  .registers 3
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V
  .line 2
    iget-object p1, p0, Lcom/google/android/material/textfield/g;->e:Landroidx/appcompat/widget/h0;
    invoke-virtual { p0 }, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroidx/appcompat/widget/h0;->o(Landroid/widget/ListAdapter;)V
    return-void
.end method

.method public showDropDown()V
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/g;->f:Landroid/view/accessibility/AccessibilityManager;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/g;->e:Landroidx/appcompat/widget/h0;
    invoke-virtual { v0 }, Landroidx/appcompat/widget/h0;->g()V
    goto :L1
  :L0
  .line 3
    invoke-super { p0 }, Landroid/widget/AutoCompleteTextView;->showDropDown()V
  :L1
    return-void
.end method
