.class public Lcn/manstep/phonemirrorBox/customview/SelectTextSettingsItem;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcn/manstep/phonemirrorBox/util/q$d;


# instance fields
.field private b:Landroid/widget/TextView;

.field private c:I

.field public d:F

.field private e:Lcn/manstep/phonemirrorBox/util/q;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/customview/SelectTextSettingsItem;->f:Landroid/graphics/drawable/Drawable;

    .line 3
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/customview/SelectTextSettingsItem;->g:Landroid/graphics/drawable/Drawable;

    .line 4
    invoke-direct {p0, p1, p2}, Lcn/manstep/phonemirrorBox/customview/SelectTextSettingsItem;->c(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private c(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c009b

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f090267

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0900ad

    .line 3
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/manstep/phonemirrorBox/customview/SelectTextSettingsItem;->b:Landroid/widget/TextView;

    .line 4
    sget-object v1, Lcn/manstep/phonemirrorBox/y;->SelectTextSettingsItem:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x7

    const/high16 v1, -0x1000000

    .line 5
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 6
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p2, 0x9

    const/16 v2, 0xc

    .line 7
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    const/4 v3, 0x0

    .line 8
    invoke-virtual {v0, v3, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 p2, 0xa

    .line 9
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 10
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p2, 0x8

    const/16 v4, 0x10

    .line 11
    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 12
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 13
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 14
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/customview/SelectTextSettingsItem;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p2, 0x5

    .line 15
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    .line 16
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/customview/SelectTextSettingsItem;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v0, 0x6

    .line 17
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 18
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/customview/SelectTextSettingsItem;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x4

    const v1, 0x800015

    .line 19
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 20
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/customview/SelectTextSettingsItem;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v0, 0x1

    .line 21
    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_c3

    .line 22
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/core/content/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_c3

    .line 23
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 24
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    const/4 v3, 0x3

    .line 25
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    const/4 v3, 0x2

    .line 26
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 27
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_b5

    .line 28
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/customview/SelectTextSettingsItem;->f:Landroid/graphics/drawable/Drawable;

    const/high16 v3, 0x42b40000    # 90.0f

    .line 29
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0, v0, v3, v4}, Lcn/manstep/phonemirrorBox/customview/SelectTextSettingsItem;->b(Landroid/graphics/drawable/Drawable;FLandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcn/manstep/phonemirrorBox/customview/SelectTextSettingsItem;->g:Landroid/graphics/drawable/Drawable;

    .line 30
    iput v1, p0, Lcn/manstep/phonemirrorBox/customview/SelectTextSettingsItem;->h:I

    .line 31
    iput v2, p0, Lcn/manstep/phonemirrorBox/customview/SelectTextSettingsItem;->i:I

    .line 32
    :cond_b5
    invoke-direct {p0, v0, v1, v2}, Lcn/manstep/phonemirrorBox/customview/SelectTextSettingsItem;->e(Landroid/graphics/drawable/Drawable;II)V

    .line 33
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/customview/SelectTextSettingsItem;->b:Landroid/widget/TextView;

    const v1, 0x3f59999a    # 0.85f

    mul-float p2, p2, v1

    float-to-int p2, p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 34
    :cond_c3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 35
    invoke-virtual {p0, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private d(Ljava/util/Locale;)Z
    .registers 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x11

    if-lt v0, v3, :cond_10

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p1

    if-ne p1, v2, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1

    .line 3
    :cond_10
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ar"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    const-string v0, "he"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    const-string v0, "fa"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    const-string v0, "ur"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    const-string v0, "sy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    const-string v0, "yi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    const-string v0, "iw"

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4d

    :cond_4c
    const/4 v1, 0x1

    :cond_4d
    return v1
.end method

.method private e(Landroid/graphics/drawable/Drawable;II)V
    .registers 5

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0, v0, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 p3, 0x0

    const/16 v0, 0x11

    if-lt p2, v0, :cond_11

    .line 3
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/customview/SelectTextSettingsItem;->b:Landroid/widget/TextView;

    invoke-virtual {p2, p3, p3, p1, p3}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_16

    .line 4
    :cond_11
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/customview/SelectTextSettingsItem;->b:Landroid/widget/TextView;

    invoke-virtual {p2, p3, p3, p1, p3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_16
    return-void
.end method

.method public static f(Lcn/manstep/phonemirrorBox/customview/SelectTextSettingsItem;Ljava/lang/String;)V
    .registers 4

    if-eqz p0, :cond_25

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/customview/SelectTextSettingsItem;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_e

    move-object v0, v1

    goto :goto_18

    :cond_e
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/customview/SelectTextSettingsItem;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_18
    if-nez p1, :cond_1b

    move-object p1, v1

    .line 2
    :cond_1b
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    return-void

    .line 3
    :cond_22
    invoke-virtual {p0, p1}, Lcn/manstep/phonemirrorBox/customview/SelectTextSettingsItem;->setText(Ljava/lang/String;)V

    :cond_25
    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 4

    if-eqz p1, :cond_e

    .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/customview/SelectTextSettingsItem;->g:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1b

    .line 2
    iget v0, p0, Lcn/manstep/phonemirrorBox/customview/SelectTextSettingsItem;->i:I

    iget v1, p0, Lcn/manstep/phonemirrorBox/customview/SelectTextSettingsItem;->h:I

    invoke-direct {p0, p1, v0, v1}, Lcn/manstep/phonemirrorBox/customview/SelectTextSettingsItem;->e(Landroid/graphics/drawable/Drawable;II)V

    goto :goto_1b

    .line 3
    :cond_e
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/customview/SelectTextSettingsItem;->g:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1b

    .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/customview/SelectTextSettingsItem;->f:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcn/manstep/phonemirrorBox/customview/SelectTextSettingsItem;->h:I

    iget v1, p0, Lcn/manstep/phonemirrorBox/customview/SelectTextSettingsItem;->i:I

    invoke-direct {p0, p1, v0, v1}, Lcn/manstep/phonemirrorBox/customview/SelectTextSettingsItem;->e(Landroid/graphics/drawable/Drawable;II)V

    :cond_1b
    :goto_1b
    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;FLandroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 14

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3
    instance-of v1, p1, Landroid/graphics/drawable/VectorDrawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_2b

    .line 4
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    invoke-virtual {p1, v2, v2, v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3d

    .line 6
    :cond_2b
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_3d

    .line 7
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    invoke-virtual {p1, v2, v2, v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 8
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 9
    :cond_3d
    :goto_3d
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 10
    invoke-virtual {v8, p2}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 11
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x1

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 12
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p2
.end method

.method public getCurIndex()I
    .registers 2

    .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/customview/SelectTextSettingsItem;->c:I

    return v0
.end method

.method public getListPopupWindowUtil()Lcn/manstep/phonemirrorBox/util/q;
    .registers 2

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/customview/SelectTextSettingsItem;->e:Lcn/manstep/phonemirrorBox/util/q;

    return-object v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_41

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/customview/SelectTextSettingsItem;->d(Ljava/util/Locale;)Z

    move-result p1

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/4 v3, 0x1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_28

    if-nez p1, :cond_28

    return v3

    .line 4
    :cond_28
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    cmpl-float p2, p2, v0

    if-lez p2, :cond_39

    if-eqz p1, :cond_39

    return v3

    .line 5
    :cond_39
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/customview/SelectTextSettingsItem;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getX()F

    move-result p1

    iput p1, p0, Lcn/manstep/phonemirrorBox/customview/SelectTextSettingsItem;->d:F

    :cond_41
    const/4 p1, 0x0

    return p1
.end method

.method public setCurIndex(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcn/manstep/phonemirrorBox/customview/SelectTextSettingsItem;->c:I

    return-void
.end method

.method public setListPopupWindowUtil(Lcn/manstep/phonemirrorBox/util/q;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/customview/SelectTextSettingsItem;->e:Lcn/manstep/phonemirrorBox/util/q;

    .line 2
    invoke-virtual {p1, p0}, Lcn/manstep/phonemirrorBox/util/q;->c(Lcn/manstep/phonemirrorBox/util/q$d;)V

    return-void
.end method

.method public setText(I)V
    .registers 3

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/customview/SelectTextSettingsItem;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/customview/SelectTextSettingsItem;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
