.class public Lcn/manstep/phonemirrorBox/i0/p;
.super Lcn/manstep/phonemirrorBox/i0/o;
.source "SourceFile"

# interfaces
.implements Lcn/manstep/phonemirrorBox/m0/a/a$a;
.implements Lcn/manstep/phonemirrorBox/m0/a/c$a;


# static fields
.field private static final N:Landroidx/databinding/ViewDataBinding$g;

.field private static final O:Landroid/util/SparseIntArray;


# instance fields
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


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcn/manstep/phonemirrorBox/i0/p;->O:Landroid/util/SparseIntArray;

    const v1, 0x7f090281

    const/16 v2, 0x9

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3
    sget-object v0, Lcn/manstep/phonemirrorBox/i0/p;->O:Landroid/util/SparseIntArray;

    const v1, 0x7f0900fb

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 4
    sget-object v0, Lcn/manstep/phonemirrorBox/i0/p;->O:Landroid/util/SparseIntArray;

    const v1, 0x7f090003

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/e;Landroid/view/View;)V
    .registers 6

    .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/i0/p;->N:Landroidx/databinding/ViewDataBinding$g;

    sget-object v1, Lcn/manstep/phonemirrorBox/i0/p;->O:Landroid/util/SparseIntArray;

    const/16 v2, 0xc

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->y(Landroidx/databinding/e;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$g;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcn/manstep/phonemirrorBox/i0/p;-><init>(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;)V
    .registers 21

    move-object/from16 v12, p0

    const/16 v0, 0xb

    .line 2
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Landroid/widget/ImageView;

    const/16 v0, 0x8

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    const/4 v13, 0x2

    aget-object v0, p3, v13

    move-object v6, v0

    check-cast v6, Landroid/widget/Button;

    const/16 v0, 0xa

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/FrameLayout;

    const/4 v14, 0x3

    aget-object v0, p3, v14

    move-object v8, v0

    check-cast v8, Landroid/widget/ImageView;

    const/4 v15, 0x7

    aget-object v0, p3, v15

    move-object v9, v0

    check-cast v9, Landroid/widget/ImageView;

    const/16 v0, 0x9

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Landroid/widget/TextView;

    const/4 v11, 0x6

    aget-object v0, p3, v11

    move-object/from16 v16, v0

    check-cast v16, Lcn/manstep/phonemirrorBox/util/AutoFitTextView;

    const/4 v3, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v13, 0x6

    move-object/from16 v11, v16

    invoke-direct/range {v0 .. v11}, Lcn/manstep/phonemirrorBox/i0/o;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Lcn/manstep/phonemirrorBox/util/AutoFitTextView;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, v12, Lcn/manstep/phonemirrorBox/i0/p;->M:J

    .line 4
    iget-object v0, v12, Lcn/manstep/phonemirrorBox/i0/o;->v:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object v0, v12, Lcn/manstep/phonemirrorBox/i0/o;->w:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object v0, v12, Lcn/manstep/phonemirrorBox/i0/o;->x:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object v0, v12, Lcn/manstep/phonemirrorBox/i0/o;->y:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 8
    aget-object v0, p3, v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, v12, Lcn/manstep/phonemirrorBox/i0/p;->B:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 10
    aget-object v2, p3, v0

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v12, Lcn/manstep/phonemirrorBox/i0/p;->C:Landroid/widget/TextView;

    .line 11
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v2, 0x4

    .line 12
    aget-object v3, p3, v2

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v12, Lcn/manstep/phonemirrorBox/i0/p;->D:Landroid/widget/TextView;

    .line 13
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v3, 0x5

    .line 14
    aget-object v4, p3, v3

    check-cast v4, Lcn/manstep/phonemirrorBox/customview/CustomImageView;

    iput-object v4, v12, Lcn/manstep/phonemirrorBox/i0/p;->E:Lcn/manstep/phonemirrorBox/customview/CustomImageView;

    .line 15
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 16
    iget-object v4, v12, Lcn/manstep/phonemirrorBox/i0/o;->z:Lcn/manstep/phonemirrorBox/util/AutoFitTextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v1, p2

    .line 17
    invoke-virtual {v12, v1}, Landroidx/databinding/ViewDataBinding;->H(Landroid/view/View;)V

    .line 18
    new-instance v1, Lcn/manstep/phonemirrorBox/m0/a/a;

    invoke-direct {v1, v12, v15}, Lcn/manstep/phonemirrorBox/m0/a/a;-><init>(Lcn/manstep/phonemirrorBox/m0/a/a$a;I)V

    iput-object v1, v12, Lcn/manstep/phonemirrorBox/i0/p;->F:Landroid/view/View$OnClickListener;

    .line 19
    new-instance v1, Lcn/manstep/phonemirrorBox/m0/a/c;

    invoke-direct {v1, v12, v3}, Lcn/manstep/phonemirrorBox/m0/a/c;-><init>(Lcn/manstep/phonemirrorBox/m0/a/c$a;I)V

    iput-object v1, v12, Lcn/manstep/phonemirrorBox/i0/p;->G:Landroid/view/View$OnLongClickListener;

    .line 20
    new-instance v1, Lcn/manstep/phonemirrorBox/m0/a/a;

    invoke-direct {v1, v12, v14}, Lcn/manstep/phonemirrorBox/m0/a/a;-><init>(Lcn/manstep/phonemirrorBox/m0/a/a$a;I)V

    iput-object v1, v12, Lcn/manstep/phonemirrorBox/i0/p;->H:Landroid/view/View$OnClickListener;

    .line 21
    new-instance v1, Lcn/manstep/phonemirrorBox/m0/a/a;

    invoke-direct {v1, v12, v0}, Lcn/manstep/phonemirrorBox/m0/a/a;-><init>(Lcn/manstep/phonemirrorBox/m0/a/a$a;I)V

    iput-object v1, v12, Lcn/manstep/phonemirrorBox/i0/p;->I:Landroid/view/View$OnClickListener;

    .line 22
    new-instance v0, Lcn/manstep/phonemirrorBox/m0/a/a;

    invoke-direct {v0, v12, v13}, Lcn/manstep/phonemirrorBox/m0/a/a;-><init>(Lcn/manstep/phonemirrorBox/m0/a/a$a;I)V

    iput-object v0, v12, Lcn/manstep/phonemirrorBox/i0/p;->J:Landroid/view/View$OnClickListener;

    .line 23
    new-instance v0, Lcn/manstep/phonemirrorBox/m0/a/a;

    invoke-direct {v0, v12, v2}, Lcn/manstep/phonemirrorBox/m0/a/a;-><init>(Lcn/manstep/phonemirrorBox/m0/a/a$a;I)V

    iput-object v0, v12, Lcn/manstep/phonemirrorBox/i0/p;->K:Landroid/view/View$OnClickListener;

    .line 24
    new-instance v0, Lcn/manstep/phonemirrorBox/m0/a/a;

    const/4 v1, 0x2

    invoke-direct {v0, v12, v1}, Lcn/manstep/phonemirrorBox/m0/a/a;-><init>(Lcn/manstep/phonemirrorBox/m0/a/a$a;I)V

    iput-object v0, v12, Lcn/manstep/phonemirrorBox/i0/p;->L:Landroid/view/View$OnClickListener;

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcn/manstep/phonemirrorBox/i0/p;->O()V

    return-void
.end method

.method private P(Landroidx/lifecycle/o;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Integer;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_3
    iget-wide p1, p0, Lcn/manstep/phonemirrorBox/i0/p;->M:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcn/manstep/phonemirrorBox/i0/p;->M:J

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

.method private Q(Landroidx/lifecycle/o;I)Z
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
    iget-wide p1, p0, Lcn/manstep/phonemirrorBox/i0/p;->M:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcn/manstep/phonemirrorBox/i0/p;->M:J

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

.method private R(Landroidx/lifecycle/o;I)Z
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
    iget-wide p1, p0, Lcn/manstep/phonemirrorBox/i0/p;->M:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcn/manstep/phonemirrorBox/i0/p;->M:J

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

.method private S(Landroidx/lifecycle/o;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Integer;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_3
    iget-wide p1, p0, Lcn/manstep/phonemirrorBox/i0/p;->M:J

    const-wide/16 v0, 0x8

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcn/manstep/phonemirrorBox/i0/p;->M:J

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
.method public N(Lcn/manstep/phonemirrorBox/x0/g;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/i0/o;->A:Lcn/manstep/phonemirrorBox/x0/g;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_3
    iget-wide v0, p0, Lcn/manstep/phonemirrorBox/i0/p;->M:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcn/manstep/phonemirrorBox/i0/p;->M:J

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

.method public O()V
    .registers 3

    .line 1
    monitor-enter p0

    const-wide/16 v0, 0x20

    .line 2
    :try_start_3
    iput-wide v0, p0, Lcn/manstep/phonemirrorBox/i0/p;->M:J

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

.method public final a(ILandroid/view/View;)Z
    .registers 5

    .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/i0/o;->A:Lcn/manstep/phonemirrorBox/x0/g;

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    const/4 v1, 0x1

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    if-eqz v1, :cond_e

    .line 2
    invoke-virtual {p1, p2}, Lcn/manstep/phonemirrorBox/x0/g;->s(Landroid/view/View;)Z

    move-result v0

    :cond_e
    return v0
.end method

.method public final b(ILandroid/view/View;)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4b

    const/4 v2, 0x2

    if-eq p1, v2, :cond_40

    const/4 v2, 0x3

    if-eq p1, v2, :cond_35

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2a

    const/4 v2, 0x6

    if-eq p1, v2, :cond_1f

    const/4 v2, 0x7

    if-eq p1, v2, :cond_14

    goto :goto_55

    .line 1
    :cond_14
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/i0/o;->A:Lcn/manstep/phonemirrorBox/x0/g;

    if-eqz p1, :cond_19

    const/4 v0, 0x1

    :cond_19
    if-eqz v0, :cond_55

    .line 2
    invoke-virtual {p1, p2}, Lcn/manstep/phonemirrorBox/x0/g;->r(Landroid/view/View;)V

    goto :goto_55

    .line 3
    :cond_1f
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/i0/o;->A:Lcn/manstep/phonemirrorBox/x0/g;

    if-eqz p1, :cond_24

    const/4 v0, 0x1

    :cond_24
    if-eqz v0, :cond_55

    .line 4
    invoke-virtual {p1, p2}, Lcn/manstep/phonemirrorBox/x0/g;->N(Landroid/view/View;)V

    goto :goto_55

    .line 5
    :cond_2a
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/i0/o;->A:Lcn/manstep/phonemirrorBox/x0/g;

    if-eqz p1, :cond_2f

    const/4 v0, 0x1

    :cond_2f
    if-eqz v0, :cond_55

    .line 6
    invoke-virtual {p1, p2}, Lcn/manstep/phonemirrorBox/x0/g;->O(Landroid/view/View;)V

    goto :goto_55

    .line 7
    :cond_35
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/i0/o;->A:Lcn/manstep/phonemirrorBox/x0/g;

    if-eqz p1, :cond_3a

    const/4 v0, 0x1

    :cond_3a
    if-eqz v0, :cond_55

    .line 8
    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/x0/g;->C()V

    goto :goto_55

    .line 9
    :cond_40
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/i0/o;->A:Lcn/manstep/phonemirrorBox/x0/g;

    if-eqz p1, :cond_45

    const/4 v0, 0x1

    :cond_45
    if-eqz v0, :cond_55

    .line 10
    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/x0/g;->C()V

    goto :goto_55

    .line 11
    :cond_4b
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/i0/o;->A:Lcn/manstep/phonemirrorBox/x0/g;

    if-eqz p1, :cond_50

    const/4 v0, 0x1

    :cond_50
    if-eqz v0, :cond_55

    .line 12
    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/x0/g;->t()V

    :cond_55
    :goto_55
    return-void
.end method

.method protected n()V
    .registers 22

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_3
    iget-wide v2, v1, Lcn/manstep/phonemirrorBox/i0/p;->M:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lcn/manstep/phonemirrorBox/i0/p;->M:J

    .line 4
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_132

    .line 5
    iget-object v0, v1, Lcn/manstep/phonemirrorBox/i0/o;->A:Lcn/manstep/phonemirrorBox/x0/g;

    const-wide/16 v6, 0x3f

    and-long/2addr v6, v2

    const-wide/16 v10, 0x34

    const-wide/16 v12, 0x32

    const-wide/16 v14, 0x31

    const/4 v8, 0x0

    cmp-long v17, v6, v4

    if-eqz v17, :cond_c3

    and-long v6, v2, v14

    const/4 v9, 0x1

    cmp-long v18, v6, v4

    if-eqz v18, :cond_58

    if-eqz v0, :cond_2a

    .line 6
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/x0/g;->x()Landroidx/lifecycle/o;

    move-result-object v18

    move-object/from16 v14, v18

    goto :goto_2b

    :cond_2a
    const/4 v14, 0x0

    .line 7
    :goto_2b
    invoke-virtual {v1, v8, v14}, Landroidx/databinding/ViewDataBinding;->J(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v14, :cond_37

    .line 8
    invoke-virtual {v14}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    goto :goto_38

    :cond_37
    const/4 v14, 0x0

    :goto_38
    if-eqz v14, :cond_3f

    .line 9
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    goto :goto_40

    :cond_3f
    const/4 v15, 0x0

    :goto_40
    if-lez v15, :cond_44

    const/4 v15, 0x1

    goto :goto_45

    :cond_44
    const/4 v15, 0x0

    :goto_45
    cmp-long v19, v6, v4

    if-eqz v19, :cond_51

    if-eqz v15, :cond_4e

    const-wide/16 v6, 0x80

    goto :goto_50

    :cond_4e
    const-wide/16 v6, 0x40

    :goto_50
    or-long/2addr v2, v6

    :cond_51
    if-eqz v15, :cond_55

    const/4 v6, 0x0

    goto :goto_5a

    :cond_55
    const/16 v6, 0x8

    goto :goto_5a

    :cond_58
    const/4 v6, 0x0

    const/4 v14, 0x0

    :goto_5a
    and-long v19, v2, v12

    cmp-long v7, v19, v4

    if-eqz v7, :cond_7a

    if-eqz v0, :cond_67

    .line 10
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/x0/g;->u()Landroidx/lifecycle/o;

    move-result-object v7

    goto :goto_68

    :cond_67
    const/4 v7, 0x0

    .line 11
    :goto_68
    invoke-virtual {v1, v9, v7}, Landroidx/databinding/ViewDataBinding;->J(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v7, :cond_74

    .line 12
    invoke-virtual {v7}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    goto :goto_75

    :cond_74
    const/4 v7, 0x0

    .line 13
    :goto_75
    invoke-static {v7}, Landroidx/databinding/ViewDataBinding;->E(Ljava/lang/Integer;)I

    move-result v7

    goto :goto_7b

    :cond_7a
    const/4 v7, 0x0

    :goto_7b
    and-long v19, v2, v10

    cmp-long v9, v19, v4

    if-eqz v9, :cond_96

    if-eqz v0, :cond_88

    .line 14
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/x0/g;->v()Landroidx/lifecycle/o;

    move-result-object v9

    goto :goto_89

    :cond_88
    const/4 v9, 0x0

    :goto_89
    const/4 v15, 0x2

    .line 15
    invoke-virtual {v1, v15, v9}, Landroidx/databinding/ViewDataBinding;->J(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v9, :cond_96

    .line 16
    invoke-virtual {v9}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    goto :goto_97

    :cond_96
    const/4 v9, 0x0

    :goto_97
    const-wide/16 v15, 0x38

    and-long v19, v2, v15

    cmp-long v15, v19, v4

    if-eqz v15, :cond_be

    if-eqz v0, :cond_a6

    .line 17
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/x0/g;->y()Landroidx/lifecycle/o;

    move-result-object v0

    goto :goto_a7

    :cond_a6
    const/4 v0, 0x0

    :goto_a7
    const/4 v8, 0x3

    .line 18
    invoke-virtual {v1, v8, v0}, Landroidx/databinding/ViewDataBinding;->J(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v0, :cond_b4

    .line 19
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_b5

    :cond_b4
    const/4 v0, 0x0

    .line 20
    :goto_b5
    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->E(Ljava/lang/Integer;)I

    move-result v8

    move v0, v8

    move v8, v7

    move-object v7, v9

    move-object v9, v14

    goto :goto_c7

    :cond_be
    move v8, v7

    move-object v7, v9

    move-object v9, v14

    const/4 v0, 0x0

    goto :goto_c7

    :cond_c3
    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_c7
    const-wide/16 v14, 0x20

    and-long/2addr v14, v2

    cmp-long v17, v14, v4

    if-eqz v17, :cond_ff

    .line 21
    iget-object v14, v1, Lcn/manstep/phonemirrorBox/i0/o;->v:Landroid/widget/TextView;

    iget-object v15, v1, Lcn/manstep/phonemirrorBox/i0/p;->F:Landroid/view/View$OnClickListener;

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object v14, v1, Lcn/manstep/phonemirrorBox/i0/o;->w:Landroid/widget/Button;

    iget-object v15, v1, Lcn/manstep/phonemirrorBox/i0/p;->I:Landroid/view/View$OnClickListener;

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-object v14, v1, Lcn/manstep/phonemirrorBox/i0/o;->x:Landroid/widget/ImageView;

    iget-object v15, v1, Lcn/manstep/phonemirrorBox/i0/p;->L:Landroid/view/View$OnClickListener;

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    iget-object v14, v1, Lcn/manstep/phonemirrorBox/i0/o;->y:Landroid/widget/ImageView;

    iget-object v15, v1, Lcn/manstep/phonemirrorBox/i0/p;->J:Landroid/view/View$OnClickListener;

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iget-object v14, v1, Lcn/manstep/phonemirrorBox/i0/p;->D:Landroid/widget/TextView;

    iget-object v15, v1, Lcn/manstep/phonemirrorBox/i0/p;->H:Landroid/view/View$OnClickListener;

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    iget-object v14, v1, Lcn/manstep/phonemirrorBox/i0/p;->E:Lcn/manstep/phonemirrorBox/customview/CustomImageView;

    iget-object v15, v1, Lcn/manstep/phonemirrorBox/i0/p;->K:Landroid/view/View$OnClickListener;

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iget-object v14, v1, Lcn/manstep/phonemirrorBox/i0/o;->z:Lcn/manstep/phonemirrorBox/util/AutoFitTextView;

    iget-object v15, v1, Lcn/manstep/phonemirrorBox/i0/p;->G:Landroid/view/View$OnLongClickListener;

    invoke-static {v14, v15}, Lcn/manstep/phonemirrorBox/t;->b(Landroid/view/View;Landroid/view/View$OnLongClickListener;)V

    :cond_ff
    and-long/2addr v12, v2

    cmp-long v14, v12, v4

    if-eqz v14, :cond_109

    .line 28
    iget-object v12, v1, Lcn/manstep/phonemirrorBox/i0/o;->x:Landroid/widget/ImageView;

    invoke-static {v12, v8}, Lcn/manstep/phonemirrorBox/t;->a(Landroid/widget/ImageView;I)V

    :cond_109
    const-wide/16 v12, 0x31

    and-long/2addr v12, v2

    cmp-long v8, v12, v4

    if-eqz v8, :cond_11a

    .line 29
    iget-object v8, v1, Lcn/manstep/phonemirrorBox/i0/p;->C:Landroid/widget/TextView;

    invoke-static {v8, v9}, Landroidx/databinding/j/b;->b(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 30
    iget-object v8, v1, Lcn/manstep/phonemirrorBox/i0/p;->C:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_11a
    and-long v8, v2, v10

    cmp-long v6, v8, v4

    if-eqz v6, :cond_125

    .line 31
    iget-object v6, v1, Lcn/manstep/phonemirrorBox/i0/p;->D:Landroid/widget/TextView;

    invoke-static {v6, v7}, Landroidx/databinding/j/b;->b(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_125
    const-wide/16 v6, 0x38

    and-long/2addr v2, v6

    cmp-long v6, v2, v4

    if-eqz v6, :cond_131

    .line 32
    iget-object v2, v1, Lcn/manstep/phonemirrorBox/i0/p;->E:Lcn/manstep/phonemirrorBox/customview/CustomImageView;

    invoke-static {v2, v0}, Lcn/manstep/phonemirrorBox/t;->a(Landroid/widget/ImageView;I)V

    :cond_131
    return-void

    :catchall_132
    move-exception v0

    .line 33
    :try_start_133
    monitor-exit p0
    :try_end_134
    .catchall {:try_start_133 .. :try_end_134} :catchall_132

    throw v0
.end method

.method public v()Z
    .registers 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-wide v0, p0, Lcn/manstep/phonemirrorBox/i0/p;->M:J

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

    if-eqz p1, :cond_22

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1b

    const/4 v0, 0x2

    if-eq p1, v0, :cond_14

    const/4 v0, 0x3

    if-eq p1, v0, :cond_d

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_d
    check-cast p2, Landroidx/lifecycle/o;

    invoke-direct {p0, p2, p3}, Lcn/manstep/phonemirrorBox/i0/p;->S(Landroidx/lifecycle/o;I)Z

    move-result p1

    return p1

    .line 2
    :cond_14
    check-cast p2, Landroidx/lifecycle/o;

    invoke-direct {p0, p2, p3}, Lcn/manstep/phonemirrorBox/i0/p;->Q(Landroidx/lifecycle/o;I)Z

    move-result p1

    return p1

    .line 3
    :cond_1b
    check-cast p2, Landroidx/lifecycle/o;

    invoke-direct {p0, p2, p3}, Lcn/manstep/phonemirrorBox/i0/p;->P(Landroidx/lifecycle/o;I)Z

    move-result p1

    return p1

    .line 4
    :cond_22
    check-cast p2, Landroidx/lifecycle/o;

    invoke-direct {p0, p2, p3}, Lcn/manstep/phonemirrorBox/i0/p;->R(Landroidx/lifecycle/o;I)Z

    move-result p1

    return p1
.end method
