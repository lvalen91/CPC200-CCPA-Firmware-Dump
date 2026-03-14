.class public Lcn/manstep/phonemirrorBox/i0/l;
.super Lcn/manstep/phonemirrorBox/i0/k;
.source "SourceFile"

.field private final static A:Landroid/util/SparseIntArray;

.field private final static z:Landroidx/databinding/ViewDataBinding$g;

.field private final w:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final x:Landroid/widget/TextView;

.field private y:J

.method static constructor <clinit>()V
  .registers 4
  .line 1
    new-instance v0, Landroid/util/SparseIntArray;
    invoke-direct { v0 }, Landroid/util/SparseIntArray;-><init>()V
    sput-object v0, Lcn/manstep/phonemirrorBox/i0/l;->A:Landroid/util/SparseIntArray;
    const v1, 2131296952
    const/4 v2, 2
  .line 2
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->put(II)V
  .line 3
    sget-object v0, Lcn/manstep/phonemirrorBox/i0/l;->A:Landroid/util/SparseIntArray;
    const v1, 2131296870
    const/4 v2, 3
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->put(II)V
  .line 4
    sget-object v0, Lcn/manstep/phonemirrorBox/i0/l;->A:Landroid/util/SparseIntArray;
    const v1, 2131296565
    const/4 v2, 4
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->put(II)V
  .line 5
    sget-object v0, Lcn/manstep/phonemirrorBox/i0/l;->A:Landroid/util/SparseIntArray;
    const v1, 2131296525
    const/4 v2, 5
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->put(II)V
  .line 6
    sget-object v0, Lcn/manstep/phonemirrorBox/i0/l;->A:Landroid/util/SparseIntArray;
    const v1, 2131296520
    const/4 v2, 6
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->put(II)V
    return-void
.end method

.method public constructor <init>(Landroidx/databinding/e;Landroid/view/View;)V
  .registers 6
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/i0/l;->z:Landroidx/databinding/ViewDataBinding$g;
    sget-object v1, Lcn/manstep/phonemirrorBox/i0/l;->A:Landroid/util/SparseIntArray;
    const/4 v2, 7
    invoke-static { p1, p2, v2, v0, v1 }, Landroidx/databinding/ViewDataBinding;->y(Landroidx/databinding/e;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$g;Landroid/util/SparseIntArray;)[Ljava/lang/Object;
    move-result-object v0
    invoke-direct { p0, p1, p2, v0 }, Lcn/manstep/phonemirrorBox/i0/l;-><init>(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;)V
    return-void
.end method

.method private constructor <init>(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;)V
  .registers 14
    const/4 v0, 6
  .line 2
    aget-object v0, p3, v0
    move-object v5, v0
    check-cast v5, Landroidx/constraintlayout/widget/Guideline;
    const/4 v0, 5
    aget-object v0, p3, v0
    move-object v6, v0
    check-cast v6, Landroidx/constraintlayout/widget/Guideline;
    const/4 v0, 4
    aget-object v0, p3, v0
    move-object v7, v0
    check-cast v7, Landroid/widget/ImageView;
    const/4 v0, 3
    aget-object v0, p3, v0
    move-object v8, v0
    check-cast v8, Landroid/widget/TextView;
    const/4 v0, 2
    aget-object v0, p3, v0
    move-object v9, v0
    check-cast v9, Landroid/widget/ImageView;
    const/4 v4, 1
    move-object v1, p0
    move-object v2, p1
    move-object v3, p2
    invoke-direct/range { v1 .. v9 }, Lcn/manstep/phonemirrorBox/i0/k;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    const-wide/16 v0, -1
  .line 3
    iput-wide v0, p0, Lcn/manstep/phonemirrorBox/i0/l;->y:J
    const/4 p1, 0
  .line 4
    aget-object p1, p3, p1
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/i0/l;->w:Landroidx/constraintlayout/widget/ConstraintLayout;
    const/4 v0, 0
  .line 5
    invoke-virtual { p1, v0 }, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V
    const/4 p1, 1
  .line 6
    aget-object p1, p3, p1
    check-cast p1, Landroid/widget/TextView;
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/i0/l;->x:Landroid/widget/TextView;
  .line 7
    invoke-virtual { p1, v0 }, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V
  .line 8
    invoke-virtual { p0, p2 }, Landroidx/databinding/ViewDataBinding;->H(Landroid/view/View;)V
  .line 9
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/i0/l;->M()V
    return-void
.end method

.method private N(Landroidx/lifecycle/o;I)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/lifecycle/o<",
      "Ljava/lang/String;",
      ">;I)Z"
    }
  .end annotation
  .catchall { :L0 .. :L2 } :L1
  .registers 5
    if-nez p2, :L3
  .line 1
    monitor-enter p0
  :L0
  .line 2
    iget-wide p1, p0, Lcn/manstep/phonemirrorBox/i0/l;->y:J
    const-wide/16 v0, 1
    or-long/2addr p1, v0
    iput-wide p1, p0, Lcn/manstep/phonemirrorBox/i0/l;->y:J
  .line 3
    monitor-exit p0
    const/4 p1, 1
    return p1
  :L1
    move-exception p1
    monitor-exit p0
  :L2
    throw p1
  :L3
    const/4 p1, 0
    return p1
.end method

.method public L(Lcn/manstep/phonemirrorBox/x0/g;)V
  .catchall { :L0 .. :L1 } :L2
  .catchall { :L3 .. :L4 } :L2
  .registers 6
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/i0/k;->v:Lcn/manstep/phonemirrorBox/x0/g;
  .line 2
    monitor-enter p0
  :L0
  .line 3
    iget-wide v0, p0, Lcn/manstep/phonemirrorBox/i0/l;->y:J
    const-wide/16 v2, 2
    or-long/2addr v0, v2
    iput-wide v0, p0, Lcn/manstep/phonemirrorBox/i0/l;->y:J
  .line 4
    monitor-exit p0
  :L1
    const/16 p1, 8
  .line 5
    invoke-virtual { p0, p1 }, Landroidx/databinding/a;->d(I)V
  .line 6
    invoke-super { p0 }, Landroidx/databinding/ViewDataBinding;->D()V
    return-void
  :L2
    move-exception p1
  :L3
  .line 7
    monitor-exit p0
  :L4
    throw p1
.end method

.method public M()V
  .catchall { :L0 .. :L1 } :L2
  .catchall { :L3 .. :L4 } :L2
  .registers 3
  .line 1
    monitor-enter p0
    const-wide/16 v0, 4
  :L0
  .line 2
    iput-wide v0, p0, Lcn/manstep/phonemirrorBox/i0/l;->y:J
  .line 3
    monitor-exit p0
  :L1
  .line 4
    invoke-virtual { p0 }, Landroidx/databinding/ViewDataBinding;->D()V
    return-void
  :L2
    move-exception v0
  :L3
  .line 5
    monitor-exit p0
  :L4
    throw v0
.end method

.method protected n()V
  .catchall { :L0 .. :L1 } :L6
  .catchall { :L7 .. :L8 } :L6
  .registers 8
  .line 1
    monitor-enter p0
  :L0
  .line 2
    iget-wide v0, p0, Lcn/manstep/phonemirrorBox/i0/l;->y:J
    const-wide/16 v2, 0
  .line 3
    iput-wide v2, p0, Lcn/manstep/phonemirrorBox/i0/l;->y:J
  .line 4
    monitor-exit p0
  :L1
  .line 5
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/i0/k;->v:Lcn/manstep/phonemirrorBox/x0/g;
    const-wide/16 v5, 7
    and-long/2addr v0, v5
    const/4 v5, 0
    cmp-long v6, v0, v2
    if-eqz v6, :L4
    if-eqz v4, :L2
  .line 6
    invoke-virtual { v4 }, Lcn/manstep/phonemirrorBox/x0/g;->w()Landroidx/lifecycle/o;
    move-result-object v4
    goto :L3
  :L2
    move-object v4, v5
  :L3
    const/4 v6, 0
  .line 7
    invoke-virtual { p0, v6, v4 }, Landroidx/databinding/ViewDataBinding;->J(ILandroidx/lifecycle/LiveData;)Z
    if-eqz v4, :L4
  .line 8
    invoke-virtual { v4 }, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;
    move-result-object v4
    move-object v5, v4
    check-cast v5, Ljava/lang/String;
  :L4
    cmp-long v4, v0, v2
    if-eqz v4, :L5
  .line 9
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/i0/l;->x:Landroid/widget/TextView;
    invoke-static { v0, v5 }, Landroidx/databinding/j/b;->b(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
  :L5
    return-void
  :L6
    move-exception v0
  :L7
  .line 10
    monitor-exit p0
  :L8
    throw v0
.end method

.method public v()Z
  .catchall { :L0 .. :L3 } :L2
  .registers 6
  .line 1
    monitor-enter p0
  :L0
  .line 2
    iget-wide v0, p0, Lcn/manstep/phonemirrorBox/i0/l;->y:J
    const-wide/16 v2, 0
    cmp-long v4, v0, v2
    if-eqz v4, :L1
    const/4 v0, 1
  .line 3
    monitor-exit p0
    return v0
  :L1
  .line 4
    monitor-exit p0
    const/4 v0, 0
    return v0
  :L2
    move-exception v0
    monitor-exit p0
  :L3
    throw v0
.end method

.method protected z(ILjava/lang/Object;I)Z
  .registers 4
    if-eqz p1, :L0
    const/4 p1, 0
    return p1
  :L0
  .line 1
    check-cast p2, Landroidx/lifecycle/o;
    invoke-direct { p0, p2, p3 }, Lcn/manstep/phonemirrorBox/i0/l;->N(Landroidx/lifecycle/o;I)Z
    move-result p1
    return p1
.end method
