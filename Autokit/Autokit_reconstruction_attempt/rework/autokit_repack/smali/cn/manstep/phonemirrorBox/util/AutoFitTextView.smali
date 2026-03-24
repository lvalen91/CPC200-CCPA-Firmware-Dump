.class public Lcn/manstep/phonemirrorBox/util/AutoFitTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# instance fields
.field private b:Landroid/graphics/Paint;

.field private c:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    iput p1, p0, Lcn/manstep/phonemirrorBox/util/AutoFitTextView;->c:F

    return-void
.end method

.method private a(FLjava/lang/String;)F
    .registers 4

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/AutoFitTextView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/AutoFitTextView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    return p1
.end method

.method private b(Ljava/lang/String;I)V
    .registers 9

    if-lez p2, :cond_57

    .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/util/AutoFitTextView;->c:F

    .line 2
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcn/manstep/phonemirrorBox/util/AutoFitTextView;->b:Landroid/graphics/Paint;

    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 5
    :goto_19
    array-length v5, v1

    if-ge v3, v5, :cond_2e

    .line 6
    aget-object v5, v1, v3

    if-eqz v5, :cond_2b

    .line 7
    aget-object v5, v1, v3

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v4, v5

    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 8
    :cond_2e
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr p2, v1

    .line 9
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablePadding()I

    move-result v1

    sub-int/2addr p2, v1

    sub-int/2addr p2, v4

    .line 10
    invoke-direct {p0, v0, p1}, Lcn/manstep/phonemirrorBox/util/AutoFitTextView;->a(FLjava/lang/String;)F

    move-result v1

    :goto_42
    int-to-float v3, p2

    cmpl-float v1, v1, v3

    if-lez v1, :cond_54

    .line 11
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/util/AutoFitTextView;->b:Landroid/graphics/Paint;

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v0, v3

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 12
    invoke-direct {p0, v0, p1}, Lcn/manstep/phonemirrorBox/util/AutoFitTextView;->a(FLjava/lang/String;)F

    move-result v1

    goto :goto_42

    .line 13
    :cond_54
    invoke-virtual {p0, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_57
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcn/manstep/phonemirrorBox/util/AutoFitTextView;->b(Ljava/lang/String;I)V

    return-void
.end method
