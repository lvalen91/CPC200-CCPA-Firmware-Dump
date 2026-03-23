.class public Lcn/manstep/phonemirrorBox/i0/x;
.super Lcn/manstep/phonemirrorBox/i0/w;
.source "SourceFile"

.field private final static C:Landroidx/databinding/ViewDataBinding$g;

.field private final static D:Landroid/util/SparseIntArray;

.field private final A:Landroid/widget/TextView;

.field private B:J

.field private final z:Landroidx/constraintlayout/widget/ConstraintLayout;

.method static constructor <clinit>()V
  .registers 4
  .line 1
    new-instance v0, Landroid/util/SparseIntArray;
    invoke-direct { v0 }, Landroid/util/SparseIntArray;-><init>()V
    sput-object v0, Lcn/manstep/phonemirrorBox/i0/x;->D:Landroid/util/SparseIntArray;
    const v1, 2131296880
    const/4 v2, 3
  .line 2
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->put(II)V
  .line 3
    sget-object v0, Lcn/manstep/phonemirrorBox/i0/x;->D:Landroid/util/SparseIntArray;
    const v1, 2131296370
    const/4 v2, 4
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->put(II)V
  .line 4
    sget-object v0, Lcn/manstep/phonemirrorBox/i0/x;->D:Landroid/util/SparseIntArray;
    const v1, 2131296380
    const/4 v2, 5
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->put(II)V
    return-void
.end method

.method public constructor <init>(Landroidx/databinding/e;Landroid/view/View;)V
  .registers 6
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/i0/x;->C:Landroidx/databinding/ViewDataBinding$g;
    sget-object v1, Lcn/manstep/phonemirrorBox/i0/x;->D:Landroid/util/SparseIntArray;
    const/4 v2, 6
    invoke-static { p1, p2, v2, v0, v1 }, Landroidx/databinding/ViewDataBinding;->y(Landroidx/databinding/e;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$g;Landroid/util/SparseIntArray;)[Ljava/lang/Object;
    move-result-object v0
    invoke-direct { p0, p1, p2, v0 }, Lcn/manstep/phonemirrorBox/i0/x;-><init>(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;)V
    return-void
.end method

.method private constructor <init>(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;)V
  .registers 13
    const/4 v0, 4
  .line 2
    aget-object v0, p3, v0
    move-object v5, v0
    check-cast v5, Landroid/widget/Button;
    const/4 v0, 5
    aget-object v0, p3, v0
    move-object v6, v0
    check-cast v6, Landroid/widget/Button;
    const/4 v0, 2
    aget-object v0, p3, v0
    move-object v7, v0
    check-cast v7, Landroid/widget/EditText;
    const/4 v0, 3
    aget-object v0, p3, v0
    move-object v8, v0
    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout;
    const/4 v4, 2
    move-object v1, p0
    move-object v2, p1
    move-object v3, p2
    invoke-direct/range { v1 .. v8 }, Lcn/manstep/phonemirrorBox/i0/w;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/Button;Landroid/widget/Button;Landroid/widget/EditText;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    const-wide/16 v0, -1
  .line 3
    iput-wide v0, p0, Lcn/manstep/phonemirrorBox/i0/x;->B:J
  .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/i0/w;->x:Landroid/widget/EditText;
    const/4 v0, 0
    invoke-virtual { p1, v0 }, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V
    const/4 p1, 0
  .line 5
    aget-object p1, p3, p1
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/i0/x;->z:Landroidx/constraintlayout/widget/ConstraintLayout;
  .line 6
    invoke-virtual { p1, v0 }, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V
    const/4 p1, 1
  .line 7
    aget-object p1, p3, p1
    check-cast p1, Landroid/widget/TextView;
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/i0/x;->A:Landroid/widget/TextView;
  .line 8
    invoke-virtual { p1, v0 }, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V
  .line 9
    invoke-virtual { p0, p2 }, Landroidx/databinding/ViewDataBinding;->H(Landroid/view/View;)V
  .line 10
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/i0/x;->M()V
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
    iget-wide p1, p0, Lcn/manstep/phonemirrorBox/i0/x;->B:J
    const-wide/16 v0, 2
    or-long/2addr p1, v0
    iput-wide p1, p0, Lcn/manstep/phonemirrorBox/i0/x;->B:J
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

.method private O(Landroidx/lifecycle/o;I)Z
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
    iget-wide p1, p0, Lcn/manstep/phonemirrorBox/i0/x;->B:J
    const-wide/16 v0, 1
    or-long/2addr p1, v0
    iput-wide p1, p0, Lcn/manstep/phonemirrorBox/i0/x;->B:J
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

.method public L(Lcn/manstep/phonemirrorBox/x0/h;)V
  .catchall { :L0 .. :L1 } :L2
  .catchall { :L3 .. :L4 } :L2
  .registers 6
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/i0/w;->y:Lcn/manstep/phonemirrorBox/x0/h;
  .line 2
    monitor-enter p0
  :L0
  .line 3
    iget-wide v0, p0, Lcn/manstep/phonemirrorBox/i0/x;->B:J
    const-wide/16 v2, 4
    or-long/2addr v0, v2
    iput-wide v0, p0, Lcn/manstep/phonemirrorBox/i0/x;->B:J
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
    const-wide/16 v0, 8
  :L0
  .line 2
    iput-wide v0, p0, Lcn/manstep/phonemirrorBox/i0/x;->B:J
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
  .catchall { :L0 .. :L1 } :L12
  .catchall { :L13 .. :L14 } :L12
  .registers 15
  .line 1
    monitor-enter p0
  :L0
  .line 2
    iget-wide v0, p0, Lcn/manstep/phonemirrorBox/i0/x;->B:J
    const-wide/16 v2, 0
  .line 3
    iput-wide v2, p0, Lcn/manstep/phonemirrorBox/i0/x;->B:J
  .line 4
    monitor-exit p0
  :L1
  .line 5
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/i0/w;->y:Lcn/manstep/phonemirrorBox/x0/h;
    const-wide/16 v5, 15
    and-long/2addr v5, v0
    const-wide/16 v7, 13
    const-wide/16 v9, 14
    const/4 v11, 0
    cmp-long v12, v5, v2
    if-eqz v12, :L8
    and-long v5, v0, v7
    cmp-long v12, v5, v2
    if-eqz v12, :L4
    if-eqz v4, :L2
  .line 6
    invoke-virtual { v4 }, Lcn/manstep/phonemirrorBox/x0/h;->k()Landroidx/lifecycle/o;
    move-result-object v5
    goto :L3
  :L2
    move-object v5, v11
  :L3
    const/4 v6, 0
  .line 7
    invoke-virtual { p0, v6, v5 }, Landroidx/databinding/ViewDataBinding;->J(ILandroidx/lifecycle/LiveData;)Z
    if-eqz v5, :L4
  .line 8
    invoke-virtual { v5 }, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Ljava/lang/String;
    goto :L5
  :L4
    move-object v5, v11
  :L5
    and-long v12, v0, v9
    cmp-long v6, v12, v2
    if-eqz v6, :L9
    if-eqz v4, :L6
  .line 9
    invoke-virtual { v4 }, Lcn/manstep/phonemirrorBox/x0/h;->j()Landroidx/lifecycle/o;
    move-result-object v4
    goto :L7
  :L6
    move-object v4, v11
  :L7
    const/4 v6, 1
  .line 10
    invoke-virtual { p0, v6, v4 }, Landroidx/databinding/ViewDataBinding;->J(ILandroidx/lifecycle/LiveData;)Z
    if-eqz v4, :L9
  .line 11
    invoke-virtual { v4 }, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;
    move-result-object v4
    move-object v11, v4
    check-cast v11, Ljava/lang/String;
    goto :L9
  :L8
    move-object v5, v11
  :L9
    and-long/2addr v9, v0
    cmp-long v4, v9, v2
    if-eqz v4, :L10
  .line 12
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/i0/w;->x:Landroid/widget/EditText;
    invoke-static { v4, v11 }, Landroidx/databinding/j/b;->b(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
  :L10
    and-long/2addr v0, v7
    cmp-long v4, v0, v2
    if-eqz v4, :L11
  .line 13
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/i0/x;->A:Landroid/widget/TextView;
    invoke-static { v0, v5 }, Landroidx/databinding/j/b;->b(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
  :L11
    return-void
  :L12
    move-exception v0
  :L13
  .line 14
    monitor-exit p0
  :L14
    throw v0
.end method

.method public v()Z
  .catchall { :L0 .. :L3 } :L2
  .registers 6
  .line 1
    monitor-enter p0
  :L0
  .line 2
    iget-wide v0, p0, Lcn/manstep/phonemirrorBox/i0/x;->B:J
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
  .registers 5
    if-eqz p1, :L1
    const/4 v0, 1
    if-eq p1, v0, :L0
    const/4 p1, 0
    return p1
  :L0
  .line 1
    check-cast p2, Landroidx/lifecycle/o;
    invoke-direct { p0, p2, p3 }, Lcn/manstep/phonemirrorBox/i0/x;->N(Landroidx/lifecycle/o;I)Z
    move-result p1
    return p1
  :L1
  .line 2
    check-cast p2, Landroidx/lifecycle/o;
    invoke-direct { p0, p2, p3 }, Lcn/manstep/phonemirrorBox/i0/x;->O(Landroidx/lifecycle/o;I)Z
    move-result p1
    return p1
.end method
