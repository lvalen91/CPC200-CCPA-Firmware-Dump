.class public Lcn/manstep/phonemirrorBox/i0/l;
.super Lcn/manstep/phonemirrorBox/i0/k;
.source "SourceFile"


# static fields
.field private static final A:Landroid/util/SparseIntArray;

.field private static final z:Landroidx/databinding/ViewDataBinding$g;


# instance fields
.field private final w:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final x:Landroid/widget/TextView;

.field private y:J


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcn/manstep/phonemirrorBox/i0/l;->A:Landroid/util/SparseIntArray;

    const v1, 0x7f0902b8

    const/4 v2, 0x2

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3
    sget-object v0, Lcn/manstep/phonemirrorBox/i0/l;->A:Landroid/util/SparseIntArray;

    const v1, 0x7f090266

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 4
    sget-object v0, Lcn/manstep/phonemirrorBox/i0/l;->A:Landroid/util/SparseIntArray;

    const v1, 0x7f090135

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 5
    sget-object v0, Lcn/manstep/phonemirrorBox/i0/l;->A:Landroid/util/SparseIntArray;

    const v1, 0x7f09010d

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 6
    sget-object v0, Lcn/manstep/phonemirrorBox/i0/l;->A:Landroid/util/SparseIntArray;

    const v1, 0x7f090108

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/e;Landroid/view/View;)V
    .registers 6

    .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/i0/l;->z:Landroidx/databinding/ViewDataBinding$g;

    sget-object v1, Lcn/manstep/phonemirrorBox/i0/l;->A:Landroid/util/SparseIntArray;

    const/4 v2, 0x7

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->y(Landroidx/databinding/e;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$g;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcn/manstep/phonemirrorBox/i0/l;-><init>(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;)V
    .registers 14

    const/4 v0, 0x6

    .line 2
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroidx/constraintlayout/widget/Guideline;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroidx/constraintlayout/widget/Guideline;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/ImageView;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroid/widget/ImageView;

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v9}, Lcn/manstep/phonemirrorBox/i0/k;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcn/manstep/phonemirrorBox/i0/l;->y:J

    const/4 p1, 0x0

    .line 4
    aget-object p1, p3, p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/i0/l;->w:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 6
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/i0/l;->x:Landroid/widget/TextView;

    .line 7
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->H(Landroid/view/View;)V

    .line 9
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/i0/l;->M()V

    return-void
.end method

.method private N(Landroidx/lifecycle/o;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_3
    iget-wide p1, p0, Lcn/manstep/phonemirrorBox/i0/l;->y:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcn/manstep/phonemirrorBox/i0/l;->y:J

    .line 3
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_d
    move-exception p1

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public L(Lcn/manstep/phonemirrorBox/x0/g;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/i0/k;->v:Lcn/manstep/phonemirrorBox/x0/g;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_3
    iget-wide v0, p0, Lcn/manstep/phonemirrorBox/i0/l;->y:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcn/manstep/phonemirrorBox/i0/l;->y:J

    .line 4
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_14

    const/16 p1, 0x8

    .line 5
    invoke-virtual {p0, p1}, Landroidx/databinding/a;->d(I)V

    .line 6
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->D()V

    return-void

    :catchall_14
    move-exception p1

    .line 7
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public M()V
    .registers 3

    .line 1
    monitor-enter p0

    const-wide/16 v0, 0x4

    .line 2
    :try_start_3
    iput-wide v0, p0, Lcn/manstep/phonemirrorBox/i0/l;->y:J

    .line 3
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    .line 4
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->D()V

    return-void

    :catchall_a
    move-exception v0

    .line 5
    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v0
.end method

.method protected n()V
    .registers 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-wide v0, p0, Lcn/manstep/phonemirrorBox/i0/l;->y:J

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, p0, Lcn/manstep/phonemirrorBox/i0/l;->y:J

    .line 4
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_31

    .line 5
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/i0/k;->v:Lcn/manstep/phonemirrorBox/x0/g;

    const-wide/16 v5, 0x7

    and-long/2addr v0, v5

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-eqz v6, :cond_27

    if-eqz v4, :cond_19

    .line 6
    invoke-virtual {v4}, Lcn/manstep/phonemirrorBox/x0/g;->w()Landroidx/lifecycle/o;

    move-result-object v4

    goto :goto_1a

    :cond_19
    move-object v4, v5

    :goto_1a
    const/4 v6, 0x0

    .line 7
    invoke-virtual {p0, v6, v4}, Landroidx/databinding/ViewDataBinding;->J(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v4, :cond_27

    .line 8
    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    :cond_27
    cmp-long v4, v0, v2

    if-eqz v4, :cond_30

    .line 9
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/i0/l;->x:Landroid/widget/TextView;

    invoke-static {v0, v5}, Landroidx/databinding/j/b;->b(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_30
    return-void

    :catchall_31
    move-exception v0

    .line 10
    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v0
.end method

.method public v()Z
    .registers 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-wide v0, p0, Lcn/manstep/phonemirrorBox/i0/l;->y:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    const/4 v0, 0x1

    .line 3
    monitor-exit p0

    return v0

    .line 4
    :cond_c
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method

.method protected z(ILjava/lang/Object;I)Z
    .registers 4

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_4
    check-cast p2, Landroidx/lifecycle/o;

    invoke-direct {p0, p2, p3}, Lcn/manstep/phonemirrorBox/i0/l;->N(Landroidx/lifecycle/o;I)Z

    move-result p1

    return p1
.end method
