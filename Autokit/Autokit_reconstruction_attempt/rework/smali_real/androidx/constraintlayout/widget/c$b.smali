.class Landroidx/constraintlayout/widget/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:F

.field b:F

.field c:F

.field d:F

.field e:I

.field f:Landroidx/constraintlayout/widget/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 2
    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->a:F

    .line 3
    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->b:F

    .line 4
    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->c:F

    .line 5
    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->d:F

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->e:I

    .line 7
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    .line 8
    sget-object v0, Landroidx/constraintlayout/widget/i;->Variant:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 9
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1f
    if-ge v1, v0, :cond_8f

    .line 10
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 11
    sget v3, Landroidx/constraintlayout/widget/i;->Variant_constraints:I

    if-ne v2, v3, :cond_59

    .line 12
    iget v3, p0, Landroidx/constraintlayout/widget/c$b;->e:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/c$b;->e:I

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Landroidx/constraintlayout/widget/c$b;->e:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Landroidx/constraintlayout/widget/c$b;->e:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    const-string v3, "layout"

    .line 15
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 16
    new-instance v2, Landroidx/constraintlayout/widget/d;

    invoke-direct {v2}, Landroidx/constraintlayout/widget/d;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/widget/c$b;->f:Landroidx/constraintlayout/widget/d;

    .line 17
    iget v3, p0, Landroidx/constraintlayout/widget/c$b;->e:I

    invoke-virtual {v2, p1, v3}, Landroidx/constraintlayout/widget/d;->f(Landroid/content/Context;I)V

    goto :goto_8c

    .line 18
    :cond_59
    sget v3, Landroidx/constraintlayout/widget/i;->Variant_region_heightLessThan:I

    if-ne v2, v3, :cond_66

    .line 19
    iget v3, p0, Landroidx/constraintlayout/widget/c$b;->d:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/c$b;->d:F

    goto :goto_8c

    .line 20
    :cond_66
    sget v3, Landroidx/constraintlayout/widget/i;->Variant_region_heightMoreThan:I

    if-ne v2, v3, :cond_73

    .line 21
    iget v3, p0, Landroidx/constraintlayout/widget/c$b;->b:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/c$b;->b:F

    goto :goto_8c

    .line 22
    :cond_73
    sget v3, Landroidx/constraintlayout/widget/i;->Variant_region_widthLessThan:I

    if-ne v2, v3, :cond_80

    .line 23
    iget v3, p0, Landroidx/constraintlayout/widget/c$b;->c:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/c$b;->c:F

    goto :goto_8c

    .line 24
    :cond_80
    sget v3, Landroidx/constraintlayout/widget/i;->Variant_region_widthMoreThan:I

    if-ne v2, v3, :cond_8c

    .line 25
    iget v3, p0, Landroidx/constraintlayout/widget/c$b;->a:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/c$b;->a:F

    :cond_8c
    :goto_8c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 26
    :cond_8f
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
