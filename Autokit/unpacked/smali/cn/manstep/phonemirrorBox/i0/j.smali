.class public Lcn/manstep/phonemirrorBox/i0/j;
.super Lcn/manstep/phonemirrorBox/i0/i;
.source "SourceFile"

.field private final static x:Landroidx/databinding/ViewDataBinding$g;

.field private final static y:Landroid/util/SparseIntArray;

.field private final v:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private w:J

.method static constructor <clinit>()V
  .registers 3
  .line 1
    new-instance v0, Landroid/util/SparseIntArray;
    invoke-direct { v0 }, Landroid/util/SparseIntArray;-><init>()V
    sput-object v0, Lcn/manstep/phonemirrorBox/i0/j;->y:Landroid/util/SparseIntArray;
    const v1, 2131296521
    const/4 v2, 1
  .line 2
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->put(II)V
  .line 3
    sget-object v0, Lcn/manstep/phonemirrorBox/i0/j;->y:Landroid/util/SparseIntArray;
    const v1, 2131296524
    const/4 v2, 2
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->put(II)V
  .line 4
    sget-object v0, Lcn/manstep/phonemirrorBox/i0/j;->y:Landroid/util/SparseIntArray;
    const v1, 2131296370
    const/4 v2, 3
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->put(II)V
  .line 5
    sget-object v0, Lcn/manstep/phonemirrorBox/i0/j;->y:Landroid/util/SparseIntArray;
    const v1, 2131296532
    const/4 v2, 4
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->put(II)V
  .line 6
    sget-object v0, Lcn/manstep/phonemirrorBox/i0/j;->y:Landroid/util/SparseIntArray;
    const v1, 2131296870
    const/4 v2, 5
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->put(II)V
    return-void
.end method

.method public constructor <init>(Landroidx/databinding/e;Landroid/view/View;)V
  .registers 6
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/i0/j;->x:Landroidx/databinding/ViewDataBinding$g;
    sget-object v1, Lcn/manstep/phonemirrorBox/i0/j;->y:Landroid/util/SparseIntArray;
    const/4 v2, 6
    invoke-static { p1, p2, v2, v0, v1 }, Landroidx/databinding/ViewDataBinding;->y(Landroidx/databinding/e;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$g;Landroid/util/SparseIntArray;)[Ljava/lang/Object;
    move-result-object v0
    invoke-direct { p0, p1, p2, v0 }, Lcn/manstep/phonemirrorBox/i0/j;-><init>(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;)V
    return-void
.end method

.method private constructor <init>(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;)V
  .registers 14
    const/4 v0, 3
  .line 2
    aget-object v0, p3, v0
    move-object v5, v0
    check-cast v5, Landroid/widget/Button;
    const/4 v0, 1
    aget-object v0, p3, v0
    move-object v6, v0
    check-cast v6, Landroidx/constraintlayout/widget/Guideline;
    const/4 v0, 2
    aget-object v0, p3, v0
    move-object v7, v0
    check-cast v7, Landroidx/constraintlayout/widget/Guideline;
    const/4 v0, 4
    aget-object v0, p3, v0
    move-object v8, v0
    check-cast v8, Landroid/widget/ImageView;
    const/4 v0, 5
    aget-object v0, p3, v0
    move-object v9, v0
    check-cast v9, Landroid/widget/TextView;
    const/4 v4, 0
    move-object v1, p0
    move-object v2, p1
    move-object v3, p2
    invoke-direct/range { v1 .. v9 }, Lcn/manstep/phonemirrorBox/i0/i;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/Button;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    const-wide/16 v0, -1
  .line 3
    iput-wide v0, p0, Lcn/manstep/phonemirrorBox/i0/j;->w:J
    const/4 p1, 0
  .line 4
    aget-object p1, p3, p1
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/i0/j;->v:Landroidx/constraintlayout/widget/ConstraintLayout;
    const/4 p3, 0
  .line 5
    invoke-virtual { p1, p3 }, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V
  .line 6
    invoke-virtual { p0, p2 }, Landroidx/databinding/ViewDataBinding;->H(Landroid/view/View;)V
  .line 7
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/i0/j;->L()V
    return-void
.end method

.method public L()V
  .catchall { :L0 .. :L1 } :L2
  .catchall { :L3 .. :L4 } :L2
  .registers 3
  .line 1
    monitor-enter p0
    const-wide/16 v0, 1
  :L0
  .line 2
    iput-wide v0, p0, Lcn/manstep/phonemirrorBox/i0/j;->w:J
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
  .catchall { :L0 .. :L2 } :L1
  .registers 3
  .line 1
    monitor-enter p0
    const-wide/16 v0, 0
  :L0
  .line 2
    iput-wide v0, p0, Lcn/manstep/phonemirrorBox/i0/j;->w:J
  .line 3
    monitor-exit p0
    return-void
  :L1
    move-exception v0
    monitor-exit p0
  :L2
    throw v0
.end method

.method public v()Z
  .catchall { :L0 .. :L3 } :L2
  .registers 6
  .line 1
    monitor-enter p0
  :L0
  .line 2
    iget-wide v0, p0, Lcn/manstep/phonemirrorBox/i0/j;->w:J
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
    const/4 p1, 0
    return p1
.end method
