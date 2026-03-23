.class Landroidx/constraintlayout/widget/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/constraintlayout/widget/c;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = "b"
.end annotation

.field a:F

.field b:F

.field c:F

.field d:F

.field e:I

.field f:Landroidx/constraintlayout/widget/d;

.method public constructor <init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
  .registers 8
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/high16 v0, 32704
  .line 2
    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->a:F
  .line 3
    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->b:F
  .line 4
    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->c:F
  .line 5
    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->d:F
    const/4 v0, -1
  .line 6
    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->e:I
  .line 7
    invoke-static { p2 }, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;
    move-result-object p2
  .line 8
    sget-object v0, Landroidx/constraintlayout/widget/i;->Variant:[I
    invoke-virtual { p1, p2, v0 }, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    move-result-object p2
  .line 9
    invoke-virtual { p2 }, Landroid/content/res/TypedArray;->getIndexCount()I
    move-result v0
    const/4 v1, 0
  :L0
    if-ge v1, v0, :L6
  .line 10
    invoke-virtual { p2, v1 }, Landroid/content/res/TypedArray;->getIndex(I)I
    move-result v2
  .line 11
    sget v3, Landroidx/constraintlayout/widget/i;->Variant_constraints:I
    if-ne v2, v3, :L1
  .line 12
    iget v3, p0, Landroidx/constraintlayout/widget/c$b;->e:I
    invoke-virtual { p2, v2, v3 }, Landroid/content/res/TypedArray;->getResourceId(II)I
    move-result v2
    iput v2, p0, Landroidx/constraintlayout/widget/c$b;->e:I
  .line 13
    invoke-virtual { p1 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v2
    iget v3, p0, Landroidx/constraintlayout/widget/c$b;->e:I
    invoke-virtual { v2, v3 }, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;
    move-result-object v2
  .line 14
    invoke-virtual { p1 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v3
    iget v4, p0, Landroidx/constraintlayout/widget/c$b;->e:I
    invoke-virtual { v3, v4 }, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    const-string v3, "layout"
  .line 15
    invoke-virtual { v3, v2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :L5
  .line 16
    new-instance v2, Landroidx/constraintlayout/widget/d;
    invoke-direct { v2 }, Landroidx/constraintlayout/widget/d;-><init>()V
    iput-object v2, p0, Landroidx/constraintlayout/widget/c$b;->f:Landroidx/constraintlayout/widget/d;
  .line 17
    iget v3, p0, Landroidx/constraintlayout/widget/c$b;->e:I
    invoke-virtual { v2, p1, v3 }, Landroidx/constraintlayout/widget/d;->f(Landroid/content/Context;I)V
    goto :L5
  :L1
  .line 18
    sget v3, Landroidx/constraintlayout/widget/i;->Variant_region_heightLessThan:I
    if-ne v2, v3, :L2
  .line 19
    iget v3, p0, Landroidx/constraintlayout/widget/c$b;->d:F
    invoke-virtual { p2, v2, v3 }, Landroid/content/res/TypedArray;->getDimension(IF)F
    move-result v2
    iput v2, p0, Landroidx/constraintlayout/widget/c$b;->d:F
    goto :L5
  :L2
  .line 20
    sget v3, Landroidx/constraintlayout/widget/i;->Variant_region_heightMoreThan:I
    if-ne v2, v3, :L3
  .line 21
    iget v3, p0, Landroidx/constraintlayout/widget/c$b;->b:F
    invoke-virtual { p2, v2, v3 }, Landroid/content/res/TypedArray;->getDimension(IF)F
    move-result v2
    iput v2, p0, Landroidx/constraintlayout/widget/c$b;->b:F
    goto :L5
  :L3
  .line 22
    sget v3, Landroidx/constraintlayout/widget/i;->Variant_region_widthLessThan:I
    if-ne v2, v3, :L4
  .line 23
    iget v3, p0, Landroidx/constraintlayout/widget/c$b;->c:F
    invoke-virtual { p2, v2, v3 }, Landroid/content/res/TypedArray;->getDimension(IF)F
    move-result v2
    iput v2, p0, Landroidx/constraintlayout/widget/c$b;->c:F
    goto :L5
  :L4
  .line 24
    sget v3, Landroidx/constraintlayout/widget/i;->Variant_region_widthMoreThan:I
    if-ne v2, v3, :L5
  .line 25
    iget v3, p0, Landroidx/constraintlayout/widget/c$b;->a:F
    invoke-virtual { p2, v2, v3 }, Landroid/content/res/TypedArray;->getDimension(IF)F
    move-result v2
    iput v2, p0, Landroidx/constraintlayout/widget/c$b;->a:F
  :L5
    add-int/lit8 v1, v1, 1
    goto :L0
  :L6
  .line 26
    invoke-virtual { p2 }, Landroid/content/res/TypedArray;->recycle()V
    return-void
.end method
