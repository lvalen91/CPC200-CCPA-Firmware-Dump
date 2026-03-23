.class public Landroidx/appcompat/widget/SwitchCompat;
.super Landroid/widget/CompoundButton;
.source "SourceFile"

.field private final static O:Landroid/util/Property;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Landroid/util/Property<",
      "Landroidx/appcompat/widget/SwitchCompat;",
      "Ljava/lang/Float;",
      ">;"
    }
  .end annotation
.end field

.field private final static P:[I

.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private final G:Landroid/text/TextPaint;

.field private H:Landroid/content/res/ColorStateList;

.field private I:Landroid/text/Layout;

.field private J:Landroid/text/Layout;

.field private K:Landroid/text/method/TransformationMethod;

.field L:Landroid/animation/ObjectAnimator;

.field private final M:Landroidx/appcompat/widget/w;

.field private final N:Landroid/graphics/Rect;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Landroid/content/res/ColorStateList;

.field private d:Landroid/graphics/PorterDuff$Mode;

.field private e:Z

.field private f:Z

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Landroid/content/res/ColorStateList;

.field private i:Landroid/graphics/PorterDuff$Mode;

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:Z

.field private p:Ljava/lang/CharSequence;

.field private q:Ljava/lang/CharSequence;

.field private r:Z

.field private s:I

.field private t:I

.field private u:F

.field private v:F

.field private w:Landroid/view/VelocityTracker;

.field private x:I

.field y:F

.field private z:I

.method static constructor <clinit>()V
  .registers 3
  .line 1
    new-instance v0, Landroidx/appcompat/widget/SwitchCompat$a;
    const-class v1, Ljava/lang/Float;
    const-string v2, "thumbPos"
    invoke-direct { v0, v1, v2 }, Landroidx/appcompat/widget/SwitchCompat$a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V
    sput-object v0, Landroidx/appcompat/widget/SwitchCompat;->O:Landroid/util/Property;
    const/4 v0, 1
    new-array v0, v0, [I
    const/4 v1, 0
    const v2, 16842912
    aput v2, v0, v1
  .line 2
    sput-object v0, Landroidx/appcompat/widget/SwitchCompat;->P:[I
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 4
  .line 1
    sget v0, Lc/a/a;->switchStyle:I
    invoke-direct { p0, p1, p2, v0 }, Landroidx/appcompat/widget/SwitchCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .registers 15
  .line 2
    invoke-direct { p0, p1, p2, p3 }, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    const/4 v0, 0
  .line 3
    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->c:Landroid/content/res/ColorStateList;
  .line 4
    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->d:Landroid/graphics/PorterDuff$Mode;
    const/4 v1, 0
  .line 5
    iput-boolean v1, p0, Landroidx/appcompat/widget/SwitchCompat;->e:Z
  .line 6
    iput-boolean v1, p0, Landroidx/appcompat/widget/SwitchCompat;->f:Z
  .line 7
    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->h:Landroid/content/res/ColorStateList;
  .line 8
    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->i:Landroid/graphics/PorterDuff$Mode;
  .line 9
    iput-boolean v1, p0, Landroidx/appcompat/widget/SwitchCompat;->j:Z
  .line 10
    iput-boolean v1, p0, Landroidx/appcompat/widget/SwitchCompat;->k:Z
  .line 11
    invoke-static { }, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;
    move-result-object v2
    iput-object v2, p0, Landroidx/appcompat/widget/SwitchCompat;->w:Landroid/view/VelocityTracker;
  .line 12
    new-instance v2, Landroid/graphics/Rect;
    invoke-direct { v2 }, Landroid/graphics/Rect;-><init>()V
    iput-object v2, p0, Landroidx/appcompat/widget/SwitchCompat;->N:Landroid/graphics/Rect;
  .line 13
    invoke-virtual { p0 }, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;
    move-result-object v2
    invoke-static { p0, v2 }, Landroidx/appcompat/widget/p0;->a(Landroid/view/View;Landroid/content/Context;)V
  .line 14
    new-instance v2, Landroid/text/TextPaint;
    const/4 v3, 1
    invoke-direct { v2, v3 }, Landroid/text/TextPaint;-><init>(I)V
    iput-object v2, p0, Landroidx/appcompat/widget/SwitchCompat;->G:Landroid/text/TextPaint;
  .line 15
    invoke-virtual { p0 }, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;
    move-result-object v2
  .line 16
    iget-object v4, p0, Landroidx/appcompat/widget/SwitchCompat;->G:Landroid/text/TextPaint;
    invoke-virtual { v2 }, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
    move-result-object v2
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F
    iput v2, v4, Landroid/text/TextPaint;->density:F
  .line 17
    sget-object v2, Lc/a/j;->SwitchCompat:[I
    invoke-static { p1, p2, v2, p3, v1 }, Landroidx/appcompat/widget/u0;->v(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/u0;
    move-result-object v2
  .line 18
    sget-object v6, Lc/a/j;->SwitchCompat:[I
  .line 19
    invoke-virtual { v2 }, Landroidx/appcompat/widget/u0;->r()Landroid/content/res/TypedArray;
    move-result-object v8
    const/4 v10, 0
    move-object v4, p0
    move-object v5, p1
    move-object v7, p2
    move v9, p3
  .line 20
    invoke-static/range { v4 .. v10 }, Landroidx/core/view/v;->m0(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V
  .line 21
    sget v4, Lc/a/j;->SwitchCompat_android_thumb:I
    invoke-virtual { v2, v4 }, Landroidx/appcompat/widget/u0;->g(I)Landroid/graphics/drawable/Drawable;
    move-result-object v4
    iput-object v4, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;
    if-eqz v4, :L0
  .line 22
    invoke-virtual { v4, p0 }, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
  :L0
  .line 23
    sget v4, Lc/a/j;->SwitchCompat_track:I
    invoke-virtual { v2, v4 }, Landroidx/appcompat/widget/u0;->g(I)Landroid/graphics/drawable/Drawable;
    move-result-object v4
    iput-object v4, p0, Landroidx/appcompat/widget/SwitchCompat;->g:Landroid/graphics/drawable/Drawable;
    if-eqz v4, :L1
  .line 24
    invoke-virtual { v4, p0 }, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
  :L1
  .line 25
    sget v4, Lc/a/j;->SwitchCompat_android_textOn:I
    invoke-virtual { v2, v4 }, Landroidx/appcompat/widget/u0;->p(I)Ljava/lang/CharSequence;
    move-result-object v4
    iput-object v4, p0, Landroidx/appcompat/widget/SwitchCompat;->p:Ljava/lang/CharSequence;
  .line 26
    sget v4, Lc/a/j;->SwitchCompat_android_textOff:I
    invoke-virtual { v2, v4 }, Landroidx/appcompat/widget/u0;->p(I)Ljava/lang/CharSequence;
    move-result-object v4
    iput-object v4, p0, Landroidx/appcompat/widget/SwitchCompat;->q:Ljava/lang/CharSequence;
  .line 27
    sget v4, Lc/a/j;->SwitchCompat_showText:I
    invoke-virtual { v2, v4, v3 }, Landroidx/appcompat/widget/u0;->a(IZ)Z
    move-result v4
    iput-boolean v4, p0, Landroidx/appcompat/widget/SwitchCompat;->r:Z
  .line 28
    sget v4, Lc/a/j;->SwitchCompat_thumbTextPadding:I
    invoke-virtual { v2, v4, v1 }, Landroidx/appcompat/widget/u0;->f(II)I
    move-result v4
    iput v4, p0, Landroidx/appcompat/widget/SwitchCompat;->l:I
  .line 29
    sget v4, Lc/a/j;->SwitchCompat_switchMinWidth:I
    invoke-virtual { v2, v4, v1 }, Landroidx/appcompat/widget/u0;->f(II)I
    move-result v4
    iput v4, p0, Landroidx/appcompat/widget/SwitchCompat;->m:I
  .line 30
    sget v4, Lc/a/j;->SwitchCompat_switchPadding:I
    invoke-virtual { v2, v4, v1 }, Landroidx/appcompat/widget/u0;->f(II)I
    move-result v4
    iput v4, p0, Landroidx/appcompat/widget/SwitchCompat;->n:I
  .line 31
    sget v4, Lc/a/j;->SwitchCompat_splitTrack:I
    invoke-virtual { v2, v4, v1 }, Landroidx/appcompat/widget/u0;->a(IZ)Z
    move-result v4
    iput-boolean v4, p0, Landroidx/appcompat/widget/SwitchCompat;->o:Z
  .line 32
    sget v4, Lc/a/j;->SwitchCompat_thumbTint:I
    invoke-virtual { v2, v4 }, Landroidx/appcompat/widget/u0;->c(I)Landroid/content/res/ColorStateList;
    move-result-object v4
    if-eqz v4, :L2
  .line 33
    iput-object v4, p0, Landroidx/appcompat/widget/SwitchCompat;->c:Landroid/content/res/ColorStateList;
  .line 34
    iput-boolean v3, p0, Landroidx/appcompat/widget/SwitchCompat;->e:Z
  :L2
  .line 35
    sget v4, Lc/a/j;->SwitchCompat_thumbTintMode:I
    const/4 v5, -1
  .line 36
    invoke-virtual { v2, v4, v5 }, Landroidx/appcompat/widget/u0;->k(II)I
    move-result v4
  .line 37
    invoke-static { v4, v0 }, Landroidx/appcompat/widget/c0;->e(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    move-result-object v4
  .line 38
    iget-object v6, p0, Landroidx/appcompat/widget/SwitchCompat;->d:Landroid/graphics/PorterDuff$Mode;
    if-eq v6, v4, :L3
  .line 39
    iput-object v4, p0, Landroidx/appcompat/widget/SwitchCompat;->d:Landroid/graphics/PorterDuff$Mode;
  .line 40
    iput-boolean v3, p0, Landroidx/appcompat/widget/SwitchCompat;->f:Z
  :L3
  .line 41
    iget-boolean v4, p0, Landroidx/appcompat/widget/SwitchCompat;->e:Z
    if-nez v4, :L4
    iget-boolean v4, p0, Landroidx/appcompat/widget/SwitchCompat;->f:Z
    if-eqz v4, :L5
  :L4
  .line 42
    invoke-direct { p0 }, Landroidx/appcompat/widget/SwitchCompat;->b()V
  :L5
  .line 43
    sget v4, Lc/a/j;->SwitchCompat_trackTint:I
    invoke-virtual { v2, v4 }, Landroidx/appcompat/widget/u0;->c(I)Landroid/content/res/ColorStateList;
    move-result-object v4
    if-eqz v4, :L6
  .line 44
    iput-object v4, p0, Landroidx/appcompat/widget/SwitchCompat;->h:Landroid/content/res/ColorStateList;
  .line 45
    iput-boolean v3, p0, Landroidx/appcompat/widget/SwitchCompat;->j:Z
  :L6
  .line 46
    sget v4, Lc/a/j;->SwitchCompat_trackTintMode:I
  .line 47
    invoke-virtual { v2, v4, v5 }, Landroidx/appcompat/widget/u0;->k(II)I
    move-result v4
  .line 48
    invoke-static { v4, v0 }, Landroidx/appcompat/widget/c0;->e(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    move-result-object v0
  .line 49
    iget-object v4, p0, Landroidx/appcompat/widget/SwitchCompat;->i:Landroid/graphics/PorterDuff$Mode;
    if-eq v4, v0, :L7
  .line 50
    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->i:Landroid/graphics/PorterDuff$Mode;
  .line 51
    iput-boolean v3, p0, Landroidx/appcompat/widget/SwitchCompat;->k:Z
  :L7
  .line 52
    iget-boolean v0, p0, Landroidx/appcompat/widget/SwitchCompat;->j:Z
    if-nez v0, :L8
    iget-boolean v0, p0, Landroidx/appcompat/widget/SwitchCompat;->k:Z
    if-eqz v0, :L9
  :L8
  .line 53
    invoke-direct { p0 }, Landroidx/appcompat/widget/SwitchCompat;->c()V
  :L9
  .line 54
    sget v0, Lc/a/j;->SwitchCompat_switchTextAppearance:I
    invoke-virtual { v2, v0, v1 }, Landroidx/appcompat/widget/u0;->n(II)I
    move-result v0
    if-eqz v0, :L10
  .line 55
    invoke-virtual { p0, p1, v0 }, Landroidx/appcompat/widget/SwitchCompat;->k(Landroid/content/Context;I)V
  :L10
  .line 56
    new-instance v0, Landroidx/appcompat/widget/w;
    invoke-direct { v0, p0 }, Landroidx/appcompat/widget/w;-><init>(Landroid/widget/TextView;)V
    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->M:Landroidx/appcompat/widget/w;
  .line 57
    invoke-virtual { v0, p2, p3 }, Landroidx/appcompat/widget/w;->m(Landroid/util/AttributeSet;I)V
  .line 58
    invoke-virtual { v2 }, Landroidx/appcompat/widget/u0;->w()V
  .line 59
    invoke-static { p1 }, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
    move-result-object p1
  .line 60
    invoke-virtual { p1 }, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I
    move-result p2
    iput p2, p0, Landroidx/appcompat/widget/SwitchCompat;->t:I
  .line 61
    invoke-virtual { p1 }, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I
    move-result p1
    iput p1, p0, Landroidx/appcompat/widget/SwitchCompat;->x:I
  .line 62
    invoke-virtual { p0 }, Landroid/widget/CompoundButton;->refreshDrawableState()V
  .line 63
    invoke-virtual { p0 }, Landroid/widget/CompoundButton;->isChecked()Z
    move-result p1
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V
    return-void
.end method

.method private a(Z)V
  .registers 6
    if-eqz p1, :L0
    const/high16 p1, 16256
    goto :L1
  :L0
    const/4 p1, 0
  :L1
  .line 1
    sget-object v0, Landroidx/appcompat/widget/SwitchCompat;->O:Landroid/util/Property;
    const/4 v1, 1
    new-array v2, v1, [F
    const/4 v3, 0
    aput p1, v2, v3
    invoke-static { p0, v0, v2 }, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;
    move-result-object p1
    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->L:Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 250
  .line 2
    invoke-virtual { p1, v2, v3 }, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;
  .line 3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v0, 18
    if-lt p1, v0, :L2
  .line 4
    iget-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->L:Landroid/animation/ObjectAnimator;
    invoke-virtual { p1, v1 }, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V
  :L2
  .line 5
    iget-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->L:Landroid/animation/ObjectAnimator;
    invoke-virtual { p1 }, Landroid/animation/ObjectAnimator;->start()V
    return-void
.end method

.method private b()V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L3
    iget-boolean v0, p0, Landroidx/appcompat/widget/SwitchCompat;->e:Z
    if-nez v0, :L0
    iget-boolean v0, p0, Landroidx/appcompat/widget/SwitchCompat;->f:Z
    if-eqz v0, :L3
  :L0
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;
    invoke-static { v0 }, Landroidx/core/graphics/drawable/a;->r(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;
  .line 3
    iget-boolean v1, p0, Landroidx/appcompat/widget/SwitchCompat;->e:Z
    if-eqz v1, :L1
  .line 4
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->c:Landroid/content/res/ColorStateList;
    invoke-static { v0, v1 }, Landroidx/core/graphics/drawable/a;->o(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
  :L1
  .line 5
    iget-boolean v0, p0, Landroidx/appcompat/widget/SwitchCompat;->f:Z
    if-eqz v0, :L2
  .line 6
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->d:Landroid/graphics/PorterDuff$Mode;
    invoke-static { v0, v1 }, Landroidx/core/graphics/drawable/a;->p(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
  :L2
  .line 7
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable;->isStateful()Z
    move-result v0
    if-eqz v0, :L3
  .line 8
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;
    invoke-virtual { p0 }, Landroid/widget/CompoundButton;->getDrawableState()[I
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/graphics/drawable/Drawable;->setState([I)Z
  :L3
    return-void
.end method

.method private c()V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->g:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L3
    iget-boolean v0, p0, Landroidx/appcompat/widget/SwitchCompat;->j:Z
    if-nez v0, :L0
    iget-boolean v0, p0, Landroidx/appcompat/widget/SwitchCompat;->k:Z
    if-eqz v0, :L3
  :L0
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->g:Landroid/graphics/drawable/Drawable;
    invoke-static { v0 }, Landroidx/core/graphics/drawable/a;->r(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->g:Landroid/graphics/drawable/Drawable;
  .line 3
    iget-boolean v1, p0, Landroidx/appcompat/widget/SwitchCompat;->j:Z
    if-eqz v1, :L1
  .line 4
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->h:Landroid/content/res/ColorStateList;
    invoke-static { v0, v1 }, Landroidx/core/graphics/drawable/a;->o(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
  :L1
  .line 5
    iget-boolean v0, p0, Landroidx/appcompat/widget/SwitchCompat;->k:Z
    if-eqz v0, :L2
  .line 6
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->g:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->i:Landroid/graphics/PorterDuff$Mode;
    invoke-static { v0, v1 }, Landroidx/core/graphics/drawable/a;->p(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
  :L2
  .line 7
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->g:Landroid/graphics/drawable/Drawable;
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable;->isStateful()Z
    move-result v0
    if-eqz v0, :L3
  .line 8
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->g:Landroid/graphics/drawable/Drawable;
    invoke-virtual { p0 }, Landroid/widget/CompoundButton;->getDrawableState()[I
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/graphics/drawable/Drawable;->setState([I)Z
  :L3
    return-void
.end method

.method private d()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->L:Landroid/animation/ObjectAnimator;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Landroid/animation/ObjectAnimator;->cancel()V
  :L0
    return-void
.end method

.method private e(Landroid/view/MotionEvent;)V
  .registers 3
  .line 1
    invoke-static { p1 }, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    move-result-object p1
    const/4 v0, 3
  .line 2
    invoke-virtual { p1, v0 }, Landroid/view/MotionEvent;->setAction(I)V
  .line 3
    invoke-super { p0, p1 }, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z
  .line 4
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->recycle()V
    return-void
.end method

.method private static f(FFF)F
  .registers 4
    cmpg-float v0, p0, p1
    if-gez v0, :L0
    move p0, p1
    goto :L1
  :L0
    cmpl-float p1, p0, p2
    if-lez p1, :L1
    move p0, p2
  :L1
    return p0
.end method

.method private g(FF)Z
  .registers 10
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;
    const/4 v1, 0
    if-nez v0, :L0
    return v1
  :L0
  .line 2
    invoke-direct { p0 }, Landroidx/appcompat/widget/SwitchCompat;->getThumbOffset()I
    move-result v0
  .line 3
    iget-object v2, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Landroidx/appcompat/widget/SwitchCompat;->N:Landroid/graphics/Rect;
    invoke-virtual { v2, v3 }, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z
  .line 4
    iget v2, p0, Landroidx/appcompat/widget/SwitchCompat;->D:I
    iget v3, p0, Landroidx/appcompat/widget/SwitchCompat;->t:I
    sub-int/2addr v2, v3
  .line 5
    iget v4, p0, Landroidx/appcompat/widget/SwitchCompat;->C:I
    add-int/2addr v4, v0
    sub-int/2addr v4, v3
  .line 6
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat;->B:I
    add-int/2addr v0, v4
    iget-object v5, p0, Landroidx/appcompat/widget/SwitchCompat;->N:Landroid/graphics/Rect;
    iget v6, v5, Landroid/graphics/Rect;->left:I
    add-int/2addr v0, v6
    iget v5, v5, Landroid/graphics/Rect;->right:I
    add-int/2addr v0, v5
    add-int/2addr v0, v3
  .line 7
    iget v5, p0, Landroidx/appcompat/widget/SwitchCompat;->F:I
    add-int/2addr v5, v3
    int-to-float v3, v4
    cmpl-float v3, p1, v3
    if-lez v3, :L1
    int-to-float v0, v0
    cmpg-float p1, p1, v0
    if-gez p1, :L1
    int-to-float p1, v2
    cmpl-float p1, p2, p1
    if-lez p1, :L1
    int-to-float p1, v5
    cmpg-float p1, p2, p1
    if-gez p1, :L1
    const/4 v1, 1
  :L1
    return v1
.end method

.method private getTargetCheckedState()Z
  .registers 3
  .line 1
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat;->y:F
    const/high16 v1, 16128
    cmpl-float v0, v0, v1
    if-lez v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method private getThumbOffset()I
  .registers 3
  .line 1
    invoke-static { p0 }, Landroidx/appcompat/widget/a1;->b(Landroid/view/View;)Z
    move-result v0
    if-eqz v0, :L0
    const/high16 v0, 16256
  .line 2
    iget v1, p0, Landroidx/appcompat/widget/SwitchCompat;->y:F
    sub-float/2addr v0, v1
    goto :L1
  :L0
  .line 3
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat;->y:F
  :L1
  .line 4
    invoke-direct { p0 }, Landroidx/appcompat/widget/SwitchCompat;->getThumbScrollRange()I
    move-result v1
    int-to-float v1, v1
    mul-float v0, v0, v1
    const/high16 v1, 16128
    add-float/2addr v0, v1
    float-to-int v0, v0
    return v0
.end method

.method private getThumbScrollRange()I
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->g:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L2
  .line 2
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->N:Landroid/graphics/Rect;
  .line 3
    invoke-virtual { v0, v1 }, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z
  .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L0
  .line 5
    invoke-static { v0 }, Landroidx/appcompat/widget/c0;->d(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;
    move-result-object v0
    goto :L1
  :L0
  .line 6
    sget-object v0, Landroidx/appcompat/widget/c0;->c:Landroid/graphics/Rect;
  :L1
  .line 7
    iget v2, p0, Landroidx/appcompat/widget/SwitchCompat;->z:I
    iget v3, p0, Landroidx/appcompat/widget/SwitchCompat;->B:I
    sub-int/2addr v2, v3
    iget v3, v1, Landroid/graphics/Rect;->left:I
    sub-int/2addr v2, v3
    iget v1, v1, Landroid/graphics/Rect;->right:I
    sub-int/2addr v2, v1
    iget v1, v0, Landroid/graphics/Rect;->left:I
    sub-int/2addr v2, v1
    iget v0, v0, Landroid/graphics/Rect;->right:I
    sub-int/2addr v2, v0
    return v2
  :L2
    const/4 v0, 0
    return v0
.end method

.method private h(Ljava/lang/CharSequence;)Landroid/text/Layout;
  .registers 10
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->K:Landroid/text/method/TransformationMethod;
    if-eqz v0, :L0
  .line 2
    invoke-interface { v0, p1, p0 }, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    move-result-object p1
  :L0
    move-object v1, p1
  .line 3
    new-instance p1, Landroid/text/StaticLayout;
    iget-object v2, p0, Landroidx/appcompat/widget/SwitchCompat;->G:Landroid/text/TextPaint;
    if-eqz v1, :L1
  .line 4
    invoke-static { v1, v2 }, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F
    move-result v0
    float-to-double v3, v0
    invoke-static { v3, v4 }, Ljava/lang/Math;->ceil(D)D
    move-result-wide v3
    double-to-int v0, v3
    move v3, v0
    goto :L2
  :L1
    const/4 v0, 0
    const/4 v3, 0
  :L2
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;
    const/high16 v5, 16256
    const/4 v6, 0
    const/4 v7, 1
    move-object v0, p1
    invoke-direct/range { v0 .. v7 }, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    return-object p1
.end method

.method private i()V
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 30
    if-lt v0, v1, :L1
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->q:Ljava/lang/CharSequence;
    if-nez v0, :L0
    invoke-virtual { p0 }, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    sget v1, Lc/a/h;->abc_capital_off:I
    invoke-virtual { v0, v1 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v0
  :L0
  .line 3
    invoke-static { p0, v0 }, Landroidx/core/view/v;->C0(Landroid/view/View;Ljava/lang/CharSequence;)V
  :L1
    return-void
.end method

.method private j()V
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 30
    if-lt v0, v1, :L1
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->p:Ljava/lang/CharSequence;
    if-nez v0, :L0
    invoke-virtual { p0 }, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    sget v1, Lc/a/h;->abc_capital_on:I
    invoke-virtual { v0, v1 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v0
  :L0
  .line 3
    invoke-static { p0, v0 }, Landroidx/core/view/v;->C0(Landroid/view/View;Ljava/lang/CharSequence;)V
  :L1
    return-void
.end method

.method private m(II)V
  .registers 4
    const/4 v0, 1
    if-eq p1, v0, :L2
    const/4 v0, 2
    if-eq p1, v0, :L1
    const/4 v0, 3
    if-eq p1, v0, :L0
    const/4 p1, 0
    goto :L3
  :L0
  .line 1
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;
    goto :L3
  :L1
  .line 2
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;
    goto :L3
  :L2
  .line 3
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;
  :L3
  .line 4
    invoke-virtual { p0, p1, p2 }, Landroidx/appcompat/widget/SwitchCompat;->l(Landroid/graphics/Typeface;I)V
    return-void
.end method

.method private n(Landroid/view/MotionEvent;)V
  .registers 8
    const/4 v0, 0
  .line 1
    iput v0, p0, Landroidx/appcompat/widget/SwitchCompat;->s:I
  .line 2
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getAction()I
    move-result v1
    const/4 v2, 1
    if-ne v1, v2, :L0
    invoke-virtual { p0 }, Landroid/widget/CompoundButton;->isEnabled()Z
    move-result v1
    if-eqz v1, :L0
    const/4 v1, 1
    goto :L1
  :L0
    const/4 v1, 0
  :L1
  .line 3
    invoke-virtual { p0 }, Landroid/widget/CompoundButton;->isChecked()Z
    move-result v3
    if-eqz v1, :L5
  .line 4
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->w:Landroid/view/VelocityTracker;
    const/16 v4, 1000
    invoke-virtual { v1, v4 }, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V
  .line 5
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->w:Landroid/view/VelocityTracker;
    invoke-virtual { v1 }, Landroid/view/VelocityTracker;->getXVelocity()F
    move-result v1
  .line 6
    invoke-static { v1 }, Ljava/lang/Math;->abs(F)F
    move-result v4
    iget v5, p0, Landroidx/appcompat/widget/SwitchCompat;->x:I
    int-to-float v5, v5
    cmpl-float v4, v4, v5
    if-lez v4, :L4
  .line 7
    invoke-static { p0 }, Landroidx/appcompat/widget/a1;->b(Landroid/view/View;)Z
    move-result v4
    const/4 v5, 0
    if-eqz v4, :L2
    cmpg-float v1, v1, v5
    if-gez v1, :L3
    goto :L6
  :L2
    cmpl-float v1, v1, v5
    if-lez v1, :L3
    goto :L6
  :L3
    const/4 v2, 0
    goto :L6
  :L4
  .line 8
    invoke-direct { p0 }, Landroidx/appcompat/widget/SwitchCompat;->getTargetCheckedState()Z
    move-result v2
    goto :L6
  :L5
    move v2, v3
  :L6
    if-eq v2, v3, :L7
  .line 9
    invoke-virtual { p0, v0 }, Landroid/widget/CompoundButton;->playSoundEffect(I)V
  :L7
  .line 10
    invoke-virtual { p0, v2 }, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V
  .line 11
    invoke-direct { p0, p1 }, Landroidx/appcompat/widget/SwitchCompat;->e(Landroid/view/MotionEvent;)V
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
  .registers 12
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->N:Landroid/graphics/Rect;
  .line 2
    iget v1, p0, Landroidx/appcompat/widget/SwitchCompat;->C:I
  .line 3
    iget v2, p0, Landroidx/appcompat/widget/SwitchCompat;->D:I
  .line 4
    iget v3, p0, Landroidx/appcompat/widget/SwitchCompat;->E:I
  .line 5
    iget v4, p0, Landroidx/appcompat/widget/SwitchCompat;->F:I
  .line 6
    invoke-direct { p0 }, Landroidx/appcompat/widget/SwitchCompat;->getThumbOffset()I
    move-result v5
    add-int/2addr v5, v1
  .line 7
    iget-object v6, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;
    if-eqz v6, :L0
  .line 8
    invoke-static { v6 }, Landroidx/appcompat/widget/c0;->d(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;
    move-result-object v6
    goto :L1
  :L0
  .line 9
    sget-object v6, Landroidx/appcompat/widget/c0;->c:Landroid/graphics/Rect;
  :L1
  .line 10
    iget-object v7, p0, Landroidx/appcompat/widget/SwitchCompat;->g:Landroid/graphics/drawable/Drawable;
    if-eqz v7, :L9
  .line 11
    invoke-virtual { v7, v0 }, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z
  .line 12
    iget v7, v0, Landroid/graphics/Rect;->left:I
    add-int/2addr v5, v7
    if-eqz v6, :L6
  .line 13
    iget v8, v6, Landroid/graphics/Rect;->left:I
    if-le v8, v7, :L2
    sub-int/2addr v8, v7
    add-int/2addr v1, v8
  :L2
  .line 14
    iget v7, v6, Landroid/graphics/Rect;->top:I
    iget v8, v0, Landroid/graphics/Rect;->top:I
    if-le v7, v8, :L3
    sub-int/2addr v7, v8
    add-int/2addr v7, v2
    goto :L4
  :L3
    move v7, v2
  :L4
  .line 15
    iget v8, v6, Landroid/graphics/Rect;->right:I
    iget v9, v0, Landroid/graphics/Rect;->right:I
    if-le v8, v9, :L5
    sub-int/2addr v8, v9
    sub-int/2addr v3, v8
  :L5
  .line 16
    iget v6, v6, Landroid/graphics/Rect;->bottom:I
    iget v8, v0, Landroid/graphics/Rect;->bottom:I
    if-le v6, v8, :L7
    sub-int/2addr v6, v8
    sub-int v6, v4, v6
    goto :L8
  :L6
    move v7, v2
  :L7
    move v6, v4
  :L8
  .line 17
    iget-object v8, p0, Landroidx/appcompat/widget/SwitchCompat;->g:Landroid/graphics/drawable/Drawable;
    invoke-virtual { v8, v1, v7, v3, v6 }, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
  :L9
  .line 18
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :L10
  .line 19
    invoke-virtual { v1, v0 }, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z
  .line 20
    iget v1, v0, Landroid/graphics/Rect;->left:I
    sub-int v1, v5, v1
  .line 21
    iget v3, p0, Landroidx/appcompat/widget/SwitchCompat;->B:I
    add-int/2addr v5, v3
    iget v0, v0, Landroid/graphics/Rect;->right:I
    add-int/2addr v5, v0
  .line 22
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;
    invoke-virtual { v0, v1, v2, v5, v4 }, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
  .line 23
    invoke-virtual { p0 }, Landroid/widget/CompoundButton;->getBackground()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    if-eqz v0, :L10
  .line 24
    invoke-static { v0, v1, v2, v5, v4 }, Landroidx/core/graphics/drawable/a;->l(Landroid/graphics/drawable/Drawable;IIII)V
  :L10
  .line 25
    invoke-super { p0, p1 }, Landroid/widget/CompoundButton;->draw(Landroid/graphics/Canvas;)V
    return-void
.end method

.method public drawableHotspotChanged(FF)V
  .registers 5
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L0
  .line 2
    invoke-super { p0, p1, p2 }, Landroid/widget/CompoundButton;->drawableHotspotChanged(FF)V
  :L0
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L1
  .line 4
    invoke-static { v0, p1, p2 }, Landroidx/core/graphics/drawable/a;->k(Landroid/graphics/drawable/Drawable;FF)V
  :L1
  .line 5
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->g:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L2
  .line 6
    invoke-static { v0, p1, p2 }, Landroidx/core/graphics/drawable/a;->k(Landroid/graphics/drawable/Drawable;FF)V
  :L2
    return-void
.end method

.method protected drawableStateChanged()V
  .registers 5
  .line 1
    invoke-super { p0 }, Landroid/widget/CompoundButton;->drawableStateChanged()V
  .line 2
    invoke-virtual { p0 }, Landroid/widget/CompoundButton;->getDrawableState()[I
    move-result-object v0
  .line 3
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;
    const/4 v2, 0
    if-eqz v1, :L0
  .line 4
    invoke-virtual { v1 }, Landroid/graphics/drawable/Drawable;->isStateful()Z
    move-result v3
    if-eqz v3, :L0
  .line 5
    invoke-virtual { v1, v0 }, Landroid/graphics/drawable/Drawable;->setState([I)Z
    move-result v1
    or-int/2addr v2, v1
  :L0
  .line 6
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->g:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :L1
  .line 7
    invoke-virtual { v1 }, Landroid/graphics/drawable/Drawable;->isStateful()Z
    move-result v3
    if-eqz v3, :L1
  .line 8
    invoke-virtual { v1, v0 }, Landroid/graphics/drawable/Drawable;->setState([I)Z
    move-result v0
    or-int/2addr v2, v0
  :L1
    if-eqz v2, :L2
  .line 9
    invoke-virtual { p0 }, Landroid/widget/CompoundButton;->invalidate()V
  :L2
    return-void
.end method

.method public getCompoundPaddingLeft()I
  .registers 3
  .line 1
    invoke-static { p0 }, Landroidx/appcompat/widget/a1;->b(Landroid/view/View;)Z
    move-result v0
    if-nez v0, :L0
  .line 2
    invoke-super { p0 }, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I
    move-result v0
    return v0
  :L0
  .line 3
    invoke-super { p0 }, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I
    move-result v0
    iget v1, p0, Landroidx/appcompat/widget/SwitchCompat;->z:I
    add-int/2addr v0, v1
  .line 4
    invoke-virtual { p0 }, Landroid/widget/CompoundButton;->getText()Ljava/lang/CharSequence;
    move-result-object v1
    invoke-static { v1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v1
    if-nez v1, :L1
  .line 5
    iget v1, p0, Landroidx/appcompat/widget/SwitchCompat;->n:I
    add-int/2addr v0, v1
  :L1
    return v0
.end method

.method public getCompoundPaddingRight()I
  .registers 3
  .line 1
    invoke-static { p0 }, Landroidx/appcompat/widget/a1;->b(Landroid/view/View;)Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    invoke-super { p0 }, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I
    move-result v0
    return v0
  :L0
  .line 3
    invoke-super { p0 }, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I
    move-result v0
    iget v1, p0, Landroidx/appcompat/widget/SwitchCompat;->z:I
    add-int/2addr v0, v1
  .line 4
    invoke-virtual { p0 }, Landroid/widget/CompoundButton;->getText()Ljava/lang/CharSequence;
    move-result-object v1
    invoke-static { v1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v1
    if-nez v1, :L1
  .line 5
    iget v1, p0, Landroidx/appcompat/widget/SwitchCompat;->n:I
    add-int/2addr v0, v1
  :L1
    return v0
.end method

.method public getShowText()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/SwitchCompat;->r:Z
    return v0
.end method

.method public getSplitTrack()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/SwitchCompat;->o:Z
    return v0
.end method

.method public getSwitchMinWidth()I
  .registers 2
  .line 1
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat;->m:I
    return v0
.end method

.method public getSwitchPadding()I
  .registers 2
  .line 1
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat;->n:I
    return v0
.end method

.method public getTextOff()Ljava/lang/CharSequence;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->q:Ljava/lang/CharSequence;
    return-object v0
.end method

.method public getTextOn()Ljava/lang/CharSequence;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->p:Ljava/lang/CharSequence;
    return-object v0
.end method

.method public getThumbDrawable()Landroid/graphics/drawable/Drawable;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;
    return-object v0
.end method

.method public getThumbTextPadding()I
  .registers 2
  .line 1
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat;->l:I
    return v0
.end method

.method public getThumbTintList()Landroid/content/res/ColorStateList;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->c:Landroid/content/res/ColorStateList;
    return-object v0
.end method

.method public getThumbTintMode()Landroid/graphics/PorterDuff$Mode;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->d:Landroid/graphics/PorterDuff$Mode;
    return-object v0
.end method

.method public getTrackDrawable()Landroid/graphics/drawable/Drawable;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->g:Landroid/graphics/drawable/Drawable;
    return-object v0
.end method

.method public getTrackTintList()Landroid/content/res/ColorStateList;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->h:Landroid/content/res/ColorStateList;
    return-object v0
.end method

.method public getTrackTintMode()Landroid/graphics/PorterDuff$Mode;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->i:Landroid/graphics/PorterDuff$Mode;
    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
  .registers 2
  .line 1
    invoke-super { p0 }, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L0
  .line 3
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V
  :L0
  .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->g:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L1
  .line 5
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V
  :L1
  .line 6
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->L:Landroid/animation/ObjectAnimator;
    if-eqz v0, :L2
    invoke-virtual { v0 }, Landroid/animation/ObjectAnimator;->isStarted()Z
    move-result v0
    if-eqz v0, :L2
  .line 7
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->L:Landroid/animation/ObjectAnimator;
    invoke-virtual { v0 }, Landroid/animation/ObjectAnimator;->end()V
    const/4 v0, 0
  .line 8
    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->L:Landroid/animation/ObjectAnimator;
  :L2
    return-void
.end method

.method public k(Landroid/content/Context;I)V
  .registers 6
  .line 1
    sget-object v0, Lc/a/j;->TextAppearance:[I
    invoke-static { p1, p2, v0 }, Landroidx/appcompat/widget/u0;->t(Landroid/content/Context;I[I)Landroidx/appcompat/widget/u0;
    move-result-object p1
  .line 2
    sget p2, Lc/a/j;->TextAppearance_android_textColor:I
    invoke-virtual { p1, p2 }, Landroidx/appcompat/widget/u0;->c(I)Landroid/content/res/ColorStateList;
    move-result-object p2
    if-eqz p2, :L0
  .line 3
    iput-object p2, p0, Landroidx/appcompat/widget/SwitchCompat;->H:Landroid/content/res/ColorStateList;
    goto :L1
  :L0
  .line 4
    invoke-virtual { p0 }, Landroid/widget/CompoundButton;->getTextColors()Landroid/content/res/ColorStateList;
    move-result-object p2
    iput-object p2, p0, Landroidx/appcompat/widget/SwitchCompat;->H:Landroid/content/res/ColorStateList;
  :L1
  .line 5
    sget p2, Lc/a/j;->TextAppearance_android_textSize:I
    const/4 v0, 0
    invoke-virtual { p1, p2, v0 }, Landroidx/appcompat/widget/u0;->f(II)I
    move-result p2
    if-eqz p2, :L2
    int-to-float p2, p2
  .line 6
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->G:Landroid/text/TextPaint;
    invoke-virtual { v1 }, Landroid/text/TextPaint;->getTextSize()F
    move-result v1
    cmpl-float v1, p2, v1
    if-eqz v1, :L2
  .line 7
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->G:Landroid/text/TextPaint;
    invoke-virtual { v1, p2 }, Landroid/text/TextPaint;->setTextSize(F)V
  .line 8
    invoke-virtual { p0 }, Landroid/widget/CompoundButton;->requestLayout()V
  :L2
  .line 9
    sget p2, Lc/a/j;->TextAppearance_android_typeface:I
    const/4 v1, -1
    invoke-virtual { p1, p2, v1 }, Landroidx/appcompat/widget/u0;->k(II)I
    move-result p2
  .line 10
    sget v2, Lc/a/j;->TextAppearance_android_textStyle:I
    invoke-virtual { p1, v2, v1 }, Landroidx/appcompat/widget/u0;->k(II)I
    move-result v1
  .line 11
    invoke-direct { p0, p2, v1 }, Landroidx/appcompat/widget/SwitchCompat;->m(II)V
  .line 12
    sget p2, Lc/a/j;->TextAppearance_textAllCaps:I
    invoke-virtual { p1, p2, v0 }, Landroidx/appcompat/widget/u0;->a(IZ)Z
    move-result p2
    if-eqz p2, :L3
  .line 13
    new-instance p2, Lc/a/n/a;
    invoke-virtual { p0 }, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-direct { p2, v0 }, Lc/a/n/a;-><init>(Landroid/content/Context;)V
    iput-object p2, p0, Landroidx/appcompat/widget/SwitchCompat;->K:Landroid/text/method/TransformationMethod;
    goto :L4
  :L3
    const/4 p2, 0
  .line 14
    iput-object p2, p0, Landroidx/appcompat/widget/SwitchCompat;->K:Landroid/text/method/TransformationMethod;
  :L4
  .line 15
    invoke-virtual { p1 }, Landroidx/appcompat/widget/u0;->w()V
    return-void
.end method

.method public l(Landroid/graphics/Typeface;I)V
  .registers 6
    const/4 v0, 0
    const/4 v1, 0
    if-lez p2, :L6
    if-nez p1, :L0
  .line 1
    invoke-static { p2 }, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;
    move-result-object p1
    goto :L1
  :L0
  .line 2
    invoke-static { p1, p2 }, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    move-result-object p1
  :L1
  .line 3
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/SwitchCompat;->setSwitchTypeface(Landroid/graphics/Typeface;)V
    if-eqz p1, :L2
  .line 4
    invoke-virtual { p1 }, Landroid/graphics/Typeface;->getStyle()I
    move-result p1
    goto :L3
  :L2
    const/4 p1, 0
  :L3
    xor-int/lit8 p1, p1, -1
    and-int/2addr p1, p2
  .line 5
    iget-object p2, p0, Landroidx/appcompat/widget/SwitchCompat;->G:Landroid/text/TextPaint;
    and-int/lit8 v2, p1, 1
    if-eqz v2, :L4
    const/4 v1, 1
  :L4
    invoke-virtual { p2, v1 }, Landroid/text/TextPaint;->setFakeBoldText(Z)V
  .line 6
    iget-object p2, p0, Landroidx/appcompat/widget/SwitchCompat;->G:Landroid/text/TextPaint;
    and-int/lit8 p1, p1, 2
    if-eqz p1, :L5
    const/high16 v0, -16768
  :L5
    invoke-virtual { p2, v0 }, Landroid/text/TextPaint;->setTextSkewX(F)V
    goto :L7
  :L6
  .line 7
    iget-object p2, p0, Landroidx/appcompat/widget/SwitchCompat;->G:Landroid/text/TextPaint;
    invoke-virtual { p2, v1 }, Landroid/text/TextPaint;->setFakeBoldText(Z)V
  .line 8
    iget-object p2, p0, Landroidx/appcompat/widget/SwitchCompat;->G:Landroid/text/TextPaint;
    invoke-virtual { p2, v0 }, Landroid/text/TextPaint;->setTextSkewX(F)V
  .line 9
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/SwitchCompat;->setSwitchTypeface(Landroid/graphics/Typeface;)V
  :L7
    return-void
.end method

.method protected onCreateDrawableState(I)[I
  .registers 3
    add-int/lit8 p1, p1, 1
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/CompoundButton;->onCreateDrawableState(I)[I
    move-result-object p1
  .line 2
    invoke-virtual { p0 }, Landroid/widget/CompoundButton;->isChecked()Z
    move-result v0
    if-eqz v0, :L0
  .line 3
    sget-object v0, Landroidx/appcompat/widget/SwitchCompat;->P:[I
    invoke-static { p1, v0 }, Landroid/widget/CompoundButton;->mergeDrawableStates([I[I)[I
  :L0
    return-object p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
  .registers 11
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->N:Landroid/graphics/Rect;
  .line 3
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->g:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :L0
  .line 4
    invoke-virtual { v1, v0 }, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z
    goto :L1
  :L0
  .line 5
    invoke-virtual { v0 }, Landroid/graphics/Rect;->setEmpty()V
  :L1
  .line 6
    iget v2, p0, Landroidx/appcompat/widget/SwitchCompat;->D:I
  .line 7
    iget v3, p0, Landroidx/appcompat/widget/SwitchCompat;->F:I
  .line 8
    iget v4, v0, Landroid/graphics/Rect;->top:I
    add-int/2addr v2, v4
  .line 9
    iget v4, v0, Landroid/graphics/Rect;->bottom:I
    sub-int/2addr v3, v4
  .line 10
    iget-object v4, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :L3
  .line 11
    iget-boolean v5, p0, Landroidx/appcompat/widget/SwitchCompat;->o:Z
    if-eqz v5, :L2
    if-eqz v4, :L2
  .line 12
    invoke-static { v4 }, Landroidx/appcompat/widget/c0;->d(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;
    move-result-object v5
  .line 13
    invoke-virtual { v4, v0 }, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V
  .line 14
    iget v6, v0, Landroid/graphics/Rect;->left:I
    iget v7, v5, Landroid/graphics/Rect;->left:I
    add-int/2addr v6, v7
    iput v6, v0, Landroid/graphics/Rect;->left:I
  .line 15
    iget v6, v0, Landroid/graphics/Rect;->right:I
    iget v5, v5, Landroid/graphics/Rect;->right:I
    sub-int/2addr v6, v5
    iput v6, v0, Landroid/graphics/Rect;->right:I
  .line 16
    invoke-virtual { p1 }, Landroid/graphics/Canvas;->save()I
    move-result v5
  .line 17
    sget-object v6, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;
    invoke-virtual { p1, v0, v6 }, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z
  .line 18
    invoke-virtual { v1, p1 }, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
  .line 19
    invoke-virtual { p1, v5 }, Landroid/graphics/Canvas;->restoreToCount(I)V
    goto :L3
  :L2
  .line 20
    invoke-virtual { v1, p1 }, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
  :L3
  .line 21
    invoke-virtual { p1 }, Landroid/graphics/Canvas;->save()I
    move-result v0
    if-eqz v4, :L4
  .line 22
    invoke-virtual { v4, p1 }, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
  :L4
  .line 23
    invoke-direct { p0 }, Landroidx/appcompat/widget/SwitchCompat;->getTargetCheckedState()Z
    move-result v1
    if-eqz v1, :L5
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->I:Landroid/text/Layout;
    goto :L6
  :L5
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->J:Landroid/text/Layout;
  :L6
    if-eqz v1, :L10
  .line 24
    invoke-virtual { p0 }, Landroid/widget/CompoundButton;->getDrawableState()[I
    move-result-object v5
  .line 25
    iget-object v6, p0, Landroidx/appcompat/widget/SwitchCompat;->H:Landroid/content/res/ColorStateList;
    if-eqz v6, :L7
  .line 26
    iget-object v7, p0, Landroidx/appcompat/widget/SwitchCompat;->G:Landroid/text/TextPaint;
    const/4 v8, 0
    invoke-virtual { v6, v5, v8 }, Landroid/content/res/ColorStateList;->getColorForState([II)I
    move-result v6
    invoke-virtual { v7, v6 }, Landroid/text/TextPaint;->setColor(I)V
  :L7
  .line 27
    iget-object v6, p0, Landroidx/appcompat/widget/SwitchCompat;->G:Landroid/text/TextPaint;
    iput-object v5, v6, Landroid/text/TextPaint;->drawableState:[I
    if-eqz v4, :L8
  .line 28
    invoke-virtual { v4 }, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;
    move-result-object v4
  .line 29
    iget v5, v4, Landroid/graphics/Rect;->left:I
    iget v4, v4, Landroid/graphics/Rect;->right:I
    add-int/2addr v5, v4
    goto :L9
  :L8
  .line 30
    invoke-virtual { p0 }, Landroid/widget/CompoundButton;->getWidth()I
    move-result v5
  :L9
  .line 31
    div-int/lit8 v5, v5, 2
    invoke-virtual { v1 }, Landroid/text/Layout;->getWidth()I
    move-result v4
    div-int/lit8 v4, v4, 2
    sub-int/2addr v5, v4
    add-int/2addr v2, v3
  .line 32
    div-int/lit8 v2, v2, 2
    invoke-virtual { v1 }, Landroid/text/Layout;->getHeight()I
    move-result v3
    div-int/lit8 v3, v3, 2
    sub-int/2addr v2, v3
    int-to-float v3, v5
    int-to-float v2, v2
  .line 33
    invoke-virtual { p1, v3, v2 }, Landroid/graphics/Canvas;->translate(FF)V
  .line 34
    invoke-virtual { v1, p1 }, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V
  :L10
  .line 35
    invoke-virtual { p1, v0 }, Landroid/graphics/Canvas;->restoreToCount(I)V
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
  .registers 3
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/CompoundButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    const-string v0, "android.widget.Switch"
  .line 2
    invoke-virtual { p1, v0 }, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
  .registers 5
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/CompoundButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    const-string v0, "android.widget.Switch"
  .line 2
    invoke-virtual { p1, v0 }, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V
  .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 30
    if-ge v0, v1, :L3
  .line 4
    invoke-virtual { p0 }, Landroid/widget/CompoundButton;->isChecked()Z
    move-result v0
    if-eqz v0, :L0
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->p:Ljava/lang/CharSequence;
    goto :L1
  :L0
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->q:Ljava/lang/CharSequence;
  :L1
  .line 5
    invoke-static { v0 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v1
    if-nez v1, :L3
  .line 6
    invoke-virtual { p1 }, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;
    move-result-object v1
  .line 7
    invoke-static { v1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v2
    if-eqz v2, :L2
  .line 8
    invoke-virtual { p1, v0 }, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V
    goto :L3
  :L2
  .line 9
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
  .line 10
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    const/16 v1, 32
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
  .line 11
    invoke-virtual { p1, v2 }, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V
  :L3
    return-void
.end method

.method protected onLayout(ZIIII)V
  .registers 6
  .line 1
    invoke-super/range { p0 .. p5 }, Landroid/widget/CompoundButton;->onLayout(ZIIII)V
  .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;
    const/4 p2, 0
    if-eqz p1, :L2
  .line 3
    iget-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->N:Landroid/graphics/Rect;
  .line 4
    iget-object p3, p0, Landroidx/appcompat/widget/SwitchCompat;->g:Landroid/graphics/drawable/Drawable;
    if-eqz p3, :L0
  .line 5
    invoke-virtual { p3, p1 }, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z
    goto :L1
  :L0
  .line 6
    invoke-virtual { p1 }, Landroid/graphics/Rect;->setEmpty()V
  :L1
  .line 7
    iget-object p3, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;
    invoke-static { p3 }, Landroidx/appcompat/widget/c0;->d(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;
    move-result-object p3
  .line 8
    iget p4, p3, Landroid/graphics/Rect;->left:I
    iget p5, p1, Landroid/graphics/Rect;->left:I
    sub-int/2addr p4, p5
    invoke-static { p2, p4 }, Ljava/lang/Math;->max(II)I
    move-result p4
  .line 9
    iget p3, p3, Landroid/graphics/Rect;->right:I
    iget p1, p1, Landroid/graphics/Rect;->right:I
    sub-int/2addr p3, p1
    invoke-static { p2, p3 }, Ljava/lang/Math;->max(II)I
    move-result p2
    goto :L3
  :L2
    const/4 p4, 0
  :L3
  .line 10
    invoke-static { p0 }, Landroidx/appcompat/widget/a1;->b(Landroid/view/View;)Z
    move-result p1
    if-eqz p1, :L4
  .line 11
    invoke-virtual { p0 }, Landroid/widget/CompoundButton;->getPaddingLeft()I
    move-result p1
    add-int/2addr p1, p4
  .line 12
    iget p3, p0, Landroidx/appcompat/widget/SwitchCompat;->z:I
    add-int/2addr p3, p1
    sub-int/2addr p3, p4
    sub-int/2addr p3, p2
    goto :L5
  :L4
  .line 13
    invoke-virtual { p0 }, Landroid/widget/CompoundButton;->getWidth()I
    move-result p1
    invoke-virtual { p0 }, Landroid/widget/CompoundButton;->getPaddingRight()I
    move-result p3
    sub-int/2addr p1, p3
    sub-int p3, p1, p2
  .line 14
    iget p1, p0, Landroidx/appcompat/widget/SwitchCompat;->z:I
    sub-int p1, p3, p1
    add-int/2addr p1, p4
    add-int/2addr p1, p2
  :L5
  .line 15
    invoke-virtual { p0 }, Landroid/widget/CompoundButton;->getGravity()I
    move-result p2
    and-int/lit8 p2, p2, 112
    const/16 p4, 16
    if-eq p2, p4, :L7
    const/16 p4, 80
    if-eq p2, p4, :L6
  .line 16
    invoke-virtual { p0 }, Landroid/widget/CompoundButton;->getPaddingTop()I
    move-result p2
  .line 17
    iget p4, p0, Landroidx/appcompat/widget/SwitchCompat;->A:I
    goto :L8
  :L6
  .line 18
    invoke-virtual { p0 }, Landroid/widget/CompoundButton;->getHeight()I
    move-result p2
    invoke-virtual { p0 }, Landroid/widget/CompoundButton;->getPaddingBottom()I
    move-result p4
    sub-int p4, p2, p4
  .line 19
    iget p2, p0, Landroidx/appcompat/widget/SwitchCompat;->A:I
    sub-int p2, p4, p2
    goto :L9
  :L7
  .line 20
    invoke-virtual { p0 }, Landroid/widget/CompoundButton;->getPaddingTop()I
    move-result p2
    invoke-virtual { p0 }, Landroid/widget/CompoundButton;->getHeight()I
    move-result p4
    add-int/2addr p2, p4
    invoke-virtual { p0 }, Landroid/widget/CompoundButton;->getPaddingBottom()I
    move-result p4
    sub-int/2addr p2, p4
    div-int/lit8 p2, p2, 2
    iget p4, p0, Landroidx/appcompat/widget/SwitchCompat;->A:I
    div-int/lit8 p5, p4, 2
    sub-int/2addr p2, p5
  :L8
    add-int/2addr p4, p2
  :L9
  .line 21
    iput p1, p0, Landroidx/appcompat/widget/SwitchCompat;->C:I
  .line 22
    iput p2, p0, Landroidx/appcompat/widget/SwitchCompat;->D:I
  .line 23
    iput p4, p0, Landroidx/appcompat/widget/SwitchCompat;->F:I
  .line 24
    iput p3, p0, Landroidx/appcompat/widget/SwitchCompat;->E:I
    return-void
.end method

.method public onMeasure(II)V
  .registers 9
  .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/SwitchCompat;->r:Z
    if-eqz v0, :L1
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->I:Landroid/text/Layout;
    if-nez v0, :L0
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->p:Ljava/lang/CharSequence;
    invoke-direct { p0, v0 }, Landroidx/appcompat/widget/SwitchCompat;->h(Ljava/lang/CharSequence;)Landroid/text/Layout;
    move-result-object v0
    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->I:Landroid/text/Layout;
  :L0
  .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->J:Landroid/text/Layout;
    if-nez v0, :L1
  .line 5
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->q:Ljava/lang/CharSequence;
    invoke-direct { p0, v0 }, Landroidx/appcompat/widget/SwitchCompat;->h(Ljava/lang/CharSequence;)Landroid/text/Layout;
    move-result-object v0
    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->J:Landroid/text/Layout;
  :L1
  .line 6
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->N:Landroid/graphics/Rect;
  .line 7
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;
    const/4 v2, 0
    if-eqz v1, :L2
  .line 8
    invoke-virtual { v1, v0 }, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z
  .line 9
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;
    invoke-virtual { v1 }, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
    move-result v1
    iget v3, v0, Landroid/graphics/Rect;->left:I
    sub-int/2addr v1, v3
    iget v3, v0, Landroid/graphics/Rect;->right:I
    sub-int/2addr v1, v3
  .line 10
    iget-object v3, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;
    invoke-virtual { v3 }, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    move-result v3
    goto :L3
  :L2
    const/4 v1, 0
    const/4 v3, 0
  :L3
  .line 11
    iget-boolean v4, p0, Landroidx/appcompat/widget/SwitchCompat;->r:Z
    if-eqz v4, :L4
  .line 12
    iget-object v4, p0, Landroidx/appcompat/widget/SwitchCompat;->I:Landroid/text/Layout;
    invoke-virtual { v4 }, Landroid/text/Layout;->getWidth()I
    move-result v4
    iget-object v5, p0, Landroidx/appcompat/widget/SwitchCompat;->J:Landroid/text/Layout;
    invoke-virtual { v5 }, Landroid/text/Layout;->getWidth()I
    move-result v5
    invoke-static { v4, v5 }, Ljava/lang/Math;->max(II)I
    move-result v4
    iget v5, p0, Landroidx/appcompat/widget/SwitchCompat;->l:I
    mul-int/lit8 v5, v5, 2
    add-int/2addr v4, v5
    goto :L5
  :L4
    const/4 v4, 0
  :L5
  .line 13
    invoke-static { v4, v1 }, Ljava/lang/Math;->max(II)I
    move-result v1
    iput v1, p0, Landroidx/appcompat/widget/SwitchCompat;->B:I
  .line 14
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->g:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :L6
  .line 15
    invoke-virtual { v1, v0 }, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z
  .line 16
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->g:Landroid/graphics/drawable/Drawable;
    invoke-virtual { v1 }, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    move-result v2
    goto :L7
  :L6
  .line 17
    invoke-virtual { v0 }, Landroid/graphics/Rect;->setEmpty()V
  :L7
  .line 18
    iget v1, v0, Landroid/graphics/Rect;->left:I
  .line 19
    iget v0, v0, Landroid/graphics/Rect;->right:I
  .line 20
    iget-object v4, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;
    if-eqz v4, :L8
  .line 21
    invoke-static { v4 }, Landroidx/appcompat/widget/c0;->d(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;
    move-result-object v4
  .line 22
    iget v5, v4, Landroid/graphics/Rect;->left:I
    invoke-static { v1, v5 }, Ljava/lang/Math;->max(II)I
    move-result v1
  .line 23
    iget v4, v4, Landroid/graphics/Rect;->right:I
    invoke-static { v0, v4 }, Ljava/lang/Math;->max(II)I
    move-result v0
  :L8
  .line 24
    iget v4, p0, Landroidx/appcompat/widget/SwitchCompat;->m:I
    iget v5, p0, Landroidx/appcompat/widget/SwitchCompat;->B:I
    mul-int/lit8 v5, v5, 2
    add-int/2addr v5, v1
    add-int/2addr v5, v0
    invoke-static { v4, v5 }, Ljava/lang/Math;->max(II)I
    move-result v0
  .line 25
    invoke-static { v2, v3 }, Ljava/lang/Math;->max(II)I
    move-result v1
  .line 26
    iput v0, p0, Landroidx/appcompat/widget/SwitchCompat;->z:I
  .line 27
    iput v1, p0, Landroidx/appcompat/widget/SwitchCompat;->A:I
  .line 28
    invoke-super { p0, p1, p2 }, Landroid/widget/CompoundButton;->onMeasure(II)V
  .line 29
    invoke-virtual { p0 }, Landroid/widget/CompoundButton;->getMeasuredHeight()I
    move-result p1
    if-ge p1, v1, :L9
  .line 30
    invoke-virtual { p0 }, Landroid/widget/CompoundButton;->getMeasuredWidthAndState()I
    move-result p1
    invoke-virtual { p0, p1, v1 }, Landroid/widget/CompoundButton;->setMeasuredDimension(II)V
  :L9
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
  .registers 3
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/CompoundButton;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
  .line 2
    invoke-virtual { p0 }, Landroid/widget/CompoundButton;->isChecked()Z
    move-result v0
    if-eqz v0, :L0
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->p:Ljava/lang/CharSequence;
    goto :L1
  :L0
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->q:Ljava/lang/CharSequence;
  :L1
    if-eqz v0, :L2
  .line 3
    invoke-virtual { p1 }, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;
    move-result-object p1
    invoke-interface { p1, v0 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  :L2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
  .registers 8
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->w:Landroid/view/VelocityTracker;
    invoke-virtual { v0, p1 }, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V
  .line 2
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getActionMasked()I
    move-result v0
    const/4 v1, 1
    if-eqz v0, :L11
    const/4 v2, 2
    if-eq v0, v1, :L9
    if-eq v0, v2, :L0
    const/4 v3, 3
    if-eq v0, v3, :L9
    goto/16 :L12
  :L0
  .line 3
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat;->s:I
    if-eq v0, v1, :L7
    if-eq v0, v2, :L1
    goto/16 :L12
  :L1
  .line 4
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getX()F
    move-result p1
  .line 5
    invoke-direct { p0 }, Landroidx/appcompat/widget/SwitchCompat;->getThumbScrollRange()I
    move-result v0
  .line 6
    iget v2, p0, Landroidx/appcompat/widget/SwitchCompat;->u:F
    sub-float v2, p1, v2
    const/high16 v3, 16256
    const/4 v4, 0
    if-eqz v0, :L2
    int-to-float v0, v0
    div-float/2addr v2, v0
    goto :L4
  :L2
    cmpl-float v0, v2, v4
    if-lez v0, :L3
    const/high16 v2, 16256
    goto :L4
  :L3
    const/high16 v0, -16512
    const/high16 v2, -16512
  :L4
  .line 7
    invoke-static { p0 }, Landroidx/appcompat/widget/a1;->b(Landroid/view/View;)Z
    move-result v0
    if-eqz v0, :L5
    neg-float v2, v2
  :L5
  .line 8
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat;->y:F
    add-float/2addr v0, v2
    invoke-static { v0, v4, v3 }, Landroidx/appcompat/widget/SwitchCompat;->f(FFF)F
    move-result v0
  .line 9
    iget v2, p0, Landroidx/appcompat/widget/SwitchCompat;->y:F
    cmpl-float v2, v0, v2
    if-eqz v2, :L6
  .line 10
    iput p1, p0, Landroidx/appcompat/widget/SwitchCompat;->u:F
  .line 11
    invoke-virtual { p0, v0 }, Landroidx/appcompat/widget/SwitchCompat;->setThumbPosition(F)V
  :L6
    return v1
  :L7
  .line 12
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getX()F
    move-result v0
  .line 13
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getY()F
    move-result v3
  .line 14
    iget v4, p0, Landroidx/appcompat/widget/SwitchCompat;->u:F
    sub-float v4, v0, v4
    invoke-static { v4 }, Ljava/lang/Math;->abs(F)F
    move-result v4
    iget v5, p0, Landroidx/appcompat/widget/SwitchCompat;->t:I
    int-to-float v5, v5
    cmpl-float v4, v4, v5
    if-gtz v4, :L8
    iget v4, p0, Landroidx/appcompat/widget/SwitchCompat;->v:F
    sub-float v4, v3, v4
  .line 15
    invoke-static { v4 }, Ljava/lang/Math;->abs(F)F
    move-result v4
    iget v5, p0, Landroidx/appcompat/widget/SwitchCompat;->t:I
    int-to-float v5, v5
    cmpl-float v4, v4, v5
    if-lez v4, :L12
  :L8
  .line 16
    iput v2, p0, Landroidx/appcompat/widget/SwitchCompat;->s:I
  .line 17
    invoke-virtual { p0 }, Landroid/widget/CompoundButton;->getParent()Landroid/view/ViewParent;
    move-result-object p1
    invoke-interface { p1, v1 }, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V
  .line 18
    iput v0, p0, Landroidx/appcompat/widget/SwitchCompat;->u:F
  .line 19
    iput v3, p0, Landroidx/appcompat/widget/SwitchCompat;->v:F
    return v1
  :L9
  .line 20
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat;->s:I
    if-ne v0, v2, :L10
  .line 21
    invoke-direct { p0, p1 }, Landroidx/appcompat/widget/SwitchCompat;->n(Landroid/view/MotionEvent;)V
  .line 22
    invoke-super { p0, p1 }, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z
    return v1
  :L10
    const/4 v0, 0
  .line 23
    iput v0, p0, Landroidx/appcompat/widget/SwitchCompat;->s:I
  .line 24
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->w:Landroid/view/VelocityTracker;
    invoke-virtual { v0 }, Landroid/view/VelocityTracker;->clear()V
    goto :L12
  :L11
  .line 25
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getX()F
    move-result v0
  .line 26
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getY()F
    move-result v2
  .line 27
    invoke-virtual { p0 }, Landroid/widget/CompoundButton;->isEnabled()Z
    move-result v3
    if-eqz v3, :L12
    invoke-direct { p0, v0, v2 }, Landroidx/appcompat/widget/SwitchCompat;->g(FF)Z
    move-result v3
    if-eqz v3, :L12
  .line 28
    iput v1, p0, Landroidx/appcompat/widget/SwitchCompat;->s:I
  .line 29
    iput v0, p0, Landroidx/appcompat/widget/SwitchCompat;->u:F
  .line 30
    iput v2, p0, Landroidx/appcompat/widget/SwitchCompat;->v:F
  :L12
  .line 31
    invoke-super { p0, p1 }, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z
    move-result p1
    return p1
.end method

.method public setChecked(Z)V
  .registers 3
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/CompoundButton;->setChecked(Z)V
  .line 2
    invoke-virtual { p0 }, Landroid/widget/CompoundButton;->isChecked()Z
    move-result p1
    if-eqz p1, :L0
  .line 3
    invoke-direct { p0 }, Landroidx/appcompat/widget/SwitchCompat;->j()V
    goto :L1
  :L0
  .line 4
    invoke-direct { p0 }, Landroidx/appcompat/widget/SwitchCompat;->i()V
  :L1
  .line 5
    invoke-virtual { p0 }, Landroid/widget/CompoundButton;->getWindowToken()Landroid/os/IBinder;
    move-result-object v0
    if-eqz v0, :L2
    invoke-static { p0 }, Landroidx/core/view/v;->T(Landroid/view/View;)Z
    move-result v0
    if-eqz v0, :L2
  .line 6
    invoke-direct { p0, p1 }, Landroidx/appcompat/widget/SwitchCompat;->a(Z)V
    goto :L5
  :L2
  .line 7
    invoke-direct { p0 }, Landroidx/appcompat/widget/SwitchCompat;->d()V
    if-eqz p1, :L3
    const/high16 p1, 16256
    goto :L4
  :L3
    const/4 p1, 0
  :L4
  .line 8
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/SwitchCompat;->setThumbPosition(F)V
  :L5
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
  .registers 2
  .line 1
    invoke-static { p0, p1 }, Landroidx/core/widget/i;->p(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;
    move-result-object p1
  .line 2
    invoke-super { p0, p1 }, Landroid/widget/CompoundButton;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    return-void
.end method

.method public setShowText(Z)V
  .registers 3
  .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/SwitchCompat;->r:Z
    if-eq v0, p1, :L0
  .line 2
    iput-boolean p1, p0, Landroidx/appcompat/widget/SwitchCompat;->r:Z
  .line 3
    invoke-virtual { p0 }, Landroid/widget/CompoundButton;->requestLayout()V
  :L0
    return-void
.end method

.method public setSplitTrack(Z)V
  .registers 2
  .line 1
    iput-boolean p1, p0, Landroidx/appcompat/widget/SwitchCompat;->o:Z
  .line 2
    invoke-virtual { p0 }, Landroid/widget/CompoundButton;->invalidate()V
    return-void
.end method

.method public setSwitchMinWidth(I)V
  .registers 2
  .line 1
    iput p1, p0, Landroidx/appcompat/widget/SwitchCompat;->m:I
  .line 2
    invoke-virtual { p0 }, Landroid/widget/CompoundButton;->requestLayout()V
    return-void
.end method

.method public setSwitchPadding(I)V
  .registers 2
  .line 1
    iput p1, p0, Landroidx/appcompat/widget/SwitchCompat;->n:I
  .line 2
    invoke-virtual { p0 }, Landroid/widget/CompoundButton;->requestLayout()V
    return-void
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->G:Landroid/text/TextPaint;
    invoke-virtual { v0 }, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;
    move-result-object v0
    if-eqz v0, :L0
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->G:Landroid/text/TextPaint;
    invoke-virtual { v0 }, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;
    move-result-object v0
    invoke-virtual { v0, p1 }, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L1
  :L0
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->G:Landroid/text/TextPaint;
  .line 2
    invoke-virtual { v0 }, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;
    move-result-object v0
    if-nez v0, :L2
    if-eqz p1, :L2
  :L1
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->G:Landroid/text/TextPaint;
    invoke-virtual { v0, p1 }, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
  .line 4
    invoke-virtual { p0 }, Landroid/widget/CompoundButton;->requestLayout()V
  .line 5
    invoke-virtual { p0 }, Landroid/widget/CompoundButton;->invalidate()V
  :L2
    return-void
.end method

.method public setTextOff(Ljava/lang/CharSequence;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->q:Ljava/lang/CharSequence;
  .line 2
    invoke-virtual { p0 }, Landroid/widget/CompoundButton;->requestLayout()V
  .line 3
    invoke-virtual { p0 }, Landroid/widget/CompoundButton;->isChecked()Z
    move-result p1
    if-nez p1, :L0
  .line 4
    invoke-direct { p0 }, Landroidx/appcompat/widget/SwitchCompat;->i()V
  :L0
    return-void
.end method

.method public setTextOn(Ljava/lang/CharSequence;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->p:Ljava/lang/CharSequence;
  .line 2
    invoke-virtual { p0 }, Landroid/widget/CompoundButton;->requestLayout()V
  .line 3
    invoke-virtual { p0 }, Landroid/widget/CompoundButton;->isChecked()Z
    move-result p1
    if-eqz p1, :L0
  .line 4
    invoke-direct { p0 }, Landroidx/appcompat/widget/SwitchCompat;->j()V
  :L0
    return-void
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L0
    const/4 v1, 0
  .line 2
    invoke-virtual { v0, v1 }, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
  :L0
  .line 3
    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :L1
  .line 4
    invoke-virtual { p1, p0 }, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
  :L1
  .line 5
    invoke-virtual { p0 }, Landroid/widget/CompoundButton;->requestLayout()V
    return-void
.end method

.method setThumbPosition(F)V
  .registers 2
  .line 1
    iput p1, p0, Landroidx/appcompat/widget/SwitchCompat;->y:F
  .line 2
    invoke-virtual { p0 }, Landroid/widget/CompoundButton;->invalidate()V
    return-void
.end method

.method public setThumbResource(I)V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-static { v0, p1 }, Lc/a/k/a/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    move-result-object p1
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/SwitchCompat;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    return-void
.end method

.method public setThumbTextPadding(I)V
  .registers 2
  .line 1
    iput p1, p0, Landroidx/appcompat/widget/SwitchCompat;->l:I
  .line 2
    invoke-virtual { p0 }, Landroid/widget/CompoundButton;->requestLayout()V
    return-void
.end method

.method public setThumbTintList(Landroid/content/res/ColorStateList;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->c:Landroid/content/res/ColorStateList;
    const/4 p1, 1
  .line 2
    iput-boolean p1, p0, Landroidx/appcompat/widget/SwitchCompat;->e:Z
  .line 3
    invoke-direct { p0 }, Landroidx/appcompat/widget/SwitchCompat;->b()V
    return-void
.end method

.method public setThumbTintMode(Landroid/graphics/PorterDuff$Mode;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->d:Landroid/graphics/PorterDuff$Mode;
    const/4 p1, 1
  .line 2
    iput-boolean p1, p0, Landroidx/appcompat/widget/SwitchCompat;->f:Z
  .line 3
    invoke-direct { p0 }, Landroidx/appcompat/widget/SwitchCompat;->b()V
    return-void
.end method

.method public setTrackDrawable(Landroid/graphics/drawable/Drawable;)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->g:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L0
    const/4 v1, 0
  .line 2
    invoke-virtual { v0, v1 }, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
  :L0
  .line 3
    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->g:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :L1
  .line 4
    invoke-virtual { p1, p0 }, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
  :L1
  .line 5
    invoke-virtual { p0 }, Landroid/widget/CompoundButton;->requestLayout()V
    return-void
.end method

.method public setTrackResource(I)V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-static { v0, p1 }, Lc/a/k/a/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    move-result-object p1
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/SwitchCompat;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    return-void
.end method

.method public setTrackTintList(Landroid/content/res/ColorStateList;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->h:Landroid/content/res/ColorStateList;
    const/4 p1, 1
  .line 2
    iput-boolean p1, p0, Landroidx/appcompat/widget/SwitchCompat;->j:Z
  .line 3
    invoke-direct { p0 }, Landroidx/appcompat/widget/SwitchCompat;->c()V
    return-void
.end method

.method public setTrackTintMode(Landroid/graphics/PorterDuff$Mode;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->i:Landroid/graphics/PorterDuff$Mode;
    const/4 p1, 1
  .line 2
    iput-boolean p1, p0, Landroidx/appcompat/widget/SwitchCompat;->k:Z
  .line 3
    invoke-direct { p0 }, Landroidx/appcompat/widget/SwitchCompat;->c()V
    return-void
.end method

.method public toggle()V
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroid/widget/CompoundButton;->isChecked()Z
    move-result v0
    xor-int/lit8 v0, v0, 1
    invoke-virtual { p0, v0 }, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
  .registers 3
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    move-result v0
    if-nez v0, :L1
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;
    if-eq p1, v0, :L1
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->g:Landroid/graphics/drawable/Drawable;
    if-ne p1, v0, :L0
    goto :L1
  :L0
    const/4 p1, 0
    goto :L2
  :L1
    const/4 p1, 1
  :L2
    return p1
.end method
