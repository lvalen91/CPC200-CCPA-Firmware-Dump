.class public Lcom/google/android/material/button/MaterialButton;
.super Landroidx/appcompat/widget/AppCompatButton;
.implements Landroid/widget/Checkable;
.implements Ld/c/a/a/a0/n;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcom/google/android/material/button/MaterialButton$c;,
    Lcom/google/android/material/button/MaterialButton$b;,
    Lcom/google/android/material/button/MaterialButton$a;
  }
.end annotation

.field private final static q:[I

.field private final static r:[I

.field private final static s:I

.field private final d:Lcom/google/android/material/button/a;

.field private final e:Ljava/util/LinkedHashSet;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/LinkedHashSet<",
      "Lcom/google/android/material/button/MaterialButton$a;",
      ">;"
    }
  .end annotation
.end field

.field private f:Lcom/google/android/material/button/MaterialButton$b;

.field private g:Landroid/graphics/PorterDuff$Mode;

.field private h:Landroid/content/res/ColorStateList;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field private o:Z

.field private p:I

.method static constructor <clinit>()V
  .registers 4
    const/4 v0, 1
    new-array v1, v0, [I
    const v2, 16842911
    const/4 v3, 0
    aput v2, v1, v3
  .line 1
    sput-object v1, Lcom/google/android/material/button/MaterialButton;->q:[I
    new-array v0, v0, [I
    const v1, 16842912
    aput v1, v0, v3
  .line 2
    sput-object v0, Lcom/google/android/material/button/MaterialButton;->r:[I
  .line 3
    sget v0, Ld/c/a/a/j;->Widget_MaterialComponents_Button:I
    sput v0, Lcom/google/android/material/button/MaterialButton;->s:I
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 4
  .line 1
    sget v0, Ld/c/a/a/b;->materialButtonStyle:I
    invoke-direct { p0, p1, p2, v0 }, Lcom/google/android/material/button/MaterialButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .registers 11
  .line 2
    sget v0, Lcom/google/android/material/button/MaterialButton;->s:I
    invoke-static { p1, p2, p3, v0 }, Lcom/google/android/material/theme/a/a;->c(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;
    move-result-object p1
    invoke-direct { p0, p1, p2, p3 }, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .line 3
    new-instance p1, Ljava/util/LinkedHashSet;
    invoke-direct { p1 }, Ljava/util/LinkedHashSet;-><init>()V
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->e:Ljava/util/LinkedHashSet;
    const/4 p1, 0
  .line 4
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->n:Z
  .line 5
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->o:Z
  .line 6
    invoke-virtual { p0 }, Landroid/widget/Button;->getContext()Landroid/content/Context;
    move-result-object v6
  .line 7
    sget-object v2, Ld/c/a/a/k;->MaterialButton:[I
    sget v4, Lcom/google/android/material/button/MaterialButton;->s:I
    new-array v5, p1, [I
    move-object v0, v6
    move-object v1, p2
    move v3, p3
  .line 8
    invoke-static/range { v0 .. v5 }, Lcom/google/android/material/internal/j;->h(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;
    move-result-object v0
  .line 9
    sget v1, Ld/c/a/a/k;->MaterialButton_iconPadding:I
    invoke-virtual { v0, v1, p1 }, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
    move-result v1
    iput v1, p0, Lcom/google/android/material/button/MaterialButton;->m:I
  .line 10
    sget v1, Ld/c/a/a/k;->MaterialButton_iconTintMode:I
    const/4 v2, -1
  .line 11
    invoke-virtual { v0, v1, v2 }, Landroid/content/res/TypedArray;->getInt(II)I
    move-result v1
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;
  .line 12
    invoke-static { v1, v2 }, Lcom/google/android/material/internal/l;->e(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    move-result-object v1
    iput-object v1, p0, Lcom/google/android/material/button/MaterialButton;->g:Landroid/graphics/PorterDuff$Mode;
  .line 13
    invoke-virtual { p0 }, Landroid/widget/Button;->getContext()Landroid/content/Context;
    move-result-object v1
    sget v2, Ld/c/a/a/k;->MaterialButton_iconTint:I
  .line 14
    invoke-static { v1, v0, v2 }, Ld/c/a/a/x/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;
    move-result-object v1
    iput-object v1, p0, Lcom/google/android/material/button/MaterialButton;->h:Landroid/content/res/ColorStateList;
  .line 15
    invoke-virtual { p0 }, Landroid/widget/Button;->getContext()Landroid/content/Context;
    move-result-object v1
    sget v2, Ld/c/a/a/k;->MaterialButton_icon:I
    invoke-static { v1, v0, v2 }, Ld/c/a/a/x/c;->d(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;
    move-result-object v1
    iput-object v1, p0, Lcom/google/android/material/button/MaterialButton;->i:Landroid/graphics/drawable/Drawable;
  .line 16
    sget v1, Ld/c/a/a/k;->MaterialButton_iconGravity:I
    const/4 v2, 1
    invoke-virtual { v0, v1, v2 }, Landroid/content/res/TypedArray;->getInteger(II)I
    move-result v1
    iput v1, p0, Lcom/google/android/material/button/MaterialButton;->p:I
  .line 17
    sget v1, Ld/c/a/a/k;->MaterialButton_iconSize:I
    invoke-virtual { v0, v1, p1 }, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
    move-result v1
    iput v1, p0, Lcom/google/android/material/button/MaterialButton;->j:I
  .line 18
    sget v1, Lcom/google/android/material/button/MaterialButton;->s:I
  .line 19
    invoke-static { v6, p2, p3, v1 }, Ld/c/a/a/a0/k;->e(Landroid/content/Context;Landroid/util/AttributeSet;II)Ld/c/a/a/a0/k$b;
    move-result-object p2
    invoke-virtual { p2 }, Ld/c/a/a/a0/k$b;->m()Ld/c/a/a/a0/k;
    move-result-object p2
  .line 20
    new-instance p3, Lcom/google/android/material/button/a;
    invoke-direct { p3, p0, p2 }, Lcom/google/android/material/button/a;-><init>(Lcom/google/android/material/button/MaterialButton;Ld/c/a/a/a0/k;)V
    iput-object p3, p0, Lcom/google/android/material/button/MaterialButton;->d:Lcom/google/android/material/button/a;
  .line 21
    invoke-virtual { p3, v0 }, Lcom/google/android/material/button/a;->q(Landroid/content/res/TypedArray;)V
  .line 22
    invoke-virtual { v0 }, Landroid/content/res/TypedArray;->recycle()V
  .line 23
    iget p2, p0, Lcom/google/android/material/button/MaterialButton;->m:I
    invoke-virtual { p0, p2 }, Landroid/widget/Button;->setCompoundDrawablePadding(I)V
  .line 24
    iget-object p2, p0, Lcom/google/android/material/button/MaterialButton;->i:Landroid/graphics/drawable/Drawable;
    if-eqz p2, :L0
    const/4 p1, 1
  :L0
    invoke-direct { p0, p1 }, Lcom/google/android/material/button/MaterialButton;->j(Z)V
    return-void
.end method

.method private c()Z
  .registers 3
  .line 1
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->p:I
    const/4 v1, 3
    if-eq v0, v1, :L1
    const/4 v1, 4
    if-ne v0, v1, :L0
    goto :L1
  :L0
    const/4 v0, 0
    goto :L2
  :L1
    const/4 v0, 1
  :L2
    return v0
.end method

.method private d()Z
  .registers 4
  .line 1
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->p:I
    const/4 v1, 1
    if-eq v0, v1, :L1
    const/4 v2, 2
    if-ne v0, v2, :L0
    goto :L1
  :L0
    const/4 v1, 0
  :L1
    return v1
.end method

.method private e()Z
  .registers 3
  .line 1
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->p:I
    const/16 v1, 16
    if-eq v0, v1, :L1
    const/16 v1, 32
    if-ne v0, v1, :L0
    goto :L1
  :L0
    const/4 v0, 0
    goto :L2
  :L1
    const/4 v0, 1
  :L2
    return v0
.end method

.method private f()Z
  .registers 3
  .line 1
    invoke-static { p0 }, Landroidx/core/view/v;->C(Landroid/view/View;)I
    move-result v0
    const/4 v1, 1
    if-ne v0, v1, :L0
    goto :L1
  :L0
    const/4 v1, 0
  :L1
    return v1
.end method

.method private g()Z
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->d:Lcom/google/android/material/button/a;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Lcom/google/android/material/button/a;->o()Z
    move-result v0
    if-nez v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method private getA11yClassName()Ljava/lang/String;
  .registers 2
  .line 1
    invoke-virtual { p0 }, Lcom/google/android/material/button/MaterialButton;->b()Z
    move-result v0
    if-eqz v0, :L0
    const-class v0, Landroid/widget/CompoundButton;
    goto :L1
  :L0
    const-class v0, Landroid/widget/Button;
  :L1
    invoke-virtual { v0 }, Ljava/lang/Class;->getName()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method private getTextHeight()I
  .registers 6
  .line 1
    invoke-virtual { p0 }, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;
    move-result-object v0
  .line 2
    invoke-virtual { p0 }, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;
    move-result-object v1
    invoke-interface { v1 }, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    move-result-object v1
  .line 3
    invoke-virtual { p0 }, Landroid/widget/Button;->getTransformationMethod()Landroid/text/method/TransformationMethod;
    move-result-object v2
    if-eqz v2, :L0
  .line 4
    invoke-virtual { p0 }, Landroid/widget/Button;->getTransformationMethod()Landroid/text/method/TransformationMethod;
    move-result-object v2
    invoke-interface { v2, v1, p0 }, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    move-result-object v1
    invoke-interface { v1 }, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    move-result-object v1
  :L0
  .line 5
    new-instance v2, Landroid/graphics/Rect;
    invoke-direct { v2 }, Landroid/graphics/Rect;-><init>()V
    const/4 v3, 0
  .line 6
    invoke-virtual { v1 }, Ljava/lang/String;->length()I
    move-result v4
    invoke-virtual { v0, v1, v3, v4, v2 }, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V
  .line 7
    invoke-virtual { v2 }, Landroid/graphics/Rect;->height()I
    move-result v0
    invoke-virtual { p0 }, Landroid/widget/Button;->getLayout()Landroid/text/Layout;
    move-result-object v1
    invoke-virtual { v1 }, Landroid/text/Layout;->getHeight()I
    move-result v1
    invoke-static { v0, v1 }, Ljava/lang/Math;->min(II)I
    move-result v0
    return v0
.end method

.method private getTextWidth()I
  .registers 4
  .line 1
    invoke-virtual { p0 }, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;
    move-result-object v0
  .line 2
    invoke-virtual { p0 }, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;
    move-result-object v1
    invoke-interface { v1 }, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    move-result-object v1
  .line 3
    invoke-virtual { p0 }, Landroid/widget/Button;->getTransformationMethod()Landroid/text/method/TransformationMethod;
    move-result-object v2
    if-eqz v2, :L0
  .line 4
    invoke-virtual { p0 }, Landroid/widget/Button;->getTransformationMethod()Landroid/text/method/TransformationMethod;
    move-result-object v2
    invoke-interface { v2, v1, p0 }, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    move-result-object v1
    invoke-interface { v1 }, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    move-result-object v1
  :L0
  .line 5
    invoke-virtual { v0, v1 }, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F
    move-result v0
    float-to-int v0, v0
    invoke-virtual { p0 }, Landroid/widget/Button;->getLayout()Landroid/text/Layout;
    move-result-object v1
    invoke-virtual { v1 }, Landroid/text/Layout;->getEllipsizedWidth()I
    move-result v1
    invoke-static { v0, v1 }, Ljava/lang/Math;->min(II)I
    move-result v0
    return v0
.end method

.method private i()V
  .registers 3
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/button/MaterialButton;->d()Z
    move-result v0
    const/4 v1, 0
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->i:Landroid/graphics/drawable/Drawable;
    invoke-static { p0, v0, v1, v1, v1 }, Landroidx/core/widget/i;->i(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    goto :L2
  :L0
  .line 3
    invoke-direct { p0 }, Lcom/google/android/material/button/MaterialButton;->c()Z
    move-result v0
    if-eqz v0, :L1
  .line 4
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->i:Landroid/graphics/drawable/Drawable;
    invoke-static { p0, v1, v1, v0, v1 }, Landroidx/core/widget/i;->i(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    goto :L2
  :L1
  .line 5
    invoke-direct { p0 }, Lcom/google/android/material/button/MaterialButton;->e()Z
    move-result v0
    if-eqz v0, :L2
  .line 6
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->i:Landroid/graphics/drawable/Drawable;
    invoke-static { p0, v1, v0, v1, v1 }, Landroidx/core/widget/i;->i(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
  :L2
    return-void
.end method

.method private j(Z)V
  .registers 7
  .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->i:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L5
  .line 2
    invoke-static { v0 }, Landroidx/core/graphics/drawable/a;->r(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    iput-object v0, p0, Lcom/google/android/material/button/MaterialButton;->i:Landroid/graphics/drawable/Drawable;
  .line 3
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButton;->h:Landroid/content/res/ColorStateList;
    invoke-static { v0, v1 }, Landroidx/core/graphics/drawable/a;->o(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
  .line 4
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->g:Landroid/graphics/PorterDuff$Mode;
    if-eqz v0, :L0
  .line 5
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButton;->i:Landroid/graphics/drawable/Drawable;
    invoke-static { v1, v0 }, Landroidx/core/graphics/drawable/a;->p(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
  :L0
  .line 6
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->j:I
    if-eqz v0, :L1
    goto :L2
  :L1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->i:Landroid/graphics/drawable/Drawable;
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
    move-result v0
  :L2
  .line 7
    iget v1, p0, Lcom/google/android/material/button/MaterialButton;->j:I
    if-eqz v1, :L3
    goto :L4
  :L3
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButton;->i:Landroid/graphics/drawable/Drawable;
    invoke-virtual { v1 }, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    move-result v1
  :L4
  .line 8
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButton;->i:Landroid/graphics/drawable/Drawable;
    iget v3, p0, Lcom/google/android/material/button/MaterialButton;->k:I
    iget v4, p0, Lcom/google/android/material/button/MaterialButton;->l:I
    add-int/2addr v0, v3
    add-int/2addr v1, v4
    invoke-virtual { v2, v3, v4, v0, v1 }, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
  :L5
    if-eqz p1, :L6
  .line 9
    invoke-direct { p0 }, Lcom/google/android/material/button/MaterialButton;->i()V
    return-void
  :L6
  .line 10
    invoke-static { p0 }, Landroidx/core/widget/i;->a(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;
    move-result-object p1
    const/4 v0, 0
  .line 11
    aget-object v1, p1, v0
    const/4 v2, 1
  .line 12
    aget-object v3, p1, v2
    const/4 v4, 2
  .line 13
    aget-object p1, p1, v4
  .line 14
    invoke-direct { p0 }, Lcom/google/android/material/button/MaterialButton;->d()Z
    move-result v4
    if-eqz v4, :L7
    iget-object v4, p0, Lcom/google/android/material/button/MaterialButton;->i:Landroid/graphics/drawable/Drawable;
    if-ne v1, v4, :L9
  :L7
  .line 15
    invoke-direct { p0 }, Lcom/google/android/material/button/MaterialButton;->c()Z
    move-result v1
    if-eqz v1, :L8
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButton;->i:Landroid/graphics/drawable/Drawable;
    if-ne p1, v1, :L9
  :L8
  .line 16
    invoke-direct { p0 }, Lcom/google/android/material/button/MaterialButton;->e()Z
    move-result p1
    if-eqz p1, :L10
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->i:Landroid/graphics/drawable/Drawable;
    if-eq v3, p1, :L10
  :L9
    const/4 v0, 1
  :L10
    if-eqz v0, :L11
  .line 17
    invoke-direct { p0 }, Lcom/google/android/material/button/MaterialButton;->i()V
  :L11
    return-void
.end method

.method private k(II)V
  .registers 7
  .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->i:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L12
    invoke-virtual { p0 }, Landroid/widget/Button;->getLayout()Landroid/text/Layout;
    move-result-object v0
    if-nez v0, :L0
    goto/16 :L12
  :L0
  .line 2
    invoke-direct { p0 }, Lcom/google/android/material/button/MaterialButton;->d()Z
    move-result v0
    const/4 v1, 0
    if-nez v0, :L4
    invoke-direct { p0 }, Lcom/google/android/material/button/MaterialButton;->c()Z
    move-result v0
    if-eqz v0, :L1
    goto :L4
  :L1
  .line 3
    invoke-direct { p0 }, Lcom/google/android/material/button/MaterialButton;->e()Z
    move-result p1
    if-eqz p1, :L10
  .line 4
    iput v1, p0, Lcom/google/android/material/button/MaterialButton;->k:I
  .line 5
    iget p1, p0, Lcom/google/android/material/button/MaterialButton;->p:I
    const/16 v0, 16
    if-ne p1, v0, :L2
  .line 6
    iput v1, p0, Lcom/google/android/material/button/MaterialButton;->l:I
  .line 7
    invoke-direct { p0, v1 }, Lcom/google/android/material/button/MaterialButton;->j(Z)V
    return-void
  :L2
  .line 8
    iget p1, p0, Lcom/google/android/material/button/MaterialButton;->j:I
    if-nez p1, :L3
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->i:Landroid/graphics/drawable/Drawable;
    invoke-virtual { p1 }, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    move-result p1
  :L3
  .line 9
    invoke-direct { p0 }, Lcom/google/android/material/button/MaterialButton;->getTextHeight()I
    move-result v0
    sub-int/2addr p2, v0
  .line 10
    invoke-virtual { p0 }, Landroid/widget/Button;->getPaddingTop()I
    move-result v0
    sub-int/2addr p2, v0
    sub-int/2addr p2, p1
    iget p1, p0, Lcom/google/android/material/button/MaterialButton;->m:I
    sub-int/2addr p2, p1
  .line 11
    invoke-virtual { p0 }, Landroid/widget/Button;->getPaddingBottom()I
    move-result p1
    sub-int/2addr p2, p1
    div-int/lit8 p2, p2, 2
  .line 12
    iget p1, p0, Lcom/google/android/material/button/MaterialButton;->l:I
    if-eq p1, p2, :L10
  .line 13
    iput p2, p0, Lcom/google/android/material/button/MaterialButton;->l:I
  .line 14
    invoke-direct { p0, v1 }, Lcom/google/android/material/button/MaterialButton;->j(Z)V
    goto :L10
  :L4
  .line 15
    iput v1, p0, Lcom/google/android/material/button/MaterialButton;->l:I
  .line 16
    iget p2, p0, Lcom/google/android/material/button/MaterialButton;->p:I
    const/4 v0, 1
    if-eq p2, v0, :L11
    const/4 v2, 3
    if-ne p2, v2, :L5
    goto :L11
  :L5
  .line 17
    iget p2, p0, Lcom/google/android/material/button/MaterialButton;->j:I
    if-nez p2, :L6
    iget-object p2, p0, Lcom/google/android/material/button/MaterialButton;->i:Landroid/graphics/drawable/Drawable;
    invoke-virtual { p2 }, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
    move-result p2
  :L6
  .line 18
    invoke-direct { p0 }, Lcom/google/android/material/button/MaterialButton;->getTextWidth()I
    move-result v2
    sub-int/2addr p1, v2
  .line 19
    invoke-static { p0 }, Landroidx/core/view/v;->H(Landroid/view/View;)I
    move-result v2
    sub-int/2addr p1, v2
    sub-int/2addr p1, p2
    iget p2, p0, Lcom/google/android/material/button/MaterialButton;->m:I
    sub-int/2addr p1, p2
  .line 20
    invoke-static { p0 }, Landroidx/core/view/v;->I(Landroid/view/View;)I
    move-result p2
    sub-int/2addr p1, p2
    div-int/lit8 p1, p1, 2
  .line 21
    invoke-direct { p0 }, Lcom/google/android/material/button/MaterialButton;->f()Z
    move-result p2
    iget v2, p0, Lcom/google/android/material/button/MaterialButton;->p:I
    const/4 v3, 4
    if-ne v2, v3, :L7
    goto :L8
  :L7
    const/4 v0, 0
  :L8
    if-eq p2, v0, :L9
    neg-int p1, p1
  :L9
  .line 22
    iget p2, p0, Lcom/google/android/material/button/MaterialButton;->k:I
    if-eq p2, p1, :L10
  .line 23
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->k:I
  .line 24
    invoke-direct { p0, v1 }, Lcom/google/android/material/button/MaterialButton;->j(Z)V
  :L10
    return-void
  :L11
  .line 25
    iput v1, p0, Lcom/google/android/material/button/MaterialButton;->k:I
  .line 26
    invoke-direct { p0, v1 }, Lcom/google/android/material/button/MaterialButton;->j(Z)V
  :L12
    return-void
.end method

.method public a(Lcom/google/android/material/button/MaterialButton$a;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e:Ljava/util/LinkedHashSet;
    invoke-virtual { v0, p1 }, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
    return-void
.end method

.method public b()Z
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->d:Lcom/google/android/material/button/a;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Lcom/google/android/material/button/a;->p()Z
    move-result v0
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public getBackgroundTintList()Landroid/content/res/ColorStateList;
  .registers 2
  .line 1
    invoke-virtual { p0 }, Lcom/google/android/material/button/MaterialButton;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    move-result-object v0
    return-object v0
.end method

.method public getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
  .registers 2
  .line 1
    invoke-virtual { p0 }, Lcom/google/android/material/button/MaterialButton;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    move-result-object v0
    return-object v0
.end method

.method public getCornerRadius()I
  .registers 2
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/button/MaterialButton;->g()Z
    move-result v0
    if-eqz v0, :L0
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->d:Lcom/google/android/material/button/a;
    invoke-virtual { v0 }, Lcom/google/android/material/button/a;->b()I
    move-result v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->i:Landroid/graphics/drawable/Drawable;
    return-object v0
.end method

.method public getIconGravity()I
  .registers 2
  .line 1
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->p:I
    return v0
.end method

.method public getIconPadding()I
  .registers 2
  .line 1
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->m:I
    return v0
.end method

.method public getIconSize()I
  .registers 2
  .line 1
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->j:I
    return v0
.end method

.method public getIconTint()Landroid/content/res/ColorStateList;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->h:Landroid/content/res/ColorStateList;
    return-object v0
.end method

.method public getIconTintMode()Landroid/graphics/PorterDuff$Mode;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->g:Landroid/graphics/PorterDuff$Mode;
    return-object v0
.end method

.method public getInsetBottom()I
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->d:Lcom/google/android/material/button/a;
    invoke-virtual { v0 }, Lcom/google/android/material/button/a;->c()I
    move-result v0
    return v0
.end method

.method public getInsetTop()I
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->d:Lcom/google/android/material/button/a;
    invoke-virtual { v0 }, Lcom/google/android/material/button/a;->d()I
    move-result v0
    return v0
.end method

.method public getRippleColor()Landroid/content/res/ColorStateList;
  .registers 2
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/button/MaterialButton;->g()Z
    move-result v0
    if-eqz v0, :L0
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->d:Lcom/google/android/material/button/a;
    invoke-virtual { v0 }, Lcom/google/android/material/button/a;->h()Landroid/content/res/ColorStateList;
    move-result-object v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return-object v0
.end method

.method public getShapeAppearanceModel()Ld/c/a/a/a0/k;
  .registers 3
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/button/MaterialButton;->g()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->d:Lcom/google/android/material/button/a;
    invoke-virtual { v0 }, Lcom/google/android/material/button/a;->i()Ld/c/a/a/a0/k;
    move-result-object v0
    return-object v0
  :L0
  .line 3
    new-instance v0, Ljava/lang/IllegalStateException;
    const-string v1, "Attempted to get ShapeAppearanceModel from a MaterialButton which has an overwritten background."
    invoke-direct { v0, v1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public getStrokeColor()Landroid/content/res/ColorStateList;
  .registers 2
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/button/MaterialButton;->g()Z
    move-result v0
    if-eqz v0, :L0
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->d:Lcom/google/android/material/button/a;
    invoke-virtual { v0 }, Lcom/google/android/material/button/a;->j()Landroid/content/res/ColorStateList;
    move-result-object v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return-object v0
.end method

.method public getStrokeWidth()I
  .registers 2
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/button/MaterialButton;->g()Z
    move-result v0
    if-eqz v0, :L0
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->d:Lcom/google/android/material/button/a;
    invoke-virtual { v0 }, Lcom/google/android/material/button/a;->k()I
    move-result v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
  .registers 2
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/button/MaterialButton;->g()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->d:Lcom/google/android/material/button/a;
    invoke-virtual { v0 }, Lcom/google/android/material/button/a;->l()Landroid/content/res/ColorStateList;
    move-result-object v0
    return-object v0
  :L0
  .line 3
    invoke-super { p0 }, Landroidx/appcompat/widget/AppCompatButton;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    move-result-object v0
    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
  .registers 2
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/button/MaterialButton;->g()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->d:Lcom/google/android/material/button/a;
    invoke-virtual { v0 }, Lcom/google/android/material/button/a;->m()Landroid/graphics/PorterDuff$Mode;
    move-result-object v0
    return-object v0
  :L0
  .line 3
    invoke-super { p0 }, Landroidx/appcompat/widget/AppCompatButton;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    move-result-object v0
    return-object v0
.end method

.method public h(Lcom/google/android/material/button/MaterialButton$a;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e:Ljava/util/LinkedHashSet;
    invoke-virtual { v0, p1 }, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z
    return-void
.end method

.method public isChecked()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->n:Z
    return v0
.end method

.method protected onAttachedToWindow()V
  .registers 2
  .line 1
    invoke-super { p0 }, Landroid/widget/Button;->onAttachedToWindow()V
  .line 2
    invoke-direct { p0 }, Lcom/google/android/material/button/MaterialButton;->g()Z
    move-result v0
    if-eqz v0, :L0
  .line 3
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->d:Lcom/google/android/material/button/a;
  .line 4
    invoke-virtual { v0 }, Lcom/google/android/material/button/a;->f()Ld/c/a/a/a0/g;
    move-result-object v0
  .line 5
    invoke-static { p0, v0 }, Ld/c/a/a/a0/h;->f(Landroid/view/View;Ld/c/a/a/a0/g;)V
  :L0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
  .registers 3
    add-int/lit8 p1, p1, 2
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/Button;->onCreateDrawableState(I)[I
    move-result-object p1
  .line 2
    invoke-virtual { p0 }, Lcom/google/android/material/button/MaterialButton;->b()Z
    move-result v0
    if-eqz v0, :L0
  .line 3
    sget-object v0, Lcom/google/android/material/button/MaterialButton;->q:[I
    invoke-static { p1, v0 }, Landroid/widget/Button;->mergeDrawableStates([I[I)[I
  :L0
  .line 4
    invoke-virtual { p0 }, Lcom/google/android/material/button/MaterialButton;->isChecked()Z
    move-result v0
    if-eqz v0, :L1
  .line 5
    sget-object v0, Lcom/google/android/material/button/MaterialButton;->r:[I
    invoke-static { p1, v0 }, Landroid/widget/Button;->mergeDrawableStates([I[I)[I
  :L1
    return-object p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
  .registers 3
  .line 1
    invoke-super { p0, p1 }, Landroidx/appcompat/widget/AppCompatButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
  .line 2
    invoke-direct { p0 }, Lcom/google/android/material/button/MaterialButton;->getA11yClassName()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V
  .line 3
    invoke-virtual { p0 }, Lcom/google/android/material/button/MaterialButton;->isChecked()Z
    move-result v0
    invoke-virtual { p1, v0 }, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
  .registers 3
  .line 1
    invoke-super { p0, p1 }, Landroidx/appcompat/widget/AppCompatButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
  .line 2
    invoke-direct { p0 }, Lcom/google/android/material/button/MaterialButton;->getA11yClassName()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V
  .line 3
    invoke-virtual { p0 }, Lcom/google/android/material/button/MaterialButton;->b()Z
    move-result v0
    invoke-virtual { p1, v0 }, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V
  .line 4
    invoke-virtual { p0 }, Lcom/google/android/material/button/MaterialButton;->isChecked()Z
    move-result v0
    invoke-virtual { p1, v0 }, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V
  .line 5
    invoke-virtual { p0 }, Landroid/widget/Button;->isClickable()Z
    move-result v0
    invoke-virtual { p1, v0 }, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V
    return-void
.end method

.method protected onLayout(ZIIII)V
  .registers 7
  .line 1
    invoke-super/range { p0 .. p5 }, Landroidx/appcompat/widget/AppCompatButton;->onLayout(ZIIII)V
  .line 2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v0, 21
    if-ne p1, v0, :L0
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->d:Lcom/google/android/material/button/a;
    if-eqz p1, :L0
    sub-int/2addr p5, p3
    sub-int/2addr p4, p2
  .line 3
    invoke-virtual { p1, p5, p4 }, Lcom/google/android/material/button/a;->H(II)V
  :L0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
  .registers 3
  .line 1
    instance-of v0, p1, Lcom/google/android/material/button/MaterialButton$c;
    if-nez v0, :L0
  .line 2
    invoke-super { p0, p1 }, Landroid/widget/Button;->onRestoreInstanceState(Landroid/os/Parcelable;)V
    return-void
  :L0
  .line 3
    check-cast p1, Lcom/google/android/material/button/MaterialButton$c;
  .line 4
    invoke-virtual { p1 }, Lc/i/a/a;->j()Landroid/os/Parcelable;
    move-result-object v0
    invoke-super { p0, v0 }, Landroid/widget/Button;->onRestoreInstanceState(Landroid/os/Parcelable;)V
  .line 5
    iget-boolean p1, p1, Lcom/google/android/material/button/MaterialButton$c;->d:Z
    invoke-virtual { p0, p1 }, Lcom/google/android/material/button/MaterialButton;->setChecked(Z)V
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
  .registers 3
  .line 1
    invoke-super { p0 }, Landroid/widget/Button;->onSaveInstanceState()Landroid/os/Parcelable;
    move-result-object v0
  .line 2
    new-instance v1, Lcom/google/android/material/button/MaterialButton$c;
    invoke-direct { v1, v0 }, Lcom/google/android/material/button/MaterialButton$c;-><init>(Landroid/os/Parcelable;)V
  .line 3
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->n:Z
    iput-boolean v0, v1, Lcom/google/android/material/button/MaterialButton$c;->d:Z
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
  .registers 5
  .line 1
    invoke-super { p0, p1, p2, p3, p4 }, Landroid/widget/Button;->onSizeChanged(IIII)V
  .line 2
    invoke-direct { p0, p1, p2 }, Lcom/google/android/material/button/MaterialButton;->k(II)V
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
  .registers 5
  .line 1
    invoke-super { p0, p1, p2, p3, p4 }, Landroidx/appcompat/widget/AppCompatButton;->onTextChanged(Ljava/lang/CharSequence;III)V
  .line 2
    invoke-virtual { p0 }, Landroid/widget/Button;->getMeasuredWidth()I
    move-result p1
    invoke-virtual { p0 }, Landroid/widget/Button;->getMeasuredHeight()I
    move-result p2
    invoke-direct { p0, p1, p2 }, Lcom/google/android/material/button/MaterialButton;->k(II)V
    return-void
.end method

.method public performClick()Z
  .registers 2
  .line 1
    invoke-virtual { p0 }, Lcom/google/android/material/button/MaterialButton;->toggle()V
  .line 2
    invoke-super { p0 }, Landroid/widget/Button;->performClick()Z
    move-result v0
    return v0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Lcom/google/android/material/button/MaterialButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    return-void
.end method

.method public setBackgroundColor(I)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/button/MaterialButton;->g()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->d:Lcom/google/android/material/button/a;
    invoke-virtual { v0, p1 }, Lcom/google/android/material/button/a;->r(I)V
    goto :L1
  :L0
  .line 3
    invoke-super { p0, p1 }, Landroid/widget/Button;->setBackgroundColor(I)V
  :L1
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/button/MaterialButton;->g()Z
    move-result v0
    if-eqz v0, :L1
  .line 2
    invoke-virtual { p0 }, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    if-eq p1, v0, :L0
  .line 3
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->d:Lcom/google/android/material/button/a;
    invoke-virtual { v0 }, Lcom/google/android/material/button/a;->s()V
  .line 4
    invoke-super { p0, p1 }, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    goto :L2
  :L0
  .line 5
    invoke-virtual { p0 }, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    invoke-virtual { p1 }, Landroid/graphics/drawable/Drawable;->getState()[I
    move-result-object p1
    invoke-virtual { v0, p1 }, Landroid/graphics/drawable/Drawable;->setState([I)Z
    goto :L2
  :L1
  .line 6
    invoke-super { p0, p1 }, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
  :L2
    return-void
.end method

.method public setBackgroundResource(I)V
  .registers 3
    if-eqz p1, :L0
  .line 1
    invoke-virtual { p0 }, Landroid/widget/Button;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-static { v0, p1 }, Lc/a/k/a/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    move-result-object p1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
  .line 2
    invoke-virtual { p0, p1 }, Lcom/google/android/material/button/MaterialButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    return-void
.end method

.method public setCheckable(Z)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/button/MaterialButton;->g()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->d:Lcom/google/android/material/button/a;
    invoke-virtual { v0, p1 }, Lcom/google/android/material/button/a;->t(Z)V
  :L0
    return-void
.end method

.method public setChecked(Z)V
  .registers 4
  .line 1
    invoke-virtual { p0 }, Lcom/google/android/material/button/MaterialButton;->b()Z
    move-result v0
    if-eqz v0, :L3
    invoke-virtual { p0 }, Landroid/widget/Button;->isEnabled()Z
    move-result v0
    if-eqz v0, :L3
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->n:Z
    if-eq v0, p1, :L3
  .line 2
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->n:Z
  .line 3
    invoke-virtual { p0 }, Landroid/widget/Button;->refreshDrawableState()V
  .line 4
    iget-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->o:Z
    if-eqz p1, :L0
    return-void
  :L0
    const/4 p1, 1
  .line 5
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->o:Z
  .line 6
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->e:Ljava/util/LinkedHashSet;
    invoke-virtual { p1 }, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;
    move-result-object p1
  :L1
    invoke-interface { p1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :L2
    invoke-interface { p1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/google/android/material/button/MaterialButton$a;
  .line 7
    iget-boolean v1, p0, Lcom/google/android/material/button/MaterialButton;->n:Z
    invoke-interface { v0, p0, v1 }, Lcom/google/android/material/button/MaterialButton$a;->a(Lcom/google/android/material/button/MaterialButton;Z)V
    goto :L1
  :L2
    const/4 p1, 0
  .line 8
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->o:Z
  :L3
    return-void
.end method

.method public setCornerRadius(I)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/button/MaterialButton;->g()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->d:Lcom/google/android/material/button/a;
    invoke-virtual { v0, p1 }, Lcom/google/android/material/button/a;->u(I)V
  :L0
    return-void
.end method

.method public setCornerRadiusResource(I)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/button/MaterialButton;->g()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    invoke-virtual { v0, p1 }, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    move-result p1
    invoke-virtual { p0, p1 }, Lcom/google/android/material/button/MaterialButton;->setCornerRadius(I)V
  :L0
    return-void
.end method

.method public setElevation(F)V
  .registers 3
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/Button;->setElevation(F)V
  .line 2
    invoke-direct { p0 }, Lcom/google/android/material/button/MaterialButton;->g()Z
    move-result v0
    if-eqz v0, :L0
  .line 3
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->d:Lcom/google/android/material/button/a;
    invoke-virtual { v0 }, Lcom/google/android/material/button/a;->f()Ld/c/a/a/a0/g;
    move-result-object v0
    invoke-virtual { v0, p1 }, Ld/c/a/a/a0/g;->V(F)V
  :L0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->i:Landroid/graphics/drawable/Drawable;
    if-eq v0, p1, :L0
  .line 2
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->i:Landroid/graphics/drawable/Drawable;
    const/4 p1, 1
  .line 3
    invoke-direct { p0, p1 }, Lcom/google/android/material/button/MaterialButton;->j(Z)V
  .line 4
    invoke-virtual { p0 }, Landroid/widget/Button;->getMeasuredWidth()I
    move-result p1
    invoke-virtual { p0 }, Landroid/widget/Button;->getMeasuredHeight()I
    move-result v0
    invoke-direct { p0, p1, v0 }, Lcom/google/android/material/button/MaterialButton;->k(II)V
  :L0
    return-void
.end method

.method public setIconGravity(I)V
  .registers 3
  .line 1
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->p:I
    if-eq v0, p1, :L0
  .line 2
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->p:I
  .line 3
    invoke-virtual { p0 }, Landroid/widget/Button;->getMeasuredWidth()I
    move-result p1
    invoke-virtual { p0 }, Landroid/widget/Button;->getMeasuredHeight()I
    move-result v0
    invoke-direct { p0, p1, v0 }, Lcom/google/android/material/button/MaterialButton;->k(II)V
  :L0
    return-void
.end method

.method public setIconPadding(I)V
  .registers 3
  .line 1
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->m:I
    if-eq v0, p1, :L0
  .line 2
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->m:I
  .line 3
    invoke-virtual { p0, p1 }, Landroid/widget/Button;->setCompoundDrawablePadding(I)V
  :L0
    return-void
.end method

.method public setIconResource(I)V
  .registers 3
    if-eqz p1, :L0
  .line 1
    invoke-virtual { p0 }, Landroid/widget/Button;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-static { v0, p1 }, Lc/a/k/a/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    move-result-object p1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
  .line 2
    invoke-virtual { p0, p1 }, Lcom/google/android/material/button/MaterialButton;->setIcon(Landroid/graphics/drawable/Drawable;)V
    return-void
.end method

.method public setIconSize(I)V
  .registers 3
    if-ltz p1, :L1
  .line 1
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->j:I
    if-eq v0, p1, :L0
  .line 2
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->j:I
    const/4 p1, 1
  .line 3
    invoke-direct { p0, p1 }, Lcom/google/android/material/button/MaterialButton;->j(Z)V
  :L0
    return-void
  :L1
  .line 4
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string v0, "iconSize cannot be less than 0"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public setIconTint(Landroid/content/res/ColorStateList;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->h:Landroid/content/res/ColorStateList;
    if-eq v0, p1, :L0
  .line 2
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->h:Landroid/content/res/ColorStateList;
    const/4 p1, 0
  .line 3
    invoke-direct { p0, p1 }, Lcom/google/android/material/button/MaterialButton;->j(Z)V
  :L0
    return-void
.end method

.method public setIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->g:Landroid/graphics/PorterDuff$Mode;
    if-eq v0, p1, :L0
  .line 2
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->g:Landroid/graphics/PorterDuff$Mode;
    const/4 p1, 0
  .line 3
    invoke-direct { p0, p1 }, Lcom/google/android/material/button/MaterialButton;->j(Z)V
  :L0
    return-void
.end method

.method public setIconTintResource(I)V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroid/widget/Button;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-static { v0, p1 }, Lc/a/k/a/a;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    move-result-object p1
    invoke-virtual { p0, p1 }, Lcom/google/android/material/button/MaterialButton;->setIconTint(Landroid/content/res/ColorStateList;)V
    return-void
.end method

.method public setInsetBottom(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->d:Lcom/google/android/material/button/a;
    invoke-virtual { v0, p1 }, Lcom/google/android/material/button/a;->v(I)V
    return-void
.end method

.method public setInsetTop(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->d:Lcom/google/android/material/button/a;
    invoke-virtual { v0, p1 }, Lcom/google/android/material/button/a;->w(I)V
    return-void
.end method

.method setInternalBackground(Landroid/graphics/drawable/Drawable;)V
  .registers 2
  .line 1
    invoke-super { p0, p1 }, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    return-void
.end method

.method setOnPressedChangeListenerInternal(Lcom/google/android/material/button/MaterialButton$b;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->f:Lcom/google/android/material/button/MaterialButton$b;
    return-void
.end method

.method public setPressed(Z)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->f:Lcom/google/android/material/button/MaterialButton$b;
    if-eqz v0, :L0
  .line 2
    invoke-interface { v0, p0, p1 }, Lcom/google/android/material/button/MaterialButton$b;->a(Lcom/google/android/material/button/MaterialButton;Z)V
  :L0
  .line 3
    invoke-super { p0, p1 }, Landroid/widget/Button;->setPressed(Z)V
    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/button/MaterialButton;->g()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->d:Lcom/google/android/material/button/a;
    invoke-virtual { v0, p1 }, Lcom/google/android/material/button/a;->x(Landroid/content/res/ColorStateList;)V
  :L0
    return-void
.end method

.method public setRippleColorResource(I)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/button/MaterialButton;->g()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/widget/Button;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-static { v0, p1 }, Lc/a/k/a/a;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    move-result-object p1
    invoke-virtual { p0, p1 }, Lcom/google/android/material/button/MaterialButton;->setRippleColor(Landroid/content/res/ColorStateList;)V
  :L0
    return-void
.end method

.method public setShapeAppearanceModel(Ld/c/a/a/a0/k;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/button/MaterialButton;->g()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->d:Lcom/google/android/material/button/a;
    invoke-virtual { v0, p1 }, Lcom/google/android/material/button/a;->y(Ld/c/a/a/a0/k;)V
    return-void
  :L0
  .line 3
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string v0, "Attempted to set ShapeAppearanceModel on a MaterialButton which has an overwritten background."
    invoke-direct { p1, v0 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method setShouldDrawSurfaceColorStroke(Z)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/button/MaterialButton;->g()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->d:Lcom/google/android/material/button/a;
    invoke-virtual { v0, p1 }, Lcom/google/android/material/button/a;->z(Z)V
  :L0
    return-void
.end method

.method public setStrokeColor(Landroid/content/res/ColorStateList;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/button/MaterialButton;->g()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->d:Lcom/google/android/material/button/a;
    invoke-virtual { v0, p1 }, Lcom/google/android/material/button/a;->A(Landroid/content/res/ColorStateList;)V
  :L0
    return-void
.end method

.method public setStrokeColorResource(I)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/button/MaterialButton;->g()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/widget/Button;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-static { v0, p1 }, Lc/a/k/a/a;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    move-result-object p1
    invoke-virtual { p0, p1 }, Lcom/google/android/material/button/MaterialButton;->setStrokeColor(Landroid/content/res/ColorStateList;)V
  :L0
    return-void
.end method

.method public setStrokeWidth(I)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/button/MaterialButton;->g()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->d:Lcom/google/android/material/button/a;
    invoke-virtual { v0, p1 }, Lcom/google/android/material/button/a;->B(I)V
  :L0
    return-void
.end method

.method public setStrokeWidthResource(I)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/button/MaterialButton;->g()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    invoke-virtual { v0, p1 }, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    move-result p1
    invoke-virtual { p0, p1 }, Lcom/google/android/material/button/MaterialButton;->setStrokeWidth(I)V
  :L0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/button/MaterialButton;->g()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->d:Lcom/google/android/material/button/a;
    invoke-virtual { v0, p1 }, Lcom/google/android/material/button/a;->C(Landroid/content/res/ColorStateList;)V
    goto :L1
  :L0
  .line 3
    invoke-super { p0, p1 }, Landroidx/appcompat/widget/AppCompatButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
  :L1
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/button/MaterialButton;->g()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->d:Lcom/google/android/material/button/a;
    invoke-virtual { v0, p1 }, Lcom/google/android/material/button/a;->D(Landroid/graphics/PorterDuff$Mode;)V
    goto :L1
  :L0
  .line 3
    invoke-super { p0, p1 }, Landroidx/appcompat/widget/AppCompatButton;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
  :L1
    return-void
.end method

.method public toggle()V
  .registers 2
  .line 1
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->n:Z
    xor-int/lit8 v0, v0, 1
    invoke-virtual { p0, v0 }, Lcom/google/android/material/button/MaterialButton;->setChecked(Z)V
    return-void
.end method
