.class final Lcom/google/android/material/textfield/f;
.super Ljava/lang/Object;
.source "SourceFile"

.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/material/textfield/TextInputLayout;

.field private c:Landroid/widget/LinearLayout;

.field private d:I

.field private e:Landroid/widget/FrameLayout;

.field private f:Landroid/animation/Animator;

.field private final g:F

.field private h:I

.field private i:I

.field private j:Ljava/lang/CharSequence;

.field private k:Z

.field private l:Landroid/widget/TextView;

.field private m:Ljava/lang/CharSequence;

.field private n:I

.field private o:Landroid/content/res/ColorStateList;

.field private p:Ljava/lang/CharSequence;

.field private q:Z

.field private r:Landroid/widget/TextView;

.field private s:I

.field private t:Landroid/content/res/ColorStateList;

.field private u:Landroid/graphics/Typeface;

.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    invoke-virtual { p1 }, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;
    move-result-object v0
    iput-object v0, p0, Lcom/google/android/material/textfield/f;->a:Landroid/content/Context;
  .line 3
    iput-object p1, p0, Lcom/google/android/material/textfield/f;->b:Lcom/google/android/material/textfield/TextInputLayout;
  .line 4
    invoke-virtual { v0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object p1
    sget v0, Ld/c/a/a/d;->design_textinput_caption_translate_y:I
    invoke-virtual { p1, v0 }, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    move-result p1
    int-to-float p1, p1
    iput p1, p0, Lcom/google/android/material/textfield/f;->g:F
    return-void
.end method

.method private A(II)V
  .registers 5
    if-ne p1, p2, :L0
    return-void
  :L0
    if-eqz p2, :L1
  .line 1
    invoke-direct { p0, p2 }, Lcom/google/android/material/textfield/f;->l(I)Landroid/widget/TextView;
    move-result-object v0
    if-eqz v0, :L1
    const/4 v1, 0
  .line 2
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setVisibility(I)V
    const/high16 v1, 16256
  .line 3
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setAlpha(F)V
  :L1
    if-eqz p1, :L2
  .line 4
    invoke-direct { p0, p1 }, Lcom/google/android/material/textfield/f;->l(I)Landroid/widget/TextView;
    move-result-object v0
    if-eqz v0, :L2
    const/4 v1, 4
  .line 5
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setVisibility(I)V
    const/4 v1, 1
    if-ne p1, v1, :L2
    const/4 p1, 0
  .line 6
    invoke-virtual { v0, p1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  :L2
  .line 7
    iput p2, p0, Lcom/google/android/material/textfield/f;->h:I
    return-void
.end method

.method private I(Landroid/widget/TextView;Landroid/graphics/Typeface;)V
  .registers 3
    if-eqz p1, :L0
  .line 1
    invoke-virtual { p1, p2 }, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
  :L0
    return-void
.end method

.method private K(Landroid/view/ViewGroup;I)V
  .registers 3
    if-nez p2, :L0
    const/16 p2, 8
  .line 1
    invoke-virtual { p1, p2 }, Landroid/view/ViewGroup;->setVisibility(I)V
  :L0
    return-void
.end method

.method private L(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z
  .registers 5
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->b:Lcom/google/android/material/textfield/TextInputLayout;
    invoke-static { v0 }, Landroidx/core/view/v;->T(Landroid/view/View;)Z
    move-result v0
    if-eqz v0, :L1
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->b:Lcom/google/android/material/textfield/TextInputLayout;
  .line 2
    invoke-virtual { v0 }, Landroid/widget/LinearLayout;->isEnabled()Z
    move-result v0
    if-eqz v0, :L1
    iget v0, p0, Lcom/google/android/material/textfield/f;->i:I
    iget v1, p0, Lcom/google/android/material/textfield/f;->h:I
    if-ne v0, v1, :L0
    if-eqz p1, :L0
  .line 3
    invoke-virtual { p1 }, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
    move-result-object p1
    invoke-static { p1, p2 }, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    move-result p1
    if-nez p1, :L1
  :L0
    const/4 p1, 1
    goto :L2
  :L1
    const/4 p1, 0
  :L2
    return p1
.end method

.method private O(IIZ)V
  .registers 17
    move-object v7, p0
    move v8, p2
    move v9, p1
    move/from16 v10, p3
    if-ne v9, v8, :L0
    return-void
  :L0
    if-eqz v10, :L1
  .line 1
    new-instance v11, Landroid/animation/AnimatorSet;
    invoke-direct { v11 }, Landroid/animation/AnimatorSet;-><init>()V
  .line 2
    iput-object v11, v7, Lcom/google/android/material/textfield/f;->f:Landroid/animation/Animator;
  .line 3
    new-instance v12, Ljava/util/ArrayList;
    invoke-direct { v12 }, Ljava/util/ArrayList;-><init>()V
  .line 4
    iget-boolean v2, v7, Lcom/google/android/material/textfield/f;->q:Z
    iget-object v3, v7, Lcom/google/android/material/textfield/f;->r:Landroid/widget/TextView;
    const/4 v4, 2
    move-object v0, p0
    move-object v1, v12
    move v5, p1
    move v6, p2
    invoke-direct/range { v0 .. v6 }, Lcom/google/android/material/textfield/f;->h(Ljava/util/List;ZLandroid/widget/TextView;III)V
  .line 5
    iget-boolean v2, v7, Lcom/google/android/material/textfield/f;->k:Z
    iget-object v3, v7, Lcom/google/android/material/textfield/f;->l:Landroid/widget/TextView;
    const/4 v4, 1
    invoke-direct/range { v0 .. v6 }, Lcom/google/android/material/textfield/f;->h(Ljava/util/List;ZLandroid/widget/TextView;III)V
  .line 6
    invoke-static { v11, v12 }, Ld/c/a/a/l/b;->a(Landroid/animation/AnimatorSet;Ljava/util/List;)V
  .line 7
    invoke-direct { p0, p1 }, Lcom/google/android/material/textfield/f;->l(I)Landroid/widget/TextView;
    move-result-object v3
  .line 8
    invoke-direct { p0, p2 }, Lcom/google/android/material/textfield/f;->l(I)Landroid/widget/TextView;
    move-result-object v5
  .line 9
    new-instance v6, Lcom/google/android/material/textfield/f$a;
    move-object v0, v6
    move-object v1, p0
    move v2, p2
    move v4, p1
    invoke-direct/range { v0 .. v5 }, Lcom/google/android/material/textfield/f$a;-><init>(Lcom/google/android/material/textfield/f;ILandroid/widget/TextView;ILandroid/widget/TextView;)V
    invoke-virtual { v11, v6 }, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V
  .line 10
    invoke-virtual { v11 }, Landroid/animation/AnimatorSet;->start()V
    goto :L2
  :L1
  .line 11
    invoke-direct { p0, p1, p2 }, Lcom/google/android/material/textfield/f;->A(II)V
  :L2
  .line 12
    iget-object v0, v7, Lcom/google/android/material/textfield/f;->b:Lcom/google/android/material/textfield/TextInputLayout;
    invoke-virtual { v0 }, Lcom/google/android/material/textfield/TextInputLayout;->s0()V
  .line 13
    iget-object v0, v7, Lcom/google/android/material/textfield/f;->b:Lcom/google/android/material/textfield/TextInputLayout;
    invoke-virtual { v0, v10 }, Lcom/google/android/material/textfield/TextInputLayout;->v0(Z)V
  .line 14
    iget-object v0, v7, Lcom/google/android/material/textfield/f;->b:Lcom/google/android/material/textfield/TextInputLayout;
    invoke-virtual { v0 }, Lcom/google/android/material/textfield/TextInputLayout;->F0()V
    return-void
.end method

.method static synthetic a(Lcom/google/android/material/textfield/f;I)I
  .registers 2
  .line 1
    iput p1, p0, Lcom/google/android/material/textfield/f;->h:I
    return p1
.end method

.method static synthetic b(Lcom/google/android/material/textfield/f;Landroid/animation/Animator;)Landroid/animation/Animator;
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/f;->f:Landroid/animation/Animator;
    return-object p1
.end method

.method static synthetic c(Lcom/google/android/material/textfield/f;)Landroid/widget/TextView;
  .registers 1
  .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/f;->l:Landroid/widget/TextView;
    return-object p0
.end method

.method private f()Z
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->c:Landroid/widget/LinearLayout;
    if-eqz v0, :L0
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->b:Lcom/google/android/material/textfield/TextInputLayout;
    invoke-virtual { v0 }, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;
    move-result-object v0
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method private h(Ljava/util/List;ZLandroid/widget/TextView;III)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/List<",
      "Landroid/animation/Animator;",
      ">;Z",
      "Landroid/widget/TextView;",
      "III)V"
    }
  .end annotation
  .registers 7
    if-eqz p3, :L4
    if-nez p2, :L0
    goto :L4
  :L0
    if-eq p4, p6, :L1
    if-ne p4, p5, :L4
  :L1
    if-ne p6, p4, :L2
    const/4 p2, 1
    goto :L3
  :L2
    const/4 p2, 0
  :L3
  .line 1
    invoke-direct { p0, p3, p2 }, Lcom/google/android/material/textfield/f;->i(Landroid/widget/TextView;Z)Landroid/animation/ObjectAnimator;
    move-result-object p2
  .line 2
    invoke-interface { p1, p2 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    if-ne p6, p4, :L4
  .line 3
    invoke-direct { p0, p3 }, Lcom/google/android/material/textfield/f;->j(Landroid/widget/TextView;)Landroid/animation/ObjectAnimator;
    move-result-object p2
    invoke-interface { p1, p2 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  :L4
    return-void
.end method

.method private i(Landroid/widget/TextView;Z)Landroid/animation/ObjectAnimator;
  .registers 6
    if-eqz p2, :L0
    const/high16 p2, 16256
    goto :L1
  :L0
    const/4 p2, 0
  :L1
  .line 1
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;
    const/4 v1, 1
    new-array v1, v1, [F
    const/4 v2, 0
    aput p2, v1, v2
    invoke-static { p1, v0, v1 }, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;
    move-result-object p1
    const-wide/16 v0, 167
  .line 2
    invoke-virtual { p1, v0, v1 }, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;
  .line 3
    sget-object p2, Ld/c/a/a/l/a;->a:Landroid/animation/TimeInterpolator;
    invoke-virtual { p1, p2 }, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V
    return-object p1
.end method

.method private j(Landroid/widget/TextView;)Landroid/animation/ObjectAnimator;
  .registers 6
  .line 1
    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;
    const/4 v1, 2
    new-array v1, v1, [F
    iget v2, p0, Lcom/google/android/material/textfield/f;->g:F
    neg-float v2, v2
    const/4 v3, 0
    aput v2, v1, v3
    const/4 v2, 1
    const/4 v3, 0
    aput v3, v1, v2
  .line 2
    invoke-static { p1, v0, v1 }, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;
    move-result-object p1
    const-wide/16 v0, 217
  .line 3
    invoke-virtual { p1, v0, v1 }, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;
  .line 4
    sget-object v0, Ld/c/a/a/l/a;->d:Landroid/animation/TimeInterpolator;
    invoke-virtual { p1, v0 }, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V
    return-object p1
.end method

.method private l(I)Landroid/widget/TextView;
  .registers 3
    const/4 v0, 1
    if-eq p1, v0, :L1
    const/4 v0, 2
    if-eq p1, v0, :L0
    const/4 p1, 0
    return-object p1
  :L0
  .line 1
    iget-object p1, p0, Lcom/google/android/material/textfield/f;->r:Landroid/widget/TextView;
    return-object p1
  :L1
  .line 2
    iget-object p1, p0, Lcom/google/android/material/textfield/f;->l:Landroid/widget/TextView;
    return-object p1
.end method

.method private s(ZII)I
  .registers 4
    if-eqz p1, :L0
  .line 1
    iget-object p1, p0, Lcom/google/android/material/textfield/f;->a:Landroid/content/Context;
  .line 2
    invoke-virtual { p1 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object p1
    invoke-virtual { p1, p2 }, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    move-result p3
  :L0
    return p3
.end method

.method private v(I)Z
  .registers 3
    const/4 v0, 1
    if-ne p1, v0, :L0
  .line 1
    iget-object p1, p0, Lcom/google/android/material/textfield/f;->l:Landroid/widget/TextView;
    if-eqz p1, :L0
    iget-object p1, p0, Lcom/google/android/material/textfield/f;->j:Ljava/lang/CharSequence;
  .line 2
    invoke-static { p1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result p1
    if-nez p1, :L0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method B(Ljava/lang/CharSequence;)V
  .registers 3
  .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/f;->m:Ljava/lang/CharSequence;
  .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->l:Landroid/widget/TextView;
    if-eqz v0, :L0
  .line 3
    invoke-virtual { v0, p1 }, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V
  :L0
    return-void
.end method

.method C(Z)V
  .registers 5
  .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/f;->k:Z
    if-ne v0, p1, :L0
    return-void
  :L0
  .line 2
    invoke-virtual { p0 }, Lcom/google/android/material/textfield/f;->g()V
    const/4 v0, 0
    if-eqz p1, :L3
  .line 3
    new-instance v1, Landroidx/appcompat/widget/x;
    iget-object v2, p0, Lcom/google/android/material/textfield/f;->a:Landroid/content/Context;
    invoke-direct { v1, v2 }, Landroidx/appcompat/widget/x;-><init>(Landroid/content/Context;)V
    iput-object v1, p0, Lcom/google/android/material/textfield/f;->l:Landroid/widget/TextView;
  .line 4
    sget v2, Ld/c/a/a/f;->textinput_error:I
    invoke-virtual { v1, v2 }, Landroid/widget/TextView;->setId(I)V
  .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 17
    if-lt v1, v2, :L1
  .line 6
    iget-object v1, p0, Lcom/google/android/material/textfield/f;->l:Landroid/widget/TextView;
    const/4 v2, 5
    invoke-virtual { v1, v2 }, Landroid/widget/TextView;->setTextAlignment(I)V
  :L1
  .line 7
    iget-object v1, p0, Lcom/google/android/material/textfield/f;->u:Landroid/graphics/Typeface;
    if-eqz v1, :L2
  .line 8
    iget-object v2, p0, Lcom/google/android/material/textfield/f;->l:Landroid/widget/TextView;
    invoke-virtual { v2, v1 }, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
  :L2
  .line 9
    iget v1, p0, Lcom/google/android/material/textfield/f;->n:I
    invoke-virtual { p0, v1 }, Lcom/google/android/material/textfield/f;->D(I)V
  .line 10
    iget-object v1, p0, Lcom/google/android/material/textfield/f;->o:Landroid/content/res/ColorStateList;
    invoke-virtual { p0, v1 }, Lcom/google/android/material/textfield/f;->E(Landroid/content/res/ColorStateList;)V
  .line 11
    iget-object v1, p0, Lcom/google/android/material/textfield/f;->m:Ljava/lang/CharSequence;
    invoke-virtual { p0, v1 }, Lcom/google/android/material/textfield/f;->B(Ljava/lang/CharSequence;)V
  .line 12
    iget-object v1, p0, Lcom/google/android/material/textfield/f;->l:Landroid/widget/TextView;
    const/4 v2, 4
    invoke-virtual { v1, v2 }, Landroid/widget/TextView;->setVisibility(I)V
  .line 13
    iget-object v1, p0, Lcom/google/android/material/textfield/f;->l:Landroid/widget/TextView;
    const/4 v2, 1
    invoke-static { v1, v2 }, Landroidx/core/view/v;->q0(Landroid/view/View;I)V
  .line 14
    iget-object v1, p0, Lcom/google/android/material/textfield/f;->l:Landroid/widget/TextView;
    invoke-virtual { p0, v1, v0 }, Lcom/google/android/material/textfield/f;->d(Landroid/widget/TextView;I)V
    goto :L4
  :L3
  .line 15
    invoke-virtual { p0 }, Lcom/google/android/material/textfield/f;->t()V
  .line 16
    iget-object v1, p0, Lcom/google/android/material/textfield/f;->l:Landroid/widget/TextView;
    invoke-virtual { p0, v1, v0 }, Lcom/google/android/material/textfield/f;->z(Landroid/widget/TextView;I)V
    const/4 v0, 0
  .line 17
    iput-object v0, p0, Lcom/google/android/material/textfield/f;->l:Landroid/widget/TextView;
  .line 18
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->b:Lcom/google/android/material/textfield/TextInputLayout;
    invoke-virtual { v0 }, Lcom/google/android/material/textfield/TextInputLayout;->s0()V
  .line 19
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->b:Lcom/google/android/material/textfield/TextInputLayout;
    invoke-virtual { v0 }, Lcom/google/android/material/textfield/TextInputLayout;->F0()V
  :L4
  .line 20
    iput-boolean p1, p0, Lcom/google/android/material/textfield/f;->k:Z
    return-void
.end method

.method D(I)V
  .registers 4
  .line 1
    iput p1, p0, Lcom/google/android/material/textfield/f;->n:I
  .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->l:Landroid/widget/TextView;
    if-eqz v0, :L0
  .line 3
    iget-object v1, p0, Lcom/google/android/material/textfield/f;->b:Lcom/google/android/material/textfield/TextInputLayout;
    invoke-virtual { v1, v0, p1 }, Lcom/google/android/material/textfield/TextInputLayout;->e0(Landroid/widget/TextView;I)V
  :L0
    return-void
.end method

.method E(Landroid/content/res/ColorStateList;)V
  .registers 3
  .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/f;->o:Landroid/content/res/ColorStateList;
  .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->l:Landroid/widget/TextView;
    if-eqz v0, :L0
    if-eqz p1, :L0
  .line 3
    invoke-virtual { v0, p1 }, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V
  :L0
    return-void
.end method

.method F(I)V
  .registers 3
  .line 1
    iput p1, p0, Lcom/google/android/material/textfield/f;->s:I
  .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->r:Landroid/widget/TextView;
    if-eqz v0, :L0
  .line 3
    invoke-static { v0, p1 }, Landroidx/core/widget/i;->n(Landroid/widget/TextView;I)V
  :L0
    return-void
.end method

.method G(Z)V
  .registers 5
  .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/f;->q:Z
    if-ne v0, p1, :L0
    return-void
  :L0
  .line 2
    invoke-virtual { p0 }, Lcom/google/android/material/textfield/f;->g()V
    const/4 v0, 1
    if-eqz p1, :L3
  .line 3
    new-instance v1, Landroidx/appcompat/widget/x;
    iget-object v2, p0, Lcom/google/android/material/textfield/f;->a:Landroid/content/Context;
    invoke-direct { v1, v2 }, Landroidx/appcompat/widget/x;-><init>(Landroid/content/Context;)V
    iput-object v1, p0, Lcom/google/android/material/textfield/f;->r:Landroid/widget/TextView;
  .line 4
    sget v2, Ld/c/a/a/f;->textinput_helper_text:I
    invoke-virtual { v1, v2 }, Landroid/widget/TextView;->setId(I)V
  .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 17
    if-lt v1, v2, :L1
  .line 6
    iget-object v1, p0, Lcom/google/android/material/textfield/f;->r:Landroid/widget/TextView;
    const/4 v2, 5
    invoke-virtual { v1, v2 }, Landroid/widget/TextView;->setTextAlignment(I)V
  :L1
  .line 7
    iget-object v1, p0, Lcom/google/android/material/textfield/f;->u:Landroid/graphics/Typeface;
    if-eqz v1, :L2
  .line 8
    iget-object v2, p0, Lcom/google/android/material/textfield/f;->r:Landroid/widget/TextView;
    invoke-virtual { v2, v1 }, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
  :L2
  .line 9
    iget-object v1, p0, Lcom/google/android/material/textfield/f;->r:Landroid/widget/TextView;
    const/4 v2, 4
    invoke-virtual { v1, v2 }, Landroid/widget/TextView;->setVisibility(I)V
  .line 10
    iget-object v1, p0, Lcom/google/android/material/textfield/f;->r:Landroid/widget/TextView;
    invoke-static { v1, v0 }, Landroidx/core/view/v;->q0(Landroid/view/View;I)V
  .line 11
    iget v1, p0, Lcom/google/android/material/textfield/f;->s:I
    invoke-virtual { p0, v1 }, Lcom/google/android/material/textfield/f;->F(I)V
  .line 12
    iget-object v1, p0, Lcom/google/android/material/textfield/f;->t:Landroid/content/res/ColorStateList;
    invoke-virtual { p0, v1 }, Lcom/google/android/material/textfield/f;->H(Landroid/content/res/ColorStateList;)V
  .line 13
    iget-object v1, p0, Lcom/google/android/material/textfield/f;->r:Landroid/widget/TextView;
    invoke-virtual { p0, v1, v0 }, Lcom/google/android/material/textfield/f;->d(Landroid/widget/TextView;I)V
    goto :L4
  :L3
  .line 14
    invoke-virtual { p0 }, Lcom/google/android/material/textfield/f;->u()V
  .line 15
    iget-object v1, p0, Lcom/google/android/material/textfield/f;->r:Landroid/widget/TextView;
    invoke-virtual { p0, v1, v0 }, Lcom/google/android/material/textfield/f;->z(Landroid/widget/TextView;I)V
    const/4 v0, 0
  .line 16
    iput-object v0, p0, Lcom/google/android/material/textfield/f;->r:Landroid/widget/TextView;
  .line 17
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->b:Lcom/google/android/material/textfield/TextInputLayout;
    invoke-virtual { v0 }, Lcom/google/android/material/textfield/TextInputLayout;->s0()V
  .line 18
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->b:Lcom/google/android/material/textfield/TextInputLayout;
    invoke-virtual { v0 }, Lcom/google/android/material/textfield/TextInputLayout;->F0()V
  :L4
  .line 19
    iput-boolean p1, p0, Lcom/google/android/material/textfield/f;->q:Z
    return-void
.end method

.method H(Landroid/content/res/ColorStateList;)V
  .registers 3
  .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/f;->t:Landroid/content/res/ColorStateList;
  .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->r:Landroid/widget/TextView;
    if-eqz v0, :L0
    if-eqz p1, :L0
  .line 3
    invoke-virtual { v0, p1 }, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V
  :L0
    return-void
.end method

.method J(Landroid/graphics/Typeface;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->u:Landroid/graphics/Typeface;
    if-eq p1, v0, :L0
  .line 2
    iput-object p1, p0, Lcom/google/android/material/textfield/f;->u:Landroid/graphics/Typeface;
  .line 3
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->l:Landroid/widget/TextView;
    invoke-direct { p0, v0, p1 }, Lcom/google/android/material/textfield/f;->I(Landroid/widget/TextView;Landroid/graphics/Typeface;)V
  .line 4
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->r:Landroid/widget/TextView;
    invoke-direct { p0, v0, p1 }, Lcom/google/android/material/textfield/f;->I(Landroid/widget/TextView;Landroid/graphics/Typeface;)V
  :L0
    return-void
.end method

.method M(Ljava/lang/CharSequence;)V
  .registers 5
  .line 1
    invoke-virtual { p0 }, Lcom/google/android/material/textfield/f;->g()V
  .line 2
    iput-object p1, p0, Lcom/google/android/material/textfield/f;->j:Ljava/lang/CharSequence;
  .line 3
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->l:Landroid/widget/TextView;
    invoke-virtual { v0, p1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 4
    iget v0, p0, Lcom/google/android/material/textfield/f;->h:I
    const/4 v1, 1
    if-eq v0, v1, :L0
  .line 5
    iput v1, p0, Lcom/google/android/material/textfield/f;->i:I
  :L0
  .line 6
    iget v0, p0, Lcom/google/android/material/textfield/f;->h:I
    iget v1, p0, Lcom/google/android/material/textfield/f;->i:I
    iget-object v2, p0, Lcom/google/android/material/textfield/f;->l:Landroid/widget/TextView;
  .line 7
    invoke-direct { p0, v2, p1 }, Lcom/google/android/material/textfield/f;->L(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z
    move-result p1
  .line 8
    invoke-direct { p0, v0, v1, p1 }, Lcom/google/android/material/textfield/f;->O(IIZ)V
    return-void
.end method

.method N(Ljava/lang/CharSequence;)V
  .registers 5
  .line 1
    invoke-virtual { p0 }, Lcom/google/android/material/textfield/f;->g()V
  .line 2
    iput-object p1, p0, Lcom/google/android/material/textfield/f;->p:Ljava/lang/CharSequence;
  .line 3
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->r:Landroid/widget/TextView;
    invoke-virtual { v0, p1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 4
    iget v0, p0, Lcom/google/android/material/textfield/f;->h:I
    const/4 v1, 2
    if-eq v0, v1, :L0
  .line 5
    iput v1, p0, Lcom/google/android/material/textfield/f;->i:I
  :L0
  .line 6
    iget v0, p0, Lcom/google/android/material/textfield/f;->h:I
    iget v1, p0, Lcom/google/android/material/textfield/f;->i:I
    iget-object v2, p0, Lcom/google/android/material/textfield/f;->r:Landroid/widget/TextView;
  .line 7
    invoke-direct { p0, v2, p1 }, Lcom/google/android/material/textfield/f;->L(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z
    move-result p1
  .line 8
    invoke-direct { p0, v0, v1, p1 }, Lcom/google/android/material/textfield/f;->O(IIZ)V
    return-void
.end method

.method d(Landroid/widget/TextView;I)V
  .registers 8
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->c:Landroid/widget/LinearLayout;
    const/4 v1, 0
    const/4 v2, -2
    if-nez v0, :L0
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->e:Landroid/widget/FrameLayout;
    if-nez v0, :L0
  .line 2
    new-instance v0, Landroid/widget/LinearLayout;
    iget-object v3, p0, Lcom/google/android/material/textfield/f;->a:Landroid/content/Context;
    invoke-direct { v0, v3 }, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
    iput-object v0, p0, Lcom/google/android/material/textfield/f;->c:Landroid/widget/LinearLayout;
  .line 3
    invoke-virtual { v0, v1 }, Landroid/widget/LinearLayout;->setOrientation(I)V
  .line 4
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->b:Lcom/google/android/material/textfield/TextInputLayout;
    iget-object v3, p0, Lcom/google/android/material/textfield/f;->c:Landroid/widget/LinearLayout;
    const/4 v4, -1
    invoke-virtual { v0, v3, v4, v2 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V
  .line 5
    new-instance v0, Landroid/widget/FrameLayout;
    iget-object v3, p0, Lcom/google/android/material/textfield/f;->a:Landroid/content/Context;
    invoke-direct { v0, v3 }, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
    iput-object v0, p0, Lcom/google/android/material/textfield/f;->e:Landroid/widget/FrameLayout;
  .line 6
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v3, 16256
    invoke-direct { v0, v1, v2, v3 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V
  .line 7
    iget-object v3, p0, Lcom/google/android/material/textfield/f;->c:Landroid/widget/LinearLayout;
    iget-object v4, p0, Lcom/google/android/material/textfield/f;->e:Landroid/widget/FrameLayout;
    invoke-virtual { v3, v4, v0 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  .line 8
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->b:Lcom/google/android/material/textfield/TextInputLayout;
    invoke-virtual { v0 }, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;
    move-result-object v0
    if-eqz v0, :L0
  .line 9
    invoke-virtual { p0 }, Lcom/google/android/material/textfield/f;->e()V
  :L0
  .line 10
    invoke-virtual { p0, p2 }, Lcom/google/android/material/textfield/f;->w(I)Z
    move-result p2
    if-eqz p2, :L1
  .line 11
    iget-object p2, p0, Lcom/google/android/material/textfield/f;->e:Landroid/widget/FrameLayout;
    invoke-virtual { p2, v1 }, Landroid/widget/FrameLayout;->setVisibility(I)V
  .line 12
    iget-object p2, p0, Lcom/google/android/material/textfield/f;->e:Landroid/widget/FrameLayout;
    invoke-virtual { p2, p1 }, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V
    goto :L2
  :L1
  .line 13
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct { p2, v2, v2 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
  .line 14
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->c:Landroid/widget/LinearLayout;
    invoke-virtual { v0, p1, p2 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  :L2
  .line 15
    iget-object p1, p0, Lcom/google/android/material/textfield/f;->c:Landroid/widget/LinearLayout;
    invoke-virtual { p1, v1 }, Landroid/widget/LinearLayout;->setVisibility(I)V
  .line 16
    iget p1, p0, Lcom/google/android/material/textfield/f;->d:I
    add-int/lit8 p1, p1, 1
    iput p1, p0, Lcom/google/android/material/textfield/f;->d:I
    return-void
.end method

.method e()V
  .registers 8
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/textfield/f;->f()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->b:Lcom/google/android/material/textfield/TextInputLayout;
    invoke-virtual { v0 }, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;
    move-result-object v0
  .line 3
    iget-object v1, p0, Lcom/google/android/material/textfield/f;->a:Landroid/content/Context;
    invoke-static { v1 }, Ld/c/a/a/x/c;->g(Landroid/content/Context;)Z
    move-result v1
  .line 4
    iget-object v2, p0, Lcom/google/android/material/textfield/f;->c:Landroid/widget/LinearLayout;
    sget v3, Ld/c/a/a/d;->material_helper_text_font_1_3_padding_horizontal:I
  .line 5
    invoke-static { v0 }, Landroidx/core/view/v;->I(Landroid/view/View;)I
    move-result v4
  .line 6
    invoke-direct { p0, v1, v3, v4 }, Lcom/google/android/material/textfield/f;->s(ZII)I
    move-result v3
    sget v4, Ld/c/a/a/d;->material_helper_text_font_1_3_padding_top:I
    iget-object v5, p0, Lcom/google/android/material/textfield/f;->a:Landroid/content/Context;
  .line 7
    invoke-virtual { v5 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v5
    sget v6, Ld/c/a/a/d;->material_helper_text_default_padding_top:I
  .line 8
    invoke-virtual { v5, v6 }, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    move-result v5
  .line 9
    invoke-direct { p0, v1, v4, v5 }, Lcom/google/android/material/textfield/f;->s(ZII)I
    move-result v4
    sget v5, Ld/c/a/a/d;->material_helper_text_font_1_3_padding_horizontal:I
  .line 10
    invoke-static { v0 }, Landroidx/core/view/v;->H(Landroid/view/View;)I
    move-result v0
  .line 11
    invoke-direct { p0, v1, v5, v0 }, Lcom/google/android/material/textfield/f;->s(ZII)I
    move-result v0
    const/4 v1, 0
  .line 12
    invoke-static { v2, v3, v4, v0, v1 }, Landroidx/core/view/v;->A0(Landroid/view/View;IIII)V
  :L0
    return-void
.end method

.method g()V
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->f:Landroid/animation/Animator;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Landroid/animation/Animator;->cancel()V
  :L0
    return-void
.end method

.method k()Z
  .registers 2
  .line 1
    iget v0, p0, Lcom/google/android/material/textfield/f;->i:I
    invoke-direct { p0, v0 }, Lcom/google/android/material/textfield/f;->v(I)Z
    move-result v0
    return v0
.end method

.method m()Ljava/lang/CharSequence;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->m:Ljava/lang/CharSequence;
    return-object v0
.end method

.method n()Ljava/lang/CharSequence;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->j:Ljava/lang/CharSequence;
    return-object v0
.end method

.method o()I
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->l:Landroid/widget/TextView;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Landroid/widget/TextView;->getCurrentTextColor()I
    move-result v0
    goto :L1
  :L0
    const/4 v0, -1
  :L1
    return v0
.end method

.method p()Landroid/content/res/ColorStateList;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->l:Landroid/widget/TextView;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;
    move-result-object v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return-object v0
.end method

.method q()Ljava/lang/CharSequence;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->p:Ljava/lang/CharSequence;
    return-object v0
.end method

.method r()I
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->r:Landroid/widget/TextView;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Landroid/widget/TextView;->getCurrentTextColor()I
    move-result v0
    goto :L1
  :L0
    const/4 v0, -1
  :L1
    return v0
.end method

.method t()V
  .registers 5
    const/4 v0, 0
  .line 1
    iput-object v0, p0, Lcom/google/android/material/textfield/f;->j:Ljava/lang/CharSequence;
  .line 2
    invoke-virtual { p0 }, Lcom/google/android/material/textfield/f;->g()V
  .line 3
    iget v1, p0, Lcom/google/android/material/textfield/f;->h:I
    const/4 v2, 1
    if-ne v1, v2, :L1
  .line 4
    iget-boolean v1, p0, Lcom/google/android/material/textfield/f;->q:Z
    if-eqz v1, :L0
    iget-object v1, p0, Lcom/google/android/material/textfield/f;->p:Ljava/lang/CharSequence;
    invoke-static { v1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v1
    if-nez v1, :L0
    const/4 v1, 2
  .line 5
    iput v1, p0, Lcom/google/android/material/textfield/f;->i:I
    goto :L1
  :L0
    const/4 v1, 0
  .line 6
    iput v1, p0, Lcom/google/android/material/textfield/f;->i:I
  :L1
  .line 7
    iget v1, p0, Lcom/google/android/material/textfield/f;->h:I
    iget v2, p0, Lcom/google/android/material/textfield/f;->i:I
    iget-object v3, p0, Lcom/google/android/material/textfield/f;->l:Landroid/widget/TextView;
  .line 8
    invoke-direct { p0, v3, v0 }, Lcom/google/android/material/textfield/f;->L(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z
    move-result v0
  .line 9
    invoke-direct { p0, v1, v2, v0 }, Lcom/google/android/material/textfield/f;->O(IIZ)V
    return-void
.end method

.method u()V
  .registers 5
  .line 1
    invoke-virtual { p0 }, Lcom/google/android/material/textfield/f;->g()V
  .line 2
    iget v0, p0, Lcom/google/android/material/textfield/f;->h:I
    const/4 v1, 2
    if-ne v0, v1, :L0
    const/4 v0, 0
  .line 3
    iput v0, p0, Lcom/google/android/material/textfield/f;->i:I
  :L0
  .line 4
    iget v0, p0, Lcom/google/android/material/textfield/f;->h:I
    iget v1, p0, Lcom/google/android/material/textfield/f;->i:I
    iget-object v2, p0, Lcom/google/android/material/textfield/f;->r:Landroid/widget/TextView;
    const/4 v3, 0
  .line 5
    invoke-direct { p0, v2, v3 }, Lcom/google/android/material/textfield/f;->L(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z
    move-result v2
  .line 6
    invoke-direct { p0, v0, v1, v2 }, Lcom/google/android/material/textfield/f;->O(IIZ)V
    return-void
.end method

.method w(I)Z
  .registers 3
    const/4 v0, 1
    if-eqz p1, :L1
    if-ne p1, v0, :L0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method x()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/f;->k:Z
    return v0
.end method

.method y()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/f;->q:Z
    return v0
.end method

.method z(Landroid/widget/TextView;I)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->c:Landroid/widget/LinearLayout;
    if-nez v0, :L0
    return-void
  :L0
  .line 2
    invoke-virtual { p0, p2 }, Lcom/google/android/material/textfield/f;->w(I)Z
    move-result p2
    if-eqz p2, :L1
    iget-object p2, p0, Lcom/google/android/material/textfield/f;->e:Landroid/widget/FrameLayout;
    if-eqz p2, :L1
  .line 3
    invoke-virtual { p2, p1 }, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V
    goto :L2
  :L1
  .line 4
    iget-object p2, p0, Lcom/google/android/material/textfield/f;->c:Landroid/widget/LinearLayout;
    invoke-virtual { p2, p1 }, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V
  :L2
  .line 5
    iget p1, p0, Lcom/google/android/material/textfield/f;->d:I
    add-int/lit8 p1, p1, -1
    iput p1, p0, Lcom/google/android/material/textfield/f;->d:I
  .line 6
    iget-object p2, p0, Lcom/google/android/material/textfield/f;->c:Landroid/widget/LinearLayout;
    invoke-direct { p0, p2, p1 }, Lcom/google/android/material/textfield/f;->K(Landroid/view/ViewGroup;I)V
    return-void
.end method
