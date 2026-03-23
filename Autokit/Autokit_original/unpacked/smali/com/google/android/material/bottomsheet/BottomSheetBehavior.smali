.class public Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcom/google/android/material/bottomsheet/BottomSheetBehavior$h;,
    Lcom/google/android/material/bottomsheet/BottomSheetBehavior$i;,
    Lcom/google/android/material/bottomsheet/BottomSheetBehavior$g;
  }
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "<V:",
    "Landroid/view/View;",
    ">",
    "Landroidx/coordinatorlayout/widget/CoordinatorLayout$c<",
    "TV;>;"
  }
.end annotation

.field private final static Y:I

.field A:F

.field B:I

.field C:F

.field D:Z

.field private E:Z

.field private F:Z

.field G:I

.field H:Lc/i/b/c;

.field private I:Z

.field private J:I

.field private K:Z

.field private L:I

.field M:I

.field N:I

.field O:Ljava/lang/ref/WeakReference;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/ref/WeakReference<",
      "TV;>;"
    }
  .end annotation
.end field

.field P:Ljava/lang/ref/WeakReference;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/ref/WeakReference<",
      "Landroid/view/View;",
      ">;"
    }
  .end annotation
.end field

.field private final Q:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Lcom/google/android/material/bottomsheet/BottomSheetBehavior$g;",
      ">;"
    }
  .end annotation
.end field

.field private R:Landroid/view/VelocityTracker;

.field S:I

.field private T:I

.field U:Z

.field private V:Ljava/util/Map;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/Map<",
      "Landroid/view/View;",
      "Ljava/lang/Integer;",
      ">;"
    }
  .end annotation
.end field

.field private W:I

.field private final X:Lc/i/b/c$c;

.field private a:I

.field private b:Z

.field private c:Z

.field private d:F

.field private e:I

.field private f:Z

.field private g:I

.field private h:I

.field private i:Z

.field private j:Ld/c/a/a/a0/g;

.field private k:I

.field private l:I

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:I

.field private s:I

.field private t:Ld/c/a/a/a0/k;

.field private u:Z

.field private v:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$i;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
      "TV;>.i;"
    }
  .end annotation
.end field

.field private w:Landroid/animation/ValueAnimator;

.field x:I

.field y:I

.field z:I

.method static constructor <clinit>()V
  .registers 2
  .line 1
    sget v0, Ld/c/a/a/j;->Widget_Design_BottomSheet_Modal:I
    sput v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->Y:I
    return-void
.end method

.method public constructor <init>()V
  .registers 4
  .line 1
    invoke-direct { p0 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;-><init>()V
    const/4 v0, 0
  .line 2
    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a:I
    const/4 v1, 1
  .line 3
    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b:Z
  .line 4
    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c:Z
    const/4 v0, -1
  .line 5
    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->k:I
    const/4 v2, 0
  .line 6
    iput-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->v:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$i;
    const/high16 v2, 16128
  .line 7
    iput v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->A:F
    const/high16 v2, -16512
  .line 8
    iput v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->C:F
  .line 9
    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->F:Z
    const/4 v1, 4
  .line 10
    iput v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->G:I
  .line 11
    new-instance v1, Ljava/util/ArrayList;
    invoke-direct { v1 }, Ljava/util/ArrayList;-><init>()V
    iput-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->Q:Ljava/util/ArrayList;
  .line 12
    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->W:I
  .line 13
    new-instance v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$e;
    invoke-direct { v0, p0 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$e;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V
    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->X:Lc/i/b/c$c;
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 11
  .line 14
    invoke-direct { p0, p1, p2 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    const/4 v0, 0
  .line 15
    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a:I
    const/4 v1, 1
  .line 16
    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b:Z
  .line 17
    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c:Z
    const/4 v2, -1
  .line 18
    iput v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->k:I
    const/4 v3, 0
  .line 19
    iput-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->v:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$i;
    const/high16 v3, 16128
  .line 20
    iput v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->A:F
    const/high16 v4, -16512
  .line 21
    iput v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->C:F
  .line 22
    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->F:Z
    const/4 v5, 4
  .line 23
    iput v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->G:I
  .line 24
    new-instance v5, Ljava/util/ArrayList;
    invoke-direct { v5 }, Ljava/util/ArrayList;-><init>()V
    iput-object v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->Q:Ljava/util/ArrayList;
  .line 25
    iput v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->W:I
  .line 26
    new-instance v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$e;
    invoke-direct { v5, p0 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$e;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V
    iput-object v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->X:Lc/i/b/c$c;
  .line 27
    invoke-virtual { p1 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v5
    sget v6, Ld/c/a/a/d;->mtrl_min_touch_target_size:I
    invoke-virtual { v5, v6 }, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    move-result v5
    iput v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:I
  .line 28
    sget-object v5, Ld/c/a/a/k;->BottomSheetBehavior_Layout:[I
    invoke-virtual { p1, p2, v5 }, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    move-result-object v5
  .line 29
    sget v6, Ld/c/a/a/k;->BottomSheetBehavior_Layout_shapeAppearance:I
    invoke-virtual { v5, v6 }, Landroid/content/res/TypedArray;->hasValue(I)Z
    move-result v6
    iput-boolean v6, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:Z
  .line 30
    sget v6, Ld/c/a/a/k;->BottomSheetBehavior_Layout_backgroundTint:I
    invoke-virtual { v5, v6 }, Landroid/content/res/TypedArray;->hasValue(I)Z
    move-result v6
    if-eqz v6, :L0
  .line 31
    sget v7, Ld/c/a/a/k;->BottomSheetBehavior_Layout_backgroundTint:I
  .line 32
    invoke-static { p1, v5, v7 }, Ld/c/a/a/x/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;
    move-result-object v7
  .line 33
    invoke-direct { p0, p1, p2, v6, v7 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->X(Landroid/content/Context;Landroid/util/AttributeSet;ZLandroid/content/res/ColorStateList;)V
    goto :L1
  :L0
  .line 34
    invoke-direct { p0, p1, p2, v6 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->W(Landroid/content/Context;Landroid/util/AttributeSet;Z)V
  :L1
  .line 35
    invoke-direct { p0 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->Y()V
  .line 36
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v6, 21
    if-lt p2, v6, :L2
  .line 37
    sget p2, Ld/c/a/a/k;->BottomSheetBehavior_Layout_android_elevation:I
    invoke-virtual { v5, p2, v4 }, Landroid/content/res/TypedArray;->getDimension(IF)F
    move-result p2
    iput p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->C:F
  :L2
  .line 38
    sget p2, Ld/c/a/a/k;->BottomSheetBehavior_Layout_android_maxWidth:I
    invoke-virtual { v5, p2 }, Landroid/content/res/TypedArray;->hasValue(I)Z
    move-result p2
    if-eqz p2, :L3
  .line 39
    sget p2, Ld/c/a/a/k;->BottomSheetBehavior_Layout_android_maxWidth:I
  .line 40
    invoke-virtual { v5, p2, v2 }, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
    move-result p2
  .line 41
    invoke-virtual { p0, p2 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->n0(I)V
  :L3
  .line 42
    sget p2, Ld/c/a/a/k;->BottomSheetBehavior_Layout_behavior_peekHeight:I
    invoke-virtual { v5, p2 }, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;
    move-result-object p2
    if-eqz p2, :L4
  .line 43
    iget p2, p2, Landroid/util/TypedValue;->data:I
    if-ne p2, v2, :L4
  .line 44
    invoke-virtual { p0, p2 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->o0(I)V
    goto :L5
  :L4
  .line 45
    sget p2, Ld/c/a/a/k;->BottomSheetBehavior_Layout_behavior_peekHeight:I
  .line 46
    invoke-virtual { v5, p2, v2 }, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
    move-result p2
  .line 47
    invoke-virtual { p0, p2 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->o0(I)V
  :L5
  .line 48
    sget p2, Ld/c/a/a/k;->BottomSheetBehavior_Layout_behavior_hideable:I
    invoke-virtual { v5, p2, v0 }, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    move-result p2
    invoke-virtual { p0, p2 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->m0(Z)V
  .line 49
    sget p2, Ld/c/a/a/k;->BottomSheetBehavior_Layout_gestureInsetBottomIgnored:I
  .line 50
    invoke-virtual { v5, p2, v0 }, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    move-result p2
  .line 51
    invoke-virtual { p0, p2 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->k0(Z)V
  .line 52
    sget p2, Ld/c/a/a/k;->BottomSheetBehavior_Layout_behavior_fitToContents:I
  .line 53
    invoke-virtual { v5, p2, v1 }, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    move-result p2
  .line 54
    invoke-virtual { p0, p2 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->j0(Z)V
  .line 55
    sget p2, Ld/c/a/a/k;->BottomSheetBehavior_Layout_behavior_skipCollapsed:I
  .line 56
    invoke-virtual { v5, p2, v0 }, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    move-result p2
  .line 57
    invoke-virtual { p0, p2 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->r0(Z)V
  .line 58
    sget p2, Ld/c/a/a/k;->BottomSheetBehavior_Layout_behavior_draggable:I
    invoke-virtual { v5, p2, v1 }, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    move-result p2
    invoke-virtual { p0, p2 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h0(Z)V
  .line 59
    sget p2, Ld/c/a/a/k;->BottomSheetBehavior_Layout_behavior_saveFlags:I
    invoke-virtual { v5, p2, v0 }, Landroid/content/res/TypedArray;->getInt(II)I
    move-result p2
    invoke-virtual { p0, p2 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q0(I)V
  .line 60
    sget p2, Ld/c/a/a/k;->BottomSheetBehavior_Layout_behavior_halfExpandedRatio:I
  .line 61
    invoke-virtual { v5, p2, v3 }, Landroid/content/res/TypedArray;->getFloat(IF)F
    move-result p2
  .line 62
    invoke-virtual { p0, p2 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->l0(F)V
  .line 63
    sget p2, Ld/c/a/a/k;->BottomSheetBehavior_Layout_behavior_expandedOffset:I
    invoke-virtual { v5, p2 }, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;
    move-result-object p2
    if-eqz p2, :L6
  .line 64
    iget v2, p2, Landroid/util/TypedValue;->type:I
    const/16 v3, 16
    if-ne v2, v3, :L6
  .line 65
    iget p2, p2, Landroid/util/TypedValue;->data:I
    invoke-virtual { p0, p2 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i0(I)V
    goto :L7
  :L6
  .line 66
    sget p2, Ld/c/a/a/k;->BottomSheetBehavior_Layout_behavior_expandedOffset:I
  .line 67
    invoke-virtual { v5, p2, v0 }, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I
    move-result p2
  .line 68
    invoke-virtual { p0, p2 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i0(I)V
  :L7
  .line 69
    sget p2, Ld/c/a/a/k;->BottomSheetBehavior_Layout_paddingBottomSystemWindowInsets:I
  .line 70
    invoke-virtual { v5, p2, v0 }, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    move-result p2
    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->n:Z
  .line 71
    sget p2, Ld/c/a/a/k;->BottomSheetBehavior_Layout_paddingLeftSystemWindowInsets:I
  .line 72
    invoke-virtual { v5, p2, v0 }, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    move-result p2
    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->o:Z
  .line 73
    sget p2, Ld/c/a/a/k;->BottomSheetBehavior_Layout_paddingRightSystemWindowInsets:I
  .line 74
    invoke-virtual { v5, p2, v0 }, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    move-result p2
    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->p:Z
  .line 75
    sget p2, Ld/c/a/a/k;->BottomSheetBehavior_Layout_paddingTopSystemWindowInsets:I
  .line 76
    invoke-virtual { v5, p2, v1 }, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    move-result p2
    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:Z
  .line 77
    invoke-virtual { v5 }, Landroid/content/res/TypedArray;->recycle()V
  .line 78
    invoke-static { p1 }, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
    move-result-object p1
  .line 79
    invoke-virtual { p1 }, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I
    move-result p1
    int-to-float p1, p1
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->d:F
    return-void
.end method

.method private A0(I)V
  .registers 7
    const/4 v0, 2
    if-ne p1, v0, :L0
    return-void
  :L0
    const/4 v1, 3
    const/4 v2, 1
    const/4 v3, 0
    if-ne p1, v1, :L1
    const/4 p1, 1
    goto :L2
  :L1
    const/4 p1, 0
  :L2
  .line 1
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->u:Z
    if-eq v1, p1, :L6
  .line 2
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->u:Z
  .line 3
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->j:Ld/c/a/a/a0/g;
    if-eqz v1, :L6
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->w:Landroid/animation/ValueAnimator;
    if-eqz v1, :L6
  .line 4
    invoke-virtual { v1 }, Landroid/animation/ValueAnimator;->isRunning()Z
    move-result v1
    if-eqz v1, :L3
  .line 5
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->w:Landroid/animation/ValueAnimator;
    invoke-virtual { p1 }, Landroid/animation/ValueAnimator;->reverse()V
    goto :L6
  :L3
    const/high16 v1, 16256
    if-eqz p1, :L4
    const/4 p1, 0
    goto :L5
  :L4
    const/high16 p1, 16256
  :L5
    sub-float/2addr v1, p1
  .line 6
    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->w:Landroid/animation/ValueAnimator;
    new-array v0, v0, [F
    aput v1, v0, v3
    aput p1, v0, v2
    invoke-virtual { v4, v0 }, Landroid/animation/ValueAnimator;->setFloatValues([F)V
  .line 7
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->w:Landroid/animation/ValueAnimator;
    invoke-virtual { p1 }, Landroid/animation/ValueAnimator;->start()V
  :L6
    return-void
.end method

.method private B0(Z)V
  .registers 9
  .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->O:Ljava/lang/ref/WeakReference;
    if-nez v0, :L0
    return-void
  :L0
  .line 2
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/view/View;
    invoke-virtual { v0 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v0
  .line 3
    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    if-nez v1, :L1
    return-void
  :L1
  .line 4
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;
  .line 5
    invoke-virtual { v0 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v1
  .line 6
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v3, 16
    if-lt v2, v3, :L3
    if-eqz p1, :L3
  .line 7
    iget-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->V:Ljava/util/Map;
    if-nez v2, :L2
  .line 8
    new-instance v2, Ljava/util/HashMap;
    invoke-direct { v2, v1 }, Ljava/util/HashMap;-><init>(I)V
    iput-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->V:Ljava/util/Map;
    goto :L3
  :L2
    return-void
  :L3
    const/4 v2, 0
  :L4
    if-ge v2, v1, :L9
  .line 9
    invoke-virtual { v0, v2 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v4
  .line 10
    iget-object v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->O:Ljava/lang/ref/WeakReference;
    invoke-virtual { v5 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v5
    if-ne v4, v5, :L5
    goto :L8
  :L5
    if-eqz p1, :L7
  .line 11
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt v5, v3, :L6
  .line 12
    iget-object v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->V:Ljava/util/Map;
    invoke-virtual { v4 }, Landroid/view/View;->getImportantForAccessibility()I
    move-result v6
    invoke-static { v6 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    invoke-interface { v5, v4, v6 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L6
  .line 13
    iget-boolean v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c:Z
    if-eqz v5, :L8
    const/4 v5, 4
  .line 14
    invoke-static { v4, v5 }, Landroidx/core/view/v;->x0(Landroid/view/View;I)V
    goto :L8
  :L7
  .line 15
    iget-boolean v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c:Z
    if-eqz v5, :L8
    iget-object v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->V:Ljava/util/Map;
    if-eqz v5, :L8
  .line 16
    invoke-interface { v5, v4 }, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    move-result v5
    if-eqz v5, :L8
  .line 17
    iget-object v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->V:Ljava/util/Map;
    invoke-interface { v5, v4 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Ljava/lang/Integer;
    invoke-virtual { v5 }, Ljava/lang/Integer;->intValue()I
    move-result v5
    invoke-static { v4, v5 }, Landroidx/core/view/v;->x0(Landroid/view/View;I)V
  :L8
    add-int/lit8 v2, v2, 1
    goto :L4
  :L9
    if-nez p1, :L10
    const/4 p1, 0
  .line 18
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->V:Ljava/util/Map;
    goto :L11
  :L10
  .line 19
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c:Z
    if-eqz p1, :L11
  .line 20
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->O:Ljava/lang/ref/WeakReference;
    invoke-virtual { p1 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroid/view/View;
    const/16 v0, 8
    invoke-virtual { p1, v0 }, Landroid/view/View;->sendAccessibilityEvent(I)V
  :L11
    return-void
.end method

.method private C0(Z)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->O:Ljava/lang/ref/WeakReference;
    if-eqz v0, :L1
  .line 2
    invoke-direct { p0 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->S()V
  .line 3
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->G:I
    const/4 v1, 4
    if-ne v0, v1, :L1
  .line 4
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->O:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/view/View;
    if-eqz v0, :L1
    if-eqz p1, :L0
  .line 5
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->G:I
    invoke-direct { p0, p1 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->w0(I)V
    goto :L1
  :L0
  .line 6
    invoke-virtual { v0 }, Landroid/view/View;->requestLayout()V
  :L1
    return-void
.end method

.method static synthetic E(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Ld/c/a/a/a0/g;
  .registers 1
  .line 1
    iget-object p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->j:Ld/c/a/a/a0/g;
    return-object p0
.end method

.method static synthetic F(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z
  .registers 1
  .line 1
    iget-boolean p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b:Z
    return p0
.end method

.method static synthetic G(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)I
  .registers 2
  .line 1
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->s:I
    return p1
.end method

.method static synthetic H(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)I
  .registers 1
  .line 1
    iget p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I
    return p0
.end method

.method static synthetic I(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z
  .registers 1
  .line 1
    iget-boolean p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->E:Z
    return p0
.end method

.method static synthetic J(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z
  .registers 1
  .line 1
    iget-boolean p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->n:Z
    return p0
.end method

.method static synthetic K(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)I
  .registers 1
  .line 1
    iget p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->r:I
    return p0
.end method

.method static synthetic L(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)I
  .registers 2
  .line 1
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->r:I
    return p1
.end method

.method static synthetic M(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z
  .registers 1
  .line 1
    iget-boolean p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->o:Z
    return p0
.end method

.method static synthetic N(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z
  .registers 1
  .line 1
    iget-boolean p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->p:Z
    return p0
.end method

.method static synthetic O(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)I
  .registers 2
  .line 1
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->l:I
    return p1
.end method

.method static synthetic P(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Z)V
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->C0(Z)V
    return-void
.end method

.method static synthetic Q(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z
  .registers 1
  .line 1
    iget-boolean p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->F:Z
    return p0
.end method

.method private R(Landroid/view/View;II)I
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TV;II)I"
    }
  .end annotation
  .registers 5
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    invoke-virtual { v0, p2 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object p2
  .line 2
    invoke-direct { p0, p3 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->V(I)Landroidx/core/view/e0/f;
    move-result-object p3
  .line 3
    invoke-static { p1, p2, p3 }, Landroidx/core/view/v;->b(Landroid/view/View;Ljava/lang/CharSequence;Landroidx/core/view/e0/f;)I
    move-result p1
    return p1
.end method

.method private S()V
  .registers 3
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->U()I
    move-result v0
  .line 2
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b:Z
    if-eqz v1, :L0
  .line 3
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->N:I
    sub-int/2addr v1, v0
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->y:I
    invoke-static { v1, v0 }, Ljava/lang/Math;->max(II)I
    move-result v0
    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:I
    goto :L1
  :L0
  .line 4
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->N:I
    sub-int/2addr v1, v0
    iput v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:I
  :L1
    return-void
.end method

.method private T()V
  .registers 4
  .line 1
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->N:I
    int-to-float v0, v0
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->A:F
    const/high16 v2, 16256
    sub-float/2addr v2, v1
    mul-float v0, v0, v2
    float-to-int v0, v0
    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->z:I
    return-void
.end method

.method private U()I
  .registers 4
  .line 1
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->f:Z
    if-eqz v0, :L0
  .line 2
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g:I
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->N:I
    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->M:I
    mul-int/lit8 v2, v2, 9
    div-int/lit8 v2, v2, 16
    sub-int/2addr v1, v2
    invoke-static { v0, v1 }, Ljava/lang/Math;->max(II)I
    move-result v0
  .line 3
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->L:I
    invoke-static { v0, v1 }, Ljava/lang/Math;->min(II)I
    move-result v0
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->r:I
    add-int/2addr v0, v1
    return v0
  :L0
  .line 4
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->m:Z
    if-nez v0, :L1
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->n:Z
    if-nez v0, :L1
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->l:I
    if-lez v0, :L1
  .line 5
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I
    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:I
    add-int/2addr v0, v2
    invoke-static { v1, v0 }, Ljava/lang/Math;->max(II)I
    move-result v0
    return v0
  :L1
  .line 6
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->r:I
    add-int/2addr v0, v1
    return v0
.end method

.method private V(I)Landroidx/core/view/e0/f;
  .registers 3
  .line 1
    new-instance v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$f;
    invoke-direct { v0, p0, p1 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$f;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)V
    return-object v0
.end method

.method private W(Landroid/content/Context;Landroid/util/AttributeSet;Z)V
  .registers 5
    const/4 v0, 0
  .line 1
    invoke-direct { p0, p1, p2, p3, v0 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->X(Landroid/content/Context;Landroid/util/AttributeSet;ZLandroid/content/res/ColorStateList;)V
    return-void
.end method

.method private X(Landroid/content/Context;Landroid/util/AttributeSet;ZLandroid/content/res/ColorStateList;)V
  .registers 7
  .line 1
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:Z
    if-eqz v0, :L1
  .line 2
    sget v0, Ld/c/a/a/b;->bottomSheetStyle:I
    sget v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->Y:I
  .line 3
    invoke-static { p1, p2, v0, v1 }, Ld/c/a/a/a0/k;->e(Landroid/content/Context;Landroid/util/AttributeSet;II)Ld/c/a/a/a0/k$b;
    move-result-object p2
  .line 4
    invoke-virtual { p2 }, Ld/c/a/a/a0/k$b;->m()Ld/c/a/a/a0/k;
    move-result-object p2
    iput-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->t:Ld/c/a/a/a0/k;
  .line 5
    new-instance p2, Ld/c/a/a/a0/g;
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->t:Ld/c/a/a/a0/k;
    invoke-direct { p2, v0 }, Ld/c/a/a/a0/g;-><init>(Ld/c/a/a/a0/k;)V
    iput-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->j:Ld/c/a/a/a0/g;
  .line 6
    invoke-virtual { p2, p1 }, Ld/c/a/a/a0/g;->M(Landroid/content/Context;)V
    if-eqz p3, :L0
    if-eqz p4, :L0
  .line 7
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->j:Ld/c/a/a/a0/g;
    invoke-virtual { p1, p4 }, Ld/c/a/a/a0/g;->W(Landroid/content/res/ColorStateList;)V
    goto :L1
  :L0
  .line 8
    new-instance p2, Landroid/util/TypedValue;
    invoke-direct { p2 }, Landroid/util/TypedValue;-><init>()V
  .line 9
    invoke-virtual { p1 }, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;
    move-result-object p1
    const p3, 16842801
    const/4 p4, 1
    invoke-virtual { p1, p3, p2, p4 }, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z
  .line 10
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->j:Ld/c/a/a/a0/g;
    iget p2, p2, Landroid/util/TypedValue;->data:I
    invoke-virtual { p1, p2 }, Ld/c/a/a/a0/g;->setTint(I)V
  :L1
    return-void
.end method

.method private Y()V
  .registers 4
    const/4 v0, 2
    new-array v0, v0, [F
  .line 1
    fill-array-data v0, :L0
    invoke-static { v0 }, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;
    move-result-object v0
    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->w:Landroid/animation/ValueAnimator;
    const-wide/16 v1, 500
  .line 2
    invoke-virtual { v0, v1, v2 }, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;
  .line 3
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->w:Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;
    invoke-direct { v1, p0 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V
    invoke-virtual { v0, v1 }, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    return-void
  :L0
  .array-data 4
    0t 0t 0t 0t
    0t 0t -128t 63t
  .end array-data
.end method

.method private c0()F
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->R:Landroid/view/VelocityTracker;
    if-nez v0, :L0
    const/4 v0, 0
    return v0
  :L0
    const/16 v1, 1000
  .line 2
    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->d:F
    invoke-virtual { v0, v1, v2 }, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V
  .line 3
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->R:Landroid/view/VelocityTracker;
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->S:I
    invoke-virtual { v0, v1 }, Landroid/view/VelocityTracker;->getYVelocity(I)F
    move-result v0
    return v0
.end method

.method private e0(Landroid/view/View;Landroidx/core/view/e0/c$a;I)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TV;",
      "Landroidx/core/view/e0/c$a;",
      "I)V"
    }
  .end annotation
  .registers 5
  .line 1
    invoke-direct { p0, p3 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->V(I)Landroidx/core/view/e0/f;
    move-result-object p3
    const/4 v0, 0
  .line 2
    invoke-static { p1, p2, v0, p3 }, Landroidx/core/view/v;->k0(Landroid/view/View;Landroidx/core/view/e0/c$a;Ljava/lang/CharSequence;Landroidx/core/view/e0/f;)V
    return-void
.end method

.method private f0()V
  .registers 2
    const/4 v0, -1
  .line 1
    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->S:I
  .line 2
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->R:Landroid/view/VelocityTracker;
    if-eqz v0, :L0
  .line 3
    invoke-virtual { v0 }, Landroid/view/VelocityTracker;->recycle()V
    const/4 v0, 0
  .line 4
    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->R:Landroid/view/VelocityTracker;
  :L0
    return-void
.end method

.method private g0(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$h;)V
  .registers 5
  .line 1
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a:I
    if-nez v0, :L0
    return-void
  :L0
    const/4 v1, -1
    if-eq v0, v1, :L1
    const/4 v2, 1
    and-int/2addr v0, v2
    if-ne v0, v2, :L2
  :L1
  .line 2
    iget v0, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$h;->e:I
    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I
  :L2
  .line 3
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a:I
    if-eq v0, v1, :L3
    const/4 v2, 2
    and-int/2addr v0, v2
    if-ne v0, v2, :L4
  :L3
  .line 4
    iget-boolean v0, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$h;->f:Z
    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b:Z
  :L4
  .line 5
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a:I
    if-eq v0, v1, :L5
    const/4 v2, 4
    and-int/2addr v0, v2
    if-ne v0, v2, :L6
  :L5
  .line 6
    iget-boolean v0, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$h;->g:Z
    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D:Z
  :L6
  .line 7
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a:I
    if-eq v0, v1, :L7
    const/16 v1, 8
    and-int/2addr v0, v1
    if-ne v0, v1, :L8
  :L7
  .line 8
    iget-boolean p1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$h;->h:Z
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->E:Z
  :L8
    return-void
.end method

.method private u0(Landroid/view/View;)V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 29
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->d0()Z
    move-result v0
    if-nez v0, :L0
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->f:Z
    if-nez v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
  .line 3
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->n:Z
    if-nez v1, :L2
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->o:Z
    if-nez v1, :L2
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->p:Z
    if-nez v1, :L2
    if-nez v0, :L2
    return-void
  :L2
  .line 4
    new-instance v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$d;
    invoke-direct { v1, p0, v0 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$d;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Z)V
    invoke-static { p1, v1 }, Lcom/google/android/material/internal/l;->a(Landroid/view/View;Lcom/google/android/material/internal/l$c;)V
    return-void
.end method

.method private w0(I)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->O:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/view/View;
    if-nez v0, :L0
    return-void
  :L0
  .line 2
    invoke-virtual { v0 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v1
    if-eqz v1, :L1
  .line 3
    invoke-interface { v1 }, Landroid/view/ViewParent;->isLayoutRequested()Z
    move-result v1
    if-eqz v1, :L1
    invoke-static { v0 }, Landroidx/core/view/v;->S(Landroid/view/View;)Z
    move-result v1
    if-eqz v1, :L1
  .line 4
    new-instance v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;
    invoke-direct { v1, p0, v0, p1 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;I)V
    invoke-virtual { v0, v1 }, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    goto :L2
  :L1
  .line 5
    invoke-virtual { p0, v0, p1 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->v0(Landroid/view/View;I)V
  :L2
    return-void
.end method

.method private z0()V
  .registers 6
  .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->O:Ljava/lang/ref/WeakReference;
    if-nez v0, :L0
    return-void
  :L0
  .line 2
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/view/View;
    if-nez v0, :L1
    return-void
  :L1
    const/high16 v1, 8
  .line 3
    invoke-static { v0, v1 }, Landroidx/core/view/v;->i0(Landroid/view/View;I)V
    const/high16 v1, 4
  .line 4
    invoke-static { v0, v1 }, Landroidx/core/view/v;->i0(Landroid/view/View;I)V
    const/high16 v1, 16
  .line 5
    invoke-static { v0, v1 }, Landroidx/core/view/v;->i0(Landroid/view/View;I)V
  .line 6
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->W:I
    const/4 v2, -1
    if-eq v1, v2, :L2
  .line 7
    invoke-static { v0, v1 }, Landroidx/core/view/v;->i0(Landroid/view/View;I)V
  :L2
  .line 8
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b:Z
    const/4 v2, 6
    if-nez v1, :L3
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->G:I
    if-eq v1, v2, :L3
  .line 9
    sget v1, Ld/c/a/a/i;->bottomsheet_action_expand_halfway:I
  .line 10
    invoke-direct { p0, v0, v1, v2 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->R(Landroid/view/View;II)I
    move-result v1
    iput v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->W:I
  :L3
  .line 11
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D:Z
    if-eqz v1, :L4
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->G:I
    const/4 v3, 5
    if-eq v1, v3, :L4
  .line 12
    sget-object v1, Landroidx/core/view/e0/c$a;->j:Landroidx/core/view/e0/c$a;
    invoke-direct { p0, v0, v1, v3 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e0(Landroid/view/View;Landroidx/core/view/e0/c$a;I)V
  :L4
  .line 13
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->G:I
    const/4 v3, 4
    const/4 v4, 3
    if-eq v1, v4, :L8
    if-eq v1, v3, :L6
    if-eq v1, v2, :L5
    goto :L10
  :L5
  .line 14
    sget-object v1, Landroidx/core/view/e0/c$a;->i:Landroidx/core/view/e0/c$a;
    invoke-direct { p0, v0, v1, v3 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e0(Landroid/view/View;Landroidx/core/view/e0/c$a;I)V
  .line 15
    sget-object v1, Landroidx/core/view/e0/c$a;->h:Landroidx/core/view/e0/c$a;
    invoke-direct { p0, v0, v1, v4 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e0(Landroid/view/View;Landroidx/core/view/e0/c$a;I)V
    goto :L10
  :L6
  .line 16
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b:Z
    if-eqz v1, :L7
    const/4 v2, 3
  :L7
  .line 17
    sget-object v1, Landroidx/core/view/e0/c$a;->h:Landroidx/core/view/e0/c$a;
    invoke-direct { p0, v0, v1, v2 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e0(Landroid/view/View;Landroidx/core/view/e0/c$a;I)V
    goto :L10
  :L8
  .line 18
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b:Z
    if-eqz v1, :L9
    const/4 v2, 4
  :L9
  .line 19
    sget-object v1, Landroidx/core/view/e0/c$a;->i:Landroidx/core/view/e0/c$a;
    invoke-direct { p0, v0, v1, v2 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e0(Landroid/view/View;Landroidx/core/view/e0/c$a;I)V
  :L10
    return-void
.end method

.method public A(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TV;",
      "Landroid/view/View;",
      "Landroid/view/View;",
      "II)Z"
    }
  .end annotation
  .registers 7
    const/4 p1, 0
  .line 1
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->J:I
  .line 2
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->K:Z
    and-int/lit8 p2, p5, 2
    if-eqz p2, :L0
    const/4 p1, 1
  :L0
    return p1
.end method

.method public C(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TV;",
      "Landroid/view/View;",
      "I)V"
    }
  .end annotation
  .registers 7
  .line 1
    invoke-virtual { p2 }, Landroid/view/View;->getTop()I
    move-result p1
    invoke-virtual { p0 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b0()I
    move-result p4
    const/4 v0, 3
    if-ne p1, p4, :L0
  .line 2
    invoke-virtual { p0, v0 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->t0(I)V
    return-void
  :L0
  .line 3
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->P:Ljava/lang/ref/WeakReference;
    if-eqz p1, :L17
  .line 4
    invoke-virtual { p1 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object p1
    if-ne p3, p1, :L17
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->K:Z
    if-nez p1, :L1
    goto/16 :L17
  :L1
  .line 5
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->J:I
    const/4 p3, 4
    const/4 p4, 6
    if-lez p1, :L4
  .line 6
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b:Z
    if-eqz p1, :L2
  .line 7
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->y:I
    goto/16 :L16
  :L2
  .line 8
    invoke-virtual { p2 }, Landroid/view/View;->getTop()I
    move-result p1
  .line 9
    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->z:I
    if-le p1, p3, :L3
    move p1, p3
    goto/16 :L14
  :L3
  .line 10
    invoke-virtual { p0 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b0()I
    move-result p1
    goto/16 :L16
  :L4
  .line 11
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D:Z
    if-eqz p1, :L5
    invoke-direct { p0 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c0()F
    move-result p1
    invoke-virtual { p0, p2, p1 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->x0(Landroid/view/View;F)Z
    move-result p1
    if-eqz p1, :L5
  .line 12
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->N:I
    const/4 v0, 5
    goto/16 :L16
  :L5
  .line 13
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->J:I
    if-nez p1, :L11
  .line 14
    invoke-virtual { p2 }, Landroid/view/View;->getTop()I
    move-result p1
  .line 15
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b:Z
    if-eqz v1, :L7
  .line 16
    iget p4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->y:I
    sub-int p4, p1, p4
    invoke-static { p4 }, Ljava/lang/Math;->abs(I)I
    move-result p4
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:I
    sub-int/2addr p1, v1
    invoke-static { p1 }, Ljava/lang/Math;->abs(I)I
    move-result p1
    if-ge p4, p1, :L6
  .line 17
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->y:I
    goto :L16
  :L6
  .line 18
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:I
    goto :L12
  :L7
  .line 19
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->z:I
    if-ge p1, v1, :L9
  .line 20
    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:I
    sub-int p3, p1, p3
    invoke-static { p3 }, Ljava/lang/Math;->abs(I)I
    move-result p3
    if-ge p1, p3, :L8
  .line 21
    invoke-virtual { p0 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b0()I
    move-result p1
    goto :L16
  :L8
  .line 22
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->z:I
    goto :L14
  :L9
    sub-int v0, p1, v1
  .line 23
    invoke-static { v0 }, Ljava/lang/Math;->abs(I)I
    move-result v0
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:I
    sub-int/2addr p1, v1
    invoke-static { p1 }, Ljava/lang/Math;->abs(I)I
    move-result p1
    if-ge v0, p1, :L10
  .line 24
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->z:I
    goto :L14
  :L10
  .line 25
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:I
    goto :L12
  :L11
  .line 26
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b:Z
    if-eqz p1, :L13
  .line 27
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:I
  :L12
    const/4 v0, 4
    goto :L16
  :L13
  .line 28
    invoke-virtual { p2 }, Landroid/view/View;->getTop()I
    move-result p1
  .line 29
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->z:I
    sub-int v0, p1, v0
    invoke-static { v0 }, Ljava/lang/Math;->abs(I)I
    move-result v0
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:I
    sub-int/2addr p1, v1
    invoke-static { p1 }, Ljava/lang/Math;->abs(I)I
    move-result p1
    if-ge v0, p1, :L15
  .line 30
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->z:I
  :L14
    const/4 v0, 6
    goto :L16
  :L15
  .line 31
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:I
    goto :L12
  :L16
    const/4 p3, 0
  .line 32
    invoke-virtual { p0, p2, v0, p1, p3 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->y0(Landroid/view/View;IIZ)V
  .line 33
    iput-boolean p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->K:Z
  :L17
    return-void
.end method

.method public D(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TV;",
      "Landroid/view/MotionEvent;",
      ")Z"
    }
  .end annotation
  .registers 6
  .line 1
    invoke-virtual { p2 }, Landroid/view/View;->isShown()Z
    move-result p1
    if-nez p1, :L0
    const/4 p1, 0
    return p1
  :L0
  .line 2
    invoke-virtual { p3 }, Landroid/view/MotionEvent;->getActionMasked()I
    move-result p1
  .line 3
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->G:I
    const/4 v1, 1
    if-ne v0, v1, :L1
    if-nez p1, :L1
    return v1
  :L1
  .line 4
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H:Lc/i/b/c;
    if-eqz v0, :L2
  .line 5
    invoke-virtual { v0, p3 }, Lc/i/b/c;->z(Landroid/view/MotionEvent;)V
  :L2
    if-nez p1, :L3
  .line 6
    invoke-direct { p0 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->f0()V
  :L3
  .line 7
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->R:Landroid/view/VelocityTracker;
    if-nez v0, :L4
  .line 8
    invoke-static { }, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;
    move-result-object v0
    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->R:Landroid/view/VelocityTracker;
  :L4
  .line 9
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->R:Landroid/view/VelocityTracker;
    invoke-virtual { v0, p3 }, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V
  .line 10
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H:Lc/i/b/c;
    if-eqz v0, :L5
    const/4 v0, 2
    if-ne p1, v0, :L5
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->I:Z
    if-nez p1, :L5
  .line 11
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->T:I
    int-to-float p1, p1
    invoke-virtual { p3 }, Landroid/view/MotionEvent;->getY()F
    move-result v0
    sub-float/2addr p1, v0
    invoke-static { p1 }, Ljava/lang/Math;->abs(F)F
    move-result p1
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H:Lc/i/b/c;
    invoke-virtual { v0 }, Lc/i/b/c;->u()I
    move-result v0
    int-to-float v0, v0
    cmpl-float p1, p1, v0
    if-lez p1, :L5
  .line 12
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H:Lc/i/b/c;
    invoke-virtual { p3 }, Landroid/view/MotionEvent;->getActionIndex()I
    move-result v0
    invoke-virtual { p3, v0 }, Landroid/view/MotionEvent;->getPointerId(I)I
    move-result p3
    invoke-virtual { p1, p2, p3 }, Lc/i/b/c;->b(Landroid/view/View;I)V
  :L5
  .line 13
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->I:Z
    xor-int/2addr p1, v1
    return p1
.end method

.method Z(I)V
  .registers 5
  .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->O:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/view/View;
    if-eqz v0, :L4
  .line 2
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->Q:Ljava/util/ArrayList;
    invoke-virtual { v1 }, Ljava/util/ArrayList;->isEmpty()Z
    move-result v1
    if-nez v1, :L4
  .line 3
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:I
    if-gt p1, v1, :L1
  .line 4
    invoke-virtual { p0 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b0()I
    move-result v2
    if-ne v1, v2, :L0
    goto :L1
  :L0
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:I
    sub-int p1, v1, p1
    int-to-float p1, p1
  .line 5
    invoke-virtual { p0 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b0()I
    move-result v2
    sub-int/2addr v1, v2
    int-to-float v1, v1
    goto :L2
  :L1
  .line 6
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:I
    sub-int p1, v1, p1
    int-to-float p1, p1
    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->N:I
    sub-int/2addr v2, v1
    int-to-float v1, v2
  :L2
    div-float/2addr p1, v1
    const/4 v1, 0
  :L3
  .line 7
    iget-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->Q:Ljava/util/ArrayList;
    invoke-virtual { v2 }, Ljava/util/ArrayList;->size()I
    move-result v2
    if-ge v1, v2, :L4
  .line 8
    iget-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->Q:Ljava/util/ArrayList;
    invoke-virtual { v2, v1 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$g;
    invoke-virtual { v2, v0, p1 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$g;->a(Landroid/view/View;F)V
    add-int/lit8 v1, v1, 1
    goto :L3
  :L4
    return-void
.end method

.method a0(Landroid/view/View;)Landroid/view/View;
  .registers 5
  .line 1
    invoke-static { p1 }, Landroidx/core/view/v;->U(Landroid/view/View;)Z
    move-result v0
    if-eqz v0, :L0
    return-object p1
  :L0
  .line 2
    instance-of v0, p1, Landroid/view/ViewGroup;
    if-eqz v0, :L3
  .line 3
    check-cast p1, Landroid/view/ViewGroup;
    const/4 v0, 0
  .line 4
    invoke-virtual { p1 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v1
  :L1
    if-ge v0, v1, :L3
  .line 5
    invoke-virtual { p1, v0 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v2
    invoke-virtual { p0, v2 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a0(Landroid/view/View;)Landroid/view/View;
    move-result-object v2
    if-eqz v2, :L2
    return-object v2
  :L2
    add-int/lit8 v0, v0, 1
    goto :L1
  :L3
    const/4 p1, 0
    return-object p1
.end method

.method public b0()I
  .registers 3
  .line 1
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b:Z
    if-eqz v0, :L0
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->y:I
    goto :L3
  :L0
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->x:I
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:Z
    if-eqz v1, :L1
    const/4 v1, 0
    goto :L2
  :L1
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->s:I
  :L2
  .line 2
    invoke-static { v0, v1 }, Ljava/lang/Math;->max(II)I
    move-result v0
  :L3
    return v0
.end method

.method public d0()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->m:Z
    return v0
.end method

.method public g(Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;)V
  .registers 2
  .line 1
    invoke-super { p0, p1 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->g(Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;)V
    const/4 p1, 0
  .line 2
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->O:Ljava/lang/ref/WeakReference;
  .line 3
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H:Lc/i/b/c;
    return-void
.end method

.method public h0(Z)V
  .registers 2
  .line 1
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->F:Z
    return-void
.end method

.method public i0(I)V
  .registers 3
    if-ltz p1, :L0
  .line 1
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->x:I
    return-void
  :L0
  .line 2
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string v0, "offset must be greater than or equal to 0"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public j()V
  .registers 2
  .line 1
    invoke-super { p0 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->j()V
    const/4 v0, 0
  .line 2
    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->O:Ljava/lang/ref/WeakReference;
  .line 3
    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H:Lc/i/b/c;
    return-void
.end method

.method public j0(Z)V
  .registers 3
  .line 1
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b:Z
    if-ne v0, p1, :L0
    return-void
  :L0
  .line 2
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b:Z
  .line 3
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->O:Ljava/lang/ref/WeakReference;
    if-eqz p1, :L1
  .line 4
    invoke-direct { p0 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->S()V
  :L1
  .line 5
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b:Z
    if-eqz p1, :L2
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->G:I
    const/4 v0, 6
    if-ne p1, v0, :L2
    const/4 p1, 3
    goto :L3
  :L2
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->G:I
  :L3
    invoke-virtual { p0, p1 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->t0(I)V
  .line 6
    invoke-direct { p0 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->z0()V
    return-void
.end method

.method public k(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TV;",
      "Landroid/view/MotionEvent;",
      ")Z"
    }
  .end annotation
  .registers 13
  .line 1
    invoke-virtual { p2 }, Landroid/view/View;->isShown()Z
    move-result v0
    const/4 v1, 0
    const/4 v2, 1
    if-eqz v0, :L14
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->F:Z
    if-nez v0, :L0
    goto/16 :L14
  :L0
  .line 2
    invoke-virtual { p3 }, Landroid/view/MotionEvent;->getActionMasked()I
    move-result v0
    if-nez v0, :L1
  .line 3
    invoke-direct { p0 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->f0()V
  :L1
  .line 4
    iget-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->R:Landroid/view/VelocityTracker;
    if-nez v3, :L2
  .line 5
    invoke-static { }, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;
    move-result-object v3
    iput-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->R:Landroid/view/VelocityTracker;
  :L2
  .line 6
    iget-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->R:Landroid/view/VelocityTracker;
    invoke-virtual { v3, p3 }, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V
    const/4 v3, 0
    const/4 v4, -1
    const/4 v5, 2
    if-eqz v0, :L4
    if-eq v0, v2, :L3
    const/4 p2, 3
    if-eq v0, p2, :L3
    goto :L10
  :L3
  .line 7
    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->U:Z
  .line 8
    iput v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->S:I
  .line 9
    iget-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->I:Z
    if-eqz p2, :L10
  .line 10
    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->I:Z
    return v1
  :L4
  .line 11
    invoke-virtual { p3 }, Landroid/view/MotionEvent;->getX()F
    move-result v6
    float-to-int v6, v6
  .line 12
    invoke-virtual { p3 }, Landroid/view/MotionEvent;->getY()F
    move-result v7
    float-to-int v7, v7
    iput v7, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->T:I
  .line 13
    iget v7, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->G:I
    if-eq v7, v5, :L7
  .line 14
    iget-object v7, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->P:Ljava/lang/ref/WeakReference;
    if-eqz v7, :L5
    invoke-virtual { v7 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v7
    check-cast v7, Landroid/view/View;
    goto :L6
  :L5
    move-object v7, v3
  :L6
    if-eqz v7, :L7
  .line 15
    iget v8, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->T:I
    invoke-virtual { p1, v7, v6, v8 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->B(Landroid/view/View;II)Z
    move-result v7
    if-eqz v7, :L7
  .line 16
    invoke-virtual { p3 }, Landroid/view/MotionEvent;->getActionIndex()I
    move-result v7
    invoke-virtual { p3, v7 }, Landroid/view/MotionEvent;->getPointerId(I)I
    move-result v7
    iput v7, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->S:I
  .line 17
    iput-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->U:Z
  :L7
  .line 18
    iget v7, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->S:I
    if-ne v7, v4, :L8
    iget v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->T:I
  .line 19
    invoke-virtual { p1, p2, v6, v4 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->B(Landroid/view/View;II)Z
    move-result p2
    if-nez p2, :L8
    const/4 p2, 1
    goto :L9
  :L8
    const/4 p2, 0
  :L9
    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->I:Z
  :L10
  .line 20
    iget-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->I:Z
    if-nez p2, :L11
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H:Lc/i/b/c;
    if-eqz p2, :L11
  .line 21
    invoke-virtual { p2, p3 }, Lc/i/b/c;->G(Landroid/view/MotionEvent;)Z
    move-result p2
    if-eqz p2, :L11
    return v2
  :L11
  .line 22
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->P:Ljava/lang/ref/WeakReference;
    if-eqz p2, :L12
    invoke-virtual { p2 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object p2
    move-object v3, p2
    check-cast v3, Landroid/view/View;
  :L12
    if-ne v0, v5, :L13
    if-eqz v3, :L13
  .line 23
    iget-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->I:Z
    if-nez p2, :L13
    iget p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->G:I
    if-eq p2, v2, :L13
  .line 24
    invoke-virtual { p3 }, Landroid/view/MotionEvent;->getX()F
    move-result p2
    float-to-int p2, p2
    invoke-virtual { p3 }, Landroid/view/MotionEvent;->getY()F
    move-result v0
    float-to-int v0, v0
    invoke-virtual { p1, v3, p2, v0 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->B(Landroid/view/View;II)Z
    move-result p1
    if-nez p1, :L13
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H:Lc/i/b/c;
    if-eqz p1, :L13
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->T:I
    int-to-float p1, p1
  .line 25
    invoke-virtual { p3 }, Landroid/view/MotionEvent;->getY()F
    move-result p2
    sub-float/2addr p1, p2
    invoke-static { p1 }, Ljava/lang/Math;->abs(F)F
    move-result p1
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H:Lc/i/b/c;
    invoke-virtual { p2 }, Lc/i/b/c;->u()I
    move-result p2
    int-to-float p2, p2
    cmpl-float p1, p1, p2
    if-lez p1, :L13
    const/4 v1, 1
  :L13
    return v1
  :L14
  .line 26
    iput-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->I:Z
    return v1
.end method

.method public k0(Z)V
  .registers 2
  .line 1
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->m:Z
    return-void
.end method

.method public l(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TV;I)Z"
    }
  .end annotation
  .registers 10
  .line 1
    invoke-static { p1 }, Landroidx/core/view/v;->z(Landroid/view/View;)Z
    move-result v0
    const/4 v1, 1
    if-eqz v0, :L0
    invoke-static { p2 }, Landroidx/core/view/v;->z(Landroid/view/View;)Z
    move-result v0
    if-nez v0, :L0
  .line 2
    invoke-virtual { p2, v1 }, Landroid/view/View;->setFitsSystemWindows(Z)V
  :L0
  .line 3
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->O:Ljava/lang/ref/WeakReference;
    const/4 v2, 3
    const/4 v3, 0
    if-nez v0, :L9
  .line 4
    invoke-virtual { p1 }, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    sget v4, Ld/c/a/a/d;->design_bottom_sheet_peek_height_min:I
    invoke-virtual { v0, v4 }, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    move-result v0
    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g:I
  .line 5
    invoke-direct { p0, p2 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->u0(Landroid/view/View;)V
  .line 6
    new-instance v0, Ljava/lang/ref/WeakReference;
    invoke-direct { v0, p2 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->O:Ljava/lang/ref/WeakReference;
  .line 7
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:Z
    if-eqz v0, :L1
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->j:Ld/c/a/a/a0/g;
    if-eqz v0, :L1
  .line 8
    invoke-static { p2, v0 }, Landroidx/core/view/v;->r0(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
  :L1
  .line 9
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->j:Ld/c/a/a/a0/g;
    if-eqz v0, :L7
  .line 10
    iget v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->C:F
    const/high16 v5, -16512
    cmpl-float v5, v4, v5
    if-nez v5, :L2
  .line 11
    invoke-static { p2 }, Landroidx/core/view/v;->w(Landroid/view/View;)F
    move-result v4
  :L2
  .line 12
    invoke-virtual { v0, v4 }, Ld/c/a/a/a0/g;->V(F)V
  .line 13
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->G:I
    if-ne v0, v2, :L3
    const/4 v0, 1
    goto :L4
  :L3
    const/4 v0, 0
  :L4
    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->u:Z
  .line 14
    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->j:Ld/c/a/a/a0/g;
    if-eqz v0, :L5
    const/4 v0, 0
    goto :L6
  :L5
    const/high16 v0, 16256
  :L6
    invoke-virtual { v4, v0 }, Ld/c/a/a/a0/g;->X(F)V
  :L7
  .line 15
    invoke-direct { p0 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->z0()V
  .line 16
    invoke-static { p2 }, Landroidx/core/view/v;->A(Landroid/view/View;)I
    move-result v0
    if-nez v0, :L8
  .line 17
    invoke-static { p2, v1 }, Landroidx/core/view/v;->x0(Landroid/view/View;I)V
  :L8
  .line 18
    invoke-virtual { p2 }, Landroid/view/View;->getMeasuredWidth()I
    move-result v0
  .line 19
    iget v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->k:I
    if-le v0, v4, :L9
    const/4 v0, -1
    if-eq v4, v0, :L9
  .line 20
    invoke-virtual { p2 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
  .line 21
    iget v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->k:I
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I
  .line 22
    new-instance v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$a;
    invoke-direct { v4, p0, p2, v0 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$a;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    invoke-virtual { p2, v4 }, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
  :L9
  .line 23
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H:Lc/i/b/c;
    if-nez v0, :L10
  .line 24
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->X:Lc/i/b/c$c;
    invoke-static { p1, v0 }, Lc/i/b/c;->m(Landroid/view/ViewGroup;Lc/i/b/c$c;)Lc/i/b/c;
    move-result-object v0
    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H:Lc/i/b/c;
  :L10
  .line 25
    invoke-virtual { p2 }, Landroid/view/View;->getTop()I
    move-result v0
  .line 26
    invoke-virtual { p1, p2, p3 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->I(Landroid/view/View;I)V
  .line 27
    invoke-virtual { p1 }, Landroid/view/ViewGroup;->getWidth()I
    move-result p3
    iput p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->M:I
  .line 28
    invoke-virtual { p1 }, Landroid/view/ViewGroup;->getHeight()I
    move-result p1
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->N:I
  .line 29
    invoke-virtual { p2 }, Landroid/view/View;->getHeight()I
    move-result p1
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->L:I
  .line 30
    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->N:I
    sub-int p1, p3, p1
    iget v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->s:I
    if-ge p1, v4, :L12
  .line 31
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:Z
    if-eqz p1, :L11
  .line 32
    iput p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->L:I
    goto :L12
  :L11
    sub-int/2addr p3, v4
  .line 33
    iput p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->L:I
  :L12
  .line 34
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->N:I
    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->L:I
    sub-int/2addr p1, p3
    invoke-static { v3, p1 }, Ljava/lang/Math;->max(II)I
    move-result p1
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->y:I
  .line 35
    invoke-direct { p0 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->T()V
  .line 36
    invoke-direct { p0 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->S()V
  .line 37
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->G:I
    if-ne p1, v2, :L13
  .line 38
    invoke-virtual { p0 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b0()I
    move-result p1
    invoke-static { p2, p1 }, Landroidx/core/view/v;->Z(Landroid/view/View;I)V
    goto :L18
  :L13
    const/4 p3, 6
    if-ne p1, p3, :L14
  .line 39
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->z:I
    invoke-static { p2, p1 }, Landroidx/core/view/v;->Z(Landroid/view/View;I)V
    goto :L18
  :L14
  .line 40
    iget-boolean p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D:Z
    if-eqz p3, :L15
    const/4 p3, 5
    if-ne p1, p3, :L15
  .line 41
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->N:I
    invoke-static { p2, p1 }, Landroidx/core/view/v;->Z(Landroid/view/View;I)V
    goto :L18
  :L15
  .line 42
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->G:I
    const/4 p3, 4
    if-ne p1, p3, :L16
  .line 43
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:I
    invoke-static { p2, p1 }, Landroidx/core/view/v;->Z(Landroid/view/View;I)V
    goto :L18
  :L16
    if-eq p1, v1, :L17
    const/4 p3, 2
    if-ne p1, p3, :L18
  :L17
  .line 44
    invoke-virtual { p2 }, Landroid/view/View;->getTop()I
    move-result p1
    sub-int/2addr v0, p1
    invoke-static { p2, v0 }, Landroidx/core/view/v;->Z(Landroid/view/View;I)V
  :L18
  .line 45
    new-instance p1, Ljava/lang/ref/WeakReference;
    invoke-virtual { p0, p2 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a0(Landroid/view/View;)Landroid/view/View;
    move-result-object p2
    invoke-direct { p1, p2 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->P:Ljava/lang/ref/WeakReference;
    return v1
.end method

.method public l0(F)V
  .registers 3
    const/4 v0, 0
    cmpg-float v0, p1, v0
    if-lez v0, :L1
    const/high16 v0, 16256
    cmpl-float v0, p1, v0
    if-gez v0, :L1
  .line 1
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->A:F
  .line 2
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->O:Ljava/lang/ref/WeakReference;
    if-eqz p1, :L0
  .line 3
    invoke-direct { p0 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->T()V
  :L0
    return-void
  :L1
  .line 4
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string v0, "ratio must be a float value between 0 and 1"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public m0(Z)V
  .registers 3
  .line 1
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D:Z
    if-eq v0, p1, :L1
  .line 2
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D:Z
    if-nez p1, :L0
  .line 3
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->G:I
    const/4 v0, 5
    if-ne p1, v0, :L0
    const/4 p1, 4
  .line 4
    invoke-virtual { p0, p1 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->s0(I)V
  :L0
  .line 5
    invoke-direct { p0 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->z0()V
  :L1
    return-void
.end method

.method public n0(I)V
  .registers 2
  .line 1
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->k:I
    return-void
.end method

.method public o(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TV;",
      "Landroid/view/View;",
      "FF)Z"
    }
  .end annotation
  .registers 9
  .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->P:Ljava/lang/ref/WeakReference;
    const/4 v1, 0
    if-eqz v0, :L1
  .line 2
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    if-ne p3, v0, :L1
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->G:I
    const/4 v2, 3
    if-ne v0, v2, :L0
  .line 3
    invoke-super/range { p0 .. p5 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->o(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z
    move-result p1
    if-eqz p1, :L1
  :L0
    const/4 v1, 1
  :L1
    return v1
.end method

.method public o0(I)V
  .registers 3
    const/4 v0, 0
  .line 1
    invoke-virtual { p0, p1, v0 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->p0(IZ)V
    return-void
.end method

.method public final p0(IZ)V
  .registers 6
    const/4 v0, 1
    const/4 v1, 0
    const/4 v2, -1
    if-ne p1, v2, :L0
  .line 1
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->f:Z
    if-nez p1, :L1
  .line 2
    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->f:Z
    goto :L3
  :L0
  .line 3
    iget-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->f:Z
    if-nez v2, :L2
    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I
    if-eq v2, p1, :L1
    goto :L2
  :L1
    const/4 v0, 0
    goto :L3
  :L2
  .line 4
    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->f:Z
  .line 5
    invoke-static { v1, p1 }, Ljava/lang/Math;->max(II)I
    move-result p1
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I
  :L3
    if-eqz v0, :L4
  .line 6
    invoke-direct { p0, p2 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->C0(Z)V
  :L4
    return-void
.end method

.method public q(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TV;",
      "Landroid/view/View;",
      "II[II)V"
    }
  .end annotation
  .registers 9
    const/4 p1, 1
    if-ne p7, p1, :L0
    return-void
  :L0
  .line 1
    iget-object p4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->P:Ljava/lang/ref/WeakReference;
    if-eqz p4, :L1
    invoke-virtual { p4 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object p4
    check-cast p4, Landroid/view/View;
    goto :L2
  :L1
    const/4 p4, 0
  :L2
    if-eq p3, p4, :L3
    return-void
  :L3
  .line 2
    invoke-virtual { p2 }, Landroid/view/View;->getTop()I
    move-result p4
    sub-int p7, p4, p5
    if-lez p5, :L6
  .line 3
    invoke-virtual { p0 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b0()I
    move-result p3
    if-ge p7, p3, :L4
  .line 4
    invoke-virtual { p0 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b0()I
    move-result p3
    sub-int/2addr p4, p3
    aput p4, p6, p1
  .line 5
    aget p3, p6, p1
    neg-int p3, p3
    invoke-static { p2, p3 }, Landroidx/core/view/v;->Z(Landroid/view/View;I)V
    const/4 p3, 3
  .line 6
    invoke-virtual { p0, p3 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->t0(I)V
    goto :L10
  :L4
  .line 7
    iget-boolean p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->F:Z
    if-nez p3, :L5
    return-void
  :L5
  .line 8
    aput p5, p6, p1
    neg-int p3, p5
  .line 9
    invoke-static { p2, p3 }, Landroidx/core/view/v;->Z(Landroid/view/View;I)V
  .line 10
    invoke-virtual { p0, p1 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->t0(I)V
    goto :L10
  :L6
    if-gez p5, :L10
    const/4 v0, -1
  .line 11
    invoke-virtual { p3, v0 }, Landroid/view/View;->canScrollVertically(I)Z
    move-result p3
    if-nez p3, :L10
  .line 12
    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:I
    if-le p7, p3, :L8
    iget-boolean p7, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D:Z
    if-eqz p7, :L7
    goto :L8
  :L7
    sub-int/2addr p4, p3
  .line 13
    aput p4, p6, p1
  .line 14
    aget p3, p6, p1
    neg-int p3, p3
    invoke-static { p2, p3 }, Landroidx/core/view/v;->Z(Landroid/view/View;I)V
    const/4 p3, 4
  .line 15
    invoke-virtual { p0, p3 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->t0(I)V
    goto :L10
  :L8
  .line 16
    iget-boolean p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->F:Z
    if-nez p3, :L9
    return-void
  :L9
  .line 17
    aput p5, p6, p1
    neg-int p3, p5
  .line 18
    invoke-static { p2, p3 }, Landroidx/core/view/v;->Z(Landroid/view/View;I)V
  .line 19
    invoke-virtual { p0, p1 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->t0(I)V
  :L10
  .line 20
    invoke-virtual { p2 }, Landroid/view/View;->getTop()I
    move-result p2
    invoke-virtual { p0, p2 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->Z(I)V
  .line 21
    iput p5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->J:I
  .line 22
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->K:Z
    return-void
.end method

.method public q0(I)V
  .registers 2
  .line 1
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a:I
    return-void
.end method

.method public r0(Z)V
  .registers 2
  .line 1
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->E:Z
    return-void
.end method

.method public s0(I)V
  .registers 3
  .line 1
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->G:I
    if-ne p1, v0, :L0
    return-void
  :L0
  .line 2
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->O:Ljava/lang/ref/WeakReference;
    if-nez v0, :L3
    const/4 v0, 4
    if-eq p1, v0, :L1
    const/4 v0, 3
    if-eq p1, v0, :L1
    const/4 v0, 6
    if-eq p1, v0, :L1
  .line 3
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D:Z
    if-eqz v0, :L2
    const/4 v0, 5
    if-ne p1, v0, :L2
  :L1
  .line 4
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->G:I
  :L2
    return-void
  :L3
  .line 5
    invoke-direct { p0, p1 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->w0(I)V
    return-void
.end method

.method public t(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII[I)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TV;",
      "Landroid/view/View;",
      "IIIII[I)V"
    }
  .end annotation
  .registers 10
    return-void
.end method

.method t0(I)V
  .registers 5
  .line 1
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->G:I
    if-ne v0, p1, :L0
    return-void
  :L0
  .line 2
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->G:I
  .line 3
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->O:Ljava/lang/ref/WeakReference;
    if-nez v0, :L1
    return-void
  :L1
  .line 4
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/view/View;
    if-nez v0, :L2
    return-void
  :L2
    const/4 v1, 3
    const/4 v2, 0
    if-ne p1, v1, :L3
    const/4 v1, 1
  .line 5
    invoke-direct { p0, v1 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B0(Z)V
    goto :L5
  :L3
    const/4 v1, 6
    if-eq p1, v1, :L4
    const/4 v1, 5
    if-eq p1, v1, :L4
    const/4 v1, 4
    if-ne p1, v1, :L5
  :L4
  .line 6
    invoke-direct { p0, v2 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B0(Z)V
  :L5
  .line 7
    invoke-direct { p0, p1 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->A0(I)V
  :L6
  .line 8
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->Q:Ljava/util/ArrayList;
    invoke-virtual { v1 }, Ljava/util/ArrayList;->size()I
    move-result v1
    if-ge v2, v1, :L7
  .line 9
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->Q:Ljava/util/ArrayList;
    invoke-virtual { v1, v2 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$g;
    invoke-virtual { v1, v0, p1 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$g;->b(Landroid/view/View;I)V
    add-int/lit8 v2, v2, 1
    goto :L6
  :L7
  .line 10
    invoke-direct { p0 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->z0()V
    return-void
.end method

.method v0(Landroid/view/View;I)V
  .registers 6
    const/4 v0, 3
    const/4 v1, 4
    if-ne p2, v1, :L0
  .line 1
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:I
    goto :L4
  :L0
    const/4 v1, 6
    if-ne p2, v1, :L2
  .line 2
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->z:I
  .line 3
    iget-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b:Z
    if-eqz v2, :L1
    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->y:I
    if-gt v1, v2, :L1
    move v0, v2
    const/4 p2, 3
    goto :L4
  :L1
    move v0, v1
    goto :L4
  :L2
    if-ne p2, v0, :L3
  .line 4
    invoke-virtual { p0 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b0()I
    move-result v0
    goto :L4
  :L3
  .line 5
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D:Z
    if-eqz v0, :L5
    const/4 v0, 5
    if-ne p2, v0, :L5
  .line 6
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->N:I
  :L4
    const/4 v1, 0
  .line 7
    invoke-virtual { p0, p1, p2, v0, v1 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->y0(Landroid/view/View;IIZ)V
    return-void
  :L5
  .line 8
    new-instance p1, Ljava/lang/IllegalArgumentException;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Illegal state argument: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public x(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TV;",
      "Landroid/os/Parcelable;",
      ")V"
    }
  .end annotation
  .registers 5
  .line 1
    check-cast p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$h;
  .line 2
    invoke-virtual { p3 }, Lc/i/a/a;->j()Landroid/os/Parcelable;
    move-result-object v0
    invoke-super { p0, p1, p2, v0 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->x(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
  .line 3
    invoke-direct { p0, p3 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g0(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$h;)V
  .line 4
    iget p1, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$h;->d:I
    const/4 p2, 1
    if-eq p1, p2, :L1
    const/4 p2, 2
    if-ne p1, p2, :L0
    goto :L1
  :L0
  .line 5
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->G:I
    goto :L2
  :L1
    const/4 p1, 4
  .line 6
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->G:I
  :L2
    return-void
.end method

.method x0(Landroid/view/View;F)Z
  .registers 7
  .line 1
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->E:Z
    const/4 v1, 1
    if-eqz v0, :L0
    return v1
  :L0
  .line 2
    invoke-virtual { p1 }, Landroid/view/View;->getTop()I
    move-result v0
    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:I
    const/4 v3, 0
    if-ge v0, v2, :L1
    return v3
  :L1
  .line 3
    invoke-direct { p0 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->U()I
    move-result v0
  .line 4
    invoke-virtual { p1 }, Landroid/view/View;->getTop()I
    move-result p1
    int-to-float p1, p1
    const v2, 1036831949
    mul-float p2, p2, v2
    add-float/2addr p1, p2
  .line 5
    iget p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:I
    int-to-float p2, p2
    sub-float/2addr p1, p2
    invoke-static { p1 }, Ljava/lang/Math;->abs(F)F
    move-result p1
    int-to-float p2, v0
    div-float/2addr p1, p2
    const/high16 p2, 16128
    cmpl-float p1, p1, p2
    if-lez p1, :L2
    goto :L3
  :L2
    const/4 v1, 0
  :L3
    return v1
.end method

.method public y(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TV;)",
      "Landroid/os/Parcelable;"
    }
  .end annotation
  .registers 4
  .line 1
    new-instance v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$h;
    invoke-super { p0, p1, p2 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->y(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    move-result-object p1
    invoke-direct { v0, p1, p0 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$h;-><init>(Landroid/os/Parcelable;Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V
    return-object v0
.end method

.method y0(Landroid/view/View;IIZ)V
  .registers 7
  .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H:Lc/i/b/c;
    const/4 v1, 1
    if-eqz v0, :L2
    if-eqz p4, :L0
  .line 2
    invoke-virtual { p1 }, Landroid/view/View;->getLeft()I
    move-result p4
    invoke-virtual { v0, p4, p3 }, Lc/i/b/c;->F(II)Z
    move-result p3
    if-eqz p3, :L2
    goto :L1
  :L0
  .line 3
    invoke-virtual { p1 }, Landroid/view/View;->getLeft()I
    move-result p4
    invoke-virtual { v0, p1, p4, p3 }, Lc/i/b/c;->H(Landroid/view/View;II)Z
    move-result p3
    if-eqz p3, :L2
  :L1
    const/4 p3, 1
    goto :L3
  :L2
    const/4 p3, 0
  :L3
    if-eqz p3, :L6
    const/4 p3, 2
  .line 4
    invoke-virtual { p0, p3 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->t0(I)V
  .line 5
    invoke-direct { p0, p2 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->A0(I)V
  .line 6
    iget-object p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->v:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$i;
    if-nez p3, :L4
  .line 7
    new-instance p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$i;
    invoke-direct { p3, p0, p1, p2 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$i;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;I)V
    iput-object p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->v:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$i;
  :L4
  .line 8
    iget-object p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->v:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$i;
    invoke-static { p3 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$i;->a(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$i;)Z
    move-result p3
    if-nez p3, :L5
  .line 9
    iget-object p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->v:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$i;
    iput p2, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$i;->d:I
  .line 10
    invoke-static { p1, p3 }, Landroidx/core/view/v;->g0(Landroid/view/View;Ljava/lang/Runnable;)V
  .line 11
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->v:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$i;
    invoke-static { p1, v1 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$i;->b(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$i;Z)Z
    goto :L7
  :L5
  .line 12
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->v:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$i;
    iput p2, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$i;->d:I
    goto :L7
  :L6
  .line 13
    invoke-virtual { p0, p2 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->t0(I)V
  :L7
    return-void
.end method
