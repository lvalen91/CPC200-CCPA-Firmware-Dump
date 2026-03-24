.class public Lcn/manstep/phonemirrorBox/i0/x;
.super Lcn/manstep/phonemirrorBox/i0/w;
.source "SourceFile"


# static fields
.field private static final C:Landroidx/databinding/ViewDataBinding$g;

.field private static final D:Landroid/util/SparseIntArray;


# instance fields
.field private final A:Landroid/widget/TextView;

.field private B:J

.field private final z:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcn/manstep/phonemirrorBox/i0/x;->D:Landroid/util/SparseIntArray;

    const v1, 0x7f090270

    const/4 v2, 0x3

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3
    sget-object v0, Lcn/manstep/phonemirrorBox/i0/x;->D:Landroid/util/SparseIntArray;

    const v1, 0x7f090072

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 4
    sget-object v0, Lcn/manstep/phonemirrorBox/i0/x;->D:Landroid/util/SparseIntArray;

    const v1, 0x7f09007c

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/e;Landroid/view/View;)V
    .registers 6

    .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/i0/x;->C:Landroidx/databinding/ViewDataBinding$g;

    sget-object v1, Lcn/manstep/phonemirrorBox/i0/x;->D:Landroid/util/SparseIntArray;

    const/4 v2, 0x6

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->y(Landroidx/databinding/e;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$g;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcn/manstep/phonemirrorBox/i0/x;-><init>(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;)V
    .registers 13

    const/4 v0, 0x4

    .line 2
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/Button;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/Button;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/EditText;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v4, 0x2

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v8}, Lcn/manstep/phonemirrorBox/i0/w;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/Button;Landroid/widget/Button;Landroid/widget/EditText;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcn/manstep/phonemirrorBox/i0/x;->B:J

    .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/i0/w;->x:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 5
    aget-object p1, p3, p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/i0/x;->z:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 7
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/i0/x;->A:Landroid/widget/TextView;

    .line 8
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->H(Landroid/view/View;)V

    .line 10
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/i0/x;->M()V

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
    iget-wide p1, p0, Lcn/manstep/phonemirrorBox/i0/x;->B:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcn/manstep/phonemirrorBox/i0/x;->B:J

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

.method private O(Landroidx/lifecycle/o;I)Z
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
    iget-wide p1, p0, Lcn/manstep/phonemirrorBox/i0/x;->B:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcn/manstep/phonemirrorBox/i0/x;->B:J

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
.method public L(Lcn/manstep/phonemirrorBox/x0/h;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/i0/w;->y:Lcn/manstep/phonemirrorBox/x0/h;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_3
    iget-wide v0, p0, Lcn/manstep/phonemirrorBox/i0/x;->B:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcn/manstep/phonemirrorBox/i0/x;->B:J

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

    const-wide/16 v0, 0x8

    .line 2
    :try_start_3
    iput-wide v0, p0, Lcn/manstep/phonemirrorBox/i0/x;->B:J

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
    .registers 15

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-wide v0, p0, Lcn/manstep/phonemirrorBox/i0/x;->B:J

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, p0, Lcn/manstep/phonemirrorBox/i0/x;->B:J

    .line 4
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_64

    .line 5
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/i0/w;->y:Lcn/manstep/phonemirrorBox/x0/h;

    const-wide/16 v5, 0xf

    and-long/2addr v5, v0

    const-wide/16 v7, 0xd

    const-wide/16 v9, 0xe

    const/4 v11, 0x0

    cmp-long v12, v5, v2

    if-eqz v12, :cond_4e

    and-long v5, v0, v7

    cmp-long v12, v5, v2

    if-eqz v12, :cond_31

    if-eqz v4, :cond_23

    .line 6
    invoke-virtual {v4}, Lcn/manstep/phonemirrorBox/x0/h;->k()Landroidx/lifecycle/o;

    move-result-object v5

    goto :goto_24

    :cond_23
    move-object v5, v11

    :goto_24
    const/4 v6, 0x0

    .line 7
    invoke-virtual {p0, v6, v5}, Landroidx/databinding/ViewDataBinding;->J(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v5, :cond_31

    .line 8
    invoke-virtual {v5}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_32

    :cond_31
    move-object v5, v11

    :goto_32
    and-long v12, v0, v9

    cmp-long v6, v12, v2

    if-eqz v6, :cond_4f

    if-eqz v4, :cond_3f

    .line 9
    invoke-virtual {v4}, Lcn/manstep/phonemirrorBox/x0/h;->j()Landroidx/lifecycle/o;

    move-result-object v4

    goto :goto_40

    :cond_3f
    move-object v4, v11

    :goto_40
    const/4 v6, 0x1

    .line 10
    invoke-virtual {p0, v6, v4}, Landroidx/databinding/ViewDataBinding;->J(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v4, :cond_4f

    .line 11
    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Ljava/lang/String;

    goto :goto_4f

    :cond_4e
    move-object v5, v11

    :cond_4f
    :goto_4f
    and-long/2addr v9, v0

    cmp-long v4, v9, v2

    if-eqz v4, :cond_59

    .line 12
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/i0/w;->x:Landroid/widget/EditText;

    invoke-static {v4, v11}, Landroidx/databinding/j/b;->b(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_59
    and-long/2addr v0, v7

    cmp-long v4, v0, v2

    if-eqz v4, :cond_63

    .line 13
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/i0/x;->A:Landroid/widget/TextView;

    invoke-static {v0, v5}, Landroidx/databinding/j/b;->b(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_63
    return-void

    :catchall_64
    move-exception v0

    .line 14
    :try_start_65
    monitor-exit p0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    throw v0
.end method

.method public v()Z
    .registers 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-wide v0, p0, Lcn/manstep/phonemirrorBox/i0/x;->B:J

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
    .registers 5

    if-eqz p1, :cond_e

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_7
    check-cast p2, Landroidx/lifecycle/o;

    invoke-direct {p0, p2, p3}, Lcn/manstep/phonemirrorBox/i0/x;->N(Landroidx/lifecycle/o;I)Z

    move-result p1

    return p1

    .line 2
    :cond_e
    check-cast p2, Landroidx/lifecycle/o;

    invoke-direct {p0, p2, p3}, Lcn/manstep/phonemirrorBox/i0/x;->O(Landroidx/lifecycle/o;I)Z

    move-result p1

    return p1
.end method
