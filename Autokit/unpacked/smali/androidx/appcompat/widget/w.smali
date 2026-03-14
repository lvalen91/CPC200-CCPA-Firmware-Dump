.class Landroidx/appcompat/widget/w;
.super Ljava/lang/Object;
.source "SourceFile"

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

.method constructor <init>(Landroid/widget/TextView;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 0
  .line 2
    iput v0, p0, Landroidx/appcompat/widget/w;->j:I
    const/4 v0, -1
  .line 3
    iput v0, p0, Landroidx/appcompat/widget/w;->k:I
  .line 4
    iput-object p1, p0, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;
  .line 5
    new-instance p1, Landroidx/appcompat/widget/y;
    iget-object v0, p0, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;
    invoke-direct { p1, v0 }, Landroidx/appcompat/widget/y;-><init>(Landroid/widget/TextView;)V
    iput-object p1, p0, Landroidx/appcompat/widget/w;->i:Landroidx/appcompat/widget/y;
    return-void
.end method

.method private B(IF)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/w;->i:Landroidx/appcompat/widget/y;
    invoke-virtual { v0, p1, p2 }, Landroidx/appcompat/widget/y;->y(IF)V
    return-void
.end method

.method private C(Landroid/content/Context;Landroidx/appcompat/widget/u0;)V
  .catch Ljava/lang/UnsupportedOperationException; { :L9 .. :L16 } :L17
  .catch Landroid/content/res/Resources$NotFoundException; { :L9 .. :L16 } :L17
  .registers 12
  .line 1
    sget v0, Lc/a/j;->TextAppearance_android_textStyle:I
    iget v1, p0, Landroidx/appcompat/widget/w;->j:I
    invoke-virtual { p2, v0, v1 }, Landroidx/appcompat/widget/u0;->k(II)I
    move-result v0
    iput v0, p0, Landroidx/appcompat/widget/w;->j:I
  .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 28
    const/4 v2, 2
    const/4 v3, -1
    const/4 v4, 0
    if-lt v0, v1, :L0
  .line 3
    sget v0, Lc/a/j;->TextAppearance_android_textFontWeight:I
    invoke-virtual { p2, v0, v3 }, Landroidx/appcompat/widget/u0;->k(II)I
    move-result v0
    iput v0, p0, Landroidx/appcompat/widget/w;->k:I
    if-eq v0, v3, :L0
  .line 4
    iget v0, p0, Landroidx/appcompat/widget/w;->j:I
    and-int/2addr v0, v2
    or-int/2addr v0, v4
    iput v0, p0, Landroidx/appcompat/widget/w;->j:I
  :L0
  .line 5
    sget v0, Lc/a/j;->TextAppearance_android_fontFamily:I
    invoke-virtual { p2, v0 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result v0
    const/4 v5, 1
    if-nez v0, :L6
    sget v0, Lc/a/j;->TextAppearance_fontFamily:I
  .line 6
    invoke-virtual { p2, v0 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result v0
    if-eqz v0, :L1
    goto :L6
  :L1
  .line 7
    sget p1, Lc/a/j;->TextAppearance_android_typeface:I
    invoke-virtual { p2, p1 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result p1
    if-eqz p1, :L5
  .line 8
    iput-boolean v4, p0, Landroidx/appcompat/widget/w;->m:Z
  .line 9
    sget p1, Lc/a/j;->TextAppearance_android_typeface:I
    invoke-virtual { p2, p1, v5 }, Landroidx/appcompat/widget/u0;->k(II)I
    move-result p1
    if-eq p1, v5, :L4
    if-eq p1, v2, :L3
    const/4 p2, 3
    if-eq p1, p2, :L2
    goto :L5
  :L2
  .line 10
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;
    iput-object p1, p0, Landroidx/appcompat/widget/w;->l:Landroid/graphics/Typeface;
    goto :L5
  :L3
  .line 11
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;
    iput-object p1, p0, Landroidx/appcompat/widget/w;->l:Landroid/graphics/Typeface;
    goto :L5
  :L4
  .line 12
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;
    iput-object p1, p0, Landroidx/appcompat/widget/w;->l:Landroid/graphics/Typeface;
  :L5
    return-void
  :L6
    const/4 v0, 0
  .line 13
    iput-object v0, p0, Landroidx/appcompat/widget/w;->l:Landroid/graphics/Typeface;
  .line 14
    sget v0, Lc/a/j;->TextAppearance_fontFamily:I
    invoke-virtual { p2, v0 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result v0
    if-eqz v0, :L7
  .line 15
    sget v0, Lc/a/j;->TextAppearance_fontFamily:I
    goto :L8
  :L7
  .line 16
    sget v0, Lc/a/j;->TextAppearance_android_fontFamily:I
  :L8
  .line 17
    iget v6, p0, Landroidx/appcompat/widget/w;->k:I
  .line 18
    iget v7, p0, Landroidx/appcompat/widget/w;->j:I
  .line 19
    invoke-virtual { p1 }, Landroid/content/Context;->isRestricted()Z
    move-result p1
    if-nez p1, :L18
  .line 20
    new-instance p1, Ljava/lang/ref/WeakReference;
    iget-object v8, p0, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;
    invoke-direct { p1, v8 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
  .line 21
    new-instance v8, Landroidx/appcompat/widget/w$a;
    invoke-direct { v8, p0, v6, v7, p1 }, Landroidx/appcompat/widget/w$a;-><init>(Landroidx/appcompat/widget/w;IILjava/lang/ref/WeakReference;)V
  :L9
  .line 22
    iget p1, p0, Landroidx/appcompat/widget/w;->j:I
    invoke-virtual { p2, v0, p1, v8 }, Landroidx/appcompat/widget/u0;->j(IILandroidx/core/content/c/f$a;)Landroid/graphics/Typeface;
    move-result-object p1
    if-eqz p1, :L13
  .line 23
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt v6, v1, :L12
    iget v6, p0, Landroidx/appcompat/widget/w;->k:I
    if-eq v6, v3, :L12
  .line 24
    invoke-static { p1, v4 }, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    move-result-object p1
    iget v6, p0, Landroidx/appcompat/widget/w;->k:I
    iget v7, p0, Landroidx/appcompat/widget/w;->j:I
    and-int/2addr v7, v2
    if-eqz v7, :L10
    const/4 v7, 1
    goto :L11
  :L10
    const/4 v7, 0
  :L11
  .line 25
    invoke-static { p1, v6, v7 }, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;
    move-result-object p1
    iput-object p1, p0, Landroidx/appcompat/widget/w;->l:Landroid/graphics/Typeface;
    goto :L13
  :L12
  .line 26
    iput-object p1, p0, Landroidx/appcompat/widget/w;->l:Landroid/graphics/Typeface;
  :L13
  .line 27
    iget-object p1, p0, Landroidx/appcompat/widget/w;->l:Landroid/graphics/Typeface;
    if-nez p1, :L14
    const/4 p1, 1
    goto :L15
  :L14
    const/4 p1, 0
  :L15
    iput-boolean p1, p0, Landroidx/appcompat/widget/w;->m:Z
  :L16
    goto :L18
  :L17
    nop
  :L18
  .line 28
    iget-object p1, p0, Landroidx/appcompat/widget/w;->l:Landroid/graphics/Typeface;
    if-nez p1, :L21
  .line 29
    invoke-virtual { p2, v0 }, Landroidx/appcompat/widget/u0;->o(I)Ljava/lang/String;
    move-result-object p1
    if-eqz p1, :L21
  .line 30
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt p2, v1, :L20
    iget p2, p0, Landroidx/appcompat/widget/w;->k:I
    if-eq p2, v3, :L20
  .line 31
    invoke-static { p1, v4 }, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;
    move-result-object p1
    iget p2, p0, Landroidx/appcompat/widget/w;->k:I
    iget v0, p0, Landroidx/appcompat/widget/w;->j:I
    and-int/2addr v0, v2
    if-eqz v0, :L19
    const/4 v4, 1
  :L19
  .line 32
    invoke-static { p1, p2, v4 }, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;
    move-result-object p1
    iput-object p1, p0, Landroidx/appcompat/widget/w;->l:Landroid/graphics/Typeface;
    goto :L21
  :L20
  .line 33
    iget p2, p0, Landroidx/appcompat/widget/w;->j:I
    invoke-static { p1, p2 }, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;
    move-result-object p1
    iput-object p1, p0, Landroidx/appcompat/widget/w;->l:Landroid/graphics/Typeface;
  :L21
    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/s0;)V
  .registers 4
    if-eqz p1, :L0
    if-eqz p2, :L0
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;
    invoke-virtual { v0 }, Landroid/widget/TextView;->getDrawableState()[I
    move-result-object v0
    invoke-static { p1, p2, v0 }, Landroidx/appcompat/widget/i;->i(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/s0;[I)V
  :L0
    return-void
.end method

.method private static d(Landroid/content/Context;Landroidx/appcompat/widget/i;I)Landroidx/appcompat/widget/s0;
  .registers 3
  .line 1
    invoke-virtual { p1, p0, p2 }, Landroidx/appcompat/widget/i;->f(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    move-result-object p0
    if-eqz p0, :L0
  .line 2
    new-instance p1, Landroidx/appcompat/widget/s0;
    invoke-direct { p1 }, Landroidx/appcompat/widget/s0;-><init>()V
    const/4 p2, 1
  .line 3
    iput-boolean p2, p1, Landroidx/appcompat/widget/s0;->d:Z
  .line 4
    iput-object p0, p1, Landroidx/appcompat/widget/s0;->a:Landroid/content/res/ColorStateList;
    return-object p1
  :L0
    const/4 p0, 0
    return-object p0
.end method

.method private y(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
  .registers 13
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 17
    const/4 v2, 3
    const/4 v3, 1
    const/4 v4, 2
    const/4 v5, 0
    if-lt v0, v1, :L9
    if-nez p5, :L0
    if-eqz p6, :L9
  :L0
  .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;
    invoke-virtual { p1 }, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;
    move-result-object p1
  .line 3
    iget-object p3, p0, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;
    if-eqz p5, :L1
    goto :L2
  :L1
  .line 4
    aget-object p5, p1, v5
  :L2
    if-eqz p2, :L3
    goto :L4
  :L3
  .line 5
    aget-object p2, p1, v3
  :L4
    if-eqz p6, :L5
    goto :L6
  :L5
  .line 6
    aget-object p6, p1, v4
  :L6
    if-eqz p4, :L7
    goto :L8
  :L7
  .line 7
    aget-object p4, p1, v2
  :L8
  .line 8
    invoke-virtual { p3, p5, p2, p6, p4 }, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    goto :L25
  :L9
    if-nez p1, :L10
    if-nez p2, :L10
    if-nez p3, :L10
    if-eqz p4, :L25
  :L10
  .line 9
    sget p5, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt p5, v1, :L16
  .line 10
    iget-object p5, p0, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;
    invoke-virtual { p5 }, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;
    move-result-object p5
  .line 11
    aget-object p6, p5, v5
    if-nez p6, :L11
    aget-object p6, p5, v4
    if-eqz p6, :L16
  :L11
  .line 12
    iget-object p1, p0, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;
    aget-object p3, p5, v5
    if-eqz p2, :L12
    goto :L13
  :L12
  .line 13
    aget-object p2, p5, v3
  :L13
    aget-object p6, p5, v4
    if-eqz p4, :L14
    goto :L15
  :L14
  .line 14
    aget-object p4, p5, v2
  :L15
  .line 15
    invoke-virtual { p1, p3, p2, p6, p4 }, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    return-void
  :L16
  .line 16
    iget-object p5, p0, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;
    invoke-virtual { p5 }, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;
    move-result-object p5
  .line 17
    iget-object p6, p0, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;
    if-eqz p1, :L17
    goto :L18
  :L17
  .line 18
    aget-object p1, p5, v5
  :L18
    if-eqz p2, :L19
    goto :L20
  :L19
  .line 19
    aget-object p2, p5, v3
  :L20
    if-eqz p3, :L21
    goto :L22
  :L21
  .line 20
    aget-object p3, p5, v4
  :L22
    if-eqz p4, :L23
    goto :L24
  :L23
  .line 21
    aget-object p4, p5, v2
  :L24
  .line 22
    invoke-virtual { p6, p1, p2, p3, p4 }, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
  :L25
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

.method A(IF)V
  .registers 4
  .line 1
    sget-boolean v0, Landroidx/core/widget/b;->a:Z
    if-nez v0, :L0
  .line 2
    invoke-virtual { p0 }, Landroidx/appcompat/widget/w;->l()Z
    move-result v0
    if-nez v0, :L0
  .line 3
    invoke-direct { p0, p1, p2 }, Landroidx/appcompat/widget/w;->B(IF)V
  :L0
    return-void
.end method

.method b()V
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/w;->b:Landroidx/appcompat/widget/s0;
    const/4 v1, 2
    const/4 v2, 0
    if-nez v0, :L0
    iget-object v0, p0, Landroidx/appcompat/widget/w;->c:Landroidx/appcompat/widget/s0;
    if-nez v0, :L0
    iget-object v0, p0, Landroidx/appcompat/widget/w;->d:Landroidx/appcompat/widget/s0;
    if-nez v0, :L0
    iget-object v0, p0, Landroidx/appcompat/widget/w;->e:Landroidx/appcompat/widget/s0;
    if-eqz v0, :L1
  :L0
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;
    invoke-virtual { v0 }, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;
    move-result-object v0
  .line 3
    aget-object v3, v0, v2
    iget-object v4, p0, Landroidx/appcompat/widget/w;->b:Landroidx/appcompat/widget/s0;
    invoke-direct { p0, v3, v4 }, Landroidx/appcompat/widget/w;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/s0;)V
    const/4 v3, 1
  .line 4
    aget-object v3, v0, v3
    iget-object v4, p0, Landroidx/appcompat/widget/w;->c:Landroidx/appcompat/widget/s0;
    invoke-direct { p0, v3, v4 }, Landroidx/appcompat/widget/w;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/s0;)V
  .line 5
    aget-object v3, v0, v1
    iget-object v4, p0, Landroidx/appcompat/widget/w;->d:Landroidx/appcompat/widget/s0;
    invoke-direct { p0, v3, v4 }, Landroidx/appcompat/widget/w;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/s0;)V
    const/4 v3, 3
  .line 6
    aget-object v0, v0, v3
    iget-object v3, p0, Landroidx/appcompat/widget/w;->e:Landroidx/appcompat/widget/s0;
    invoke-direct { p0, v0, v3 }, Landroidx/appcompat/widget/w;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/s0;)V
  :L1
  .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v3, 17
    if-lt v0, v3, :L3
  .line 8
    iget-object v0, p0, Landroidx/appcompat/widget/w;->f:Landroidx/appcompat/widget/s0;
    if-nez v0, :L2
    iget-object v0, p0, Landroidx/appcompat/widget/w;->g:Landroidx/appcompat/widget/s0;
    if-eqz v0, :L3
  :L2
  .line 9
    iget-object v0, p0, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;
    invoke-virtual { v0 }, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;
    move-result-object v0
  .line 10
    aget-object v2, v0, v2
    iget-object v3, p0, Landroidx/appcompat/widget/w;->f:Landroidx/appcompat/widget/s0;
    invoke-direct { p0, v2, v3 }, Landroidx/appcompat/widget/w;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/s0;)V
  .line 11
    aget-object v0, v0, v1
    iget-object v1, p0, Landroidx/appcompat/widget/w;->g:Landroidx/appcompat/widget/s0;
    invoke-direct { p0, v0, v1 }, Landroidx/appcompat/widget/w;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/s0;)V
  :L3
    return-void
.end method

.method c()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/w;->i:Landroidx/appcompat/widget/y;
    invoke-virtual { v0 }, Landroidx/appcompat/widget/y;->b()V
    return-void
.end method

.method e()I
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/w;->i:Landroidx/appcompat/widget/y;
    invoke-virtual { v0 }, Landroidx/appcompat/widget/y;->j()I
    move-result v0
    return v0
.end method

.method f()I
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/w;->i:Landroidx/appcompat/widget/y;
    invoke-virtual { v0 }, Landroidx/appcompat/widget/y;->k()I
    move-result v0
    return v0
.end method

.method g()I
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/w;->i:Landroidx/appcompat/widget/y;
    invoke-virtual { v0 }, Landroidx/appcompat/widget/y;->l()I
    move-result v0
    return v0
.end method

.method h()[I
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/w;->i:Landroidx/appcompat/widget/y;
    invoke-virtual { v0 }, Landroidx/appcompat/widget/y;->m()[I
    move-result-object v0
    return-object v0
.end method

.method i()I
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/w;->i:Landroidx/appcompat/widget/y;
    invoke-virtual { v0 }, Landroidx/appcompat/widget/y;->n()I
    move-result v0
    return v0
.end method

.method j()Landroid/content/res/ColorStateList;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/w;->h:Landroidx/appcompat/widget/s0;
    if-eqz v0, :L0
    iget-object v0, v0, Landroidx/appcompat/widget/s0;->a:Landroid/content/res/ColorStateList;
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return-object v0
.end method

.method k()Landroid/graphics/PorterDuff$Mode;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/w;->h:Landroidx/appcompat/widget/s0;
    if-eqz v0, :L0
    iget-object v0, v0, Landroidx/appcompat/widget/s0;->b:Landroid/graphics/PorterDuff$Mode;
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return-object v0
.end method

.method l()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/w;->i:Landroidx/appcompat/widget/y;
    invoke-virtual { v0 }, Landroidx/appcompat/widget/y;->s()Z
    move-result v0
    return v0
.end method

.method m(Landroid/util/AttributeSet;I)V
  .annotation build Landroid/annotation/SuppressLint;
    value = {
      "NewApi"
    }
  .end annotation
  .registers 20
    move-object/from16 v7, p0
    move-object/from16 v8, p1
    move/from16 v9, p2
  .line 1
    iget-object v0, v7, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;
    invoke-virtual { v0 }, Landroid/widget/TextView;->getContext()Landroid/content/Context;
    move-result-object v10
  .line 2
    invoke-static { }, Landroidx/appcompat/widget/i;->b()Landroidx/appcompat/widget/i;
    move-result-object v11
  .line 3
    sget-object v0, Lc/a/j;->AppCompatTextHelper:[I
    const/4 v12, 0
    invoke-static { v10, v8, v0, v9, v12 }, Landroidx/appcompat/widget/u0;->v(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/u0;
    move-result-object v13
  .line 4
    iget-object v0, v7, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;
    invoke-virtual { v0 }, Landroid/widget/TextView;->getContext()Landroid/content/Context;
    move-result-object v1
    sget-object v2, Lc/a/j;->AppCompatTextHelper:[I
  .line 5
    invoke-virtual { v13 }, Landroidx/appcompat/widget/u0;->r()Landroid/content/res/TypedArray;
    move-result-object v4
    const/4 v6, 0
    move-object/from16 v3, p1
    move/from16 v5, p2
  .line 6
    invoke-static/range { v0 .. v6 }, Landroidx/core/view/v;->m0(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V
  .line 7
    sget v0, Lc/a/j;->AppCompatTextHelper_android_textAppearance:I
    const/4 v14, -1
    invoke-virtual { v13, v0, v14 }, Landroidx/appcompat/widget/u0;->n(II)I
    move-result v0
  .line 8
    sget v1, Lc/a/j;->AppCompatTextHelper_android_drawableLeft:I
    invoke-virtual { v13, v1 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result v1
    if-eqz v1, :L0
  .line 9
    sget v1, Lc/a/j;->AppCompatTextHelper_android_drawableLeft:I
  .line 10
    invoke-virtual { v13, v1, v12 }, Landroidx/appcompat/widget/u0;->n(II)I
    move-result v1
  .line 11
    invoke-static { v10, v11, v1 }, Landroidx/appcompat/widget/w;->d(Landroid/content/Context;Landroidx/appcompat/widget/i;I)Landroidx/appcompat/widget/s0;
    move-result-object v1
    iput-object v1, v7, Landroidx/appcompat/widget/w;->b:Landroidx/appcompat/widget/s0;
  :L0
  .line 12
    sget v1, Lc/a/j;->AppCompatTextHelper_android_drawableTop:I
    invoke-virtual { v13, v1 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result v1
    if-eqz v1, :L1
  .line 13
    sget v1, Lc/a/j;->AppCompatTextHelper_android_drawableTop:I
  .line 14
    invoke-virtual { v13, v1, v12 }, Landroidx/appcompat/widget/u0;->n(II)I
    move-result v1
  .line 15
    invoke-static { v10, v11, v1 }, Landroidx/appcompat/widget/w;->d(Landroid/content/Context;Landroidx/appcompat/widget/i;I)Landroidx/appcompat/widget/s0;
    move-result-object v1
    iput-object v1, v7, Landroidx/appcompat/widget/w;->c:Landroidx/appcompat/widget/s0;
  :L1
  .line 16
    sget v1, Lc/a/j;->AppCompatTextHelper_android_drawableRight:I
    invoke-virtual { v13, v1 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result v1
    if-eqz v1, :L2
  .line 17
    sget v1, Lc/a/j;->AppCompatTextHelper_android_drawableRight:I
  .line 18
    invoke-virtual { v13, v1, v12 }, Landroidx/appcompat/widget/u0;->n(II)I
    move-result v1
  .line 19
    invoke-static { v10, v11, v1 }, Landroidx/appcompat/widget/w;->d(Landroid/content/Context;Landroidx/appcompat/widget/i;I)Landroidx/appcompat/widget/s0;
    move-result-object v1
    iput-object v1, v7, Landroidx/appcompat/widget/w;->d:Landroidx/appcompat/widget/s0;
  :L2
  .line 20
    sget v1, Lc/a/j;->AppCompatTextHelper_android_drawableBottom:I
    invoke-virtual { v13, v1 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result v1
    if-eqz v1, :L3
  .line 21
    sget v1, Lc/a/j;->AppCompatTextHelper_android_drawableBottom:I
  .line 22
    invoke-virtual { v13, v1, v12 }, Landroidx/appcompat/widget/u0;->n(II)I
    move-result v1
  .line 23
    invoke-static { v10, v11, v1 }, Landroidx/appcompat/widget/w;->d(Landroid/content/Context;Landroidx/appcompat/widget/i;I)Landroidx/appcompat/widget/s0;
    move-result-object v1
    iput-object v1, v7, Landroidx/appcompat/widget/w;->e:Landroidx/appcompat/widget/s0;
  :L3
  .line 24
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 17
    if-lt v1, v2, :L5
  .line 25
    sget v1, Lc/a/j;->AppCompatTextHelper_android_drawableStart:I
    invoke-virtual { v13, v1 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result v1
    if-eqz v1, :L4
  .line 26
    sget v1, Lc/a/j;->AppCompatTextHelper_android_drawableStart:I
  .line 27
    invoke-virtual { v13, v1, v12 }, Landroidx/appcompat/widget/u0;->n(II)I
    move-result v1
  .line 28
    invoke-static { v10, v11, v1 }, Landroidx/appcompat/widget/w;->d(Landroid/content/Context;Landroidx/appcompat/widget/i;I)Landroidx/appcompat/widget/s0;
    move-result-object v1
    iput-object v1, v7, Landroidx/appcompat/widget/w;->f:Landroidx/appcompat/widget/s0;
  :L4
  .line 29
    sget v1, Lc/a/j;->AppCompatTextHelper_android_drawableEnd:I
    invoke-virtual { v13, v1 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result v1
    if-eqz v1, :L5
  .line 30
    sget v1, Lc/a/j;->AppCompatTextHelper_android_drawableEnd:I
  .line 31
    invoke-virtual { v13, v1, v12 }, Landroidx/appcompat/widget/u0;->n(II)I
    move-result v1
  .line 32
    invoke-static { v10, v11, v1 }, Landroidx/appcompat/widget/w;->d(Landroid/content/Context;Landroidx/appcompat/widget/i;I)Landroidx/appcompat/widget/s0;
    move-result-object v1
    iput-object v1, v7, Landroidx/appcompat/widget/w;->g:Landroidx/appcompat/widget/s0;
  :L5
  .line 33
    invoke-virtual { v13 }, Landroidx/appcompat/widget/u0;->w()V
  .line 34
    iget-object v1, v7, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;
  .line 35
    invoke-virtual { v1 }, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;
    move-result-object v1
    instance-of v1, v1, Landroid/text/method/PasswordTransformationMethod;
    const/16 v2, 26
    const/16 v4, 23
    if-eq v0, v14, :L19
  .line 36
    sget-object v5, Lc/a/j;->TextAppearance:[I
    invoke-static { v10, v0, v5 }, Landroidx/appcompat/widget/u0;->t(Landroid/content/Context;I[I)Landroidx/appcompat/widget/u0;
    move-result-object v0
    if-nez v1, :L6
  .line 37
    sget v5, Lc/a/j;->TextAppearance_textAllCaps:I
    invoke-virtual { v0, v5 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result v5
    if-eqz v5, :L6
  .line 38
    sget v5, Lc/a/j;->TextAppearance_textAllCaps:I
    invoke-virtual { v0, v5, v12 }, Landroidx/appcompat/widget/u0;->a(IZ)Z
    move-result v5
    const/4 v6, 1
    goto :L7
  :L6
    const/4 v5, 0
    const/4 v6, 0
  :L7
  .line 39
    invoke-direct { v7, v10, v0 }, Landroidx/appcompat/widget/w;->C(Landroid/content/Context;Landroidx/appcompat/widget/u0;)V
  .line 40
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I
    if-ge v15, v4, :L13
  .line 41
    sget v15, Lc/a/j;->TextAppearance_android_textColor:I
    invoke-virtual { v0, v15 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result v15
    if-eqz v15, :L8
  .line 42
    sget v15, Lc/a/j;->TextAppearance_android_textColor:I
    invoke-virtual { v0, v15 }, Landroidx/appcompat/widget/u0;->c(I)Landroid/content/res/ColorStateList;
    move-result-object v15
    goto :L9
  :L8
    const/4 v15, 0
  :L9
  .line 43
    sget v3, Lc/a/j;->TextAppearance_android_textColorHint:I
    invoke-virtual { v0, v3 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result v3
    if-eqz v3, :L10
  .line 44
    sget v3, Lc/a/j;->TextAppearance_android_textColorHint:I
    invoke-virtual { v0, v3 }, Landroidx/appcompat/widget/u0;->c(I)Landroid/content/res/ColorStateList;
    move-result-object v3
    goto :L11
  :L10
    const/4 v3, 0
  :L11
  .line 45
    sget v13, Lc/a/j;->TextAppearance_android_textColorLink:I
    invoke-virtual { v0, v13 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result v13
    if-eqz v13, :L12
  .line 46
    sget v13, Lc/a/j;->TextAppearance_android_textColorLink:I
    invoke-virtual { v0, v13 }, Landroidx/appcompat/widget/u0;->c(I)Landroid/content/res/ColorStateList;
    move-result-object v13
    goto :L14
  :L12
    const/4 v13, 0
    goto :L14
  :L13
    const/4 v3, 0
    const/4 v13, 0
    const/4 v15, 0
  :L14
  .line 47
    sget v14, Lc/a/j;->TextAppearance_textLocale:I
    invoke-virtual { v0, v14 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result v14
    if-eqz v14, :L15
  .line 48
    sget v14, Lc/a/j;->TextAppearance_textLocale:I
    invoke-virtual { v0, v14 }, Landroidx/appcompat/widget/u0;->o(I)Ljava/lang/String;
    move-result-object v14
    goto :L16
  :L15
    const/4 v14, 0
  :L16
  .line 49
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt v4, v2, :L17
    sget v4, Lc/a/j;->TextAppearance_fontVariationSettings:I
  .line 50
    invoke-virtual { v0, v4 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result v4
    if-eqz v4, :L17
  .line 51
    sget v4, Lc/a/j;->TextAppearance_fontVariationSettings:I
    invoke-virtual { v0, v4 }, Landroidx/appcompat/widget/u0;->o(I)Ljava/lang/String;
    move-result-object v4
    goto :L18
  :L17
    const/4 v4, 0
  :L18
  .line 52
    invoke-virtual { v0 }, Landroidx/appcompat/widget/u0;->w()V
    goto :L20
  :L19
    const/4 v3, 0
    const/4 v4, 0
    const/4 v5, 0
    const/4 v6, 0
    const/4 v13, 0
    const/4 v14, 0
    const/4 v15, 0
  :L20
  .line 53
    sget-object v0, Lc/a/j;->TextAppearance:[I
    invoke-static { v10, v8, v0, v9, v12 }, Landroidx/appcompat/widget/u0;->v(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/u0;
    move-result-object v0
    if-nez v1, :L21
  .line 54
    sget v2, Lc/a/j;->TextAppearance_textAllCaps:I
    invoke-virtual { v0, v2 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result v2
    if-eqz v2, :L21
  .line 55
    sget v2, Lc/a/j;->TextAppearance_textAllCaps:I
    invoke-virtual { v0, v2, v12 }, Landroidx/appcompat/widget/u0;->a(IZ)Z
    move-result v5
    const/16 v16, 1
    goto :L22
  :L21
    move/from16 v16, v6
  :L22
  .line 56
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v6, 23
    if-ge v2, v6, :L25
  .line 57
    sget v2, Lc/a/j;->TextAppearance_android_textColor:I
    invoke-virtual { v0, v2 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result v2
    if-eqz v2, :L23
  .line 58
    sget v2, Lc/a/j;->TextAppearance_android_textColor:I
    invoke-virtual { v0, v2 }, Landroidx/appcompat/widget/u0;->c(I)Landroid/content/res/ColorStateList;
    move-result-object v15
  :L23
  .line 59
    sget v2, Lc/a/j;->TextAppearance_android_textColorHint:I
    invoke-virtual { v0, v2 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result v2
    if-eqz v2, :L24
  .line 60
    sget v2, Lc/a/j;->TextAppearance_android_textColorHint:I
    invoke-virtual { v0, v2 }, Landroidx/appcompat/widget/u0;->c(I)Landroid/content/res/ColorStateList;
    move-result-object v3
  :L24
  .line 61
    sget v2, Lc/a/j;->TextAppearance_android_textColorLink:I
    invoke-virtual { v0, v2 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result v2
    if-eqz v2, :L25
  .line 62
    sget v2, Lc/a/j;->TextAppearance_android_textColorLink:I
    invoke-virtual { v0, v2 }, Landroidx/appcompat/widget/u0;->c(I)Landroid/content/res/ColorStateList;
    move-result-object v13
  :L25
  .line 63
    sget v2, Lc/a/j;->TextAppearance_textLocale:I
    invoke-virtual { v0, v2 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result v2
    if-eqz v2, :L26
  .line 64
    sget v2, Lc/a/j;->TextAppearance_textLocale:I
    invoke-virtual { v0, v2 }, Landroidx/appcompat/widget/u0;->o(I)Ljava/lang/String;
    move-result-object v14
  :L26
  .line 65
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v6, 26
    if-lt v2, v6, :L27
    sget v2, Lc/a/j;->TextAppearance_fontVariationSettings:I
  .line 66
    invoke-virtual { v0, v2 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result v2
    if-eqz v2, :L27
  .line 67
    sget v2, Lc/a/j;->TextAppearance_fontVariationSettings:I
    invoke-virtual { v0, v2 }, Landroidx/appcompat/widget/u0;->o(I)Ljava/lang/String;
    move-result-object v4
  :L27
  .line 68
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v6, 28
    if-lt v2, v6, :L28
    sget v2, Lc/a/j;->TextAppearance_android_textSize:I
  .line 69
    invoke-virtual { v0, v2 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result v2
    if-eqz v2, :L28
  .line 70
    sget v2, Lc/a/j;->TextAppearance_android_textSize:I
    const/4 v6, -1
    invoke-virtual { v0, v2, v6 }, Landroidx/appcompat/widget/u0;->f(II)I
    move-result v2
    if-nez v2, :L28
  .line 71
    iget-object v2, v7, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;
    const/4 v6, 0
    invoke-virtual { v2, v12, v6 }, Landroid/widget/TextView;->setTextSize(IF)V
  :L28
  .line 72
    invoke-direct { v7, v10, v0 }, Landroidx/appcompat/widget/w;->C(Landroid/content/Context;Landroidx/appcompat/widget/u0;)V
  .line 73
    invoke-virtual { v0 }, Landroidx/appcompat/widget/u0;->w()V
    if-eqz v15, :L29
  .line 74
    iget-object v0, v7, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;
    invoke-virtual { v0, v15 }, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V
  :L29
    if-eqz v3, :L30
  .line 75
    iget-object v0, v7, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;
    invoke-virtual { v0, v3 }, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V
  :L30
    if-eqz v13, :L31
  .line 76
    iget-object v0, v7, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;
    invoke-virtual { v0, v13 }, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V
  :L31
    if-nez v1, :L32
    if-eqz v16, :L32
  .line 77
    invoke-virtual { v7, v5 }, Landroidx/appcompat/widget/w;->s(Z)V
  :L32
  .line 78
    iget-object v0, v7, Landroidx/appcompat/widget/w;->l:Landroid/graphics/Typeface;
    if-eqz v0, :L34
  .line 79
    iget v1, v7, Landroidx/appcompat/widget/w;->k:I
    const/4 v2, -1
    if-ne v1, v2, :L33
  .line 80
    iget-object v1, v7, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;
    iget v2, v7, Landroidx/appcompat/widget/w;->j:I
    invoke-virtual { v1, v0, v2 }, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
    goto :L34
  :L33
  .line 81
    iget-object v1, v7, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;
    invoke-virtual { v1, v0 }, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
  :L34
    if-eqz v4, :L35
  .line 82
    iget-object v0, v7, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;
    invoke-virtual { v0, v4 }, Landroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z
  :L35
    if-eqz v14, :L37
  .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 24
    if-lt v0, v1, :L36
  .line 84
    iget-object v0, v7, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;
    invoke-static { v14 }, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setTextLocales(Landroid/os/LocaleList;)V
    goto :L37
  :L36
    const/16 v1, 21
    if-lt v0, v1, :L37
    const/16 v0, 44
  .line 85
    invoke-virtual { v14, v0 }, Ljava/lang/String;->indexOf(I)I
    move-result v0
    invoke-virtual { v14, v12, v0 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v0
  .line 86
    iget-object v1, v7, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;
    invoke-static { v0 }, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;
    move-result-object v0
    invoke-virtual { v1, v0 }, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V
  :L37
  .line 87
    iget-object v0, v7, Landroidx/appcompat/widget/w;->i:Landroidx/appcompat/widget/y;
    invoke-virtual { v0, v8, v9 }, Landroidx/appcompat/widget/y;->t(Landroid/util/AttributeSet;I)V
  .line 88
    sget-boolean v0, Landroidx/core/widget/b;->a:Z
    if-eqz v0, :L39
  .line 89
    iget-object v0, v7, Landroidx/appcompat/widget/w;->i:Landroidx/appcompat/widget/y;
    invoke-virtual { v0 }, Landroidx/appcompat/widget/y;->n()I
    move-result v0
    if-eqz v0, :L39
  .line 90
    iget-object v0, v7, Landroidx/appcompat/widget/w;->i:Landroidx/appcompat/widget/y;
  .line 91
    invoke-virtual { v0 }, Landroidx/appcompat/widget/y;->m()[I
    move-result-object v0
  .line 92
    array-length v1, v0
    if-lez v1, :L39
  .line 93
    iget-object v1, v7, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;
    invoke-virtual { v1 }, Landroid/widget/TextView;->getAutoSizeStepGranularity()I
    move-result v1
    int-to-float v1, v1
    const/high16 v2, -16512
    cmpl-float v1, v1, v2
    if-eqz v1, :L38
  .line 94
    iget-object v0, v7, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;
    iget-object v1, v7, Landroidx/appcompat/widget/w;->i:Landroidx/appcompat/widget/y;
  .line 95
    invoke-virtual { v1 }, Landroidx/appcompat/widget/y;->k()I
    move-result v1
    iget-object v2, v7, Landroidx/appcompat/widget/w;->i:Landroidx/appcompat/widget/y;
  .line 96
    invoke-virtual { v2 }, Landroidx/appcompat/widget/y;->j()I
    move-result v2
    iget-object v3, v7, Landroidx/appcompat/widget/w;->i:Landroidx/appcompat/widget/y;
  .line 97
    invoke-virtual { v3 }, Landroidx/appcompat/widget/y;->l()I
    move-result v3
  .line 98
    invoke-virtual { v0, v1, v2, v3, v12 }, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V
    goto :L39
  :L38
  .line 99
    iget-object v1, v7, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;
    invoke-virtual { v1, v0, v12 }, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V
  :L39
  .line 100
    sget-object v0, Lc/a/j;->AppCompatTextView:[I
    invoke-static { v10, v8, v0 }, Landroidx/appcompat/widget/u0;->u(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/u0;
    move-result-object v8
  .line 101
    sget v0, Lc/a/j;->AppCompatTextView_drawableLeftCompat:I
    const/4 v1, -1
    invoke-virtual { v8, v0, v1 }, Landroidx/appcompat/widget/u0;->n(II)I
    move-result v0
    if-eq v0, v1, :L40
  .line 102
    invoke-virtual { v11, v10, v0 }, Landroidx/appcompat/widget/i;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    move-result-object v0
    move-object v2, v0
    goto :L41
  :L40
    const/4 v2, 0
  :L41
  .line 103
    sget v0, Lc/a/j;->AppCompatTextView_drawableTopCompat:I
    invoke-virtual { v8, v0, v1 }, Landroidx/appcompat/widget/u0;->n(II)I
    move-result v0
    if-eq v0, v1, :L42
  .line 104
    invoke-virtual { v11, v10, v0 }, Landroidx/appcompat/widget/i;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    move-result-object v0
    move-object v3, v0
    goto :L43
  :L42
    const/4 v3, 0
  :L43
  .line 105
    sget v0, Lc/a/j;->AppCompatTextView_drawableRightCompat:I
    invoke-virtual { v8, v0, v1 }, Landroidx/appcompat/widget/u0;->n(II)I
    move-result v0
    if-eq v0, v1, :L44
  .line 106
    invoke-virtual { v11, v10, v0 }, Landroidx/appcompat/widget/i;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    move-result-object v0
    move-object v4, v0
    goto :L45
  :L44
    const/4 v4, 0
  :L45
  .line 107
    sget v0, Lc/a/j;->AppCompatTextView_drawableBottomCompat:I
    invoke-virtual { v8, v0, v1 }, Landroidx/appcompat/widget/u0;->n(II)I
    move-result v0
    if-eq v0, v1, :L46
  .line 108
    invoke-virtual { v11, v10, v0 }, Landroidx/appcompat/widget/i;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    move-result-object v0
    move-object v5, v0
    goto :L47
  :L46
    const/4 v5, 0
  :L47
  .line 109
    sget v0, Lc/a/j;->AppCompatTextView_drawableStartCompat:I
    invoke-virtual { v8, v0, v1 }, Landroidx/appcompat/widget/u0;->n(II)I
    move-result v0
    if-eq v0, v1, :L48
  .line 110
    invoke-virtual { v11, v10, v0 }, Landroidx/appcompat/widget/i;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    move-result-object v0
    move-object v6, v0
    goto :L49
  :L48
    const/4 v6, 0
  :L49
  .line 111
    sget v0, Lc/a/j;->AppCompatTextView_drawableEndCompat:I
    invoke-virtual { v8, v0, v1 }, Landroidx/appcompat/widget/u0;->n(II)I
    move-result v0
    if-eq v0, v1, :L50
  .line 112
    invoke-virtual { v11, v10, v0 }, Landroidx/appcompat/widget/i;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    move-result-object v0
    move-object v9, v0
    goto :L51
  :L50
    const/4 v9, 0
  :L51
    move-object/from16 v0, p0
    move-object v1, v2
    move-object v2, v3
    move-object v3, v4
    move-object v4, v5
    move-object v5, v6
    move-object v6, v9
  .line 113
    invoke-direct/range { v0 .. v6 }, Landroidx/appcompat/widget/w;->y(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
  .line 114
    sget v0, Lc/a/j;->AppCompatTextView_drawableTint:I
    invoke-virtual { v8, v0 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result v0
    if-eqz v0, :L52
  .line 115
    sget v0, Lc/a/j;->AppCompatTextView_drawableTint:I
    invoke-virtual { v8, v0 }, Landroidx/appcompat/widget/u0;->c(I)Landroid/content/res/ColorStateList;
    move-result-object v0
  .line 116
    iget-object v1, v7, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;
    invoke-static { v1, v0 }, Landroidx/core/widget/i;->g(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V
  :L52
  .line 117
    sget v0, Lc/a/j;->AppCompatTextView_drawableTintMode:I
    invoke-virtual { v8, v0 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result v0
    if-eqz v0, :L53
  .line 118
    sget v0, Lc/a/j;->AppCompatTextView_drawableTintMode:I
    const/4 v1, -1
  .line 119
    invoke-virtual { v8, v0, v1 }, Landroidx/appcompat/widget/u0;->k(II)I
    move-result v0
    const/4 v2, 0
  .line 120
    invoke-static { v0, v2 }, Landroidx/appcompat/widget/c0;->e(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    move-result-object v0
  .line 121
    iget-object v2, v7, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;
    invoke-static { v2, v0 }, Landroidx/core/widget/i;->h(Landroid/widget/TextView;Landroid/graphics/PorterDuff$Mode;)V
    goto :L54
  :L53
    const/4 v1, -1
  :L54
  .line 122
    sget v0, Lc/a/j;->AppCompatTextView_firstBaselineToTopHeight:I
    invoke-virtual { v8, v0, v1 }, Landroidx/appcompat/widget/u0;->f(II)I
    move-result v0
  .line 123
    sget v2, Lc/a/j;->AppCompatTextView_lastBaselineToBottomHeight:I
    invoke-virtual { v8, v2, v1 }, Landroidx/appcompat/widget/u0;->f(II)I
    move-result v2
  .line 124
    sget v3, Lc/a/j;->AppCompatTextView_lineHeight:I
    invoke-virtual { v8, v3, v1 }, Landroidx/appcompat/widget/u0;->f(II)I
    move-result v3
  .line 125
    invoke-virtual { v8 }, Landroidx/appcompat/widget/u0;->w()V
    if-eq v0, v1, :L55
  .line 126
    iget-object v4, v7, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;
    invoke-static { v4, v0 }, Landroidx/core/widget/i;->j(Landroid/widget/TextView;I)V
  :L55
    if-eq v2, v1, :L56
  .line 127
    iget-object v0, v7, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;
    invoke-static { v0, v2 }, Landroidx/core/widget/i;->k(Landroid/widget/TextView;I)V
  :L56
    if-eq v3, v1, :L57
  .line 128
    iget-object v0, v7, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;
    invoke-static { v0, v3 }, Landroidx/core/widget/i;->l(Landroid/widget/TextView;I)V
  :L57
    return-void
.end method

.method n(Ljava/lang/ref/WeakReference;Landroid/graphics/Typeface;)V
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
  .registers 5
  .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/w;->m:Z
    if-eqz v0, :L1
  .line 2
    iput-object p2, p0, Landroidx/appcompat/widget/w;->l:Landroid/graphics/Typeface;
  .line 3
    invoke-virtual { p1 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroid/widget/TextView;
    if-eqz p1, :L1
  .line 4
    invoke-static { p1 }, Landroidx/core/view/v;->S(Landroid/view/View;)Z
    move-result v0
    if-eqz v0, :L0
  .line 5
    iget v0, p0, Landroidx/appcompat/widget/w;->j:I
  .line 6
    new-instance v1, Landroidx/appcompat/widget/w$b;
    invoke-direct { v1, p0, p1, p2, v0 }, Landroidx/appcompat/widget/w$b;-><init>(Landroidx/appcompat/widget/w;Landroid/widget/TextView;Landroid/graphics/Typeface;I)V
    invoke-virtual { p1, v1 }, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z
    goto :L1
  :L0
  .line 7
    iget v0, p0, Landroidx/appcompat/widget/w;->j:I
    invoke-virtual { p1, p2, v0 }, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
  :L1
    return-void
.end method

.method o(ZIIII)V
  .registers 6
  .line 1
    sget-boolean p1, Landroidx/core/widget/b;->a:Z
    if-nez p1, :L0
  .line 2
    invoke-virtual { p0 }, Landroidx/appcompat/widget/w;->c()V
  :L0
    return-void
.end method

.method p()V
  .registers 1
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/widget/w;->b()V
    return-void
.end method

.method q(Landroid/content/Context;I)V
  .registers 6
  .line 1
    sget-object v0, Lc/a/j;->TextAppearance:[I
    invoke-static { p1, p2, v0 }, Landroidx/appcompat/widget/u0;->t(Landroid/content/Context;I[I)Landroidx/appcompat/widget/u0;
    move-result-object p2
  .line 2
    sget v0, Lc/a/j;->TextAppearance_textAllCaps:I
    invoke-virtual { p2, v0 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result v0
    const/4 v1, 0
    if-eqz v0, :L0
  .line 3
    sget v0, Lc/a/j;->TextAppearance_textAllCaps:I
    invoke-virtual { p2, v0, v1 }, Landroidx/appcompat/widget/u0;->a(IZ)Z
    move-result v0
    invoke-virtual { p0, v0 }, Landroidx/appcompat/widget/w;->s(Z)V
  :L0
  .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 23
    if-ge v0, v2, :L3
  .line 5
    sget v0, Lc/a/j;->TextAppearance_android_textColor:I
    invoke-virtual { p2, v0 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result v0
    if-eqz v0, :L1
  .line 6
    sget v0, Lc/a/j;->TextAppearance_android_textColor:I
  .line 7
    invoke-virtual { p2, v0 }, Landroidx/appcompat/widget/u0;->c(I)Landroid/content/res/ColorStateList;
    move-result-object v0
    if-eqz v0, :L1
  .line 8
    iget-object v2, p0, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;
    invoke-virtual { v2, v0 }, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V
  :L1
  .line 9
    sget v0, Lc/a/j;->TextAppearance_android_textColorLink:I
    invoke-virtual { p2, v0 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result v0
    if-eqz v0, :L2
  .line 10
    sget v0, Lc/a/j;->TextAppearance_android_textColorLink:I
  .line 11
    invoke-virtual { p2, v0 }, Landroidx/appcompat/widget/u0;->c(I)Landroid/content/res/ColorStateList;
    move-result-object v0
    if-eqz v0, :L2
  .line 12
    iget-object v2, p0, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;
    invoke-virtual { v2, v0 }, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V
  :L2
  .line 13
    sget v0, Lc/a/j;->TextAppearance_android_textColorHint:I
    invoke-virtual { p2, v0 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result v0
    if-eqz v0, :L3
  .line 14
    sget v0, Lc/a/j;->TextAppearance_android_textColorHint:I
  .line 15
    invoke-virtual { p2, v0 }, Landroidx/appcompat/widget/u0;->c(I)Landroid/content/res/ColorStateList;
    move-result-object v0
    if-eqz v0, :L3
  .line 16
    iget-object v2, p0, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;
    invoke-virtual { v2, v0 }, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V
  :L3
  .line 17
    sget v0, Lc/a/j;->TextAppearance_android_textSize:I
    invoke-virtual { p2, v0 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result v0
    if-eqz v0, :L4
  .line 18
    sget v0, Lc/a/j;->TextAppearance_android_textSize:I
    const/4 v2, -1
    invoke-virtual { p2, v0, v2 }, Landroidx/appcompat/widget/u0;->f(II)I
    move-result v0
    if-nez v0, :L4
  .line 19
    iget-object v0, p0, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;
    const/4 v2, 0
    invoke-virtual { v0, v1, v2 }, Landroid/widget/TextView;->setTextSize(IF)V
  :L4
  .line 20
    invoke-direct { p0, p1, p2 }, Landroidx/appcompat/widget/w;->C(Landroid/content/Context;Landroidx/appcompat/widget/u0;)V
  .line 21
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v0, 26
    if-lt p1, v0, :L5
    sget p1, Lc/a/j;->TextAppearance_fontVariationSettings:I
  .line 22
    invoke-virtual { p2, p1 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result p1
    if-eqz p1, :L5
  .line 23
    sget p1, Lc/a/j;->TextAppearance_fontVariationSettings:I
    invoke-virtual { p2, p1 }, Landroidx/appcompat/widget/u0;->o(I)Ljava/lang/String;
    move-result-object p1
    if-eqz p1, :L5
  .line 24
    iget-object v0, p0, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;
    invoke-virtual { v0, p1 }, Landroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z
  :L5
  .line 25
    invoke-virtual { p2 }, Landroidx/appcompat/widget/u0;->w()V
  .line 26
    iget-object p1, p0, Landroidx/appcompat/widget/w;->l:Landroid/graphics/Typeface;
    if-eqz p1, :L6
  .line 27
    iget-object p2, p0, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;
    iget v0, p0, Landroidx/appcompat/widget/w;->j:I
    invoke-virtual { p2, p1, v0 }, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
  :L6
    return-void
.end method

.method r(Landroid/widget/TextView;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V
  .registers 6
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 30
    if-ge v0, v1, :L0
    if-eqz p2, :L0
  .line 2
    invoke-virtual { p1 }, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
    move-result-object p1
    invoke-static { p3, p1 }, Landroidx/core/view/f0/a;->f(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;)V
  :L0
    return-void
.end method

.method s(Z)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;
    invoke-virtual { v0, p1 }, Landroid/widget/TextView;->setAllCaps(Z)V
    return-void
.end method

.method t(IIII)V
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/w;->i:Landroidx/appcompat/widget/y;
    invoke-virtual { v0, p1, p2, p3, p4 }, Landroidx/appcompat/widget/y;->u(IIII)V
    return-void
.end method

.method u([II)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/w;->i:Landroidx/appcompat/widget/y;
    invoke-virtual { v0, p1, p2 }, Landroidx/appcompat/widget/y;->v([II)V
    return-void
.end method

.method v(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/w;->i:Landroidx/appcompat/widget/y;
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/y;->w(I)V
    return-void
.end method

.method w(Landroid/content/res/ColorStateList;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/w;->h:Landroidx/appcompat/widget/s0;
    if-nez v0, :L0
  .line 2
    new-instance v0, Landroidx/appcompat/widget/s0;
    invoke-direct { v0 }, Landroidx/appcompat/widget/s0;-><init>()V
    iput-object v0, p0, Landroidx/appcompat/widget/w;->h:Landroidx/appcompat/widget/s0;
  :L0
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/w;->h:Landroidx/appcompat/widget/s0;
    iput-object p1, v0, Landroidx/appcompat/widget/s0;->a:Landroid/content/res/ColorStateList;
    if-eqz p1, :L1
    const/4 p1, 1
    goto :L2
  :L1
    const/4 p1, 0
  :L2
  .line 4
    iput-boolean p1, v0, Landroidx/appcompat/widget/s0;->d:Z
  .line 5
    invoke-direct { p0 }, Landroidx/appcompat/widget/w;->z()V
    return-void
.end method

.method x(Landroid/graphics/PorterDuff$Mode;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/w;->h:Landroidx/appcompat/widget/s0;
    if-nez v0, :L0
  .line 2
    new-instance v0, Landroidx/appcompat/widget/s0;
    invoke-direct { v0 }, Landroidx/appcompat/widget/s0;-><init>()V
    iput-object v0, p0, Landroidx/appcompat/widget/w;->h:Landroidx/appcompat/widget/s0;
  :L0
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/w;->h:Landroidx/appcompat/widget/s0;
    iput-object p1, v0, Landroidx/appcompat/widget/s0;->b:Landroid/graphics/PorterDuff$Mode;
    if-eqz p1, :L1
    const/4 p1, 1
    goto :L2
  :L1
    const/4 p1, 0
  :L2
  .line 4
    iput-boolean p1, v0, Landroidx/appcompat/widget/s0;->c:Z
  .line 5
    invoke-direct { p0 }, Landroidx/appcompat/widget/w;->z()V
    return-void
.end method
