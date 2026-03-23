.class public abstract Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/coordinatorlayout/widget/CoordinatorLayout;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 1033
  name = "c"
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "<V:",
    "Landroid/view/View;",
    ">",
    "Ljava/lang/Object;"
  }
.end annotation

.method public constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 3
  .line 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public A(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TV;",
      "Landroid/view/View;",
      "Landroid/view/View;",
      "II)Z"
    }
  .end annotation
  .registers 7
    if-nez p6, :L0
  .line 1
    invoke-virtual/range { p0 .. p5 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->z(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z
    move-result p1
    return p1
  :L0
    const/4 p1, 0
    return p1
.end method

.method public B(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TV;",
      "Landroid/view/View;",
      ")V"
    }
  .end annotation
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 4
    return-void
.end method

.method public C(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TV;",
      "Landroid/view/View;",
      "I)V"
    }
  .end annotation
  .registers 5
    if-nez p4, :L0
  .line 1
    invoke-virtual { p0, p1, p2, p3 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->B(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
  :L0
    return-void
.end method

.method public D(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TV;",
      "Landroid/view/MotionEvent;",
      ")Z"
    }
  .end annotation
  .registers 4
    const/4 p1, 0
    return p1
.end method

.method public a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TV;)Z"
    }
  .end annotation
  .registers 3
  .line 1
    invoke-virtual { p0, p1, p2 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->d(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)F
    move-result p1
    const/4 p2, 0
    cmpl-float p1, p1, p2
    if-lez p1, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    return p1
.end method

.method public b(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TV;",
      "Landroid/graphics/Rect;",
      ")Z"
    }
  .end annotation
  .registers 4
    const/4 p1, 0
    return p1
.end method

.method public c(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)I
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TV;)I"
    }
  .end annotation
  .registers 3
    const/high16 p1, -256
    return p1
.end method

.method public d(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)F
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TV;)F"
    }
  .end annotation
  .registers 3
    const/4 p1, 0
    return p1
.end method

.method public e(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TV;",
      "Landroid/view/View;",
      ")Z"
    }
  .end annotation
  .registers 4
    const/4 p1, 0
    return p1
.end method

.method public f(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroidx/core/view/d0;)Landroidx/core/view/d0;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TV;",
      "Landroidx/core/view/d0;",
      ")",
      "Landroidx/core/view/d0;"
    }
  .end annotation
  .registers 4
    return-object p3
.end method

.method public g(Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;)V
  .registers 2
    return-void
.end method

.method public h(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TV;",
      "Landroid/view/View;",
      ")Z"
    }
  .end annotation
  .registers 4
    const/4 p1, 0
    return p1
.end method

.method public i(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TV;",
      "Landroid/view/View;",
      ")V"
    }
  .end annotation
  .registers 4
    return-void
.end method

.method public j()V
  .registers 1
    return-void
.end method

.method public k(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TV;",
      "Landroid/view/MotionEvent;",
      ")Z"
    }
  .end annotation
  .registers 4
    const/4 p1, 0
    return p1
.end method

.method public l(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TV;I)Z"
    }
  .end annotation
  .registers 4
    const/4 p1, 0
    return p1
.end method

.method public m(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TV;IIII)Z"
    }
  .end annotation
  .registers 7
    const/4 p1, 0
    return p1
.end method

.method public n(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FFZ)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TV;",
      "Landroid/view/View;",
      "FFZ)Z"
    }
  .end annotation
  .registers 7
    const/4 p1, 0
    return p1
.end method

.method public o(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TV;",
      "Landroid/view/View;",
      "FF)Z"
    }
  .end annotation
  .registers 6
    const/4 p1, 0
    return p1
.end method

.method public p(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[I)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TV;",
      "Landroid/view/View;",
      "II[I)V"
    }
  .end annotation
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 7
    return-void
.end method

.method public q(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TV;",
      "Landroid/view/View;",
      "II[II)V"
    }
  .end annotation
  .registers 8
    if-nez p7, :L0
  .line 1
    invoke-virtual/range { p0 .. p6 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->p(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[I)V
  :L0
    return-void
.end method

.method public r(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIII)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TV;",
      "Landroid/view/View;",
      "IIII)V"
    }
  .end annotation
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 8
    return-void
.end method

.method public s(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TV;",
      "Landroid/view/View;",
      "IIIII)V"
    }
  .end annotation
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 9
    if-nez p8, :L0
  .line 1
    invoke-virtual/range { p0 .. p7 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->r(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIII)V
  :L0
    return-void
.end method

.method public t(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII[I)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TV;",
      "Landroid/view/View;",
      "IIIII[I)V"
    }
  .end annotation
  .registers 12
    const/4 v0, 0
  .line 1
    aget v1, p9, v0
    add-int/2addr v1, p6
    aput v1, p9, v0
    const/4 v0, 1
  .line 2
    aget v1, p9, v0
    add-int/2addr v1, p7
    aput v1, p9, v0
  .line 3
    invoke-virtual/range { p0 .. p8 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->s(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII)V
    return-void
.end method

.method public u(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TV;",
      "Landroid/view/View;",
      "Landroid/view/View;",
      "I)V"
    }
  .end annotation
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 6
    return-void
.end method

.method public v(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TV;",
      "Landroid/view/View;",
      "Landroid/view/View;",
      "II)V"
    }
  .end annotation
  .registers 7
    if-nez p6, :L0
  .line 1
    invoke-virtual/range { p0 .. p5 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->u(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V
  :L0
    return-void
.end method

.method public w(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;Z)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TV;",
      "Landroid/graphics/Rect;",
      "Z)Z"
    }
  .end annotation
  .registers 5
    const/4 p1, 0
    return p1
.end method

.method public x(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TV;",
      "Landroid/os/Parcelable;",
      ")V"
    }
  .end annotation
  .registers 4
    return-void
.end method

.method public y(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TV;)",
      "Landroid/os/Parcelable;"
    }
  .end annotation
  .registers 3
  .line 1
    sget-object p1, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;
    return-object p1
.end method

.method public z(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TV;",
      "Landroid/view/View;",
      "Landroid/view/View;",
      "I)Z"
    }
  .end annotation
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 6
    const/4 p1, 0
    return p1
.end method
