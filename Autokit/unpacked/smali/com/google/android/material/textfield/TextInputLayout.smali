.class public Lcom/google/android/material/textfield/TextInputLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcom/google/android/material/textfield/TextInputLayout$e;,
    Lcom/google/android/material/textfield/TextInputLayout$h;,
    Lcom/google/android/material/textfield/TextInputLayout$g;,
    Lcom/google/android/material/textfield/TextInputLayout$f;
  }
.end annotation

.field private final static N0:I

.field private final A:Landroid/widget/TextView;

.field private A0:Landroid/content/res/ColorStateList;

.field private B:Z

.field private B0:I

.field private C:Ljava/lang/CharSequence;

.field private C0:I

.field private D:Z

.field private D0:I

.field private E:Ld/c/a/a/a0/g;

.field private E0:I

.field private F:Ld/c/a/a/a0/g;

.field private F0:I

.field private G:Ld/c/a/a/a0/k;

.field private G0:Z

.field private final H:I

.field final H0:Lcom/google/android/material/internal/a;

.field private I:I

.field private I0:Z

.field private J:I

.field private J0:Z

.field private K:I

.field private K0:Landroid/animation/ValueAnimator;

.field private L:I

.field private L0:Z

.field private M:I

.field private M0:Z

.field private N:I

.field private O:I

.field private P:I

.field private final Q:Landroid/graphics/Rect;

.field private final R:Landroid/graphics/Rect;

.field private final S:Landroid/graphics/RectF;

.field private T:Landroid/graphics/Typeface;

.field private final U:Lcom/google/android/material/internal/CheckableImageButton;

.field private V:Landroid/content/res/ColorStateList;

.field private W:Z

.field private a0:Landroid/graphics/PorterDuff$Mode;

.field private final b:Landroid/widget/FrameLayout;

.field private b0:Z

.field private final c:Landroid/widget/LinearLayout;

.field private c0:Landroid/graphics/drawable/Drawable;

.field private final d:Landroid/widget/LinearLayout;

.field private d0:I

.field private final e:Landroid/widget/FrameLayout;

.field private e0:Landroid/view/View$OnLongClickListener;

.field f:Landroid/widget/EditText;

.field private final f0:Ljava/util/LinkedHashSet;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/LinkedHashSet<",
      "Lcom/google/android/material/textfield/TextInputLayout$f;",
      ">;"
    }
  .end annotation
.end field

.field private g:Ljava/lang/CharSequence;

.field private g0:I

.field private h:I

.field private final h0:Landroid/util/SparseArray;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Landroid/util/SparseArray<",
      "Lcom/google/android/material/textfield/e;",
      ">;"
    }
  .end annotation
.end field

.field private i:I

.field private final i0:Lcom/google/android/material/internal/CheckableImageButton;

.field private final j:Lcom/google/android/material/textfield/f;

.field private final j0:Ljava/util/LinkedHashSet;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/LinkedHashSet<",
      "Lcom/google/android/material/textfield/TextInputLayout$g;",
      ">;"
    }
  .end annotation
.end field

.field k:Z

.field private k0:Landroid/content/res/ColorStateList;

.field private l:I

.field private l0:Z

.field private m:Z

.field private m0:Landroid/graphics/PorterDuff$Mode;

.field private n:Landroid/widget/TextView;

.field private n0:Z

.field private o:I

.field private o0:Landroid/graphics/drawable/Drawable;

.field private p:I

.field private p0:I

.field private q:Ljava/lang/CharSequence;

.field private q0:Landroid/graphics/drawable/Drawable;

.field private r:Z

.field private r0:Landroid/view/View$OnLongClickListener;

.field private s:Landroid/widget/TextView;

.field private s0:Landroid/view/View$OnLongClickListener;

.field private t:Landroid/content/res/ColorStateList;

.field private final t0:Lcom/google/android/material/internal/CheckableImageButton;

.field private u:I

.field private u0:Landroid/content/res/ColorStateList;

.field private v:Landroid/content/res/ColorStateList;

.field private v0:Landroid/content/res/ColorStateList;

.field private w:Landroid/content/res/ColorStateList;

.field private w0:Landroid/content/res/ColorStateList;

.field private x:Ljava/lang/CharSequence;

.field private x0:I

.field private final y:Landroid/widget/TextView;

.field private y0:I

.field private z:Ljava/lang/CharSequence;

.field private z0:I

.method static constructor <clinit>()V
  .registers 2
  .line 1
    sget v0, Ld/c/a/a/j;->Widget_Design_TextInputLayout:I
    sput v0, Lcom/google/android/material/textfield/TextInputLayout;->N0:I
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 4
  .line 1
    sget v0, Ld/c/a/a/b;->textInputStyle:I
    invoke-direct { p0, p1, p2, v0 }, Lcom/google/android/material/textfield/TextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .registers 24
    move-object/from16 v0, p0
    move-object/from16 v7, p2
    move/from16 v8, p3
  .line 2
    sget v1, Lcom/google/android/material/textfield/TextInputLayout;->N0:I
    move-object/from16 v2, p1
    invoke-static { v2, v7, v8, v1 }, Lcom/google/android/material/theme/a/a;->c(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;
    move-result-object v1
    invoke-direct { v0, v1, v7, v8 }, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    const/4 v9, -1
  .line 3
    iput v9, v0, Lcom/google/android/material/textfield/TextInputLayout;->h:I
  .line 4
    iput v9, v0, Lcom/google/android/material/textfield/TextInputLayout;->i:I
  .line 5
    new-instance v1, Lcom/google/android/material/textfield/f;
    invoke-direct { v1, v0 }, Lcom/google/android/material/textfield/f;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;
  .line 6
    new-instance v1, Landroid/graphics/Rect;
    invoke-direct { v1 }, Landroid/graphics/Rect;-><init>()V
    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->Q:Landroid/graphics/Rect;
  .line 7
    new-instance v1, Landroid/graphics/Rect;
    invoke-direct { v1 }, Landroid/graphics/Rect;-><init>()V
    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->R:Landroid/graphics/Rect;
  .line 8
    new-instance v1, Landroid/graphics/RectF;
    invoke-direct { v1 }, Landroid/graphics/RectF;-><init>()V
    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->S:Landroid/graphics/RectF;
  .line 9
    new-instance v1, Ljava/util/LinkedHashSet;
    invoke-direct { v1 }, Ljava/util/LinkedHashSet;-><init>()V
    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->f0:Ljava/util/LinkedHashSet;
    const/4 v10, 0
  .line 10
    iput v10, v0, Lcom/google/android/material/textfield/TextInputLayout;->g0:I
  .line 11
    new-instance v1, Landroid/util/SparseArray;
    invoke-direct { v1 }, Landroid/util/SparseArray;-><init>()V
    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->h0:Landroid/util/SparseArray;
  .line 12
    new-instance v1, Ljava/util/LinkedHashSet;
    invoke-direct { v1 }, Ljava/util/LinkedHashSet;-><init>()V
    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->j0:Ljava/util/LinkedHashSet;
  .line 13
    new-instance v1, Lcom/google/android/material/internal/a;
    invoke-direct { v1, v0 }, Lcom/google/android/material/internal/a;-><init>(Landroid/view/View;)V
    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->H0:Lcom/google/android/material/internal/a;
  .line 14
    invoke-virtual/range { p0 .. p0 }, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;
    move-result-object v11
    const/4 v12, 1
  .line 15
    invoke-virtual { v0, v12 }, Landroid/widget/LinearLayout;->setOrientation(I)V
  .line 16
    invoke-virtual { v0, v10 }, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V
  .line 17
    invoke-virtual { v0, v12 }, Landroid/widget/LinearLayout;->setAddStatesFromChildren(Z)V
  .line 18
    new-instance v1, Landroid/widget/FrameLayout;
    invoke-direct { v1, v11 }, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->b:Landroid/widget/FrameLayout;
  .line 19
    invoke-virtual { v1, v12 }, Landroid/widget/FrameLayout;->setAddStatesFromChildren(Z)V
  .line 20
    iget-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->b:Landroid/widget/FrameLayout;
    invoke-virtual { v0, v1 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 21
    new-instance v1, Landroid/widget/LinearLayout;
    invoke-direct { v1, v11 }, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/LinearLayout;
  .line 22
    invoke-virtual { v1, v10 }, Landroid/widget/LinearLayout;->setOrientation(I)V
  .line 23
    iget-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;
    const/4 v13, -2
    const v3, 8388611
    invoke-direct { v2, v13, v9, v3 }, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V
    invoke-virtual { v1, v2 }, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  .line 24
    iget-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->b:Landroid/widget/FrameLayout;
    iget-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/LinearLayout;
    invoke-virtual { v1, v2 }, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V
  .line 25
    new-instance v1, Landroid/widget/LinearLayout;
    invoke-direct { v1, v11 }, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/LinearLayout;
  .line 26
    invoke-virtual { v1, v10 }, Landroid/widget/LinearLayout;->setOrientation(I)V
  .line 27
    iget-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;
    const v3, 8388613
    invoke-direct { v2, v13, v9, v3 }, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V
    invoke-virtual { v1, v2 }, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  .line 28
    iget-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->b:Landroid/widget/FrameLayout;
    iget-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/LinearLayout;
    invoke-virtual { v1, v2 }, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V
  .line 29
    new-instance v1, Landroid/widget/FrameLayout;
    invoke-direct { v1, v11 }, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/FrameLayout;
  .line 30
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct { v2, v13, v9 }, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V
    invoke-virtual { v1, v2 }, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  .line 31
    iget-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->H0:Lcom/google/android/material/internal/a;
    sget-object v2, Ld/c/a/a/l/a;->a:Landroid/animation/TimeInterpolator;
    invoke-virtual { v1, v2 }, Lcom/google/android/material/internal/a;->f0(Landroid/animation/TimeInterpolator;)V
  .line 32
    iget-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->H0:Lcom/google/android/material/internal/a;
    sget-object v2, Ld/c/a/a/l/a;->a:Landroid/animation/TimeInterpolator;
    invoke-virtual { v1, v2 }, Lcom/google/android/material/internal/a;->c0(Landroid/animation/TimeInterpolator;)V
  .line 33
    iget-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->H0:Lcom/google/android/material/internal/a;
    const v2, 8388659
    invoke-virtual { v1, v2 }, Lcom/google/android/material/internal/a;->Q(I)V
  .line 34
    sget-object v3, Ld/c/a/a/k;->TextInputLayout:[I
    sget v5, Lcom/google/android/material/textfield/TextInputLayout;->N0:I
    const/4 v1, 5
    new-array v6, v1, [I
    sget v1, Ld/c/a/a/k;->TextInputLayout_counterTextAppearance:I
    aput v1, v6, v10
    sget v1, Ld/c/a/a/k;->TextInputLayout_counterOverflowTextAppearance:I
    aput v1, v6, v12
    sget v1, Ld/c/a/a/k;->TextInputLayout_errorTextAppearance:I
    const/4 v14, 2
    aput v1, v6, v14
    sget v1, Ld/c/a/a/k;->TextInputLayout_helperTextTextAppearance:I
    const/4 v15, 3
    aput v1, v6, v15
    sget v1, Ld/c/a/a/k;->TextInputLayout_hintTextAppearance:I
    const/4 v2, 4
    aput v1, v6, v2
    move-object v1, v11
    move-object/from16 v2, p2
    move/from16 v4, p3
  .line 35
    invoke-static/range { v1 .. v6 }, Lcom/google/android/material/internal/j;->i(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroidx/appcompat/widget/u0;
    move-result-object v1
  .line 36
    sget v2, Ld/c/a/a/k;->TextInputLayout_hintEnabled:I
    invoke-virtual { v1, v2, v12 }, Landroidx/appcompat/widget/u0;->a(IZ)Z
    move-result v2
    iput-boolean v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->B:Z
  .line 37
    sget v2, Ld/c/a/a/k;->TextInputLayout_android_hint:I
    invoke-virtual { v1, v2 }, Landroidx/appcompat/widget/u0;->p(I)Ljava/lang/CharSequence;
    move-result-object v2
    invoke-virtual { v0, v2 }, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V
  .line 38
    sget v2, Ld/c/a/a/k;->TextInputLayout_hintAnimationEnabled:I
    invoke-virtual { v1, v2, v12 }, Landroidx/appcompat/widget/u0;->a(IZ)Z
    move-result v2
    iput-boolean v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->J0:Z
  .line 39
    sget v2, Ld/c/a/a/k;->TextInputLayout_expandedHintEnabled:I
    invoke-virtual { v1, v2, v12 }, Landroidx/appcompat/widget/u0;->a(IZ)Z
    move-result v2
    iput-boolean v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->I0:Z
  .line 40
    sget v2, Ld/c/a/a/k;->TextInputLayout_android_minWidth:I
    invoke-virtual { v1, v2 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result v2
    if-eqz v2, :L0
  .line 41
    sget v2, Ld/c/a/a/k;->TextInputLayout_android_minWidth:I
    invoke-virtual { v1, v2, v9 }, Landroidx/appcompat/widget/u0;->f(II)I
    move-result v2
    invoke-virtual { v0, v2 }, Lcom/google/android/material/textfield/TextInputLayout;->setMinWidth(I)V
  :L0
  .line 42
    sget v2, Ld/c/a/a/k;->TextInputLayout_android_maxWidth:I
    invoke-virtual { v1, v2 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result v2
    if-eqz v2, :L1
  .line 43
    sget v2, Ld/c/a/a/k;->TextInputLayout_android_maxWidth:I
    invoke-virtual { v1, v2, v9 }, Landroidx/appcompat/widget/u0;->f(II)I
    move-result v2
    invoke-virtual { v0, v2 }, Lcom/google/android/material/textfield/TextInputLayout;->setMaxWidth(I)V
  :L1
  .line 44
    sget v2, Lcom/google/android/material/textfield/TextInputLayout;->N0:I
  .line 45
    invoke-static { v11, v7, v8, v2 }, Ld/c/a/a/a0/k;->e(Landroid/content/Context;Landroid/util/AttributeSet;II)Ld/c/a/a/a0/k$b;
    move-result-object v2
    invoke-virtual { v2 }, Ld/c/a/a/a0/k$b;->m()Ld/c/a/a/a0/k;
    move-result-object v2
    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->G:Ld/c/a/a/a0/k;
  .line 46
    invoke-virtual { v11 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v2
    sget v3, Ld/c/a/a/d;->mtrl_textinput_box_label_cutout_padding:I
  .line 47
    invoke-virtual { v2, v3 }, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I
    move-result v2
    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->H:I
  .line 48
    sget v2, Ld/c/a/a/k;->TextInputLayout_boxCollapsedPaddingTop:I
  .line 49
    invoke-virtual { v1, v2, v10 }, Landroidx/appcompat/widget/u0;->e(II)I
    move-result v2
    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->K:I
  .line 50
    sget v2, Ld/c/a/a/k;->TextInputLayout_boxStrokeWidth:I
  .line 51
    invoke-virtual { v11 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v3
    sget v4, Ld/c/a/a/d;->mtrl_textinput_box_stroke_width_default:I
  .line 52
    invoke-virtual { v3, v4 }, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    move-result v3
  .line 53
    invoke-virtual { v1, v2, v3 }, Landroidx/appcompat/widget/u0;->f(II)I
    move-result v2
    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->M:I
  .line 54
    sget v2, Ld/c/a/a/k;->TextInputLayout_boxStrokeWidthFocused:I
  .line 55
    invoke-virtual { v11 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v3
    sget v4, Ld/c/a/a/d;->mtrl_textinput_box_stroke_width_focused:I
  .line 56
    invoke-virtual { v3, v4 }, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    move-result v3
  .line 57
    invoke-virtual { v1, v2, v3 }, Landroidx/appcompat/widget/u0;->f(II)I
    move-result v2
    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->N:I
  .line 58
    iget v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->M:I
    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->L:I
  .line 59
    sget v2, Ld/c/a/a/k;->TextInputLayout_boxCornerRadiusTopStart:I
    const/high16 v3, -16512
  .line 60
    invoke-virtual { v1, v2, v3 }, Landroidx/appcompat/widget/u0;->d(IF)F
    move-result v2
  .line 61
    sget v4, Ld/c/a/a/k;->TextInputLayout_boxCornerRadiusTopEnd:I
  .line 62
    invoke-virtual { v1, v4, v3 }, Landroidx/appcompat/widget/u0;->d(IF)F
    move-result v4
  .line 63
    sget v5, Ld/c/a/a/k;->TextInputLayout_boxCornerRadiusBottomEnd:I
  .line 64
    invoke-virtual { v1, v5, v3 }, Landroidx/appcompat/widget/u0;->d(IF)F
    move-result v5
  .line 65
    sget v6, Ld/c/a/a/k;->TextInputLayout_boxCornerRadiusBottomStart:I
  .line 66
    invoke-virtual { v1, v6, v3 }, Landroidx/appcompat/widget/u0;->d(IF)F
    move-result v3
  .line 67
    iget-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->G:Ld/c/a/a/a0/k;
    invoke-virtual { v6 }, Ld/c/a/a/a0/k;->v()Ld/c/a/a/a0/k$b;
    move-result-object v6
    const/4 v7, 0
    cmpl-float v8, v2, v7
    if-ltz v8, :L2
  .line 68
    invoke-virtual { v6, v2 }, Ld/c/a/a/a0/k$b;->A(F)Ld/c/a/a/a0/k$b;
  :L2
    cmpl-float v2, v4, v7
    if-ltz v2, :L3
  .line 69
    invoke-virtual { v6, v4 }, Ld/c/a/a/a0/k$b;->E(F)Ld/c/a/a/a0/k$b;
  :L3
    cmpl-float v2, v5, v7
    if-ltz v2, :L4
  .line 70
    invoke-virtual { v6, v5 }, Ld/c/a/a/a0/k$b;->w(F)Ld/c/a/a/a0/k$b;
  :L4
    cmpl-float v2, v3, v7
    if-ltz v2, :L5
  .line 71
    invoke-virtual { v6, v3 }, Ld/c/a/a/a0/k$b;->s(F)Ld/c/a/a/a0/k$b;
  :L5
  .line 72
    invoke-virtual { v6 }, Ld/c/a/a/a0/k$b;->m()Ld/c/a/a/a0/k;
    move-result-object v2
    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->G:Ld/c/a/a/a0/k;
  .line 73
    sget v2, Ld/c/a/a/k;->TextInputLayout_boxBackgroundColor:I
  .line 74
    invoke-static { v11, v1, v2 }, Ld/c/a/a/x/c;->b(Landroid/content/Context;Landroidx/appcompat/widget/u0;I)Landroid/content/res/ColorStateList;
    move-result-object v2
    if-eqz v2, :L7
  .line 75
    invoke-virtual { v2 }, Landroid/content/res/ColorStateList;->getDefaultColor()I
    move-result v3
    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->B0:I
  .line 76
    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->P:I
  .line 77
    invoke-virtual { v2 }, Landroid/content/res/ColorStateList;->isStateful()Z
    move-result v3
    const v4, -16842910
    if-eqz v3, :L6
    new-array v3, v12, [I
    aput v4, v3, v10
  .line 78
    invoke-virtual { v2, v3, v9 }, Landroid/content/res/ColorStateList;->getColorForState([II)I
    move-result v3
    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->C0:I
    new-array v3, v14, [I
  .line 79
    fill-array-data v3, :L40
  .line 80
    invoke-virtual { v2, v3, v9 }, Landroid/content/res/ColorStateList;->getColorForState([II)I
    move-result v3
    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->D0:I
    new-array v3, v14, [I
  .line 81
    fill-array-data v3, :L41
  .line 82
    invoke-virtual { v2, v3, v9 }, Landroid/content/res/ColorStateList;->getColorForState([II)I
    move-result v2
    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->E0:I
    goto :L8
  :L6
  .line 83
    iget v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->B0:I
    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->D0:I
  .line 84
    sget v2, Ld/c/a/a/c;->mtrl_filled_background_color:I
  .line 85
    invoke-static { v11, v2 }, Lc/a/k/a/a;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    move-result-object v2
    new-array v3, v12, [I
    aput v4, v3, v10
  .line 86
    invoke-virtual { v2, v3, v9 }, Landroid/content/res/ColorStateList;->getColorForState([II)I
    move-result v3
    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->C0:I
    new-array v3, v12, [I
    const v4, 16843623
    aput v4, v3, v10
  .line 87
    invoke-virtual { v2, v3, v9 }, Landroid/content/res/ColorStateList;->getColorForState([II)I
    move-result v2
    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->E0:I
    goto :L8
  :L7
  .line 88
    iput v10, v0, Lcom/google/android/material/textfield/TextInputLayout;->P:I
  .line 89
    iput v10, v0, Lcom/google/android/material/textfield/TextInputLayout;->B0:I
  .line 90
    iput v10, v0, Lcom/google/android/material/textfield/TextInputLayout;->C0:I
  .line 91
    iput v10, v0, Lcom/google/android/material/textfield/TextInputLayout;->D0:I
  .line 92
    iput v10, v0, Lcom/google/android/material/textfield/TextInputLayout;->E0:I
  :L8
  .line 93
    sget v2, Ld/c/a/a/k;->TextInputLayout_android_textColorHint:I
    invoke-virtual { v1, v2 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result v2
    if-eqz v2, :L9
  .line 94
    sget v2, Ld/c/a/a/k;->TextInputLayout_android_textColorHint:I
  .line 95
    invoke-virtual { v1, v2 }, Landroidx/appcompat/widget/u0;->c(I)Landroid/content/res/ColorStateList;
    move-result-object v2
    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->w0:Landroid/content/res/ColorStateList;
    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Landroid/content/res/ColorStateList;
  :L9
  .line 96
    sget v2, Ld/c/a/a/k;->TextInputLayout_boxStrokeColor:I
  .line 97
    invoke-static { v11, v1, v2 }, Ld/c/a/a/x/c;->b(Landroid/content/Context;Landroidx/appcompat/widget/u0;I)Landroid/content/res/ColorStateList;
    move-result-object v2
  .line 98
    sget v3, Ld/c/a/a/k;->TextInputLayout_boxStrokeColor:I
    invoke-virtual { v1, v3, v10 }, Landroidx/appcompat/widget/u0;->b(II)I
    move-result v3
    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->z0:I
  .line 99
    sget v3, Ld/c/a/a/c;->mtrl_textinput_default_box_stroke_color:I
  .line 100
    invoke-static { v11, v3 }, Landroidx/core/content/a;->b(Landroid/content/Context;I)I
    move-result v3
    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->x0:I
  .line 101
    sget v3, Ld/c/a/a/c;->mtrl_textinput_disabled_color:I
    invoke-static { v11, v3 }, Landroidx/core/content/a;->b(Landroid/content/Context;I)I
    move-result v3
    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->F0:I
  .line 102
    sget v3, Ld/c/a/a/c;->mtrl_textinput_hovered_box_stroke_color:I
  .line 103
    invoke-static { v11, v3 }, Landroidx/core/content/a;->b(Landroid/content/Context;I)I
    move-result v3
    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->y0:I
    if-eqz v2, :L10
  .line 104
    invoke-virtual { v0, v2 }, Lcom/google/android/material/textfield/TextInputLayout;->setBoxStrokeColorStateList(Landroid/content/res/ColorStateList;)V
  :L10
  .line 105
    sget v2, Ld/c/a/a/k;->TextInputLayout_boxStrokeErrorColor:I
    invoke-virtual { v1, v2 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result v2
    if-eqz v2, :L11
  .line 106
    sget v2, Ld/c/a/a/k;->TextInputLayout_boxStrokeErrorColor:I
  .line 107
    invoke-static { v11, v1, v2 }, Ld/c/a/a/x/c;->b(Landroid/content/Context;Landroidx/appcompat/widget/u0;I)Landroid/content/res/ColorStateList;
    move-result-object v2
  .line 108
    invoke-virtual { v0, v2 }, Lcom/google/android/material/textfield/TextInputLayout;->setBoxStrokeErrorColor(Landroid/content/res/ColorStateList;)V
  :L11
  .line 109
    sget v2, Ld/c/a/a/k;->TextInputLayout_hintTextAppearance:I
    invoke-virtual { v1, v2, v9 }, Landroidx/appcompat/widget/u0;->n(II)I
    move-result v2
    if-eq v2, v9, :L12
  .line 110
    sget v2, Ld/c/a/a/k;->TextInputLayout_hintTextAppearance:I
    invoke-virtual { v1, v2, v10 }, Landroidx/appcompat/widget/u0;->n(II)I
    move-result v2
    invoke-virtual { v0, v2 }, Lcom/google/android/material/textfield/TextInputLayout;->setHintTextAppearance(I)V
  :L12
  .line 111
    sget v2, Ld/c/a/a/k;->TextInputLayout_errorTextAppearance:I
  .line 112
    invoke-virtual { v1, v2, v10 }, Landroidx/appcompat/widget/u0;->n(II)I
    move-result v2
  .line 113
    sget v3, Ld/c/a/a/k;->TextInputLayout_errorContentDescription:I
  .line 114
    invoke-virtual { v1, v3 }, Landroidx/appcompat/widget/u0;->p(I)Ljava/lang/CharSequence;
    move-result-object v3
  .line 115
    sget v4, Ld/c/a/a/k;->TextInputLayout_errorEnabled:I
    invoke-virtual { v1, v4, v10 }, Landroidx/appcompat/widget/u0;->a(IZ)Z
    move-result v4
  .line 116
    invoke-virtual/range { p0 .. p0 }, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;
    move-result-object v5
    invoke-static { v5 }, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
    move-result-object v5
    sget v6, Ld/c/a/a/h;->design_text_input_end_icon:I
    iget-object v7, v0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/LinearLayout;
  .line 117
    invoke-virtual { v5, v6, v7, v10 }, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    move-result-object v5
    check-cast v5, Lcom/google/android/material/internal/CheckableImageButton;
    iput-object v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->t0:Lcom/google/android/material/internal/CheckableImageButton;
  .line 118
    sget v6, Ld/c/a/a/f;->text_input_error_icon:I
    invoke-virtual { v5, v6 }, Landroid/widget/ImageButton;->setId(I)V
  .line 119
    iget-object v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->t0:Lcom/google/android/material/internal/CheckableImageButton;
    const/16 v6, 8
    invoke-virtual { v5, v6 }, Landroid/widget/ImageButton;->setVisibility(I)V
  .line 120
    invoke-static { v11 }, Ld/c/a/a/x/c;->g(Landroid/content/Context;)Z
    move-result v5
    if-eqz v5, :L13
  .line 121
    iget-object v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->t0:Lcom/google/android/material/internal/CheckableImageButton;
  .line 122
    invoke-virtual { v5 }, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v5
    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;
  .line 123
    invoke-static { v5, v10 }, Landroidx/core/view/h;->d(Landroid/view/ViewGroup$MarginLayoutParams;I)V
  :L13
  .line 124
    sget v5, Ld/c/a/a/k;->TextInputLayout_errorIconDrawable:I
    invoke-virtual { v1, v5 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result v5
    if-eqz v5, :L14
  .line 125
    sget v5, Ld/c/a/a/k;->TextInputLayout_errorIconDrawable:I
    invoke-virtual { v1, v5 }, Landroidx/appcompat/widget/u0;->g(I)Landroid/graphics/drawable/Drawable;
    move-result-object v5
    invoke-virtual { v0, v5 }, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V
  :L14
  .line 126
    sget v5, Ld/c/a/a/k;->TextInputLayout_errorIconTint:I
    invoke-virtual { v1, v5 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result v5
    if-eqz v5, :L15
  .line 127
    sget v5, Ld/c/a/a/k;->TextInputLayout_errorIconTint:I
  .line 128
    invoke-static { v11, v1, v5 }, Ld/c/a/a/x/c;->b(Landroid/content/Context;Landroidx/appcompat/widget/u0;I)Landroid/content/res/ColorStateList;
    move-result-object v5
  .line 129
    invoke-virtual { v0, v5 }, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconTintList(Landroid/content/res/ColorStateList;)V
  :L15
  .line 130
    sget v5, Ld/c/a/a/k;->TextInputLayout_errorIconTintMode:I
    invoke-virtual { v1, v5 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result v5
    const/4 v7, 0
    if-eqz v5, :L16
  .line 131
    sget v5, Ld/c/a/a/k;->TextInputLayout_errorIconTintMode:I
  .line 132
    invoke-virtual { v1, v5, v9 }, Landroidx/appcompat/widget/u0;->k(II)I
    move-result v5
  .line 133
    invoke-static { v5, v7 }, Lcom/google/android/material/internal/l;->e(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    move-result-object v5
  .line 134
    invoke-virtual { v0, v5 }, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
  :L16
  .line 135
    iget-object v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->t0:Lcom/google/android/material/internal/CheckableImageButton;
  .line 136
    invoke-virtual/range { p0 .. p0 }, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;
    move-result-object v8
    sget v13, Ld/c/a/a/i;->error_icon_content_description:I
    invoke-virtual { v8, v13 }, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    move-result-object v8
  .line 137
    invoke-virtual { v5, v8 }, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V
  .line 138
    iget-object v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->t0:Lcom/google/android/material/internal/CheckableImageButton;
    invoke-static { v5, v14 }, Landroidx/core/view/v;->x0(Landroid/view/View;I)V
  .line 139
    iget-object v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->t0:Lcom/google/android/material/internal/CheckableImageButton;
    invoke-virtual { v5, v10 }, Landroid/widget/ImageButton;->setClickable(Z)V
  .line 140
    iget-object v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->t0:Lcom/google/android/material/internal/CheckableImageButton;
    invoke-virtual { v5, v10 }, Lcom/google/android/material/internal/CheckableImageButton;->setPressable(Z)V
  .line 141
    iget-object v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->t0:Lcom/google/android/material/internal/CheckableImageButton;
    invoke-virtual { v5, v10 }, Landroid/widget/ImageButton;->setFocusable(Z)V
  .line 142
    sget v5, Ld/c/a/a/k;->TextInputLayout_helperTextTextAppearance:I
  .line 143
    invoke-virtual { v1, v5, v10 }, Landroidx/appcompat/widget/u0;->n(II)I
    move-result v5
  .line 144
    sget v8, Ld/c/a/a/k;->TextInputLayout_helperTextEnabled:I
  .line 145
    invoke-virtual { v1, v8, v10 }, Landroidx/appcompat/widget/u0;->a(IZ)Z
    move-result v8
  .line 146
    sget v13, Ld/c/a/a/k;->TextInputLayout_helperText:I
    invoke-virtual { v1, v13 }, Landroidx/appcompat/widget/u0;->p(I)Ljava/lang/CharSequence;
    move-result-object v13
  .line 147
    sget v15, Ld/c/a/a/k;->TextInputLayout_placeholderTextAppearance:I
  .line 148
    invoke-virtual { v1, v15, v10 }, Landroidx/appcompat/widget/u0;->n(II)I
    move-result v15
  .line 149
    sget v14, Ld/c/a/a/k;->TextInputLayout_placeholderText:I
    invoke-virtual { v1, v14 }, Landroidx/appcompat/widget/u0;->p(I)Ljava/lang/CharSequence;
    move-result-object v14
  .line 150
    sget v12, Ld/c/a/a/k;->TextInputLayout_prefixTextAppearance:I
  .line 151
    invoke-virtual { v1, v12, v10 }, Landroidx/appcompat/widget/u0;->n(II)I
    move-result v12
  .line 152
    sget v7, Ld/c/a/a/k;->TextInputLayout_prefixText:I
    invoke-virtual { v1, v7 }, Landroidx/appcompat/widget/u0;->p(I)Ljava/lang/CharSequence;
    move-result-object v7
  .line 153
    sget v6, Ld/c/a/a/k;->TextInputLayout_suffixTextAppearance:I
  .line 154
    invoke-virtual { v1, v6, v10 }, Landroidx/appcompat/widget/u0;->n(II)I
    move-result v6
  .line 155
    sget v9, Ld/c/a/a/k;->TextInputLayout_suffixText:I
    invoke-virtual { v1, v9 }, Landroidx/appcompat/widget/u0;->p(I)Ljava/lang/CharSequence;
    move-result-object v9
    move/from16 v16, v6
  .line 156
    sget v6, Ld/c/a/a/k;->TextInputLayout_counterEnabled:I
    invoke-virtual { v1, v6, v10 }, Landroidx/appcompat/widget/u0;->a(IZ)Z
    move-result v6
  .line 157
    sget v10, Ld/c/a/a/k;->TextInputLayout_counterMaxLength:I
    move/from16 v17, v6
    const/4 v6, -1
    invoke-virtual { v1, v10, v6 }, Landroidx/appcompat/widget/u0;->k(II)I
    move-result v10
    invoke-virtual { v0, v10 }, Lcom/google/android/material/textfield/TextInputLayout;->setCounterMaxLength(I)V
  .line 158
    sget v6, Ld/c/a/a/k;->TextInputLayout_counterTextAppearance:I
    const/4 v10, 0
    invoke-virtual { v1, v6, v10 }, Landroidx/appcompat/widget/u0;->n(II)I
    move-result v6
    iput v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->p:I
  .line 159
    sget v6, Ld/c/a/a/k;->TextInputLayout_counterOverflowTextAppearance:I
  .line 160
    invoke-virtual { v1, v6, v10 }, Landroidx/appcompat/widget/u0;->n(II)I
    move-result v6
    iput v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->o:I
  .line 161
    invoke-virtual/range { p0 .. p0 }, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;
    move-result-object v6
    invoke-static { v6 }, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
    move-result-object v6
    move-object/from16 v18, v9
    sget v9, Ld/c/a/a/h;->design_text_input_start_icon:I
    move/from16 v19, v12
    iget-object v12, v0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/LinearLayout;
  .line 162
    invoke-virtual { v6, v9, v12, v10 }, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    move-result-object v6
    check-cast v6, Lcom/google/android/material/internal/CheckableImageButton;
    iput-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->U:Lcom/google/android/material/internal/CheckableImageButton;
    const/16 v9, 8
  .line 163
    invoke-virtual { v6, v9 }, Landroid/widget/ImageButton;->setVisibility(I)V
  .line 164
    invoke-static { v11 }, Ld/c/a/a/x/c;->g(Landroid/content/Context;)Z
    move-result v6
    if-eqz v6, :L17
  .line 165
    iget-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->U:Lcom/google/android/material/internal/CheckableImageButton;
  .line 166
    invoke-virtual { v6 }, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v6
    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;
  .line 167
    invoke-static { v6, v10 }, Landroidx/core/view/h;->c(Landroid/view/ViewGroup$MarginLayoutParams;I)V
  :L17
    const/4 v6, 0
  .line 168
    invoke-virtual { v0, v6 }, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconOnClickListener(Landroid/view/View$OnClickListener;)V
  .line 169
    invoke-virtual { v0, v6 }, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
  .line 170
    sget v6, Ld/c/a/a/k;->TextInputLayout_startIconDrawable:I
    invoke-virtual { v1, v6 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result v6
    if-eqz v6, :L19
  .line 171
    sget v6, Ld/c/a/a/k;->TextInputLayout_startIconDrawable:I
    invoke-virtual { v1, v6 }, Landroidx/appcompat/widget/u0;->g(I)Landroid/graphics/drawable/Drawable;
    move-result-object v6
    invoke-virtual { v0, v6 }, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconDrawable(Landroid/graphics/drawable/Drawable;)V
  .line 172
    sget v6, Ld/c/a/a/k;->TextInputLayout_startIconContentDescription:I
    invoke-virtual { v1, v6 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result v6
    if-eqz v6, :L18
  .line 173
    sget v6, Ld/c/a/a/k;->TextInputLayout_startIconContentDescription:I
  .line 174
    invoke-virtual { v1, v6 }, Landroidx/appcompat/widget/u0;->p(I)Ljava/lang/CharSequence;
    move-result-object v6
  .line 175
    invoke-virtual { v0, v6 }, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconContentDescription(Ljava/lang/CharSequence;)V
  :L18
  .line 176
    sget v6, Ld/c/a/a/k;->TextInputLayout_startIconCheckable:I
    const/4 v9, 1
    invoke-virtual { v1, v6, v9 }, Landroidx/appcompat/widget/u0;->a(IZ)Z
    move-result v6
    invoke-virtual { v0, v6 }, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconCheckable(Z)V
  :L19
  .line 177
    sget v6, Ld/c/a/a/k;->TextInputLayout_startIconTint:I
    invoke-virtual { v1, v6 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result v6
    if-eqz v6, :L20
  .line 178
    sget v6, Ld/c/a/a/k;->TextInputLayout_startIconTint:I
  .line 179
    invoke-static { v11, v1, v6 }, Ld/c/a/a/x/c;->b(Landroid/content/Context;Landroidx/appcompat/widget/u0;I)Landroid/content/res/ColorStateList;
    move-result-object v6
  .line 180
    invoke-virtual { v0, v6 }, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconTintList(Landroid/content/res/ColorStateList;)V
  :L20
  .line 181
    sget v6, Ld/c/a/a/k;->TextInputLayout_startIconTintMode:I
    invoke-virtual { v1, v6 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result v6
    if-eqz v6, :L21
  .line 182
    sget v6, Ld/c/a/a/k;->TextInputLayout_startIconTintMode:I
    const/4 v9, -1
  .line 183
    invoke-virtual { v1, v6, v9 }, Landroidx/appcompat/widget/u0;->k(II)I
    move-result v6
    const/4 v9, 0
  .line 184
    invoke-static { v6, v9 }, Lcom/google/android/material/internal/l;->e(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    move-result-object v6
  .line 185
    invoke-virtual { v0, v6 }, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
  :L21
  .line 186
    sget v6, Ld/c/a/a/k;->TextInputLayout_boxBackgroundMode:I
    const/4 v9, 0
  .line 187
    invoke-virtual { v1, v6, v9 }, Landroidx/appcompat/widget/u0;->k(II)I
    move-result v6
  .line 188
    invoke-virtual { v0, v6 }, Lcom/google/android/material/textfield/TextInputLayout;->setBoxBackgroundMode(I)V
  .line 189
    invoke-virtual/range { p0 .. p0 }, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;
    move-result-object v6
    invoke-static { v6 }, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
    move-result-object v6
    sget v10, Ld/c/a/a/h;->design_text_input_end_icon:I
    iget-object v12, v0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/FrameLayout;
  .line 190
    invoke-virtual { v6, v10, v12, v9 }, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    move-result-object v6
    check-cast v6, Lcom/google/android/material/internal/CheckableImageButton;
    iput-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Lcom/google/android/material/internal/CheckableImageButton;
  .line 191
    iget-object v9, v0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/FrameLayout;
    invoke-virtual { v9, v6 }, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V
  .line 192
    iget-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Lcom/google/android/material/internal/CheckableImageButton;
    const/16 v9, 8
    invoke-virtual { v6, v9 }, Landroid/widget/ImageButton;->setVisibility(I)V
  .line 193
    invoke-static { v11 }, Ld/c/a/a/x/c;->g(Landroid/content/Context;)Z
    move-result v6
    if-eqz v6, :L22
  .line 194
    iget-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Lcom/google/android/material/internal/CheckableImageButton;
  .line 195
    invoke-virtual { v6 }, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v6
    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v9, 0
  .line 196
    invoke-static { v6, v9 }, Landroidx/core/view/h;->d(Landroid/view/ViewGroup$MarginLayoutParams;I)V
    goto :L23
  :L22
    const/4 v9, 0
  :L23
  .line 197
    iget-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->h0:Landroid/util/SparseArray;
    new-instance v10, Lcom/google/android/material/textfield/b;
    invoke-direct { v10, v0 }, Lcom/google/android/material/textfield/b;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    const/4 v12, -1
    invoke-virtual { v6, v12, v10 }, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
  .line 198
    iget-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->h0:Landroid/util/SparseArray;
    new-instance v10, Lcom/google/android/material/textfield/h;
    invoke-direct { v10, v0 }, Lcom/google/android/material/textfield/h;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    invoke-virtual { v6, v9, v10 }, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
  .line 199
    iget-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->h0:Landroid/util/SparseArray;
    new-instance v9, Lcom/google/android/material/textfield/i;
    invoke-direct { v9, v0 }, Lcom/google/android/material/textfield/i;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    const/4 v10, 1
    invoke-virtual { v6, v10, v9 }, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
  .line 200
    iget-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->h0:Landroid/util/SparseArray;
    new-instance v9, Lcom/google/android/material/textfield/a;
    invoke-direct { v9, v0 }, Lcom/google/android/material/textfield/a;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    const/4 v10, 2
    invoke-virtual { v6, v10, v9 }, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
  .line 201
    iget-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->h0:Landroid/util/SparseArray;
    new-instance v9, Lcom/google/android/material/textfield/d;
    invoke-direct { v9, v0 }, Lcom/google/android/material/textfield/d;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    const/4 v10, 3
    invoke-virtual { v6, v10, v9 }, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
  .line 202
    sget v6, Ld/c/a/a/k;->TextInputLayout_endIconMode:I
    invoke-virtual { v1, v6 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result v6
    if-eqz v6, :L26
  .line 203
    sget v6, Ld/c/a/a/k;->TextInputLayout_endIconMode:I
    const/4 v9, 0
    invoke-virtual { v1, v6, v9 }, Landroidx/appcompat/widget/u0;->k(II)I
    move-result v6
    invoke-virtual { v0, v6 }, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconMode(I)V
  .line 204
    sget v6, Ld/c/a/a/k;->TextInputLayout_endIconDrawable:I
    invoke-virtual { v1, v6 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result v6
    if-eqz v6, :L24
  .line 205
    sget v6, Ld/c/a/a/k;->TextInputLayout_endIconDrawable:I
    invoke-virtual { v1, v6 }, Landroidx/appcompat/widget/u0;->g(I)Landroid/graphics/drawable/Drawable;
    move-result-object v6
    invoke-virtual { v0, v6 }, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V
  :L24
  .line 206
    sget v6, Ld/c/a/a/k;->TextInputLayout_endIconContentDescription:I
    invoke-virtual { v1, v6 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result v6
    if-eqz v6, :L25
  .line 207
    sget v6, Ld/c/a/a/k;->TextInputLayout_endIconContentDescription:I
  .line 208
    invoke-virtual { v1, v6 }, Landroidx/appcompat/widget/u0;->p(I)Ljava/lang/CharSequence;
    move-result-object v6
  .line 209
    invoke-virtual { v0, v6 }, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V
  :L25
  .line 210
    sget v6, Ld/c/a/a/k;->TextInputLayout_endIconCheckable:I
    const/4 v9, 1
    invoke-virtual { v1, v6, v9 }, Landroidx/appcompat/widget/u0;->a(IZ)Z
    move-result v6
    invoke-virtual { v0, v6 }, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconCheckable(Z)V
    goto :L28
  :L26
  .line 211
    sget v6, Ld/c/a/a/k;->TextInputLayout_passwordToggleEnabled:I
    invoke-virtual { v1, v6 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result v6
    if-eqz v6, :L28
  .line 212
    sget v6, Ld/c/a/a/k;->TextInputLayout_passwordToggleEnabled:I
    const/4 v9, 0
  .line 213
    invoke-virtual { v1, v6, v9 }, Landroidx/appcompat/widget/u0;->a(IZ)Z
    move-result v6
  .line 214
    invoke-virtual { v0, v6 }, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconMode(I)V
  .line 215
    sget v6, Ld/c/a/a/k;->TextInputLayout_passwordToggleDrawable:I
    invoke-virtual { v1, v6 }, Landroidx/appcompat/widget/u0;->g(I)Landroid/graphics/drawable/Drawable;
    move-result-object v6
    invoke-virtual { v0, v6 }, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V
  .line 216
    sget v6, Ld/c/a/a/k;->TextInputLayout_passwordToggleContentDescription:I
  .line 217
    invoke-virtual { v1, v6 }, Landroidx/appcompat/widget/u0;->p(I)Ljava/lang/CharSequence;
    move-result-object v6
  .line 218
    invoke-virtual { v0, v6 }, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V
  .line 219
    sget v6, Ld/c/a/a/k;->TextInputLayout_passwordToggleTint:I
    invoke-virtual { v1, v6 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result v6
    if-eqz v6, :L27
  .line 220
    sget v6, Ld/c/a/a/k;->TextInputLayout_passwordToggleTint:I
  .line 221
    invoke-static { v11, v1, v6 }, Ld/c/a/a/x/c;->b(Landroid/content/Context;Landroidx/appcompat/widget/u0;I)Landroid/content/res/ColorStateList;
    move-result-object v6
  .line 222
    invoke-virtual { v0, v6 }, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconTintList(Landroid/content/res/ColorStateList;)V
  :L27
  .line 223
    sget v6, Ld/c/a/a/k;->TextInputLayout_passwordToggleTintMode:I
    invoke-virtual { v1, v6 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result v6
    if-eqz v6, :L28
  .line 224
    sget v6, Ld/c/a/a/k;->TextInputLayout_passwordToggleTintMode:I
    const/4 v9, -1
  .line 225
    invoke-virtual { v1, v6, v9 }, Landroidx/appcompat/widget/u0;->k(II)I
    move-result v6
    const/4 v9, 0
  .line 226
    invoke-static { v6, v9 }, Lcom/google/android/material/internal/l;->e(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    move-result-object v6
  .line 227
    invoke-virtual { v0, v6 }, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
  :L28
  .line 228
    sget v6, Ld/c/a/a/k;->TextInputLayout_passwordToggleEnabled:I
    invoke-virtual { v1, v6 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result v6
    if-nez v6, :L30
  .line 229
    sget v6, Ld/c/a/a/k;->TextInputLayout_endIconTint:I
    invoke-virtual { v1, v6 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result v6
    if-eqz v6, :L29
  .line 230
    sget v6, Ld/c/a/a/k;->TextInputLayout_endIconTint:I
  .line 231
    invoke-static { v11, v1, v6 }, Ld/c/a/a/x/c;->b(Landroid/content/Context;Landroidx/appcompat/widget/u0;I)Landroid/content/res/ColorStateList;
    move-result-object v6
  .line 232
    invoke-virtual { v0, v6 }, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconTintList(Landroid/content/res/ColorStateList;)V
  :L29
  .line 233
    sget v6, Ld/c/a/a/k;->TextInputLayout_endIconTintMode:I
    invoke-virtual { v1, v6 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result v6
    if-eqz v6, :L30
  .line 234
    sget v6, Ld/c/a/a/k;->TextInputLayout_endIconTintMode:I
    const/4 v9, -1
  .line 235
    invoke-virtual { v1, v6, v9 }, Landroidx/appcompat/widget/u0;->k(II)I
    move-result v6
    const/4 v9, 0
  .line 236
    invoke-static { v6, v9 }, Lcom/google/android/material/internal/l;->e(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    move-result-object v6
  .line 237
    invoke-virtual { v0, v6 }, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
  :L30
  .line 238
    new-instance v6, Landroidx/appcompat/widget/x;
    invoke-direct { v6, v11 }, Landroidx/appcompat/widget/x;-><init>(Landroid/content/Context;)V
    iput-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->y:Landroid/widget/TextView;
  .line 239
    sget v9, Ld/c/a/a/f;->textinput_prefix_text:I
    invoke-virtual { v6, v9 }, Landroid/widget/TextView;->setId(I)V
  .line 240
    iget-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->y:Landroid/widget/TextView;
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;
    const/4 v10, -2
    invoke-direct { v9, v10, v10 }, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V
    invoke-virtual { v6, v9 }, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  .line 241
    iget-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->y:Landroid/widget/TextView;
    const/4 v9, 1
    invoke-static { v6, v9 }, Landroidx/core/view/v;->q0(Landroid/view/View;I)V
  .line 242
    iget-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/LinearLayout;
    iget-object v9, v0, Lcom/google/android/material/textfield/TextInputLayout;->U:Lcom/google/android/material/internal/CheckableImageButton;
    invoke-virtual { v6, v9 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 243
    iget-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/LinearLayout;
    iget-object v9, v0, Lcom/google/android/material/textfield/TextInputLayout;->y:Landroid/widget/TextView;
    invoke-virtual { v6, v9 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 244
    new-instance v6, Landroidx/appcompat/widget/x;
    invoke-direct { v6, v11 }, Landroidx/appcompat/widget/x;-><init>(Landroid/content/Context;)V
    iput-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->A:Landroid/widget/TextView;
  .line 245
    sget v9, Ld/c/a/a/f;->textinput_suffix_text:I
    invoke-virtual { v6, v9 }, Landroid/widget/TextView;->setId(I)V
  .line 246
    iget-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->A:Landroid/widget/TextView;
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;
    const/16 v10, 80
    const/4 v11, -2
    invoke-direct { v9, v11, v11, v10 }, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V
    invoke-virtual { v6, v9 }, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  .line 247
    iget-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->A:Landroid/widget/TextView;
    const/4 v9, 1
    invoke-static { v6, v9 }, Landroidx/core/view/v;->q0(Landroid/view/View;I)V
  .line 248
    iget-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/LinearLayout;
    iget-object v9, v0, Lcom/google/android/material/textfield/TextInputLayout;->A:Landroid/widget/TextView;
    invoke-virtual { v6, v9 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 249
    iget-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/LinearLayout;
    iget-object v9, v0, Lcom/google/android/material/textfield/TextInputLayout;->t0:Lcom/google/android/material/internal/CheckableImageButton;
    invoke-virtual { v6, v9 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 250
    iget-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/LinearLayout;
    iget-object v9, v0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/FrameLayout;
    invoke-virtual { v6, v9 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 251
    invoke-virtual { v0, v8 }, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextEnabled(Z)V
  .line 252
    invoke-virtual { v0, v13 }, Lcom/google/android/material/textfield/TextInputLayout;->setHelperText(Ljava/lang/CharSequence;)V
  .line 253
    invoke-virtual { v0, v5 }, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextTextAppearance(I)V
  .line 254
    invoke-virtual { v0, v4 }, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V
  .line 255
    invoke-virtual { v0, v2 }, Lcom/google/android/material/textfield/TextInputLayout;->setErrorTextAppearance(I)V
  .line 256
    invoke-virtual { v0, v3 }, Lcom/google/android/material/textfield/TextInputLayout;->setErrorContentDescription(Ljava/lang/CharSequence;)V
  .line 257
    iget v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->p:I
    invoke-virtual { v0, v2 }, Lcom/google/android/material/textfield/TextInputLayout;->setCounterTextAppearance(I)V
  .line 258
    iget v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->o:I
    invoke-virtual { v0, v2 }, Lcom/google/android/material/textfield/TextInputLayout;->setCounterOverflowTextAppearance(I)V
  .line 259
    invoke-virtual { v0, v14 }, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderText(Ljava/lang/CharSequence;)V
  .line 260
    invoke-virtual { v0, v15 }, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderTextAppearance(I)V
  .line 261
    invoke-virtual { v0, v7 }, Lcom/google/android/material/textfield/TextInputLayout;->setPrefixText(Ljava/lang/CharSequence;)V
    move/from16 v2, v19
  .line 262
    invoke-virtual { v0, v2 }, Lcom/google/android/material/textfield/TextInputLayout;->setPrefixTextAppearance(I)V
    move-object/from16 v2, v18
  .line 263
    invoke-virtual { v0, v2 }, Lcom/google/android/material/textfield/TextInputLayout;->setSuffixText(Ljava/lang/CharSequence;)V
    move/from16 v2, v16
  .line 264
    invoke-virtual { v0, v2 }, Lcom/google/android/material/textfield/TextInputLayout;->setSuffixTextAppearance(I)V
  .line 265
    sget v2, Ld/c/a/a/k;->TextInputLayout_errorTextColor:I
    invoke-virtual { v1, v2 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result v2
    if-eqz v2, :L31
  .line 266
    sget v2, Ld/c/a/a/k;->TextInputLayout_errorTextColor:I
    invoke-virtual { v1, v2 }, Landroidx/appcompat/widget/u0;->c(I)Landroid/content/res/ColorStateList;
    move-result-object v2
    invoke-virtual { v0, v2 }, Lcom/google/android/material/textfield/TextInputLayout;->setErrorTextColor(Landroid/content/res/ColorStateList;)V
  :L31
  .line 267
    sget v2, Ld/c/a/a/k;->TextInputLayout_helperTextTextColor:I
    invoke-virtual { v1, v2 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result v2
    if-eqz v2, :L32
  .line 268
    sget v2, Ld/c/a/a/k;->TextInputLayout_helperTextTextColor:I
    invoke-virtual { v1, v2 }, Landroidx/appcompat/widget/u0;->c(I)Landroid/content/res/ColorStateList;
    move-result-object v2
    invoke-virtual { v0, v2 }, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextColor(Landroid/content/res/ColorStateList;)V
  :L32
  .line 269
    sget v2, Ld/c/a/a/k;->TextInputLayout_hintTextColor:I
    invoke-virtual { v1, v2 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result v2
    if-eqz v2, :L33
  .line 270
    sget v2, Ld/c/a/a/k;->TextInputLayout_hintTextColor:I
    invoke-virtual { v1, v2 }, Landroidx/appcompat/widget/u0;->c(I)Landroid/content/res/ColorStateList;
    move-result-object v2
    invoke-virtual { v0, v2 }, Lcom/google/android/material/textfield/TextInputLayout;->setHintTextColor(Landroid/content/res/ColorStateList;)V
  :L33
  .line 271
    sget v2, Ld/c/a/a/k;->TextInputLayout_counterTextColor:I
    invoke-virtual { v1, v2 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result v2
    if-eqz v2, :L34
  .line 272
    sget v2, Ld/c/a/a/k;->TextInputLayout_counterTextColor:I
    invoke-virtual { v1, v2 }, Landroidx/appcompat/widget/u0;->c(I)Landroid/content/res/ColorStateList;
    move-result-object v2
    invoke-virtual { v0, v2 }, Lcom/google/android/material/textfield/TextInputLayout;->setCounterTextColor(Landroid/content/res/ColorStateList;)V
  :L34
  .line 273
    sget v2, Ld/c/a/a/k;->TextInputLayout_counterOverflowTextColor:I
    invoke-virtual { v1, v2 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result v2
    if-eqz v2, :L35
  .line 274
    sget v2, Ld/c/a/a/k;->TextInputLayout_counterOverflowTextColor:I
  .line 275
    invoke-virtual { v1, v2 }, Landroidx/appcompat/widget/u0;->c(I)Landroid/content/res/ColorStateList;
    move-result-object v2
  .line 276
    invoke-virtual { v0, v2 }, Lcom/google/android/material/textfield/TextInputLayout;->setCounterOverflowTextColor(Landroid/content/res/ColorStateList;)V
  :L35
  .line 277
    sget v2, Ld/c/a/a/k;->TextInputLayout_placeholderTextColor:I
    invoke-virtual { v1, v2 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result v2
    if-eqz v2, :L36
  .line 278
    sget v2, Ld/c/a/a/k;->TextInputLayout_placeholderTextColor:I
  .line 279
    invoke-virtual { v1, v2 }, Landroidx/appcompat/widget/u0;->c(I)Landroid/content/res/ColorStateList;
    move-result-object v2
  .line 280
    invoke-virtual { v0, v2 }, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderTextColor(Landroid/content/res/ColorStateList;)V
  :L36
  .line 281
    sget v2, Ld/c/a/a/k;->TextInputLayout_prefixTextColor:I
    invoke-virtual { v1, v2 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result v2
    if-eqz v2, :L37
  .line 282
    sget v2, Ld/c/a/a/k;->TextInputLayout_prefixTextColor:I
    invoke-virtual { v1, v2 }, Landroidx/appcompat/widget/u0;->c(I)Landroid/content/res/ColorStateList;
    move-result-object v2
    invoke-virtual { v0, v2 }, Lcom/google/android/material/textfield/TextInputLayout;->setPrefixTextColor(Landroid/content/res/ColorStateList;)V
  :L37
  .line 283
    sget v2, Ld/c/a/a/k;->TextInputLayout_suffixTextColor:I
    invoke-virtual { v1, v2 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result v2
    if-eqz v2, :L38
  .line 284
    sget v2, Ld/c/a/a/k;->TextInputLayout_suffixTextColor:I
    invoke-virtual { v1, v2 }, Landroidx/appcompat/widget/u0;->c(I)Landroid/content/res/ColorStateList;
    move-result-object v2
    invoke-virtual { v0, v2 }, Lcom/google/android/material/textfield/TextInputLayout;->setSuffixTextColor(Landroid/content/res/ColorStateList;)V
  :L38
    move/from16 v2, v17
  .line 285
    invoke-virtual { v0, v2 }, Lcom/google/android/material/textfield/TextInputLayout;->setCounterEnabled(Z)V
  .line 286
    sget v2, Ld/c/a/a/k;->TextInputLayout_android_enabled:I
    const/4 v3, 1
    invoke-virtual { v1, v2, v3 }, Landroidx/appcompat/widget/u0;->a(IZ)Z
    move-result v2
    invoke-virtual { v0, v2 }, Lcom/google/android/material/textfield/TextInputLayout;->setEnabled(Z)V
  .line 287
    invoke-virtual { v1 }, Landroidx/appcompat/widget/u0;->w()V
    const/4 v1, 2
  .line 288
    invoke-static { v0, v1 }, Landroidx/core/view/v;->x0(Landroid/view/View;I)V
  .line 289
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 26
    if-lt v1, v2, :L39
  .line 290
    invoke-static { v0, v3 }, Landroidx/core/view/v;->y0(Landroid/view/View;I)V
  :L39
    return-void
  :L40
  .array-data 4
    -100t 0t 1t 1t
    -98t 0t 1t 1t
  .end array-data
  :L41
  .array-data 4
    103t 3t 1t 1t
    -98t 0t 1t 1t
  .end array-data
.end method

.method private A()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->B:Z
    if-eqz v0, :L0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:Ljava/lang/CharSequence;
    invoke-static { v0 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    if-nez v0, :L0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Ld/c/a/a/a0/g;
    instance-of v0, v0, Lcom/google/android/material/textfield/c;
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method private A0()V
  .registers 6
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    if-nez v0, :L0
    return-void
  :L0
  .line 2
    invoke-virtual { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->Q()Z
    move-result v0
    if-eqz v0, :L1
    const/4 v0, 0
    goto :L2
  :L1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    invoke-static { v0 }, Landroidx/core/view/v;->I(Landroid/view/View;)I
    move-result v0
  :L2
  .line 3
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->y:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
  .line 4
    invoke-virtual { v2 }, Landroid/widget/EditText;->getCompoundPaddingTop()I
    move-result v2
  .line 5
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;
    move-result-object v3
  .line 6
    invoke-virtual { v3 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v3
    sget v4, Ld/c/a/a/d;->material_input_text_to_prefix_suffix_padding:I
  .line 7
    invoke-virtual { v3, v4 }, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    move-result v3
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
  .line 8
    invoke-virtual { v4 }, Landroid/widget/EditText;->getCompoundPaddingBottom()I
    move-result v4
  .line 9
    invoke-static { v1, v0, v2, v3, v4 }, Landroidx/core/view/v;->A0(Landroid/view/View;IIII)V
    return-void
.end method

.method private B()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f0:Ljava/util/LinkedHashSet;
    invoke-virtual { v0 }, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout$f;
  .line 2
    invoke-interface { v1, p0 }, Lcom/google/android/material/textfield/TextInputLayout$f;->a(Lcom/google/android/material/textfield/TextInputLayout;)V
    goto :L0
  :L1
    return-void
.end method

.method private B0()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->y:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->x:Ljava/lang/CharSequence;
    if-eqz v1, :L0
    invoke-virtual { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->N()Z
    move-result v1
    if-nez v1, :L0
    const/4 v1, 0
    goto :L1
  :L0
    const/16 v1, 8
  :L1
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setVisibility(I)V
  .line 2
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->r0()Z
    return-void
.end method

.method private C(I)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j0:Ljava/util/LinkedHashSet;
    invoke-virtual { v0 }, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout$g;
  .line 2
    invoke-interface { v1, p0, p1 }, Lcom/google/android/material/textfield/TextInputLayout$g;->a(Lcom/google/android/material/textfield/TextInputLayout;I)V
    goto :L0
  :L1
    return-void
.end method

.method private C0(ZZ)V
  .registers 7
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->A0:Landroid/content/res/ColorStateList;
    invoke-virtual { v0 }, Landroid/content/res/ColorStateList;->getDefaultColor()I
    move-result v0
  .line 2
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->A0:Landroid/content/res/ColorStateList;
    const/4 v2, 2
    new-array v3, v2, [I
    fill-array-data v3, :L3
  .line 3
    invoke-virtual { v1, v3, v0 }, Landroid/content/res/ColorStateList;->getColorForState([II)I
    move-result v1
  .line 4
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->A0:Landroid/content/res/ColorStateList;
    new-array v2, v2, [I
    fill-array-data v2, :L4
  .line 5
    invoke-virtual { v3, v2, v0 }, Landroid/content/res/ColorStateList;->getColorForState([II)I
    move-result v2
    if-eqz p1, :L0
  .line 6
    iput v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I
    goto :L2
  :L0
    if-eqz p2, :L1
  .line 7
    iput v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I
    goto :L2
  :L1
  .line 8
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I
  :L2
    return-void
  :L3
  .array-data 4
    103t 3t 1t 1t
    -98t 0t 1t 1t
  .end array-data
  :L4
  .array-data 4
    -2t 2t 1t 1t
    -98t 0t 1t 1t
  .end array-data
.end method

.method private D(Landroid/graphics/Canvas;)V
  .registers 5
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Ld/c/a/a/a0/g;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;
    move-result-object v0
  .line 3
    iget v1, v0, Landroid/graphics/Rect;->bottom:I
    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:I
    sub-int/2addr v1, v2
    iput v1, v0, Landroid/graphics/Rect;->top:I
  .line 4
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Ld/c/a/a/a0/g;
    invoke-virtual { v0, p1 }, Ld/c/a/a/a0/g;->draw(Landroid/graphics/Canvas;)V
  :L0
    return-void
.end method

.method private D0()V
  .registers 6
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    if-nez v0, :L0
    return-void
  :L0
  .line 2
    invoke-virtual { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->K()Z
    move-result v0
    if-nez v0, :L2
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->L()Z
    move-result v0
    if-eqz v0, :L1
    goto :L2
  :L1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    invoke-static { v0 }, Landroidx/core/view/v;->H(Landroid/view/View;)I
    move-result v0
    goto :L3
  :L2
    const/4 v0, 0
  :L3
  .line 3
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Landroid/widget/TextView;
  .line 4
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;
    move-result-object v2
  .line 5
    invoke-virtual { v2 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v2
    sget v3, Ld/c/a/a/d;->material_input_text_to_prefix_suffix_padding:I
  .line 6
    invoke-virtual { v2, v3 }, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    move-result v2
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
  .line 7
    invoke-virtual { v3 }, Landroid/widget/EditText;->getPaddingTop()I
    move-result v3
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
  .line 8
    invoke-virtual { v4 }, Landroid/widget/EditText;->getPaddingBottom()I
    move-result v4
  .line 9
    invoke-static { v1, v2, v3, v0, v4 }, Landroidx/core/view/v;->A0(Landroid/view/View;IIII)V
    return-void
.end method

.method private E(Landroid/graphics/Canvas;)V
  .registers 3
  .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->B:Z
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H0:Lcom/google/android/material/internal/a;
    invoke-virtual { v0, p1 }, Lcom/google/android/material/internal/a;->m(Landroid/graphics/Canvas;)V
  :L0
    return-void
.end method

.method private E0()V
  .registers 5
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Landroid/widget/TextView;
    invoke-virtual { v0 }, Landroid/widget/TextView;->getVisibility()I
    move-result v0
  .line 2
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->z:Ljava/lang/CharSequence;
    const/4 v2, 0
    if-eqz v1, :L0
    invoke-virtual { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->N()Z
    move-result v1
    if-nez v1, :L0
    const/4 v1, 1
    goto :L1
  :L0
    const/4 v1, 0
  :L1
  .line 3
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Landroid/widget/TextView;
    if-eqz v1, :L2
    goto :L3
  :L2
    const/16 v2, 8
  :L3
    invoke-virtual { v3, v2 }, Landroid/widget/TextView;->setVisibility(I)V
  .line 4
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Landroid/widget/TextView;
    invoke-virtual { v2 }, Landroid/widget/TextView;->getVisibility()I
    move-result v2
    if-eq v0, v2, :L4
  .line 5
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconDelegate()Lcom/google/android/material/textfield/e;
    move-result-object v0
    invoke-virtual { v0, v1 }, Lcom/google/android/material/textfield/e;->c(Z)V
  :L4
  .line 6
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->r0()Z
    return-void
.end method

.method private F(Z)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->K0:Landroid/animation/ValueAnimator;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Landroid/animation/ValueAnimator;->isRunning()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->K0:Landroid/animation/ValueAnimator;
    invoke-virtual { v0 }, Landroid/animation/ValueAnimator;->cancel()V
  :L0
    const/4 v0, 0
    if-eqz p1, :L1
  .line 3
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->J0:Z
    if-eqz p1, :L1
  .line 4
    invoke-virtual { p0, v0 }, Lcom/google/android/material/textfield/TextInputLayout;->i(F)V
    goto :L2
  :L1
  .line 5
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->H0:Lcom/google/android/material/internal/a;
    invoke-virtual { p1, v0 }, Lcom/google/android/material/internal/a;->a0(F)V
  :L2
  .line 6
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->A()Z
    move-result p1
    if-eqz p1, :L3
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Ld/c/a/a/a0/g;
    check-cast p1, Lcom/google/android/material/textfield/c;
    invoke-virtual { p1 }, Lcom/google/android/material/textfield/c;->i0()Z
    move-result p1
    if-eqz p1, :L3
  .line 7
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->y()V
  :L3
    const/4 p1, 1
  .line 8
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->G0:Z
  .line 9
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->J()V
  .line 10
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->B0()V
  .line 11
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->E0()V
    return-void
.end method

.method private G(IZ)I
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    invoke-virtual { v0 }, Landroid/widget/EditText;->getCompoundPaddingLeft()I
    move-result v0
    add-int/2addr p1, v0
  .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->x:Ljava/lang/CharSequence;
    if-eqz v0, :L0
    if-nez p2, :L0
  .line 3
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->y:Landroid/widget/TextView;
    invoke-virtual { p2 }, Landroid/widget/TextView;->getMeasuredWidth()I
    move-result p2
    sub-int/2addr p1, p2
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->y:Landroid/widget/TextView;
    invoke-virtual { p2 }, Landroid/widget/TextView;->getPaddingLeft()I
    move-result p2
    add-int/2addr p1, p2
  :L0
    return p1
.end method

.method private H(IZ)I
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    invoke-virtual { v0 }, Landroid/widget/EditText;->getCompoundPaddingRight()I
    move-result v0
    sub-int/2addr p1, v0
  .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->x:Ljava/lang/CharSequence;
    if-eqz v0, :L0
    if-eqz p2, :L0
  .line 3
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->y:Landroid/widget/TextView;
    invoke-virtual { p2 }, Landroid/widget/TextView;->getMeasuredWidth()I
    move-result p2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->y:Landroid/widget/TextView;
    invoke-virtual { v0 }, Landroid/widget/TextView;->getPaddingRight()I
    move-result v0
    sub-int/2addr p2, v0
    add-int/2addr p1, p2
  :L0
    return p1
.end method

.method private I()Z
  .registers 2
  .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g0:I
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method private J()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Landroid/widget/TextView;
    if-eqz v0, :L0
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Z
    if-eqz v1, :L0
    const/4 v1, 0
  .line 2
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 3
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Landroid/widget/TextView;
    const/4 v1, 4
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setVisibility(I)V
  :L0
    return-void
.end method

.method private L()Z
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t0:Lcom/google/android/material/internal/CheckableImageButton;
    invoke-virtual { v0 }, Landroid/widget/ImageButton;->getVisibility()I
    move-result v0
    if-nez v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method private P()Z
  .registers 4
  .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:I
    const/4 v1, 1
    if-ne v0, v1, :L0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 16
    if-lt v0, v2, :L1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
  .line 2
    invoke-virtual { v0 }, Landroid/widget/EditText;->getMinLines()I
    move-result v0
    if-gt v0, v1, :L0
    goto :L1
  :L0
    const/4 v1, 0
  :L1
    return v1
.end method

.method private R(Lcom/google/android/material/internal/CheckableImageButton;)[I
  .registers 6
  .line 1
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getDrawableState()[I
    move-result-object v0
  .line 2
    invoke-virtual { p1 }, Landroid/widget/ImageButton;->getDrawableState()[I
    move-result-object p1
  .line 3
    array-length v1, v0
  .line 4
    array-length v2, v0
    array-length v3, p1
    add-int/2addr v2, v3
    invoke-static { v0, v2 }, Ljava/util/Arrays;->copyOf([II)[I
    move-result-object v0
  .line 5
    array-length v2, p1
    const/4 v3, 0
    invoke-static { p1, v3, v0, v1, v2 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    return-object v0
.end method

.method private S()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->p()V
  .line 2
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->a0()V
  .line 3
    invoke-virtual { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->F0()V
  .line 4
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->k0()V
  .line 5
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->h()V
  .line 6
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:I
    if-eqz v0, :L0
  .line 7
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->u0()V
  :L0
    return-void
.end method

.method private T()V
  .registers 5
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->A()Z
    move-result v0
    if-nez v0, :L0
    return-void
  :L0
  .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:Landroid/graphics/RectF;
  .line 3
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->H0:Lcom/google/android/material/internal/a;
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
  .line 4
    invoke-virtual { v2 }, Landroid/widget/EditText;->getWidth()I
    move-result v2
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    invoke-virtual { v3 }, Landroid/widget/EditText;->getGravity()I
    move-result v3
  .line 5
    invoke-virtual { v1, v0, v2, v3 }, Lcom/google/android/material/internal/a;->p(Landroid/graphics/RectF;II)V
  .line 6
    invoke-direct { p0, v0 }, Lcom/google/android/material/textfield/TextInputLayout;->l(Landroid/graphics/RectF;)V
  .line 7
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:I
    iput v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->I:I
    const/4 v2, 0
  .line 8
    iput v2, v0, Landroid/graphics/RectF;->top:F
    int-to-float v1, v1
  .line 9
    iput v1, v0, Landroid/graphics/RectF;->bottom:F
  .line 10
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getPaddingLeft()I
    move-result v1
    neg-int v1, v1
    int-to-float v1, v1
    invoke-virtual { v0, v1, v2 }, Landroid/graphics/RectF;->offset(FF)V
  .line 11
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Ld/c/a/a/a0/g;
    check-cast v1, Lcom/google/android/material/textfield/c;
    invoke-virtual { v1, v0 }, Lcom/google/android/material/textfield/c;->o0(Landroid/graphics/RectF;)V
    return-void
.end method

.method private static U(Landroid/view/ViewGroup;Z)V
  .registers 6
  .line 1
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v0
    const/4 v1, 0
  :L0
    if-ge v1, v0, :L2
  .line 2
    invoke-virtual { p0, v1 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v2
  .line 3
    invoke-virtual { v2, p1 }, Landroid/view/View;->setEnabled(Z)V
  .line 4
    instance-of v3, v2, Landroid/view/ViewGroup;
    if-eqz v3, :L1
  .line 5
    check-cast v2, Landroid/view/ViewGroup;
    invoke-static { v2, p1 }, Lcom/google/android/material/textfield/TextInputLayout;->U(Landroid/view/ViewGroup;Z)V
  :L1
    add-int/lit8 v1, v1, 1
    goto :L0
  :L2
    return-void
.end method

.method private X(Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V
  .registers 6
  .line 1
    invoke-virtual { p1 }, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;
    move-result-object v0
  .line 2
    invoke-virtual { p1 }, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;
    move-result-object v1
    if-eqz v1, :L1
    if-eqz p2, :L1
    invoke-virtual { p2 }, Landroid/content/res/ColorStateList;->isStateful()Z
    move-result v1
    if-nez v1, :L0
    goto :L1
  :L0
  .line 3
    invoke-direct { p0, p1 }, Lcom/google/android/material/textfield/TextInputLayout;->R(Lcom/google/android/material/internal/CheckableImageButton;)[I
    move-result-object v1
    invoke-virtual { p2 }, Landroid/content/res/ColorStateList;->getDefaultColor()I
    move-result v2
    invoke-virtual { p2, v1, v2 }, Landroid/content/res/ColorStateList;->getColorForState([II)I
    move-result p2
  .line 4
    invoke-static { v0 }, Landroidx/core/graphics/drawable/a;->r(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
    move-result-object v0
  .line 5
    invoke-static { p2 }, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;
    move-result-object p2
    invoke-static { v0, p2 }, Landroidx/core/graphics/drawable/a;->o(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
  .line 6
    invoke-virtual { p1, v0 }, Landroidx/appcompat/widget/l;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
  :L1
    return-void
.end method

.method private Z()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Landroid/widget/TextView;
    if-eqz v0, :L0
    const/16 v1, 8
  .line 2
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setVisibility(I)V
  :L0
    return-void
.end method

.method static synthetic a(Lcom/google/android/material/textfield/TextInputLayout;)Z
  .registers 1
  .line 1
    iget-boolean p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->M0:Z
    return p0
.end method

.method private a0()V
  .registers 3
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->h0()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Ld/c/a/a/a0/g;
    invoke-static { v0, v1 }, Landroidx/core/view/v;->r0(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
  :L0
    return-void
.end method

.method static synthetic b(Lcom/google/android/material/textfield/TextInputLayout;)Z
  .registers 1
  .line 1
    iget-boolean p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Z
    return p0
.end method

.method private static b0(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V
  .registers 5
  .line 1
    invoke-static { p0 }, Landroidx/core/view/v;->O(Landroid/view/View;)Z
    move-result v0
    const/4 v1, 0
    const/4 v2, 1
    if-eqz p1, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    if-nez v0, :L2
    if-eqz p1, :L3
  :L2
    const/4 v1, 1
  :L3
  .line 2
    invoke-virtual { p0, v1 }, Landroid/widget/ImageButton;->setFocusable(Z)V
  .line 3
    invoke-virtual { p0, v0 }, Landroid/widget/ImageButton;->setClickable(Z)V
  .line 4
    invoke-virtual { p0, v0 }, Lcom/google/android/material/internal/CheckableImageButton;->setPressable(Z)V
  .line 5
    invoke-virtual { p0, p1 }, Landroid/widget/ImageButton;->setLongClickable(Z)V
    if-eqz v1, :L4
    goto :L5
  :L4
    const/4 v2, 2
  :L5
  .line 6
    invoke-static { p0, v2 }, Landroidx/core/view/v;->x0(Landroid/view/View;I)V
    return-void
.end method

.method static synthetic c(Lcom/google/android/material/textfield/TextInputLayout;I)V
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Lcom/google/android/material/textfield/TextInputLayout;->z0(I)V
    return-void
.end method

.method private static c0(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
  .registers 3
  .line 1
    invoke-virtual { p0, p1 }, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  .line 2
    invoke-static { p0, p2 }, Lcom/google/android/material/textfield/TextInputLayout;->b0(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V
    return-void
.end method

.method static synthetic d(Lcom/google/android/material/textfield/TextInputLayout;)Lcom/google/android/material/internal/CheckableImageButton;
  .registers 1
  .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Lcom/google/android/material/internal/CheckableImageButton;
    return-object p0
.end method

.method private static d0(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
  .line 2
    invoke-static { p0, p1 }, Lcom/google/android/material/textfield/TextInputLayout;->b0(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V
    return-void
.end method

.method private f0()Z
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t0:Lcom/google/android/material/internal/CheckableImageButton;
    invoke-virtual { v0 }, Landroid/widget/ImageButton;->getVisibility()I
    move-result v0
    if-eqz v0, :L1
  .line 2
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->I()Z
    move-result v0
    if-eqz v0, :L0
    invoke-virtual { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->K()Z
    move-result v0
    if-nez v0, :L1
  :L0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->z:Ljava/lang/CharSequence;
    if-eqz v0, :L2
  :L1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/LinearLayout;
  .line 3
    invoke-virtual { v0 }, Landroid/widget/LinearLayout;->getMeasuredWidth()I
    move-result v0
    if-lez v0, :L2
    const/4 v0, 1
    goto :L3
  :L2
    const/4 v0, 0
  :L3
    return v0
.end method

.method private g()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Landroid/widget/TextView;
    if-eqz v0, :L0
  .line 2
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Landroid/widget/FrameLayout;
    invoke-virtual { v1, v0 }, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V
  .line 3
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Landroid/widget/TextView;
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setVisibility(I)V
  :L0
    return-void
.end method

.method private g0()Z
  .registers 2
  .line 1
    invoke-virtual { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->getStartIconDrawable()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    if-nez v0, :L0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->x:Ljava/lang/CharSequence;
    if-eqz v0, :L1
  :L0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/LinearLayout;
  .line 2
    invoke-virtual { v0 }, Landroid/widget/LinearLayout;->getMeasuredWidth()I
    move-result v0
    if-lez v0, :L1
    const/4 v0, 1
    goto :L2
  :L1
    const/4 v0, 0
  :L2
    return v0
.end method

.method private getEndIconDelegate()Lcom/google/android/material/textfield/e;
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h0:Landroid/util/SparseArray;
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->g0:I
    invoke-virtual { v0, v1 }, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/google/android/material/textfield/e;
    if-eqz v0, :L0
    goto :L1
  :L0
  .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h0:Landroid/util/SparseArray;
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/google/android/material/textfield/e;
  :L1
    return-object v0
.end method

.method private getEndIconToUpdateDummyDrawable()Lcom/google/android/material/internal/CheckableImageButton;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t0:Lcom/google/android/material/internal/CheckableImageButton;
    invoke-virtual { v0 }, Landroid/widget/ImageButton;->getVisibility()I
    move-result v0
    if-nez v0, :L0
  .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t0:Lcom/google/android/material/internal/CheckableImageButton;
    return-object v0
  :L0
  .line 3
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->I()Z
    move-result v0
    if-eqz v0, :L1
    invoke-virtual { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->K()Z
    move-result v0
    if-eqz v0, :L1
  .line 4
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Lcom/google/android/material/internal/CheckableImageButton;
    return-object v0
  :L1
    const/4 v0, 0
    return-object v0
.end method

.method private h()V
  .registers 7
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    if-eqz v0, :L2
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:I
    const/4 v1, 1
    if-eq v0, v1, :L0
    goto :L2
  :L0
  .line 2
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-static { v0 }, Ld/c/a/a/x/c;->h(Landroid/content/Context;)Z
    move-result v0
    if-eqz v0, :L1
  .line 3
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
  .line 4
    invoke-static { v0 }, Landroidx/core/view/v;->I(Landroid/view/View;)I
    move-result v1
  .line 5
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;
    move-result-object v2
    sget v3, Ld/c/a/a/d;->material_filled_edittext_font_2_0_padding_top:I
  .line 6
    invoke-virtual { v2, v3 }, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    move-result v2
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
  .line 7
    invoke-static { v3 }, Landroidx/core/view/v;->H(Landroid/view/View;)I
    move-result v3
  .line 8
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;
    move-result-object v4
    sget v5, Ld/c/a/a/d;->material_filled_edittext_font_2_0_padding_bottom:I
  .line 9
    invoke-virtual { v4, v5 }, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    move-result v4
  .line 10
    invoke-static { v0, v1, v2, v3, v4 }, Landroidx/core/view/v;->A0(Landroid/view/View;IIII)V
    goto :L2
  :L1
  .line 11
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-static { v0 }, Ld/c/a/a/x/c;->g(Landroid/content/Context;)Z
    move-result v0
    if-eqz v0, :L2
  .line 12
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
  .line 13
    invoke-static { v0 }, Landroidx/core/view/v;->I(Landroid/view/View;)I
    move-result v1
  .line 14
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;
    move-result-object v2
    sget v3, Ld/c/a/a/d;->material_filled_edittext_font_1_3_padding_top:I
  .line 15
    invoke-virtual { v2, v3 }, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    move-result v2
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
  .line 16
    invoke-static { v3 }, Landroidx/core/view/v;->H(Landroid/view/View;)I
    move-result v3
  .line 17
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;
    move-result-object v4
    sget v5, Ld/c/a/a/d;->material_filled_edittext_font_1_3_padding_bottom:I
  .line 18
    invoke-virtual { v4, v5 }, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    move-result v4
  .line 19
    invoke-static { v0, v1, v2, v3, v4 }, Landroidx/core/view/v;->A0(Landroid/view/View;IIII)V
  :L2
    return-void
.end method

.method private h0()Z
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    if-eqz v0, :L0
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Ld/c/a/a/a0/g;
    if-eqz v1, :L0
  .line 2
    invoke-virtual { v0 }, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    if-nez v0, :L0
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:I
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method private i0()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Landroid/widget/TextView;
    if-eqz v0, :L0
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Z
    if-eqz v1, :L0
  .line 2
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->q:Ljava/lang/CharSequence;
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 3
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Landroid/widget/TextView;
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setVisibility(I)V
  .line 4
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Landroid/widget/TextView;
    invoke-virtual { v0 }, Landroid/widget/TextView;->bringToFront()V
  :L0
    return-void
.end method

.method private j()V
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Ld/c/a/a/a0/g;
    if-nez v0, :L0
    return-void
  :L0
  .line 2
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:Ld/c/a/a/a0/k;
    invoke-virtual { v0, v1 }, Ld/c/a/a/a0/g;->setShapeAppearanceModel(Ld/c/a/a/a0/k;)V
  .line 3
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->w()Z
    move-result v0
    if-eqz v0, :L1
  .line 4
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Ld/c/a/a/a0/g;
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:I
    int-to-float v1, v1
    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I
    invoke-virtual { v0, v1, v2 }, Ld/c/a/a/a0/g;->b0(FI)V
  :L1
  .line 5
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->q()I
    move-result v0
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:I
  .line 6
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Ld/c/a/a/a0/g;
    invoke-static { v0 }, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;
    move-result-object v0
    invoke-virtual { v1, v0 }, Ld/c/a/a/a0/g;->W(Landroid/content/res/ColorStateList;)V
  .line 7
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g0:I
    const/4 v1, 3
    if-ne v0, v1, :L2
  .line 8
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    invoke-virtual { v0 }, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable;->invalidateSelf()V
  :L2
  .line 9
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->k()V
  .line 10
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->invalidate()V
    return-void
.end method

.method private j0(Z)V
  .registers 3
    if-eqz p1, :L0
  .line 1
    invoke-virtual { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconDrawable()Landroid/graphics/drawable/Drawable;
    move-result-object p1
    if-eqz p1, :L0
  .line 2
    invoke-virtual { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconDrawable()Landroid/graphics/drawable/Drawable;
    move-result-object p1
    invoke-static { p1 }, Landroidx/core/graphics/drawable/a;->r(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    move-result-object p1
    invoke-virtual { p1 }, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
    move-result-object p1
  .line 3
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;
  .line 4
    invoke-virtual { v0 }, Lcom/google/android/material/textfield/f;->o()I
    move-result v0
  .line 5
    invoke-static { p1, v0 }, Landroidx/core/graphics/drawable/a;->n(Landroid/graphics/drawable/Drawable;I)V
  .line 6
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Lcom/google/android/material/internal/CheckableImageButton;
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/l;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    goto :L1
  :L0
  .line 7
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->m()V
  :L1
    return-void
.end method

.method private k()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Ld/c/a/a/a0/g;
    if-nez v0, :L0
    return-void
  :L0
  .line 2
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->x()Z
    move-result v0
    if-eqz v0, :L1
  .line 3
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Ld/c/a/a/a0/g;
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I
    invoke-static { v1 }, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ld/c/a/a/a0/g;->W(Landroid/content/res/ColorStateList;)V
  :L1
  .line 4
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->invalidate()V
    return-void
.end method

.method private k0()V
  .registers 3
  .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:I
    const/4 v1, 1
    if-ne v0, v1, :L1
  .line 2
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-static { v0 }, Ld/c/a/a/x/c;->h(Landroid/content/Context;)Z
    move-result v0
    if-eqz v0, :L0
  .line 3
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    sget v1, Ld/c/a/a/d;->material_font_2_0_box_collapsed_padding_top:I
  .line 4
    invoke-virtual { v0, v1 }, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    move-result v0
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:I
    goto :L1
  :L0
  .line 5
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-static { v0 }, Ld/c/a/a/x/c;->g(Landroid/content/Context;)Z
    move-result v0
    if-eqz v0, :L1
  .line 6
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    sget v1, Ld/c/a/a/d;->material_font_1_3_box_collapsed_padding_top:I
  .line 7
    invoke-virtual { v0, v1 }, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    move-result v0
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:I
  :L1
    return-void
.end method

.method private l(Landroid/graphics/RectF;)V
  .registers 5
  .line 1
    iget v0, p1, Landroid/graphics/RectF;->left:F
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:I
    int-to-float v2, v1
    sub-float/2addr v0, v2
    iput v0, p1, Landroid/graphics/RectF;->left:F
  .line 2
    iget v0, p1, Landroid/graphics/RectF;->right:F
    int-to-float v1, v1
    add-float/2addr v0, v1
    iput v0, p1, Landroid/graphics/RectF;->right:F
    return-void
.end method

.method private l0(Landroid/graphics/Rect;)V
  .registers 6
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Ld/c/a/a/a0/g;
    if-eqz v0, :L0
  .line 2
    iget v1, p1, Landroid/graphics/Rect;->bottom:I
    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->N:I
    sub-int v2, v1, v2
  .line 3
    iget v3, p1, Landroid/graphics/Rect;->left:I
    iget p1, p1, Landroid/graphics/Rect;->right:I
    invoke-virtual { v0, v3, v2, p1, v1 }, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
  :L0
    return-void
.end method

.method private m()V
  .registers 7
  .line 1
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Lcom/google/android/material/internal/CheckableImageButton;
    iget-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->l0:Z
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->k0:Landroid/content/res/ColorStateList;
    iget-boolean v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->n0:Z
    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->m0:Landroid/graphics/PorterDuff$Mode;
    move-object v0, p0
    invoke-direct/range { v0 .. v5 }, Lcom/google/android/material/textfield/TextInputLayout;->n(Lcom/google/android/material/internal/CheckableImageButton;ZLandroid/content/res/ColorStateList;ZLandroid/graphics/PorterDuff$Mode;)V
    return-void
.end method

.method private m0()V
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/TextView;
    if-eqz v0, :L2
  .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    if-nez v0, :L0
    const/4 v0, 0
    goto :L1
  :L0
    invoke-virtual { v0 }, Landroid/widget/EditText;->getText()Landroid/text/Editable;
    move-result-object v0
    invoke-interface { v0 }, Landroid/text/Editable;->length()I
    move-result v0
  :L1
    invoke-virtual { p0, v0 }, Lcom/google/android/material/textfield/TextInputLayout;->n0(I)V
  :L2
    return-void
.end method

.method private n(Lcom/google/android/material/internal/CheckableImageButton;ZLandroid/content/res/ColorStateList;ZLandroid/graphics/PorterDuff$Mode;)V
  .registers 7
  .line 1
    invoke-virtual { p1 }, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    if-eqz v0, :L2
    if-nez p2, :L0
    if-eqz p4, :L2
  :L0
  .line 2
    invoke-static { v0 }, Landroidx/core/graphics/drawable/a;->r(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    if-eqz p2, :L1
  .line 3
    invoke-static { v0, p3 }, Landroidx/core/graphics/drawable/a;->o(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
  :L1
    if-eqz p4, :L2
  .line 4
    invoke-static { v0, p5 }, Landroidx/core/graphics/drawable/a;->p(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
  :L2
  .line 5
    invoke-virtual { p1 }, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;
    move-result-object p2
    if-eq p2, v0, :L3
  .line 6
    invoke-virtual { p1, v0 }, Landroidx/appcompat/widget/l;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
  :L3
    return-void
.end method

.method private o()V
  .registers 7
  .line 1
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:Lcom/google/android/material/internal/CheckableImageButton;
    iget-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->W:Z
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->V:Landroid/content/res/ColorStateList;
    iget-boolean v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->b0:Z
    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->a0:Landroid/graphics/PorterDuff$Mode;
    move-object v0, p0
    invoke-direct/range { v0 .. v5 }, Lcom/google/android/material/textfield/TextInputLayout;->n(Lcom/google/android/material/internal/CheckableImageButton;ZLandroid/content/res/ColorStateList;ZLandroid/graphics/PorterDuff$Mode;)V
    return-void
.end method

.method private static o0(Landroid/content/Context;Landroid/widget/TextView;IIZ)V
  .registers 7
    if-eqz p4, :L0
  .line 1
    sget p4, Ld/c/a/a/i;->character_counter_overflowed_content_description:I
    goto :L1
  :L0
    sget p4, Ld/c/a/a/i;->character_counter_content_description:I
  :L1
    const/4 v0, 2
    new-array v0, v0, [Ljava/lang/Object;
    const/4 v1, 0
  .line 2
    invoke-static { p2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p2
    aput-object p2, v0, v1
    const/4 p2, 1
  .line 3
    invoke-static { p3 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p3
    aput-object p3, v0, p2
  .line 4
    invoke-virtual { p0, p4, v0 }, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object p0
  .line 5
    invoke-virtual { p1, p0 }, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V
    return-void
.end method

.method private p()V
  .registers 4
  .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:I
    const/4 v1, 0
    if-eqz v0, :L4
    const/4 v2, 1
    if-eq v0, v2, :L3
    const/4 v2, 2
    if-ne v0, v2, :L2
  .line 2
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->B:Z
    if-eqz v0, :L0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Ld/c/a/a/a0/g;
    instance-of v0, v0, Lcom/google/android/material/textfield/c;
    if-nez v0, :L0
  .line 3
    new-instance v0, Lcom/google/android/material/textfield/c;
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:Ld/c/a/a/a0/k;
    invoke-direct { v0, v2 }, Lcom/google/android/material/textfield/c;-><init>(Ld/c/a/a/a0/k;)V
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Ld/c/a/a/a0/g;
    goto :L1
  :L0
  .line 4
    new-instance v0, Ld/c/a/a/a0/g;
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:Ld/c/a/a/a0/k;
    invoke-direct { v0, v2 }, Ld/c/a/a/a0/g;-><init>(Ld/c/a/a/a0/k;)V
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Ld/c/a/a/a0/g;
  :L1
  .line 5
    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Ld/c/a/a/a0/g;
    goto :L5
  :L2
  .line 6
    new-instance v0, Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:I
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v2, " is illegal; only @BoxBackgroundMode constants are supported."
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, v1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
  :L3
  .line 7
    new-instance v0, Ld/c/a/a/a0/g;
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:Ld/c/a/a/a0/k;
    invoke-direct { v0, v1 }, Ld/c/a/a/a0/g;-><init>(Ld/c/a/a/a0/k;)V
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Ld/c/a/a/a0/g;
  .line 8
    new-instance v0, Ld/c/a/a/a0/g;
    invoke-direct { v0 }, Ld/c/a/a/a0/g;-><init>()V
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Ld/c/a/a/a0/g;
    goto :L5
  :L4
  .line 9
    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Ld/c/a/a/a0/g;
  .line 10
    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Ld/c/a/a/a0/g;
  :L5
    return-void
.end method

.method private p0()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/TextView;
    if-eqz v0, :L3
  .line 2
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Z
    if-eqz v1, :L0
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:I
    goto :L1
  :L0
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->p:I
  :L1
    invoke-virtual { p0, v0, v1 }, Lcom/google/android/material/textfield/TextInputLayout;->e0(Landroid/widget/TextView;I)V
  .line 3
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Z
    if-nez v0, :L2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Landroid/content/res/ColorStateList;
    if-eqz v0, :L2
  .line 4
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/TextView;
    invoke-virtual { v1, v0 }, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V
  :L2
  .line 5
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Z
    if-eqz v0, :L3
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:Landroid/content/res/ColorStateList;
    if-eqz v0, :L3
  .line 6
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/TextView;
    invoke-virtual { v1, v0 }, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V
  :L3
    return-void
.end method

.method private q()I
  .registers 4
  .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:I
  .line 2
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:I
    const/4 v2, 1
    if-ne v1, v2, :L0
  .line 3
    sget v0, Ld/c/a/a/b;->colorSurface:I
    const/4 v1, 0
    invoke-static { p0, v0, v1 }, Ld/c/a/a/q/a;->d(Landroid/view/View;II)I
    move-result v0
  .line 4
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:I
    invoke-static { v0, v1 }, Ld/c/a/a/q/a;->e(II)I
    move-result v0
  :L0
    return v0
.end method

.method private q0()V
  .registers 3
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->A()Z
    move-result v0
    if-eqz v0, :L0
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->G0:Z
    if-nez v0, :L0
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->I:I
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:I
    if-eq v0, v1, :L0
  .line 2
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->y()V
  .line 3
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->T()V
  :L0
    return-void
.end method

.method private r(Landroid/graphics/Rect;)Landroid/graphics/Rect;
  .registers 6
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    if-eqz v0, :L4
  .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:Landroid/graphics/Rect;
  .line 3
    invoke-static { p0 }, Landroidx/core/view/v;->C(Landroid/view/View;)I
    move-result v1
    const/4 v2, 1
    if-ne v1, v2, :L0
    const/4 v1, 1
    goto :L1
  :L0
    const/4 v1, 0
  :L1
  .line 4
    iget v3, p1, Landroid/graphics/Rect;->bottom:I
    iput v3, v0, Landroid/graphics/Rect;->bottom:I
  .line 5
    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:I
    if-eq v3, v2, :L3
    const/4 v2, 2
    if-eq v3, v2, :L2
  .line 6
    iget v2, p1, Landroid/graphics/Rect;->left:I
    invoke-direct { p0, v2, v1 }, Lcom/google/android/material/textfield/TextInputLayout;->G(IZ)I
    move-result v2
    iput v2, v0, Landroid/graphics/Rect;->left:I
  .line 7
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getPaddingTop()I
    move-result v2
    iput v2, v0, Landroid/graphics/Rect;->top:I
  .line 8
    iget p1, p1, Landroid/graphics/Rect;->right:I
    invoke-direct { p0, p1, v1 }, Lcom/google/android/material/textfield/TextInputLayout;->H(IZ)I
    move-result p1
    iput p1, v0, Landroid/graphics/Rect;->right:I
    return-object v0
  :L2
  .line 9
    iget v1, p1, Landroid/graphics/Rect;->left:I
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    invoke-virtual { v2 }, Landroid/widget/EditText;->getPaddingLeft()I
    move-result v2
    add-int/2addr v1, v2
    iput v1, v0, Landroid/graphics/Rect;->left:I
  .line 10
    iget v1, p1, Landroid/graphics/Rect;->top:I
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->v()I
    move-result v2
    sub-int/2addr v1, v2
    iput v1, v0, Landroid/graphics/Rect;->top:I
  .line 11
    iget p1, p1, Landroid/graphics/Rect;->right:I
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    invoke-virtual { v1 }, Landroid/widget/EditText;->getPaddingRight()I
    move-result v1
    sub-int/2addr p1, v1
    iput p1, v0, Landroid/graphics/Rect;->right:I
    return-object v0
  :L3
  .line 12
    iget v2, p1, Landroid/graphics/Rect;->left:I
    invoke-direct { p0, v2, v1 }, Lcom/google/android/material/textfield/TextInputLayout;->G(IZ)I
    move-result v2
    iput v2, v0, Landroid/graphics/Rect;->left:I
  .line 13
    iget v2, p1, Landroid/graphics/Rect;->top:I
    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:I
    add-int/2addr v2, v3
    iput v2, v0, Landroid/graphics/Rect;->top:I
  .line 14
    iget p1, p1, Landroid/graphics/Rect;->right:I
    invoke-direct { p0, p1, v1 }, Lcom/google/android/material/textfield/TextInputLayout;->H(IZ)I
    move-result p1
    iput p1, v0, Landroid/graphics/Rect;->right:I
    return-object v0
  :L4
  .line 15
    new-instance p1, Ljava/lang/IllegalStateException;
    invoke-direct { p1 }, Ljava/lang/IllegalStateException;-><init>()V
    throw p1
.end method

.method private r0()Z
  .registers 11
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    const/4 v1, 0
    if-nez v0, :L0
    return v1
  :L0
  .line 2
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->g0()Z
    move-result v0
    const/4 v2, 0
    const/4 v3, 3
    const/4 v4, 2
    const/4 v5, 1
    if-eqz v0, :L3
  .line 3
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/LinearLayout;
    invoke-virtual { v0 }, Landroid/widget/LinearLayout;->getMeasuredWidth()I
    move-result v0
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    invoke-virtual { v6 }, Landroid/widget/EditText;->getPaddingLeft()I
    move-result v6
    sub-int/2addr v0, v6
  .line 4
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->c0:Landroid/graphics/drawable/Drawable;
    if-eqz v6, :L1
    iget v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->d0:I
    if-eq v6, v0, :L2
  :L1
  .line 5
    new-instance v6, Landroid/graphics/drawable/ColorDrawable;
    invoke-direct { v6 }, Landroid/graphics/drawable/ColorDrawable;-><init>()V
    iput-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->c0:Landroid/graphics/drawable/Drawable;
  .line 6
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d0:I
  .line 7
    invoke-virtual { v6, v1, v1, v0, v5 }, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
  :L2
  .line 8
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    invoke-static { v0 }, Landroidx/core/widget/i;->a(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;
    move-result-object v0
  .line 9
    aget-object v6, v0, v1
    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->c0:Landroid/graphics/drawable/Drawable;
    if-eq v6, v7, :L5
  .line 10
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    aget-object v8, v0, v5
    aget-object v9, v0, v4
    aget-object v0, v0, v3
    invoke-static { v6, v7, v8, v9, v0 }, Landroidx/core/widget/i;->i(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    goto :L4
  :L3
  .line 11
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c0:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L5
  .line 12
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    invoke-static { v0 }, Landroidx/core/widget/i;->a(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;
    move-result-object v0
  .line 13
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    aget-object v7, v0, v5
    aget-object v8, v0, v4
    aget-object v0, v0, v3
    invoke-static { v6, v2, v7, v8, v0 }, Landroidx/core/widget/i;->i(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
  .line 14
    iput-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->c0:Landroid/graphics/drawable/Drawable;
  :L4
    const/4 v0, 1
    goto :L6
  :L5
    const/4 v0, 0
  :L6
  .line 15
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->f0()Z
    move-result v6
    if-eqz v6, :L11
  .line 16
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Landroid/widget/TextView;
    invoke-virtual { v2 }, Landroid/widget/TextView;->getMeasuredWidth()I
    move-result v2
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    invoke-virtual { v6 }, Landroid/widget/EditText;->getPaddingRight()I
    move-result v6
    sub-int/2addr v2, v6
  .line 17
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconToUpdateDummyDrawable()Lcom/google/android/material/internal/CheckableImageButton;
    move-result-object v6
    if-eqz v6, :L7
  .line 18
    invoke-virtual { v6 }, Landroid/view/View;->getMeasuredWidth()I
    move-result v7
    add-int/2addr v2, v7
  .line 19
    invoke-virtual { v6 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v6
    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;
  .line 20
    invoke-static { v6 }, Landroidx/core/view/h;->b(Landroid/view/ViewGroup$MarginLayoutParams;)I
    move-result v6
    add-int/2addr v2, v6
  :L7
  .line 21
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    invoke-static { v6 }, Landroidx/core/widget/i;->a(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;
    move-result-object v6
  .line 22
    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->o0:Landroid/graphics/drawable/Drawable;
    if-eqz v7, :L8
    iget v8, p0, Lcom/google/android/material/textfield/TextInputLayout;->p0:I
    if-eq v8, v2, :L8
  .line 23
    iput v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->p0:I
  .line 24
    invoke-virtual { v7, v1, v1, v2, v5 }, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
  .line 25
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    aget-object v1, v6, v1
    aget-object v2, v6, v5
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->o0:Landroid/graphics/drawable/Drawable;
    aget-object v3, v6, v3
    invoke-static { v0, v1, v2, v4, v3 }, Landroidx/core/widget/i;->i(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    goto :L14
  :L8
  .line 26
    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->o0:Landroid/graphics/drawable/Drawable;
    if-nez v7, :L9
  .line 27
    new-instance v7, Landroid/graphics/drawable/ColorDrawable;
    invoke-direct { v7 }, Landroid/graphics/drawable/ColorDrawable;-><init>()V
    iput-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->o0:Landroid/graphics/drawable/Drawable;
  .line 28
    iput v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->p0:I
  .line 29
    invoke-virtual { v7, v1, v1, v2, v5 }, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
  :L9
  .line 30
    aget-object v2, v6, v4
    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->o0:Landroid/graphics/drawable/Drawable;
    if-eq v2, v7, :L10
  .line 31
    aget-object v0, v6, v4
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->q0:Landroid/graphics/drawable/Drawable;
  .line 32
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    aget-object v1, v6, v1
    aget-object v2, v6, v5
    aget-object v3, v6, v3
    invoke-static { v0, v1, v2, v7, v3 }, Landroidx/core/widget/i;->i(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    goto :L14
  :L10
    move v5, v0
    goto :L14
  :L11
  .line 33
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->o0:Landroid/graphics/drawable/Drawable;
    if-eqz v6, :L15
  .line 34
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    invoke-static { v6 }, Landroidx/core/widget/i;->a(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;
    move-result-object v6
  .line 35
    aget-object v4, v6, v4
    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->o0:Landroid/graphics/drawable/Drawable;
    if-ne v4, v7, :L12
  .line 36
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    aget-object v1, v6, v1
    aget-object v4, v6, v5
    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->q0:Landroid/graphics/drawable/Drawable;
    aget-object v3, v6, v3
    invoke-static { v0, v1, v4, v7, v3 }, Landroidx/core/widget/i;->i(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    goto :L13
  :L12
    move v5, v0
  :L13
  .line 37
    iput-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->o0:Landroid/graphics/drawable/Drawable;
  :L14
    move v0, v5
  :L15
    return v0
.end method

.method private s(Landroid/graphics/Rect;Landroid/graphics/Rect;F)I
  .registers 5
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->P()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    iget p1, p2, Landroid/graphics/Rect;->top:I
    int-to-float p1, p1
    add-float/2addr p1, p3
    float-to-int p1, p1
    return p1
  :L0
  .line 3
    iget p1, p1, Landroid/graphics/Rect;->bottom:I
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    invoke-virtual { p2 }, Landroid/widget/EditText;->getCompoundPaddingBottom()I
    move-result p2
    sub-int/2addr p1, p2
    return p1
.end method

.method private setEditText(Landroid/widget/EditText;)V
  .registers 5
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    if-nez v0, :L6
  .line 2
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g0:I
    const/4 v1, 3
    if-eq v0, v1, :L0
    instance-of v0, p1, Lcom/google/android/material/textfield/TextInputEditText;
  :L0
  .line 3
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
  .line 4
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:I
    invoke-virtual { p0, v0 }, Lcom/google/android/material/textfield/TextInputLayout;->setMinWidth(I)V
  .line 5
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:I
    invoke-virtual { p0, v0 }, Lcom/google/android/material/textfield/TextInputLayout;->setMaxWidth(I)V
  .line 6
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->S()V
  .line 7
    new-instance v0, Lcom/google/android/material/textfield/TextInputLayout$e;
    invoke-direct { v0, p0 }, Lcom/google/android/material/textfield/TextInputLayout$e;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    invoke-virtual { p0, v0 }, Lcom/google/android/material/textfield/TextInputLayout;->setTextInputAccessibilityDelegate(Lcom/google/android/material/textfield/TextInputLayout$e;)V
  .line 8
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H0:Lcom/google/android/material/internal/a;
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    invoke-virtual { v1 }, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;
    move-result-object v1
    invoke-virtual { v0, v1 }, Lcom/google/android/material/internal/a;->g0(Landroid/graphics/Typeface;)V
  .line 9
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H0:Lcom/google/android/material/internal/a;
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    invoke-virtual { v1 }, Landroid/widget/EditText;->getTextSize()F
    move-result v1
    invoke-virtual { v0, v1 }, Lcom/google/android/material/internal/a;->Y(F)V
  .line 10
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    invoke-virtual { v0 }, Landroid/widget/EditText;->getGravity()I
    move-result v0
  .line 11
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->H0:Lcom/google/android/material/internal/a;
    and-int/lit8 v2, v0, -113
    or-int/lit8 v2, v2, 48
    invoke-virtual { v1, v2 }, Lcom/google/android/material/internal/a;->Q(I)V
  .line 12
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->H0:Lcom/google/android/material/internal/a;
    invoke-virtual { v1, v0 }, Lcom/google/android/material/internal/a;->X(I)V
  .line 13
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    new-instance v1, Lcom/google/android/material/textfield/TextInputLayout$a;
    invoke-direct { v1, p0 }, Lcom/google/android/material/textfield/TextInputLayout$a;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    invoke-virtual { v0, v1 }, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V
  .line 14
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Landroid/content/res/ColorStateList;
    if-nez v0, :L1
  .line 15
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    invoke-virtual { v0 }, Landroid/widget/EditText;->getHintTextColors()Landroid/content/res/ColorStateList;
    move-result-object v0
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Landroid/content/res/ColorStateList;
  :L1
  .line 16
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->B:Z
    const/4 v1, 1
    if-eqz v0, :L3
  .line 17
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:Ljava/lang/CharSequence;
    invoke-static { v0 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    if-eqz v0, :L2
  .line 18
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    invoke-virtual { v0 }, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;
    move-result-object v0
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Ljava/lang/CharSequence;
  .line 19
    invoke-virtual { p0, v0 }, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V
  .line 20
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    const/4 v2, 0
    invoke-virtual { v0, v2 }, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V
  :L2
  .line 21
    iput-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Z
  :L3
  .line 22
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/TextView;
    if-eqz v0, :L4
  .line 23
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    invoke-virtual { v0 }, Landroid/widget/EditText;->getText()Landroid/text/Editable;
    move-result-object v0
    invoke-interface { v0 }, Landroid/text/Editable;->length()I
    move-result v0
    invoke-virtual { p0, v0 }, Lcom/google/android/material/textfield/TextInputLayout;->n0(I)V
  :L4
  .line 24
    invoke-virtual { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->s0()V
  .line 25
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;
    invoke-virtual { v0 }, Lcom/google/android/material/textfield/f;->e()V
  .line 26
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/LinearLayout;
    invoke-virtual { v0 }, Landroid/widget/LinearLayout;->bringToFront()V
  .line 27
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/LinearLayout;
    invoke-virtual { v0 }, Landroid/widget/LinearLayout;->bringToFront()V
  .line 28
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/FrameLayout;
    invoke-virtual { v0 }, Landroid/widget/FrameLayout;->bringToFront()V
  .line 29
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t0:Lcom/google/android/material/internal/CheckableImageButton;
    invoke-virtual { v0 }, Landroid/widget/ImageButton;->bringToFront()V
  .line 30
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->B()V
  .line 31
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->A0()V
  .line 32
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->D0()V
  .line 33
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->isEnabled()Z
    move-result v0
    const/4 v2, 0
    if-nez v0, :L5
  .line 34
    invoke-virtual { p1, v2 }, Landroid/widget/EditText;->setEnabled(Z)V
  :L5
  .line 35
    invoke-direct { p0, v2, v1 }, Lcom/google/android/material/textfield/TextInputLayout;->w0(ZZ)V
    return-void
  :L6
  .line 36
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string v0, "We already have an EditText, can only have one"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method private setErrorIconVisible(Z)V
  .registers 6
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t0:Lcom/google/android/material/internal/CheckableImageButton;
    const/4 v1, 0
    const/16 v2, 8
    if-eqz p1, :L0
    const/4 v3, 0
    goto :L1
  :L0
    const/16 v3, 8
  :L1
    invoke-virtual { v0, v3 }, Landroid/widget/ImageButton;->setVisibility(I)V
  .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/FrameLayout;
    if-eqz p1, :L2
    const/16 v1, 8
  :L2
    invoke-virtual { v0, v1 }, Landroid/widget/FrameLayout;->setVisibility(I)V
  .line 3
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->D0()V
  .line 4
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->I()Z
    move-result p1
    if-nez p1, :L3
  .line 5
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->r0()Z
  :L3
    return-void
.end method

.method private setHintInternal(Ljava/lang/CharSequence;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:Ljava/lang/CharSequence;
    invoke-static { p1, v0 }, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    move-result v0
    if-nez v0, :L0
  .line 2
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:Ljava/lang/CharSequence;
  .line 3
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H0:Lcom/google/android/material/internal/a;
    invoke-virtual { v0, p1 }, Lcom/google/android/material/internal/a;->e0(Ljava/lang/CharSequence;)V
  .line 4
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->G0:Z
    if-nez p1, :L0
  .line 5
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->T()V
  :L0
    return-void
.end method

.method private setPlaceholderTextEnabled(Z)V
  .registers 4
  .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Z
    if-ne v0, p1, :L0
    return-void
  :L0
    if-eqz p1, :L1
  .line 2
    new-instance v0, Landroidx/appcompat/widget/x;
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;
    move-result-object v1
    invoke-direct { v0, v1 }, Landroidx/appcompat/widget/x;-><init>(Landroid/content/Context;)V
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Landroid/widget/TextView;
  .line 3
    sget v1, Ld/c/a/a/f;->textinput_placeholder:I
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setId(I)V
  .line 4
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Landroid/widget/TextView;
    const/4 v1, 1
    invoke-static { v0, v1 }, Landroidx/core/view/v;->q0(Landroid/view/View;I)V
  .line 5
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->u:I
    invoke-virtual { p0, v0 }, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderTextAppearance(I)V
  .line 6
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Landroid/content/res/ColorStateList;
    invoke-virtual { p0, v0 }, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderTextColor(Landroid/content/res/ColorStateList;)V
  .line 7
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->g()V
    goto :L2
  :L1
  .line 8
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->Z()V
    const/4 v0, 0
  .line 9
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Landroid/widget/TextView;
  :L2
  .line 10
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Z
    return-void
.end method

.method private t(Landroid/graphics/Rect;F)I
  .registers 4
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->P()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    invoke-virtual { p1 }, Landroid/graphics/Rect;->centerY()I
    move-result p1
    int-to-float p1, p1
    const/high16 v0, 16384
    div-float/2addr p2, v0
    sub-float/2addr p1, p2
    float-to-int p1, p1
    return p1
  :L0
  .line 3
    iget p1, p1, Landroid/graphics/Rect;->top:I
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    invoke-virtual { p2 }, Landroid/widget/EditText;->getCompoundPaddingTop()I
    move-result p2
    add-int/2addr p1, p2
    return p1
.end method

.method private t0()Z
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    const/4 v1, 0
    if-nez v0, :L0
    return v1
  :L0
  .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/LinearLayout;
    invoke-virtual { v0 }, Landroid/widget/LinearLayout;->getMeasuredHeight()I
    move-result v0
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/LinearLayout;
    invoke-virtual { v2 }, Landroid/widget/LinearLayout;->getMeasuredHeight()I
    move-result v2
    invoke-static { v0, v2 }, Ljava/lang/Math;->max(II)I
    move-result v0
  .line 3
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    invoke-virtual { v2 }, Landroid/widget/EditText;->getMeasuredHeight()I
    move-result v2
    if-ge v2, v0, :L1
  .line 4
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    invoke-virtual { v1, v0 }, Landroid/widget/EditText;->setMinimumHeight(I)V
    const/4 v0, 1
    return v0
  :L1
    return v1
.end method

.method private u(Landroid/graphics/Rect;)Landroid/graphics/Rect;
  .registers 6
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:Landroid/graphics/Rect;
  .line 3
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->H0:Lcom/google/android/material/internal/a;
    invoke-virtual { v1 }, Lcom/google/android/material/internal/a;->x()F
    move-result v1
  .line 4
    iget v2, p1, Landroid/graphics/Rect;->left:I
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    invoke-virtual { v3 }, Landroid/widget/EditText;->getCompoundPaddingLeft()I
    move-result v3
    add-int/2addr v2, v3
    iput v2, v0, Landroid/graphics/Rect;->left:I
  .line 5
    invoke-direct { p0, p1, v1 }, Lcom/google/android/material/textfield/TextInputLayout;->t(Landroid/graphics/Rect;F)I
    move-result v2
    iput v2, v0, Landroid/graphics/Rect;->top:I
  .line 6
    iget v2, p1, Landroid/graphics/Rect;->right:I
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    invoke-virtual { v3 }, Landroid/widget/EditText;->getCompoundPaddingRight()I
    move-result v3
    sub-int/2addr v2, v3
    iput v2, v0, Landroid/graphics/Rect;->right:I
  .line 7
    invoke-direct { p0, p1, v0, v1 }, Lcom/google/android/material/textfield/TextInputLayout;->s(Landroid/graphics/Rect;Landroid/graphics/Rect;F)I
    move-result p1
    iput p1, v0, Landroid/graphics/Rect;->bottom:I
    return-object v0
  :L0
  .line 8
    new-instance p1, Ljava/lang/IllegalStateException;
    invoke-direct { p1 }, Ljava/lang/IllegalStateException;-><init>()V
    throw p1
.end method

.method private u0()V
  .registers 4
  .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:I
    const/4 v1, 1
    if-eq v0, v1, :L0
  .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Landroid/widget/FrameLayout;
    invoke-virtual { v0 }, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;
  .line 3
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->v()I
    move-result v1
  .line 4
    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I
    if-eq v1, v2, :L0
  .line 5
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I
  .line 6
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Landroid/widget/FrameLayout;
    invoke-virtual { v0 }, Landroid/widget/FrameLayout;->requestLayout()V
  :L0
    return-void
.end method

.method private v()I
  .registers 4
  .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->B:Z
    const/4 v1, 0
    if-nez v0, :L0
    return v1
  :L0
  .line 2
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:I
    if-eqz v0, :L3
    const/4 v2, 1
    if-eq v0, v2, :L3
    const/4 v2, 2
    if-eq v0, v2, :L1
    return v1
  :L1
  .line 3
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H0:Lcom/google/android/material/internal/a;
    invoke-virtual { v0 }, Lcom/google/android/material/internal/a;->r()F
    move-result v0
    const/high16 v1, 16384
    div-float/2addr v0, v1
  :L2
    float-to-int v0, v0
    return v0
  :L3
  .line 4
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H0:Lcom/google/android/material/internal/a;
    invoke-virtual { v0 }, Lcom/google/android/material/internal/a;->r()F
    move-result v0
    goto :L2
.end method

.method private w()Z
  .registers 3
  .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:I
    const/4 v1, 2
    if-ne v0, v1, :L0
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->x()Z
    move-result v0
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method private w0(ZZ)V
  .registers 11
  .line 1
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->isEnabled()Z
    move-result v0
  .line 2
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    const/4 v2, 1
    const/4 v3, 0
    if-eqz v1, :L0
    invoke-virtual { v1 }, Landroid/widget/EditText;->getText()Landroid/text/Editable;
    move-result-object v1
    invoke-static { v1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v1
    if-nez v1, :L0
    const/4 v1, 1
    goto :L1
  :L0
    const/4 v1, 0
  :L1
  .line 3
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    if-eqz v4, :L2
    invoke-virtual { v4 }, Landroid/widget/EditText;->hasFocus()Z
    move-result v4
    if-eqz v4, :L2
    const/4 v4, 1
    goto :L3
  :L2
    const/4 v4, 0
  :L3
  .line 4
    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;
    invoke-virtual { v5 }, Lcom/google/android/material/textfield/f;->k()Z
    move-result v5
  .line 5
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Landroid/content/res/ColorStateList;
    if-eqz v6, :L4
  .line 6
    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->H0:Lcom/google/android/material/internal/a;
    invoke-virtual { v7, v6 }, Lcom/google/android/material/internal/a;->P(Landroid/content/res/ColorStateList;)V
  .line 7
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->H0:Lcom/google/android/material/internal/a;
    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Landroid/content/res/ColorStateList;
    invoke-virtual { v6, v7 }, Lcom/google/android/material/internal/a;->W(Landroid/content/res/ColorStateList;)V
  :L4
    if-nez v0, :L7
  .line 8
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Landroid/content/res/ColorStateList;
    if-eqz v0, :L5
    new-array v2, v2, [I
    const v5, -16842910
    aput v5, v2, v3
    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->F0:I
  .line 9
    invoke-virtual { v0, v2, v3 }, Landroid/content/res/ColorStateList;->getColorForState([II)I
    move-result v0
    goto :L6
  :L5
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F0:I
  :L6
  .line 10
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->H0:Lcom/google/android/material/internal/a;
    invoke-static { v0 }, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;
    move-result-object v3
    invoke-virtual { v2, v3 }, Lcom/google/android/material/internal/a;->P(Landroid/content/res/ColorStateList;)V
  .line 11
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->H0:Lcom/google/android/material/internal/a;
    invoke-static { v0 }, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;
    move-result-object v0
    invoke-virtual { v2, v0 }, Lcom/google/android/material/internal/a;->W(Landroid/content/res/ColorStateList;)V
    goto :L10
  :L7
    if-eqz v5, :L8
  .line 12
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H0:Lcom/google/android/material/internal/a;
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;
    invoke-virtual { v2 }, Lcom/google/android/material/textfield/f;->p()Landroid/content/res/ColorStateList;
    move-result-object v2
    invoke-virtual { v0, v2 }, Lcom/google/android/material/internal/a;->P(Landroid/content/res/ColorStateList;)V
    goto :L10
  :L8
  .line 13
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Z
    if-eqz v0, :L9
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/TextView;
    if-eqz v0, :L9
  .line 14
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->H0:Lcom/google/android/material/internal/a;
    invoke-virtual { v0 }, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;
    move-result-object v0
    invoke-virtual { v2, v0 }, Lcom/google/android/material/internal/a;->P(Landroid/content/res/ColorStateList;)V
    goto :L10
  :L9
    if-eqz v4, :L10
  .line 15
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->w0:Landroid/content/res/ColorStateList;
    if-eqz v0, :L10
  .line 16
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->H0:Lcom/google/android/material/internal/a;
    invoke-virtual { v2, v0 }, Lcom/google/android/material/internal/a;->P(Landroid/content/res/ColorStateList;)V
  :L10
    if-nez v1, :L13
  .line 17
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->I0:Z
    if-eqz v0, :L13
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->isEnabled()Z
    move-result v0
    if-eqz v0, :L11
    if-eqz v4, :L11
    goto :L13
  :L11
    if-nez p2, :L12
  .line 18
    iget-boolean p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->G0:Z
    if-nez p2, :L15
  :L12
  .line 19
    invoke-direct { p0, p1 }, Lcom/google/android/material/textfield/TextInputLayout;->F(Z)V
    goto :L15
  :L13
    if-nez p2, :L14
  .line 20
    iget-boolean p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->G0:Z
    if-eqz p2, :L15
  :L14
  .line 21
    invoke-direct { p0, p1 }, Lcom/google/android/material/textfield/TextInputLayout;->z(Z)V
  :L15
    return-void
.end method

.method private x()Z
  .registers 3
  .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:I
    const/4 v1, -1
    if-le v0, v1, :L0
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method private x0()V
  .registers 6
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Landroid/widget/TextView;
    if-eqz v0, :L0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Landroid/widget/EditText;->getGravity()I
    move-result v0
  .line 3
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Landroid/widget/TextView;
    invoke-virtual { v1, v0 }, Landroid/widget/TextView;->setGravity(I)V
  .line 4
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
  .line 5
    invoke-virtual { v1 }, Landroid/widget/EditText;->getCompoundPaddingLeft()I
    move-result v1
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
  .line 6
    invoke-virtual { v2 }, Landroid/widget/EditText;->getCompoundPaddingTop()I
    move-result v2
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
  .line 7
    invoke-virtual { v3 }, Landroid/widget/EditText;->getCompoundPaddingRight()I
    move-result v3
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
  .line 8
    invoke-virtual { v4 }, Landroid/widget/EditText;->getCompoundPaddingBottom()I
    move-result v4
  .line 9
    invoke-virtual { v0, v1, v2, v3, v4 }, Landroid/widget/TextView;->setPadding(IIII)V
  :L0
    return-void
.end method

.method private y()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->A()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Ld/c/a/a/a0/g;
    check-cast v0, Lcom/google/android/material/textfield/c;
    invoke-virtual { v0 }, Lcom/google/android/material/textfield/c;->l0()V
  :L0
    return-void
.end method

.method private y0()V
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    if-nez v0, :L0
    const/4 v0, 0
    goto :L1
  :L0
    invoke-virtual { v0 }, Landroid/widget/EditText;->getText()Landroid/text/Editable;
    move-result-object v0
    invoke-interface { v0 }, Landroid/text/Editable;->length()I
    move-result v0
  :L1
    invoke-direct { p0, v0 }, Lcom/google/android/material/textfield/TextInputLayout;->z0(I)V
    return-void
.end method

.method private z(Z)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->K0:Landroid/animation/ValueAnimator;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Landroid/animation/ValueAnimator;->isRunning()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->K0:Landroid/animation/ValueAnimator;
    invoke-virtual { v0 }, Landroid/animation/ValueAnimator;->cancel()V
  :L0
    const/high16 v0, 16256
    if-eqz p1, :L1
  .line 3
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->J0:Z
    if-eqz p1, :L1
  .line 4
    invoke-virtual { p0, v0 }, Lcom/google/android/material/textfield/TextInputLayout;->i(F)V
    goto :L2
  :L1
  .line 5
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->H0:Lcom/google/android/material/internal/a;
    invoke-virtual { p1, v0 }, Lcom/google/android/material/internal/a;->a0(F)V
  :L2
    const/4 p1, 0
  .line 6
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->G0:Z
  .line 7
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->A()Z
    move-result p1
    if-eqz p1, :L3
  .line 8
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->T()V
  :L3
  .line 9
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->y0()V
  .line 10
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->B0()V
  .line 11
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->E0()V
    return-void
.end method

.method private z0(I)V
  .registers 2
    if-nez p1, :L0
  .line 1
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->G0:Z
    if-nez p1, :L0
  .line 2
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->i0()V
    goto :L1
  :L0
  .line 3
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->J()V
  :L1
    return-void
.end method

.method F0()V
  .registers 7
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Ld/c/a/a/a0/g;
    if-eqz v0, :L24
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:I
    if-nez v0, :L0
    goto/16 :L24
  :L0
  .line 2
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->isFocused()Z
    move-result v0
    const/4 v1, 0
    const/4 v2, 1
    if-nez v0, :L2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    if-eqz v0, :L1
    invoke-virtual { v0 }, Landroid/widget/EditText;->hasFocus()Z
    move-result v0
    if-eqz v0, :L1
    goto :L2
  :L1
    const/4 v0, 0
    goto :L3
  :L2
    const/4 v0, 1
  :L3
  .line 3
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->isHovered()Z
    move-result v3
    if-nez v3, :L5
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    if-eqz v3, :L4
    invoke-virtual { v3 }, Landroid/widget/EditText;->isHovered()Z
    move-result v3
    if-eqz v3, :L4
    goto :L5
  :L4
    const/4 v3, 0
    goto :L6
  :L5
    const/4 v3, 1
  :L6
  .line 4
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->isEnabled()Z
    move-result v4
    if-nez v4, :L7
  .line 5
    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->F0:I
    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I
    goto :L14
  :L7
  .line 6
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;
    invoke-virtual { v4 }, Lcom/google/android/material/textfield/f;->k()Z
    move-result v4
    if-eqz v4, :L9
  .line 7
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->A0:Landroid/content/res/ColorStateList;
    if-eqz v4, :L8
  .line 8
    invoke-direct { p0, v0, v3 }, Lcom/google/android/material/textfield/TextInputLayout;->C0(ZZ)V
    goto :L14
  :L8
  .line 9
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;
    invoke-virtual { v4 }, Lcom/google/android/material/textfield/f;->o()I
    move-result v4
    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I
    goto :L14
  :L9
  .line 10
    iget-boolean v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Z
    if-eqz v4, :L11
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/TextView;
    if-eqz v4, :L11
  .line 11
    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->A0:Landroid/content/res/ColorStateList;
    if-eqz v5, :L10
  .line 12
    invoke-direct { p0, v0, v3 }, Lcom/google/android/material/textfield/TextInputLayout;->C0(ZZ)V
    goto :L14
  :L10
  .line 13
    invoke-virtual { v4 }, Landroid/widget/TextView;->getCurrentTextColor()I
    move-result v4
    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I
    goto :L14
  :L11
    if-eqz v0, :L12
  .line 14
    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->z0:I
    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I
    goto :L14
  :L12
    if-eqz v3, :L13
  .line 15
    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->y0:I
    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I
    goto :L14
  :L13
  .line 16
    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->x0:I
    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I
  :L14
  .line 17
    invoke-virtual { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->getErrorIconDrawable()Landroid/graphics/drawable/Drawable;
    move-result-object v4
    if-eqz v4, :L15
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;
  .line 18
    invoke-virtual { v4 }, Lcom/google/android/material/textfield/f;->x()Z
    move-result v4
    if-eqz v4, :L15
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;
  .line 19
    invoke-virtual { v4 }, Lcom/google/android/material/textfield/f;->k()Z
    move-result v4
    if-eqz v4, :L15
    const/4 v1, 1
  :L15
  .line 20
    invoke-direct { p0, v1 }, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconVisible(Z)V
  .line 21
    invoke-virtual { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->W()V
  .line 22
    invoke-virtual { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->Y()V
  .line 23
    invoke-virtual { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->V()V
  .line 24
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconDelegate()Lcom/google/android/material/textfield/e;
    move-result-object v1
    invoke-virtual { v1 }, Lcom/google/android/material/textfield/e;->d()Z
    move-result v1
    if-eqz v1, :L16
  .line 25
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;
    invoke-virtual { v1 }, Lcom/google/android/material/textfield/f;->k()Z
    move-result v1
    invoke-direct { p0, v1 }, Lcom/google/android/material/textfield/TextInputLayout;->j0(Z)V
  :L16
    if-eqz v0, :L17
  .line 26
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->isEnabled()Z
    move-result v1
    if-eqz v1, :L17
  .line 27
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->N:I
    iput v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:I
    goto :L18
  :L17
  .line 28
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:I
    iput v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:I
  :L18
  .line 29
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:I
    const/4 v4, 2
    if-ne v1, v4, :L19
  .line 30
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->q0()V
  :L19
  .line 31
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:I
    if-ne v1, v2, :L23
  .line 32
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->isEnabled()Z
    move-result v1
    if-nez v1, :L20
  .line 33
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->C0:I
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:I
    goto :L23
  :L20
    if-eqz v3, :L21
    if-nez v0, :L21
  .line 34
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->E0:I
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:I
    goto :L23
  :L21
    if-eqz v0, :L22
  .line 35
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->D0:I
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:I
    goto :L23
  :L22
  .line 36
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->B0:I
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:I
  :L23
  .line 37
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->j()V
  :L24
    return-void
.end method

.method public K()Z
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/FrameLayout;
    invoke-virtual { v0 }, Landroid/widget/FrameLayout;->getVisibility()I
    move-result v0
    if-nez v0, :L0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Lcom/google/android/material/internal/CheckableImageButton;
    invoke-virtual { v0 }, Landroid/widget/ImageButton;->getVisibility()I
    move-result v0
    if-nez v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public M()Z
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;
    invoke-virtual { v0 }, Lcom/google/android/material/textfield/f;->y()Z
    move-result v0
    return v0
.end method

.method final N()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->G0:Z
    return v0
.end method

.method public O()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Z
    return v0
.end method

.method public Q()Z
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:Lcom/google/android/material/internal/CheckableImageButton;
    invoke-virtual { v0 }, Landroid/widget/ImageButton;->getVisibility()I
    move-result v0
    if-nez v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public V()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Lcom/google/android/material/internal/CheckableImageButton;
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->k0:Landroid/content/res/ColorStateList;
    invoke-direct { p0, v0, v1 }, Lcom/google/android/material/textfield/TextInputLayout;->X(Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V
    return-void
.end method

.method public W()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t0:Lcom/google/android/material/internal/CheckableImageButton;
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Landroid/content/res/ColorStateList;
    invoke-direct { p0, v0, v1 }, Lcom/google/android/material/textfield/TextInputLayout;->X(Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V
    return-void
.end method

.method public Y()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:Lcom/google/android/material/internal/CheckableImageButton;
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->V:Landroid/content/res/ColorStateList;
    invoke-direct { p0, v0, v1 }, Lcom/google/android/material/textfield/TextInputLayout;->X(Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
  .registers 5
  .line 1
    instance-of v0, p1, Landroid/widget/EditText;
    if-eqz v0, :L0
  .line 2
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct { p2, p3 }, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V
  .line 3
    iget v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I
    and-int/lit8 v0, v0, -113
    or-int/lit8 v0, v0, 16
    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I
  .line 4
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Landroid/widget/FrameLayout;
    invoke-virtual { v0, p1, p2 }, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  .line 5
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Landroid/widget/FrameLayout;
    invoke-virtual { p2, p3 }, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  .line 6
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->u0()V
  .line 7
    check-cast p1, Landroid/widget/EditText;
    invoke-direct { p0, p1 }, Lcom/google/android/material/textfield/TextInputLayout;->setEditText(Landroid/widget/EditText;)V
    goto :L1
  :L0
  .line 8
    invoke-super { p0, p1, p2, p3 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
  :L1
    return-void
.end method

.method public dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
  .annotation build Landroid/annotation/TargetApi;
    value = 26
  .end annotation
  .catchall { :L1 .. :L2 } :L3
  .registers 7
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    if-nez v0, :L0
  .line 2
    invoke-super { p0, p1, p2 }, Landroid/widget/LinearLayout;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    return-void
  :L0
  .line 3
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Ljava/lang/CharSequence;
    const/4 v2, 0
    if-eqz v1, :L4
  .line 4
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Z
  .line 5
    iput-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Z
  .line 6
    invoke-virtual { v0 }, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;
    move-result-object v0
  .line 7
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Ljava/lang/CharSequence;
    invoke-virtual { v2, v3 }, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V
  :L1
  .line 8
    invoke-super { p0, p1, p2 }, Landroid/widget/LinearLayout;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
  :L2
  .line 9
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    invoke-virtual { p1, v0 }, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V
  .line 10
    iput-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Z
    goto :L7
  :L3
    move-exception p1
  .line 11
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    invoke-virtual { p2, v0 }, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V
  .line 12
    iput-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Z
  .line 13
    throw p1
  :L4
  .line 14
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getAutofillId()Landroid/view/autofill/AutofillId;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/view/ViewStructure;->setAutofillId(Landroid/view/autofill/AutofillId;)V
  .line 15
    invoke-virtual { p0, p1, p2 }, Landroid/widget/LinearLayout;->onProvideAutofillStructure(Landroid/view/ViewStructure;I)V
  .line 16
    invoke-virtual { p0, p1, p2 }, Landroid/widget/LinearLayout;->onProvideAutofillVirtualStructure(Landroid/view/ViewStructure;I)V
  .line 17
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Landroid/widget/FrameLayout;
    invoke-virtual { v0 }, Landroid/widget/FrameLayout;->getChildCount()I
    move-result v0
    invoke-virtual { p1, v0 }, Landroid/view/ViewStructure;->setChildCount(I)V
  :L5
  .line 18
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Landroid/widget/FrameLayout;
    invoke-virtual { v0 }, Landroid/widget/FrameLayout;->getChildCount()I
    move-result v0
    if-ge v2, v0, :L7
  .line 19
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Landroid/widget/FrameLayout;
    invoke-virtual { v0, v2 }, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;
    move-result-object v0
  .line 20
    invoke-virtual { p1, v2 }, Landroid/view/ViewStructure;->newChild(I)Landroid/view/ViewStructure;
    move-result-object v1
  .line 21
    invoke-virtual { v0, v1, p2 }, Landroid/view/View;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
  .line 22
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    if-ne v0, v3, :L6
  .line 23
    invoke-virtual { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->getHint()Ljava/lang/CharSequence;
    move-result-object v0
    invoke-virtual { v1, v0 }, Landroid/view/ViewStructure;->setHint(Ljava/lang/CharSequence;)V
  :L6
    add-int/lit8 v2, v2, 1
    goto :L5
  :L7
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroid/util/SparseArray<",
      "Landroid/os/Parcelable;",
      ">;)V"
    }
  .end annotation
  .registers 3
    const/4 v0, 1
  .line 1
    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->M0:Z
  .line 2
    invoke-super { p0, p1 }, Landroid/widget/LinearLayout;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    const/4 p1, 0
  .line 3
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->M0:Z
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
  .registers 2
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V
  .line 2
    invoke-direct { p0, p1 }, Lcom/google/android/material/textfield/TextInputLayout;->E(Landroid/graphics/Canvas;)V
  .line 3
    invoke-direct { p0, p1 }, Lcom/google/android/material/textfield/TextInputLayout;->D(Landroid/graphics/Canvas;)V
    return-void
.end method

.method protected drawableStateChanged()V
  .registers 5
  .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->L0:Z
    if-eqz v0, :L0
    return-void
  :L0
    const/4 v0, 1
  .line 2
    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->L0:Z
  .line 3
    invoke-super { p0 }, Landroid/widget/LinearLayout;->drawableStateChanged()V
  .line 4
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getDrawableState()[I
    move-result-object v1
  .line 5
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->H0:Lcom/google/android/material/internal/a;
    const/4 v3, 0
    if-eqz v2, :L1
  .line 6
    invoke-virtual { v2, v1 }, Lcom/google/android/material/internal/a;->d0([I)Z
    move-result v1
    or-int/2addr v1, v3
    goto :L2
  :L1
    const/4 v1, 0
  :L2
  .line 7
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    if-eqz v2, :L5
  .line 8
    invoke-static { p0 }, Landroidx/core/view/v;->T(Landroid/view/View;)Z
    move-result v2
    if-eqz v2, :L3
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->isEnabled()Z
    move-result v2
    if-eqz v2, :L3
    goto :L4
  :L3
    const/4 v0, 0
  :L4
    invoke-virtual { p0, v0 }, Lcom/google/android/material/textfield/TextInputLayout;->v0(Z)V
  :L5
  .line 9
    invoke-virtual { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->s0()V
  .line 10
    invoke-virtual { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->F0()V
    if-eqz v1, :L6
  .line 11
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->invalidate()V
  :L6
  .line 12
    iput-boolean v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->L0:Z
    return-void
.end method

.method public e(Lcom/google/android/material/textfield/TextInputLayout$f;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f0:Ljava/util/LinkedHashSet;
    invoke-virtual { v0, p1 }, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
  .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    if-eqz v0, :L0
  .line 3
    invoke-interface { p1, p0 }, Lcom/google/android/material/textfield/TextInputLayout$f;->a(Lcom/google/android/material/textfield/TextInputLayout;)V
  :L0
    return-void
.end method

.method e0(Landroid/widget/TextView;I)V
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L3
  .registers 5
    const/4 v0, 1
  :L0
  .line 1
    invoke-static { p1, p2 }, Landroidx/core/widget/i;->n(Landroid/widget/TextView;I)V
  .line 2
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 23
    if-lt p2, v1, :L2
  .line 3
    invoke-virtual { p1 }, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;
    move-result-object p2
    invoke-virtual { p2 }, Landroid/content/res/ColorStateList;->getDefaultColor()I
    move-result p2
  :L1
    const v1, -65281
    if-ne p2, v1, :L2
    goto :L4
  :L2
    const/4 p2, 0
    const/4 v0, 0
    goto :L4
  :L3
    nop
  :L4
    if-eqz v0, :L5
  .line 4
    sget p2, Ld/c/a/a/j;->TextAppearance_AppCompat_Caption:I
    invoke-static { p1, p2 }, Landroidx/core/widget/i;->n(Landroid/widget/TextView;I)V
  .line 5
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;
    move-result-object p2
    sget v0, Ld/c/a/a/c;->design_error:I
    invoke-static { p2, v0 }, Landroidx/core/content/a;->b(Landroid/content/Context;I)I
    move-result p2
    invoke-virtual { p1, p2 }, Landroid/widget/TextView;->setTextColor(I)V
  :L5
    return-void
.end method

.method public f(Lcom/google/android/material/textfield/TextInputLayout$g;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j0:Ljava/util/LinkedHashSet;
    invoke-virtual { v0, p1 }, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
    return-void
.end method

.method public getBaseline()I
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Landroid/widget/EditText;->getBaseline()I
    move-result v0
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getPaddingTop()I
    move-result v1
    add-int/2addr v0, v1
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->v()I
    move-result v1
    add-int/2addr v0, v1
    return v0
  :L0
  .line 3
    invoke-super { p0 }, Landroid/widget/LinearLayout;->getBaseline()I
    move-result v0
    return v0
.end method

.method getBoxBackground()Ld/c/a/a/a0/g;
  .registers 3
  .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:I
    const/4 v1, 1
    if-eq v0, v1, :L1
    const/4 v1, 2
    if-ne v0, v1, :L0
    goto :L1
  :L0
  .line 2
    new-instance v0, Ljava/lang/IllegalStateException;
    invoke-direct { v0 }, Ljava/lang/IllegalStateException;-><init>()V
    throw v0
  :L1
  .line 3
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Ld/c/a/a/a0/g;
    return-object v0
.end method

.method public getBoxBackgroundColor()I
  .registers 2
  .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:I
    return v0
.end method

.method public getBoxBackgroundMode()I
  .registers 2
  .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:I
    return v0
.end method

.method public getBoxCornerRadiusBottomEnd()F
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Ld/c/a/a/a0/g;
    invoke-virtual { v0 }, Ld/c/a/a/a0/g;->s()F
    move-result v0
    return v0
.end method

.method public getBoxCornerRadiusBottomStart()F
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Ld/c/a/a/a0/g;
    invoke-virtual { v0 }, Ld/c/a/a/a0/g;->t()F
    move-result v0
    return v0
.end method

.method public getBoxCornerRadiusTopEnd()F
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Ld/c/a/a/a0/g;
    invoke-virtual { v0 }, Ld/c/a/a/a0/g;->G()F
    move-result v0
    return v0
.end method

.method public getBoxCornerRadiusTopStart()F
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Ld/c/a/a/a0/g;
    invoke-virtual { v0 }, Ld/c/a/a/a0/g;->F()F
    move-result v0
    return v0
.end method

.method public getBoxStrokeColor()I
  .registers 2
  .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->z0:I
    return v0
.end method

.method public getBoxStrokeErrorColor()Landroid/content/res/ColorStateList;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->A0:Landroid/content/res/ColorStateList;
    return-object v0
.end method

.method public getBoxStrokeWidth()I
  .registers 2
  .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:I
    return v0
.end method

.method public getBoxStrokeWidthFocused()I
  .registers 2
  .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->N:I
    return v0
.end method

.method public getCounterMaxLength()I
  .registers 2
  .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:I
    return v0
.end method

.method getCounterOverflowDescription()Ljava/lang/CharSequence;
  .registers 2
  .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:Z
    if-eqz v0, :L0
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Z
    if-eqz v0, :L0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/TextView;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Landroid/widget/TextView;->getContentDescription()Ljava/lang/CharSequence;
    move-result-object v0
    return-object v0
  :L0
    const/4 v0, 0
    return-object v0
.end method

.method public getCounterOverflowTextColor()Landroid/content/res/ColorStateList;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Landroid/content/res/ColorStateList;
    return-object v0
.end method

.method public getCounterTextColor()Landroid/content/res/ColorStateList;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Landroid/content/res/ColorStateList;
    return-object v0
.end method

.method public getDefaultHintTextColor()Landroid/content/res/ColorStateList;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Landroid/content/res/ColorStateList;
    return-object v0
.end method

.method public getEditText()Landroid/widget/EditText;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    return-object v0
.end method

.method public getEndIconContentDescription()Ljava/lang/CharSequence;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Lcom/google/android/material/internal/CheckableImageButton;
    invoke-virtual { v0 }, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;
    move-result-object v0
    return-object v0
.end method

.method public getEndIconDrawable()Landroid/graphics/drawable/Drawable;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Lcom/google/android/material/internal/CheckableImageButton;
    invoke-virtual { v0 }, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    return-object v0
.end method

.method public getEndIconMode()I
  .registers 2
  .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g0:I
    return v0
.end method

.method getEndIconView()Lcom/google/android/material/internal/CheckableImageButton;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Lcom/google/android/material/internal/CheckableImageButton;
    return-object v0
.end method

.method public getError()Ljava/lang/CharSequence;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;
    invoke-virtual { v0 }, Lcom/google/android/material/textfield/f;->x()Z
    move-result v0
    if-eqz v0, :L0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;
    invoke-virtual { v0 }, Lcom/google/android/material/textfield/f;->n()Ljava/lang/CharSequence;
    move-result-object v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return-object v0
.end method

.method public getErrorContentDescription()Ljava/lang/CharSequence;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;
    invoke-virtual { v0 }, Lcom/google/android/material/textfield/f;->m()Ljava/lang/CharSequence;
    move-result-object v0
    return-object v0
.end method

.method public getErrorCurrentTextColors()I
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;
    invoke-virtual { v0 }, Lcom/google/android/material/textfield/f;->o()I
    move-result v0
    return v0
.end method

.method public getErrorIconDrawable()Landroid/graphics/drawable/Drawable;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t0:Lcom/google/android/material/internal/CheckableImageButton;
    invoke-virtual { v0 }, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    return-object v0
.end method

.method final getErrorTextCurrentColor()I
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;
    invoke-virtual { v0 }, Lcom/google/android/material/textfield/f;->o()I
    move-result v0
    return v0
.end method

.method public getHelperText()Ljava/lang/CharSequence;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;
    invoke-virtual { v0 }, Lcom/google/android/material/textfield/f;->y()Z
    move-result v0
    if-eqz v0, :L0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;
  .line 2
    invoke-virtual { v0 }, Lcom/google/android/material/textfield/f;->q()Ljava/lang/CharSequence;
    move-result-object v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return-object v0
.end method

.method public getHelperTextCurrentTextColor()I
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;
    invoke-virtual { v0 }, Lcom/google/android/material/textfield/f;->r()I
    move-result v0
    return v0
.end method

.method public getHint()Ljava/lang/CharSequence;
  .registers 2
  .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->B:Z
    if-eqz v0, :L0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:Ljava/lang/CharSequence;
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return-object v0
.end method

.method final getHintCollapsedTextHeight()F
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H0:Lcom/google/android/material/internal/a;
    invoke-virtual { v0 }, Lcom/google/android/material/internal/a;->r()F
    move-result v0
    return v0
.end method

.method final getHintCurrentCollapsedTextColor()I
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H0:Lcom/google/android/material/internal/a;
    invoke-virtual { v0 }, Lcom/google/android/material/internal/a;->u()I
    move-result v0
    return v0
.end method

.method public getHintTextColor()Landroid/content/res/ColorStateList;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->w0:Landroid/content/res/ColorStateList;
    return-object v0
.end method

.method public getMaxWidth()I
  .registers 2
  .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:I
    return v0
.end method

.method public getMinWidth()I
  .registers 2
  .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:I
    return v0
.end method

.method public getPasswordVisibilityToggleContentDescription()Ljava/lang/CharSequence;
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Lcom/google/android/material/internal/CheckableImageButton;
    invoke-virtual { v0 }, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;
    move-result-object v0
    return-object v0
.end method

.method public getPasswordVisibilityToggleDrawable()Landroid/graphics/drawable/Drawable;
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Lcom/google/android/material/internal/CheckableImageButton;
    invoke-virtual { v0 }, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    return-object v0
.end method

.method public getPlaceholderText()Ljava/lang/CharSequence;
  .registers 2
  .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Z
    if-eqz v0, :L0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->q:Ljava/lang/CharSequence;
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return-object v0
.end method

.method public getPlaceholderTextAppearance()I
  .registers 2
  .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->u:I
    return v0
.end method

.method public getPlaceholderTextColor()Landroid/content/res/ColorStateList;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Landroid/content/res/ColorStateList;
    return-object v0
.end method

.method public getPrefixText()Ljava/lang/CharSequence;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->x:Ljava/lang/CharSequence;
    return-object v0
.end method

.method public getPrefixTextColor()Landroid/content/res/ColorStateList;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->y:Landroid/widget/TextView;
    invoke-virtual { v0 }, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;
    move-result-object v0
    return-object v0
.end method

.method public getPrefixTextView()Landroid/widget/TextView;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->y:Landroid/widget/TextView;
    return-object v0
.end method

.method public getStartIconContentDescription()Ljava/lang/CharSequence;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:Lcom/google/android/material/internal/CheckableImageButton;
    invoke-virtual { v0 }, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;
    move-result-object v0
    return-object v0
.end method

.method public getStartIconDrawable()Landroid/graphics/drawable/Drawable;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:Lcom/google/android/material/internal/CheckableImageButton;
    invoke-virtual { v0 }, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    return-object v0
.end method

.method public getSuffixText()Ljava/lang/CharSequence;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->z:Ljava/lang/CharSequence;
    return-object v0
.end method

.method public getSuffixTextColor()Landroid/content/res/ColorStateList;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Landroid/widget/TextView;
    invoke-virtual { v0 }, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;
    move-result-object v0
    return-object v0
.end method

.method public getSuffixTextView()Landroid/widget/TextView;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Landroid/widget/TextView;
    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:Landroid/graphics/Typeface;
    return-object v0
.end method

.method i(F)V
  .registers 6
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H0:Lcom/google/android/material/internal/a;
    invoke-virtual { v0 }, Lcom/google/android/material/internal/a;->y()F
    move-result v0
    cmpl-float v0, v0, p1
    if-nez v0, :L0
    return-void
  :L0
  .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->K0:Landroid/animation/ValueAnimator;
    if-nez v0, :L1
  .line 3
    new-instance v0, Landroid/animation/ValueAnimator;
    invoke-direct { v0 }, Landroid/animation/ValueAnimator;-><init>()V
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->K0:Landroid/animation/ValueAnimator;
  .line 4
    sget-object v1, Ld/c/a/a/l/a;->b:Landroid/animation/TimeInterpolator;
    invoke-virtual { v0, v1 }, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V
  .line 5
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->K0:Landroid/animation/ValueAnimator;
    const-wide/16 v1, 167
    invoke-virtual { v0, v1, v2 }, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;
  .line 6
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->K0:Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/google/android/material/textfield/TextInputLayout$d;
    invoke-direct { v1, p0 }, Lcom/google/android/material/textfield/TextInputLayout$d;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    invoke-virtual { v0, v1 }, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
  :L1
  .line 7
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->K0:Landroid/animation/ValueAnimator;
    const/4 v1, 2
    new-array v1, v1, [F
    const/4 v2, 0
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->H0:Lcom/google/android/material/internal/a;
    invoke-virtual { v3 }, Lcom/google/android/material/internal/a;->y()F
    move-result v3
    aput v3, v1, v2
    const/4 v2, 1
    aput p1, v1, v2
    invoke-virtual { v0, v1 }, Landroid/animation/ValueAnimator;->setFloatValues([F)V
  .line 8
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->K0:Landroid/animation/ValueAnimator;
    invoke-virtual { p1 }, Landroid/animation/ValueAnimator;->start()V
    return-void
.end method

.method n0(I)V
  .registers 10
  .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Z
  .line 2
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:I
    const/4 v2, 0
    const/4 v3, -1
    if-ne v1, v3, :L0
  .line 3
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/TextView;
    invoke-static { p1 }, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v1, p1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 4
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/TextView;
    const/4 v1, 0
    invoke-virtual { p1, v1 }, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V
  .line 5
    iput-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Z
    goto :L4
  :L0
    const/4 v3, 1
    if-le p1, v1, :L1
    const/4 v1, 1
    goto :L2
  :L1
    const/4 v1, 0
  :L2
  .line 6
    iput-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Z
  .line 7
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;
    move-result-object v1
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/TextView;
    iget v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:I
    iget-boolean v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Z
  .line 8
    invoke-static { v1, v4, p1, v5, v6 }, Lcom/google/android/material/textfield/TextInputLayout;->o0(Landroid/content/Context;Landroid/widget/TextView;IIZ)V
  .line 9
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Z
    if-eq v0, v1, :L3
  .line 10
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->p0()V
  :L3
  .line 11
    invoke-static { }, Lc/g/i/a;->c()Lc/g/i/a;
    move-result-object v1
  .line 12
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/TextView;
  .line 13
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;
    move-result-object v5
    sget v6, Ld/c/a/a/i;->character_counter_pattern:I
    const/4 v7, 2
    new-array v7, v7, [Ljava/lang/Object;
  .line 14
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p1
    aput-object p1, v7, v2
    iget p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:I
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p1
    aput-object p1, v7, v3
    invoke-virtual { v5, v6, v7 }, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object p1
  .line 15
    invoke-virtual { v1, p1 }, Lc/g/i/a;->j(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
  .line 16
    invoke-virtual { v4, p1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  :L4
  .line 17
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    if-eqz p1, :L5
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Z
    if-eq v0, p1, :L5
  .line 18
    invoke-virtual { p0, v2 }, Lcom/google/android/material/textfield/TextInputLayout;->v0(Z)V
  .line 19
    invoke-virtual { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->F0()V
  .line 20
    invoke-virtual { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->s0()V
  :L5
    return-void
.end method

.method protected onLayout(ZIIII)V
  .registers 6
  .line 1
    invoke-super/range { p0 .. p5 }, Landroid/widget/LinearLayout;->onLayout(ZIIII)V
  .line 2
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    if-eqz p1, :L0
  .line 3
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->Q:Landroid/graphics/Rect;
  .line 4
    invoke-static { p0, p1, p2 }, Lcom/google/android/material/internal/b;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V
  .line 5
    invoke-direct { p0, p2 }, Lcom/google/android/material/textfield/TextInputLayout;->l0(Landroid/graphics/Rect;)V
  .line 6
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->B:Z
    if-eqz p1, :L0
  .line 7
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->H0:Lcom/google/android/material/internal/a;
    iget-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    invoke-virtual { p3 }, Landroid/widget/EditText;->getTextSize()F
    move-result p3
    invoke-virtual { p1, p3 }, Lcom/google/android/material/internal/a;->Y(F)V
  .line 8
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    invoke-virtual { p1 }, Landroid/widget/EditText;->getGravity()I
    move-result p1
  .line 9
    iget-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->H0:Lcom/google/android/material/internal/a;
    and-int/lit8 p4, p1, -113
    or-int/lit8 p4, p4, 48
    invoke-virtual { p3, p4 }, Lcom/google/android/material/internal/a;->Q(I)V
  .line 10
    iget-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->H0:Lcom/google/android/material/internal/a;
    invoke-virtual { p3, p1 }, Lcom/google/android/material/internal/a;->X(I)V
  .line 11
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->H0:Lcom/google/android/material/internal/a;
    invoke-direct { p0, p2 }, Lcom/google/android/material/textfield/TextInputLayout;->r(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    move-result-object p3
    invoke-virtual { p1, p3 }, Lcom/google/android/material/internal/a;->M(Landroid/graphics/Rect;)V
  .line 12
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->H0:Lcom/google/android/material/internal/a;
    invoke-direct { p0, p2 }, Lcom/google/android/material/textfield/TextInputLayout;->u(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    move-result-object p2
    invoke-virtual { p1, p2 }, Lcom/google/android/material/internal/a;->U(Landroid/graphics/Rect;)V
  .line 13
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->H0:Lcom/google/android/material/internal/a;
    invoke-virtual { p1 }, Lcom/google/android/material/internal/a;->I()V
  .line 14
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->A()Z
    move-result p1
    if-eqz p1, :L0
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->G0:Z
    if-nez p1, :L0
  .line 15
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->T()V
  :L0
    return-void
.end method

.method protected onMeasure(II)V
  .registers 3
  .line 1
    invoke-super { p0, p1, p2 }, Landroid/widget/LinearLayout;->onMeasure(II)V
  .line 2
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->t0()Z
    move-result p1
  .line 3
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->r0()Z
    move-result p2
    if-nez p1, :L0
    if-eqz p2, :L1
  :L0
  .line 4
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    new-instance p2, Lcom/google/android/material/textfield/TextInputLayout$c;
    invoke-direct { p2, p0 }, Lcom/google/android/material/textfield/TextInputLayout$c;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    invoke-virtual { p1, p2 }, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z
  :L1
  .line 5
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->x0()V
  .line 6
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->A0()V
  .line 7
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->D0()V
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
  .registers 4
  .line 1
    instance-of v0, p1, Lcom/google/android/material/textfield/TextInputLayout$h;
    if-nez v0, :L0
  .line 2
    invoke-super { p0, p1 }, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V
    return-void
  :L0
  .line 3
    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout$h;
  .line 4
    invoke-virtual { p1 }, Lc/i/a/a;->j()Landroid/os/Parcelable;
    move-result-object v0
    invoke-super { p0, v0 }, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V
  .line 5
    iget-object v0, p1, Lcom/google/android/material/textfield/TextInputLayout$h;->d:Ljava/lang/CharSequence;
    invoke-virtual { p0, v0 }, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V
  .line 6
    iget-boolean v0, p1, Lcom/google/android/material/textfield/TextInputLayout$h;->e:Z
    if-eqz v0, :L1
  .line 7
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Lcom/google/android/material/internal/CheckableImageButton;
    new-instance v1, Lcom/google/android/material/textfield/TextInputLayout$b;
    invoke-direct { v1, p0 }, Lcom/google/android/material/textfield/TextInputLayout$b;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    invoke-virtual { v0, v1 }, Landroid/widget/ImageButton;->post(Ljava/lang/Runnable;)Z
  :L1
  .line 8
    iget-object v0, p1, Lcom/google/android/material/textfield/TextInputLayout$h;->f:Ljava/lang/CharSequence;
    invoke-virtual { p0, v0 }, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V
  .line 9
    iget-object v0, p1, Lcom/google/android/material/textfield/TextInputLayout$h;->g:Ljava/lang/CharSequence;
    invoke-virtual { p0, v0 }, Lcom/google/android/material/textfield/TextInputLayout;->setHelperText(Ljava/lang/CharSequence;)V
  .line 10
    iget-object p1, p1, Lcom/google/android/material/textfield/TextInputLayout$h;->h:Ljava/lang/CharSequence;
    invoke-virtual { p0, p1 }, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderText(Ljava/lang/CharSequence;)V
  .line 11
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->requestLayout()V
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
  .registers 3
  .line 1
    invoke-super { p0 }, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;
    move-result-object v0
  .line 2
    new-instance v1, Lcom/google/android/material/textfield/TextInputLayout$h;
    invoke-direct { v1, v0 }, Lcom/google/android/material/textfield/TextInputLayout$h;-><init>(Landroid/os/Parcelable;)V
  .line 3
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;
    invoke-virtual { v0 }, Lcom/google/android/material/textfield/f;->k()Z
    move-result v0
    if-eqz v0, :L0
  .line 4
    invoke-virtual { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->getError()Ljava/lang/CharSequence;
    move-result-object v0
    iput-object v0, v1, Lcom/google/android/material/textfield/TextInputLayout$h;->d:Ljava/lang/CharSequence;
  :L0
  .line 5
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->I()Z
    move-result v0
    if-eqz v0, :L1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Lcom/google/android/material/internal/CheckableImageButton;
    invoke-virtual { v0 }, Lcom/google/android/material/internal/CheckableImageButton;->isChecked()Z
    move-result v0
    if-eqz v0, :L1
    const/4 v0, 1
    goto :L2
  :L1
    const/4 v0, 0
  :L2
    iput-boolean v0, v1, Lcom/google/android/material/textfield/TextInputLayout$h;->e:Z
  .line 6
    invoke-virtual { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->getHint()Ljava/lang/CharSequence;
    move-result-object v0
    iput-object v0, v1, Lcom/google/android/material/textfield/TextInputLayout$h;->f:Ljava/lang/CharSequence;
  .line 7
    invoke-virtual { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->getHelperText()Ljava/lang/CharSequence;
    move-result-object v0
    iput-object v0, v1, Lcom/google/android/material/textfield/TextInputLayout$h;->g:Ljava/lang/CharSequence;
  .line 8
    invoke-virtual { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->getPlaceholderText()Ljava/lang/CharSequence;
    move-result-object v0
    iput-object v0, v1, Lcom/google/android/material/textfield/TextInputLayout$h;->h:Ljava/lang/CharSequence;
    return-object v1
.end method

.method s0()V
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    if-eqz v0, :L5
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:I
    if-eqz v1, :L0
    goto :L5
  :L0
  .line 2
    invoke-virtual { v0 }, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    if-nez v0, :L1
    return-void
  :L1
  .line 3
    invoke-static { v0 }, Landroidx/appcompat/widget/c0;->a(Landroid/graphics/drawable/Drawable;)Z
    move-result v1
    if-eqz v1, :L2
  .line 4
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
    move-result-object v0
  :L2
  .line 5
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;
    invoke-virtual { v1 }, Lcom/google/android/material/textfield/f;->k()Z
    move-result v1
    if-eqz v1, :L3
  .line 6
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;
  .line 7
    invoke-virtual { v1 }, Lcom/google/android/material/textfield/f;->o()I
    move-result v1
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;
  .line 8
    invoke-static { v1, v2 }, Landroidx/appcompat/widget/i;->e(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    move-result-object v1
  .line 9
    invoke-virtual { v0, v1 }, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V
    goto :L5
  :L3
  .line 10
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Z
    if-eqz v1, :L4
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/TextView;
    if-eqz v1, :L4
  .line 11
    invoke-virtual { v1 }, Landroid/widget/TextView;->getCurrentTextColor()I
    move-result v1
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;
  .line 12
    invoke-static { v1, v2 }, Landroidx/appcompat/widget/i;->e(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    move-result-object v1
  .line 13
    invoke-virtual { v0, v1 }, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V
    goto :L5
  :L4
  .line 14
    invoke-static { v0 }, Landroidx/core/graphics/drawable/a;->c(Landroid/graphics/drawable/Drawable;)V
  .line 15
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    invoke-virtual { v0 }, Landroid/widget/EditText;->refreshDrawableState()V
  :L5
    return-void
.end method

.method public setBoxBackgroundColor(I)V
  .registers 3
  .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:I
    if-eq v0, p1, :L0
  .line 2
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:I
  .line 3
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->B0:I
  .line 4
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->D0:I
  .line 5
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->E0:I
  .line 6
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->j()V
  :L0
    return-void
.end method

.method public setBoxBackgroundColorResource(I)V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-static { v0, p1 }, Landroidx/core/content/a;->b(Landroid/content/Context;I)I
    move-result p1
    invoke-virtual { p0, p1 }, Lcom/google/android/material/textfield/TextInputLayout;->setBoxBackgroundColor(I)V
    return-void
.end method

.method public setBoxBackgroundColorStateList(Landroid/content/res/ColorStateList;)V
  .registers 5
  .line 1
    invoke-virtual { p1 }, Landroid/content/res/ColorStateList;->getDefaultColor()I
    move-result v0
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->B0:I
  .line 2
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:I
    const/4 v0, 1
    new-array v0, v0, [I
    const/4 v1, 0
    const v2, -16842910
    aput v2, v0, v1
    const/4 v1, -1
  .line 3
    invoke-virtual { p1, v0, v1 }, Landroid/content/res/ColorStateList;->getColorForState([II)I
    move-result v0
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->C0:I
    const/4 v0, 2
    new-array v2, v0, [I
  .line 4
    fill-array-data v2, :L0
  .line 5
    invoke-virtual { p1, v2, v1 }, Landroid/content/res/ColorStateList;->getColorForState([II)I
    move-result v2
    iput v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->D0:I
    new-array v0, v0, [I
  .line 6
    fill-array-data v0, :L1
  .line 7
    invoke-virtual { p1, v0, v1 }, Landroid/content/res/ColorStateList;->getColorForState([II)I
    move-result p1
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->E0:I
  .line 8
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->j()V
    return-void
  :L0
  .array-data 4
    -100t 0t 1t 1t
    -98t 0t 1t 1t
  .end array-data
  :L1
  .array-data 4
    103t 3t 1t 1t
    -98t 0t 1t 1t
  .end array-data
.end method

.method public setBoxBackgroundMode(I)V
  .registers 3
  .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:I
    if-ne p1, v0, :L0
    return-void
  :L0
  .line 2
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:I
  .line 3
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    if-eqz p1, :L1
  .line 4
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->S()V
  :L1
    return-void
.end method

.method public setBoxStrokeColor(I)V
  .registers 3
  .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->z0:I
    if-eq v0, p1, :L0
  .line 2
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->z0:I
  .line 3
    invoke-virtual { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->F0()V
  :L0
    return-void
.end method

.method public setBoxStrokeColorStateList(Landroid/content/res/ColorStateList;)V
  .registers 5
  .line 1
    invoke-virtual { p1 }, Landroid/content/res/ColorStateList;->isStateful()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    invoke-virtual { p1 }, Landroid/content/res/ColorStateList;->getDefaultColor()I
    move-result v0
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->x0:I
    const/4 v0, 1
    new-array v0, v0, [I
    const/4 v1, 0
    const v2, -16842910
    aput v2, v0, v1
    const/4 v1, -1
  .line 3
    invoke-virtual { p1, v0, v1 }, Landroid/content/res/ColorStateList;->getColorForState([II)I
    move-result v0
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F0:I
    const/4 v0, 2
    new-array v2, v0, [I
  .line 4
    fill-array-data v2, :L2
  .line 5
    invoke-virtual { p1, v2, v1 }, Landroid/content/res/ColorStateList;->getColorForState([II)I
    move-result v2
    iput v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->y0:I
    new-array v0, v0, [I
  .line 6
    fill-array-data v0, :L3
  .line 7
    invoke-virtual { p1, v0, v1 }, Landroid/content/res/ColorStateList;->getColorForState([II)I
    move-result p1
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->z0:I
    goto :L1
  :L0
  .line 8
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->z0:I
    invoke-virtual { p1 }, Landroid/content/res/ColorStateList;->getDefaultColor()I
    move-result v1
    if-eq v0, v1, :L1
  .line 9
    invoke-virtual { p1 }, Landroid/content/res/ColorStateList;->getDefaultColor()I
    move-result p1
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->z0:I
  :L1
  .line 10
    invoke-virtual { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->F0()V
    return-void
  :L2
  .array-data 4
    103t 3t 1t 1t
    -98t 0t 1t 1t
  .end array-data
  :L3
  .array-data 4
    -100t 0t 1t 1t
    -98t 0t 1t 1t
  .end array-data
.end method

.method public setBoxStrokeErrorColor(Landroid/content/res/ColorStateList;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->A0:Landroid/content/res/ColorStateList;
    if-eq v0, p1, :L0
  .line 2
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->A0:Landroid/content/res/ColorStateList;
  .line 3
    invoke-virtual { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->F0()V
  :L0
    return-void
.end method

.method public setBoxStrokeWidth(I)V
  .registers 2
  .line 1
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:I
  .line 2
    invoke-virtual { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->F0()V
    return-void
.end method

.method public setBoxStrokeWidthFocused(I)V
  .registers 2
  .line 1
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->N:I
  .line 2
    invoke-virtual { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->F0()V
    return-void
.end method

.method public setBoxStrokeWidthFocusedResource(I)V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    invoke-virtual { v0, p1 }, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    move-result p1
    invoke-virtual { p0, p1 }, Lcom/google/android/material/textfield/TextInputLayout;->setBoxStrokeWidthFocused(I)V
    return-void
.end method

.method public setBoxStrokeWidthResource(I)V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    invoke-virtual { v0, p1 }, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    move-result p1
    invoke-virtual { p0, p1 }, Lcom/google/android/material/textfield/TextInputLayout;->setBoxStrokeWidth(I)V
    return-void
.end method

.method public setCounterEnabled(Z)V
  .registers 5
  .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:Z
    if-eq v0, p1, :L3
    const/4 v0, 2
    if-eqz p1, :L1
  .line 2
    new-instance v1, Landroidx/appcompat/widget/x;
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;
    move-result-object v2
    invoke-direct { v1, v2 }, Landroidx/appcompat/widget/x;-><init>(Landroid/content/Context;)V
    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/TextView;
  .line 3
    sget v2, Ld/c/a/a/f;->textinput_counter:I
    invoke-virtual { v1, v2 }, Landroid/widget/TextView;->setId(I)V
  .line 4
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:Landroid/graphics/Typeface;
    if-eqz v1, :L0
  .line 5
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/TextView;
    invoke-virtual { v2, v1 }, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
  :L0
  .line 6
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/TextView;
    const/4 v2, 1
    invoke-virtual { v1, v2 }, Landroid/widget/TextView;->setMaxLines(I)V
  .line 7
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/TextView;
    invoke-virtual { v1, v2, v0 }, Lcom/google/android/material/textfield/f;->d(Landroid/widget/TextView;I)V
  .line 8
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/TextView;
  .line 9
    invoke-virtual { v0 }, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;
  .line 10
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;
    move-result-object v1
    sget v2, Ld/c/a/a/d;->mtrl_textinput_counter_margin_start:I
    invoke-virtual { v1, v2 }, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I
    move-result v1
  .line 11
    invoke-static { v0, v1 }, Landroidx/core/view/h;->d(Landroid/view/ViewGroup$MarginLayoutParams;I)V
  .line 12
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->p0()V
  .line 13
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->m0()V
    goto :L2
  :L1
  .line 14
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/TextView;
    invoke-virtual { v1, v2, v0 }, Lcom/google/android/material/textfield/f;->z(Landroid/widget/TextView;I)V
    const/4 v0, 0
  .line 15
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/TextView;
  :L2
  .line 16
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:Z
  :L3
    return-void
.end method

.method public setCounterMaxLength(I)V
  .registers 3
  .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:I
    if-eq v0, p1, :L2
    if-lez p1, :L0
  .line 2
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:I
    goto :L1
  :L0
    const/4 p1, -1
  .line 3
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:I
  :L1
  .line 4
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:Z
    if-eqz p1, :L2
  .line 5
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->m0()V
  :L2
    return-void
.end method

.method public setCounterOverflowTextAppearance(I)V
  .registers 3
  .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:I
    if-eq v0, p1, :L0
  .line 2
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:I
  .line 3
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->p0()V
  :L0
    return-void
.end method

.method public setCounterOverflowTextColor(Landroid/content/res/ColorStateList;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:Landroid/content/res/ColorStateList;
    if-eq v0, p1, :L0
  .line 2
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:Landroid/content/res/ColorStateList;
  .line 3
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->p0()V
  :L0
    return-void
.end method

.method public setCounterTextAppearance(I)V
  .registers 3
  .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->p:I
    if-eq v0, p1, :L0
  .line 2
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->p:I
  .line 3
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->p0()V
  :L0
    return-void
.end method

.method public setCounterTextColor(Landroid/content/res/ColorStateList;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Landroid/content/res/ColorStateList;
    if-eq v0, p1, :L0
  .line 2
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Landroid/content/res/ColorStateList;
  .line 3
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->p0()V
  :L0
    return-void
.end method

.method public setDefaultHintTextColor(Landroid/content/res/ColorStateList;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Landroid/content/res/ColorStateList;
  .line 2
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->w0:Landroid/content/res/ColorStateList;
  .line 3
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    if-eqz p1, :L0
    const/4 p1, 0
  .line 4
    invoke-virtual { p0, p1 }, Lcom/google/android/material/textfield/TextInputLayout;->v0(Z)V
  :L0
    return-void
.end method

.method public setEnabled(Z)V
  .registers 2
  .line 1
    invoke-static { p0, p1 }, Lcom/google/android/material/textfield/TextInputLayout;->U(Landroid/view/ViewGroup;Z)V
  .line 2
    invoke-super { p0, p1 }, Landroid/widget/LinearLayout;->setEnabled(Z)V
    return-void
.end method

.method public setEndIconActivated(Z)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Lcom/google/android/material/internal/CheckableImageButton;
    invoke-virtual { v0, p1 }, Landroid/widget/ImageButton;->setActivated(Z)V
    return-void
.end method

.method public setEndIconCheckable(Z)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Lcom/google/android/material/internal/CheckableImageButton;
    invoke-virtual { v0, p1 }, Lcom/google/android/material/internal/CheckableImageButton;->setCheckable(Z)V
    return-void
.end method

.method public setEndIconContentDescription(I)V
  .registers 3
    if-eqz p1, :L0
  .line 1
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    invoke-virtual { v0, p1 }, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    move-result-object p1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    invoke-virtual { p0, p1 }, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V
    return-void
.end method

.method public setEndIconContentDescription(Ljava/lang/CharSequence;)V
  .registers 3
  .line 2
    invoke-virtual { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconContentDescription()Ljava/lang/CharSequence;
    move-result-object v0
    if-eq v0, p1, :L0
  .line 3
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Lcom/google/android/material/internal/CheckableImageButton;
    invoke-virtual { v0, p1 }, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V
  :L0
    return-void
.end method

.method public setEndIconDrawable(I)V
  .registers 3
    if-eqz p1, :L0
  .line 1
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-static { v0, p1 }, Lc/a/k/a/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    move-result-object p1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    invoke-virtual { p0, p1 }, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V
    return-void
.end method

.method public setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V
  .registers 3
  .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Lcom/google/android/material/internal/CheckableImageButton;
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/l;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
  .line 3
    invoke-virtual { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->V()V
    return-void
.end method

.method public setEndIconMode(I)V
  .registers 5
  .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g0:I
  .line 2
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->g0:I
  .line 3
    invoke-direct { p0, v0 }, Lcom/google/android/material/textfield/TextInputLayout;->C(I)V
    if-eqz p1, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
  .line 4
    invoke-virtual { p0, v0 }, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V
  .line 5
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconDelegate()Lcom/google/android/material/textfield/e;
    move-result-object v0
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:I
    invoke-virtual { v0, v1 }, Lcom/google/android/material/textfield/e;->b(I)Z
    move-result v0
    if-eqz v0, :L2
  .line 6
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconDelegate()Lcom/google/android/material/textfield/e;
    move-result-object p1
    invoke-virtual { p1 }, Lcom/google/android/material/textfield/e;->a()V
  .line 7
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->m()V
    return-void
  :L2
  .line 8
    new-instance v0, Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "The current box background mode "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:I
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v2, " is not supported by the end icon mode "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Lcom/google/android/material/internal/CheckableImageButton;
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->r0:Landroid/view/View$OnLongClickListener;
    invoke-static { v0, p1, v1 }, Lcom/google/android/material/textfield/TextInputLayout;->c0(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    return-void
.end method

.method public setEndIconOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
  .registers 3
  .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->r0:Landroid/view/View$OnLongClickListener;
  .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Lcom/google/android/material/internal/CheckableImageButton;
    invoke-static { v0, p1 }, Lcom/google/android/material/textfield/TextInputLayout;->d0(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V
    return-void
.end method

.method public setEndIconTintList(Landroid/content/res/ColorStateList;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->k0:Landroid/content/res/ColorStateList;
    if-eq v0, p1, :L0
  .line 2
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->k0:Landroid/content/res/ColorStateList;
    const/4 p1, 1
  .line 3
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->l0:Z
  .line 4
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->m()V
  :L0
    return-void
.end method

.method public setEndIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m0:Landroid/graphics/PorterDuff$Mode;
    if-eq v0, p1, :L0
  .line 2
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m0:Landroid/graphics/PorterDuff$Mode;
    const/4 p1, 1
  .line 3
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n0:Z
  .line 4
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->m()V
  :L0
    return-void
.end method

.method public setEndIconVisible(Z)V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->K()Z
    move-result v0
    if-eq v0, p1, :L2
  .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Lcom/google/android/material/internal/CheckableImageButton;
    if-eqz p1, :L0
    const/4 p1, 0
    goto :L1
  :L0
    const/16 p1, 8
  :L1
    invoke-virtual { v0, p1 }, Landroid/widget/ImageButton;->setVisibility(I)V
  .line 3
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->D0()V
  .line 4
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->r0()Z
  :L2
    return-void
.end method

.method public setError(Ljava/lang/CharSequence;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;
    invoke-virtual { v0 }, Lcom/google/android/material/textfield/f;->x()Z
    move-result v0
    if-nez v0, :L1
  .line 2
    invoke-static { p1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    if-eqz v0, :L0
    return-void
  :L0
    const/4 v0, 1
  .line 3
    invoke-virtual { p0, v0 }, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V
  :L1
  .line 4
    invoke-static { p1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    if-nez v0, :L2
  .line 5
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;
    invoke-virtual { v0, p1 }, Lcom/google/android/material/textfield/f;->M(Ljava/lang/CharSequence;)V
    goto :L3
  :L2
  .line 6
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;
    invoke-virtual { p1 }, Lcom/google/android/material/textfield/f;->t()V
  :L3
    return-void
.end method

.method public setErrorContentDescription(Ljava/lang/CharSequence;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;
    invoke-virtual { v0, p1 }, Lcom/google/android/material/textfield/f;->B(Ljava/lang/CharSequence;)V
    return-void
.end method

.method public setErrorEnabled(Z)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;
    invoke-virtual { v0, p1 }, Lcom/google/android/material/textfield/f;->C(Z)V
    return-void
.end method

.method public setErrorIconDrawable(I)V
  .registers 3
    if-eqz p1, :L0
  .line 1
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-static { v0, p1 }, Lc/a/k/a/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    move-result-object p1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    invoke-virtual { p0, p1 }, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V
  .line 2
    invoke-virtual { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->W()V
    return-void
.end method

.method public setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V
  .registers 3
  .line 3
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t0:Lcom/google/android/material/internal/CheckableImageButton;
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/l;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    if-eqz p1, :L0
  .line 4
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;
    invoke-virtual { p1 }, Lcom/google/android/material/textfield/f;->x()Z
    move-result p1
    if-eqz p1, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    invoke-direct { p0, p1 }, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconVisible(Z)V
    return-void
.end method

.method public setErrorIconOnClickListener(Landroid/view/View$OnClickListener;)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t0:Lcom/google/android/material/internal/CheckableImageButton;
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->s0:Landroid/view/View$OnLongClickListener;
    invoke-static { v0, p1, v1 }, Lcom/google/android/material/textfield/TextInputLayout;->c0(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    return-void
.end method

.method public setErrorIconOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
  .registers 3
  .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->s0:Landroid/view/View$OnLongClickListener;
  .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t0:Lcom/google/android/material/internal/CheckableImageButton;
    invoke-static { v0, p1 }, Lcom/google/android/material/textfield/TextInputLayout;->d0(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V
    return-void
.end method

.method public setErrorIconTintList(Landroid/content/res/ColorStateList;)V
  .registers 3
  .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Landroid/content/res/ColorStateList;
  .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t0:Lcom/google/android/material/internal/CheckableImageButton;
    invoke-virtual { v0 }, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    if-eqz v0, :L0
  .line 3
    invoke-static { v0 }, Landroidx/core/graphics/drawable/a;->r(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
    move-result-object v0
  .line 4
    invoke-static { v0, p1 }, Landroidx/core/graphics/drawable/a;->o(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
  :L0
  .line 5
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->t0:Lcom/google/android/material/internal/CheckableImageButton;
    invoke-virtual { p1 }, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;
    move-result-object p1
    if-eq p1, v0, :L1
  .line 6
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->t0:Lcom/google/android/material/internal/CheckableImageButton;
    invoke-virtual { p1, v0 }, Landroidx/appcompat/widget/l;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
  :L1
    return-void
.end method

.method public setErrorIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t0:Lcom/google/android/material/internal/CheckableImageButton;
    invoke-virtual { v0 }, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    if-eqz v0, :L0
  .line 2
    invoke-static { v0 }, Landroidx/core/graphics/drawable/a;->r(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
    move-result-object v0
  .line 3
    invoke-static { v0, p1 }, Landroidx/core/graphics/drawable/a;->p(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
  :L0
  .line 4
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->t0:Lcom/google/android/material/internal/CheckableImageButton;
    invoke-virtual { p1 }, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;
    move-result-object p1
    if-eq p1, v0, :L1
  .line 5
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->t0:Lcom/google/android/material/internal/CheckableImageButton;
    invoke-virtual { p1, v0 }, Landroidx/appcompat/widget/l;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
  :L1
    return-void
.end method

.method public setErrorTextAppearance(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;
    invoke-virtual { v0, p1 }, Lcom/google/android/material/textfield/f;->D(I)V
    return-void
.end method

.method public setErrorTextColor(Landroid/content/res/ColorStateList;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;
    invoke-virtual { v0, p1 }, Lcom/google/android/material/textfield/f;->E(Landroid/content/res/ColorStateList;)V
    return-void
.end method

.method public setExpandedHintEnabled(Z)V
  .registers 3
  .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->I0:Z
    if-eq v0, p1, :L0
  .line 2
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->I0:Z
    const/4 p1, 0
  .line 3
    invoke-virtual { p0, p1 }, Lcom/google/android/material/textfield/TextInputLayout;->v0(Z)V
  :L0
    return-void
.end method

.method public setHelperText(Ljava/lang/CharSequence;)V
  .registers 3
  .line 1
    invoke-static { p1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    invoke-virtual { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->M()Z
    move-result p1
    if-eqz p1, :L2
    const/4 p1, 0
  .line 3
    invoke-virtual { p0, p1 }, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextEnabled(Z)V
    goto :L2
  :L0
  .line 4
    invoke-virtual { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->M()Z
    move-result v0
    if-nez v0, :L1
    const/4 v0, 1
  .line 5
    invoke-virtual { p0, v0 }, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextEnabled(Z)V
  :L1
  .line 6
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;
    invoke-virtual { v0, p1 }, Lcom/google/android/material/textfield/f;->N(Ljava/lang/CharSequence;)V
  :L2
    return-void
.end method

.method public setHelperTextColor(Landroid/content/res/ColorStateList;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;
    invoke-virtual { v0, p1 }, Lcom/google/android/material/textfield/f;->H(Landroid/content/res/ColorStateList;)V
    return-void
.end method

.method public setHelperTextEnabled(Z)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;
    invoke-virtual { v0, p1 }, Lcom/google/android/material/textfield/f;->G(Z)V
    return-void
.end method

.method public setHelperTextTextAppearance(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;
    invoke-virtual { v0, p1 }, Lcom/google/android/material/textfield/f;->F(I)V
    return-void
.end method

.method public setHint(I)V
  .registers 3
    if-eqz p1, :L0
  .line 4
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    invoke-virtual { v0, p1 }, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    move-result-object p1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    invoke-virtual { p0, p1 }, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V
    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
  .registers 3
  .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->B:Z
    if-eqz v0, :L0
  .line 2
    invoke-direct { p0, p1 }, Lcom/google/android/material/textfield/TextInputLayout;->setHintInternal(Ljava/lang/CharSequence;)V
    const/16 p1, 2048
  .line 3
    invoke-virtual { p0, p1 }, Landroid/widget/LinearLayout;->sendAccessibilityEvent(I)V
  :L0
    return-void
.end method

.method public setHintAnimationEnabled(Z)V
  .registers 2
  .line 1
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->J0:Z
    return-void
.end method

.method public setHintEnabled(Z)V
  .registers 4
  .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->B:Z
    if-eq p1, v0, :L5
  .line 2
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->B:Z
    const/4 v0, 0
    if-nez p1, :L1
    const/4 p1, 0
  .line 3
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Z
  .line 4
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:Ljava/lang/CharSequence;
    invoke-static { p1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result p1
    if-nez p1, :L0
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    invoke-virtual { p1 }, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;
    move-result-object p1
    invoke-static { p1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result p1
    if-eqz p1, :L0
  .line 5
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:Ljava/lang/CharSequence;
    invoke-virtual { p1, v1 }, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V
  :L0
  .line 6
    invoke-direct { p0, v0 }, Lcom/google/android/material/textfield/TextInputLayout;->setHintInternal(Ljava/lang/CharSequence;)V
    goto :L4
  :L1
  .line 7
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    invoke-virtual { p1 }, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;
    move-result-object p1
  .line 8
    invoke-static { p1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v1
    if-nez v1, :L3
  .line 9
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:Ljava/lang/CharSequence;
    invoke-static { v1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v1
    if-eqz v1, :L2
  .line 10
    invoke-virtual { p0, p1 }, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V
  :L2
  .line 11
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    invoke-virtual { p1, v0 }, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V
  :L3
    const/4 p1, 1
  .line 12
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Z
  :L4
  .line 13
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    if-eqz p1, :L5
  .line 14
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->u0()V
  :L5
    return-void
.end method

.method public setHintTextAppearance(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H0:Lcom/google/android/material/internal/a;
    invoke-virtual { v0, p1 }, Lcom/google/android/material/internal/a;->N(I)V
  .line 2
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->H0:Lcom/google/android/material/internal/a;
    invoke-virtual { p1 }, Lcom/google/android/material/internal/a;->q()Landroid/content/res/ColorStateList;
    move-result-object p1
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->w0:Landroid/content/res/ColorStateList;
  .line 3
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    if-eqz p1, :L0
    const/4 p1, 0
  .line 4
    invoke-virtual { p0, p1 }, Lcom/google/android/material/textfield/TextInputLayout;->v0(Z)V
  .line 5
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->u0()V
  :L0
    return-void
.end method

.method public setHintTextColor(Landroid/content/res/ColorStateList;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->w0:Landroid/content/res/ColorStateList;
    if-eq v0, p1, :L1
  .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Landroid/content/res/ColorStateList;
    if-nez v0, :L0
  .line 3
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H0:Lcom/google/android/material/internal/a;
    invoke-virtual { v0, p1 }, Lcom/google/android/material/internal/a;->P(Landroid/content/res/ColorStateList;)V
  :L0
  .line 4
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->w0:Landroid/content/res/ColorStateList;
  .line 5
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    if-eqz p1, :L1
    const/4 p1, 0
  .line 6
    invoke-virtual { p0, p1 }, Lcom/google/android/material/textfield/TextInputLayout;->v0(Z)V
  :L1
    return-void
.end method

.method public setMaxWidth(I)V
  .registers 4
  .line 1
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:I
  .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    if-eqz v0, :L0
    const/4 v1, -1
    if-eq p1, v1, :L0
  .line 3
    invoke-virtual { v0, p1 }, Landroid/widget/EditText;->setMaxWidth(I)V
  :L0
    return-void
.end method

.method public setMaxWidthResource(I)V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    invoke-virtual { v0, p1 }, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    move-result p1
    invoke-virtual { p0, p1 }, Lcom/google/android/material/textfield/TextInputLayout;->setMaxWidth(I)V
    return-void
.end method

.method public setMinWidth(I)V
  .registers 4
  .line 1
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:I
  .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    if-eqz v0, :L0
    const/4 v1, -1
    if-eq p1, v1, :L0
  .line 3
    invoke-virtual { v0, p1 }, Landroid/widget/EditText;->setMinWidth(I)V
  :L0
    return-void
.end method

.method public setMinWidthResource(I)V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    invoke-virtual { v0, p1 }, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    move-result p1
    invoke-virtual { p0, p1 }, Lcom/google/android/material/textfield/TextInputLayout;->setMinWidth(I)V
    return-void
.end method

.method public setPasswordVisibilityToggleContentDescription(I)V
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 3
    if-eqz p1, :L0
  .line 1
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    invoke-virtual { v0, p1 }, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    move-result-object p1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
  .line 2
    invoke-virtual { p0, p1 }, Lcom/google/android/material/textfield/TextInputLayout;->setPasswordVisibilityToggleContentDescription(Ljava/lang/CharSequence;)V
    return-void
.end method

.method public setPasswordVisibilityToggleContentDescription(Ljava/lang/CharSequence;)V
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 3
  .line 3
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Lcom/google/android/material/internal/CheckableImageButton;
    invoke-virtual { v0, p1 }, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V
    return-void
.end method

.method public setPasswordVisibilityToggleDrawable(I)V
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 3
    if-eqz p1, :L0
  .line 1
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-static { v0, p1 }, Lc/a/k/a/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    move-result-object p1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
  .line 2
    invoke-virtual { p0, p1 }, Lcom/google/android/material/textfield/TextInputLayout;->setPasswordVisibilityToggleDrawable(Landroid/graphics/drawable/Drawable;)V
    return-void
.end method

.method public setPasswordVisibilityToggleDrawable(Landroid/graphics/drawable/Drawable;)V
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 3
  .line 3
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Lcom/google/android/material/internal/CheckableImageButton;
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/l;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    return-void
.end method

.method public setPasswordVisibilityToggleEnabled(Z)V
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 4
    if-eqz p1, :L0
  .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g0:I
    const/4 v1, 1
    if-eq v0, v1, :L0
  .line 2
    invoke-virtual { p0, v1 }, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconMode(I)V
    goto :L1
  :L0
    if-nez p1, :L1
    const/4 p1, 0
  .line 3
    invoke-virtual { p0, p1 }, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconMode(I)V
  :L1
    return-void
.end method

.method public setPasswordVisibilityToggleTintList(Landroid/content/res/ColorStateList;)V
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->k0:Landroid/content/res/ColorStateList;
    const/4 p1, 1
  .line 2
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->l0:Z
  .line 3
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->m()V
    return-void
.end method

.method public setPasswordVisibilityToggleTintMode(Landroid/graphics/PorterDuff$Mode;)V
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m0:Landroid/graphics/PorterDuff$Mode;
    const/4 p1, 1
  .line 2
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n0:Z
  .line 3
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->m()V
    return-void
.end method

.method public setPlaceholderText(Ljava/lang/CharSequence;)V
  .registers 3
  .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Z
    if-eqz v0, :L0
    invoke-static { p1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    if-eqz v0, :L0
    const/4 p1, 0
  .line 2
    invoke-direct { p0, p1 }, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderTextEnabled(Z)V
    goto :L2
  :L0
  .line 3
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Z
    if-nez v0, :L1
    const/4 v0, 1
  .line 4
    invoke-direct { p0, v0 }, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderTextEnabled(Z)V
  :L1
  .line 5
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->q:Ljava/lang/CharSequence;
  :L2
  .line 6
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->y0()V
    return-void
.end method

.method public setPlaceholderTextAppearance(I)V
  .registers 3
  .line 1
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->u:I
  .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Landroid/widget/TextView;
    if-eqz v0, :L0
  .line 3
    invoke-static { v0, p1 }, Landroidx/core/widget/i;->n(Landroid/widget/TextView;I)V
  :L0
    return-void
.end method

.method public setPlaceholderTextColor(Landroid/content/res/ColorStateList;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Landroid/content/res/ColorStateList;
    if-eq v0, p1, :L0
  .line 2
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Landroid/content/res/ColorStateList;
  .line 3
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Landroid/widget/TextView;
    if-eqz v0, :L0
    if-eqz p1, :L0
  .line 4
    invoke-virtual { v0, p1 }, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V
  :L0
    return-void
.end method

.method public setPrefixText(Ljava/lang/CharSequence;)V
  .registers 3
  .line 1
    invoke-static { p1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    if-eqz v0, :L0
    const/4 v0, 0
    goto :L1
  :L0
    move-object v0, p1
  :L1
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->x:Ljava/lang/CharSequence;
  .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->y:Landroid/widget/TextView;
    invoke-virtual { v0, p1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 3
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->B0()V
    return-void
.end method

.method public setPrefixTextAppearance(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->y:Landroid/widget/TextView;
    invoke-static { v0, p1 }, Landroidx/core/widget/i;->n(Landroid/widget/TextView;I)V
    return-void
.end method

.method public setPrefixTextColor(Landroid/content/res/ColorStateList;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->y:Landroid/widget/TextView;
    invoke-virtual { v0, p1 }, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V
    return-void
.end method

.method public setStartIconCheckable(Z)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:Lcom/google/android/material/internal/CheckableImageButton;
    invoke-virtual { v0, p1 }, Lcom/google/android/material/internal/CheckableImageButton;->setCheckable(Z)V
    return-void
.end method

.method public setStartIconContentDescription(I)V
  .registers 3
    if-eqz p1, :L0
  .line 1
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    invoke-virtual { v0, p1 }, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    move-result-object p1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    invoke-virtual { p0, p1 }, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconContentDescription(Ljava/lang/CharSequence;)V
    return-void
.end method

.method public setStartIconContentDescription(Ljava/lang/CharSequence;)V
  .registers 3
  .line 2
    invoke-virtual { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->getStartIconContentDescription()Ljava/lang/CharSequence;
    move-result-object v0
    if-eq v0, p1, :L0
  .line 3
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:Lcom/google/android/material/internal/CheckableImageButton;
    invoke-virtual { v0, p1 }, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V
  :L0
    return-void
.end method

.method public setStartIconDrawable(I)V
  .registers 3
    if-eqz p1, :L0
  .line 1
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-static { v0, p1 }, Lc/a/k/a/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    move-result-object p1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    invoke-virtual { p0, p1 }, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconDrawable(Landroid/graphics/drawable/Drawable;)V
    return-void
.end method

.method public setStartIconDrawable(Landroid/graphics/drawable/Drawable;)V
  .registers 3
  .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:Lcom/google/android/material/internal/CheckableImageButton;
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/l;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    if-eqz p1, :L0
    const/4 p1, 1
  .line 3
    invoke-virtual { p0, p1 }, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconVisible(Z)V
  .line 4
    invoke-virtual { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->Y()V
    goto :L1
  :L0
    const/4 p1, 0
  .line 5
    invoke-virtual { p0, p1 }, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconVisible(Z)V
    const/4 p1, 0
  .line 6
    invoke-virtual { p0, p1 }, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconOnClickListener(Landroid/view/View$OnClickListener;)V
  .line 7
    invoke-virtual { p0, p1 }, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
  .line 8
    invoke-virtual { p0, p1 }, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconContentDescription(Ljava/lang/CharSequence;)V
  :L1
    return-void
.end method

.method public setStartIconOnClickListener(Landroid/view/View$OnClickListener;)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:Lcom/google/android/material/internal/CheckableImageButton;
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->e0:Landroid/view/View$OnLongClickListener;
    invoke-static { v0, p1, v1 }, Lcom/google/android/material/textfield/TextInputLayout;->c0(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    return-void
.end method

.method public setStartIconOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
  .registers 3
  .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->e0:Landroid/view/View$OnLongClickListener;
  .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:Lcom/google/android/material/internal/CheckableImageButton;
    invoke-static { v0, p1 }, Lcom/google/android/material/textfield/TextInputLayout;->d0(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V
    return-void
.end method

.method public setStartIconTintList(Landroid/content/res/ColorStateList;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->V:Landroid/content/res/ColorStateList;
    if-eq v0, p1, :L0
  .line 2
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->V:Landroid/content/res/ColorStateList;
    const/4 p1, 1
  .line 3
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->W:Z
  .line 4
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->o()V
  :L0
    return-void
.end method

.method public setStartIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a0:Landroid/graphics/PorterDuff$Mode;
    if-eq v0, p1, :L0
  .line 2
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a0:Landroid/graphics/PorterDuff$Mode;
    const/4 p1, 1
  .line 3
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->b0:Z
  .line 4
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->o()V
  :L0
    return-void
.end method

.method public setStartIconVisible(Z)V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->Q()Z
    move-result v0
    if-eq v0, p1, :L2
  .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:Lcom/google/android/material/internal/CheckableImageButton;
    if-eqz p1, :L0
    const/4 p1, 0
    goto :L1
  :L0
    const/16 p1, 8
  :L1
    invoke-virtual { v0, p1 }, Landroid/widget/ImageButton;->setVisibility(I)V
  .line 3
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->A0()V
  .line 4
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->r0()Z
  :L2
    return-void
.end method

.method public setSuffixText(Ljava/lang/CharSequence;)V
  .registers 3
  .line 1
    invoke-static { p1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    if-eqz v0, :L0
    const/4 v0, 0
    goto :L1
  :L0
    move-object v0, p1
  :L1
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->z:Ljava/lang/CharSequence;
  .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Landroid/widget/TextView;
    invoke-virtual { v0, p1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 3
    invoke-direct { p0 }, Lcom/google/android/material/textfield/TextInputLayout;->E0()V
    return-void
.end method

.method public setSuffixTextAppearance(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Landroid/widget/TextView;
    invoke-static { v0, p1 }, Landroidx/core/widget/i;->n(Landroid/widget/TextView;I)V
    return-void
.end method

.method public setSuffixTextColor(Landroid/content/res/ColorStateList;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Landroid/widget/TextView;
    invoke-virtual { v0, p1 }, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V
    return-void
.end method

.method public setTextInputAccessibilityDelegate(Lcom/google/android/material/textfield/TextInputLayout$e;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;
    if-eqz v0, :L0
  .line 2
    invoke-static { v0, p1 }, Landroidx/core/view/v;->o0(Landroid/view/View;Landroidx/core/view/a;)V
  :L0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:Landroid/graphics/Typeface;
    if-eq p1, v0, :L0
  .line 2
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:Landroid/graphics/Typeface;
  .line 3
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H0:Lcom/google/android/material/internal/a;
    invoke-virtual { v0, p1 }, Lcom/google/android/material/internal/a;->g0(Landroid/graphics/Typeface;)V
  .line 4
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lcom/google/android/material/textfield/f;
    invoke-virtual { v0, p1 }, Lcom/google/android/material/textfield/f;->J(Landroid/graphics/Typeface;)V
  .line 5
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/TextView;
    if-eqz v0, :L0
  .line 6
    invoke-virtual { v0, p1 }, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
  :L0
    return-void
.end method

.method v0(Z)V
  .registers 3
    const/4 v0, 0
  .line 1
    invoke-direct { p0, p1, v0 }, Lcom/google/android/material/textfield/TextInputLayout;->w0(ZZ)V
    return-void
.end method
