.class public Landroidx/constraintlayout/widget/d$e;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/constraintlayout/widget/d;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 9
  name = "e"
.end annotation

.field private static n:Landroid/util/SparseIntArray;

.field public a:Z

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:Z

.field public m:F

.method static constructor <clinit>()V
  .registers 3
  .line 1
    new-instance v0, Landroid/util/SparseIntArray;
    invoke-direct { v0 }, Landroid/util/SparseIntArray;-><init>()V
    sput-object v0, Landroidx/constraintlayout/widget/d$e;->n:Landroid/util/SparseIntArray;
  .line 2
    sget v1, Landroidx/constraintlayout/widget/i;->Transform_android_rotation:I
    const/4 v2, 1
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 3
    sget-object v0, Landroidx/constraintlayout/widget/d$e;->n:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Transform_android_rotationX:I
    const/4 v2, 2
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 4
    sget-object v0, Landroidx/constraintlayout/widget/d$e;->n:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Transform_android_rotationY:I
    const/4 v2, 3
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 5
    sget-object v0, Landroidx/constraintlayout/widget/d$e;->n:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Transform_android_scaleX:I
    const/4 v2, 4
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 6
    sget-object v0, Landroidx/constraintlayout/widget/d$e;->n:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Transform_android_scaleY:I
    const/4 v2, 5
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 7
    sget-object v0, Landroidx/constraintlayout/widget/d$e;->n:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Transform_android_transformPivotX:I
    const/4 v2, 6
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 8
    sget-object v0, Landroidx/constraintlayout/widget/d$e;->n:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Transform_android_transformPivotY:I
    const/4 v2, 7
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 9
    sget-object v0, Landroidx/constraintlayout/widget/d$e;->n:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Transform_android_translationX:I
    const/16 v2, 8
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 10
    sget-object v0, Landroidx/constraintlayout/widget/d$e;->n:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Transform_android_translationY:I
    const/16 v2, 9
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 11
    sget-object v0, Landroidx/constraintlayout/widget/d$e;->n:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Transform_android_translationZ:I
    const/16 v2, 10
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 12
    sget-object v0, Landroidx/constraintlayout/widget/d$e;->n:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Transform_android_elevation:I
    const/16 v2, 11
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
    return-void
.end method

.method public constructor <init>()V
  .registers 4
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 0
  .line 2
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/d$e;->a:Z
    const/4 v1, 0
  .line 3
    iput v1, p0, Landroidx/constraintlayout/widget/d$e;->b:F
  .line 4
    iput v1, p0, Landroidx/constraintlayout/widget/d$e;->c:F
  .line 5
    iput v1, p0, Landroidx/constraintlayout/widget/d$e;->d:F
    const/high16 v2, 16256
  .line 6
    iput v2, p0, Landroidx/constraintlayout/widget/d$e;->e:F
  .line 7
    iput v2, p0, Landroidx/constraintlayout/widget/d$e;->f:F
    const/high16 v2, 32704
  .line 8
    iput v2, p0, Landroidx/constraintlayout/widget/d$e;->g:F
  .line 9
    iput v2, p0, Landroidx/constraintlayout/widget/d$e;->h:F
  .line 10
    iput v1, p0, Landroidx/constraintlayout/widget/d$e;->i:F
  .line 11
    iput v1, p0, Landroidx/constraintlayout/widget/d$e;->j:F
  .line 12
    iput v1, p0, Landroidx/constraintlayout/widget/d$e;->k:F
  .line 13
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/d$e;->l:Z
  .line 14
    iput v1, p0, Landroidx/constraintlayout/widget/d$e;->m:F
    return-void
.end method

.method public a(Landroidx/constraintlayout/widget/d$e;)V
  .registers 3
  .line 1
    iget-boolean v0, p1, Landroidx/constraintlayout/widget/d$e;->a:Z
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/d$e;->a:Z
  .line 2
    iget v0, p1, Landroidx/constraintlayout/widget/d$e;->b:F
    iput v0, p0, Landroidx/constraintlayout/widget/d$e;->b:F
  .line 3
    iget v0, p1, Landroidx/constraintlayout/widget/d$e;->c:F
    iput v0, p0, Landroidx/constraintlayout/widget/d$e;->c:F
  .line 4
    iget v0, p1, Landroidx/constraintlayout/widget/d$e;->d:F
    iput v0, p0, Landroidx/constraintlayout/widget/d$e;->d:F
  .line 5
    iget v0, p1, Landroidx/constraintlayout/widget/d$e;->e:F
    iput v0, p0, Landroidx/constraintlayout/widget/d$e;->e:F
  .line 6
    iget v0, p1, Landroidx/constraintlayout/widget/d$e;->f:F
    iput v0, p0, Landroidx/constraintlayout/widget/d$e;->f:F
  .line 7
    iget v0, p1, Landroidx/constraintlayout/widget/d$e;->g:F
    iput v0, p0, Landroidx/constraintlayout/widget/d$e;->g:F
  .line 8
    iget v0, p1, Landroidx/constraintlayout/widget/d$e;->h:F
    iput v0, p0, Landroidx/constraintlayout/widget/d$e;->h:F
  .line 9
    iget v0, p1, Landroidx/constraintlayout/widget/d$e;->i:F
    iput v0, p0, Landroidx/constraintlayout/widget/d$e;->i:F
  .line 10
    iget v0, p1, Landroidx/constraintlayout/widget/d$e;->j:F
    iput v0, p0, Landroidx/constraintlayout/widget/d$e;->j:F
  .line 11
    iget v0, p1, Landroidx/constraintlayout/widget/d$e;->k:F
    iput v0, p0, Landroidx/constraintlayout/widget/d$e;->k:F
  .line 12
    iget-boolean v0, p1, Landroidx/constraintlayout/widget/d$e;->l:Z
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/d$e;->l:Z
  .line 13
    iget p1, p1, Landroidx/constraintlayout/widget/d$e;->m:F
    iput p1, p0, Landroidx/constraintlayout/widget/d$e;->m:F
    return-void
.end method

.method b(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 8
  .line 1
    sget-object v0, Landroidx/constraintlayout/widget/i;->Transform:[I
    invoke-virtual { p1, p2, v0 }, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    move-result-object p1
    const/4 p2, 1
  .line 2
    iput-boolean p2, p0, Landroidx/constraintlayout/widget/d$e;->a:Z
  .line 3
    invoke-virtual { p1 }, Landroid/content/res/TypedArray;->getIndexCount()I
    move-result v0
    const/4 v1, 0
  :L0
    if-ge v1, v0, :L13
  .line 4
    invoke-virtual { p1, v1 }, Landroid/content/res/TypedArray;->getIndex(I)I
    move-result v2
  .line 5
    sget-object v3, Landroidx/constraintlayout/widget/d$e;->n:Landroid/util/SparseIntArray;
    invoke-virtual { v3, v2 }, Landroid/util/SparseIntArray;->get(I)I
    move-result v3
    const/16 v4, 21
    packed-switch v3, :L14
    goto/16 :L12
  :L1
  .line 6
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt v3, v4, :L12
  .line 7
    iput-boolean p2, p0, Landroidx/constraintlayout/widget/d$e;->l:Z
  .line 8
    iget v3, p0, Landroidx/constraintlayout/widget/d$e;->m:F
    invoke-virtual { p1, v2, v3 }, Landroid/content/res/TypedArray;->getDimension(IF)F
    move-result v2
    iput v2, p0, Landroidx/constraintlayout/widget/d$e;->m:F
    goto :L12
  :L2
  .line 9
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt v3, v4, :L12
  .line 10
    iget v3, p0, Landroidx/constraintlayout/widget/d$e;->k:F
    invoke-virtual { p1, v2, v3 }, Landroid/content/res/TypedArray;->getDimension(IF)F
    move-result v2
    iput v2, p0, Landroidx/constraintlayout/widget/d$e;->k:F
    goto :L12
  :L3
  .line 11
    iget v3, p0, Landroidx/constraintlayout/widget/d$e;->j:F
    invoke-virtual { p1, v2, v3 }, Landroid/content/res/TypedArray;->getDimension(IF)F
    move-result v2
    iput v2, p0, Landroidx/constraintlayout/widget/d$e;->j:F
    goto :L12
  :L4
  .line 12
    iget v3, p0, Landroidx/constraintlayout/widget/d$e;->i:F
    invoke-virtual { p1, v2, v3 }, Landroid/content/res/TypedArray;->getDimension(IF)F
    move-result v2
    iput v2, p0, Landroidx/constraintlayout/widget/d$e;->i:F
    goto :L12
  :L5
  .line 13
    iget v3, p0, Landroidx/constraintlayout/widget/d$e;->h:F
    invoke-virtual { p1, v2, v3 }, Landroid/content/res/TypedArray;->getDimension(IF)F
    move-result v2
    iput v2, p0, Landroidx/constraintlayout/widget/d$e;->h:F
    goto :L12
  :L6
  .line 14
    iget v3, p0, Landroidx/constraintlayout/widget/d$e;->g:F
    invoke-virtual { p1, v2, v3 }, Landroid/content/res/TypedArray;->getDimension(IF)F
    move-result v2
    iput v2, p0, Landroidx/constraintlayout/widget/d$e;->g:F
    goto :L12
  :L7
  .line 15
    iget v3, p0, Landroidx/constraintlayout/widget/d$e;->f:F
    invoke-virtual { p1, v2, v3 }, Landroid/content/res/TypedArray;->getFloat(IF)F
    move-result v2
    iput v2, p0, Landroidx/constraintlayout/widget/d$e;->f:F
    goto :L12
  :L8
  .line 16
    iget v3, p0, Landroidx/constraintlayout/widget/d$e;->e:F
    invoke-virtual { p1, v2, v3 }, Landroid/content/res/TypedArray;->getFloat(IF)F
    move-result v2
    iput v2, p0, Landroidx/constraintlayout/widget/d$e;->e:F
    goto :L12
  :L9
  .line 17
    iget v3, p0, Landroidx/constraintlayout/widget/d$e;->d:F
    invoke-virtual { p1, v2, v3 }, Landroid/content/res/TypedArray;->getFloat(IF)F
    move-result v2
    iput v2, p0, Landroidx/constraintlayout/widget/d$e;->d:F
    goto :L12
  :L10
  .line 18
    iget v3, p0, Landroidx/constraintlayout/widget/d$e;->c:F
    invoke-virtual { p1, v2, v3 }, Landroid/content/res/TypedArray;->getFloat(IF)F
    move-result v2
    iput v2, p0, Landroidx/constraintlayout/widget/d$e;->c:F
    goto :L12
  :L11
  .line 19
    iget v3, p0, Landroidx/constraintlayout/widget/d$e;->b:F
    invoke-virtual { p1, v2, v3 }, Landroid/content/res/TypedArray;->getFloat(IF)F
    move-result v2
    iput v2, p0, Landroidx/constraintlayout/widget/d$e;->b:F
  :L12
    add-int/lit8 v1, v1, 1
    goto/16 :L0
  :L13
  .line 20
    invoke-virtual { p1 }, Landroid/content/res/TypedArray;->recycle()V
    return-void
  :L14
  .packed-switch 1
    :L11
    :L10
    :L9
    :L8
    :L7
    :L6
    :L5
    :L4
    :L3
    :L2
    :L1
  .end packed-switch
.end method
