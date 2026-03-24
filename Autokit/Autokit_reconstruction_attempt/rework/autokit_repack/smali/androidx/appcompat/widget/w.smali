.class Landroidx/appcompat/widget/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/widget/TextView;

.field private b:Landroidx/appcompat/widget/s0;

.field private c:Landroidx/appcompat/widget/s0;

.field private d:Landroidx/appcompat/widget/s0;

.field private e:Landroidx/appcompat/widget/s0;

.field private f:Landroidx/appcompat/widget/s0;

.field private g:Landroidx/appcompat/widget/s0;

.field private h:Landroidx/appcompat/widget/s0;

.field private final i:Landroidx/appcompat/widget/y;

.field private j:I

.field private k:I

.field private l:Landroid/graphics/Typeface;

.field private m:Z


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/appcompat/widget/w;->j:I

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroidx/appcompat/widget/w;->k:I

    .line 4
    iput-object p1, p0, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;

    .line 5
    new-instance p1, Landroidx/appcompat/widget/y;

    iget-object v0, p0, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;

    invoke-direct {p1, v0}, Landroidx/appcompat/widget/y;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/w;->i:Landroidx/appcompat/widget/y;

    return-void
.end method

.method private B(IF)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/w;->i:Landroidx/appcompat/widget/y;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/y;->y(IF)V

    return-void
.end method

.method private C(Landroid/content/Context;Landroidx/appcompat/widget/u0;)V
    .registers 12

    .line 1
    sget v0, Lc/a/j;->TextAppearance_android_textStyle:I

    iget v1, p0, Landroidx/appcompat/widget/w;->j:I

    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/widget/u0;->k(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/w;->j:I

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v2, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-lt v0, v1, :cond_23

    .line 3
    sget v0, Lc/a/j;->TextAppearance_android_textFontWeight:I

    invoke-virtual {p2, v0, v3}, Landroidx/appcompat/widget/u0;->k(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/w;->k:I

    if-eq v0, v3, :cond_23

    .line 4
    iget v0, p0, Landroidx/appcompat/widget/w;->j:I

    and-int/2addr v0, v2

    or-int/2addr v0, v4

    iput v0, p0, Landroidx/appcompat/widget/w;->j:I

    .line 5
    :cond_23
    sget v0, Lc/a/j;->TextAppearance_android_fontFamily:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/u0;->s(I)Z

    move-result v0

    const/4 v5, 0x1

    if-nez v0, :cond_5c

    sget v0, Lc/a/j;->TextAppearance_fontFamily:I

    .line 6
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/u0;->s(I)Z

    move-result v0

    if-eqz v0, :cond_35

    goto :goto_5c

    .line 7
    :cond_35
    sget p1, Lc/a/j;->TextAppearance_android_typeface:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/u0;->s(I)Z

    move-result p1

    if-eqz p1, :cond_5b

    .line 8
    iput-boolean v4, p0, Landroidx/appcompat/widget/w;->m:Z

    .line 9
    sget p1, Lc/a/j;->TextAppearance_android_typeface:I

    invoke-virtual {p2, p1, v5}, Landroidx/appcompat/widget/u0;->k(II)I

    move-result p1

    if-eq p1, v5, :cond_57

    if-eq p1, v2, :cond_52

    const/4 p2, 0x3

    if-eq p1, p2, :cond_4d

    goto :goto_5b

    .line 10
    :cond_4d
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object p1, p0, Landroidx/appcompat/widget/w;->l:Landroid/graphics/Typeface;

    goto :goto_5b

    .line 11
    :cond_52
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    iput-object p1, p0, Landroidx/appcompat/widget/w;->l:Landroid/graphics/Typeface;

    goto :goto_5b

    .line 12
    :cond_57
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iput-object p1, p0, Landroidx/appcompat/widget/w;->l:Landroid/graphics/Typeface;

    :cond_5b
    :goto_5b
    return-void

    :cond_5c
    :goto_5c
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Landroidx/appcompat/widget/w;->l:Landroid/graphics/Typeface;

    .line 14
    sget v0, Lc/a/j;->TextAppearance_fontFamily:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/u0;->s(I)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 15
    sget v0, Lc/a/j;->TextAppearance_fontFamily:I

    goto :goto_6c

    .line 16
    :cond_6a
    sget v0, Lc/a/j;->TextAppearance_android_fontFamily:I

    .line 17
    :goto_6c
    iget v6, p0, Landroidx/appcompat/widget/w;->k:I

    .line 18
    iget v7, p0, Landroidx/appcompat/widget/w;->j:I

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result p1

    if-nez p1, :cond_b4

    .line 20
    new-instance p1, Ljava/lang/ref/WeakReference;

    iget-object v8, p0, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;

    invoke-direct {p1, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 21
    new-instance v8, Landroidx/appcompat/widget/w$a;

    invoke-direct {v8, p0, v6, v7, p1}, Landroidx/appcompat/widget/w$a;-><init>(Landroidx/appcompat/widget/w;IILjava/lang/ref/WeakReference;)V

    .line 22
    :try_start_82
    iget p1, p0, Landroidx/appcompat/widget/w;->j:I

    invoke-virtual {p2, v0, p1, v8}, Landroidx/appcompat/widget/u0;->j(IILandroidx/core/content/c/f$a;)Landroid/graphics/Typeface;

    move-result-object p1

    if-eqz p1, :cond_a9

    .line 23
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v1, :cond_a7

    iget v6, p0, Landroidx/appcompat/widget/w;->k:I

    if-eq v6, v3, :cond_a7

    .line 24
    invoke-static {p1, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iget v6, p0, Landroidx/appcompat/widget/w;->k:I

    iget v7, p0, Landroidx/appcompat/widget/w;->j:I

    and-int/2addr v7, v2

    if-eqz v7, :cond_9f

    const/4 v7, 0x1

    goto :goto_a0

    :cond_9f
    const/4 v7, 0x0

    .line 25
    :goto_a0
    invoke-static {p1, v6, v7}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/w;->l:Landroid/graphics/Typeface;

    goto :goto_a9

    .line 26
    :cond_a7
    iput-object p1, p0, Landroidx/appcompat/widget/w;->l:Landroid/graphics/Typeface;

    .line 27
    :cond_a9
    :goto_a9
    iget-object p1, p0, Landroidx/appcompat/widget/w;->l:Landroid/graphics/Typeface;

    if-nez p1, :cond_af

    const/4 p1, 0x1

    goto :goto_b0

    :cond_af
    const/4 p1, 0x0

    :goto_b0
    iput-boolean p1, p0, Landroidx/appcompat/widget/w;->m:Z
    :try_end_b2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_82 .. :try_end_b2} :catch_b3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_82 .. :try_end_b2} :catch_b3

    goto :goto_b4

    :catch_b3
    nop

    .line 28
    :cond_b4
    :goto_b4
    iget-object p1, p0, Landroidx/appcompat/widget/w;->l:Landroid/graphics/Typeface;

    if-nez p1, :cond_e1

    .line 29
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/u0;->o(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_e1

    .line 30
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v1, :cond_d9

    iget p2, p0, Landroidx/appcompat/widget/w;->k:I

    if-eq p2, v3, :cond_d9

    .line 31
    invoke-static {p1, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iget p2, p0, Landroidx/appcompat/widget/w;->k:I

    iget v0, p0, Landroidx/appcompat/widget/w;->j:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_d2

    const/4 v4, 0x1

    .line 32
    :cond_d2
    invoke-static {p1, p2, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/w;->l:Landroid/graphics/Typeface;

    goto :goto_e1

    .line 33
    :cond_d9
    iget p2, p0, Landroidx/appcompat/widget/w;->j:I

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/w;->l:Landroid/graphics/Typeface;

    :cond_e1
    :goto_e1
    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/s0;)V
    .registers 4

    if-eqz p1, :cond_d

    if-eqz p2, :cond_d

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroidx/appcompat/widget/i;->i(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/s0;[I)V

    :cond_d
    return-void
.end method

.method private static d(Landroid/content/Context;Landroidx/appcompat/widget/i;I)Landroidx/appcompat/widget/s0;
    .registers 3

    .line 1
    invoke-virtual {p1, p0, p2}, Landroidx/appcompat/widget/i;->f(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 2
    new-instance p1, Landroidx/appcompat/widget/s0;

    invoke-direct {p1}, Landroidx/appcompat/widget/s0;-><init>()V

    const/4 p2, 0x1

    .line 3
    iput-boolean p2, p1, Landroidx/appcompat/widget/s0;->d:Z

    .line 4
    iput-object p0, p1, Landroidx/appcompat/widget/s0;->a:Landroid/content/res/ColorStateList;

    return-object p1

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method private y(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 13

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-lt v0, v1, :cond_2e

    if-nez p5, :cond_e

    if-eqz p6, :cond_2e

    .line 2
    :cond_e
    iget-object p1, p0, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 3
    iget-object p3, p0, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;

    if-eqz p5, :cond_19

    goto :goto_1b

    .line 4
    :cond_19
    aget-object p5, p1, v5

    :goto_1b
    if-eqz p2, :cond_1e

    goto :goto_20

    .line 5
    :cond_1e
    aget-object p2, p1, v3

    :goto_20
    if-eqz p6, :cond_23

    goto :goto_25

    .line 6
    :cond_23
    aget-object p6, p1, v4

    :goto_25
    if-eqz p4, :cond_28

    goto :goto_2a

    .line 7
    :cond_28
    aget-object p4, p1, v2

    .line 8
    :goto_2a
    invoke-virtual {p3, p5, p2, p6, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_7b

    :cond_2e
    if-nez p1, :cond_36

    if-nez p2, :cond_36

    if-nez p3, :cond_36

    if-eqz p4, :cond_7b

    .line 9
    :cond_36
    sget p5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p5, v1, :cond_5c

    .line 10
    iget-object p5, p0, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;

    invoke-virtual {p5}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object p5

    .line 11
    aget-object p6, p5, v5

    if-nez p6, :cond_48

    aget-object p6, p5, v4

    if-eqz p6, :cond_5c

    .line 12
    :cond_48
    iget-object p1, p0, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;

    aget-object p3, p5, v5

    if-eqz p2, :cond_4f

    goto :goto_51

    .line 13
    :cond_4f
    aget-object p2, p5, v3

    :goto_51
    aget-object p6, p5, v4

    if-eqz p4, :cond_56

    goto :goto_58

    .line 14
    :cond_56
    aget-object p4, p5, v2

    .line 15
    :goto_58
    invoke-virtual {p1, p3, p2, p6, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 16
    :cond_5c
    iget-object p5, p0, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;

    invoke-virtual {p5}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p5

    .line 17
    iget-object p6, p0, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_67

    goto :goto_69

    .line 18
    :cond_67
    aget-object p1, p5, v5

    :goto_69
    if-eqz p2, :cond_6c

    goto :goto_6e

    .line 19
    :cond_6c
    aget-object p2, p5, v3

    :goto_6e
    if-eqz p3, :cond_71

    goto :goto_73

    .line 20
    :cond_71
    aget-object p3, p5, v4

    :goto_73
    if-eqz p4, :cond_76

    goto :goto_78

    .line 21
    :cond_76
    aget-object p4, p5, v2

    .line 22
    :goto_78
    invoke-virtual {p6, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_7b
    :goto_7b
    return-void
.end method

.method private z()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/w;->h:Landroidx/appcompat/widget/s0;

    iput-object v0, p0, Landroidx/appcompat/widget/w;->b:Landroidx/appcompat/widget/s0;

    .line 2
    iput-object v0, p0, Landroidx/appcompat/widget/w;->c:Landroidx/appcompat/widget/s0;

    .line 3
    iput-object v0, p0, Landroidx/appcompat/widget/w;->d:Landroidx/appcompat/widget/s0;

    .line 4
    iput-object v0, p0, Landroidx/appcompat/widget/w;->e:Landroidx/appcompat/widget/s0;

    .line 5
    iput-object v0, p0, Landroidx/appcompat/widget/w;->f:Landroidx/appcompat/widget/s0;

    .line 6
    iput-object v0, p0, Landroidx/appcompat/widget/w;->g:Landroidx/appcompat/widget/s0;

    return-void
.end method


# virtual methods
.method A(IF)V
    .registers 4

    .line 1
    sget-boolean v0, Landroidx/core/widget/b;->a:Z

    if-nez v0, :cond_d

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/widget/w;->l()Z

    move-result v0

    if-nez v0, :cond_d

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/w;->B(IF)V

    :cond_d
    return-void
.end method

.method b()V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/w;->b:Landroidx/appcompat/widget/s0;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_12

    iget-object v0, p0, Landroidx/appcompat/widget/w;->c:Landroidx/appcompat/widget/s0;

    if-nez v0, :cond_12

    iget-object v0, p0, Landroidx/appcompat/widget/w;->d:Landroidx/appcompat/widget/s0;

    if-nez v0, :cond_12

    iget-object v0, p0, Landroidx/appcompat/widget/w;->e:Landroidx/appcompat/widget/s0;

    if-eqz v0, :cond_36

    .line 2
    :cond_12
    iget-object v0, p0, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3
    aget-object v3, v0, v2

    iget-object v4, p0, Landroidx/appcompat/widget/w;->b:Landroidx/appcompat/widget/s0;

    invoke-direct {p0, v3, v4}, Landroidx/appcompat/widget/w;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/s0;)V

    const/4 v3, 0x1

    .line 4
    aget-object v3, v0, v3

    iget-object v4, p0, Landroidx/appcompat/widget/w;->c:Landroidx/appcompat/widget/s0;

    invoke-direct {p0, v3, v4}, Landroidx/appcompat/widget/w;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/s0;)V

    .line 5
    aget-object v3, v0, v1

    iget-object v4, p0, Landroidx/appcompat/widget/w;->d:Landroidx/appcompat/widget/s0;

    invoke-direct {p0, v3, v4}, Landroidx/appcompat/widget/w;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/s0;)V

    const/4 v3, 0x3

    .line 6
    aget-object v0, v0, v3

    iget-object v3, p0, Landroidx/appcompat/widget/w;->e:Landroidx/appcompat/widget/s0;

    invoke-direct {p0, v0, v3}, Landroidx/appcompat/widget/w;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/s0;)V

    .line 7
    :cond_36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v0, v3, :cond_58

    .line 8
    iget-object v0, p0, Landroidx/appcompat/widget/w;->f:Landroidx/appcompat/widget/s0;

    if-nez v0, :cond_44

    iget-object v0, p0, Landroidx/appcompat/widget/w;->g:Landroidx/appcompat/widget/s0;

    if-eqz v0, :cond_58

    .line 9
    :cond_44
    iget-object v0, p0, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 10
    aget-object v2, v0, v2

    iget-object v3, p0, Landroidx/appcompat/widget/w;->f:Landroidx/appcompat/widget/s0;

    invoke-direct {p0, v2, v3}, Landroidx/appcompat/widget/w;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/s0;)V

    .line 11
    aget-object v0, v0, v1

    iget-object v1, p0, Landroidx/appcompat/widget/w;->g:Landroidx/appcompat/widget/s0;

    invoke-direct {p0, v0, v1}, Landroidx/appcompat/widget/w;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/s0;)V

    :cond_58
    return-void
.end method

.method c()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/w;->i:Landroidx/appcompat/widget/y;

    invoke-virtual {v0}, Landroidx/appcompat/widget/y;->b()V

    return-void
.end method

.method e()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/w;->i:Landroidx/appcompat/widget/y;

    invoke-virtual {v0}, Landroidx/appcompat/widget/y;->j()I

    move-result v0

    return v0
.end method

.method f()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/w;->i:Landroidx/appcompat/widget/y;

    invoke-virtual {v0}, Landroidx/appcompat/widget/y;->k()I

    move-result v0

    return v0
.end method

.method g()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/w;->i:Landroidx/appcompat/widget/y;

    invoke-virtual {v0}, Landroidx/appcompat/widget/y;->l()I

    move-result v0

    return v0
.end method

.method h()[I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/w;->i:Landroidx/appcompat/widget/y;

    invoke-virtual {v0}, Landroidx/appcompat/widget/y;->m()[I

    move-result-object v0

    return-object v0
.end method

.method i()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/w;->i:Landroidx/appcompat/widget/y;

    invoke-virtual {v0}, Landroidx/appcompat/widget/y;->n()I

    move-result v0

    return v0
.end method

.method j()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/w;->h:Landroidx/appcompat/widget/s0;

    if-eqz v0, :cond_7

    iget-object v0, v0, Landroidx/appcompat/widget/s0;->a:Landroid/content/res/ColorStateList;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method k()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/w;->h:Landroidx/appcompat/widget/s0;

    if-eqz v0, :cond_7

    iget-object v0, v0, Landroidx/appcompat/widget/s0;->b:Landroid/graphics/PorterDuff$Mode;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method l()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/w;->i:Landroidx/appcompat/widget/y;

    invoke-virtual {v0}, Landroidx/appcompat/widget/y;->s()Z

    move-result v0

    return v0
.end method

.method m(Landroid/util/AttributeSet;I)V
    .registers 20
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    .line 1
    iget-object v0, v7, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 2
    invoke-static {}, Landroidx/appcompat/widget/i;->b()Landroidx/appcompat/widget/i;

    move-result-object v11

    .line 3
    sget-object v0, Lc/a/j;->AppCompatTextHelper:[I

    const/4 v12, 0x0

    invoke-static {v10, v8, v0, v9, v12}, Landroidx/appcompat/widget/u0;->v(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/u0;

    move-result-object v13

    .line 4
    iget-object v0, v7, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lc/a/j;->AppCompatTextHelper:[I

    .line 5
    invoke-virtual {v13}, Landroidx/appcompat/widget/u0;->r()Landroid/content/res/TypedArray;

    move-result-object v4

    const/4 v6, 0x0

    move-object/from16 v3, p1

    move/from16 v5, p2

    .line 6
    invoke-static/range {v0 .. v6}, Landroidx/core/view/v;->m0(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 7
    sget v0, Lc/a/j;->AppCompatTextHelper_android_textAppearance:I

    const/4 v14, -0x1

    invoke-virtual {v13, v0, v14}, Landroidx/appcompat/widget/u0;->n(II)I

    move-result v0

    .line 8
    sget v1, Lc/a/j;->AppCompatTextHelper_android_drawableLeft:I

    invoke-virtual {v13, v1}, Landroidx/appcompat/widget/u0;->s(I)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 9
    sget v1, Lc/a/j;->AppCompatTextHelper_android_drawableLeft:I

    .line 10
    invoke-virtual {v13, v1, v12}, Landroidx/appcompat/widget/u0;->n(II)I

    move-result v1

    .line 11
    invoke-static {v10, v11, v1}, Landroidx/appcompat/widget/w;->d(Landroid/content/Context;Landroidx/appcompat/widget/i;I)Landroidx/appcompat/widget/s0;

    move-result-object v1

    iput-object v1, v7, Landroidx/appcompat/widget/w;->b:Landroidx/appcompat/widget/s0;

    .line 12
    :cond_46
    sget v1, Lc/a/j;->AppCompatTextHelper_android_drawableTop:I

    invoke-virtual {v13, v1}, Landroidx/appcompat/widget/u0;->s(I)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 13
    sget v1, Lc/a/j;->AppCompatTextHelper_android_drawableTop:I

    .line 14
    invoke-virtual {v13, v1, v12}, Landroidx/appcompat/widget/u0;->n(II)I

    move-result v1

    .line 15
    invoke-static {v10, v11, v1}, Landroidx/appcompat/widget/w;->d(Landroid/content/Context;Landroidx/appcompat/widget/i;I)Landroidx/appcompat/widget/s0;

    move-result-object v1

    iput-object v1, v7, Landroidx/appcompat/widget/w;->c:Landroidx/appcompat/widget/s0;

    .line 16
    :cond_5a
    sget v1, Lc/a/j;->AppCompatTextHelper_android_drawableRight:I

    invoke-virtual {v13, v1}, Landroidx/appcompat/widget/u0;->s(I)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 17
    sget v1, Lc/a/j;->AppCompatTextHelper_android_drawableRight:I

    .line 18
    invoke-virtual {v13, v1, v12}, Landroidx/appcompat/widget/u0;->n(II)I

    move-result v1

    .line 19
    invoke-static {v10, v11, v1}, Landroidx/appcompat/widget/w;->d(Landroid/content/Context;Landroidx/appcompat/widget/i;I)Landroidx/appcompat/widget/s0;

    move-result-object v1

    iput-object v1, v7, Landroidx/appcompat/widget/w;->d:Landroidx/appcompat/widget/s0;

    .line 20
    :cond_6e
    sget v1, Lc/a/j;->AppCompatTextHelper_android_drawableBottom:I

    invoke-virtual {v13, v1}, Landroidx/appcompat/widget/u0;->s(I)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 21
    sget v1, Lc/a/j;->AppCompatTextHelper_android_drawableBottom:I

    .line 22
    invoke-virtual {v13, v1, v12}, Landroidx/appcompat/widget/u0;->n(II)I

    move-result v1

    .line 23
    invoke-static {v10, v11, v1}, Landroidx/appcompat/widget/w;->d(Landroid/content/Context;Landroidx/appcompat/widget/i;I)Landroidx/appcompat/widget/s0;

    move-result-object v1

    iput-object v1, v7, Landroidx/appcompat/widget/w;->e:Landroidx/appcompat/widget/s0;

    .line 24
    :cond_82
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_b0

    .line 25
    sget v1, Lc/a/j;->AppCompatTextHelper_android_drawableStart:I

    invoke-virtual {v13, v1}, Landroidx/appcompat/widget/u0;->s(I)Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 26
    sget v1, Lc/a/j;->AppCompatTextHelper_android_drawableStart:I

    .line 27
    invoke-virtual {v13, v1, v12}, Landroidx/appcompat/widget/u0;->n(II)I

    move-result v1

    .line 28
    invoke-static {v10, v11, v1}, Landroidx/appcompat/widget/w;->d(Landroid/content/Context;Landroidx/appcompat/widget/i;I)Landroidx/appcompat/widget/s0;

    move-result-object v1

    iput-object v1, v7, Landroidx/appcompat/widget/w;->f:Landroidx/appcompat/widget/s0;

    .line 29
    :cond_9c
    sget v1, Lc/a/j;->AppCompatTextHelper_android_drawableEnd:I

    invoke-virtual {v13, v1}, Landroidx/appcompat/widget/u0;->s(I)Z

    move-result v1

    if-eqz v1, :cond_b0

    .line 30
    sget v1, Lc/a/j;->AppCompatTextHelper_android_drawableEnd:I

    .line 31
    invoke-virtual {v13, v1, v12}, Landroidx/appcompat/widget/u0;->n(II)I

    move-result v1

    .line 32
    invoke-static {v10, v11, v1}, Landroidx/appcompat/widget/w;->d(Landroid/content/Context;Landroidx/appcompat/widget/i;I)Landroidx/appcompat/widget/s0;

    move-result-object v1

    iput-object v1, v7, Landroidx/appcompat/widget/w;->g:Landroidx/appcompat/widget/s0;

    .line 33
    :cond_b0
    invoke-virtual {v13}, Landroidx/appcompat/widget/u0;->w()V

    .line 34
    iget-object v1, v7, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;

    .line 35
    invoke-virtual {v1}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v1

    instance-of v1, v1, Landroid/text/method/PasswordTransformationMethod;

    const/16 v2, 0x1a

    const/16 v4, 0x17

    if-eq v0, v14, :cond_13e

    .line 36
    sget-object v5, Lc/a/j;->TextAppearance:[I

    invoke-static {v10, v0, v5}, Landroidx/appcompat/widget/u0;->t(Landroid/content/Context;I[I)Landroidx/appcompat/widget/u0;

    move-result-object v0

    if-nez v1, :cond_d9

    .line 37
    sget v5, Lc/a/j;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/u0;->s(I)Z

    move-result v5

    if-eqz v5, :cond_d9

    .line 38
    sget v5, Lc/a/j;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v5, v12}, Landroidx/appcompat/widget/u0;->a(IZ)Z

    move-result v5

    const/4 v6, 0x1

    goto :goto_db

    :cond_d9
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 39
    :goto_db
    invoke-direct {v7, v10, v0}, Landroidx/appcompat/widget/w;->C(Landroid/content/Context;Landroidx/appcompat/widget/u0;)V

    .line 40
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v15, v4, :cond_113

    .line 41
    sget v15, Lc/a/j;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v15}, Landroidx/appcompat/widget/u0;->s(I)Z

    move-result v15

    if-eqz v15, :cond_f1

    .line 42
    sget v15, Lc/a/j;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v15}, Landroidx/appcompat/widget/u0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v15

    goto :goto_f2

    :cond_f1
    const/4 v15, 0x0

    .line 43
    :goto_f2
    sget v3, Lc/a/j;->TextAppearance_android_textColorHint:I

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/u0;->s(I)Z

    move-result v3

    if-eqz v3, :cond_101

    .line 44
    sget v3, Lc/a/j;->TextAppearance_android_textColorHint:I

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/u0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    goto :goto_102

    :cond_101
    const/4 v3, 0x0

    .line 45
    :goto_102
    sget v13, Lc/a/j;->TextAppearance_android_textColorLink:I

    invoke-virtual {v0, v13}, Landroidx/appcompat/widget/u0;->s(I)Z

    move-result v13

    if-eqz v13, :cond_111

    .line 46
    sget v13, Lc/a/j;->TextAppearance_android_textColorLink:I

    invoke-virtual {v0, v13}, Landroidx/appcompat/widget/u0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    goto :goto_116

    :cond_111
    const/4 v13, 0x0

    goto :goto_116

    :cond_113
    const/4 v3, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    .line 47
    :goto_116
    sget v14, Lc/a/j;->TextAppearance_textLocale:I

    invoke-virtual {v0, v14}, Landroidx/appcompat/widget/u0;->s(I)Z

    move-result v14

    if-eqz v14, :cond_125

    .line 48
    sget v14, Lc/a/j;->TextAppearance_textLocale:I

    invoke-virtual {v0, v14}, Landroidx/appcompat/widget/u0;->o(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_126

    :cond_125
    const/4 v14, 0x0

    .line 49
    :goto_126
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v2, :cond_139

    sget v4, Lc/a/j;->TextAppearance_fontVariationSettings:I

    .line 50
    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/u0;->s(I)Z

    move-result v4

    if-eqz v4, :cond_139

    .line 51
    sget v4, Lc/a/j;->TextAppearance_fontVariationSettings:I

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/u0;->o(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_13a

    :cond_139
    const/4 v4, 0x0

    .line 52
    :goto_13a
    invoke-virtual {v0}, Landroidx/appcompat/widget/u0;->w()V

    goto :goto_145

    :cond_13e
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 53
    :goto_145
    sget-object v0, Lc/a/j;->TextAppearance:[I

    invoke-static {v10, v8, v0, v9, v12}, Landroidx/appcompat/widget/u0;->v(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/u0;

    move-result-object v0

    if-nez v1, :cond_15e

    .line 54
    sget v2, Lc/a/j;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/u0;->s(I)Z

    move-result v2

    if-eqz v2, :cond_15e

    .line 55
    sget v2, Lc/a/j;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v2, v12}, Landroidx/appcompat/widget/u0;->a(IZ)Z

    move-result v5

    const/16 v16, 0x1

    goto :goto_160

    :cond_15e
    move/from16 v16, v6

    .line 56
    :goto_160
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-ge v2, v6, :cond_190

    .line 57
    sget v2, Lc/a/j;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/u0;->s(I)Z

    move-result v2

    if-eqz v2, :cond_174

    .line 58
    sget v2, Lc/a/j;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/u0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v15

    .line 59
    :cond_174
    sget v2, Lc/a/j;->TextAppearance_android_textColorHint:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/u0;->s(I)Z

    move-result v2

    if-eqz v2, :cond_182

    .line 60
    sget v2, Lc/a/j;->TextAppearance_android_textColorHint:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/u0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 61
    :cond_182
    sget v2, Lc/a/j;->TextAppearance_android_textColorLink:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/u0;->s(I)Z

    move-result v2

    if-eqz v2, :cond_190

    .line 62
    sget v2, Lc/a/j;->TextAppearance_android_textColorLink:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/u0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    .line 63
    :cond_190
    sget v2, Lc/a/j;->TextAppearance_textLocale:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/u0;->s(I)Z

    move-result v2

    if-eqz v2, :cond_19e

    .line 64
    sget v2, Lc/a/j;->TextAppearance_textLocale:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/u0;->o(I)Ljava/lang/String;

    move-result-object v14

    .line 65
    :cond_19e
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-lt v2, v6, :cond_1b2

    sget v2, Lc/a/j;->TextAppearance_fontVariationSettings:I

    .line 66
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/u0;->s(I)Z

    move-result v2

    if-eqz v2, :cond_1b2

    .line 67
    sget v2, Lc/a/j;->TextAppearance_fontVariationSettings:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/u0;->o(I)Ljava/lang/String;

    move-result-object v4

    .line 68
    :cond_1b2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1c

    if-lt v2, v6, :cond_1cf

    sget v2, Lc/a/j;->TextAppearance_android_textSize:I

    .line 69
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/u0;->s(I)Z

    move-result v2

    if-eqz v2, :cond_1cf

    .line 70
    sget v2, Lc/a/j;->TextAppearance_android_textSize:I

    const/4 v6, -0x1

    invoke-virtual {v0, v2, v6}, Landroidx/appcompat/widget/u0;->f(II)I

    move-result v2

    if-nez v2, :cond_1cf

    .line 71
    iget-object v2, v7, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v2, v12, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 72
    :cond_1cf
    invoke-direct {v7, v10, v0}, Landroidx/appcompat/widget/w;->C(Landroid/content/Context;Landroidx/appcompat/widget/u0;)V

    .line 73
    invoke-virtual {v0}, Landroidx/appcompat/widget/u0;->w()V

    if-eqz v15, :cond_1dc

    .line 74
    iget-object v0, v7, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1dc
    if-eqz v3, :cond_1e3

    .line 75
    iget-object v0, v7, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1e3
    if-eqz v13, :cond_1ea

    .line 76
    iget-object v0, v7, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1ea
    if-nez v1, :cond_1f1

    if-eqz v16, :cond_1f1

    .line 77
    invoke-virtual {v7, v5}, Landroidx/appcompat/widget/w;->s(Z)V

    .line 78
    :cond_1f1
    iget-object v0, v7, Landroidx/appcompat/widget/w;->l:Landroid/graphics/Typeface;

    if-eqz v0, :cond_207

    .line 79
    iget v1, v7, Landroidx/appcompat/widget/w;->k:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_202

    .line 80
    iget-object v1, v7, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;

    iget v2, v7, Landroidx/appcompat/widget/w;->j:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_207

    .line 81
    :cond_202
    iget-object v1, v7, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_207
    :goto_207
    if-eqz v4, :cond_20e

    .line 82
    iget-object v0, v7, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z

    :cond_20e
    if-eqz v14, :cond_237

    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_220

    .line 84
    iget-object v0, v7, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;

    invoke-static {v14}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextLocales(Landroid/os/LocaleList;)V

    goto :goto_237

    :cond_220
    const/16 v1, 0x15

    if-lt v0, v1, :cond_237

    const/16 v0, 0x2c

    .line 85
    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {v14, v12, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 86
    iget-object v1, v7, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    .line 87
    :cond_237
    :goto_237
    iget-object v0, v7, Landroidx/appcompat/widget/w;->i:Landroidx/appcompat/widget/y;

    invoke-virtual {v0, v8, v9}, Landroidx/appcompat/widget/y;->t(Landroid/util/AttributeSet;I)V

    .line 88
    sget-boolean v0, Landroidx/core/widget/b;->a:Z

    if-eqz v0, :cond_27b

    .line 89
    iget-object v0, v7, Landroidx/appcompat/widget/w;->i:Landroidx/appcompat/widget/y;

    invoke-virtual {v0}, Landroidx/appcompat/widget/y;->n()I

    move-result v0

    if-eqz v0, :cond_27b

    .line 90
    iget-object v0, v7, Landroidx/appcompat/widget/w;->i:Landroidx/appcompat/widget/y;

    .line 91
    invoke-virtual {v0}, Landroidx/appcompat/widget/y;->m()[I

    move-result-object v0

    .line 92
    array-length v1, v0

    if-lez v1, :cond_27b

    .line 93
    iget-object v1, v7, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_276

    .line 94
    iget-object v0, v7, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;

    iget-object v1, v7, Landroidx/appcompat/widget/w;->i:Landroidx/appcompat/widget/y;

    .line 95
    invoke-virtual {v1}, Landroidx/appcompat/widget/y;->k()I

    move-result v1

    iget-object v2, v7, Landroidx/appcompat/widget/w;->i:Landroidx/appcompat/widget/y;

    .line 96
    invoke-virtual {v2}, Landroidx/appcompat/widget/y;->j()I

    move-result v2

    iget-object v3, v7, Landroidx/appcompat/widget/w;->i:Landroidx/appcompat/widget/y;

    .line 97
    invoke-virtual {v3}, Landroidx/appcompat/widget/y;->l()I

    move-result v3

    .line 98
    invoke-virtual {v0, v1, v2, v3, v12}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    goto :goto_27b

    .line 99
    :cond_276
    iget-object v1, v7, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v12}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    .line 100
    :cond_27b
    :goto_27b
    sget-object v0, Lc/a/j;->AppCompatTextView:[I

    invoke-static {v10, v8, v0}, Landroidx/appcompat/widget/u0;->u(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/u0;

    move-result-object v8

    .line 101
    sget v0, Lc/a/j;->AppCompatTextView_drawableLeftCompat:I

    const/4 v1, -0x1

    invoke-virtual {v8, v0, v1}, Landroidx/appcompat/widget/u0;->n(II)I

    move-result v0

    if-eq v0, v1, :cond_290

    .line 102
    invoke-virtual {v11, v10, v0}, Landroidx/appcompat/widget/i;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v2, v0

    goto :goto_291

    :cond_290
    const/4 v2, 0x0

    .line 103
    :goto_291
    sget v0, Lc/a/j;->AppCompatTextView_drawableTopCompat:I

    invoke-virtual {v8, v0, v1}, Landroidx/appcompat/widget/u0;->n(II)I

    move-result v0

    if-eq v0, v1, :cond_29f

    .line 104
    invoke-virtual {v11, v10, v0}, Landroidx/appcompat/widget/i;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v3, v0

    goto :goto_2a0

    :cond_29f
    const/4 v3, 0x0

    .line 105
    :goto_2a0
    sget v0, Lc/a/j;->AppCompatTextView_drawableRightCompat:I

    invoke-virtual {v8, v0, v1}, Landroidx/appcompat/widget/u0;->n(II)I

    move-result v0

    if-eq v0, v1, :cond_2ae

    .line 106
    invoke-virtual {v11, v10, v0}, Landroidx/appcompat/widget/i;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v4, v0

    goto :goto_2af

    :cond_2ae
    const/4 v4, 0x0

    .line 107
    :goto_2af
    sget v0, Lc/a/j;->AppCompatTextView_drawableBottomCompat:I

    invoke-virtual {v8, v0, v1}, Landroidx/appcompat/widget/u0;->n(II)I

    move-result v0

    if-eq v0, v1, :cond_2bd

    .line 108
    invoke-virtual {v11, v10, v0}, Landroidx/appcompat/widget/i;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v5, v0

    goto :goto_2be

    :cond_2bd
    const/4 v5, 0x0

    .line 109
    :goto_2be
    sget v0, Lc/a/j;->AppCompatTextView_drawableStartCompat:I

    invoke-virtual {v8, v0, v1}, Landroidx/appcompat/widget/u0;->n(II)I

    move-result v0

    if-eq v0, v1, :cond_2cc

    .line 110
    invoke-virtual {v11, v10, v0}, Landroidx/appcompat/widget/i;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v6, v0

    goto :goto_2cd

    :cond_2cc
    const/4 v6, 0x0

    .line 111
    :goto_2cd
    sget v0, Lc/a/j;->AppCompatTextView_drawableEndCompat:I

    invoke-virtual {v8, v0, v1}, Landroidx/appcompat/widget/u0;->n(II)I

    move-result v0

    if-eq v0, v1, :cond_2db

    .line 112
    invoke-virtual {v11, v10, v0}, Landroidx/appcompat/widget/i;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v9, v0

    goto :goto_2dc

    :cond_2db
    const/4 v9, 0x0

    :goto_2dc
    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v9

    .line 113
    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/w;->y(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 114
    sget v0, Lc/a/j;->AppCompatTextView_drawableTint:I

    invoke-virtual {v8, v0}, Landroidx/appcompat/widget/u0;->s(I)Z

    move-result v0

    if-eqz v0, :cond_2fa

    .line 115
    sget v0, Lc/a/j;->AppCompatTextView_drawableTint:I

    invoke-virtual {v8, v0}, Landroidx/appcompat/widget/u0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 116
    iget-object v1, v7, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;

    invoke-static {v1, v0}, Landroidx/core/widget/i;->g(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    .line 117
    :cond_2fa
    sget v0, Lc/a/j;->AppCompatTextView_drawableTintMode:I

    invoke-virtual {v8, v0}, Landroidx/appcompat/widget/u0;->s(I)Z

    move-result v0

    if-eqz v0, :cond_314

    .line 118
    sget v0, Lc/a/j;->AppCompatTextView_drawableTintMode:I

    const/4 v1, -0x1

    .line 119
    invoke-virtual {v8, v0, v1}, Landroidx/appcompat/widget/u0;->k(II)I

    move-result v0

    const/4 v2, 0x0

    .line 120
    invoke-static {v0, v2}, Landroidx/appcompat/widget/c0;->e(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    .line 121
    iget-object v2, v7, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;

    invoke-static {v2, v0}, Landroidx/core/widget/i;->h(Landroid/widget/TextView;Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_315

    :cond_314
    const/4 v1, -0x1

    .line 122
    :goto_315
    sget v0, Lc/a/j;->AppCompatTextView_firstBaselineToTopHeight:I

    invoke-virtual {v8, v0, v1}, Landroidx/appcompat/widget/u0;->f(II)I

    move-result v0

    .line 123
    sget v2, Lc/a/j;->AppCompatTextView_lastBaselineToBottomHeight:I

    invoke-virtual {v8, v2, v1}, Landroidx/appcompat/widget/u0;->f(II)I

    move-result v2

    .line 124
    sget v3, Lc/a/j;->AppCompatTextView_lineHeight:I

    invoke-virtual {v8, v3, v1}, Landroidx/appcompat/widget/u0;->f(II)I

    move-result v3

    .line 125
    invoke-virtual {v8}, Landroidx/appcompat/widget/u0;->w()V

    if-eq v0, v1, :cond_331

    .line 126
    iget-object v4, v7, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;

    invoke-static {v4, v0}, Landroidx/core/widget/i;->j(Landroid/widget/TextView;I)V

    :cond_331
    if-eq v2, v1, :cond_338

    .line 127
    iget-object v0, v7, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;

    invoke-static {v0, v2}, Landroidx/core/widget/i;->k(Landroid/widget/TextView;I)V

    :cond_338
    if-eq v3, v1, :cond_33f

    .line 128
    iget-object v0, v7, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;

    invoke-static {v0, v3}, Landroidx/core/widget/i;->l(Landroid/widget/TextView;I)V

    :cond_33f
    return-void
.end method

.method n(Ljava/lang/ref/WeakReference;Landroid/graphics/Typeface;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/TextView;",
            ">;",
            "Landroid/graphics/Typeface;",
            ")V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/w;->m:Z

    if-eqz v0, :cond_24

    .line 2
    iput-object p2, p0, Landroidx/appcompat/widget/w;->l:Landroid/graphics/Typeface;

    .line 3
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_24

    .line 4
    invoke-static {p1}, Landroidx/core/view/v;->S(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 5
    iget v0, p0, Landroidx/appcompat/widget/w;->j:I

    .line 6
    new-instance v1, Landroidx/appcompat/widget/w$b;

    invoke-direct {v1, p0, p1, p2, v0}, Landroidx/appcompat/widget/w$b;-><init>(Landroidx/appcompat/widget/w;Landroid/widget/TextView;Landroid/graphics/Typeface;I)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_24

    .line 7
    :cond_1f
    iget v0, p0, Landroidx/appcompat/widget/w;->j:I

    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_24
    :goto_24
    return-void
.end method

.method o(ZIIII)V
    .registers 6

    .line 1
    sget-boolean p1, Landroidx/core/widget/b;->a:Z

    if-nez p1, :cond_7

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/widget/w;->c()V

    :cond_7
    return-void
.end method

.method p()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/w;->b()V

    return-void
.end method

.method q(Landroid/content/Context;I)V
    .registers 6

    .line 1
    sget-object v0, Lc/a/j;->TextAppearance:[I

    invoke-static {p1, p2, v0}, Landroidx/appcompat/widget/u0;->t(Landroid/content/Context;I[I)Landroidx/appcompat/widget/u0;

    move-result-object p2

    .line 2
    sget v0, Lc/a/j;->TextAppearance_textAllCaps:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/u0;->s(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 3
    sget v0, Lc/a/j;->TextAppearance_textAllCaps:I

    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/widget/u0;->a(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/w;->s(Z)V

    .line 4
    :cond_18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v0, v2, :cond_5d

    .line 5
    sget v0, Lc/a/j;->TextAppearance_android_textColor:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/u0;->s(I)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 6
    sget v0, Lc/a/j;->TextAppearance_android_textColor:I

    .line 7
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/u0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 8
    iget-object v2, p0, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 9
    :cond_33
    sget v0, Lc/a/j;->TextAppearance_android_textColorLink:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/u0;->s(I)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 10
    sget v0, Lc/a/j;->TextAppearance_android_textColorLink:I

    .line 11
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/u0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 12
    iget-object v2, p0, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 13
    :cond_48
    sget v0, Lc/a/j;->TextAppearance_android_textColorHint:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/u0;->s(I)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 14
    sget v0, Lc/a/j;->TextAppearance_android_textColorHint:I

    .line 15
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/u0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_5d

    .line 16
    iget-object v2, p0, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 17
    :cond_5d
    sget v0, Lc/a/j;->TextAppearance_android_textSize:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/u0;->s(I)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 18
    sget v0, Lc/a/j;->TextAppearance_android_textSize:I

    const/4 v2, -0x1

    invoke-virtual {p2, v0, v2}, Landroidx/appcompat/widget/u0;->f(II)I

    move-result v0

    if-nez v0, :cond_74

    .line 19
    iget-object v0, p0, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 20
    :cond_74
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/w;->C(Landroid/content/Context;Landroidx/appcompat/widget/u0;)V

    .line 21
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_92

    sget p1, Lc/a/j;->TextAppearance_fontVariationSettings:I

    .line 22
    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/u0;->s(I)Z

    move-result p1

    if-eqz p1, :cond_92

    .line 23
    sget p1, Lc/a/j;->TextAppearance_fontVariationSettings:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/u0;->o(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_92

    .line 24
    iget-object v0, p0, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z

    .line 25
    :cond_92
    invoke-virtual {p2}, Landroidx/appcompat/widget/u0;->w()V

    .line 26
    iget-object p1, p0, Landroidx/appcompat/widget/w;->l:Landroid/graphics/Typeface;

    if-eqz p1, :cond_a0

    .line 27
    iget-object p2, p0, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;

    iget v0, p0, Landroidx/appcompat/widget/w;->j:I

    invoke-virtual {p2, p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_a0
    return-void
.end method

.method r(Landroid/widget/TextView;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V
    .registers 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_f

    if-eqz p2, :cond_f

    .line 2
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p3, p1}, Landroidx/core/view/f0/a;->f(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;)V

    :cond_f
    return-void
.end method

.method s(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    return-void
.end method

.method t(IIII)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/w;->i:Landroidx/appcompat/widget/y;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/appcompat/widget/y;->u(IIII)V

    return-void
.end method

.method u([II)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/w;->i:Landroidx/appcompat/widget/y;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/y;->v([II)V

    return-void
.end method

.method v(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/w;->i:Landroidx/appcompat/widget/y;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/y;->w(I)V

    return-void
.end method

.method w(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/w;->h:Landroidx/appcompat/widget/s0;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Landroidx/appcompat/widget/s0;

    invoke-direct {v0}, Landroidx/appcompat/widget/s0;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/w;->h:Landroidx/appcompat/widget/s0;

    .line 3
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/w;->h:Landroidx/appcompat/widget/s0;

    iput-object p1, v0, Landroidx/appcompat/widget/s0;->a:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_13

    const/4 p1, 0x1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    .line 4
    :goto_14
    iput-boolean p1, v0, Landroidx/appcompat/widget/s0;->d:Z

    .line 5
    invoke-direct {p0}, Landroidx/appcompat/widget/w;->z()V

    return-void
.end method

.method x(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/w;->h:Landroidx/appcompat/widget/s0;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Landroidx/appcompat/widget/s0;

    invoke-direct {v0}, Landroidx/appcompat/widget/s0;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/w;->h:Landroidx/appcompat/widget/s0;

    .line 3
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/w;->h:Landroidx/appcompat/widget/s0;

    iput-object p1, v0, Landroidx/appcompat/widget/s0;->b:Landroid/graphics/PorterDuff$Mode;

    if-eqz p1, :cond_13

    const/4 p1, 0x1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    .line 4
    :goto_14
    iput-boolean p1, v0, Landroidx/appcompat/widget/s0;->c:Z

    .line 5
    invoke-direct {p0}, Landroidx/appcompat/widget/w;->z()V

    return-void
.end method
