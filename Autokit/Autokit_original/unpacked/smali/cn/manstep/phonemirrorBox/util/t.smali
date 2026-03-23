.class public Lcn/manstep/phonemirrorBox/util/t;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcn/manstep/phonemirrorBox/util/t$a;
  }
.end annotation

.field private a:I

.field private b:Landroid/graphics/Point;

.field private c:Landroid/graphics/Point;

.field private d:Landroid/graphics/Point;

.field e:I

.field private f:Lcn/manstep/phonemirrorBox/util/t$a;

.field private g:I

.method static constructor <clinit>()V
  .registers 2
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/16 p1, 50
  .line 2
    iput p1, p0, Lcn/manstep/phonemirrorBox/util/t;->e:I
    const/4 p1, 2
  .line 3
    iput p1, p0, Lcn/manstep/phonemirrorBox/util/t;->g:I
  .line 4
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/util/t;->a()V
    return-void
.end method

.method private a()V
  .registers 2
  .line 1
    new-instance v0, Landroid/graphics/Point;
    invoke-direct { v0 }, Landroid/graphics/Point;-><init>()V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/util/t;->b:Landroid/graphics/Point;
  .line 2
    new-instance v0, Landroid/graphics/Point;
    invoke-direct { v0 }, Landroid/graphics/Point;-><init>()V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/util/t;->c:Landroid/graphics/Point;
  .line 3
    new-instance v0, Landroid/graphics/Point;
    invoke-direct { v0 }, Landroid/graphics/Point;-><init>()V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/util/t;->d:Landroid/graphics/Point;
    return-void
.end method

.method public b(Lcn/manstep/phonemirrorBox/util/t$a;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/t;->f:Lcn/manstep/phonemirrorBox/util/t$a;
    return-void
.end method

.method public c(Landroid/view/MotionEvent;)Z
  .registers 10
  .line 1
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getActionMasked()I
    move-result v0
    const/4 v1, 0
    if-eqz v0, :L13
    const/4 v2, 1
    if-eq v0, v2, :L12
    const/4 v3, 3
    const/4 v4, 2
    if-eq v0, v4, :L4
    const/4 v5, 5
    if-eq v0, v5, :L1
    const/4 p1, 6
    if-eq v0, p1, :L0
    goto/16 :L14
  :L0
  .line 2
    iput v2, p0, Lcn/manstep/phonemirrorBox/util/t;->a:I
    goto/16 :L14
  :L1
  .line 3
    iget v0, p0, Lcn/manstep/phonemirrorBox/util/t;->a:I
    if-ne v0, v2, :L2
    goto/16 :L14
  :L2
  .line 4
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getPointerCount()I
    move-result v0
    if-ne v0, v4, :L3
  .line 5
    iput v4, p0, Lcn/manstep/phonemirrorBox/util/t;->a:I
  .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/t;->c:Landroid/graphics/Point;
    invoke-virtual { p1, v2 }, Landroid/view/MotionEvent;->getX(I)F
    move-result v3
    float-to-int v3, v3
    iput v3, v0, Landroid/graphics/Point;->x:I
  .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/t;->c:Landroid/graphics/Point;
    invoke-virtual { p1, v2 }, Landroid/view/MotionEvent;->getY(I)F
    move-result p1
    float-to-int p1, p1
    iput p1, v0, Landroid/graphics/Point;->y:I
    goto/16 :L14
  :L3
  .line 8
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getPointerCount()I
    move-result v0
    if-ne v0, v3, :L14
  .line 9
    iput v3, p0, Lcn/manstep/phonemirrorBox/util/t;->a:I
  .line 10
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/t;->c:Landroid/graphics/Point;
    invoke-virtual { p1, v2 }, Landroid/view/MotionEvent;->getX(I)F
    move-result v3
    float-to-int v3, v3
    iput v3, v0, Landroid/graphics/Point;->x:I
  .line 11
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/t;->c:Landroid/graphics/Point;
    invoke-virtual { p1, v2 }, Landroid/view/MotionEvent;->getY(I)F
    move-result v2
    float-to-int v2, v2
    iput v2, v0, Landroid/graphics/Point;->y:I
  .line 12
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/t;->d:Landroid/graphics/Point;
    invoke-virtual { p1, v4 }, Landroid/view/MotionEvent;->getX(I)F
    move-result v2
    float-to-int v2, v2
    iput v2, v0, Landroid/graphics/Point;->x:I
  .line 13
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/t;->d:Landroid/graphics/Point;
    invoke-virtual { p1, v4 }, Landroid/view/MotionEvent;->getY(I)F
    move-result p1
    float-to-int p1, p1
    iput p1, v0, Landroid/graphics/Point;->y:I
    goto/16 :L14
  :L4
  .line 14
    iget v0, p0, Lcn/manstep/phonemirrorBox/util/t;->a:I
    if-eqz v0, :L14
    if-ne v0, v2, :L5
    goto/16 :L14
  :L5
    if-ne v0, v3, :L14
  .line 15
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getPointerCount()I
    move-result v0
    if-ne v0, v3, :L14
  .line 16
    new-instance v0, Landroid/graphics/Point;
    invoke-virtual { p1, v1 }, Landroid/view/MotionEvent;->getX(I)F
    move-result v5
    float-to-int v5, v5
    invoke-virtual { p1, v1 }, Landroid/view/MotionEvent;->getY(I)F
    move-result v6
    float-to-int v6, v6
    invoke-direct { v0, v5, v6 }, Landroid/graphics/Point;-><init>(II)V
  .line 17
    new-instance v5, Landroid/graphics/Point;
    invoke-virtual { p1, v2 }, Landroid/view/MotionEvent;->getX(I)F
    move-result v6
    float-to-int v6, v6
    invoke-virtual { p1, v2 }, Landroid/view/MotionEvent;->getY(I)F
    move-result v7
    float-to-int v7, v7
    invoke-direct { v5, v6, v7 }, Landroid/graphics/Point;-><init>(II)V
  .line 18
    new-instance v6, Landroid/graphics/Point;
    invoke-virtual { p1, v4 }, Landroid/view/MotionEvent;->getX(I)F
    move-result v7
    float-to-int v7, v7
    invoke-virtual { p1, v4 }, Landroid/view/MotionEvent;->getY(I)F
    move-result p1
    float-to-int p1, p1
    invoke-direct { v6, v7, p1 }, Landroid/graphics/Point;-><init>(II)V
  .line 19
    iget p1, p0, Lcn/manstep/phonemirrorBox/util/t;->g:I
    if-eqz p1, :L8
    if-eq p1, v2, :L7
    if-eq p1, v3, :L6
  .line 20
    iget p1, v0, Landroid/graphics/Point;->y:I
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/t;->b:Landroid/graphics/Point;
    iget v0, v0, Landroid/graphics/Point;->y:I
    sub-int/2addr p1, v0
    iget v0, p0, Lcn/manstep/phonemirrorBox/util/t;->e:I
    if-le p1, v0, :L10
    iget p1, v5, Landroid/graphics/Point;->y:I
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/util/t;->c:Landroid/graphics/Point;
    iget v3, v3, Landroid/graphics/Point;->y:I
    sub-int/2addr p1, v3
    if-le p1, v0, :L10
    iget p1, v6, Landroid/graphics/Point;->y:I
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/util/t;->d:Landroid/graphics/Point;
    iget v3, v3, Landroid/graphics/Point;->y:I
    sub-int/2addr p1, v3
    if-le p1, v0, :L10
    goto :L9
  :L6
  .line 21
    iget p1, v0, Landroid/graphics/Point;->x:I
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/t;->b:Landroid/graphics/Point;
    iget v0, v0, Landroid/graphics/Point;->x:I
    sub-int/2addr p1, v0
    iget v0, p0, Lcn/manstep/phonemirrorBox/util/t;->e:I
    if-le p1, v0, :L10
    iget p1, v5, Landroid/graphics/Point;->x:I
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/util/t;->c:Landroid/graphics/Point;
    iget v3, v3, Landroid/graphics/Point;->x:I
    sub-int/2addr p1, v3
    if-le p1, v0, :L10
    iget p1, v6, Landroid/graphics/Point;->x:I
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/util/t;->d:Landroid/graphics/Point;
    iget v3, v3, Landroid/graphics/Point;->x:I
    sub-int/2addr p1, v3
    if-le p1, v0, :L10
    goto :L9
  :L7
  .line 22
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/t;->b:Landroid/graphics/Point;
    iget p1, p1, Landroid/graphics/Point;->x:I
    iget v0, v0, Landroid/graphics/Point;->x:I
    sub-int/2addr p1, v0
    iget v0, p0, Lcn/manstep/phonemirrorBox/util/t;->e:I
    if-le p1, v0, :L10
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/t;->c:Landroid/graphics/Point;
    iget p1, p1, Landroid/graphics/Point;->x:I
    iget v3, v5, Landroid/graphics/Point;->x:I
    sub-int/2addr p1, v3
    if-le p1, v0, :L10
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/t;->d:Landroid/graphics/Point;
    iget p1, p1, Landroid/graphics/Point;->x:I
    iget v3, v6, Landroid/graphics/Point;->x:I
    sub-int/2addr p1, v3
    if-le p1, v0, :L10
    goto :L9
  :L8
  .line 23
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/t;->b:Landroid/graphics/Point;
    iget p1, p1, Landroid/graphics/Point;->y:I
    iget v0, v0, Landroid/graphics/Point;->y:I
    sub-int/2addr p1, v0
    iget v0, p0, Lcn/manstep/phonemirrorBox/util/t;->e:I
    if-le p1, v0, :L10
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/t;->c:Landroid/graphics/Point;
    iget p1, p1, Landroid/graphics/Point;->y:I
    iget v3, v5, Landroid/graphics/Point;->y:I
    sub-int/2addr p1, v3
    if-le p1, v0, :L10
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/t;->d:Landroid/graphics/Point;
    iget p1, p1, Landroid/graphics/Point;->y:I
    iget v3, v6, Landroid/graphics/Point;->y:I
    sub-int/2addr p1, v3
    if-le p1, v0, :L10
  :L9
    const/4 v1, 1
  :L10
    if-eqz v1, :L11
  .line 24
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/t;->f:Lcn/manstep/phonemirrorBox/util/t$a;
    invoke-interface { p1 }, Lcn/manstep/phonemirrorBox/util/t$a;->j()V
  :L11
    return v2
  :L12
  .line 25
    iput v1, p0, Lcn/manstep/phonemirrorBox/util/t;->a:I
    goto :L14
  :L13
  .line 26
    iput v1, p0, Lcn/manstep/phonemirrorBox/util/t;->a:I
  .line 27
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/t;->b:Landroid/graphics/Point;
    invoke-virtual { p1, v1 }, Landroid/view/MotionEvent;->getX(I)F
    move-result v2
    float-to-int v2, v2
    iput v2, v0, Landroid/graphics/Point;->x:I
  .line 28
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/t;->b:Landroid/graphics/Point;
    invoke-virtual { p1, v1 }, Landroid/view/MotionEvent;->getY(I)F
    move-result p1
    float-to-int p1, p1
    iput p1, v0, Landroid/graphics/Point;->y:I
  :L14
    return v1
.end method
