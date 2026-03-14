.class public Landroidx/appcompat/widget/p0;
.super Ljava/lang/Object;
.source "SourceFile"

.field private final static a:Ljava/lang/ThreadLocal;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/ThreadLocal<",
      "Landroid/util/TypedValue;",
      ">;"
    }
  .end annotation
.end field

.field final static b:[I

.field final static c:[I

.field final static d:[I

.field final static e:[I

.field final static f:[I

.field private final static g:[I

.method static constructor <clinit>()V
  .registers 4
  .line 1
    new-instance v0, Ljava/lang/ThreadLocal;
    invoke-direct { v0 }, Ljava/lang/ThreadLocal;-><init>()V
    sput-object v0, Landroidx/appcompat/widget/p0;->a:Ljava/lang/ThreadLocal;
    const/4 v0, 1
    new-array v1, v0, [I
    const v2, -16842910
    const/4 v3, 0
    aput v2, v1, v3
  .line 2
    sput-object v1, Landroidx/appcompat/widget/p0;->b:[I
    new-array v1, v0, [I
    const v2, 16842908
    aput v2, v1, v3
  .line 3
    sput-object v1, Landroidx/appcompat/widget/p0;->c:[I
    new-array v1, v0, [I
    const v2, 16842919
    aput v2, v1, v3
  .line 4
    sput-object v1, Landroidx/appcompat/widget/p0;->d:[I
    new-array v1, v0, [I
    const v2, 16842912
    aput v2, v1, v3
  .line 5
    sput-object v1, Landroidx/appcompat/widget/p0;->e:[I
    new-array v1, v3, [I
  .line 6
    sput-object v1, Landroidx/appcompat/widget/p0;->f:[I
    new-array v0, v0, [I
  .line 7
    sput-object v0, Landroidx/appcompat/widget/p0;->g:[I
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/content/Context;)V
  .catchall { :L0 .. :L1 } :L2
  .registers 4
  .line 1
    sget-object v0, Lc/a/j;->AppCompatTheme:[I
    invoke-virtual { p1, v0 }, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;
    move-result-object p1
  :L0
  .line 2
    sget v0, Lc/a/j;->AppCompatTheme_windowActionBar:I
    invoke-virtual { p1, v0 }, Landroid/content/res/TypedArray;->hasValue(I)Z
    move-result v0
    if-nez v0, :L1
  .line 3
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "View "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object p0
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string p0, " is an AppCompat widget that can only be used with a Theme.AppCompat theme (or descendant)."
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L1
  .line 4
    invoke-virtual { p1 }, Landroid/content/res/TypedArray;->recycle()V
    return-void
  :L2
    move-exception p0
    invoke-virtual { p1 }, Landroid/content/res/TypedArray;->recycle()V
  .line 5
    throw p0
.end method

.method public static b(Landroid/content/Context;I)I
  .registers 6
  .line 1
    invoke-static { p0, p1 }, Landroidx/appcompat/widget/p0;->e(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    move-result-object v0
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Landroid/content/res/ColorStateList;->isStateful()Z
    move-result v1
    if-eqz v1, :L0
  .line 3
    sget-object p0, Landroidx/appcompat/widget/p0;->b:[I
    invoke-virtual { v0 }, Landroid/content/res/ColorStateList;->getDefaultColor()I
    move-result p1
    invoke-virtual { v0, p0, p1 }, Landroid/content/res/ColorStateList;->getColorForState([II)I
    move-result p0
    return p0
  :L0
  .line 4
    invoke-static { }, Landroidx/appcompat/widget/p0;->f()Landroid/util/TypedValue;
    move-result-object v0
  .line 5
    invoke-virtual { p0 }, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;
    move-result-object v1
    const v2, 16842803
    const/4 v3, 1
    invoke-virtual { v1, v2, v0, v3 }, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z
  .line 6
    invoke-virtual { v0 }, Landroid/util/TypedValue;->getFloat()F
    move-result v0
  .line 7
    invoke-static { p0, p1, v0 }, Landroidx/appcompat/widget/p0;->d(Landroid/content/Context;IF)I
    move-result p0
    return p0
.end method

.method public static c(Landroid/content/Context;I)I
  .catchall { :L0 .. :L1 } :L2
  .registers 4
  .line 1
    sget-object v0, Landroidx/appcompat/widget/p0;->g:[I
    const/4 v1, 0
    aput p1, v0, v1
    const/4 p1, 0
  .line 2
    invoke-static { p0, p1, v0 }, Landroidx/appcompat/widget/u0;->u(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/u0;
    move-result-object p0
  :L0
  .line 3
    invoke-virtual { p0, v1, v1 }, Landroidx/appcompat/widget/u0;->b(II)I
    move-result p1
  :L1
  .line 4
    invoke-virtual { p0 }, Landroidx/appcompat/widget/u0;->w()V
    return p1
  :L2
    move-exception p1
    invoke-virtual { p0 }, Landroidx/appcompat/widget/u0;->w()V
  .line 5
    throw p1
.end method

.method static d(Landroid/content/Context;IF)I
  .registers 3
  .line 1
    invoke-static { p0, p1 }, Landroidx/appcompat/widget/p0;->c(Landroid/content/Context;I)I
    move-result p0
  .line 2
    invoke-static { p0 }, Landroid/graphics/Color;->alpha(I)I
    move-result p1
    int-to-float p1, p1
    mul-float p1, p1, p2
  .line 3
    invoke-static { p1 }, Ljava/lang/Math;->round(F)I
    move-result p1
    invoke-static { p0, p1 }, Lc/g/d/a;->d(II)I
    move-result p0
    return p0
.end method

.method public static e(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
  .catchall { :L0 .. :L1 } :L2
  .registers 4
  .line 1
    sget-object v0, Landroidx/appcompat/widget/p0;->g:[I
    const/4 v1, 0
    aput p1, v0, v1
    const/4 p1, 0
  .line 2
    invoke-static { p0, p1, v0 }, Landroidx/appcompat/widget/u0;->u(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/u0;
    move-result-object p0
  :L0
  .line 3
    invoke-virtual { p0, v1 }, Landroidx/appcompat/widget/u0;->c(I)Landroid/content/res/ColorStateList;
    move-result-object p1
  :L1
  .line 4
    invoke-virtual { p0 }, Landroidx/appcompat/widget/u0;->w()V
    return-object p1
  :L2
    move-exception p1
    invoke-virtual { p0 }, Landroidx/appcompat/widget/u0;->w()V
  .line 5
    throw p1
.end method

.method private static f()Landroid/util/TypedValue;
  .registers 2
  .line 1
    sget-object v0, Landroidx/appcompat/widget/p0;->a:Ljava/lang/ThreadLocal;
    invoke-virtual { v0 }, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/util/TypedValue;
    if-nez v0, :L0
  .line 2
    new-instance v0, Landroid/util/TypedValue;
    invoke-direct { v0 }, Landroid/util/TypedValue;-><init>()V
  .line 3
    sget-object v1, Landroidx/appcompat/widget/p0;->a:Ljava/lang/ThreadLocal;
    invoke-virtual { v1, v0 }, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
  :L0
    return-object v0
.end method
