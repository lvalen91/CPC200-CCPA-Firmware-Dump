.class public abstract Landroidx/recyclerview/widget/RecyclerView$n;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 1033
  name = "n"
.end annotation
.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/recyclerview/widget/RecyclerView$n$d;,
    Landroidx/recyclerview/widget/RecyclerView$n$c;
  }
.end annotation

.field a:Landroidx/recyclerview/widget/b;

.field b:Landroidx/recyclerview/widget/RecyclerView;

.field private final c:Landroidx/recyclerview/widget/o$b;

.field private final d:Landroidx/recyclerview/widget/o$b;

.field e:Landroidx/recyclerview/widget/o;

.field f:Landroidx/recyclerview/widget/o;

.field g:Landroidx/recyclerview/widget/RecyclerView$y;

.field h:Z

.field i:Z

.field j:Z

.field private k:Z

.field private l:Z

.field m:I

.field n:Z

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.method public constructor <init>()V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$n$a;
    invoke-direct { v0, p0 }, Landroidx/recyclerview/widget/RecyclerView$n$a;-><init>(Landroidx/recyclerview/widget/RecyclerView$n;)V
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->c:Landroidx/recyclerview/widget/o$b;
  .line 3
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$n$b;
    invoke-direct { v0, p0 }, Landroidx/recyclerview/widget/RecyclerView$n$b;-><init>(Landroidx/recyclerview/widget/RecyclerView$n;)V
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->d:Landroidx/recyclerview/widget/o$b;
  .line 4
    new-instance v0, Landroidx/recyclerview/widget/o;
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$n;->c:Landroidx/recyclerview/widget/o$b;
    invoke-direct { v0, v1 }, Landroidx/recyclerview/widget/o;-><init>(Landroidx/recyclerview/widget/o$b;)V
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->e:Landroidx/recyclerview/widget/o;
  .line 5
    new-instance v0, Landroidx/recyclerview/widget/o;
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$n;->d:Landroidx/recyclerview/widget/o$b;
    invoke-direct { v0, v1 }, Landroidx/recyclerview/widget/o;-><init>(Landroidx/recyclerview/widget/o$b;)V
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->f:Landroidx/recyclerview/widget/o;
    const/4 v0, 0
  .line 6
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->h:Z
  .line 7
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->i:Z
  .line 8
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->j:Z
    const/4 v0, 1
  .line 9
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->k:Z
  .line 10
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->l:Z
    return-void
.end method

.method public static K(IIIIZ)I
  .registers 9
    sub-int/2addr p0, p2
    const/4 p2, 0
  .line 1
    invoke-static { p2, p0 }, Ljava/lang/Math;->max(II)I
    move-result p0
    const/4 v0, -2
    const/4 v1, -1
    const/high16 v2, -32768
    const/high16 v3, 16384
    if-eqz p4, :L1
    if-ltz p3, :L0
    goto :L2
  :L0
    if-ne p3, v1, :L8
    if-eq p1, v2, :L4
    if-eqz p1, :L8
    if-eq p1, v3, :L4
    goto :L8
  :L1
    if-ltz p3, :L3
  :L2
    const/high16 p1, 16384
    goto :L9
  :L3
    if-ne p3, v1, :L5
  :L4
    move p3, p0
    goto :L9
  :L5
    if-ne p3, v0, :L8
    if-eq p1, v2, :L7
    if-ne p1, v3, :L6
    goto :L7
  :L6
    const/4 p1, 0
    goto :L4
  :L7
    const/high16 p1, -32768
    goto :L4
  :L8
    const/4 p1, 0
    const/4 p3, 0
  :L9
  .line 2
    invoke-static { p3, p1 }, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result p0
    return p0
.end method

.method private L(Landroid/view/View;Landroid/graphics/Rect;)[I
  .registers 12
    const/4 v0, 2
    new-array v0, v0, [I
  .line 1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->e0()I
    move-result v1
  .line 2
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->g0()I
    move-result v2
  .line 3
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->o0()I
    move-result v3
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->f0()I
    move-result v4
    sub-int/2addr v3, v4
  .line 4
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->W()I
    move-result v4
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->d0()I
    move-result v5
    sub-int/2addr v4, v5
  .line 5
    invoke-virtual { p1 }, Landroid/view/View;->getLeft()I
    move-result v5
    iget v6, p2, Landroid/graphics/Rect;->left:I
    add-int/2addr v5, v6
    invoke-virtual { p1 }, Landroid/view/View;->getScrollX()I
    move-result v6
    sub-int/2addr v5, v6
  .line 6
    invoke-virtual { p1 }, Landroid/view/View;->getTop()I
    move-result v6
    iget v7, p2, Landroid/graphics/Rect;->top:I
    add-int/2addr v6, v7
    invoke-virtual { p1 }, Landroid/view/View;->getScrollY()I
    move-result p1
    sub-int/2addr v6, p1
  .line 7
    invoke-virtual { p2 }, Landroid/graphics/Rect;->width()I
    move-result p1
    add-int/2addr p1, v5
  .line 8
    invoke-virtual { p2 }, Landroid/graphics/Rect;->height()I
    move-result p2
    add-int/2addr p2, v6
    sub-int/2addr v5, v1
    const/4 v1, 0
  .line 9
    invoke-static { v1, v5 }, Ljava/lang/Math;->min(II)I
    move-result v7
    sub-int/2addr v6, v2
  .line 10
    invoke-static { v1, v6 }, Ljava/lang/Math;->min(II)I
    move-result v2
    sub-int/2addr p1, v3
  .line 11
    invoke-static { v1, p1 }, Ljava/lang/Math;->max(II)I
    move-result v3
    sub-int/2addr p2, v4
  .line 12
    invoke-static { v1, p2 }, Ljava/lang/Math;->max(II)I
    move-result p2
  .line 13
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->Z()I
    move-result v4
    const/4 v8, 1
    if-ne v4, v8, :L1
    if-eqz v3, :L0
    goto :L4
  :L0
  .line 14
    invoke-static { v7, p1 }, Ljava/lang/Math;->max(II)I
    move-result v3
    goto :L4
  :L1
    if-eqz v7, :L2
    goto :L3
  :L2
  .line 15
    invoke-static { v5, v3 }, Ljava/lang/Math;->min(II)I
    move-result v7
  :L3
    move v3, v7
  :L4
    if-eqz v2, :L5
    goto :L6
  :L5
  .line 16
    invoke-static { v6, p2 }, Ljava/lang/Math;->min(II)I
    move-result v2
  :L6
    aput v3, v0, v1
    aput v2, v0, v8
    return-object v0
.end method

.method private f(Landroid/view/View;IZ)V
  .registers 8
  .line 1
    invoke-static { p1 }, Landroidx/recyclerview/widget/RecyclerView;->f0(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$c0;
    move-result-object v0
    if-nez p3, :L1
  .line 2
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView$c0;->v()Z
    move-result p3
    if-eqz p3, :L0
    goto :L1
  :L0
  .line 3
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;
    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView;->g:Landroidx/recyclerview/widget/p;
    invoke-virtual { p3, v0 }, Landroidx/recyclerview/widget/p;->p(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    goto :L2
  :L1
  .line 4
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;
    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView;->g:Landroidx/recyclerview/widget/p;
    invoke-virtual { p3, v0 }, Landroidx/recyclerview/widget/p;->b(Landroidx/recyclerview/widget/RecyclerView$c0;)V
  :L2
  .line 5
    invoke-virtual { p1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object p3
    check-cast p3, Landroidx/recyclerview/widget/RecyclerView$o;
  .line 6
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView$c0;->L()Z
    move-result v1
    const/4 v2, 0
    if-nez v1, :L7
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView$c0;->w()Z
    move-result v1
    if-eqz v1, :L3
    goto :L7
  :L3
  .line 7
    invoke-virtual { p1 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v1
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;
    if-ne v1, v3, :L6
  .line 8
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$n;->a:Landroidx/recyclerview/widget/b;
    invoke-virtual { v1, p1 }, Landroidx/recyclerview/widget/b;->m(Landroid/view/View;)I
    move-result v1
    const/4 v3, -1
    if-ne p2, v3, :L4
  .line 9
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$n;->a:Landroidx/recyclerview/widget/b;
    invoke-virtual { p2 }, Landroidx/recyclerview/widget/b;->g()I
    move-result p2
  :L4
    if-eq v1, v3, :L5
    if-eq v1, p2, :L10
  .line 10
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/RecyclerView$n;
    invoke-virtual { p1, v1, p2 }, Landroidx/recyclerview/widget/RecyclerView$n;->B0(II)V
    goto :L10
  :L5
  .line 11
    new-instance p2, Ljava/lang/IllegalStateException;
    new-instance p3, Ljava/lang/StringBuilder;
    invoke-direct { p3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "Added View has RecyclerView as parent but view is not a real child. Unfiltered index:"
    invoke-virtual { p3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;
  .line 12
    invoke-virtual { v0, p1 }, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I
    move-result p1
    invoke-virtual { p3, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView;->P()Ljava/lang/String;
    move-result-object p1
    invoke-virtual { p3, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { p2, p1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p2
  :L6
  .line 13
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$n;->a:Landroidx/recyclerview/widget/b;
    invoke-virtual { v1, p1, p2, v2 }, Landroidx/recyclerview/widget/b;->a(Landroid/view/View;IZ)V
    const/4 p2, 1
  .line 14
    iput-boolean p2, p3, Landroidx/recyclerview/widget/RecyclerView$o;->c:Z
  .line 15
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$n;->g:Landroidx/recyclerview/widget/RecyclerView$y;
    if-eqz p2, :L10
    invoke-virtual { p2 }, Landroidx/recyclerview/widget/RecyclerView$y;->h()Z
    move-result p2
    if-eqz p2, :L10
  .line 16
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$n;->g:Landroidx/recyclerview/widget/RecyclerView$y;
    invoke-virtual { p2, p1 }, Landroidx/recyclerview/widget/RecyclerView$y;->k(Landroid/view/View;)V
    goto :L10
  :L7
  .line 17
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView$c0;->w()Z
    move-result v1
    if-eqz v1, :L8
  .line 18
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView$c0;->K()V
    goto :L9
  :L8
  .line 19
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView$c0;->e()V
  :L9
  .line 20
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$n;->a:Landroidx/recyclerview/widget/b;
    invoke-virtual { p1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v3
    invoke-virtual { v1, p1, p2, v3, v2 }, Landroidx/recyclerview/widget/b;->c(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
  :L10
  .line 21
    iget-boolean p1, p3, Landroidx/recyclerview/widget/RecyclerView$o;->d:Z
    if-eqz p1, :L11
  .line 22
    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView$c0;->a:Landroid/view/View;
    invoke-virtual { p1 }, Landroid/view/View;->invalidate()V
  .line 23
    iput-boolean v2, p3, Landroidx/recyclerview/widget/RecyclerView$o;->d:Z
  :L11
    return-void
.end method

.method public static i0(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/RecyclerView$n$d;
  .registers 6
  .line 1
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$n$d;
    invoke-direct { v0 }, Landroidx/recyclerview/widget/RecyclerView$n$d;-><init>()V
  .line 2
    sget-object v1, Lc/n/c;->RecyclerView:[I
    invoke-virtual { p0, p1, v1, p2, p3 }, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    move-result-object p0
  .line 3
    sget p1, Lc/n/c;->RecyclerView_android_orientation:I
    const/4 p2, 1
    invoke-virtual { p0, p1, p2 }, Landroid/content/res/TypedArray;->getInt(II)I
    move-result p1
    iput p1, v0, Landroidx/recyclerview/widget/RecyclerView$n$d;->a:I
  .line 4
    sget p1, Lc/n/c;->RecyclerView_spanCount:I
    invoke-virtual { p0, p1, p2 }, Landroid/content/res/TypedArray;->getInt(II)I
    move-result p1
    iput p1, v0, Landroidx/recyclerview/widget/RecyclerView$n$d;->b:I
  .line 5
    sget p1, Lc/n/c;->RecyclerView_reverseLayout:I
    const/4 p2, 0
    invoke-virtual { p0, p1, p2 }, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    move-result p1
    iput-boolean p1, v0, Landroidx/recyclerview/widget/RecyclerView$n$d;->c:Z
  .line 6
    sget p1, Lc/n/c;->RecyclerView_stackFromEnd:I
    invoke-virtual { p0, p1, p2 }, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    move-result p1
    iput-boolean p1, v0, Landroidx/recyclerview/widget/RecyclerView$n$d;->d:Z
  .line 7
    invoke-virtual { p0 }, Landroid/content/res/TypedArray;->recycle()V
    return-object v0
.end method

.method public static n(III)I
  .registers 5
  .line 1
    invoke-static { p0 }, Landroid/view/View$MeasureSpec;->getMode(I)I
    move-result v0
  .line 2
    invoke-static { p0 }, Landroid/view/View$MeasureSpec;->getSize(I)I
    move-result p0
    const/high16 v1, -32768
    if-eq v0, v1, :L1
    const/high16 v1, 16384
    if-eq v0, v1, :L0
  .line 3
    invoke-static { p1, p2 }, Ljava/lang/Math;->max(II)I
    move-result p0
  :L0
    return p0
  :L1
  .line 4
    invoke-static { p1, p2 }, Ljava/lang/Math;->max(II)I
    move-result p1
    invoke-static { p0, p1 }, Ljava/lang/Math;->min(II)I
    move-result p0
    return p0
.end method

.method private t0(Landroidx/recyclerview/widget/RecyclerView;II)Z
  .registers 10
  .line 1
    invoke-virtual { p1 }, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;
    move-result-object p1
    const/4 v0, 0
    if-nez p1, :L0
    return v0
  :L0
  .line 2
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->e0()I
    move-result v1
  .line 3
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->g0()I
    move-result v2
  .line 4
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->o0()I
    move-result v3
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->f0()I
    move-result v4
    sub-int/2addr v3, v4
  .line 5
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->W()I
    move-result v4
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->d0()I
    move-result v5
    sub-int/2addr v4, v5
  .line 6
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->i:Landroid/graphics/Rect;
  .line 7
    invoke-virtual { p0, p1, v5 }, Landroidx/recyclerview/widget/RecyclerView$n;->P(Landroid/view/View;Landroid/graphics/Rect;)V
  .line 8
    iget p1, v5, Landroid/graphics/Rect;->left:I
    sub-int/2addr p1, p2
    if-ge p1, v3, :L2
    iget p1, v5, Landroid/graphics/Rect;->right:I
    sub-int/2addr p1, p2
    if-le p1, v1, :L2
    iget p1, v5, Landroid/graphics/Rect;->top:I
    sub-int/2addr p1, p3
    if-ge p1, v4, :L2
    iget p1, v5, Landroid/graphics/Rect;->bottom:I
    sub-int/2addr p1, p3
    if-gt p1, v2, :L1
    goto :L2
  :L1
    const/4 p1, 1
    return p1
  :L2
    return v0
.end method

.method private v1(Landroidx/recyclerview/widget/RecyclerView$u;ILandroid/view/View;)V
  .registers 6
  .line 1
    invoke-static { p3 }, Landroidx/recyclerview/widget/RecyclerView;->f0(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$c0;
    move-result-object v0
  .line 2
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView$c0;->J()Z
    move-result v1
    if-eqz v1, :L0
    return-void
  :L0
  .line 3
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView$c0;->t()Z
    move-result v1
    if-eqz v1, :L1
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView$c0;->v()Z
    move-result v1
    if-nez v1, :L1
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$f;
  .line 4
    invoke-virtual { v1 }, Landroidx/recyclerview/widget/RecyclerView$f;->g()Z
    move-result v1
    if-nez v1, :L1
  .line 5
    invoke-virtual { p0, p2 }, Landroidx/recyclerview/widget/RecyclerView$n;->q1(I)V
  .line 6
    invoke-virtual { p1, v0 }, Landroidx/recyclerview/widget/RecyclerView$u;->C(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    goto :L2
  :L1
  .line 7
    invoke-virtual { p0, p2 }, Landroidx/recyclerview/widget/RecyclerView$n;->x(I)V
  .line 8
    invoke-virtual { p1, p3 }, Landroidx/recyclerview/widget/RecyclerView$u;->D(Landroid/view/View;)V
  .line 9
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->g:Landroidx/recyclerview/widget/p;
    invoke-virtual { p1, v0 }, Landroidx/recyclerview/widget/p;->k(Landroidx/recyclerview/widget/RecyclerView$c0;)V
  :L2
    return-void
.end method

.method private static w0(III)Z
  .registers 6
  .line 1
    invoke-static { p1 }, Landroid/view/View$MeasureSpec;->getMode(I)I
    move-result v0
  .line 2
    invoke-static { p1 }, Landroid/view/View$MeasureSpec;->getSize(I)I
    move-result p1
    const/4 v1, 0
    if-lez p2, :L0
    if-eq p0, p2, :L0
    return v1
  :L0
    const/high16 p2, -32768
    const/4 v2, 1
    if-eq v0, p2, :L4
    if-eqz v0, :L3
    const/high16 p2, 16384
    if-eq v0, p2, :L1
    return v1
  :L1
    if-ne p1, p0, :L2
    const/4 v1, 1
  :L2
    return v1
  :L3
    return v2
  :L4
    if-lt p1, p0, :L5
    const/4 v1, 1
  :L5
    return v1
.end method

.method private y(ILandroid/view/View;)V
  .registers 3
  .line 1
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$n;->a:Landroidx/recyclerview/widget/b;
    invoke-virtual { p2, p1 }, Landroidx/recyclerview/widget/b;->d(I)V
    return-void
.end method

.method A(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$u;)V
  .registers 4
    const/4 v0, 0
  .line 1
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->i:Z
  .line 2
    invoke-virtual { p0, p1, p2 }, Landroidx/recyclerview/widget/RecyclerView$n;->I0(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$u;)V
    return-void
.end method

.method public A0(Landroid/view/View;II)V
  .registers 9
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$o;
  .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { v1, p1 }, Landroidx/recyclerview/widget/RecyclerView;->j0(Landroid/view/View;)Landroid/graphics/Rect;
    move-result-object v1
  .line 3
    iget v2, v1, Landroid/graphics/Rect;->left:I
    iget v3, v1, Landroid/graphics/Rect;->right:I
    add-int/2addr v2, v3
    add-int/2addr p2, v2
  .line 4
    iget v2, v1, Landroid/graphics/Rect;->top:I
    iget v1, v1, Landroid/graphics/Rect;->bottom:I
    add-int/2addr v2, v1
    add-int/2addr p3, v2
  .line 5
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->o0()I
    move-result v1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->p0()I
    move-result v2
  .line 6
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->e0()I
    move-result v3
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->f0()I
    move-result v4
    add-int/2addr v3, v4
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I
    add-int/2addr v3, v4
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I
    add-int/2addr v3, v4
    add-int/2addr v3, p2
    iget p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I
  .line 7
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->k()Z
    move-result v4
  .line 8
    invoke-static { v1, v2, v3, p2, v4 }, Landroidx/recyclerview/widget/RecyclerView$n;->K(IIIIZ)I
    move-result p2
  .line 9
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->W()I
    move-result v1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->X()I
    move-result v2
  .line 10
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->g0()I
    move-result v3
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->d0()I
    move-result v4
    add-int/2addr v3, v4
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I
    add-int/2addr v3, v4
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I
    add-int/2addr v3, v4
    add-int/2addr v3, p3
    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I
  .line 11
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->l()Z
    move-result v4
  .line 12
    invoke-static { v1, v2, v3, p3, v4 }, Landroidx/recyclerview/widget/RecyclerView$n;->K(IIIIZ)I
    move-result p3
  .line 13
    invoke-virtual { p0, p1, p2, p3, v0 }, Landroidx/recyclerview/widget/RecyclerView$n;->F1(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$o;)Z
    move-result v0
    if-eqz v0, :L0
  .line 14
    invoke-virtual { p1, p2, p3 }, Landroid/view/View;->measure(II)V
  :L0
    return-void
.end method

.method A1(II)V
  .registers 4
  .line 1
    invoke-static { p1 }, Landroid/view/View$MeasureSpec;->getSize(I)I
    move-result v0
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->q:I
  .line 2
    invoke-static { p1 }, Landroid/view/View$MeasureSpec;->getMode(I)I
    move-result p1
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$n;->o:I
    const/4 v0, 0
    if-nez p1, :L0
  .line 3
    sget-boolean p1, Landroidx/recyclerview/widget/RecyclerView;->A0:Z
    if-nez p1, :L0
  .line 4
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->q:I
  :L0
  .line 5
    invoke-static { p2 }, Landroid/view/View$MeasureSpec;->getSize(I)I
    move-result p1
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$n;->r:I
  .line 6
    invoke-static { p2 }, Landroid/view/View$MeasureSpec;->getMode(I)I
    move-result p1
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$n;->p:I
    if-nez p1, :L1
  .line 7
    sget-boolean p1, Landroidx/recyclerview/widget/RecyclerView;->A0:Z
    if-nez p1, :L1
  .line 8
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->r:I
  :L1
    return-void
.end method

.method public B(Landroid/view/View;)Landroid/view/View;
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;
    const/4 v1, 0
    if-nez v0, :L0
    return-object v1
  :L0
  .line 2
    invoke-virtual { v0, p1 }, Landroidx/recyclerview/widget/RecyclerView;->R(Landroid/view/View;)Landroid/view/View;
    move-result-object p1
    if-nez p1, :L1
    return-object v1
  :L1
  .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->a:Landroidx/recyclerview/widget/b;
    invoke-virtual { v0, p1 }, Landroidx/recyclerview/widget/b;->n(Landroid/view/View;)Z
    move-result v0
    if-eqz v0, :L2
    return-object v1
  :L2
    return-object p1
.end method

.method public B0(II)V
  .registers 5
  .line 1
    invoke-virtual { p0, p1 }, Landroidx/recyclerview/widget/RecyclerView$n;->I(I)Landroid/view/View;
    move-result-object v0
    if-eqz v0, :L0
  .line 2
    invoke-virtual { p0, p1 }, Landroidx/recyclerview/widget/RecyclerView$n;->x(I)V
  .line 3
    invoke-virtual { p0, v0, p2 }, Landroidx/recyclerview/widget/RecyclerView$n;->h(Landroid/view/View;I)V
    return-void
  :L0
  .line 4
    new-instance p2, Ljava/lang/IllegalArgumentException;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Cannot move a child from non-existing index:"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;
  .line 5
    invoke-virtual { p1 }, Landroid/view/ViewGroup;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { p2, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p2
.end method

.method public B1(II)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;
    invoke-static { v0, p1, p2 }, Landroidx/recyclerview/widget/RecyclerView;->f(Landroidx/recyclerview/widget/RecyclerView;II)V
    return-void
.end method

.method public C(I)Landroid/view/View;
  .registers 7
  .line 1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result v0
    const/4 v1, 0
  :L0
    if-ge v1, v0, :L4
  .line 2
    invoke-virtual { p0, v1 }, Landroidx/recyclerview/widget/RecyclerView$n;->I(I)Landroid/view/View;
    move-result-object v2
  .line 3
    invoke-static { v2 }, Landroidx/recyclerview/widget/RecyclerView;->f0(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$c0;
    move-result-object v3
    if-nez v3, :L1
    goto :L3
  :L1
  .line 4
    invoke-virtual { v3 }, Landroidx/recyclerview/widget/RecyclerView$c0;->m()I
    move-result v4
    if-ne v4, p1, :L3
    invoke-virtual { v3 }, Landroidx/recyclerview/widget/RecyclerView$c0;->J()Z
    move-result v4
    if-nez v4, :L3
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->h0:Landroidx/recyclerview/widget/RecyclerView$z;
  .line 5
    invoke-virtual { v4 }, Landroidx/recyclerview/widget/RecyclerView$z;->e()Z
    move-result v4
    if-nez v4, :L2
    invoke-virtual { v3 }, Landroidx/recyclerview/widget/RecyclerView$c0;->v()Z
    move-result v3
    if-nez v3, :L3
  :L2
    return-object v2
  :L3
    add-int/lit8 v1, v1, 1
    goto :L0
  :L4
    const/4 p1, 0
    return-object p1
.end method

.method public C0(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Landroidx/recyclerview/widget/RecyclerView;->y0(I)V
  :L0
    return-void
.end method

.method public C1(Landroid/graphics/Rect;II)V
  .registers 6
  .line 1
    invoke-virtual { p1 }, Landroid/graphics/Rect;->width()I
    move-result v0
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->e0()I
    move-result v1
    add-int/2addr v0, v1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->f0()I
    move-result v1
    add-int/2addr v0, v1
  .line 2
    invoke-virtual { p1 }, Landroid/graphics/Rect;->height()I
    move-result p1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->g0()I
    move-result v1
    add-int/2addr p1, v1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->d0()I
    move-result v1
    add-int/2addr p1, v1
  .line 3
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->c0()I
    move-result v1
    invoke-static { p2, v0, v1 }, Landroidx/recyclerview/widget/RecyclerView$n;->n(III)I
    move-result p2
  .line 4
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->b0()I
    move-result v0
    invoke-static { p3, p1, v0 }, Landroidx/recyclerview/widget/RecyclerView$n;->n(III)I
    move-result p1
  .line 5
    invoke-virtual { p0, p2, p1 }, Landroidx/recyclerview/widget/RecyclerView$n;->B1(II)V
    return-void
.end method

.method public abstract D()Landroidx/recyclerview/widget/RecyclerView$o;
.end method

.method public D0(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Landroidx/recyclerview/widget/RecyclerView;->z0(I)V
  :L0
    return-void
.end method

.method D1(II)V
  .registers 11
  .line 1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result v0
    if-nez v0, :L0
  .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { v0, p1, p2 }, Landroidx/recyclerview/widget/RecyclerView;->w(II)V
    return-void
  :L0
    const/4 v1, 0
    const/high16 v2, -32768
    const v3, 2147483647
    const/high16 v3, -32768
    const v4, 2147483647
    const v5, 2147483647
  :L1
    if-ge v1, v0, :L6
  .line 3
    invoke-virtual { p0, v1 }, Landroidx/recyclerview/widget/RecyclerView$n;->I(I)Landroid/view/View;
    move-result-object v6
  .line 4
    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->i:Landroid/graphics/Rect;
  .line 5
    invoke-virtual { p0, v6, v7 }, Landroidx/recyclerview/widget/RecyclerView$n;->P(Landroid/view/View;Landroid/graphics/Rect;)V
  .line 6
    iget v6, v7, Landroid/graphics/Rect;->left:I
    if-ge v6, v4, :L2
    move v4, v6
  :L2
  .line 7
    iget v6, v7, Landroid/graphics/Rect;->right:I
    if-le v6, v2, :L3
    move v2, v6
  :L3
  .line 8
    iget v6, v7, Landroid/graphics/Rect;->top:I
    if-ge v6, v5, :L4
    move v5, v6
  :L4
  .line 9
    iget v6, v7, Landroid/graphics/Rect;->bottom:I
    if-le v6, v3, :L5
    move v3, v6
  :L5
    add-int/lit8 v1, v1, 1
    goto :L1
  :L6
  .line 10
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->i:Landroid/graphics/Rect;
    invoke-virtual { v0, v4, v5, v2, v3 }, Landroid/graphics/Rect;->set(IIII)V
  .line 11
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->i:Landroid/graphics/Rect;
    invoke-virtual { p0, v0, p1, p2 }, Landroidx/recyclerview/widget/RecyclerView$n;->C1(Landroid/graphics/Rect;II)V
    return-void
.end method

.method public E(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$o;
  .registers 4
  .line 1
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$o;
    invoke-direct { v0, p1, p2 }, Landroidx/recyclerview/widget/RecyclerView$o;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    return-object v0
.end method

.method public E0(Landroidx/recyclerview/widget/RecyclerView$f;Landroidx/recyclerview/widget/RecyclerView$f;)V
  .registers 3
    return-void
.end method

.method E1(Landroidx/recyclerview/widget/RecyclerView;)V
  .registers 3
    if-nez p1, :L0
    const/4 p1, 0
  .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;
  .line 2
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$n;->a:Landroidx/recyclerview/widget/b;
    const/4 p1, 0
  .line 3
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$n;->q:I
  .line 4
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$n;->r:I
    goto :L1
  :L0
  .line 5
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;
  .line 6
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->f:Landroidx/recyclerview/widget/b;
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->a:Landroidx/recyclerview/widget/b;
  .line 7
    invoke-virtual { p1 }, Landroid/view/ViewGroup;->getWidth()I
    move-result v0
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->q:I
  .line 8
    invoke-virtual { p1 }, Landroid/view/ViewGroup;->getHeight()I
    move-result p1
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$n;->r:I
  :L1
    const/high16 p1, 16384
  .line 9
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$n;->o:I
  .line 10
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$n;->p:I
    return-void
.end method

.method public F(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$o;
  .registers 3
  .line 1
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView$o;
    if-eqz v0, :L0
  .line 2
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$o;
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$o;
    invoke-direct { v0, p1 }, Landroidx/recyclerview/widget/RecyclerView$o;-><init>(Landroidx/recyclerview/widget/RecyclerView$o;)V
    return-object v0
  :L0
  .line 3
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v0, :L1
  .line 4
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$o;
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-direct { v0, p1 }, Landroidx/recyclerview/widget/RecyclerView$o;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    return-object v0
  :L1
  .line 5
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$o;
    invoke-direct { v0, p1 }, Landroidx/recyclerview/widget/RecyclerView$o;-><init>(Landroid/view/ViewGroup$LayoutParams;)V
    return-object v0
.end method

.method public F0(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/ArrayList;II)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/recyclerview/widget/RecyclerView;",
      "Ljava/util/ArrayList<",
      "Landroid/view/View;",
      ">;II)Z"
    }
  .end annotation
  .registers 5
    const/4 p1, 0
    return p1
.end method

.method F1(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$o;)Z
  .registers 7
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->isLayoutRequested()Z
    move-result v0
    if-nez v0, :L1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->k:Z
    if-eqz v0, :L1
  .line 2
    invoke-virtual { p1 }, Landroid/view/View;->getWidth()I
    move-result v0
    iget v1, p4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I
    invoke-static { v0, p2, v1 }, Landroidx/recyclerview/widget/RecyclerView$n;->w0(III)Z
    move-result p2
    if-eqz p2, :L1
  .line 3
    invoke-virtual { p1 }, Landroid/view/View;->getHeight()I
    move-result p1
    iget p2, p4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I
    invoke-static { p1, p3, p2 }, Landroidx/recyclerview/widget/RecyclerView$n;->w0(III)Z
    move-result p1
    if-nez p1, :L0
    goto :L1
  :L0
    const/4 p1, 0
    goto :L2
  :L1
    const/4 p1, 1
  :L2
    return p1
.end method

.method public G()I
  .registers 2
    const/4 v0, -1
    return v0
.end method

.method public G0(Landroidx/recyclerview/widget/RecyclerView;)V
  .registers 2
    return-void
.end method

.method G1()Z
  .registers 2
    const/4 v0, 0
    return v0
.end method

.method public H(Landroid/view/View;)I
  .registers 2
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object p1
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$o;
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$o;->b:Landroid/graphics/Rect;
    iget p1, p1, Landroid/graphics/Rect;->bottom:I
    return p1
.end method

.method public H0(Landroidx/recyclerview/widget/RecyclerView;)V
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 2
    return-void
.end method

.method H1(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$o;)Z
  .registers 7
  .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->k:Z
    if-eqz v0, :L1
  .line 2
    invoke-virtual { p1 }, Landroid/view/View;->getMeasuredWidth()I
    move-result v0
    iget v1, p4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I
    invoke-static { v0, p2, v1 }, Landroidx/recyclerview/widget/RecyclerView$n;->w0(III)Z
    move-result p2
    if-eqz p2, :L1
  .line 3
    invoke-virtual { p1 }, Landroid/view/View;->getMeasuredHeight()I
    move-result p1
    iget p2, p4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I
    invoke-static { p1, p3, p2 }, Landroidx/recyclerview/widget/RecyclerView$n;->w0(III)Z
    move-result p1
    if-nez p1, :L0
    goto :L1
  :L0
    const/4 p1, 0
    goto :L2
  :L1
    const/4 p1, 1
  :L2
    return p1
.end method

.method public I(I)Landroid/view/View;
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->a:Landroidx/recyclerview/widget/b;
    if-eqz v0, :L0
    invoke-virtual { v0, p1 }, Landroidx/recyclerview/widget/b;->f(I)Landroid/view/View;
    move-result-object p1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    return-object p1
.end method

.method public I0(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$u;)V
  .registers 3
  .line 1
    invoke-virtual { p0, p1 }, Landroidx/recyclerview/widget/RecyclerView$n;->H0(Landroidx/recyclerview/widget/RecyclerView;)V
    return-void
.end method

.method public I1(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;I)V
  .registers 4
    return-void
.end method

.method public J()I
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->a:Landroidx/recyclerview/widget/b;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/b;->g()I
    move-result v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public J0(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)Landroid/view/View;
  .registers 5
    const/4 p1, 0
    return-object p1
.end method

.method public J1(Landroidx/recyclerview/widget/RecyclerView$y;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->g:Landroidx/recyclerview/widget/RecyclerView$y;
    if-eqz v0, :L0
    if-eq p1, v0, :L0
  .line 2
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView$y;->h()Z
    move-result v0
    if-eqz v0, :L0
  .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->g:Landroidx/recyclerview/widget/RecyclerView$y;
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView$y;->r()V
  :L0
  .line 4
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$n;->g:Landroidx/recyclerview/widget/RecyclerView$y;
  .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { p1, v0, p0 }, Landroidx/recyclerview/widget/RecyclerView$y;->q(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$n;)V
    return-void
.end method

.method public K0(Landroid/view/accessibility/AccessibilityEvent;)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->c:Landroidx/recyclerview/widget/RecyclerView$u;
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->h0:Landroidx/recyclerview/widget/RecyclerView$z;
    invoke-virtual { p0, v1, v0, p1 }, Landroidx/recyclerview/widget/RecyclerView$n;->L0(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;Landroid/view/accessibility/AccessibilityEvent;)V
    return-void
.end method

.method K1()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->g:Landroidx/recyclerview/widget/RecyclerView$y;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView$y;->r()V
  :L0
    return-void
.end method

.method public L0(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;Landroid/view/accessibility/AccessibilityEvent;)V
  .registers 5
  .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;
    if-eqz p1, :L3
    if-nez p3, :L0
    goto :L3
  :L0
    const/4 p2, 1
  .line 2
    invoke-virtual { p1, p2 }, Landroid/view/ViewGroup;->canScrollVertically(I)Z
    move-result p1
    if-nez p1, :L2
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;
    const/4 v0, -1
  .line 3
    invoke-virtual { p1, v0 }, Landroid/view/ViewGroup;->canScrollVertically(I)Z
    move-result p1
    if-nez p1, :L2
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;
  .line 4
    invoke-virtual { p1, v0 }, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z
    move-result p1
    if-nez p1, :L2
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;
  .line 5
    invoke-virtual { p1, p2 }, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z
    move-result p1
    if-eqz p1, :L1
    goto :L2
  :L1
    const/4 p2, 0
  :L2
  .line 6
    invoke-virtual { p3, p2 }, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V
  .line 7
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$f;
    if-eqz p1, :L3
  .line 8
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$f;->c()I
    move-result p1
    invoke-virtual { p3, p1 }, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V
  :L3
    return-void
.end method

.method public L1()Z
  .registers 2
    const/4 v0, 0
    return v0
.end method

.method public M()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;
    if-eqz v0, :L0
    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView;->h:Z
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method M0(Landroidx/core/view/e0/c;)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->c:Landroidx/recyclerview/widget/RecyclerView$u;
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->h0:Landroidx/recyclerview/widget/RecyclerView$z;
    invoke-virtual { p0, v1, v0, p1 }, Landroidx/recyclerview/widget/RecyclerView$n;->N0(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;Landroidx/core/view/e0/c;)V
    return-void
.end method

.method public N(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)I
  .registers 3
  .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;
    const/4 p2, 1
    if-eqz p1, :L1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$f;
    if-nez p1, :L0
    goto :L1
  :L0
  .line 2
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->k()Z
    move-result p1
    if-eqz p1, :L1
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$f;
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$f;->c()I
    move-result p2
  :L1
    return p2
.end method

.method public N0(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;Landroidx/core/view/e0/c;)V
  .registers 7
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;
    const/4 v1, -1
    invoke-virtual { v0, v1 }, Landroid/view/ViewGroup;->canScrollVertically(I)Z
    move-result v0
    const/4 v2, 1
    if-nez v0, :L0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { v0, v1 }, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z
    move-result v0
    if-eqz v0, :L1
  :L0
    const/16 v0, 8192
  .line 2
    invoke-virtual { p3, v0 }, Landroidx/core/view/e0/c;->a(I)V
  .line 3
    invoke-virtual { p3, v2 }, Landroidx/core/view/e0/c;->n0(Z)V
  :L1
  .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { v0, v2 }, Landroid/view/ViewGroup;->canScrollVertically(I)Z
    move-result v0
    if-nez v0, :L2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { v0, v2 }, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z
    move-result v0
    if-eqz v0, :L3
  :L2
    const/16 v0, 4096
  .line 5
    invoke-virtual { p3, v0 }, Landroidx/core/view/e0/c;->a(I)V
  .line 6
    invoke-virtual { p3, v2 }, Landroidx/core/view/e0/c;->n0(Z)V
  :L3
  .line 7
    invoke-virtual { p0, p1, p2 }, Landroidx/recyclerview/widget/RecyclerView$n;->k0(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)I
    move-result v0
  .line 8
    invoke-virtual { p0, p1, p2 }, Landroidx/recyclerview/widget/RecyclerView$n;->N(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)I
    move-result v1
  .line 9
    invoke-virtual { p0, p1, p2 }, Landroidx/recyclerview/widget/RecyclerView$n;->v0(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)Z
    move-result v2
  .line 10
    invoke-virtual { p0, p1, p2 }, Landroidx/recyclerview/widget/RecyclerView$n;->l0(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)I
    move-result p1
  .line 11
    invoke-static { v0, v1, v2, p1 }, Landroidx/core/view/e0/c$b;->a(IIZI)Landroidx/core/view/e0/c$b;
    move-result-object p1
  .line 12
    invoke-virtual { p3, p1 }, Landroidx/core/view/e0/c;->Y(Ljava/lang/Object;)V
    return-void
.end method

.method public O(Landroid/view/View;)I
  .registers 3
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getBottom()I
    move-result v0
    invoke-virtual { p0, p1 }, Landroidx/recyclerview/widget/RecyclerView$n;->H(Landroid/view/View;)I
    move-result p1
    add-int/2addr v0, p1
    return v0
.end method

.method O0(Landroid/view/View;Landroidx/core/view/e0/c;)V
  .registers 5
  .line 1
    invoke-static { p1 }, Landroidx/recyclerview/widget/RecyclerView;->f0(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$c0;
    move-result-object v0
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView$c0;->v()Z
    move-result v1
    if-nez v1, :L0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$n;->a:Landroidx/recyclerview/widget/b;
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$c0;->a:Landroid/view/View;
    invoke-virtual { v1, v0 }, Landroidx/recyclerview/widget/b;->n(Landroid/view/View;)Z
    move-result v0
    if-nez v0, :L0
  .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->c:Landroidx/recyclerview/widget/RecyclerView$u;
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->h0:Landroidx/recyclerview/widget/RecyclerView$z;
    invoke-virtual { p0, v1, v0, p1, p2 }, Landroidx/recyclerview/widget/RecyclerView$n;->P0(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;Landroid/view/View;Landroidx/core/view/e0/c;)V
  :L0
    return-void
.end method

.method public P(Landroid/view/View;Landroid/graphics/Rect;)V
  .registers 3
  .line 1
    invoke-static { p1, p2 }, Landroidx/recyclerview/widget/RecyclerView;->g0(Landroid/view/View;Landroid/graphics/Rect;)V
    return-void
.end method

.method public P0(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;Landroid/view/View;Landroidx/core/view/e0/c;)V
  .registers 11
  .line 1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->l()Z
    move-result p1
    const/4 p2, 0
    if-eqz p1, :L0
    invoke-virtual { p0, p3 }, Landroidx/recyclerview/widget/RecyclerView$n;->h0(Landroid/view/View;)I
    move-result p1
    move v0, p1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
  .line 2
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->k()Z
    move-result p1
    if-eqz p1, :L2
    invoke-virtual { p0, p3 }, Landroidx/recyclerview/widget/RecyclerView$n;->h0(Landroid/view/View;)I
    move-result p2
    move v2, p2
    goto :L3
  :L2
    const/4 v2, 0
  :L3
    const/4 v1, 1
    const/4 v3, 1
    const/4 v4, 0
    const/4 v5, 0
  .line 3
    invoke-static/range { v0 .. v5 }, Landroidx/core/view/e0/c$c;->a(IIIIZZ)Landroidx/core/view/e0/c$c;
    move-result-object p1
  .line 4
    invoke-virtual { p4, p1 }, Landroidx/core/view/e0/c;->Z(Ljava/lang/Object;)V
    return-void
.end method

.method public Q(Landroid/view/View;)I
  .registers 3
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getLeft()I
    move-result v0
    invoke-virtual { p0, p1 }, Landroidx/recyclerview/widget/RecyclerView$n;->a0(Landroid/view/View;)I
    move-result p1
    sub-int/2addr v0, p1
    return v0
.end method

.method public Q0(Landroid/view/View;I)Landroid/view/View;
  .registers 3
    const/4 p1, 0
    return-object p1
.end method

.method public R(Landroid/view/View;)I
  .registers 4
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$o;
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$o;->b:Landroid/graphics/Rect;
  .line 2
    invoke-virtual { p1 }, Landroid/view/View;->getMeasuredHeight()I
    move-result p1
    iget v1, v0, Landroid/graphics/Rect;->top:I
    add-int/2addr p1, v1
    iget v0, v0, Landroid/graphics/Rect;->bottom:I
    add-int/2addr p1, v0
    return p1
.end method

.method public R0(Landroidx/recyclerview/widget/RecyclerView;II)V
  .registers 4
    return-void
.end method

.method public S(Landroid/view/View;)I
  .registers 4
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$o;
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$o;->b:Landroid/graphics/Rect;
  .line 2
    invoke-virtual { p1 }, Landroid/view/View;->getMeasuredWidth()I
    move-result p1
    iget v1, v0, Landroid/graphics/Rect;->left:I
    add-int/2addr p1, v1
    iget v0, v0, Landroid/graphics/Rect;->right:I
    add-int/2addr p1, v0
    return p1
.end method

.method public S0(Landroidx/recyclerview/widget/RecyclerView;)V
  .registers 2
    return-void
.end method

.method public T(Landroid/view/View;)I
  .registers 3
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getRight()I
    move-result v0
    invoke-virtual { p0, p1 }, Landroidx/recyclerview/widget/RecyclerView$n;->j0(Landroid/view/View;)I
    move-result p1
    add-int/2addr v0, p1
    return v0
.end method

.method public T0(Landroidx/recyclerview/widget/RecyclerView;III)V
  .registers 5
    return-void
.end method

.method public U(Landroid/view/View;)I
  .registers 3
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getTop()I
    move-result v0
    invoke-virtual { p0, p1 }, Landroidx/recyclerview/widget/RecyclerView$n;->m0(Landroid/view/View;)I
    move-result p1
    sub-int/2addr v0, p1
    return v0
.end method

.method public U0(Landroidx/recyclerview/widget/RecyclerView;II)V
  .registers 4
    return-void
.end method

.method public V()Landroid/view/View;
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;
    const/4 v1, 0
    if-nez v0, :L0
    return-object v1
  :L0
  .line 2
    invoke-virtual { v0 }, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;
    move-result-object v0
    if-eqz v0, :L2
  .line 3
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$n;->a:Landroidx/recyclerview/widget/b;
    invoke-virtual { v2, v0 }, Landroidx/recyclerview/widget/b;->n(Landroid/view/View;)Z
    move-result v2
    if-eqz v2, :L1
    goto :L2
  :L1
    return-object v0
  :L2
    return-object v1
.end method

.method public V0(Landroidx/recyclerview/widget/RecyclerView;II)V
  .registers 4
    return-void
.end method

.method public W()I
  .registers 2
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->r:I
    return v0
.end method

.method public W0(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V
  .registers 5
  .line 1
    invoke-virtual { p0, p1, p2, p3 }, Landroidx/recyclerview/widget/RecyclerView$n;->V0(Landroidx/recyclerview/widget/RecyclerView;II)V
    return-void
.end method

.method public X()I
  .registers 2
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->p:I
    return v0
.end method

.method public X0(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)V
  .registers 3
    return-void
.end method

.method public Y()I
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$f;
    move-result-object v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    if-eqz v0, :L2
  .line 2
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView$f;->c()I
    move-result v0
    goto :L3
  :L2
    const/4 v0, 0
  :L3
    return v0
.end method

.method public Y0(Landroidx/recyclerview/widget/RecyclerView$z;)V
  .registers 2
    return-void
.end method

.method public Z()I
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;
    invoke-static { v0 }, Landroidx/core/view/v;->C(Landroid/view/View;)I
    move-result v0
    return v0
.end method

.method public Z0(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;II)V
  .registers 5
  .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { p1, p3, p4 }, Landroidx/recyclerview/widget/RecyclerView;->w(II)V
    return-void
.end method

.method public a0(Landroid/view/View;)I
  .registers 2
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object p1
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$o;
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$o;->b:Landroid/graphics/Rect;
    iget p1, p1, Landroid/graphics/Rect;->left:I
    return p1
.end method

.method public a1(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 4
  .line 1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->x0()Z
    move-result p2
    if-nez p2, :L1
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView;->t0()Z
    move-result p1
    if-eqz p1, :L0
    goto :L1
  :L0
    const/4 p1, 0
    goto :L2
  :L1
    const/4 p1, 1
  :L2
    return p1
.end method

.method public b(Landroid/view/View;)V
  .registers 3
    const/4 v0, -1
  .line 1
    invoke-virtual { p0, p1, v0 }, Landroidx/recyclerview/widget/RecyclerView$n;->c(Landroid/view/View;I)V
    return-void
.end method

.method public b0()I
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;
    invoke-static { v0 }, Landroidx/core/view/v;->D(Landroid/view/View;)I
    move-result v0
    return v0
.end method

.method public b1(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;Landroid/view/View;Landroid/view/View;)Z
  .registers 5
  .line 1
    invoke-virtual { p0, p1, p3, p4 }, Landroidx/recyclerview/widget/RecyclerView$n;->a1(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z
    move-result p1
    return p1
.end method

.method public c(Landroid/view/View;I)V
  .registers 4
    const/4 v0, 1
  .line 1
    invoke-direct { p0, p1, p2, v0 }, Landroidx/recyclerview/widget/RecyclerView$n;->f(Landroid/view/View;IZ)V
    return-void
.end method

.method public c0()I
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;
    invoke-static { v0 }, Landroidx/core/view/v;->E(Landroid/view/View;)I
    move-result v0
    return v0
.end method

.method public c1(Landroid/os/Parcelable;)V
  .registers 2
    return-void
.end method

.method public d(Landroid/view/View;)V
  .registers 3
    const/4 v0, -1
  .line 1
    invoke-virtual { p0, p1, v0 }, Landroidx/recyclerview/widget/RecyclerView$n;->e(Landroid/view/View;I)V
    return-void
.end method

.method public d0()I
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Landroid/view/ViewGroup;->getPaddingBottom()I
    move-result v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public d1()Landroid/os/Parcelable;
  .registers 2
    const/4 v0, 0
    return-object v0
.end method

.method public e(Landroid/view/View;I)V
  .registers 4
    const/4 v0, 0
  .line 1
    invoke-direct { p0, p1, p2, v0 }, Landroidx/recyclerview/widget/RecyclerView$n;->f(Landroid/view/View;IZ)V
    return-void
.end method

.method public e0()I
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Landroid/view/ViewGroup;->getPaddingLeft()I
    move-result v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public e1(I)V
  .registers 2
    return-void
.end method

.method public f0()I
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Landroid/view/ViewGroup;->getPaddingRight()I
    move-result v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method f1(Landroidx/recyclerview/widget/RecyclerView$y;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->g:Landroidx/recyclerview/widget/RecyclerView$y;
    if-ne v0, p1, :L0
    const/4 p1, 0
  .line 2
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$n;->g:Landroidx/recyclerview/widget/RecyclerView$y;
  :L0
    return-void
.end method

.method public g(Ljava/lang/String;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Landroidx/recyclerview/widget/RecyclerView;->o(Ljava/lang/String;)V
  :L0
    return-void
.end method

.method public g0()I
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Landroid/view/ViewGroup;->getPaddingTop()I
    move-result v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method g1(ILandroid/os/Bundle;)Z
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->c:Landroidx/recyclerview/widget/RecyclerView$u;
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->h0:Landroidx/recyclerview/widget/RecyclerView$z;
    invoke-virtual { p0, v1, v0, p1, p2 }, Landroidx/recyclerview/widget/RecyclerView$n;->h1(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;ILandroid/os/Bundle;)Z
    move-result p1
    return p1
.end method

.method public h(Landroid/view/View;I)V
  .registers 4
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$o;
    invoke-virtual { p0, p1, p2, v0 }, Landroidx/recyclerview/widget/RecyclerView$n;->i(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$o;)V
    return-void
.end method

.method public h0(Landroid/view/View;)I
  .registers 2
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object p1
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$o;
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$o;->a()I
    move-result p1
    return p1
.end method

.method public h1(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;ILandroid/os/Bundle;)Z
  .registers 12
  .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;
    const/4 p2, 0
    if-nez p1, :L0
    return p2
  :L0
    const/16 p4, 4096
    const/4 v0, 1
    if-eq p3, p4, :L4
    const/16 p4, 8192
    if-eq p3, p4, :L1
    const/4 v2, 0
    const/4 v3, 0
    goto :L9
  :L1
    const/4 p3, -1
  .line 2
    invoke-virtual { p1, p3 }, Landroid/view/ViewGroup;->canScrollVertically(I)Z
    move-result p1
    if-eqz p1, :L2
  .line 3
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->W()I
    move-result p1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->g0()I
    move-result p4
    sub-int/2addr p1, p4
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->d0()I
    move-result p4
    sub-int/2addr p1, p4
    neg-int p1, p1
    goto :L3
  :L2
    const/4 p1, 0
  :L3
  .line 4
    iget-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { p4, p3 }, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z
    move-result p3
    if-eqz p3, :L8
  .line 5
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->o0()I
    move-result p3
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->e0()I
    move-result p4
    sub-int/2addr p3, p4
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->f0()I
    move-result p4
    sub-int/2addr p3, p4
    neg-int p3, p3
    goto :L7
  :L4
  .line 6
    invoke-virtual { p1, v0 }, Landroid/view/ViewGroup;->canScrollVertically(I)Z
    move-result p1
    if-eqz p1, :L5
  .line 7
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->W()I
    move-result p1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->g0()I
    move-result p3
    sub-int/2addr p1, p3
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->d0()I
    move-result p3
    sub-int/2addr p1, p3
    goto :L6
  :L5
    const/4 p1, 0
  :L6
  .line 8
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { p3, v0 }, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z
    move-result p3
    if-eqz p3, :L8
  .line 9
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->o0()I
    move-result p3
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->e0()I
    move-result p4
    sub-int/2addr p3, p4
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->f0()I
    move-result p4
    sub-int/2addr p3, p4
  :L7
    move v3, p1
    move v2, p3
    goto :L9
  :L8
    move v3, p1
    const/4 v2, 0
  :L9
    if-nez v3, :L10
    if-nez v2, :L10
    return p2
  :L10
  .line 10
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;
    const/4 v4, 0
    const/high16 v5, -32768
    const/4 v6, 1
    invoke-virtual/range { v1 .. v6 }, Landroidx/recyclerview/widget/RecyclerView;->n1(IILandroid/view/animation/Interpolator;IZ)V
    return v0
.end method

.method public i(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$o;)V
  .registers 6
  .line 1
    invoke-static { p1 }, Landroidx/recyclerview/widget/RecyclerView;->f0(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$c0;
    move-result-object v0
  .line 2
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView$c0;->v()Z
    move-result v1
    if-eqz v1, :L0
  .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->g:Landroidx/recyclerview/widget/p;
    invoke-virtual { v1, v0 }, Landroidx/recyclerview/widget/p;->b(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    goto :L1
  :L0
  .line 4
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->g:Landroidx/recyclerview/widget/p;
    invoke-virtual { v1, v0 }, Landroidx/recyclerview/widget/p;->p(Landroidx/recyclerview/widget/RecyclerView$c0;)V
  :L1
  .line 5
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$n;->a:Landroidx/recyclerview/widget/b;
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView$c0;->v()Z
    move-result v0
    invoke-virtual { v1, p1, p2, p3, v0 }, Landroidx/recyclerview/widget/b;->c(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    return-void
.end method

.method i1(Landroid/view/View;ILandroid/os/Bundle;)Z
  .registers 11
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->c:Landroidx/recyclerview/widget/RecyclerView$u;
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->h0:Landroidx/recyclerview/widget/RecyclerView$z;
    move-object v1, p0
    move-object v4, p1
    move v5, p2
    move-object v6, p3
    invoke-virtual/range { v1 .. v6 }, Landroidx/recyclerview/widget/RecyclerView$n;->j1(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;Landroid/view/View;ILandroid/os/Bundle;)Z
    move-result p1
    return p1
.end method

.method public j(Landroid/view/View;Landroid/graphics/Rect;)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;
    if-nez v0, :L0
    const/4 p1, 0
  .line 2
    invoke-virtual { p2, p1, p1, p1, p1 }, Landroid/graphics/Rect;->set(IIII)V
    return-void
  :L0
  .line 3
    invoke-virtual { v0, p1 }, Landroidx/recyclerview/widget/RecyclerView;->j0(Landroid/view/View;)Landroid/graphics/Rect;
    move-result-object p1
  .line 4
    invoke-virtual { p2, p1 }, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    return-void
.end method

.method public j0(Landroid/view/View;)I
  .registers 2
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object p1
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$o;
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$o;->b:Landroid/graphics/Rect;
    iget p1, p1, Landroid/graphics/Rect;->right:I
    return p1
.end method

.method public j1(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;Landroid/view/View;ILandroid/os/Bundle;)Z
  .registers 6
    const/4 p1, 0
    return p1
.end method

.method public k()Z
  .registers 2
    const/4 v0, 0
    return v0
.end method

.method public k0(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)I
  .registers 3
  .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;
    const/4 p2, 1
    if-eqz p1, :L1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$f;
    if-nez p1, :L0
    goto :L1
  :L0
  .line 2
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->l()Z
    move-result p1
    if-eqz p1, :L1
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$f;
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$f;->c()I
    move-result p2
  :L1
    return p2
.end method

.method public k1(Landroidx/recyclerview/widget/RecyclerView$u;)V
  .registers 4
  .line 1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result v0
    add-int/lit8 v0, v0, -1
  :L0
    if-ltz v0, :L2
  .line 2
    invoke-virtual { p0, v0 }, Landroidx/recyclerview/widget/RecyclerView$n;->I(I)Landroid/view/View;
    move-result-object v1
  .line 3
    invoke-static { v1 }, Landroidx/recyclerview/widget/RecyclerView;->f0(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$c0;
    move-result-object v1
    invoke-virtual { v1 }, Landroidx/recyclerview/widget/RecyclerView$c0;->J()Z
    move-result v1
    if-nez v1, :L1
  .line 4
    invoke-virtual { p0, v0, p1 }, Landroidx/recyclerview/widget/RecyclerView$n;->n1(ILandroidx/recyclerview/widget/RecyclerView$u;)V
  :L1
    add-int/lit8 v0, v0, -1
    goto :L0
  :L2
    return-void
.end method

.method public l()Z
  .registers 2
    const/4 v0, 0
    return v0
.end method

.method public l0(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)I
  .registers 3
    const/4 p1, 0
    return p1
.end method

.method l1(Landroidx/recyclerview/widget/RecyclerView$u;)V
  .registers 8
  .line 1
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$u;->j()I
    move-result v0
    add-int/lit8 v1, v0, -1
  :L0
    if-ltz v1, :L5
  .line 2
    invoke-virtual { p1, v1 }, Landroidx/recyclerview/widget/RecyclerView$u;->n(I)Landroid/view/View;
    move-result-object v2
  .line 3
    invoke-static { v2 }, Landroidx/recyclerview/widget/RecyclerView;->f0(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$c0;
    move-result-object v3
  .line 4
    invoke-virtual { v3 }, Landroidx/recyclerview/widget/RecyclerView$c0;->J()Z
    move-result v4
    if-eqz v4, :L1
    goto :L4
  :L1
    const/4 v4, 0
  .line 5
    invoke-virtual { v3, v4 }, Landroidx/recyclerview/widget/RecyclerView$c0;->G(Z)V
  .line 6
    invoke-virtual { v3 }, Landroidx/recyclerview/widget/RecyclerView$c0;->x()Z
    move-result v5
    if-eqz v5, :L2
  .line 7
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { v5, v2, v4 }, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V
  :L2
  .line 8
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->M:Landroidx/recyclerview/widget/RecyclerView$k;
    if-eqz v4, :L3
  .line 9
    invoke-virtual { v4, v3 }, Landroidx/recyclerview/widget/RecyclerView$k;->j(Landroidx/recyclerview/widget/RecyclerView$c0;)V
  :L3
    const/4 v4, 1
  .line 10
    invoke-virtual { v3, v4 }, Landroidx/recyclerview/widget/RecyclerView$c0;->G(Z)V
  .line 11
    invoke-virtual { p1, v2 }, Landroidx/recyclerview/widget/RecyclerView$u;->y(Landroid/view/View;)V
  :L4
    add-int/lit8 v1, v1, -1
    goto :L0
  :L5
  .line 12
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$u;->e()V
    if-lez v0, :L6
  .line 13
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { p1 }, Landroid/view/ViewGroup;->invalidate()V
  :L6
    return-void
.end method

.method public m(Landroidx/recyclerview/widget/RecyclerView$o;)Z
  .registers 2
    if-eqz p1, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    return p1
.end method

.method public m0(Landroid/view/View;)I
  .registers 2
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object p1
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$o;
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$o;->b:Landroid/graphics/Rect;
    iget p1, p1, Landroid/graphics/Rect;->top:I
    return p1
.end method

.method public m1(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$u;)V
  .registers 3
  .line 1
    invoke-virtual { p0, p1 }, Landroidx/recyclerview/widget/RecyclerView$n;->p1(Landroid/view/View;)V
  .line 2
    invoke-virtual { p2, p1 }, Landroidx/recyclerview/widget/RecyclerView$u;->B(Landroid/view/View;)V
    return-void
.end method

.method public n0(Landroid/view/View;ZLandroid/graphics/Rect;)V
  .registers 9
    if-eqz p2, :L0
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object p2
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$o;
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$o;->b:Landroid/graphics/Rect;
  .line 2
    iget v0, p2, Landroid/graphics/Rect;->left:I
    neg-int v0, v0
    iget v1, p2, Landroid/graphics/Rect;->top:I
    neg-int v1, v1
  .line 3
    invoke-virtual { p1 }, Landroid/view/View;->getWidth()I
    move-result v2
    iget v3, p2, Landroid/graphics/Rect;->right:I
    add-int/2addr v2, v3
    invoke-virtual { p1 }, Landroid/view/View;->getHeight()I
    move-result v3
    iget p2, p2, Landroid/graphics/Rect;->bottom:I
    add-int/2addr v3, p2
  .line 4
    invoke-virtual { p3, v0, v1, v2, v3 }, Landroid/graphics/Rect;->set(IIII)V
    goto :L1
  :L0
  .line 5
    invoke-virtual { p1 }, Landroid/view/View;->getWidth()I
    move-result p2
    invoke-virtual { p1 }, Landroid/view/View;->getHeight()I
    move-result v0
    const/4 v1, 0
    invoke-virtual { p3, v1, v1, p2, v0 }, Landroid/graphics/Rect;->set(IIII)V
  :L1
  .line 6
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;
    if-eqz p2, :L2
  .line 7
    invoke-virtual { p1 }, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;
    move-result-object p2
    if-eqz p2, :L2
  .line 8
    invoke-virtual { p2 }, Landroid/graphics/Matrix;->isIdentity()Z
    move-result v0
    if-nez v0, :L2
  .line 9
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->k:Landroid/graphics/RectF;
  .line 10
    invoke-virtual { v0, p3 }, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V
  .line 11
    invoke-virtual { p2, v0 }, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z
  .line 12
    iget p2, v0, Landroid/graphics/RectF;->left:F
    float-to-double v1, p2
  .line 13
    invoke-static { v1, v2 }, Ljava/lang/Math;->floor(D)D
    move-result-wide v1
    double-to-int p2, v1
    iget v1, v0, Landroid/graphics/RectF;->top:F
    float-to-double v1, v1
  .line 14
    invoke-static { v1, v2 }, Ljava/lang/Math;->floor(D)D
    move-result-wide v1
    double-to-int v1, v1
    iget v2, v0, Landroid/graphics/RectF;->right:F
    float-to-double v2, v2
  .line 15
    invoke-static { v2, v3 }, Ljava/lang/Math;->ceil(D)D
    move-result-wide v2
    double-to-int v2, v2
    iget v0, v0, Landroid/graphics/RectF;->bottom:F
    float-to-double v3, v0
  .line 16
    invoke-static { v3, v4 }, Ljava/lang/Math;->ceil(D)D
    move-result-wide v3
    double-to-int v0, v3
  .line 17
    invoke-virtual { p3, p2, v1, v2, v0 }, Landroid/graphics/Rect;->set(IIII)V
  :L2
  .line 18
    invoke-virtual { p1 }, Landroid/view/View;->getLeft()I
    move-result p2
    invoke-virtual { p1 }, Landroid/view/View;->getTop()I
    move-result p1
    invoke-virtual { p3, p2, p1 }, Landroid/graphics/Rect;->offset(II)V
    return-void
.end method

.method public n1(ILandroidx/recyclerview/widget/RecyclerView$u;)V
  .registers 4
  .line 1
    invoke-virtual { p0, p1 }, Landroidx/recyclerview/widget/RecyclerView$n;->I(I)Landroid/view/View;
    move-result-object v0
  .line 2
    invoke-virtual { p0, p1 }, Landroidx/recyclerview/widget/RecyclerView$n;->q1(I)V
  .line 3
    invoke-virtual { p2, v0 }, Landroidx/recyclerview/widget/RecyclerView$u;->B(Landroid/view/View;)V
    return-void
.end method

.method public o(IILandroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/RecyclerView$n$c;)V
  .registers 5
    return-void
.end method

.method public o0()I
  .registers 2
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->q:I
    return v0
.end method

.method public o1(Ljava/lang/Runnable;)Z
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z
    move-result p1
    return p1
  :L0
    const/4 p1, 0
    return p1
.end method

.method public p(ILandroidx/recyclerview/widget/RecyclerView$n$c;)V
  .registers 3
    return-void
.end method

.method public p0()I
  .registers 2
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->o:I
    return v0
.end method

.method public p1(Landroid/view/View;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->a:Landroidx/recyclerview/widget/b;
    invoke-virtual { v0, p1 }, Landroidx/recyclerview/widget/b;->p(Landroid/view/View;)V
    return-void
.end method

.method public q(Landroidx/recyclerview/widget/RecyclerView$z;)I
  .registers 2
    const/4 p1, 0
    return p1
.end method

.method q0()Z
  .registers 6
  .line 1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result v0
    const/4 v1, 0
    const/4 v2, 0
  :L0
    if-ge v2, v0, :L2
  .line 2
    invoke-virtual { p0, v2 }, Landroidx/recyclerview/widget/RecyclerView$n;->I(I)Landroid/view/View;
    move-result-object v3
  .line 3
    invoke-virtual { v3 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v3
  .line 4
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I
    if-gez v4, :L1
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I
    if-gez v3, :L1
    const/4 v0, 1
    return v0
  :L1
    add-int/lit8 v2, v2, 1
    goto :L0
  :L2
    return v1
.end method

.method public q1(I)V
  .registers 3
  .line 1
    invoke-virtual { p0, p1 }, Landroidx/recyclerview/widget/RecyclerView$n;->I(I)Landroid/view/View;
    move-result-object v0
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->a:Landroidx/recyclerview/widget/b;
    invoke-virtual { v0, p1 }, Landroidx/recyclerview/widget/b;->q(I)V
  :L0
    return-void
.end method

.method public r(Landroidx/recyclerview/widget/RecyclerView$z;)I
  .registers 2
    const/4 p1, 0
    return p1
.end method

.method public r0()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->i:Z
    return v0
.end method

.method public r1(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z
  .registers 11
    const/4 v5, 0
    move-object v0, p0
    move-object v1, p1
    move-object v2, p2
    move-object v3, p3
    move v4, p4
  .line 1
    invoke-virtual/range { v0 .. v5 }, Landroidx/recyclerview/widget/RecyclerView$n;->s1(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    move-result p1
    return p1
.end method

.method public s(Landroidx/recyclerview/widget/RecyclerView$z;)I
  .registers 2
    const/4 p1, 0
    return p1
.end method

.method public s0()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->j:Z
    return v0
.end method

.method public s1(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
  .registers 8
  .line 1
    invoke-direct { p0, p2, p3 }, Landroidx/recyclerview/widget/RecyclerView$n;->L(Landroid/view/View;Landroid/graphics/Rect;)[I
    move-result-object p2
    const/4 p3, 0
  .line 2
    aget v0, p2, p3
    const/4 v1, 1
  .line 3
    aget p2, p2, v1
    if-eqz p5, :L0
  .line 4
    invoke-direct { p0, p1, v0, p2 }, Landroidx/recyclerview/widget/RecyclerView$n;->t0(Landroidx/recyclerview/widget/RecyclerView;II)Z
    move-result p5
    if-eqz p5, :L1
  :L0
    if-nez v0, :L2
    if-eqz p2, :L1
    goto :L2
  :L1
    return p3
  :L2
    if-eqz p4, :L3
  .line 5
    invoke-virtual { p1, v0, p2 }, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V
    goto :L4
  :L3
  .line 6
    invoke-virtual { p1, v0, p2 }, Landroidx/recyclerview/widget/RecyclerView;->k1(II)V
  :L4
    return v1
.end method

.method public t(Landroidx/recyclerview/widget/RecyclerView$z;)I
  .registers 2
    const/4 p1, 0
    return p1
.end method

.method public t1()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V
  :L0
    return-void
.end method

.method public u(Landroidx/recyclerview/widget/RecyclerView$z;)I
  .registers 2
    const/4 p1, 0
    return p1
.end method

.method public final u0()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->l:Z
    return v0
.end method

.method public u1()V
  .registers 2
    const/4 v0, 1
  .line 1
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->h:Z
    return-void
.end method

.method public v(Landroidx/recyclerview/widget/RecyclerView$z;)I
  .registers 2
    const/4 p1, 0
    return p1
.end method

.method public v0(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)Z
  .registers 3
    const/4 p1, 0
    return p1
.end method

.method public w(Landroidx/recyclerview/widget/RecyclerView$u;)V
  .registers 4
  .line 1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result v0
    add-int/lit8 v0, v0, -1
  :L0
    if-ltz v0, :L1
  .line 2
    invoke-virtual { p0, v0 }, Landroidx/recyclerview/widget/RecyclerView$n;->I(I)Landroid/view/View;
    move-result-object v1
  .line 3
    invoke-direct { p0, p1, v0, v1 }, Landroidx/recyclerview/widget/RecyclerView$n;->v1(Landroidx/recyclerview/widget/RecyclerView$u;ILandroid/view/View;)V
    add-int/lit8 v0, v0, -1
    goto :L0
  :L1
    return-void
.end method

.method public w1(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)I
  .registers 4
    const/4 p1, 0
    return p1
.end method

.method public x(I)V
  .registers 3
  .line 1
    invoke-virtual { p0, p1 }, Landroidx/recyclerview/widget/RecyclerView$n;->I(I)Landroid/view/View;
    move-result-object v0
    invoke-direct { p0, p1, v0 }, Landroidx/recyclerview/widget/RecyclerView$n;->y(ILandroid/view/View;)V
    return-void
.end method

.method public x0()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->g:Landroidx/recyclerview/widget/RecyclerView$y;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView$y;->h()Z
    move-result v0
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public x1(I)V
  .registers 2
    return-void
.end method

.method public y0(Landroid/view/View;ZZ)Z
  .registers 6
  .line 1
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$n;->e:Landroidx/recyclerview/widget/o;
    const/16 v0, 24579
    invoke-virtual { p3, p1, v0 }, Landroidx/recyclerview/widget/o;->b(Landroid/view/View;I)Z
    move-result p3
    const/4 v1, 1
    if-eqz p3, :L0
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$n;->f:Landroidx/recyclerview/widget/o;
  .line 2
    invoke-virtual { p3, p1, v0 }, Landroidx/recyclerview/widget/o;->b(Landroid/view/View;I)Z
    move-result p1
    if-eqz p1, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    if-eqz p2, :L2
    return p1
  :L2
    xor-int/2addr p1, v1
    return p1
.end method

.method public y1(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)I
  .registers 4
    const/4 p1, 0
    return p1
.end method

.method z(Landroidx/recyclerview/widget/RecyclerView;)V
  .registers 3
    const/4 v0, 1
  .line 1
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->i:Z
  .line 2
    invoke-virtual { p0, p1 }, Landroidx/recyclerview/widget/RecyclerView$n;->G0(Landroidx/recyclerview/widget/RecyclerView;)V
    return-void
.end method

.method public z0(Landroid/view/View;IIII)V
  .registers 9
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$o;
  .line 2
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$o;->b:Landroid/graphics/Rect;
  .line 3
    iget v2, v1, Landroid/graphics/Rect;->left:I
    add-int/2addr p2, v2
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I
    add-int/2addr p2, v2
    iget v2, v1, Landroid/graphics/Rect;->top:I
    add-int/2addr p3, v2
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I
    add-int/2addr p3, v2
    iget v2, v1, Landroid/graphics/Rect;->right:I
    sub-int/2addr p4, v2
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I
    sub-int/2addr p4, v2
    iget v1, v1, Landroid/graphics/Rect;->bottom:I
    sub-int/2addr p5, v1
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I
    sub-int/2addr p5, v0
    invoke-virtual { p1, p2, p3, p4, p5 }, Landroid/view/View;->layout(IIII)V
    return-void
.end method

.method z1(Landroidx/recyclerview/widget/RecyclerView;)V
  .registers 4
  .line 1
    invoke-virtual { p1 }, Landroid/view/ViewGroup;->getWidth()I
    move-result v0
    const/high16 v1, 16384
    invoke-static { v0, v1 }, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result v0
  .line 2
    invoke-virtual { p1 }, Landroid/view/ViewGroup;->getHeight()I
    move-result p1
    invoke-static { p1, v1 }, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result p1
  .line 3
    invoke-virtual { p0, v0, p1 }, Landroidx/recyclerview/widget/RecyclerView$n;->A1(II)V
    return-void
.end method
