.class public Landroidx/appcompat/widget/u0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/content/res/TypedArray;

.field private c:Landroid/util/TypedValue;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/appcompat/widget/u0;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Landroidx/appcompat/widget/u0;->b:Landroid/content/res/TypedArray;

    return-void
.end method

.method public static t(Landroid/content/Context;I[I)Landroidx/appcompat/widget/u0;
    .registers 4

    .line 1
    new-instance v0, Landroidx/appcompat/widget/u0;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/widget/u0;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    return-object v0
.end method

.method public static u(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/u0;
    .registers 4

    .line 1
    new-instance v0, Landroidx/appcompat/widget/u0;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/widget/u0;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    return-object v0
.end method

.method public static v(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/u0;
    .registers 6

    .line 1
    new-instance v0, Landroidx/appcompat/widget/u0;

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/widget/u0;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    return-object v0
.end method


# virtual methods
.method public a(IZ)Z
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    return p1
.end method

.method public b(II)I
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    return p1
.end method

.method public c(I)Landroid/content/res/ColorStateList;
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/u0;->b:Landroid/content/res/TypedArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_1a

    .line 3
    iget-object v1, p0, Landroidx/appcompat/widget/u0;->a:Landroid/content/Context;

    .line 4
    invoke-static {v1, v0}, Lc/a/k/a/a;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_1a

    return-object v0

    .line 5
    :cond_1a
    iget-object v0, p0, Landroidx/appcompat/widget/u0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method public d(IF)F
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    return p1
.end method

.method public e(II)I
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    return p1
.end method

.method public f(II)I
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    return p1
.end method

.method public g(I)Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/u0;->b:Landroid/content/res/TypedArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_18

    .line 3
    iget-object p1, p0, Landroidx/appcompat/widget/u0;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lc/a/k/a/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 4
    :cond_18
    iget-object v0, p0, Landroidx/appcompat/widget/u0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public h(I)Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/u0;->b:Landroid/content/res/TypedArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-eqz p1, :cond_1d

    .line 3
    invoke-static {}, Landroidx/appcompat/widget/i;->b()Landroidx/appcompat/widget/i;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/widget/u0;->a:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroidx/appcompat/widget/i;->d(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_1d
    const/4 p1, 0x0

    return-object p1
.end method

.method public i(IF)F
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    return p1
.end method

.method public j(IILandroidx/core/content/c/f$a;)Landroid/graphics/Typeface;
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u0;->b:Landroid/content/res/TypedArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-nez p1, :cond_b

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/u0;->c:Landroid/util/TypedValue;

    if-nez v0, :cond_16

    .line 3
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/u0;->c:Landroid/util/TypedValue;

    .line 4
    :cond_16
    iget-object v0, p0, Landroidx/appcompat/widget/u0;->a:Landroid/content/Context;

    iget-object v1, p0, Landroidx/appcompat/widget/u0;->c:Landroid/util/TypedValue;

    invoke-static {v0, p1, v1, p2, p3}, Landroidx/core/content/c/f;->d(Landroid/content/Context;ILandroid/util/TypedValue;ILandroidx/core/content/c/f$a;)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1
.end method

.method public k(II)I
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    return p1
.end method

.method public l(II)I
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    return p1
.end method

.method public m(II)I
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p1

    return p1
.end method

.method public n(II)I
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    return p1
.end method

.method public o(I)Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public p(I)Ljava/lang/CharSequence;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public q(I)[Ljava/lang/CharSequence;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public r()Landroid/content/res/TypedArray;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u0;->b:Landroid/content/res/TypedArray;

    return-object v0
.end method

.method public s(I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    return p1
.end method

.method public w()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
