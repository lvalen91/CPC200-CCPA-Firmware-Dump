.class public Landroidx/constraintlayout/widget/d$c;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/constraintlayout/widget/d;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 9
  name = "c"
.end annotation

.field private static h:Landroid/util/SparseIntArray;

.field public a:Z

.field public b:I

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:F

.field public g:F

.method static constructor <clinit>()V
  .registers 3
  .line 1
    new-instance v0, Landroid/util/SparseIntArray;
    invoke-direct { v0 }, Landroid/util/SparseIntArray;-><init>()V
    sput-object v0, Landroidx/constraintlayout/widget/d$c;->h:Landroid/util/SparseIntArray;
  .line 2
    sget v1, Landroidx/constraintlayout/widget/i;->Motion_motionPathRotate:I
    const/4 v2, 1
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 3
    sget-object v0, Landroidx/constraintlayout/widget/d$c;->h:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Motion_pathMotionArc:I
    const/4 v2, 2
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 4
    sget-object v0, Landroidx/constraintlayout/widget/d$c;->h:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Motion_transitionEasing:I
    const/4 v2, 3
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 5
    sget-object v0, Landroidx/constraintlayout/widget/d$c;->h:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Motion_drawPath:I
    const/4 v2, 4
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 6
    sget-object v0, Landroidx/constraintlayout/widget/d$c;->h:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Motion_animate_relativeTo:I
    const/4 v2, 5
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 7
    sget-object v0, Landroidx/constraintlayout/widget/d$c;->h:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Motion_motionStagger:I
    const/4 v2, 6
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
    return-void
.end method

.method public constructor <init>()V
  .registers 4
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 0
  .line 2
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/d$c;->a:Z
    const/4 v1, -1
  .line 3
    iput v1, p0, Landroidx/constraintlayout/widget/d$c;->b:I
    const/4 v2, 0
  .line 4
    iput-object v2, p0, Landroidx/constraintlayout/widget/d$c;->c:Ljava/lang/String;
  .line 5
    iput v1, p0, Landroidx/constraintlayout/widget/d$c;->d:I
  .line 6
    iput v0, p0, Landroidx/constraintlayout/widget/d$c;->e:I
    const/high16 v0, 32704
  .line 7
    iput v0, p0, Landroidx/constraintlayout/widget/d$c;->f:F
  .line 8
    iput v0, p0, Landroidx/constraintlayout/widget/d$c;->g:F
    return-void
.end method

.method public a(Landroidx/constraintlayout/widget/d$c;)V
  .registers 3
  .line 1
    iget-boolean v0, p1, Landroidx/constraintlayout/widget/d$c;->a:Z
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/d$c;->a:Z
  .line 2
    iget v0, p1, Landroidx/constraintlayout/widget/d$c;->b:I
    iput v0, p0, Landroidx/constraintlayout/widget/d$c;->b:I
  .line 3
    iget-object v0, p1, Landroidx/constraintlayout/widget/d$c;->c:Ljava/lang/String;
    iput-object v0, p0, Landroidx/constraintlayout/widget/d$c;->c:Ljava/lang/String;
  .line 4
    iget v0, p1, Landroidx/constraintlayout/widget/d$c;->d:I
    iput v0, p0, Landroidx/constraintlayout/widget/d$c;->d:I
  .line 5
    iget v0, p1, Landroidx/constraintlayout/widget/d$c;->e:I
    iput v0, p0, Landroidx/constraintlayout/widget/d$c;->e:I
  .line 6
    iget v0, p1, Landroidx/constraintlayout/widget/d$c;->g:F
    iput v0, p0, Landroidx/constraintlayout/widget/d$c;->g:F
  .line 7
    iget p1, p1, Landroidx/constraintlayout/widget/d$c;->f:F
    iput p1, p0, Landroidx/constraintlayout/widget/d$c;->f:F
    return-void
.end method

.method b(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 8
  .line 1
    sget-object v0, Landroidx/constraintlayout/widget/i;->Motion:[I
    invoke-virtual { p1, p2, v0 }, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    move-result-object p1
    const/4 p2, 1
  .line 2
    iput-boolean p2, p0, Landroidx/constraintlayout/widget/d$c;->a:Z
  .line 3
    invoke-virtual { p1 }, Landroid/content/res/TypedArray;->getIndexCount()I
    move-result p2
    const/4 v0, 0
    const/4 v1, 0
  :L0
    if-ge v1, p2, :L9
  .line 4
    invoke-virtual { p1, v1 }, Landroid/content/res/TypedArray;->getIndex(I)I
    move-result v2
  .line 5
    sget-object v3, Landroidx/constraintlayout/widget/d$c;->h:Landroid/util/SparseIntArray;
    invoke-virtual { v3, v2 }, Landroid/util/SparseIntArray;->get(I)I
    move-result v3
    packed-switch v3, :L10
    goto :L8
  :L1
  .line 6
    iget v3, p0, Landroidx/constraintlayout/widget/d$c;->f:F
    invoke-virtual { p1, v2, v3 }, Landroid/content/res/TypedArray;->getFloat(IF)F
    move-result v2
    iput v2, p0, Landroidx/constraintlayout/widget/d$c;->f:F
    goto :L8
  :L2
  .line 7
    iget v3, p0, Landroidx/constraintlayout/widget/d$c;->b:I
    invoke-static { p1, v2, v3 }, Landroidx/constraintlayout/widget/d;->a(Landroid/content/res/TypedArray;II)I
    move-result v2
    iput v2, p0, Landroidx/constraintlayout/widget/d$c;->b:I
    goto :L8
  :L3
  .line 8
    invoke-virtual { p1, v2, v0 }, Landroid/content/res/TypedArray;->getInt(II)I
    move-result v2
    iput v2, p0, Landroidx/constraintlayout/widget/d$c;->e:I
    goto :L8
  :L4
  .line 9
    invoke-virtual { p1, v2 }, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;
    move-result-object v3
  .line 10
    iget v3, v3, Landroid/util/TypedValue;->type:I
    const/4 v4, 3
    if-ne v3, v4, :L5
  .line 11
    invoke-virtual { p1, v2 }, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
    move-result-object v2
    iput-object v2, p0, Landroidx/constraintlayout/widget/d$c;->c:Ljava/lang/String;
    goto :L8
  :L5
  .line 12
    sget-object v3, Lc/e/a/a/a;->a:[Ljava/lang/String;
    invoke-virtual { p1, v2, v0 }, Landroid/content/res/TypedArray;->getInteger(II)I
    move-result v2
    aget-object v2, v3, v2
    iput-object v2, p0, Landroidx/constraintlayout/widget/d$c;->c:Ljava/lang/String;
    goto :L8
  :L6
  .line 13
    iget v3, p0, Landroidx/constraintlayout/widget/d$c;->d:I
    invoke-virtual { p1, v2, v3 }, Landroid/content/res/TypedArray;->getInt(II)I
    move-result v2
    iput v2, p0, Landroidx/constraintlayout/widget/d$c;->d:I
    goto :L8
  :L7
  .line 14
    iget v3, p0, Landroidx/constraintlayout/widget/d$c;->g:F
    invoke-virtual { p1, v2, v3 }, Landroid/content/res/TypedArray;->getFloat(IF)F
    move-result v2
    iput v2, p0, Landroidx/constraintlayout/widget/d$c;->g:F
  :L8
    add-int/lit8 v1, v1, 1
    goto :L0
  :L9
  .line 15
    invoke-virtual { p1 }, Landroid/content/res/TypedArray;->recycle()V
    return-void
  :L10
  .packed-switch 1
    :L7
    :L6
    :L4
    :L3
    :L2
    :L1
  .end packed-switch
.end method
