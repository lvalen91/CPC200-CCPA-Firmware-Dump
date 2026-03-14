.class Lcom/google/android/material/textfield/d;
.super Lcom/google/android/material/textfield/e;
.source "SourceFile"

.field private final static q:Z

.field private final d:Landroid/text/TextWatcher;

.field private final e:Landroid/view/View$OnFocusChangeListener;

.field private final f:Lcom/google/android/material/textfield/TextInputLayout$e;

.field private final g:Lcom/google/android/material/textfield/TextInputLayout$f;

.field private final h:Lcom/google/android/material/textfield/TextInputLayout$g;
  .annotation build Landroid/annotation/SuppressLint;
    value = {
      "ClickableViewAccessibility"
    }
  .end annotation
.end field

.field private i:Z

.field private j:Z

.field private k:J

.field private l:Landroid/graphics/drawable/StateListDrawable;

.field private m:Ld/c/a/a/a0/g;

.field private n:Landroid/view/accessibility/AccessibilityManager;

.field private o:Landroid/animation/ValueAnimator;

.field private p:Landroid/animation/ValueAnimator;

.method static constructor <clinit>()V
  .registers 2
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    sput-boolean v0, Lcom/google/android/material/textfield/d;->q:Z
    return-void
.end method

.method constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
  .registers 4
  .line 1
    invoke-direct { p0, p1 }, Lcom/google/android/material/textfield/e;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V
  .line 2
    new-instance p1, Lcom/google/android/material/textfield/d$a;
    invoke-direct { p1, p0 }, Lcom/google/android/material/textfield/d$a;-><init>(Lcom/google/android/material/textfield/d;)V
    iput-object p1, p0, Lcom/google/android/material/textfield/d;->d:Landroid/text/TextWatcher;
  .line 3
    new-instance p1, Lcom/google/android/material/textfield/d$c;
    invoke-direct { p1, p0 }, Lcom/google/android/material/textfield/d$c;-><init>(Lcom/google/android/material/textfield/d;)V
    iput-object p1, p0, Lcom/google/android/material/textfield/d;->e:Landroid/view/View$OnFocusChangeListener;
  .line 4
    new-instance p1, Lcom/google/android/material/textfield/d$d;
    iget-object v0, p0, Lcom/google/android/material/textfield/e;->a:Lcom/google/android/material/textfield/TextInputLayout;
    invoke-direct { p1, p0, v0 }, Lcom/google/android/material/textfield/d$d;-><init>(Lcom/google/android/material/textfield/d;Lcom/google/android/material/textfield/TextInputLayout;)V
    iput-object p1, p0, Lcom/google/android/material/textfield/d;->f:Lcom/google/android/material/textfield/TextInputLayout$e;
  .line 5
    new-instance p1, Lcom/google/android/material/textfield/d$e;
    invoke-direct { p1, p0 }, Lcom/google/android/material/textfield/d$e;-><init>(Lcom/google/android/material/textfield/d;)V
    iput-object p1, p0, Lcom/google/android/material/textfield/d;->g:Lcom/google/android/material/textfield/TextInputLayout$f;
  .line 6
    new-instance p1, Lcom/google/android/material/textfield/d$f;
    invoke-direct { p1, p0 }, Lcom/google/android/material/textfield/d$f;-><init>(Lcom/google/android/material/textfield/d;)V
    iput-object p1, p0, Lcom/google/android/material/textfield/d;->h:Lcom/google/android/material/textfield/TextInputLayout$g;
    const/4 p1, 0
  .line 7
    iput-boolean p1, p0, Lcom/google/android/material/textfield/d;->i:Z
  .line 8
    iput-boolean p1, p0, Lcom/google/android/material/textfield/d;->j:Z
    const-wide v0, 9223372036854775807L
  .line 9
    iput-wide v0, p0, Lcom/google/android/material/textfield/d;->k:J
    return-void
.end method

.method private A(FFFI)Ld/c/a/a/a0/g;
  .registers 6
  .line 1
    invoke-static { }, Ld/c/a/a/a0/k;->a()Ld/c/a/a/a0/k$b;
    move-result-object v0
  .line 2
    invoke-virtual { v0, p1 }, Ld/c/a/a/a0/k$b;->A(F)Ld/c/a/a/a0/k$b;
  .line 3
    invoke-virtual { v0, p1 }, Ld/c/a/a/a0/k$b;->E(F)Ld/c/a/a/a0/k$b;
  .line 4
    invoke-virtual { v0, p2 }, Ld/c/a/a/a0/k$b;->s(F)Ld/c/a/a/a0/k$b;
  .line 5
    invoke-virtual { v0, p2 }, Ld/c/a/a/a0/k$b;->w(F)Ld/c/a/a/a0/k$b;
  .line 6
    invoke-virtual { v0 }, Ld/c/a/a/a0/k$b;->m()Ld/c/a/a/a0/k;
    move-result-object p1
  .line 7
    iget-object p2, p0, Lcom/google/android/material/textfield/e;->b:Landroid/content/Context;
  .line 8
    invoke-static { p2, p3 }, Ld/c/a/a/a0/g;->m(Landroid/content/Context;F)Ld/c/a/a/a0/g;
    move-result-object p2
  .line 9
    invoke-virtual { p2, p1 }, Ld/c/a/a/a0/g;->setShapeAppearanceModel(Ld/c/a/a/a0/k;)V
    const/4 p1, 0
  .line 10
    invoke-virtual { p2, p1, p4, p1, p4 }, Ld/c/a/a/a0/g;->Y(IIII)V
    return-object p2
.end method

.method private B()V
  .registers 4
    const/4 v0, 2
    new-array v1, v0, [F
  .line 1
    fill-array-data v1, :L0
    const/16 v2, 67
    invoke-direct { p0, v2, v1 }, Lcom/google/android/material/textfield/d;->z(I[F)Landroid/animation/ValueAnimator;
    move-result-object v1
    iput-object v1, p0, Lcom/google/android/material/textfield/d;->p:Landroid/animation/ValueAnimator;
    new-array v0, v0, [F
  .line 2
    fill-array-data v0, :L1
    const/16 v1, 50
    invoke-direct { p0, v1, v0 }, Lcom/google/android/material/textfield/d;->z(I[F)Landroid/animation/ValueAnimator;
    move-result-object v0
    iput-object v0, p0, Lcom/google/android/material/textfield/d;->o:Landroid/animation/ValueAnimator;
  .line 3
    new-instance v1, Lcom/google/android/material/textfield/d$j;
    invoke-direct { v1, p0 }, Lcom/google/android/material/textfield/d$j;-><init>(Lcom/google/android/material/textfield/d;)V
    invoke-virtual { v0, v1 }, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V
    return-void
  :L0
  .array-data 4
    0t 0t 0t 0t
    0t 0t -128t 63t
  .end array-data
  :L1
  .array-data 4
    0t 0t -128t 63t
    0t 0t 0t 0t
  .end array-data
.end method

.method private C()Z
  .registers 6
  .line 1
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v0
    iget-wide v2, p0, Lcom/google/android/material/textfield/d;->k:J
    sub-long/2addr v0, v2
    const-wide/16 v2, 0
    cmp-long v4, v0, v2
    if-ltz v4, :L1
    const-wide/16 v2, 300
    cmp-long v4, v0, v2
    if-lez v4, :L0
    goto :L1
  :L0
    const/4 v0, 0
    goto :L2
  :L1
    const/4 v0, 1
  :L2
    return v0
.end method

.method private static D(Landroid/widget/EditText;)Z
  .registers 1
  .line 1
    invoke-virtual { p0 }, Landroid/widget/EditText;->getKeyListener()Landroid/text/method/KeyListener;
    move-result-object p0
    if-eqz p0, :L0
    const/4 p0, 1
    goto :L1
  :L0
    const/4 p0, 0
  :L1
    return p0
.end method

.method private E(Z)V
  .registers 3
  .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/d;->j:Z
    if-eq v0, p1, :L0
  .line 2
    iput-boolean p1, p0, Lcom/google/android/material/textfield/d;->j:Z
  .line 3
    iget-object p1, p0, Lcom/google/android/material/textfield/d;->p:Landroid/animation/ValueAnimator;
    invoke-virtual { p1 }, Landroid/animation/ValueAnimator;->cancel()V
  .line 4
    iget-object p1, p0, Lcom/google/android/material/textfield/d;->o:Landroid/animation/ValueAnimator;
    invoke-virtual { p1 }, Landroid/animation/ValueAnimator;->start()V
  :L0
    return-void
.end method

.method private F(Landroid/widget/AutoCompleteTextView;)V
  .registers 4
  .line 1
    sget-boolean v0, Lcom/google/android/material/textfield/d;->q:Z
    if-eqz v0, :L1
  .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/e;->a:Lcom/google/android/material/textfield/TextInputLayout;
    invoke-virtual { v0 }, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundMode()I
    move-result v0
    const/4 v1, 2
    if-ne v0, v1, :L0
  .line 3
    iget-object v0, p0, Lcom/google/android/material/textfield/d;->m:Ld/c/a/a/a0/g;
    invoke-virtual { p1, v0 }, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    goto :L1
  :L0
    const/4 v1, 1
    if-ne v0, v1, :L1
  .line 4
    iget-object v0, p0, Lcom/google/android/material/textfield/d;->l:Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual { p1, v0 }, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
  :L1
    return-void
.end method

.method private G(Landroid/widget/AutoCompleteTextView;)V
  .annotation build Landroid/annotation/SuppressLint;
    value = {
      "ClickableViewAccessibility"
    }
  .end annotation
  .registers 3
  .line 1
    new-instance v0, Lcom/google/android/material/textfield/d$h;
    invoke-direct { v0, p0, p1 }, Lcom/google/android/material/textfield/d$h;-><init>(Lcom/google/android/material/textfield/d;Landroid/widget/AutoCompleteTextView;)V
    invoke-virtual { p1, v0 }, Landroid/widget/AutoCompleteTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
  .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/d;->e:Landroid/view/View$OnFocusChangeListener;
    invoke-virtual { p1, v0 }, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
  .line 3
    sget-boolean v0, Lcom/google/android/material/textfield/d;->q:Z
    if-eqz v0, :L0
  .line 4
    new-instance v0, Lcom/google/android/material/textfield/d$i;
    invoke-direct { v0, p0 }, Lcom/google/android/material/textfield/d$i;-><init>(Lcom/google/android/material/textfield/d;)V
    invoke-virtual { p1, v0 }, Landroid/widget/AutoCompleteTextView;->setOnDismissListener(Landroid/widget/AutoCompleteTextView$OnDismissListener;)V
  :L0
    return-void
.end method

.method private H(Landroid/widget/AutoCompleteTextView;)V
  .registers 4
    if-nez p1, :L0
    return-void
  :L0
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/textfield/d;->C()Z
    move-result v0
    const/4 v1, 0
    if-eqz v0, :L1
  .line 2
    iput-boolean v1, p0, Lcom/google/android/material/textfield/d;->i:Z
  :L1
  .line 3
    iget-boolean v0, p0, Lcom/google/android/material/textfield/d;->i:Z
    if-nez v0, :L5
  .line 4
    sget-boolean v0, Lcom/google/android/material/textfield/d;->q:Z
    if-eqz v0, :L2
  .line 5
    iget-boolean v0, p0, Lcom/google/android/material/textfield/d;->j:Z
    xor-int/lit8 v0, v0, 1
    invoke-direct { p0, v0 }, Lcom/google/android/material/textfield/d;->E(Z)V
    goto :L3
  :L2
  .line 6
    iget-boolean v0, p0, Lcom/google/android/material/textfield/d;->j:Z
    xor-int/lit8 v0, v0, 1
    iput-boolean v0, p0, Lcom/google/android/material/textfield/d;->j:Z
  .line 7
    iget-object v0, p0, Lcom/google/android/material/textfield/e;->c:Lcom/google/android/material/internal/CheckableImageButton;
    invoke-virtual { v0 }, Lcom/google/android/material/internal/CheckableImageButton;->toggle()V
  :L3
  .line 8
    iget-boolean v0, p0, Lcom/google/android/material/textfield/d;->j:Z
    if-eqz v0, :L4
  .line 9
    invoke-virtual { p1 }, Landroid/widget/AutoCompleteTextView;->requestFocus()Z
  .line 10
    invoke-virtual { p1 }, Landroid/widget/AutoCompleteTextView;->showDropDown()V
    goto :L6
  :L4
  .line 11
    invoke-virtual { p1 }, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V
    goto :L6
  :L5
  .line 12
    iput-boolean v1, p0, Lcom/google/android/material/textfield/d;->i:Z
  :L6
    return-void
.end method

.method static synthetic e(Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;
  .registers 1
  .line 1
    invoke-static { p0 }, Lcom/google/android/material/textfield/d;->y(Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;
    move-result-object p0
    return-object p0
.end method

.method static synthetic f(Lcom/google/android/material/textfield/d;)Landroid/view/accessibility/AccessibilityManager;
  .registers 1
  .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/d;->n:Landroid/view/accessibility/AccessibilityManager;
    return-object p0
.end method

.method static synthetic g(Lcom/google/android/material/textfield/d;)Lcom/google/android/material/textfield/TextInputLayout$e;
  .registers 1
  .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/d;->f:Lcom/google/android/material/textfield/TextInputLayout$e;
    return-object p0
.end method

.method static synthetic h(Lcom/google/android/material/textfield/d;)Landroid/view/View$OnFocusChangeListener;
  .registers 1
  .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/d;->e:Landroid/view/View$OnFocusChangeListener;
    return-object p0
.end method

.method static synthetic i()Z
  .registers 2
  .line 1
    sget-boolean v0, Lcom/google/android/material/textfield/d;->q:Z
    return v0
.end method

.method static synthetic j(Lcom/google/android/material/textfield/d;)Z
  .registers 1
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/textfield/d;->C()Z
    move-result p0
    return p0
.end method

.method static synthetic k(Lcom/google/android/material/textfield/d;J)J
  .registers 3
  .line 1
    iput-wide p1, p0, Lcom/google/android/material/textfield/d;->k:J
    return-wide p1
.end method

.method static synthetic l(Lcom/google/android/material/textfield/d;)Z
  .registers 1
  .line 1
    iget-boolean p0, p0, Lcom/google/android/material/textfield/d;->j:Z
    return p0
.end method

.method static synthetic m(Lcom/google/android/material/textfield/d;)Landroid/animation/ValueAnimator;
  .registers 1
  .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/d;->p:Landroid/animation/ValueAnimator;
    return-object p0
.end method

.method static synthetic n(Landroid/widget/EditText;)Z
  .registers 1
  .line 1
    invoke-static { p0 }, Lcom/google/android/material/textfield/d;->D(Landroid/widget/EditText;)Z
    move-result p0
    return p0
.end method

.method static synthetic o(Lcom/google/android/material/textfield/d;Z)V
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Lcom/google/android/material/textfield/d;->E(Z)V
    return-void
.end method

.method static synthetic p(Lcom/google/android/material/textfield/d;Z)Z
  .registers 2
  .line 1
    iput-boolean p1, p0, Lcom/google/android/material/textfield/d;->i:Z
    return p1
.end method

.method static synthetic q(Lcom/google/android/material/textfield/d;Landroid/widget/AutoCompleteTextView;)V
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Lcom/google/android/material/textfield/d;->H(Landroid/widget/AutoCompleteTextView;)V
    return-void
.end method

.method static synthetic r(Lcom/google/android/material/textfield/d;Landroid/widget/AutoCompleteTextView;)V
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Lcom/google/android/material/textfield/d;->F(Landroid/widget/AutoCompleteTextView;)V
    return-void
.end method

.method static synthetic s(Lcom/google/android/material/textfield/d;Landroid/widget/AutoCompleteTextView;)V
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Lcom/google/android/material/textfield/d;->v(Landroid/widget/AutoCompleteTextView;)V
    return-void
.end method

.method static synthetic t(Lcom/google/android/material/textfield/d;Landroid/widget/AutoCompleteTextView;)V
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Lcom/google/android/material/textfield/d;->G(Landroid/widget/AutoCompleteTextView;)V
    return-void
.end method

.method static synthetic u(Lcom/google/android/material/textfield/d;)Landroid/text/TextWatcher;
  .registers 1
  .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/d;->d:Landroid/text/TextWatcher;
    return-object p0
.end method

.method private v(Landroid/widget/AutoCompleteTextView;)V
  .registers 11
  .line 1
    invoke-static { p1 }, Lcom/google/android/material/textfield/d;->D(Landroid/widget/EditText;)Z
    move-result v0
    if-eqz v0, :L0
    return-void
  :L0
  .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/e;->a:Lcom/google/android/material/textfield/TextInputLayout;
    invoke-virtual { v0 }, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundMode()I
    move-result v0
  .line 3
    iget-object v1, p0, Lcom/google/android/material/textfield/e;->a:Lcom/google/android/material/textfield/TextInputLayout;
    invoke-virtual { v1 }, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackground()Ld/c/a/a/a0/g;
    move-result-object v1
  .line 4
    sget v2, Ld/c/a/a/b;->colorControlHighlight:I
    invoke-static { p1, v2 }, Ld/c/a/a/q/a;->c(Landroid/view/View;I)I
    move-result v2
    const/4 v3, 2
    new-array v4, v3, [[I
    const/4 v5, 1
    new-array v6, v5, [I
    const v7, 16842919
    const/4 v8, 0
    aput v7, v6, v8
    aput-object v6, v4, v8
    new-array v6, v8, [I
    aput-object v6, v4, v5
    if-ne v0, v3, :L1
  .line 5
    invoke-direct { p0, p1, v2, v4, v1 }, Lcom/google/android/material/textfield/d;->x(Landroid/widget/AutoCompleteTextView;I[[ILd/c/a/a/a0/g;)V
    goto :L2
  :L1
    if-ne v0, v5, :L2
  .line 6
    invoke-direct { p0, p1, v2, v4, v1 }, Lcom/google/android/material/textfield/d;->w(Landroid/widget/AutoCompleteTextView;I[[ILd/c/a/a/a0/g;)V
  :L2
    return-void
.end method

.method private w(Landroid/widget/AutoCompleteTextView;I[[ILd/c/a/a/a0/g;)V
  .registers 10
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/e;->a:Lcom/google/android/material/textfield/TextInputLayout;
    invoke-virtual { v0 }, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundColor()I
    move-result v0
    const v1, 1036831949
  .line 2
    invoke-static { p2, v0, v1 }, Ld/c/a/a/q/a;->f(IIF)I
    move-result p2
    const/4 v1, 2
    new-array v2, v1, [I
    const/4 v3, 0
    aput p2, v2, v3
    const/4 p2, 1
    aput v0, v2, p2
  .line 3
    sget-boolean v0, Lcom/google/android/material/textfield/d;->q:Z
    if-eqz v0, :L0
  .line 4
    new-instance p2, Landroid/content/res/ColorStateList;
    invoke-direct { p2, p3, v2 }, Landroid/content/res/ColorStateList;-><init>([[I[I)V
  .line 5
    new-instance p3, Landroid/graphics/drawable/RippleDrawable;
    invoke-direct { p3, p2, p4, p4 }, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
  .line 6
    invoke-static { p1, p3 }, Landroidx/core/view/v;->r0(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    goto :L1
  :L0
  .line 7
    new-instance v0, Ld/c/a/a/a0/g;
  .line 8
    invoke-virtual { p4 }, Ld/c/a/a/a0/g;->C()Ld/c/a/a/a0/k;
    move-result-object v4
    invoke-direct { v0, v4 }, Ld/c/a/a/a0/g;-><init>(Ld/c/a/a/a0/k;)V
  .line 9
    new-instance v4, Landroid/content/res/ColorStateList;
    invoke-direct { v4, p3, v2 }, Landroid/content/res/ColorStateList;-><init>([[I[I)V
    invoke-virtual { v0, v4 }, Ld/c/a/a/a0/g;->W(Landroid/content/res/ColorStateList;)V
    new-array p3, v1, [Landroid/graphics/drawable/Drawable;
    aput-object p4, p3, v3
    aput-object v0, p3, p2
  .line 10
    new-instance p2, Landroid/graphics/drawable/LayerDrawable;
    invoke-direct { p2, p3 }, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V
  .line 11
    invoke-static { p1 }, Landroidx/core/view/v;->I(Landroid/view/View;)I
    move-result p3
  .line 12
    invoke-virtual { p1 }, Landroid/widget/AutoCompleteTextView;->getPaddingTop()I
    move-result p4
  .line 13
    invoke-static { p1 }, Landroidx/core/view/v;->H(Landroid/view/View;)I
    move-result v0
  .line 14
    invoke-virtual { p1 }, Landroid/widget/AutoCompleteTextView;->getPaddingBottom()I
    move-result v1
  .line 15
    invoke-static { p1, p2 }, Landroidx/core/view/v;->r0(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
  .line 16
    invoke-static { p1, p3, p4, v0, v1 }, Landroidx/core/view/v;->A0(Landroid/view/View;IIII)V
  :L1
    return-void
.end method

.method private x(Landroid/widget/AutoCompleteTextView;I[[ILd/c/a/a/a0/g;)V
  .registers 12
  .line 1
    sget v0, Ld/c/a/a/b;->colorSurface:I
    invoke-static { p1, v0 }, Ld/c/a/a/q/a;->c(Landroid/view/View;I)I
    move-result v0
  .line 2
    new-instance v1, Ld/c/a/a/a0/g;
  .line 3
    invoke-virtual { p4 }, Ld/c/a/a/a0/g;->C()Ld/c/a/a/a0/k;
    move-result-object v2
    invoke-direct { v1, v2 }, Ld/c/a/a/a0/g;-><init>(Ld/c/a/a/a0/k;)V
    const v2, 1036831949
  .line 4
    invoke-static { p2, v0, v2 }, Ld/c/a/a/q/a;->f(IIF)I
    move-result p2
    const/4 v2, 2
    new-array v3, v2, [I
    const/4 v4, 0
    aput p2, v3, v4
    const/4 v5, 1
    aput v4, v3, v5
  .line 5
    new-instance v6, Landroid/content/res/ColorStateList;
    invoke-direct { v6, p3, v3 }, Landroid/content/res/ColorStateList;-><init>([[I[I)V
    invoke-virtual { v1, v6 }, Ld/c/a/a/a0/g;->W(Landroid/content/res/ColorStateList;)V
  .line 6
    sget-boolean v3, Lcom/google/android/material/textfield/d;->q:Z
    if-eqz v3, :L0
  .line 7
    invoke-virtual { v1, v0 }, Ld/c/a/a/a0/g;->setTint(I)V
    new-array v3, v2, [I
    aput p2, v3, v4
    aput v0, v3, v5
  .line 8
    new-instance p2, Landroid/content/res/ColorStateList;
    invoke-direct { p2, p3, v3 }, Landroid/content/res/ColorStateList;-><init>([[I[I)V
  .line 9
    new-instance p3, Ld/c/a/a/a0/g;
  .line 10
    invoke-virtual { p4 }, Ld/c/a/a/a0/g;->C()Ld/c/a/a/a0/k;
    move-result-object v0
    invoke-direct { p3, v0 }, Ld/c/a/a/a0/g;-><init>(Ld/c/a/a/a0/k;)V
    const/4 v0, -1
  .line 11
    invoke-virtual { p3, v0 }, Ld/c/a/a/a0/g;->setTint(I)V
  .line 12
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;
    invoke-direct { v0, p2, v1, p3 }, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    new-array p2, v2, [Landroid/graphics/drawable/Drawable;
    aput-object v0, p2, v4
    aput-object p4, p2, v5
  .line 13
    new-instance p3, Landroid/graphics/drawable/LayerDrawable;
    invoke-direct { p3, p2 }, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V
    goto :L1
  :L0
    new-array p2, v2, [Landroid/graphics/drawable/Drawable;
    aput-object v1, p2, v4
    aput-object p4, p2, v5
  .line 14
    new-instance p3, Landroid/graphics/drawable/LayerDrawable;
    invoke-direct { p3, p2 }, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V
  :L1
  .line 15
    invoke-static { p1, p3 }, Landroidx/core/view/v;->r0(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    return-void
.end method

.method private static y(Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;
  .registers 2
  .line 1
    instance-of v0, p0, Landroid/widget/AutoCompleteTextView;
    if-eqz v0, :L0
  .line 2
    check-cast p0, Landroid/widget/AutoCompleteTextView;
    return-object p0
  :L0
  .line 3
    new-instance p0, Ljava/lang/RuntimeException;
    const-string v0, "EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used."
    invoke-direct { p0, v0 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
    throw p0
.end method

.method private varargs z(I[F)Landroid/animation/ValueAnimator;
  .registers 5
  .line 1
    invoke-static { p2 }, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;
    move-result-object p2
  .line 2
    sget-object v0, Ld/c/a/a/l/a;->a:Landroid/animation/TimeInterpolator;
    invoke-virtual { p2, v0 }, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V
    int-to-long v0, p1
  .line 3
    invoke-virtual { p2, v0, v1 }, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;
  .line 4
    new-instance p1, Lcom/google/android/material/textfield/d$b;
    invoke-direct { p1, p0 }, Lcom/google/android/material/textfield/d$b;-><init>(Lcom/google/android/material/textfield/d;)V
    invoke-virtual { p2, p1 }, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    return-object p2
.end method

.method a()V
  .registers 7
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/e;->b:Landroid/content/Context;
  .line 2
    invoke-virtual { v0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    sget v1, Ld/c/a/a/d;->mtrl_shape_corner_size_small_component:I
  .line 3
    invoke-virtual { v0, v1 }, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I
    move-result v0
    int-to-float v0, v0
  .line 4
    iget-object v1, p0, Lcom/google/android/material/textfield/e;->b:Landroid/content/Context;
  .line 5
    invoke-virtual { v1 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v1
    sget v2, Ld/c/a/a/d;->mtrl_exposed_dropdown_menu_popup_elevation:I
  .line 6
    invoke-virtual { v1, v2 }, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I
    move-result v1
    int-to-float v1, v1
  .line 7
    iget-object v2, p0, Lcom/google/android/material/textfield/e;->b:Landroid/content/Context;
  .line 8
    invoke-virtual { v2 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v2
    sget v3, Ld/c/a/a/d;->mtrl_exposed_dropdown_menu_popup_vertical_padding:I
  .line 9
    invoke-virtual { v2, v3 }, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I
    move-result v2
  .line 10
    invoke-direct { p0, v0, v0, v1, v2 }, Lcom/google/android/material/textfield/d;->A(FFFI)Ld/c/a/a/a0/g;
    move-result-object v3
    const/4 v4, 0
  .line 11
    invoke-direct { p0, v4, v0, v1, v2 }, Lcom/google/android/material/textfield/d;->A(FFFI)Ld/c/a/a/a0/g;
    move-result-object v0
  .line 12
    iput-object v3, p0, Lcom/google/android/material/textfield/d;->m:Ld/c/a/a/a0/g;
  .line 13
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;
    invoke-direct { v1 }, Landroid/graphics/drawable/StateListDrawable;-><init>()V
    iput-object v1, p0, Lcom/google/android/material/textfield/d;->l:Landroid/graphics/drawable/StateListDrawable;
    const/4 v2, 1
    new-array v2, v2, [I
    const v4, 16842922
    const/4 v5, 0
    aput v4, v2, v5
  .line 14
    invoke-virtual { v1, v2, v3 }, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V
  .line 15
    iget-object v1, p0, Lcom/google/android/material/textfield/d;->l:Landroid/graphics/drawable/StateListDrawable;
    new-array v2, v5, [I
    invoke-virtual { v1, v2, v0 }, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V
  .line 16
    sget-boolean v0, Lcom/google/android/material/textfield/d;->q:Z
    if-eqz v0, :L0
    sget v0, Ld/c/a/a/e;->mtrl_dropdown_arrow:I
    goto :L1
  :L0
    sget v0, Ld/c/a/a/e;->mtrl_ic_arrow_drop_down:I
  :L1
  .line 17
    iget-object v1, p0, Lcom/google/android/material/textfield/e;->a:Lcom/google/android/material/textfield/TextInputLayout;
    iget-object v2, p0, Lcom/google/android/material/textfield/e;->b:Landroid/content/Context;
    invoke-static { v2, v0 }, Lc/a/k/a/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    move-result-object v0
    invoke-virtual { v1, v0 }, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V
  .line 18
    iget-object v0, p0, Lcom/google/android/material/textfield/e;->a:Lcom/google/android/material/textfield/TextInputLayout;
  .line 19
    invoke-virtual { v0 }, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;
    move-result-object v1
    sget v2, Ld/c/a/a/i;->exposed_dropdown_menu_content_description:I
    invoke-virtual { v1, v2 }, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    move-result-object v1
  .line 20
    invoke-virtual { v0, v1 }, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V
  .line 21
    iget-object v0, p0, Lcom/google/android/material/textfield/e;->a:Lcom/google/android/material/textfield/TextInputLayout;
    new-instance v1, Lcom/google/android/material/textfield/d$g;
    invoke-direct { v1, p0 }, Lcom/google/android/material/textfield/d$g;-><init>(Lcom/google/android/material/textfield/d;)V
    invoke-virtual { v0, v1 }, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V
  .line 22
    iget-object v0, p0, Lcom/google/android/material/textfield/e;->a:Lcom/google/android/material/textfield/TextInputLayout;
    iget-object v1, p0, Lcom/google/android/material/textfield/d;->g:Lcom/google/android/material/textfield/TextInputLayout$f;
    invoke-virtual { v0, v1 }, Lcom/google/android/material/textfield/TextInputLayout;->e(Lcom/google/android/material/textfield/TextInputLayout$f;)V
  .line 23
    iget-object v0, p0, Lcom/google/android/material/textfield/e;->a:Lcom/google/android/material/textfield/TextInputLayout;
    iget-object v1, p0, Lcom/google/android/material/textfield/d;->h:Lcom/google/android/material/textfield/TextInputLayout$g;
    invoke-virtual { v0, v1 }, Lcom/google/android/material/textfield/TextInputLayout;->f(Lcom/google/android/material/textfield/TextInputLayout$g;)V
  .line 24
    invoke-direct { p0 }, Lcom/google/android/material/textfield/d;->B()V
  .line 25
    iget-object v0, p0, Lcom/google/android/material/textfield/e;->b:Landroid/content/Context;
    const-string v1, "accessibility"
  .line 26
    invoke-virtual { v0, v1 }, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;
    iput-object v0, p0, Lcom/google/android/material/textfield/d;->n:Landroid/view/accessibility/AccessibilityManager;
    return-void
.end method

.method b(I)Z
  .registers 2
    if-eqz p1, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    return p1
.end method

.method d()Z
  .registers 2
    const/4 v0, 1
    return v0
.end method
