.class public Lcn/manstep/phonemirrorBox/i0/p;
.super Lcn/manstep/phonemirrorBox/i0/o;
.implements Lcn/manstep/phonemirrorBox/m0/a/a$a;
.implements Lcn/manstep/phonemirrorBox/m0/a/c$a;
.source "SourceFile"

.field private final static N:Landroidx/databinding/ViewDataBinding$g;

.field private final static O:Landroid/util/SparseIntArray;

.field private final B:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final C:Landroid/widget/TextView;

.field private final D:Landroid/widget/TextView;

.field private final E:Lcn/manstep/phonemirrorBox/customview/CustomImageView;

.field private final F:Landroid/view/View$OnClickListener;

.field private final G:Landroid/view/View$OnLongClickListener;

.field private final H:Landroid/view/View$OnClickListener;

.field private final I:Landroid/view/View$OnClickListener;

.field private final J:Landroid/view/View$OnClickListener;

.field private final K:Landroid/view/View$OnClickListener;

.field private final L:Landroid/view/View$OnClickListener;

.field private M:J

.method static constructor <clinit>()V
  .registers 3
  .line 1
    new-instance v0, Landroid/util/SparseIntArray;
    invoke-direct { v0 }, Landroid/util/SparseIntArray;-><init>()V
    sput-object v0, Lcn/manstep/phonemirrorBox/i0/p;->O:Landroid/util/SparseIntArray;
    const v1, 2131296897
    const/16 v2, 9
  .line 2
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->put(II)V
  .line 3
    sget-object v0, Lcn/manstep/phonemirrorBox/i0/p;->O:Landroid/util/SparseIntArray;
    const v1, 2131296507
    const/16 v2, 10
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->put(II)V
  .line 4
    sget-object v0, Lcn/manstep/phonemirrorBox/i0/p;->O:Landroid/util/SparseIntArray;
    const v1, 2131296259
    const/16 v2, 11
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->put(II)V
    return-void
.end method

.method public constructor <init>(Landroidx/databinding/e;Landroid/view/View;)V
  .registers 6
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/i0/p;->N:Landroidx/databinding/ViewDataBinding$g;
    sget-object v1, Lcn/manstep/phonemirrorBox/i0/p;->O:Landroid/util/SparseIntArray;
    const/16 v2, 12
    invoke-static { p1, p2, v2, v0, v1 }, Landroidx/databinding/ViewDataBinding;->y(Landroidx/databinding/e;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$g;Landroid/util/SparseIntArray;)[Ljava/lang/Object;
    move-result-object v0
    invoke-direct { p0, p1, p2, v0 }, Lcn/manstep/phonemirrorBox/i0/p;-><init>(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;)V
    return-void
.end method

.method private constructor <init>(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;)V
  .registers 21
    move-object/from16 v12, p0
    const/16 v0, 11
  .line 2
    aget-object v0, p3, v0
    move-object v4, v0
    check-cast v4, Landroid/widget/ImageView;
    const/16 v0, 8
    aget-object v0, p3, v0
    move-object v5, v0
    check-cast v5, Landroid/widget/TextView;
    const/4 v13, 2
    aget-object v0, p3, v13
    move-object v6, v0
    check-cast v6, Landroid/widget/Button;
    const/16 v0, 10
    aget-object v0, p3, v0
    move-object v7, v0
    check-cast v7, Landroid/widget/FrameLayout;
    const/4 v14, 3
    aget-object v0, p3, v14
    move-object v8, v0
    check-cast v8, Landroid/widget/ImageView;
    const/4 v15, 7
    aget-object v0, p3, v15
    move-object v9, v0
    check-cast v9, Landroid/widget/ImageView;
    const/16 v0, 9
    aget-object v0, p3, v0
    move-object v10, v0
    check-cast v10, Landroid/widget/TextView;
    const/4 v11, 6
    aget-object v0, p3, v11
    move-object/from16 v16, v0
    check-cast v16, Lcn/manstep/phonemirrorBox/util/AutoFitTextView;
    const/4 v3, 4
    move-object/from16 v0, p0
    move-object/from16 v1, p1
    move-object/from16 v2, p2
    const/4 v13, 6
    move-object/from16 v11, v16
    invoke-direct/range { v0 .. v11 }, Lcn/manstep/phonemirrorBox/i0/o;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Lcn/manstep/phonemirrorBox/util/AutoFitTextView;)V
    const-wide/16 v0, -1
  .line 3
    iput-wide v0, v12, Lcn/manstep/phonemirrorBox/i0/p;->M:J
  .line 4
    iget-object v0, v12, Lcn/manstep/phonemirrorBox/i0/o;->v:Landroid/widget/TextView;
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V
  .line 5
    iget-object v0, v12, Lcn/manstep/phonemirrorBox/i0/o;->w:Landroid/widget/Button;
    invoke-virtual { v0, v1 }, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V
  .line 6
    iget-object v0, v12, Lcn/manstep/phonemirrorBox/i0/o;->x:Landroid/widget/ImageView;
    invoke-virtual { v0, v1 }, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V
  .line 7
    iget-object v0, v12, Lcn/manstep/phonemirrorBox/i0/o;->y:Landroid/widget/ImageView;
    invoke-virtual { v0, v1 }, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V
    const/4 v0, 0
  .line 8
    aget-object v0, p3, v0
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;
    iput-object v0, v12, Lcn/manstep/phonemirrorBox/i0/p;->B:Landroidx/constraintlayout/widget/ConstraintLayout;
  .line 9
    invoke-virtual { v0, v1 }, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V
    const/4 v0, 1
  .line 10
    aget-object v2, p3, v0
    check-cast v2, Landroid/widget/TextView;
    iput-object v2, v12, Lcn/manstep/phonemirrorBox/i0/p;->C:Landroid/widget/TextView;
  .line 11
    invoke-virtual { v2, v1 }, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V
    const/4 v2, 4
  .line 12
    aget-object v3, p3, v2
    check-cast v3, Landroid/widget/TextView;
    iput-object v3, v12, Lcn/manstep/phonemirrorBox/i0/p;->D:Landroid/widget/TextView;
  .line 13
    invoke-virtual { v3, v1 }, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V
    const/4 v3, 5
  .line 14
    aget-object v4, p3, v3
    check-cast v4, Lcn/manstep/phonemirrorBox/customview/CustomImageView;
    iput-object v4, v12, Lcn/manstep/phonemirrorBox/i0/p;->E:Lcn/manstep/phonemirrorBox/customview/CustomImageView;
  .line 15
    invoke-virtual { v4, v1 }, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V
  .line 16
    iget-object v4, v12, Lcn/manstep/phonemirrorBox/i0/o;->z:Lcn/manstep/phonemirrorBox/util/AutoFitTextView;
    invoke-virtual { v4, v1 }, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V
    move-object/from16 v1, p2
  .line 17
    invoke-virtual { v12, v1 }, Landroidx/databinding/ViewDataBinding;->H(Landroid/view/View;)V
  .line 18
    new-instance v1, Lcn/manstep/phonemirrorBox/m0/a/a;
    invoke-direct { v1, v12, v15 }, Lcn/manstep/phonemirrorBox/m0/a/a;-><init>(Lcn/manstep/phonemirrorBox/m0/a/a$a;I)V
    iput-object v1, v12, Lcn/manstep/phonemirrorBox/i0/p;->F:Landroid/view/View$OnClickListener;
  .line 19
    new-instance v1, Lcn/manstep/phonemirrorBox/m0/a/c;
    invoke-direct { v1, v12, v3 }, Lcn/manstep/phonemirrorBox/m0/a/c;-><init>(Lcn/manstep/phonemirrorBox/m0/a/c$a;I)V
    iput-object v1, v12, Lcn/manstep/phonemirrorBox/i0/p;->G:Landroid/view/View$OnLongClickListener;
  .line 20
    new-instance v1, Lcn/manstep/phonemirrorBox/m0/a/a;
    invoke-direct { v1, v12, v14 }, Lcn/manstep/phonemirrorBox/m0/a/a;-><init>(Lcn/manstep/phonemirrorBox/m0/a/a$a;I)V
    iput-object v1, v12, Lcn/manstep/phonemirrorBox/i0/p;->H:Landroid/view/View$OnClickListener;
  .line 21
    new-instance v1, Lcn/manstep/phonemirrorBox/m0/a/a;
    invoke-direct { v1, v12, v0 }, Lcn/manstep/phonemirrorBox/m0/a/a;-><init>(Lcn/manstep/phonemirrorBox/m0/a/a$a;I)V
    iput-object v1, v12, Lcn/manstep/phonemirrorBox/i0/p;->I:Landroid/view/View$OnClickListener;
  .line 22
    new-instance v0, Lcn/manstep/phonemirrorBox/m0/a/a;
    invoke-direct { v0, v12, v13 }, Lcn/manstep/phonemirrorBox/m0/a/a;-><init>(Lcn/manstep/phonemirrorBox/m0/a/a$a;I)V
    iput-object v0, v12, Lcn/manstep/phonemirrorBox/i0/p;->J:Landroid/view/View$OnClickListener;
  .line 23
    new-instance v0, Lcn/manstep/phonemirrorBox/m0/a/a;
    invoke-direct { v0, v12, v2 }, Lcn/manstep/phonemirrorBox/m0/a/a;-><init>(Lcn/manstep/phonemirrorBox/m0/a/a$a;I)V
    iput-object v0, v12, Lcn/manstep/phonemirrorBox/i0/p;->K:Landroid/view/View$OnClickListener;
  .line 24
    new-instance v0, Lcn/manstep/phonemirrorBox/m0/a/a;
    const/4 v1, 2
    invoke-direct { v0, v12, v1 }, Lcn/manstep/phonemirrorBox/m0/a/a;-><init>(Lcn/manstep/phonemirrorBox/m0/a/a$a;I)V
    iput-object v0, v12, Lcn/manstep/phonemirrorBox/i0/p;->L:Landroid/view/View$OnClickListener;
  .line 25
    invoke-virtual/range { p0 .. p0 }, Lcn/manstep/phonemirrorBox/i0/p;->O()V
    return-void
.end method

.method private P(Landroidx/lifecycle/o;I)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/lifecycle/o<",
      "Ljava/lang/Integer;",
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
    iget-wide p1, p0, Lcn/manstep/phonemirrorBox/i0/p;->M:J
    const-wide/16 v0, 2
    or-long/2addr p1, v0
    iput-wide p1, p0, Lcn/manstep/phonemirrorBox/i0/p;->M:J
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

.method private Q(Landroidx/lifecycle/o;I)Z
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
    iget-wide p1, p0, Lcn/manstep/phonemirrorBox/i0/p;->M:J
    const-wide/16 v0, 4
    or-long/2addr p1, v0
    iput-wide p1, p0, Lcn/manstep/phonemirrorBox/i0/p;->M:J
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

.method private R(Landroidx/lifecycle/o;I)Z
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
    iget-wide p1, p0, Lcn/manstep/phonemirrorBox/i0/p;->M:J
    const-wide/16 v0, 1
    or-long/2addr p1, v0
    iput-wide p1, p0, Lcn/manstep/phonemirrorBox/i0/p;->M:J
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

.method private S(Landroidx/lifecycle/o;I)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/lifecycle/o<",
      "Ljava/lang/Integer;",
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
    iget-wide p1, p0, Lcn/manstep/phonemirrorBox/i0/p;->M:J
    const-wide/16 v0, 8
    or-long/2addr p1, v0
    iput-wide p1, p0, Lcn/manstep/phonemirrorBox/i0/p;->M:J
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

.method public N(Lcn/manstep/phonemirrorBox/x0/g;)V
  .catchall { :L0 .. :L1 } :L2
  .catchall { :L3 .. :L4 } :L2
  .registers 6
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/i0/o;->A:Lcn/manstep/phonemirrorBox/x0/g;
  .line 2
    monitor-enter p0
  :L0
  .line 3
    iget-wide v0, p0, Lcn/manstep/phonemirrorBox/i0/p;->M:J
    const-wide/16 v2, 16
    or-long/2addr v0, v2
    iput-wide v0, p0, Lcn/manstep/phonemirrorBox/i0/p;->M:J
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

.method public O()V
  .catchall { :L0 .. :L1 } :L2
  .catchall { :L3 .. :L4 } :L2
  .registers 3
  .line 1
    monitor-enter p0
    const-wide/16 v0, 32
  :L0
  .line 2
    iput-wide v0, p0, Lcn/manstep/phonemirrorBox/i0/p;->M:J
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

.method public final a(ILandroid/view/View;)Z
  .registers 5
  .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/i0/o;->A:Lcn/manstep/phonemirrorBox/x0/g;
    const/4 v0, 0
    if-eqz p1, :L0
    const/4 v1, 1
    goto :L1
  :L0
    const/4 v1, 0
  :L1
    if-eqz v1, :L2
  .line 2
    invoke-virtual { p1, p2 }, Lcn/manstep/phonemirrorBox/x0/g;->s(Landroid/view/View;)Z
    move-result v0
  :L2
    return v0
.end method

.method public final b(ILandroid/view/View;)V
  .registers 6
    const/4 v0, 0
    const/4 v1, 1
    if-eq p1, v1, :L10
    const/4 v2, 2
    if-eq p1, v2, :L8
    const/4 v2, 3
    if-eq p1, v2, :L6
    const/4 v2, 4
    if-eq p1, v2, :L4
    const/4 v2, 6
    if-eq p1, v2, :L2
    const/4 v2, 7
    if-eq p1, v2, :L0
    goto :L12
  :L0
  .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/i0/o;->A:Lcn/manstep/phonemirrorBox/x0/g;
    if-eqz p1, :L1
    const/4 v0, 1
  :L1
    if-eqz v0, :L12
  .line 2
    invoke-virtual { p1, p2 }, Lcn/manstep/phonemirrorBox/x0/g;->r(Landroid/view/View;)V
    goto :L12
  :L2
  .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/i0/o;->A:Lcn/manstep/phonemirrorBox/x0/g;
    if-eqz p1, :L3
    const/4 v0, 1
  :L3
    if-eqz v0, :L12
  .line 4
    invoke-virtual { p1, p2 }, Lcn/manstep/phonemirrorBox/x0/g;->N(Landroid/view/View;)V
    goto :L12
  :L4
  .line 5
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/i0/o;->A:Lcn/manstep/phonemirrorBox/x0/g;
    if-eqz p1, :L5
    const/4 v0, 1
  :L5
    if-eqz v0, :L12
  .line 6
    invoke-virtual { p1, p2 }, Lcn/manstep/phonemirrorBox/x0/g;->O(Landroid/view/View;)V
    goto :L12
  :L6
  .line 7
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/i0/o;->A:Lcn/manstep/phonemirrorBox/x0/g;
    if-eqz p1, :L7
    const/4 v0, 1
  :L7
    if-eqz v0, :L12
  .line 8
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/x0/g;->C()V
    goto :L12
  :L8
  .line 9
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/i0/o;->A:Lcn/manstep/phonemirrorBox/x0/g;
    if-eqz p1, :L9
    const/4 v0, 1
  :L9
    if-eqz v0, :L12
  .line 10
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/x0/g;->C()V
    goto :L12
  :L10
  .line 11
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/i0/o;->A:Lcn/manstep/phonemirrorBox/x0/g;
    if-eqz p1, :L11
    const/4 v0, 1
  :L11
    if-eqz v0, :L12
  .line 12
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/x0/g;->t()V
  :L12
    return-void
.end method

.method protected n()V
  .catchall { :L0 .. :L1 } :L38
  .catchall { :L39 .. :L40 } :L38
  .registers 22
    move-object/from16 v1, p0
  .line 1
    monitor-enter p0
  :L0
  .line 2
    iget-wide v2, v1, Lcn/manstep/phonemirrorBox/i0/p;->M:J
    const-wide/16 v4, 0
  .line 3
    iput-wide v4, v1, Lcn/manstep/phonemirrorBox/i0/p;->M:J
  .line 4
    monitor-exit p0
  :L1
  .line 5
    iget-object v0, v1, Lcn/manstep/phonemirrorBox/i0/o;->A:Lcn/manstep/phonemirrorBox/x0/g;
    const-wide/16 v6, 63
    and-long/2addr v6, v2
    const-wide/16 v10, 52
    const-wide/16 v12, 50
    const-wide/16 v14, 49
    const/4 v8, 0
    cmp-long v17, v6, v4
    if-eqz v17, :L31
    and-long v6, v2, v14
    const/4 v9, 1
    cmp-long v18, v6, v4
    if-eqz v18, :L14
    if-eqz v0, :L2
  .line 6
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/x0/g;->x()Landroidx/lifecycle/o;
    move-result-object v18
    move-object/from16 v14, v18
    goto :L3
  :L2
    const/4 v14, 0
  :L3
  .line 7
    invoke-virtual { v1, v8, v14 }, Landroidx/databinding/ViewDataBinding;->J(ILandroidx/lifecycle/LiveData;)Z
    if-eqz v14, :L4
  .line 8
    invoke-virtual { v14 }, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;
    move-result-object v14
    check-cast v14, Ljava/lang/String;
    goto :L5
  :L4
    const/4 v14, 0
  :L5
    if-eqz v14, :L6
  .line 9
    invoke-virtual { v14 }, Ljava/lang/String;->length()I
    move-result v15
    goto :L7
  :L6
    const/4 v15, 0
  :L7
    if-lez v15, :L8
    const/4 v15, 1
    goto :L9
  :L8
    const/4 v15, 0
  :L9
    cmp-long v19, v6, v4
    if-eqz v19, :L12
    if-eqz v15, :L10
    const-wide/16 v6, 128
    goto :L11
  :L10
    const-wide/16 v6, 64
  :L11
    or-long/2addr v2, v6
  :L12
    if-eqz v15, :L13
    const/4 v6, 0
    goto :L15
  :L13
    const/16 v6, 8
    goto :L15
  :L14
    const/4 v6, 0
    const/4 v14, 0
  :L15
    and-long v19, v2, v12
    cmp-long v7, v19, v4
    if-eqz v7, :L20
    if-eqz v0, :L16
  .line 10
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/x0/g;->u()Landroidx/lifecycle/o;
    move-result-object v7
    goto :L17
  :L16
    const/4 v7, 0
  :L17
  .line 11
    invoke-virtual { v1, v9, v7 }, Landroidx/databinding/ViewDataBinding;->J(ILandroidx/lifecycle/LiveData;)Z
    if-eqz v7, :L18
  .line 12
    invoke-virtual { v7 }, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;
    move-result-object v7
    check-cast v7, Ljava/lang/Integer;
    goto :L19
  :L18
    const/4 v7, 0
  :L19
  .line 13
    invoke-static { v7 }, Landroidx/databinding/ViewDataBinding;->E(Ljava/lang/Integer;)I
    move-result v7
    goto :L21
  :L20
    const/4 v7, 0
  :L21
    and-long v19, v2, v10
    cmp-long v9, v19, v4
    if-eqz v9, :L24
    if-eqz v0, :L22
  .line 14
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/x0/g;->v()Landroidx/lifecycle/o;
    move-result-object v9
    goto :L23
  :L22
    const/4 v9, 0
  :L23
    const/4 v15, 2
  .line 15
    invoke-virtual { v1, v15, v9 }, Landroidx/databinding/ViewDataBinding;->J(ILandroidx/lifecycle/LiveData;)Z
    if-eqz v9, :L24
  .line 16
    invoke-virtual { v9 }, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;
    move-result-object v9
    check-cast v9, Ljava/lang/String;
    goto :L25
  :L24
    const/4 v9, 0
  :L25
    const-wide/16 v15, 56
    and-long v19, v2, v15
    cmp-long v15, v19, v4
    if-eqz v15, :L30
    if-eqz v0, :L26
  .line 17
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/x0/g;->y()Landroidx/lifecycle/o;
    move-result-object v0
    goto :L27
  :L26
    const/4 v0, 0
  :L27
    const/4 v8, 3
  .line 18
    invoke-virtual { v1, v8, v0 }, Landroidx/databinding/ViewDataBinding;->J(ILandroidx/lifecycle/LiveData;)Z
    if-eqz v0, :L28
  .line 19
    invoke-virtual { v0 }, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/Integer;
    goto :L29
  :L28
    const/4 v0, 0
  :L29
  .line 20
    invoke-static { v0 }, Landroidx/databinding/ViewDataBinding;->E(Ljava/lang/Integer;)I
    move-result v8
    move v0, v8
    move v8, v7
    move-object v7, v9
    move-object v9, v14
    goto :L32
  :L30
    move v8, v7
    move-object v7, v9
    move-object v9, v14
    const/4 v0, 0
    goto :L32
  :L31
    const/4 v0, 0
    const/4 v6, 0
    const/4 v7, 0
    const/4 v9, 0
  :L32
    const-wide/16 v14, 32
    and-long/2addr v14, v2
    cmp-long v17, v14, v4
    if-eqz v17, :L33
  .line 21
    iget-object v14, v1, Lcn/manstep/phonemirrorBox/i0/o;->v:Landroid/widget/TextView;
    iget-object v15, v1, Lcn/manstep/phonemirrorBox/i0/p;->F:Landroid/view/View$OnClickListener;
    invoke-virtual { v14, v15 }, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  .line 22
    iget-object v14, v1, Lcn/manstep/phonemirrorBox/i0/o;->w:Landroid/widget/Button;
    iget-object v15, v1, Lcn/manstep/phonemirrorBox/i0/p;->I:Landroid/view/View$OnClickListener;
    invoke-virtual { v14, v15 }, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  .line 23
    iget-object v14, v1, Lcn/manstep/phonemirrorBox/i0/o;->x:Landroid/widget/ImageView;
    iget-object v15, v1, Lcn/manstep/phonemirrorBox/i0/p;->L:Landroid/view/View$OnClickListener;
    invoke-virtual { v14, v15 }, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  .line 24
    iget-object v14, v1, Lcn/manstep/phonemirrorBox/i0/o;->y:Landroid/widget/ImageView;
    iget-object v15, v1, Lcn/manstep/phonemirrorBox/i0/p;->J:Landroid/view/View$OnClickListener;
    invoke-virtual { v14, v15 }, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  .line 25
    iget-object v14, v1, Lcn/manstep/phonemirrorBox/i0/p;->D:Landroid/widget/TextView;
    iget-object v15, v1, Lcn/manstep/phonemirrorBox/i0/p;->H:Landroid/view/View$OnClickListener;
    invoke-virtual { v14, v15 }, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  .line 26
    iget-object v14, v1, Lcn/manstep/phonemirrorBox/i0/p;->E:Lcn/manstep/phonemirrorBox/customview/CustomImageView;
    iget-object v15, v1, Lcn/manstep/phonemirrorBox/i0/p;->K:Landroid/view/View$OnClickListener;
    invoke-virtual { v14, v15 }, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  .line 27
    iget-object v14, v1, Lcn/manstep/phonemirrorBox/i0/o;->z:Lcn/manstep/phonemirrorBox/util/AutoFitTextView;
    iget-object v15, v1, Lcn/manstep/phonemirrorBox/i0/p;->G:Landroid/view/View$OnLongClickListener;
    invoke-static { v14, v15 }, Lcn/manstep/phonemirrorBox/t;->b(Landroid/view/View;Landroid/view/View$OnLongClickListener;)V
  :L33
    and-long/2addr v12, v2
    cmp-long v14, v12, v4
    if-eqz v14, :L34
  .line 28
    iget-object v12, v1, Lcn/manstep/phonemirrorBox/i0/o;->x:Landroid/widget/ImageView;
    invoke-static { v12, v8 }, Lcn/manstep/phonemirrorBox/t;->a(Landroid/widget/ImageView;I)V
  :L34
    const-wide/16 v12, 49
    and-long/2addr v12, v2
    cmp-long v8, v12, v4
    if-eqz v8, :L35
  .line 29
    iget-object v8, v1, Lcn/manstep/phonemirrorBox/i0/p;->C:Landroid/widget/TextView;
    invoke-static { v8, v9 }, Landroidx/databinding/j/b;->b(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
  .line 30
    iget-object v8, v1, Lcn/manstep/phonemirrorBox/i0/p;->C:Landroid/widget/TextView;
    invoke-virtual { v8, v6 }, Landroid/widget/TextView;->setVisibility(I)V
  :L35
    and-long v8, v2, v10
    cmp-long v6, v8, v4
    if-eqz v6, :L36
  .line 31
    iget-object v6, v1, Lcn/manstep/phonemirrorBox/i0/p;->D:Landroid/widget/TextView;
    invoke-static { v6, v7 }, Landroidx/databinding/j/b;->b(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
  :L36
    const-wide/16 v6, 56
    and-long/2addr v2, v6
    cmp-long v6, v2, v4
    if-eqz v6, :L37
  .line 32
    iget-object v2, v1, Lcn/manstep/phonemirrorBox/i0/p;->E:Lcn/manstep/phonemirrorBox/customview/CustomImageView;
    invoke-static { v2, v0 }, Lcn/manstep/phonemirrorBox/t;->a(Landroid/widget/ImageView;I)V
  :L37
    return-void
  :L38
    move-exception v0
  :L39
  .line 33
    monitor-exit p0
  :L40
    throw v0
.end method

.method public v()Z
  .catchall { :L0 .. :L3 } :L2
  .registers 6
  .line 1
    monitor-enter p0
  :L0
  .line 2
    iget-wide v0, p0, Lcn/manstep/phonemirrorBox/i0/p;->M:J
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
    if-eqz p1, :L3
    const/4 v0, 1
    if-eq p1, v0, :L2
    const/4 v0, 2
    if-eq p1, v0, :L1
    const/4 v0, 3
    if-eq p1, v0, :L0
    const/4 p1, 0
    return p1
  :L0
  .line 1
    check-cast p2, Landroidx/lifecycle/o;
    invoke-direct { p0, p2, p3 }, Lcn/manstep/phonemirrorBox/i0/p;->S(Landroidx/lifecycle/o;I)Z
    move-result p1
    return p1
  :L1
  .line 2
    check-cast p2, Landroidx/lifecycle/o;
    invoke-direct { p0, p2, p3 }, Lcn/manstep/phonemirrorBox/i0/p;->Q(Landroidx/lifecycle/o;I)Z
    move-result p1
    return p1
  :L2
  .line 3
    check-cast p2, Landroidx/lifecycle/o;
    invoke-direct { p0, p2, p3 }, Lcn/manstep/phonemirrorBox/i0/p;->P(Landroidx/lifecycle/o;I)Z
    move-result p1
    return p1
  :L3
  .line 4
    check-cast p2, Landroidx/lifecycle/o;
    invoke-direct { p0, p2, p3 }, Lcn/manstep/phonemirrorBox/i0/p;->R(Landroidx/lifecycle/o;I)Z
    move-result p1
    return p1
.end method
