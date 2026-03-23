.class public Lcom/google/android/material/chip/Chip;
.super Landroidx/appcompat/widget/f;
.implements Lcom/google/android/material/chip/a$a;
.implements Ld/c/a/a/a0/n;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcom/google/android/material/chip/Chip$c;
  }
.end annotation

.field private final static u:I

.field private final static v:Landroid/graphics/Rect;

.field private final static w:[I

.field private final static x:[I

.field private e:Lcom/google/android/material/chip/a;

.field private f:Landroid/graphics/drawable/InsetDrawable;

.field private g:Landroid/graphics/drawable/RippleDrawable;

.field private h:Landroid/view/View$OnClickListener;

.field private i:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:I

.field private p:I

.field private final q:Lcom/google/android/material/chip/Chip$c;

.field private final r:Landroid/graphics/Rect;

.field private final s:Landroid/graphics/RectF;

.field private final t:Ld/c/a/a/x/f;

.method static constructor <clinit>()V
  .registers 4
  .line 1
    sget v0, Ld/c/a/a/j;->Widget_MaterialComponents_Chip_Action:I
    sput v0, Lcom/google/android/material/chip/Chip;->u:I
  .line 2
    new-instance v0, Landroid/graphics/Rect;
    invoke-direct { v0 }, Landroid/graphics/Rect;-><init>()V
    sput-object v0, Lcom/google/android/material/chip/Chip;->v:Landroid/graphics/Rect;
    const/4 v0, 1
    new-array v1, v0, [I
    const v2, 16842913
    const/4 v3, 0
    aput v2, v1, v3
  .line 3
    sput-object v1, Lcom/google/android/material/chip/Chip;->w:[I
    new-array v0, v0, [I
    const v1, 16842911
    aput v1, v0, v3
  .line 4
    sput-object v0, Lcom/google/android/material/chip/Chip;->x:[I
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 4
  .line 1
    sget v0, Ld/c/a/a/b;->chipStyle:I
    invoke-direct { p0, p1, p2, v0 }, Lcom/google/android/material/chip/Chip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .registers 11
  .line 2
    sget v0, Lcom/google/android/material/chip/Chip;->u:I
    invoke-static { p1, p2, p3, v0 }, Lcom/google/android/material/theme/a/a;->c(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;
    move-result-object p1
    invoke-direct { p0, p1, p2, p3 }, Landroidx/appcompat/widget/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .line 3
    new-instance p1, Landroid/graphics/Rect;
    invoke-direct { p1 }, Landroid/graphics/Rect;-><init>()V
    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->r:Landroid/graphics/Rect;
  .line 4
    new-instance p1, Landroid/graphics/RectF;
    invoke-direct { p1 }, Landroid/graphics/RectF;-><init>()V
    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->s:Landroid/graphics/RectF;
  .line 5
    new-instance p1, Lcom/google/android/material/chip/Chip$a;
    invoke-direct { p1, p0 }, Lcom/google/android/material/chip/Chip$a;-><init>(Lcom/google/android/material/chip/Chip;)V
    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->t:Ld/c/a/a/x/f;
  .line 6
    invoke-virtual { p0 }, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;
    move-result-object p1
  .line 7
    invoke-direct { p0, p2 }, Lcom/google/android/material/chip/Chip;->C(Landroid/util/AttributeSet;)V
  .line 8
    sget v0, Lcom/google/android/material/chip/Chip;->u:I
  .line 9
    invoke-static { p1, p2, p3, v0 }, Lcom/google/android/material/chip/a;->t0(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/chip/a;
    move-result-object v6
  .line 10
    invoke-direct { p0, p1, p2, p3 }, Lcom/google/android/material/chip/Chip;->o(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .line 11
    invoke-virtual { p0, v6 }, Lcom/google/android/material/chip/Chip;->setChipDrawable(Lcom/google/android/material/chip/a;)V
  .line 12
    invoke-static { p0 }, Landroidx/core/view/v;->w(Landroid/view/View;)F
    move-result v0
    invoke-virtual { v6, v0 }, Ld/c/a/a/a0/g;->V(F)V
  .line 13
    sget-object v2, Ld/c/a/a/k;->Chip:[I
    sget v4, Lcom/google/android/material/chip/Chip;->u:I
    const/4 v0, 0
    new-array v5, v0, [I
    move-object v0, p1
    move-object v1, p2
    move v3, p3
  .line 14
    invoke-static/range { v0 .. v5 }, Lcom/google/android/material/internal/j;->h(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;
    move-result-object p2
  .line 15
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v0, 23
    if-ge p3, v0, :L0
  .line 16
    sget p3, Ld/c/a/a/k;->Chip_android_textColor:I
  .line 17
    invoke-static { p1, p2, p3 }, Ld/c/a/a/x/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;
    move-result-object p1
  .line 18
    invoke-virtual { p0, p1 }, Landroid/widget/CheckBox;->setTextColor(Landroid/content/res/ColorStateList;)V
  :L0
  .line 19
    sget p1, Ld/c/a/a/k;->Chip_shapeAppearance:I
    invoke-virtual { p2, p1 }, Landroid/content/res/TypedArray;->hasValue(I)Z
    move-result p1
  .line 20
    invoke-virtual { p2 }, Landroid/content/res/TypedArray;->recycle()V
  .line 21
    new-instance p2, Lcom/google/android/material/chip/Chip$c;
    invoke-direct { p2, p0, p0 }, Lcom/google/android/material/chip/Chip$c;-><init>(Lcom/google/android/material/chip/Chip;Lcom/google/android/material/chip/Chip;)V
    iput-object p2, p0, Lcom/google/android/material/chip/Chip;->q:Lcom/google/android/material/chip/Chip$c;
  .line 22
    invoke-direct { p0 }, Lcom/google/android/material/chip/Chip;->x()V
    if-nez p1, :L1
  .line 23
    invoke-direct { p0 }, Lcom/google/android/material/chip/Chip;->p()V
  :L1
  .line 24
    iget-boolean p1, p0, Lcom/google/android/material/chip/Chip;->j:Z
    invoke-virtual { p0, p1 }, Lcom/google/android/material/chip/Chip;->setChecked(Z)V
  .line 25
    invoke-virtual { v6 }, Lcom/google/android/material/chip/a;->f1()Ljava/lang/CharSequence;
    move-result-object p1
    invoke-virtual { p0, p1 }, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V
  .line 26
    invoke-virtual { v6 }, Lcom/google/android/material/chip/a;->Z0()Landroid/text/TextUtils$TruncateAt;
    move-result-object p1
    invoke-virtual { p0, p1 }, Lcom/google/android/material/chip/Chip;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
  .line 27
    invoke-direct { p0 }, Lcom/google/android/material/chip/Chip;->B()V
  .line 28
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    invoke-virtual { p1 }, Lcom/google/android/material/chip/a;->J2()Z
    move-result p1
    if-nez p1, :L2
    const/4 p1, 1
  .line 29
    invoke-virtual { p0, p1 }, Lcom/google/android/material/chip/Chip;->setLines(I)V
  .line 30
    invoke-virtual { p0, p1 }, Landroid/widget/CheckBox;->setHorizontallyScrolling(Z)V
  :L2
    const p1, 8388627
  .line 31
    invoke-virtual { p0, p1 }, Lcom/google/android/material/chip/Chip;->setGravity(I)V
  .line 32
    invoke-direct { p0 }, Lcom/google/android/material/chip/Chip;->A()V
  .line 33
    invoke-virtual { p0 }, Lcom/google/android/material/chip/Chip;->v()Z
    move-result p1
    if-eqz p1, :L3
  .line 34
    iget p1, p0, Lcom/google/android/material/chip/Chip;->p:I
    invoke-virtual { p0, p1 }, Landroid/widget/CheckBox;->setMinHeight(I)V
  :L3
  .line 35
    invoke-static { p0 }, Landroidx/core/view/v;->C(Landroid/view/View;)I
    move-result p1
    iput p1, p0, Lcom/google/android/material/chip/Chip;->o:I
    return-void
.end method

.method private A()V
  .registers 5
  .line 1
    invoke-virtual { p0 }, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;
    move-result-object v0
    invoke-static { v0 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    if-nez v0, :L2
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-nez v0, :L0
    goto :L2
  :L0
  .line 2
    invoke-virtual { v0 }, Lcom/google/android/material/chip/a;->H0()F
    move-result v0
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
  .line 3
    invoke-virtual { v1 }, Lcom/google/android/material/chip/a;->h1()F
    move-result v1
    add-float/2addr v0, v1
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
  .line 4
    invoke-virtual { v1 }, Lcom/google/android/material/chip/a;->o0()F
    move-result v1
    add-float/2addr v0, v1
    float-to-int v0, v0
  .line 5
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
  .line 6
    invoke-virtual { v1 }, Lcom/google/android/material/chip/a;->M0()F
    move-result v1
    iget-object v2, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
  .line 7
    invoke-virtual { v2 }, Lcom/google/android/material/chip/a;->i1()F
    move-result v2
    add-float/2addr v1, v2
    iget-object v2, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
  .line 8
    invoke-virtual { v2 }, Lcom/google/android/material/chip/a;->k0()F
    move-result v2
    add-float/2addr v1, v2
    float-to-int v1, v1
  .line 9
    iget-object v2, p0, Lcom/google/android/material/chip/Chip;->f:Landroid/graphics/drawable/InsetDrawable;
    if-eqz v2, :L1
  .line 10
    new-instance v2, Landroid/graphics/Rect;
    invoke-direct { v2 }, Landroid/graphics/Rect;-><init>()V
  .line 11
    iget-object v3, p0, Lcom/google/android/material/chip/Chip;->f:Landroid/graphics/drawable/InsetDrawable;
    invoke-virtual { v3, v2 }, Landroid/graphics/drawable/InsetDrawable;->getPadding(Landroid/graphics/Rect;)Z
  .line 12
    iget v3, v2, Landroid/graphics/Rect;->left:I
    add-int/2addr v1, v3
  .line 13
    iget v2, v2, Landroid/graphics/Rect;->right:I
    add-int/2addr v0, v2
  :L1
  .line 14
    invoke-virtual { p0 }, Landroid/widget/CheckBox;->getPaddingTop()I
    move-result v2
    invoke-virtual { p0 }, Landroid/widget/CheckBox;->getPaddingBottom()I
    move-result v3
  .line 15
    invoke-static { p0, v1, v2, v0, v3 }, Landroidx/core/view/v;->A0(Landroid/view/View;IIII)V
  :L2
    return-void
.end method

.method private B()V
  .registers 5
  .line 1
    invoke-virtual { p0 }, Landroid/widget/CheckBox;->getPaint()Landroid/text/TextPaint;
    move-result-object v0
  .line 2
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v1, :L0
  .line 3
    invoke-virtual { v1 }, Landroid/graphics/drawable/Drawable;->getState()[I
    move-result-object v1
    iput-object v1, v0, Landroid/text/TextPaint;->drawableState:[I
  :L0
  .line 4
    invoke-direct { p0 }, Lcom/google/android/material/chip/Chip;->getTextAppearance()Ld/c/a/a/x/d;
    move-result-object v1
    if-eqz v1, :L1
  .line 5
    invoke-virtual { p0 }, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;
    move-result-object v2
    iget-object v3, p0, Lcom/google/android/material/chip/Chip;->t:Ld/c/a/a/x/f;
    invoke-virtual { v1, v2, v0, v3 }, Ld/c/a/a/x/d;->j(Landroid/content/Context;Landroid/text/TextPaint;Ld/c/a/a/x/f;)V
  :L1
    return-void
.end method

.method private C(Landroid/util/AttributeSet;)V
  .registers 5
    if-nez p1, :L0
    return-void
  :L0
    const-string v0, "http://schemas.android.com/apk/res/android"
    const-string v1, "background"
  .line 1
    invoke-interface { p1, v0, v1 }, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    const-string v1, "drawableLeft"
  .line 2
    invoke-interface { p1, v0, v1 }, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    if-nez v1, :L5
    const-string v1, "drawableStart"
  .line 3
    invoke-interface { p1, v0, v1 }, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    if-nez v1, :L4
    const-string v1, "drawableEnd"
  .line 4
    invoke-interface { p1, v0, v1 }, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    const-string v2, "Please set end drawable using R.attr#closeIcon."
    if-nez v1, :L3
    const-string v1, "drawableRight"
  .line 5
    invoke-interface { p1, v0, v1 }, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    if-nez v1, :L2
    const-string v1, "singleLine"
    const/4 v2, 1
  .line 6
    invoke-interface { p1, v0, v1, v2 }, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z
    move-result v1
    if-eqz v1, :L1
    const-string v1, "lines"
  .line 7
    invoke-interface { p1, v0, v1, v2 }, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I
    move-result v1
    if-ne v1, v2, :L1
    const-string v1, "minLines"
  .line 8
    invoke-interface { p1, v0, v1, v2 }, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I
    move-result v1
    if-ne v1, v2, :L1
    const-string v1, "maxLines"
  .line 9
    invoke-interface { p1, v0, v1, v2 }, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I
    move-result v1
    if-ne v1, v2, :L1
    const-string v1, "gravity"
    const v2, 8388627
  .line 10
    invoke-interface { p1, v0, v1, v2 }, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I
    move-result p1
    return-void
  :L1
  .line 11
    new-instance p1, Ljava/lang/UnsupportedOperationException;
    const-string v0, "Chip does not support multi-line text"
    invoke-direct { p1, v0 }, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
    throw p1
  :L2
  .line 12
    new-instance p1, Ljava/lang/UnsupportedOperationException;
    invoke-direct { p1, v2 }, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
    throw p1
  :L3
  .line 13
    new-instance p1, Ljava/lang/UnsupportedOperationException;
    invoke-direct { p1, v2 }, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
    throw p1
  :L4
  .line 14
    new-instance p1, Ljava/lang/UnsupportedOperationException;
    const-string v0, "Please set start drawable using R.attr#chipIcon."
    invoke-direct { p1, v0 }, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
    throw p1
  :L5
  .line 15
    new-instance p1, Ljava/lang/UnsupportedOperationException;
    const-string v0, "Please set left drawable using R.attr#chipIcon."
    invoke-direct { p1, v0 }, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method static synthetic b(Lcom/google/android/material/chip/Chip;)Lcom/google/android/material/chip/a;
  .registers 1
  .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    return-object p0
.end method

.method static synthetic c(Lcom/google/android/material/chip/Chip;)Z
  .registers 1
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/chip/Chip;->n()Z
    move-result p0
    return p0
.end method

.method static synthetic d(Lcom/google/android/material/chip/Chip;)Landroid/graphics/RectF;
  .registers 1
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;
    move-result-object p0
    return-object p0
.end method

.method static synthetic e(Lcom/google/android/material/chip/Chip;)Landroid/view/View$OnClickListener;
  .registers 1
  .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->h:Landroid/view/View$OnClickListener;
    return-object p0
.end method

.method static synthetic f(Lcom/google/android/material/chip/Chip;Z)Z
  .registers 2
  .line 1
    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->m:Z
    return p1
.end method

.method static synthetic g(Lcom/google/android/material/chip/Chip;)Landroid/graphics/Rect;
  .registers 1
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBoundsInt()Landroid/graphics/Rect;
    move-result-object p0
    return-object p0
.end method

.method private getCloseIconTouchBounds()Landroid/graphics/RectF;
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->s:Landroid/graphics/RectF;
    invoke-virtual { v0 }, Landroid/graphics/RectF;->setEmpty()V
  .line 2
    invoke-direct { p0 }, Lcom/google/android/material/chip/Chip;->n()Z
    move-result v0
    if-eqz v0, :L0
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Landroid/view/View$OnClickListener;
    if-eqz v0, :L0
  .line 3
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->s:Landroid/graphics/RectF;
    invoke-virtual { v0, v1 }, Lcom/google/android/material/chip/a;->W0(Landroid/graphics/RectF;)V
  :L0
  .line 4
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->s:Landroid/graphics/RectF;
    return-object v0
.end method

.method private getCloseIconTouchBoundsInt()Landroid/graphics/Rect;
  .registers 6
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;
    move-result-object v0
  .line 2
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->r:Landroid/graphics/Rect;
    iget v2, v0, Landroid/graphics/RectF;->left:F
    float-to-int v2, v2
    iget v3, v0, Landroid/graphics/RectF;->top:F
    float-to-int v3, v3
    iget v4, v0, Landroid/graphics/RectF;->right:F
    float-to-int v4, v4
    iget v0, v0, Landroid/graphics/RectF;->bottom:F
    float-to-int v0, v0
    invoke-virtual { v1, v2, v3, v4, v0 }, Landroid/graphics/Rect;->set(IIII)V
  .line 3
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->r:Landroid/graphics/Rect;
    return-object v0
.end method

.method private getTextAppearance()Ld/c/a/a/x/d;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Lcom/google/android/material/chip/a;->g1()Ld/c/a/a/x/d;
    move-result-object v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return-object v0
.end method

.method static synthetic h()Landroid/graphics/Rect;
  .registers 2
  .line 1
    sget-object v0, Lcom/google/android/material/chip/Chip;->v:Landroid/graphics/Rect;
    return-object v0
.end method

.method private i(Lcom/google/android/material/chip/a;)V
  .registers 2
  .line 1
    invoke-virtual { p1, p0 }, Lcom/google/android/material/chip/a;->n2(Lcom/google/android/material/chip/a$a;)V
    return-void
.end method

.method private j()[I
  .registers 5
  .line 1
    invoke-virtual { p0 }, Landroid/widget/CheckBox;->isEnabled()Z
    move-result v0
    const/4 v1, 0
    const/4 v2, 1
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
  .line 2
    iget-boolean v3, p0, Lcom/google/android/material/chip/Chip;->m:Z
    if-eqz v3, :L2
    add-int/lit8 v0, v0, 1
  :L2
  .line 3
    iget-boolean v3, p0, Lcom/google/android/material/chip/Chip;->l:Z
    if-eqz v3, :L3
    add-int/lit8 v0, v0, 1
  :L3
  .line 4
    iget-boolean v3, p0, Lcom/google/android/material/chip/Chip;->k:Z
    if-eqz v3, :L4
    add-int/lit8 v0, v0, 1
  :L4
  .line 5
    invoke-virtual { p0 }, Landroid/widget/CheckBox;->isChecked()Z
    move-result v3
    if-eqz v3, :L5
    add-int/lit8 v0, v0, 1
  :L5
  .line 6
    new-array v0, v0, [I
  .line 7
    invoke-virtual { p0 }, Landroid/widget/CheckBox;->isEnabled()Z
    move-result v3
    if-eqz v3, :L6
    const v3, 16842910
  .line 8
    aput v3, v0, v1
    const/4 v1, 1
  :L6
  .line 9
    iget-boolean v2, p0, Lcom/google/android/material/chip/Chip;->m:Z
    if-eqz v2, :L7
    const v2, 16842908
  .line 10
    aput v2, v0, v1
    add-int/lit8 v1, v1, 1
  :L7
  .line 11
    iget-boolean v2, p0, Lcom/google/android/material/chip/Chip;->l:Z
    if-eqz v2, :L8
    const v2, 16843623
  .line 12
    aput v2, v0, v1
    add-int/lit8 v1, v1, 1
  :L8
  .line 13
    iget-boolean v2, p0, Lcom/google/android/material/chip/Chip;->k:Z
    if-eqz v2, :L9
    const v2, 16842919
  .line 14
    aput v2, v0, v1
    add-int/lit8 v1, v1, 1
  :L9
  .line 15
    invoke-virtual { p0 }, Landroid/widget/CheckBox;->isChecked()Z
    move-result v2
    if-eqz v2, :L10
    const v2, 16842913
  .line 16
    aput v2, v0, v1
  :L10
    return-object v0
.end method

.method private l()V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Lcom/google/android/material/chip/Chip;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->f:Landroid/graphics/drawable/InsetDrawable;
    if-ne v0, v1, :L0
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;
    move-result-object v0
    if-nez v0, :L0
  .line 2
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->f:Landroid/graphics/drawable/InsetDrawable;
    invoke-virtual { v0, v1 }, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
  :L0
    return-void
.end method

.method private m(Landroid/view/MotionEvent;)Z
  .annotation build Landroid/annotation/SuppressLint;
    value = {
      "PrivateApi"
    }
  .end annotation
  .catch Ljava/lang/NoSuchMethodException; { :L0 .. :L1 } :L2
  .catch Ljava/lang/IllegalAccessException; { :L0 .. :L1 } :L2
  .catch Ljava/lang/reflect/InvocationTargetException; { :L0 .. :L1 } :L2
  .catch Ljava/lang/NoSuchFieldException; { :L0 .. :L1 } :L2
  .registers 8
  .line 1
    const-class v0, Lc/i/b/a;
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getAction()I
    move-result p1
    const/4 v1, 0
    const/16 v2, 10
    if-ne p1, v2, :L2
  :L0
    const-string p1, "m"
  .line 2
    invoke-virtual { v0, p1 }, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    move-result-object p1
    const/4 v2, 1
  .line 3
    invoke-virtual { p1, v2 }, Ljava/lang/reflect/Field;->setAccessible(Z)V
  .line 4
    iget-object v3, p0, Lcom/google/android/material/chip/Chip;->q:Lcom/google/android/material/chip/Chip$c;
    invoke-virtual { p1, v3 }, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Ljava/lang/Integer;
    invoke-virtual { p1 }, Ljava/lang/Integer;->intValue()I
    move-result p1
    const/high16 v3, -32768
    if-eq p1, v3, :L2
    const-string p1, "V"
    new-array v4, v2, [Ljava/lang/Class;
  .line 5
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    aput-object v5, v4, v1
  .line 6
    invoke-virtual { v0, p1, v4 }, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object p1
  .line 7
    invoke-virtual { p1, v2 }, Ljava/lang/reflect/Method;->setAccessible(Z)V
  .line 8
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->q:Lcom/google/android/material/chip/Chip$c;
    new-array v4, v2, [Ljava/lang/Object;
    invoke-static { v3 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v3
    aput-object v3, v4, v1
    invoke-virtual { p1, v0, v4 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
  :L1
    return v2
  :L2
    return v1
.end method

.method private n()Z
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Lcom/google/android/material/chip/a;->P0()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method private o(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .registers 11
  .line 1
    sget-object v2, Ld/c/a/a/k;->Chip:[I
    sget v4, Lcom/google/android/material/chip/Chip;->u:I
    const/4 v6, 0
    new-array v5, v6, [I
    move-object v0, p1
    move-object v1, p2
    move v3, p3
  .line 2
    invoke-static/range { v0 .. v5 }, Lcom/google/android/material/internal/j;->h(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;
    move-result-object p1
  .line 3
    sget p2, Ld/c/a/a/k;->Chip_ensureMinTouchTargetSize:I
    invoke-virtual { p1, p2, v6 }, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    move-result p2
    iput-boolean p2, p0, Lcom/google/android/material/chip/Chip;->n:Z
  .line 4
    invoke-virtual { p0 }, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;
    move-result-object p2
    const/16 p3, 48
    invoke-static { p2, p3 }, Lcom/google/android/material/internal/l;->b(Landroid/content/Context;I)F
    move-result p2
    float-to-double p2, p2
    invoke-static { p2, p3 }, Ljava/lang/Math;->ceil(D)D
    move-result-wide p2
    double-to-float p2, p2
  .line 5
    sget p3, Ld/c/a/a/k;->Chip_chipMinTouchTargetSize:I
  .line 6
    invoke-virtual { p1, p3, p2 }, Landroid/content/res/TypedArray;->getDimension(IF)F
    move-result p2
    float-to-double p2, p2
  .line 7
    invoke-static { p2, p3 }, Ljava/lang/Math;->ceil(D)D
    move-result-wide p2
    double-to-int p2, p2
    iput p2, p0, Lcom/google/android/material/chip/Chip;->p:I
  .line 8
    invoke-virtual { p1 }, Landroid/content/res/TypedArray;->recycle()V
    return-void
.end method

.method private p()V
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L0
  .line 2
    new-instance v0, Lcom/google/android/material/chip/Chip$b;
    invoke-direct { v0, p0 }, Lcom/google/android/material/chip/Chip$b;-><init>(Lcom/google/android/material/chip/Chip;)V
    invoke-virtual { p0, v0 }, Landroid/widget/CheckBox;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V
  :L0
    return-void
.end method

.method private q(IIII)V
  .registers 12
  .line 1
    new-instance v6, Landroid/graphics/drawable/InsetDrawable;
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    move-object v0, v6
    move v2, p1
    move v3, p2
    move v4, p3
    move v5, p4
    invoke-direct/range { v0 .. v5 }, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V
    iput-object v6, p0, Lcom/google/android/material/chip/Chip;->f:Landroid/graphics/drawable/InsetDrawable;
    return-void
.end method

.method private setCloseIconHovered(Z)V
  .registers 3
  .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->l:Z
    if-eq v0, p1, :L0
  .line 2
    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->l:Z
  .line 3
    invoke-virtual { p0 }, Landroid/widget/CheckBox;->refreshDrawableState()V
  :L0
    return-void
.end method

.method private setCloseIconPressed(Z)V
  .registers 3
  .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->k:Z
    if-eq v0, p1, :L0
  .line 2
    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->k:Z
  .line 3
    invoke-virtual { p0 }, Landroid/widget/CheckBox;->refreshDrawableState()V
  :L0
    return-void
.end method

.method private u()V
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->f:Landroid/graphics/drawable/InsetDrawable;
    if-eqz v0, :L0
    const/4 v0, 0
  .line 2
    iput-object v0, p0, Lcom/google/android/material/chip/Chip;->f:Landroid/graphics/drawable/InsetDrawable;
    const/4 v0, 0
  .line 3
    invoke-virtual { p0, v0 }, Landroid/widget/CheckBox;->setMinWidth(I)V
  .line 4
    invoke-virtual { p0 }, Lcom/google/android/material/chip/Chip;->getChipMinHeight()F
    move-result v0
    float-to-int v0, v0
    invoke-virtual { p0, v0 }, Landroid/widget/CheckBox;->setMinHeight(I)V
  .line 5
    invoke-direct { p0 }, Lcom/google/android/material/chip/Chip;->y()V
  :L0
    return-void
.end method

.method private w(Lcom/google/android/material/chip/a;)V
  .registers 3
    if-eqz p1, :L0
    const/4 v0, 0
  .line 1
    invoke-virtual { p1, v0 }, Lcom/google/android/material/chip/a;->n2(Lcom/google/android/material/chip/a$a;)V
  :L0
    return-void
.end method

.method private x()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/chip/Chip;->n()Z
    move-result v0
    if-eqz v0, :L0
    invoke-virtual { p0 }, Lcom/google/android/material/chip/Chip;->s()Z
    move-result v0
    if-eqz v0, :L0
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Landroid/view/View$OnClickListener;
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->q:Lcom/google/android/material/chip/Chip$c;
    invoke-static { p0, v0 }, Landroidx/core/view/v;->o0(Landroid/view/View;Landroidx/core/view/a;)V
    goto :L1
  :L0
    const/4 v0, 0
  .line 3
    invoke-static { p0, v0 }, Landroidx/core/view/v;->o0(Landroid/view/View;Landroidx/core/view/a;)V
  :L1
    return-void
.end method

.method private y()V
  .registers 3
  .line 1
    sget-boolean v0, Ld/c/a/a/y/b;->a:Z
    if-eqz v0, :L0
  .line 2
    invoke-direct { p0 }, Lcom/google/android/material/chip/Chip;->z()V
    goto :L1
  :L0
  .line 3
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    const/4 v1, 1
    invoke-virtual { v0, v1 }, Lcom/google/android/material/chip/a;->I2(Z)V
  .line 4
    invoke-virtual { p0 }, Lcom/google/android/material/chip/Chip;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    invoke-static { p0, v0 }, Landroidx/core/view/v;->r0(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
  .line 5
    invoke-direct { p0 }, Lcom/google/android/material/chip/Chip;->A()V
  .line 6
    invoke-direct { p0 }, Lcom/google/android/material/chip/Chip;->l()V
  :L1
    return-void
.end method

.method private z()V
  .registers 5
  .line 1
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
  .line 2
    invoke-virtual { v1 }, Lcom/google/android/material/chip/a;->d1()Landroid/content/res/ColorStateList;
    move-result-object v1
    invoke-static { v1 }, Ld/c/a/a/y/b;->a(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    move-result-object v1
  .line 3
    invoke-virtual { p0 }, Lcom/google/android/material/chip/Chip;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    move-result-object v2
    const/4 v3, 0
    invoke-direct { v0, v1, v2, v3 }, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    iput-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Landroid/graphics/drawable/RippleDrawable;
  .line 4
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Lcom/google/android/material/chip/a;->I2(Z)V
  .line 5
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Landroid/graphics/drawable/RippleDrawable;
    invoke-static { p0, v0 }, Landroidx/core/view/v;->r0(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
  .line 6
    invoke-direct { p0 }, Lcom/google/android/material/chip/Chip;->A()V
    return-void
.end method

.method public a()V
  .registers 3
  .line 1
    iget v0, p0, Lcom/google/android/material/chip/Chip;->p:I
    invoke-virtual { p0, v0 }, Lcom/google/android/material/chip/Chip;->k(I)Z
  .line 2
    invoke-virtual { p0 }, Landroid/widget/CheckBox;->requestLayout()V
  .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L0
  .line 4
    invoke-virtual { p0 }, Landroid/widget/CheckBox;->invalidateOutline()V
  :L0
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
  .registers 3
  .line 1
    invoke-direct { p0, p1 }, Lcom/google/android/material/chip/Chip;->m(Landroid/view/MotionEvent;)Z
    move-result v0
    if-nez v0, :L1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->q:Lcom/google/android/material/chip/Chip$c;
  .line 2
    invoke-virtual { v0, p1 }, Lc/i/b/a;->v(Landroid/view/MotionEvent;)Z
    move-result v0
    if-nez v0, :L1
  .line 3
    invoke-super { p0, p1 }, Landroid/widget/CheckBox;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    move-result p1
    if-eqz p1, :L0
    goto :L1
  :L0
    const/4 p1, 0
    goto :L2
  :L1
    const/4 p1, 1
  :L2
    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->q:Lcom/google/android/material/chip/Chip$c;
    invoke-virtual { v0, p1 }, Lc/i/b/a;->w(Landroid/view/KeyEvent;)Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->q:Lcom/google/android/material/chip/Chip$c;
  .line 3
    invoke-virtual { v0 }, Lc/i/b/a;->A()I
    move-result v0
    const/high16 v1, -32768
    if-eq v0, v1, :L0
    const/4 p1, 1
    return p1
  :L0
  .line 4
    invoke-super { p0, p1 }, Landroid/widget/CheckBox;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    move-result p1
    return p1
.end method

.method protected drawableStateChanged()V
  .registers 3
  .line 1
    invoke-super { p0 }, Landroidx/appcompat/widget/f;->drawableStateChanged()V
  .line 2
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Lcom/google/android/material/chip/a;->n1()Z
    move-result v0
    if-eqz v0, :L0
  .line 3
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    invoke-direct { p0 }, Lcom/google/android/material/chip/Chip;->j()[I
    move-result-object v1
    invoke-virtual { v0, v1 }, Lcom/google/android/material/chip/a;->j2([I)Z
    move-result v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    if-eqz v0, :L2
  .line 4
    invoke-virtual { p0 }, Landroid/widget/CheckBox;->invalidate()V
  :L2
    return-void
.end method

.method public getBackgroundDrawable()Landroid/graphics/drawable/Drawable;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->f:Landroid/graphics/drawable/InsetDrawable;
    if-nez v0, :L0
  .line 2
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
  :L0
    return-object v0
.end method

.method public getCheckedIcon()Landroid/graphics/drawable/Drawable;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Lcom/google/android/material/chip/a;->D0()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return-object v0
.end method

.method public getCheckedIconTint()Landroid/content/res/ColorStateList;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Lcom/google/android/material/chip/a;->E0()Landroid/content/res/ColorStateList;
    move-result-object v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return-object v0
.end method

.method public getChipBackgroundColor()Landroid/content/res/ColorStateList;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Lcom/google/android/material/chip/a;->F0()Landroid/content/res/ColorStateList;
    move-result-object v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return-object v0
.end method

.method public getChipCornerRadius()F
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    const/4 v1, 0
    if-eqz v0, :L0
    invoke-virtual { v0 }, Lcom/google/android/material/chip/a;->G0()F
    move-result v0
    invoke-static { v1, v0 }, Ljava/lang/Math;->max(FF)F
    move-result v1
  :L0
    return v1
.end method

.method public getChipDrawable()Landroid/graphics/drawable/Drawable;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    return-object v0
.end method

.method public getChipEndPadding()F
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Lcom/google/android/material/chip/a;->H0()F
    move-result v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public getChipIcon()Landroid/graphics/drawable/Drawable;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Lcom/google/android/material/chip/a;->I0()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return-object v0
.end method

.method public getChipIconSize()F
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Lcom/google/android/material/chip/a;->J0()F
    move-result v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public getChipIconTint()Landroid/content/res/ColorStateList;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Lcom/google/android/material/chip/a;->K0()Landroid/content/res/ColorStateList;
    move-result-object v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return-object v0
.end method

.method public getChipMinHeight()F
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Lcom/google/android/material/chip/a;->L0()F
    move-result v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public getChipStartPadding()F
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Lcom/google/android/material/chip/a;->M0()F
    move-result v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public getChipStrokeColor()Landroid/content/res/ColorStateList;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Lcom/google/android/material/chip/a;->N0()Landroid/content/res/ColorStateList;
    move-result-object v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return-object v0
.end method

.method public getChipStrokeWidth()F
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Lcom/google/android/material/chip/a;->O0()F
    move-result v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public getChipText()Ljava/lang/CharSequence;
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;
    move-result-object v0
    return-object v0
.end method

.method public getCloseIcon()Landroid/graphics/drawable/Drawable;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Lcom/google/android/material/chip/a;->P0()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return-object v0
.end method

.method public getCloseIconContentDescription()Ljava/lang/CharSequence;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Lcom/google/android/material/chip/a;->Q0()Ljava/lang/CharSequence;
    move-result-object v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return-object v0
.end method

.method public getCloseIconEndPadding()F
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Lcom/google/android/material/chip/a;->R0()F
    move-result v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public getCloseIconSize()F
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Lcom/google/android/material/chip/a;->S0()F
    move-result v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public getCloseIconStartPadding()F
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Lcom/google/android/material/chip/a;->T0()F
    move-result v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public getCloseIconTint()Landroid/content/res/ColorStateList;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Lcom/google/android/material/chip/a;->V0()Landroid/content/res/ColorStateList;
    move-result-object v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return-object v0
.end method

.method public getEllipsize()Landroid/text/TextUtils$TruncateAt;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Lcom/google/android/material/chip/a;->Z0()Landroid/text/TextUtils$TruncateAt;
    move-result-object v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->q:Lcom/google/android/material/chip/Chip$c;
    invoke-virtual { v0 }, Lc/i/b/a;->A()I
    move-result v0
    const/4 v1, 1
    if-eq v0, v1, :L1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->q:Lcom/google/android/material/chip/Chip$c;
  .line 2
    invoke-virtual { v0 }, Lc/i/b/a;->x()I
    move-result v0
    if-ne v0, v1, :L0
    goto :L1
  :L0
  .line 3
    invoke-super { p0, p1 }, Landroid/widget/CheckBox;->getFocusedRect(Landroid/graphics/Rect;)V
    goto :L2
  :L1
  .line 4
    invoke-direct { p0 }, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBoundsInt()Landroid/graphics/Rect;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
  :L2
    return-void
.end method

.method public getHideMotionSpec()Ld/c/a/a/l/h;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Lcom/google/android/material/chip/a;->a1()Ld/c/a/a/l/h;
    move-result-object v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return-object v0
.end method

.method public getIconEndPadding()F
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Lcom/google/android/material/chip/a;->b1()F
    move-result v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public getIconStartPadding()F
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Lcom/google/android/material/chip/a;->c1()F
    move-result v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public getRippleColor()Landroid/content/res/ColorStateList;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Lcom/google/android/material/chip/a;->d1()Landroid/content/res/ColorStateList;
    move-result-object v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return-object v0
.end method

.method public getShapeAppearanceModel()Ld/c/a/a/a0/k;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    invoke-virtual { v0 }, Ld/c/a/a/a0/g;->C()Ld/c/a/a/a0/k;
    move-result-object v0
    return-object v0
.end method

.method public getShowMotionSpec()Ld/c/a/a/l/h;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Lcom/google/android/material/chip/a;->e1()Ld/c/a/a/l/h;
    move-result-object v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return-object v0
.end method

.method public getTextEndPadding()F
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Lcom/google/android/material/chip/a;->h1()F
    move-result v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public getTextStartPadding()F
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Lcom/google/android/material/chip/a;->i1()F
    move-result v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public k(I)Z
  .registers 7
  .line 1
    iput p1, p0, Lcom/google/android/material/chip/Chip;->p:I
  .line 2
    invoke-virtual { p0 }, Lcom/google/android/material/chip/Chip;->v()Z
    move-result v0
    const/4 v1, 0
    if-nez v0, :L2
  .line 3
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->f:Landroid/graphics/drawable/InsetDrawable;
    if-eqz p1, :L0
  .line 4
    invoke-direct { p0 }, Lcom/google/android/material/chip/Chip;->u()V
    goto :L1
  :L0
  .line 5
    invoke-direct { p0 }, Lcom/google/android/material/chip/Chip;->y()V
  :L1
    return v1
  :L2
  .line 6
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    invoke-virtual { v0 }, Lcom/google/android/material/chip/a;->getIntrinsicHeight()I
    move-result v0
    sub-int v0, p1, v0
    invoke-static { v1, v0 }, Ljava/lang/Math;->max(II)I
    move-result v0
  .line 7
    iget-object v2, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    invoke-virtual { v2 }, Lcom/google/android/material/chip/a;->getIntrinsicWidth()I
    move-result v2
    sub-int v2, p1, v2
    invoke-static { v1, v2 }, Ljava/lang/Math;->max(II)I
    move-result v2
    if-gtz v2, :L5
    if-gtz v0, :L5
  .line 8
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->f:Landroid/graphics/drawable/InsetDrawable;
    if-eqz p1, :L3
  .line 9
    invoke-direct { p0 }, Lcom/google/android/material/chip/Chip;->u()V
    goto :L4
  :L3
  .line 10
    invoke-direct { p0 }, Lcom/google/android/material/chip/Chip;->y()V
  :L4
    return v1
  :L5
    if-lez v2, :L6
  .line 11
    div-int/lit8 v2, v2, 2
    goto :L7
  :L6
    const/4 v2, 0
  :L7
    if-lez v0, :L8
  .line 12
    div-int/lit8 v1, v0, 2
  :L8
  .line 13
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->f:Landroid/graphics/drawable/InsetDrawable;
    const/4 v3, 1
    if-eqz v0, :L9
  .line 14
    new-instance v0, Landroid/graphics/Rect;
    invoke-direct { v0 }, Landroid/graphics/Rect;-><init>()V
  .line 15
    iget-object v4, p0, Lcom/google/android/material/chip/Chip;->f:Landroid/graphics/drawable/InsetDrawable;
    invoke-virtual { v4, v0 }, Landroid/graphics/drawable/InsetDrawable;->getPadding(Landroid/graphics/Rect;)Z
  .line 16
    iget v4, v0, Landroid/graphics/Rect;->top:I
    if-ne v4, v1, :L9
    iget v4, v0, Landroid/graphics/Rect;->bottom:I
    if-ne v4, v1, :L9
    iget v4, v0, Landroid/graphics/Rect;->left:I
    if-ne v4, v2, :L9
    iget v0, v0, Landroid/graphics/Rect;->right:I
    if-ne v0, v2, :L9
  .line 17
    invoke-direct { p0 }, Lcom/google/android/material/chip/Chip;->y()V
    return v3
  :L9
  .line 18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v4, 16
    if-lt v0, v4, :L11
  .line 19
    invoke-virtual { p0 }, Landroid/widget/CheckBox;->getMinHeight()I
    move-result v0
    if-eq v0, p1, :L10
  .line 20
    invoke-virtual { p0, p1 }, Landroid/widget/CheckBox;->setMinHeight(I)V
  :L10
  .line 21
    invoke-virtual { p0 }, Landroid/widget/CheckBox;->getMinWidth()I
    move-result v0
    if-eq v0, p1, :L12
  .line 22
    invoke-virtual { p0, p1 }, Landroid/widget/CheckBox;->setMinWidth(I)V
    goto :L12
  :L11
  .line 23
    invoke-virtual { p0, p1 }, Landroid/widget/CheckBox;->setMinHeight(I)V
  .line 24
    invoke-virtual { p0, p1 }, Landroid/widget/CheckBox;->setMinWidth(I)V
  :L12
  .line 25
    invoke-direct { p0, v2, v1, v2, v1 }, Lcom/google/android/material/chip/Chip;->q(IIII)V
  .line 26
    invoke-direct { p0 }, Lcom/google/android/material/chip/Chip;->y()V
    return v3
.end method

.method protected onAttachedToWindow()V
  .registers 2
  .line 1
    invoke-super { p0 }, Landroid/widget/CheckBox;->onAttachedToWindow()V
  .line 2
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    invoke-static { p0, v0 }, Ld/c/a/a/a0/h;->f(Landroid/view/View;Ld/c/a/a/a0/g;)V
    return-void
.end method

.method protected onCreateDrawableState(I)[I
  .registers 3
    add-int/lit8 p1, p1, 2
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/CheckBox;->onCreateDrawableState(I)[I
    move-result-object p1
  .line 2
    invoke-virtual { p0 }, Landroid/widget/CheckBox;->isChecked()Z
    move-result v0
    if-eqz v0, :L0
  .line 3
    sget-object v0, Lcom/google/android/material/chip/Chip;->w:[I
    invoke-static { p1, v0 }, Landroid/widget/CheckBox;->mergeDrawableStates([I[I)[I
  :L0
  .line 4
    invoke-virtual { p0 }, Lcom/google/android/material/chip/Chip;->r()Z
    move-result v0
    if-eqz v0, :L1
  .line 5
    sget-object v0, Lcom/google/android/material/chip/Chip;->x:[I
    invoke-static { p1, v0 }, Landroid/widget/CheckBox;->mergeDrawableStates([I[I)[I
  :L1
    return-object p1
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
  .registers 5
  .line 1
    invoke-super { p0, p1, p2, p3 }, Landroid/widget/CheckBox;->onFocusChanged(ZILandroid/graphics/Rect;)V
  .line 2
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->q:Lcom/google/android/material/chip/Chip$c;
    invoke-virtual { v0, p1, p2, p3 }, Lc/i/b/a;->I(ZILandroid/graphics/Rect;)V
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
  .registers 5
  .line 1
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getActionMasked()I
    move-result v0
    const/4 v1, 7
    if-eq v0, v1, :L1
    const/16 v1, 10
    if-eq v0, v1, :L0
    goto :L2
  :L0
    const/4 v0, 0
  .line 2
    invoke-direct { p0, v0 }, Lcom/google/android/material/chip/Chip;->setCloseIconHovered(Z)V
    goto :L2
  :L1
  .line 3
    invoke-direct { p0 }, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;
    move-result-object v0
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getX()F
    move-result v1
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getY()F
    move-result v2
    invoke-virtual { v0, v1, v2 }, Landroid/graphics/RectF;->contains(FF)Z
    move-result v0
    invoke-direct { p0, v0 }, Lcom/google/android/material/chip/Chip;->setCloseIconHovered(Z)V
  :L2
  .line 4
    invoke-super { p0, p1 }, Landroid/widget/CheckBox;->onHoverEvent(Landroid/view/MotionEvent;)Z
    move-result p1
    return p1
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
  .registers 10
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/CheckBox;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
  .line 2
    invoke-virtual { p0 }, Lcom/google/android/material/chip/Chip;->r()Z
    move-result v0
    if-nez v0, :L1
    invoke-virtual { p0 }, Landroid/widget/CheckBox;->isClickable()Z
    move-result v0
    if-eqz v0, :L0
    goto :L1
  :L0
    const-string v0, "android.view.View"
  .line 3
    invoke-virtual { p1, v0 }, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V
    goto :L4
  :L1
  .line 4
    invoke-virtual { p0 }, Lcom/google/android/material/chip/Chip;->r()Z
    move-result v0
    if-eqz v0, :L2
    const-string v0, "android.widget.CompoundButton"
    goto :L3
  :L2
    const-string v0, "android.widget.Button"
  :L3
  .line 5
    invoke-virtual { p1, v0 }, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V
  :L4
  .line 6
    invoke-virtual { p0 }, Lcom/google/android/material/chip/Chip;->r()Z
    move-result v0
    invoke-virtual { p1, v0 }, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V
  .line 7
    invoke-virtual { p0 }, Landroid/widget/CheckBox;->isClickable()Z
    move-result v0
    invoke-virtual { p1, v0 }, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V
  .line 8
    invoke-virtual { p0 }, Landroid/widget/CheckBox;->getParent()Landroid/view/ViewParent;
    move-result-object v0
    instance-of v0, v0, Lcom/google/android/material/chip/ChipGroup;
    if-eqz v0, :L7
  .line 9
    invoke-virtual { p0 }, Landroid/widget/CheckBox;->getParent()Landroid/view/ViewParent;
    move-result-object v0
    check-cast v0, Lcom/google/android/material/chip/ChipGroup;
  .line 10
    invoke-static { p1 }, Landroidx/core/view/e0/c;->v0(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/e0/c;
    move-result-object p1
  .line 11
    invoke-virtual { v0 }, Lcom/google/android/material/chip/ChipGroup;->c()Z
    move-result v1
    if-eqz v1, :L5
    invoke-virtual { v0, p0 }, Lcom/google/android/material/chip/ChipGroup;->o(Landroid/view/View;)I
    move-result v1
    move v4, v1
    goto :L6
  :L5
    const/4 v1, -1
    const/4 v4, -1
  :L6
  .line 12
    invoke-virtual { v0, p0 }, Lcom/google/android/material/internal/c;->b(Landroid/view/View;)I
    move-result v2
    const/4 v3, 1
    const/4 v5, 1
    const/4 v6, 0
  .line 13
    invoke-virtual { p0 }, Landroid/widget/CheckBox;->isChecked()Z
    move-result v7
  .line 14
    invoke-static/range { v2 .. v7 }, Landroidx/core/view/e0/c$c;->a(IIIIZZ)Landroidx/core/view/e0/c$c;
    move-result-object v0
  .line 15
    invoke-virtual { p1, v0 }, Landroidx/core/view/e0/c;->Z(Ljava/lang/Object;)V
  :L7
    return-void
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
  .annotation build Landroid/annotation/TargetApi;
    value = 24
  .end annotation
  .registers 4
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;
    move-result-object p2
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getX()F
    move-result v0
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getY()F
    move-result p1
    invoke-virtual { p2, v0, p1 }, Landroid/graphics/RectF;->contains(FF)Z
    move-result p1
    if-eqz p1, :L0
    invoke-virtual { p0 }, Landroid/widget/CheckBox;->isEnabled()Z
    move-result p1
    if-eqz p1, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;
    move-result-object p1
    const/16 p2, 1002
    invoke-static { p1, p2 }, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;
    move-result-object p1
    return-object p1
  :L0
    const/4 p1, 0
    return-object p1
.end method

.method public onRtlPropertiesChanged(I)V
  .annotation build Landroid/annotation/TargetApi;
    value = 17
  .end annotation
  .registers 3
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/CheckBox;->onRtlPropertiesChanged(I)V
  .line 2
    iget v0, p0, Lcom/google/android/material/chip/Chip;->o:I
    if-eq v0, p1, :L0
  .line 3
    iput p1, p0, Lcom/google/android/material/chip/Chip;->o:I
  .line 4
    invoke-direct { p0 }, Lcom/google/android/material/chip/Chip;->A()V
  :L0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
  .annotation build Landroid/annotation/SuppressLint;
    value = {
      "ClickableViewAccessibility"
    }
  .end annotation
  .registers 7
  .line 1
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getActionMasked()I
    move-result v0
  .line 2
    invoke-direct { p0 }, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;
    move-result-object v1
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getX()F
    move-result v2
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getY()F
    move-result v3
    invoke-virtual { v1, v2, v3 }, Landroid/graphics/RectF;->contains(FF)Z
    move-result v1
    const/4 v2, 0
    const/4 v3, 1
    if-eqz v0, :L4
    if-eq v0, v3, :L1
    const/4 v4, 2
    if-eq v0, v4, :L0
    const/4 v1, 3
    if-eq v0, v1, :L2
    goto :L6
  :L0
  .line 3
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->k:Z
    if-eqz v0, :L6
    if-nez v1, :L5
  .line 4
    invoke-direct { p0, v2 }, Lcom/google/android/material/chip/Chip;->setCloseIconPressed(Z)V
    goto :L5
  :L1
  .line 5
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->k:Z
    if-eqz v0, :L2
  .line 6
    invoke-virtual { p0 }, Lcom/google/android/material/chip/Chip;->t()Z
    const/4 v0, 1
    goto :L3
  :L2
    const/4 v0, 0
  :L3
  .line 7
    invoke-direct { p0, v2 }, Lcom/google/android/material/chip/Chip;->setCloseIconPressed(Z)V
    goto :L7
  :L4
    if-eqz v1, :L6
  .line 8
    invoke-direct { p0, v3 }, Lcom/google/android/material/chip/Chip;->setCloseIconPressed(Z)V
  :L5
    const/4 v0, 1
    goto :L7
  :L6
    const/4 v0, 0
  :L7
    if-nez v0, :L8
  .line 9
    invoke-super { p0, p1 }, Landroid/widget/CheckBox;->onTouchEvent(Landroid/view/MotionEvent;)Z
    move-result p1
    if-eqz p1, :L9
  :L8
    const/4 v2, 1
  :L9
    return v2
.end method

.method public r()Z
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Lcom/google/android/material/chip/a;->m1()Z
    move-result v0
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public s()Z
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Lcom/google/android/material/chip/a;->o1()Z
    move-result v0
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Lcom/google/android/material/chip/Chip;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    if-eq p1, v0, :L0
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Landroid/graphics/drawable/RippleDrawable;
    if-eq p1, v0, :L0
    goto :L1
  :L0
  .line 2
    invoke-super { p0, p1 }, Landroid/widget/CheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V
  :L1
    return-void
.end method

.method public setBackgroundColor(I)V
  .registers 2
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Lcom/google/android/material/chip/Chip;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    if-eq p1, v0, :L0
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Landroid/graphics/drawable/RippleDrawable;
    if-eq p1, v0, :L0
    goto :L1
  :L0
  .line 2
    invoke-super { p0, p1 }, Landroidx/appcompat/widget/f;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
  :L1
    return-void
.end method

.method public setBackgroundResource(I)V
  .registers 2
    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
  .registers 2
    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
  .registers 2
    return-void
.end method

.method public setCheckable(Z)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Lcom/google/android/material/chip/a;->v1(Z)V
  :L0
    return-void
.end method

.method public setCheckableResource(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Lcom/google/android/material/chip/a;->w1(I)V
  :L0
    return-void
.end method

.method public setChecked(Z)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-nez v0, :L0
  .line 2
    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->j:Z
    goto :L1
  :L0
  .line 3
    invoke-virtual { v0 }, Lcom/google/android/material/chip/a;->m1()Z
    move-result v0
    if-eqz v0, :L1
  .line 4
    invoke-virtual { p0 }, Landroid/widget/CheckBox;->isChecked()Z
    move-result v0
  .line 5
    invoke-super { p0, p1 }, Landroid/widget/CheckBox;->setChecked(Z)V
    if-eq v0, p1, :L1
  .line 6
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->i:Landroid/widget/CompoundButton$OnCheckedChangeListener;
    if-eqz v0, :L1
  .line 7
    invoke-interface { v0, p0, p1 }, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
  :L1
    return-void
.end method

.method public setCheckedIcon(Landroid/graphics/drawable/Drawable;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Lcom/google/android/material/chip/a;->x1(Landroid/graphics/drawable/Drawable;)V
  :L0
    return-void
.end method

.method public setCheckedIconEnabled(Z)V
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Lcom/google/android/material/chip/Chip;->setCheckedIconVisible(Z)V
    return-void
.end method

.method public setCheckedIconEnabledResource(I)V
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Lcom/google/android/material/chip/Chip;->setCheckedIconVisible(I)V
    return-void
.end method

.method public setCheckedIconResource(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Lcom/google/android/material/chip/a;->y1(I)V
  :L0
    return-void
.end method

.method public setCheckedIconTint(Landroid/content/res/ColorStateList;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Lcom/google/android/material/chip/a;->z1(Landroid/content/res/ColorStateList;)V
  :L0
    return-void
.end method

.method public setCheckedIconTintResource(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Lcom/google/android/material/chip/a;->A1(I)V
  :L0
    return-void
.end method

.method public setCheckedIconVisible(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Lcom/google/android/material/chip/a;->B1(I)V
  :L0
    return-void
.end method

.method public setCheckedIconVisible(Z)V
  .registers 3
  .line 3
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
  .line 4
    invoke-virtual { v0, p1 }, Lcom/google/android/material/chip/a;->C1(Z)V
  :L0
    return-void
.end method

.method public setChipBackgroundColor(Landroid/content/res/ColorStateList;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Lcom/google/android/material/chip/a;->D1(Landroid/content/res/ColorStateList;)V
  :L0
    return-void
.end method

.method public setChipBackgroundColorResource(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Lcom/google/android/material/chip/a;->E1(I)V
  :L0
    return-void
.end method

.method public setChipCornerRadius(F)V
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Lcom/google/android/material/chip/a;->F1(F)V
  :L0
    return-void
.end method

.method public setChipCornerRadiusResource(I)V
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Lcom/google/android/material/chip/a;->G1(I)V
  :L0
    return-void
.end method

.method public setChipDrawable(Lcom/google/android/material/chip/a;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eq v0, p1, :L0
  .line 2
    invoke-direct { p0, v0 }, Lcom/google/android/material/chip/Chip;->w(Lcom/google/android/material/chip/a;)V
  .line 3
    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    const/4 v0, 0
  .line 4
    invoke-virtual { p1, v0 }, Lcom/google/android/material/chip/a;->y2(Z)V
  .line 5
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    invoke-direct { p0, p1 }, Lcom/google/android/material/chip/Chip;->i(Lcom/google/android/material/chip/a;)V
  .line 6
    iget p1, p0, Lcom/google/android/material/chip/Chip;->p:I
    invoke-virtual { p0, p1 }, Lcom/google/android/material/chip/Chip;->k(I)Z
  :L0
    return-void
.end method

.method public setChipEndPadding(F)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Lcom/google/android/material/chip/a;->H1(F)V
  :L0
    return-void
.end method

.method public setChipEndPaddingResource(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Lcom/google/android/material/chip/a;->I1(I)V
  :L0
    return-void
.end method

.method public setChipIcon(Landroid/graphics/drawable/Drawable;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Lcom/google/android/material/chip/a;->J1(Landroid/graphics/drawable/Drawable;)V
  :L0
    return-void
.end method

.method public setChipIconEnabled(Z)V
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Lcom/google/android/material/chip/Chip;->setChipIconVisible(Z)V
    return-void
.end method

.method public setChipIconEnabledResource(I)V
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Lcom/google/android/material/chip/Chip;->setChipIconVisible(I)V
    return-void
.end method

.method public setChipIconResource(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Lcom/google/android/material/chip/a;->K1(I)V
  :L0
    return-void
.end method

.method public setChipIconSize(F)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Lcom/google/android/material/chip/a;->L1(F)V
  :L0
    return-void
.end method

.method public setChipIconSizeResource(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Lcom/google/android/material/chip/a;->M1(I)V
  :L0
    return-void
.end method

.method public setChipIconTint(Landroid/content/res/ColorStateList;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Lcom/google/android/material/chip/a;->N1(Landroid/content/res/ColorStateList;)V
  :L0
    return-void
.end method

.method public setChipIconTintResource(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Lcom/google/android/material/chip/a;->O1(I)V
  :L0
    return-void
.end method

.method public setChipIconVisible(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Lcom/google/android/material/chip/a;->P1(I)V
  :L0
    return-void
.end method

.method public setChipIconVisible(Z)V
  .registers 3
  .line 3
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
  .line 4
    invoke-virtual { v0, p1 }, Lcom/google/android/material/chip/a;->Q1(Z)V
  :L0
    return-void
.end method

.method public setChipMinHeight(F)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Lcom/google/android/material/chip/a;->R1(F)V
  :L0
    return-void
.end method

.method public setChipMinHeightResource(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Lcom/google/android/material/chip/a;->S1(I)V
  :L0
    return-void
.end method

.method public setChipStartPadding(F)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Lcom/google/android/material/chip/a;->T1(F)V
  :L0
    return-void
.end method

.method public setChipStartPaddingResource(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Lcom/google/android/material/chip/a;->U1(I)V
  :L0
    return-void
.end method

.method public setChipStrokeColor(Landroid/content/res/ColorStateList;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Lcom/google/android/material/chip/a;->V1(Landroid/content/res/ColorStateList;)V
  :L0
    return-void
.end method

.method public setChipStrokeColorResource(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Lcom/google/android/material/chip/a;->W1(I)V
  :L0
    return-void
.end method

.method public setChipStrokeWidth(F)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Lcom/google/android/material/chip/a;->X1(F)V
  :L0
    return-void
.end method

.method public setChipStrokeWidthResource(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Lcom/google/android/material/chip/a;->Y1(I)V
  :L0
    return-void
.end method

.method public setChipText(Ljava/lang/CharSequence;)V
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V
    return-void
.end method

.method public setChipTextResource(I)V
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroid/widget/CheckBox;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    invoke-virtual { v0, p1 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { p0, p1 }, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V
    return-void
.end method

.method public setCloseIcon(Landroid/graphics/drawable/Drawable;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Lcom/google/android/material/chip/a;->a2(Landroid/graphics/drawable/Drawable;)V
  :L0
  .line 3
    invoke-direct { p0 }, Lcom/google/android/material/chip/Chip;->x()V
    return-void
.end method

.method public setCloseIconContentDescription(Ljava/lang/CharSequence;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Lcom/google/android/material/chip/a;->b2(Ljava/lang/CharSequence;)V
  :L0
    return-void
.end method

.method public setCloseIconEnabled(Z)V
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Lcom/google/android/material/chip/Chip;->setCloseIconVisible(Z)V
    return-void
.end method

.method public setCloseIconEnabledResource(I)V
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Lcom/google/android/material/chip/Chip;->setCloseIconVisible(I)V
    return-void
.end method

.method public setCloseIconEndPadding(F)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Lcom/google/android/material/chip/a;->c2(F)V
  :L0
    return-void
.end method

.method public setCloseIconEndPaddingResource(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Lcom/google/android/material/chip/a;->d2(I)V
  :L0
    return-void
.end method

.method public setCloseIconResource(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Lcom/google/android/material/chip/a;->e2(I)V
  :L0
  .line 3
    invoke-direct { p0 }, Lcom/google/android/material/chip/Chip;->x()V
    return-void
.end method

.method public setCloseIconSize(F)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Lcom/google/android/material/chip/a;->f2(F)V
  :L0
    return-void
.end method

.method public setCloseIconSizeResource(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Lcom/google/android/material/chip/a;->g2(I)V
  :L0
    return-void
.end method

.method public setCloseIconStartPadding(F)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Lcom/google/android/material/chip/a;->h2(F)V
  :L0
    return-void
.end method

.method public setCloseIconStartPaddingResource(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Lcom/google/android/material/chip/a;->i2(I)V
  :L0
    return-void
.end method

.method public setCloseIconTint(Landroid/content/res/ColorStateList;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Lcom/google/android/material/chip/a;->k2(Landroid/content/res/ColorStateList;)V
  :L0
    return-void
.end method

.method public setCloseIconTintResource(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Lcom/google/android/material/chip/a;->l2(I)V
  :L0
    return-void
.end method

.method public setCloseIconVisible(I)V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroid/widget/CheckBox;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    invoke-virtual { v0, p1 }, Landroid/content/res/Resources;->getBoolean(I)Z
    move-result p1
    invoke-virtual { p0, p1 }, Lcom/google/android/material/chip/Chip;->setCloseIconVisible(Z)V
    return-void
.end method

.method public setCloseIconVisible(Z)V
  .registers 3
  .line 2
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
  .line 3
    invoke-virtual { v0, p1 }, Lcom/google/android/material/chip/a;->m2(Z)V
  :L0
  .line 4
    invoke-direct { p0 }, Lcom/google/android/material/chip/Chip;->x()V
    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
  .registers 5
    if-nez p1, :L1
    if-nez p3, :L0
  .line 1
    invoke-super { p0, p1, p2, p3, p4 }, Landroid/widget/CheckBox;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    return-void
  :L0
  .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;
    const-string p2, "Please set end drawable using R.attr#closeIcon."
    invoke-direct { p1, p2 }, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
    throw p1
  :L1
  .line 3
    new-instance p1, Ljava/lang/UnsupportedOperationException;
    const-string p2, "Please set start drawable using R.attr#chipIcon."
    invoke-direct { p1, p2 }, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
  .registers 5
    if-nez p1, :L1
    if-nez p3, :L0
  .line 1
    invoke-super { p0, p1, p2, p3, p4 }, Landroid/widget/CheckBox;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    return-void
  :L0
  .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;
    const-string p2, "Please set end drawable using R.attr#closeIcon."
    invoke-direct { p1, p2 }, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
    throw p1
  :L1
  .line 3
    new-instance p1, Ljava/lang/UnsupportedOperationException;
    const-string p2, "Please set start drawable using R.attr#chipIcon."
    invoke-direct { p1, p2 }, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
  .registers 5
    if-nez p1, :L1
    if-nez p3, :L0
  .line 1
    invoke-super { p0, p1, p2, p3, p4 }, Landroid/widget/CheckBox;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    return-void
  :L0
  .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;
    const-string p2, "Please set end drawable using R.attr#closeIcon."
    invoke-direct { p1, p2 }, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
    throw p1
  :L1
  .line 3
    new-instance p1, Ljava/lang/UnsupportedOperationException;
    const-string p2, "Please set start drawable using R.attr#chipIcon."
    invoke-direct { p1, p2 }, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
  .registers 5
    if-nez p1, :L1
    if-nez p3, :L0
  .line 4
    invoke-super { p0, p1, p2, p3, p4 }, Landroid/widget/CheckBox;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    return-void
  :L0
  .line 5
    new-instance p1, Ljava/lang/UnsupportedOperationException;
    const-string p2, "Please set end drawable using R.attr#closeIcon."
    invoke-direct { p1, p2 }, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
    throw p1
  :L1
  .line 6
    new-instance p1, Ljava/lang/UnsupportedOperationException;
    const-string p2, "Please set start drawable using R.attr#chipIcon."
    invoke-direct { p1, p2 }, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
  .registers 5
    if-nez p1, :L1
    if-nez p3, :L0
  .line 1
    invoke-super { p0, p1, p2, p3, p4 }, Landroid/widget/CheckBox;->setCompoundDrawablesWithIntrinsicBounds(IIII)V
    return-void
  :L0
  .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;
    const-string p2, "Please set end drawable using R.attr#closeIcon."
    invoke-direct { p1, p2 }, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
    throw p1
  :L1
  .line 3
    new-instance p1, Ljava/lang/UnsupportedOperationException;
    const-string p2, "Please set start drawable using R.attr#chipIcon."
    invoke-direct { p1, p2 }, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
  .registers 5
    if-nez p1, :L1
    if-nez p3, :L0
  .line 4
    invoke-super { p0, p1, p2, p3, p4 }, Landroid/widget/CheckBox;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    return-void
  :L0
  .line 5
    new-instance p1, Ljava/lang/UnsupportedOperationException;
    const-string p2, "Please set right drawable using R.attr#closeIcon."
    invoke-direct { p1, p2 }, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
    throw p1
  :L1
  .line 6
    new-instance p1, Ljava/lang/UnsupportedOperationException;
    const-string p2, "Please set left drawable using R.attr#chipIcon."
    invoke-direct { p1, p2 }, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public setElevation(F)V
  .registers 3
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/CheckBox;->setElevation(F)V
  .line 2
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
  .line 3
    invoke-virtual { v0, p1 }, Ld/c/a/a/a0/g;->V(F)V
  :L0
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-nez v0, :L0
    return-void
  :L0
  .line 2
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;
    if-eq p1, v0, :L2
  .line 3
    invoke-super { p0, p1 }, Landroid/widget/CheckBox;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
  .line 4
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L1
  .line 5
    invoke-virtual { v0, p1 }, Lcom/google/android/material/chip/a;->o2(Landroid/text/TextUtils$TruncateAt;)V
  :L1
    return-void
  :L2
  .line 6
    new-instance p1, Ljava/lang/UnsupportedOperationException;
    const-string v0, "Text within a chip are not allowed to scroll."
    invoke-direct { p1, v0 }, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public setEnsureMinTouchTargetSize(Z)V
  .registers 2
  .line 1
    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->n:Z
  .line 2
    iget p1, p0, Lcom/google/android/material/chip/Chip;->p:I
    invoke-virtual { p0, p1 }, Lcom/google/android/material/chip/Chip;->k(I)Z
    return-void
.end method

.method public setGravity(I)V
  .registers 3
    const v0, 8388627
    if-eq p1, v0, :L0
    goto :L1
  :L0
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/CheckBox;->setGravity(I)V
  :L1
    return-void
.end method

.method public setHideMotionSpec(Ld/c/a/a/l/h;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Lcom/google/android/material/chip/a;->p2(Ld/c/a/a/l/h;)V
  :L0
    return-void
.end method

.method public setHideMotionSpecResource(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Lcom/google/android/material/chip/a;->q2(I)V
  :L0
    return-void
.end method

.method public setIconEndPadding(F)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Lcom/google/android/material/chip/a;->r2(F)V
  :L0
    return-void
.end method

.method public setIconEndPaddingResource(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Lcom/google/android/material/chip/a;->s2(I)V
  :L0
    return-void
.end method

.method public setIconStartPadding(F)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Lcom/google/android/material/chip/a;->t2(F)V
  :L0
    return-void
.end method

.method public setIconStartPaddingResource(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Lcom/google/android/material/chip/a;->u2(I)V
  :L0
    return-void
.end method

.method public setLayoutDirection(I)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-nez v0, :L0
    return-void
  :L0
  .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 17
    if-lt v0, v1, :L1
  .line 3
    invoke-super { p0, p1 }, Landroid/widget/CheckBox;->setLayoutDirection(I)V
  :L1
    return-void
.end method

.method public setLines(I)V
  .registers 3
    const/4 v0, 1
    if-gt p1, v0, :L0
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/CheckBox;->setLines(I)V
    return-void
  :L0
  .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;
    const-string v0, "Chip does not support multi-line text"
    invoke-direct { p1, v0 }, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public setMaxLines(I)V
  .registers 3
    const/4 v0, 1
    if-gt p1, v0, :L0
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/CheckBox;->setMaxLines(I)V
    return-void
  :L0
  .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;
    const-string v0, "Chip does not support multi-line text"
    invoke-direct { p1, v0 }, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public setMaxWidth(I)V
  .registers 3
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/CheckBox;->setMaxWidth(I)V
  .line 2
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
  .line 3
    invoke-virtual { v0, p1 }, Lcom/google/android/material/chip/a;->v2(I)V
  :L0
    return-void
.end method

.method public setMinLines(I)V
  .registers 3
    const/4 v0, 1
    if-gt p1, v0, :L0
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/CheckBox;->setMinLines(I)V
    return-void
  :L0
  .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;
    const-string v0, "Chip does not support multi-line text"
    invoke-direct { p1, v0 }, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method setOnCheckedChangeListenerInternal(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->i:Landroid/widget/CompoundButton$OnCheckedChangeListener;
    return-void
.end method

.method public setOnCloseIconClickListener(Landroid/view/View$OnClickListener;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->h:Landroid/view/View$OnClickListener;
  .line 2
    invoke-direct { p0 }, Lcom/google/android/material/chip/Chip;->x()V
    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Lcom/google/android/material/chip/a;->w2(Landroid/content/res/ColorStateList;)V
  :L0
  .line 3
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    invoke-virtual { p1 }, Lcom/google/android/material/chip/a;->k1()Z
    move-result p1
    if-nez p1, :L1
  .line 4
    invoke-direct { p0 }, Lcom/google/android/material/chip/Chip;->z()V
  :L1
    return-void
.end method

.method public setRippleColorResource(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Lcom/google/android/material/chip/a;->x2(I)V
  .line 3
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    invoke-virtual { p1 }, Lcom/google/android/material/chip/a;->k1()Z
    move-result p1
    if-nez p1, :L0
  .line 4
    invoke-direct { p0 }, Lcom/google/android/material/chip/Chip;->z()V
  :L0
    return-void
.end method

.method public setShapeAppearanceModel(Ld/c/a/a/a0/k;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    invoke-virtual { v0, p1 }, Ld/c/a/a/a0/g;->setShapeAppearanceModel(Ld/c/a/a/a0/k;)V
    return-void
.end method

.method public setShowMotionSpec(Ld/c/a/a/l/h;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Lcom/google/android/material/chip/a;->z2(Ld/c/a/a/l/h;)V
  :L0
    return-void
.end method

.method public setShowMotionSpecResource(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Lcom/google/android/material/chip/a;->A2(I)V
  :L0
    return-void
.end method

.method public setSingleLine(Z)V
  .registers 3
    if-eqz p1, :L0
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/CheckBox;->setSingleLine(Z)V
    return-void
  :L0
  .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;
    const-string v0, "Chip does not support multi-line text"
    invoke-direct { p1, v0 }, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-nez v0, :L0
    return-void
  :L0
    if-nez p1, :L1
    const-string p1, ""
  :L1
  .line 2
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    invoke-virtual { v0 }, Lcom/google/android/material/chip/a;->J2()Z
    move-result v0
    if-eqz v0, :L2
    const/4 v0, 0
    goto :L3
  :L2
    move-object v0, p1
  :L3
    invoke-super { p0, v0, p2 }, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
  .line 3
    iget-object p2, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz p2, :L4
  .line 4
    invoke-virtual { p2, p1 }, Lcom/google/android/material/chip/a;->B2(Ljava/lang/CharSequence;)V
  :L4
    return-void
.end method

.method public setTextAppearance(I)V
  .registers 3
  .line 8
    invoke-super { p0, p1 }, Landroid/widget/CheckBox;->setTextAppearance(I)V
  .line 9
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
  .line 10
    invoke-virtual { v0, p1 }, Lcom/google/android/material/chip/a;->D2(I)V
  :L0
  .line 11
    invoke-direct { p0 }, Lcom/google/android/material/chip/Chip;->B()V
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
  .registers 3
  .line 4
    invoke-super { p0, p1, p2 }, Landroid/widget/CheckBox;->setTextAppearance(Landroid/content/Context;I)V
  .line 5
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz p1, :L0
  .line 6
    invoke-virtual { p1, p2 }, Lcom/google/android/material/chip/a;->D2(I)V
  :L0
  .line 7
    invoke-direct { p0 }, Lcom/google/android/material/chip/Chip;->B()V
    return-void
.end method

.method public setTextAppearance(Ld/c/a/a/x/d;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Lcom/google/android/material/chip/a;->C2(Ld/c/a/a/x/d;)V
  :L0
  .line 3
    invoke-direct { p0 }, Lcom/google/android/material/chip/Chip;->B()V
    return-void
.end method

.method public setTextAppearanceResource(I)V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-virtual { p0, v0, p1 }, Lcom/google/android/material/chip/Chip;->setTextAppearance(Landroid/content/Context;I)V
    return-void
.end method

.method public setTextEndPadding(F)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Lcom/google/android/material/chip/a;->E2(F)V
  :L0
    return-void
.end method

.method public setTextEndPaddingResource(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Lcom/google/android/material/chip/a;->F2(I)V
  :L0
    return-void
.end method

.method public setTextStartPadding(F)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Lcom/google/android/material/chip/a;->G2(F)V
  :L0
    return-void
.end method

.method public setTextStartPaddingResource(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lcom/google/android/material/chip/a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Lcom/google/android/material/chip/a;->H2(I)V
  :L0
    return-void
.end method

.method public t()Z
  .registers 4
    const/4 v0, 0
  .line 1
    invoke-virtual { p0, v0 }, Landroid/widget/CheckBox;->playSoundEffect(I)V
  .line 2
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->h:Landroid/view/View$OnClickListener;
    const/4 v2, 1
    if-eqz v1, :L0
  .line 3
    invoke-interface { v1, p0 }, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V
    const/4 v0, 1
  :L0
  .line 4
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->q:Lcom/google/android/material/chip/Chip$c;
    invoke-virtual { v1, v2, v2 }, Lc/i/b/a;->U(II)Z
    return v0
.end method

.method public v()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->n:Z
    return v0
.end method
