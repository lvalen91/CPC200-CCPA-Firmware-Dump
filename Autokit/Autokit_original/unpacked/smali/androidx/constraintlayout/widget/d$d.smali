.class public Landroidx/constraintlayout/widget/d$d;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/constraintlayout/widget/d;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 9
  name = "d"
.end annotation

.field public a:Z

.field public b:I

.field public c:I

.field public d:F

.field public e:F

.method public constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 0
  .line 2
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/d$d;->a:Z
  .line 3
    iput v0, p0, Landroidx/constraintlayout/widget/d$d;->b:I
  .line 4
    iput v0, p0, Landroidx/constraintlayout/widget/d$d;->c:I
    const/high16 v0, 16256
  .line 5
    iput v0, p0, Landroidx/constraintlayout/widget/d$d;->d:F
    const/high16 v0, 32704
  .line 6
    iput v0, p0, Landroidx/constraintlayout/widget/d$d;->e:F
    return-void
.end method

.method public a(Landroidx/constraintlayout/widget/d$d;)V
  .registers 3
  .line 1
    iget-boolean v0, p1, Landroidx/constraintlayout/widget/d$d;->a:Z
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/d$d;->a:Z
  .line 2
    iget v0, p1, Landroidx/constraintlayout/widget/d$d;->b:I
    iput v0, p0, Landroidx/constraintlayout/widget/d$d;->b:I
  .line 3
    iget v0, p1, Landroidx/constraintlayout/widget/d$d;->d:F
    iput v0, p0, Landroidx/constraintlayout/widget/d$d;->d:F
  .line 4
    iget v0, p1, Landroidx/constraintlayout/widget/d$d;->e:F
    iput v0, p0, Landroidx/constraintlayout/widget/d$d;->e:F
  .line 5
    iget p1, p1, Landroidx/constraintlayout/widget/d$d;->c:I
    iput p1, p0, Landroidx/constraintlayout/widget/d$d;->c:I
    return-void
.end method

.method b(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 6
  .line 1
    sget-object v0, Landroidx/constraintlayout/widget/i;->PropertySet:[I
    invoke-virtual { p1, p2, v0 }, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    move-result-object p1
    const/4 p2, 1
  .line 2
    iput-boolean p2, p0, Landroidx/constraintlayout/widget/d$d;->a:Z
  .line 3
    invoke-virtual { p1 }, Landroid/content/res/TypedArray;->getIndexCount()I
    move-result p2
    const/4 v0, 0
  :L0
    if-ge v0, p2, :L5
  .line 4
    invoke-virtual { p1, v0 }, Landroid/content/res/TypedArray;->getIndex(I)I
    move-result v1
  .line 5
    sget v2, Landroidx/constraintlayout/widget/i;->PropertySet_android_alpha:I
    if-ne v1, v2, :L1
  .line 6
    iget v2, p0, Landroidx/constraintlayout/widget/d$d;->d:F
    invoke-virtual { p1, v1, v2 }, Landroid/content/res/TypedArray;->getFloat(IF)F
    move-result v1
    iput v1, p0, Landroidx/constraintlayout/widget/d$d;->d:F
    goto :L4
  :L1
  .line 7
    sget v2, Landroidx/constraintlayout/widget/i;->PropertySet_android_visibility:I
    if-ne v1, v2, :L2
  .line 8
    iget v2, p0, Landroidx/constraintlayout/widget/d$d;->b:I
    invoke-virtual { p1, v1, v2 }, Landroid/content/res/TypedArray;->getInt(II)I
    move-result v1
    iput v1, p0, Landroidx/constraintlayout/widget/d$d;->b:I
  .line 9
    invoke-static { }, Landroidx/constraintlayout/widget/d;->b()[I
    move-result-object v1
    iget v2, p0, Landroidx/constraintlayout/widget/d$d;->b:I
    aget v1, v1, v2
    iput v1, p0, Landroidx/constraintlayout/widget/d$d;->b:I
    goto :L4
  :L2
  .line 10
    sget v2, Landroidx/constraintlayout/widget/i;->PropertySet_visibilityMode:I
    if-ne v1, v2, :L3
  .line 11
    iget v2, p0, Landroidx/constraintlayout/widget/d$d;->c:I
    invoke-virtual { p1, v1, v2 }, Landroid/content/res/TypedArray;->getInt(II)I
    move-result v1
    iput v1, p0, Landroidx/constraintlayout/widget/d$d;->c:I
    goto :L4
  :L3
  .line 12
    sget v2, Landroidx/constraintlayout/widget/i;->PropertySet_motionProgress:I
    if-ne v1, v2, :L4
  .line 13
    iget v2, p0, Landroidx/constraintlayout/widget/d$d;->e:F
    invoke-virtual { p1, v1, v2 }, Landroid/content/res/TypedArray;->getFloat(IF)F
    move-result v1
    iput v1, p0, Landroidx/constraintlayout/widget/d$d;->e:F
  :L4
    add-int/lit8 v0, v0, 1
    goto :L0
  :L5
  .line 14
    invoke-virtual { p1 }, Landroid/content/res/TypedArray;->recycle()V
    return-void
.end method
