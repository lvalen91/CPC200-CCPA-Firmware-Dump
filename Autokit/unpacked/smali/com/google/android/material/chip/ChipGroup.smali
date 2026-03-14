.class public Lcom/google/android/material/chip/ChipGroup;
.super Lcom/google/android/material/internal/c;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcom/google/android/material/chip/ChipGroup$e;,
    Lcom/google/android/material/chip/ChipGroup$b;,
    Lcom/google/android/material/chip/ChipGroup$c;,
    Lcom/google/android/material/chip/ChipGroup$d;
  }
.end annotation

.field private final static o:I

.field private f:I

.field private g:I

.field private h:Z

.field private i:Z

.field private j:Lcom/google/android/material/chip/ChipGroup$d;

.field private final k:Lcom/google/android/material/chip/ChipGroup$b;

.field private l:Lcom/google/android/material/chip/ChipGroup$e;

.field private m:I

.field private n:Z

.method static constructor <clinit>()V
  .registers 2
  .line 1
    sget v0, Ld/c/a/a/j;->Widget_MaterialComponents_ChipGroup:I
    sput v0, Lcom/google/android/material/chip/ChipGroup;->o:I
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 4
  .line 1
    sget v0, Ld/c/a/a/b;->chipGroupStyle:I
    invoke-direct { p0, p1, p2, v0 }, Lcom/google/android/material/chip/ChipGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .registers 11
  .line 2
    sget v0, Lcom/google/android/material/chip/ChipGroup;->o:I
    invoke-static { p1, p2, p3, v0 }, Lcom/google/android/material/theme/a/a;->c(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;
    move-result-object p1
    invoke-direct { p0, p1, p2, p3 }, Lcom/google/android/material/internal/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .line 3
    new-instance p1, Lcom/google/android/material/chip/ChipGroup$b;
    const/4 v0, 0
    invoke-direct { p1, p0, v0 }, Lcom/google/android/material/chip/ChipGroup$b;-><init>(Lcom/google/android/material/chip/ChipGroup;Lcom/google/android/material/chip/ChipGroup$a;)V
    iput-object p1, p0, Lcom/google/android/material/chip/ChipGroup;->k:Lcom/google/android/material/chip/ChipGroup$b;
  .line 4
    new-instance p1, Lcom/google/android/material/chip/ChipGroup$e;
    invoke-direct { p1, p0, v0 }, Lcom/google/android/material/chip/ChipGroup$e;-><init>(Lcom/google/android/material/chip/ChipGroup;Lcom/google/android/material/chip/ChipGroup$a;)V
    iput-object p1, p0, Lcom/google/android/material/chip/ChipGroup;->l:Lcom/google/android/material/chip/ChipGroup$e;
    const/4 p1, -1
  .line 5
    iput p1, p0, Lcom/google/android/material/chip/ChipGroup;->m:I
    const/4 v0, 0
  .line 6
    iput-boolean v0, p0, Lcom/google/android/material/chip/ChipGroup;->n:Z
  .line 7
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object v1
  .line 8
    sget-object v3, Ld/c/a/a/k;->ChipGroup:[I
    sget v5, Lcom/google/android/material/chip/ChipGroup;->o:I
    new-array v6, v0, [I
    move-object v2, p2
    move v4, p3
  .line 9
    invoke-static/range { v1 .. v6 }, Lcom/google/android/material/internal/j;->h(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;
    move-result-object p2
  .line 10
    sget p3, Ld/c/a/a/k;->ChipGroup_chipSpacing:I
    invoke-virtual { p2, p3, v0 }, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I
    move-result p3
  .line 11
    sget v1, Ld/c/a/a/k;->ChipGroup_chipSpacingHorizontal:I
  .line 12
    invoke-virtual { p2, v1, p3 }, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I
    move-result v1
  .line 13
    invoke-virtual { p0, v1 }, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingHorizontal(I)V
  .line 14
    sget v1, Ld/c/a/a/k;->ChipGroup_chipSpacingVertical:I
  .line 15
    invoke-virtual { p2, v1, p3 }, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I
    move-result p3
  .line 16
    invoke-virtual { p0, p3 }, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingVertical(I)V
  .line 17
    sget p3, Ld/c/a/a/k;->ChipGroup_singleLine:I
    invoke-virtual { p2, p3, v0 }, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    move-result p3
    invoke-virtual { p0, p3 }, Lcom/google/android/material/chip/ChipGroup;->setSingleLine(Z)V
  .line 18
    sget p3, Ld/c/a/a/k;->ChipGroup_singleSelection:I
    invoke-virtual { p2, p3, v0 }, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    move-result p3
    invoke-virtual { p0, p3 }, Lcom/google/android/material/chip/ChipGroup;->setSingleSelection(Z)V
  .line 19
    sget p3, Ld/c/a/a/k;->ChipGroup_selectionRequired:I
    invoke-virtual { p2, p3, v0 }, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    move-result p3
    invoke-virtual { p0, p3 }, Lcom/google/android/material/chip/ChipGroup;->setSelectionRequired(Z)V
  .line 20
    sget p3, Ld/c/a/a/k;->ChipGroup_checkedChip:I
    invoke-virtual { p2, p3, p1 }, Landroid/content/res/TypedArray;->getResourceId(II)I
    move-result p3
    if-eq p3, p1, :L0
  .line 21
    iput p3, p0, Lcom/google/android/material/chip/ChipGroup;->m:I
  :L0
  .line 22
    invoke-virtual { p2 }, Landroid/content/res/TypedArray;->recycle()V
  .line 23
    iget-object p1, p0, Lcom/google/android/material/chip/ChipGroup;->l:Lcom/google/android/material/chip/ChipGroup$e;
    invoke-super { p0, p1 }, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    const/4 p1, 1
  .line 24
    invoke-static { p0, p1 }, Landroidx/core/view/v;->x0(Landroid/view/View;I)V
    return-void
.end method

.method static synthetic e(Lcom/google/android/material/chip/ChipGroup;)Lcom/google/android/material/chip/ChipGroup$b;
  .registers 1
  .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/ChipGroup;->k:Lcom/google/android/material/chip/ChipGroup$b;
    return-object p0
.end method

.method static synthetic f(Lcom/google/android/material/chip/ChipGroup;)Z
  .registers 1
  .line 1
    iget-boolean p0, p0, Lcom/google/android/material/chip/ChipGroup;->n:Z
    return p0
.end method

.method static synthetic g(Lcom/google/android/material/chip/ChipGroup;)Z
  .registers 1
  .line 1
    iget-boolean p0, p0, Lcom/google/android/material/chip/ChipGroup;->i:Z
    return p0
.end method

.method private getChipCount()I
  .registers 4
    const/4 v0, 0
    const/4 v1, 0
  :L0
  .line 1
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v2
    if-ge v0, v2, :L2
  .line 2
    invoke-virtual { p0, v0 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v2
    instance-of v2, v2, Lcom/google/android/material/chip/Chip;
    if-eqz v2, :L1
    add-int/lit8 v1, v1, 1
  :L1
    add-int/lit8 v0, v0, 1
    goto :L0
  :L2
    return v1
.end method

.method static synthetic h(Lcom/google/android/material/chip/ChipGroup;IZ)V
  .registers 3
  .line 1
    invoke-direct { p0, p1, p2 }, Lcom/google/android/material/chip/ChipGroup;->r(IZ)V
    return-void
.end method

.method static synthetic i(Lcom/google/android/material/chip/ChipGroup;IZ)V
  .registers 3
  .line 1
    invoke-direct { p0, p1, p2 }, Lcom/google/android/material/chip/ChipGroup;->q(IZ)V
    return-void
.end method

.method static synthetic j(Lcom/google/android/material/chip/ChipGroup;)I
  .registers 1
  .line 1
    iget p0, p0, Lcom/google/android/material/chip/ChipGroup;->m:I
    return p0
.end method

.method static synthetic k(Lcom/google/android/material/chip/ChipGroup;)Z
  .registers 1
  .line 1
    iget-boolean p0, p0, Lcom/google/android/material/chip/ChipGroup;->h:Z
    return p0
.end method

.method static synthetic l(Lcom/google/android/material/chip/ChipGroup;I)V
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Lcom/google/android/material/chip/ChipGroup;->setCheckedId(I)V
    return-void
.end method

.method private q(IZ)V
  .registers 5
  .line 1
    iput p1, p0, Lcom/google/android/material/chip/ChipGroup;->m:I
  .line 2
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->j:Lcom/google/android/material/chip/ChipGroup$d;
    if-eqz v0, :L0
    iget-boolean v1, p0, Lcom/google/android/material/chip/ChipGroup;->h:Z
    if-eqz v1, :L0
    if-eqz p2, :L0
  .line 3
    invoke-interface { v0, p0, p1 }, Lcom/google/android/material/chip/ChipGroup$d;->a(Lcom/google/android/material/chip/ChipGroup;I)V
  :L0
    return-void
.end method

.method private r(IZ)V
  .registers 4
  .line 1
    invoke-virtual { p0, p1 }, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
    move-result-object p1
  .line 2
    instance-of v0, p1, Lcom/google/android/material/chip/Chip;
    if-eqz v0, :L0
    const/4 v0, 1
  .line 3
    iput-boolean v0, p0, Lcom/google/android/material/chip/ChipGroup;->n:Z
  .line 4
    check-cast p1, Lcom/google/android/material/chip/Chip;
    invoke-virtual { p1, p2 }, Lcom/google/android/material/chip/Chip;->setChecked(Z)V
    const/4 p1, 0
  .line 5
    iput-boolean p1, p0, Lcom/google/android/material/chip/ChipGroup;->n:Z
  :L0
    return-void
.end method

.method private setCheckedId(I)V
  .registers 3
    const/4 v0, 1
  .line 1
    invoke-direct { p0, p1, v0 }, Lcom/google/android/material/chip/ChipGroup;->q(IZ)V
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
  .registers 7
  .line 1
    instance-of v0, p1, Lcom/google/android/material/chip/Chip;
    if-eqz v0, :L1
  .line 2
    move-object v0, p1
    check-cast v0, Lcom/google/android/material/chip/Chip;
  .line 3
    invoke-virtual { v0 }, Landroid/widget/CheckBox;->isChecked()Z
    move-result v1
    if-eqz v1, :L1
  .line 4
    iget v1, p0, Lcom/google/android/material/chip/ChipGroup;->m:I
    const/4 v2, -1
    if-eq v1, v2, :L0
    iget-boolean v2, p0, Lcom/google/android/material/chip/ChipGroup;->h:Z
    if-eqz v2, :L0
    const/4 v2, 0
  .line 5
    invoke-direct { p0, v1, v2 }, Lcom/google/android/material/chip/ChipGroup;->r(IZ)V
  :L0
  .line 6
    invoke-virtual { v0 }, Landroid/widget/CheckBox;->getId()I
    move-result v0
    invoke-direct { p0, v0 }, Lcom/google/android/material/chip/ChipGroup;->setCheckedId(I)V
  :L1
  .line 7
    invoke-super { p0, p1, p2, p3 }, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    return-void
.end method

.method public c()Z
  .registers 2
  .line 1
    invoke-super { p0 }, Lcom/google/android/material/internal/c;->c()Z
    move-result v0
    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
  .registers 3
  .line 1
    invoke-super { p0, p1 }, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    move-result v0
    if-eqz v0, :L0
    instance-of p1, p1, Lcom/google/android/material/chip/ChipGroup$c;
    if-eqz p1, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    return p1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
  .registers 3
  .line 1
    new-instance v0, Lcom/google/android/material/chip/ChipGroup$c;
    const/4 v1, -2
    invoke-direct { v0, v1, v1 }, Lcom/google/android/material/chip/ChipGroup$c;-><init>(II)V
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
  .registers 4
  .line 1
    new-instance v0, Lcom/google/android/material/chip/ChipGroup$c;
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object v1
    invoke-direct { v0, v1, p1 }, Lcom/google/android/material/chip/ChipGroup$c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
  .registers 3
  .line 2
    new-instance v0, Lcom/google/android/material/chip/ChipGroup$c;
    invoke-direct { v0, p1 }, Lcom/google/android/material/chip/ChipGroup$c;-><init>(Landroid/view/ViewGroup$LayoutParams;)V
    return-object v0
.end method

.method public getCheckedChipId()I
  .registers 2
  .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipGroup;->h:Z
    if-eqz v0, :L0
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->m:I
    goto :L1
  :L0
    const/4 v0, -1
  :L1
    return v0
.end method

.method public getCheckedChipIds()Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Ljava/util/List<",
      "Ljava/lang/Integer;",
      ">;"
    }
  .end annotation
  .registers 5
  .line 1
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    const/4 v1, 0
  :L0
  .line 2
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v2
    if-ge v1, v2, :L2
  .line 3
    invoke-virtual { p0, v1 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v2
  .line 4
    instance-of v3, v2, Lcom/google/android/material/chip/Chip;
    if-eqz v3, :L1
  .line 5
    move-object v3, v2
    check-cast v3, Lcom/google/android/material/chip/Chip;
    invoke-virtual { v3 }, Landroid/widget/CheckBox;->isChecked()Z
    move-result v3
    if-eqz v3, :L1
  .line 6
    invoke-virtual { v2 }, Landroid/view/View;->getId()I
    move-result v2
    invoke-static { v2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    invoke-virtual { v0, v2 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  .line 7
    iget-boolean v2, p0, Lcom/google/android/material/chip/ChipGroup;->h:Z
    if-eqz v2, :L1
    return-object v0
  :L1
    add-int/lit8 v1, v1, 1
    goto :L0
  :L2
    return-object v0
.end method

.method public getChipSpacingHorizontal()I
  .registers 2
  .line 1
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->f:I
    return v0
.end method

.method public getChipSpacingVertical()I
  .registers 2
  .line 1
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->g:I
    return v0
.end method

.method public m(I)V
  .registers 5
  .line 1
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->m:I
    if-ne p1, v0, :L0
    return-void
  :L0
    const/4 v1, -1
    if-eq v0, v1, :L1
  .line 2
    iget-boolean v2, p0, Lcom/google/android/material/chip/ChipGroup;->h:Z
    if-eqz v2, :L1
    const/4 v2, 0
  .line 3
    invoke-direct { p0, v0, v2 }, Lcom/google/android/material/chip/ChipGroup;->r(IZ)V
  :L1
    if-eq p1, v1, :L2
    const/4 v0, 1
  .line 4
    invoke-direct { p0, p1, v0 }, Lcom/google/android/material/chip/ChipGroup;->r(IZ)V
  :L2
  .line 5
    invoke-direct { p0, p1 }, Lcom/google/android/material/chip/ChipGroup;->setCheckedId(I)V
    return-void
.end method

.method public n()V
  .registers 5
    const/4 v0, 1
  .line 1
    iput-boolean v0, p0, Lcom/google/android/material/chip/ChipGroup;->n:Z
    const/4 v0, 0
    const/4 v1, 0
  :L0
  .line 2
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v2
    if-ge v1, v2, :L2
  .line 3
    invoke-virtual { p0, v1 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v2
  .line 4
    instance-of v3, v2, Lcom/google/android/material/chip/Chip;
    if-eqz v3, :L1
  .line 5
    check-cast v2, Lcom/google/android/material/chip/Chip;
    invoke-virtual { v2, v0 }, Lcom/google/android/material/chip/Chip;->setChecked(Z)V
  :L1
    add-int/lit8 v1, v1, 1
    goto :L0
  :L2
  .line 6
    iput-boolean v0, p0, Lcom/google/android/material/chip/ChipGroup;->n:Z
    const/4 v0, -1
  .line 7
    invoke-direct { p0, v0 }, Lcom/google/android/material/chip/ChipGroup;->setCheckedId(I)V
    return-void
.end method

.method o(Landroid/view/View;)I
  .registers 6
  .line 1
    instance-of v0, p1, Lcom/google/android/material/chip/Chip;
    const/4 v1, -1
    if-nez v0, :L0
    return v1
  :L0
    const/4 v0, 0
    const/4 v2, 0
  :L1
  .line 2
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v3
    if-ge v0, v3, :L4
  .line 3
    invoke-virtual { p0, v0 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v3
    instance-of v3, v3, Lcom/google/android/material/chip/Chip;
    if-eqz v3, :L3
  .line 4
    invoke-virtual { p0, v0 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v3
    check-cast v3, Lcom/google/android/material/chip/Chip;
    if-ne v3, p1, :L2
    return v2
  :L2
    add-int/lit8 v2, v2, 1
  :L3
    add-int/lit8 v0, v0, 1
    goto :L1
  :L4
    return v1
.end method

.method protected onFinishInflate()V
  .registers 3
  .line 1
    invoke-super { p0 }, Landroid/view/ViewGroup;->onFinishInflate()V
  .line 2
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->m:I
    const/4 v1, -1
    if-eq v0, v1, :L0
    const/4 v1, 1
  .line 3
    invoke-direct { p0, v0, v1 }, Lcom/google/android/material/chip/ChipGroup;->r(IZ)V
  .line 4
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->m:I
    invoke-direct { p0, v0 }, Lcom/google/android/material/chip/ChipGroup;->setCheckedId(I)V
  :L0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
  .registers 6
  .line 1
    invoke-super { p0, p1 }, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
  .line 2
    invoke-static { p1 }, Landroidx/core/view/e0/c;->v0(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/e0/c;
    move-result-object p1
  .line 3
    invoke-virtual { p0 }, Lcom/google/android/material/chip/ChipGroup;->c()Z
    move-result v0
    if-eqz v0, :L0
    invoke-direct { p0 }, Lcom/google/android/material/chip/ChipGroup;->getChipCount()I
    move-result v0
    goto :L1
  :L0
    const/4 v0, -1
  :L1
  .line 4
    invoke-virtual { p0 }, Lcom/google/android/material/internal/c;->getRowCount()I
    move-result v1
    const/4 v2, 0
  .line 5
    invoke-virtual { p0 }, Lcom/google/android/material/chip/ChipGroup;->p()Z
    move-result v3
    if-eqz v3, :L2
    const/4 v3, 1
    goto :L3
  :L2
    const/4 v3, 2
  :L3
  .line 6
    invoke-static { v1, v0, v2, v3 }, Landroidx/core/view/e0/c$b;->a(IIZI)Landroidx/core/view/e0/c$b;
    move-result-object v0
  .line 7
    invoke-virtual { p1, v0 }, Landroidx/core/view/e0/c;->Y(Ljava/lang/Object;)V
    return-void
.end method

.method public p()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipGroup;->h:Z
    return v0
.end method

.method public setChipSpacing(I)V
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingHorizontal(I)V
  .line 2
    invoke-virtual { p0, p1 }, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingVertical(I)V
    return-void
.end method

.method public setChipSpacingHorizontal(I)V
  .registers 3
  .line 1
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->f:I
    if-eq v0, p1, :L0
  .line 2
    iput p1, p0, Lcom/google/android/material/chip/ChipGroup;->f:I
  .line 3
    invoke-virtual { p0, p1 }, Lcom/google/android/material/internal/c;->setItemSpacing(I)V
  .line 4
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->requestLayout()V
  :L0
    return-void
.end method

.method public setChipSpacingHorizontalResource(I)V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    invoke-virtual { v0, p1 }, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I
    move-result p1
    invoke-virtual { p0, p1 }, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingHorizontal(I)V
    return-void
.end method

.method public setChipSpacingResource(I)V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    invoke-virtual { v0, p1 }, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I
    move-result p1
    invoke-virtual { p0, p1 }, Lcom/google/android/material/chip/ChipGroup;->setChipSpacing(I)V
    return-void
.end method

.method public setChipSpacingVertical(I)V
  .registers 3
  .line 1
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->g:I
    if-eq v0, p1, :L0
  .line 2
    iput p1, p0, Lcom/google/android/material/chip/ChipGroup;->g:I
  .line 3
    invoke-virtual { p0, p1 }, Lcom/google/android/material/internal/c;->setLineSpacing(I)V
  .line 4
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->requestLayout()V
  :L0
    return-void
.end method

.method public setChipSpacingVerticalResource(I)V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    invoke-virtual { v0, p1 }, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I
    move-result p1
    invoke-virtual { p0, p1 }, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingVertical(I)V
    return-void
.end method

.method public setDividerDrawableHorizontal(Landroid/graphics/drawable/Drawable;)V
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 3
  .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;
    const-string v0, "Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing."
    invoke-direct { p1, v0 }, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public setDividerDrawableVertical(Landroid/graphics/drawable/Drawable;)V
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 3
  .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;
    const-string v0, "Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing."
    invoke-direct { p1, v0 }, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public setFlexWrap(I)V
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 3
  .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;
    const-string v0, "Changing flex wrap not allowed. ChipGroup exposes a singleLine attribute instead."
    invoke-direct { p1, v0 }, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public setOnCheckedChangeListener(Lcom/google/android/material/chip/ChipGroup$d;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/google/android/material/chip/ChipGroup;->j:Lcom/google/android/material/chip/ChipGroup$d;
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->l:Lcom/google/android/material/chip/ChipGroup$e;
    invoke-static { v0, p1 }, Lcom/google/android/material/chip/ChipGroup$e;->a(Lcom/google/android/material/chip/ChipGroup$e;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;
    return-void
.end method

.method public setSelectionRequired(Z)V
  .registers 2
  .line 1
    iput-boolean p1, p0, Lcom/google/android/material/chip/ChipGroup;->i:Z
    return-void
.end method

.method public setShowDividerHorizontal(I)V
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 3
  .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;
    const-string v0, "Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing."
    invoke-direct { p1, v0 }, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public setShowDividerVertical(I)V
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 3
  .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;
    const-string v0, "Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing."
    invoke-direct { p1, v0 }, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public setSingleLine(I)V
  .registers 3
  .line 2
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    invoke-virtual { v0, p1 }, Landroid/content/res/Resources;->getBoolean(I)Z
    move-result p1
    invoke-virtual { p0, p1 }, Lcom/google/android/material/chip/ChipGroup;->setSingleLine(Z)V
    return-void
.end method

.method public setSingleLine(Z)V
  .registers 2
  .line 1
    invoke-super { p0, p1 }, Lcom/google/android/material/internal/c;->setSingleLine(Z)V
    return-void
.end method

.method public setSingleSelection(I)V
  .registers 3
  .line 4
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    invoke-virtual { v0, p1 }, Landroid/content/res/Resources;->getBoolean(I)Z
    move-result p1
    invoke-virtual { p0, p1 }, Lcom/google/android/material/chip/ChipGroup;->setSingleSelection(Z)V
    return-void
.end method

.method public setSingleSelection(Z)V
  .registers 3
  .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipGroup;->h:Z
    if-eq v0, p1, :L0
  .line 2
    iput-boolean p1, p0, Lcom/google/android/material/chip/ChipGroup;->h:Z
  .line 3
    invoke-virtual { p0 }, Lcom/google/android/material/chip/ChipGroup;->n()V
  :L0
    return-void
.end method
