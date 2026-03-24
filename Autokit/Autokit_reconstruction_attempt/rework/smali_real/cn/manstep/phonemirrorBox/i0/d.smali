.class public Lcn/manstep/phonemirrorBox/i0/d;
.super Lcn/manstep/phonemirrorBox/i0/c;
.source "SourceFile"

# interfaces
.implements Lcn/manstep/phonemirrorBox/m0/a/a$a;


# static fields
.field private static final G:Landroidx/databinding/ViewDataBinding$g;

.field private static final H:Landroid/util/SparseIntArray;


# instance fields
.field private final B:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final C:Landroid/view/View$OnClickListener;

.field private final D:Landroid/view/View$OnClickListener;

.field private final E:Landroid/view/View$OnClickListener;

.field private F:J


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcn/manstep/phonemirrorBox/i0/d;->H:Landroid/util/SparseIntArray;

    const v1, 0x7f090267

    const/4 v2, 0x6

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3
    sget-object v0, Lcn/manstep/phonemirrorBox/i0/d;->H:Landroid/util/SparseIntArray;

    const v1, 0x7f09026a

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 4
    sget-object v0, Lcn/manstep/phonemirrorBox/i0/d;->H:Landroid/util/SparseIntArray;

    const v1, 0x7f0901f6

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/e;Landroid/view/View;)V
    .registers 6

    .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/i0/d;->G:Landroidx/databinding/ViewDataBinding$g;

    sget-object v1, Lcn/manstep/phonemirrorBox/i0/d;->H:Landroid/util/SparseIntArray;

    const/16 v2, 0x9

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->y(Landroidx/databinding/e;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$g;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcn/manstep/phonemirrorBox/i0/d;-><init>(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;)V
    .registers 20

    move-object/from16 v12, p0

    const/4 v0, 0x4

    .line 2
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Landroid/widget/EditText;

    const/4 v13, 0x1

    aget-object v0, p3, v13

    move-object v5, v0

    check-cast v5, Landroid/widget/ImageView;

    const/4 v14, 0x2

    aget-object v0, p3, v14

    move-object v6, v0

    check-cast v6, Landroid/widget/Switch;

    const/4 v15, 0x3

    aget-object v0, p3, v15

    move-object v7, v0

    check-cast v7, Lcn/manstep/phonemirrorBox/customview/CustomImageView;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Lcn/manstep/phonemirrorBox/customview/CustomImageView;

    const/16 v0, 0x8

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroid/widget/ScrollView;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Landroid/widget/TextView;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object v11, v0

    check-cast v11, Landroid/view/View;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v11}, Lcn/manstep/phonemirrorBox/i0/c;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/EditText;Landroid/widget/ImageView;Landroid/widget/Switch;Lcn/manstep/phonemirrorBox/customview/CustomImageView;Lcn/manstep/phonemirrorBox/customview/CustomImageView;Landroid/widget/ScrollView;Landroid/widget/TextView;Landroid/view/View;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, v12, Lcn/manstep/phonemirrorBox/i0/d;->F:J

    .line 4
    iget-object v0, v12, Lcn/manstep/phonemirrorBox/i0/c;->v:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object v0, v12, Lcn/manstep/phonemirrorBox/i0/c;->w:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object v0, v12, Lcn/manstep/phonemirrorBox/i0/c;->x:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 7
    aget-object v0, p3, v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, v12, Lcn/manstep/phonemirrorBox/i0/d;->B:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object v0, v12, Lcn/manstep/phonemirrorBox/i0/c;->y:Lcn/manstep/phonemirrorBox/customview/CustomImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 10
    iget-object v0, v12, Lcn/manstep/phonemirrorBox/i0/c;->z:Lcn/manstep/phonemirrorBox/customview/CustomImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 11
    invoke-virtual {v12, v0}, Landroidx/databinding/ViewDataBinding;->H(Landroid/view/View;)V

    .line 12
    new-instance v0, Lcn/manstep/phonemirrorBox/m0/a/a;

    invoke-direct {v0, v12, v14}, Lcn/manstep/phonemirrorBox/m0/a/a;-><init>(Lcn/manstep/phonemirrorBox/m0/a/a$a;I)V

    iput-object v0, v12, Lcn/manstep/phonemirrorBox/i0/d;->C:Landroid/view/View$OnClickListener;

    .line 13
    new-instance v0, Lcn/manstep/phonemirrorBox/m0/a/a;

    invoke-direct {v0, v12, v15}, Lcn/manstep/phonemirrorBox/m0/a/a;-><init>(Lcn/manstep/phonemirrorBox/m0/a/a$a;I)V

    iput-object v0, v12, Lcn/manstep/phonemirrorBox/i0/d;->D:Landroid/view/View$OnClickListener;

    .line 14
    new-instance v0, Lcn/manstep/phonemirrorBox/m0/a/a;

    invoke-direct {v0, v12, v13}, Lcn/manstep/phonemirrorBox/m0/a/a;-><init>(Lcn/manstep/phonemirrorBox/m0/a/a$a;I)V

    iput-object v0, v12, Lcn/manstep/phonemirrorBox/i0/d;->E:Landroid/view/View$OnClickListener;

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcn/manstep/phonemirrorBox/i0/d;->L()V

    return-void
.end method


# virtual methods
.method public L()V
    .registers 3

    .line 1
    monitor-enter p0

    const-wide/16 v0, 0x2

    .line 2
    :try_start_3
    iput-wide v0, p0, Lcn/manstep/phonemirrorBox/i0/d;->F:J

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

.method public final b(ILandroid/view/View;)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_26

    const/4 p2, 0x2

    if-eq p1, p2, :cond_19

    const/4 p2, 0x3

    if-eq p1, p2, :cond_c

    goto :goto_2d

    .line 1
    :cond_c
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/i0/c;->A:Lcn/manstep/phonemirrorBox/x0/j;

    if-eqz p1, :cond_11

    const/4 v1, 0x1

    :cond_11
    if-nez v1, :cond_14

    goto :goto_2d

    :cond_14
    const/4 p2, 0x5

    .line 2
    invoke-virtual {p1, p2}, Lcn/manstep/phonemirrorBox/x0/j;->a(I)V

    throw v0

    .line 3
    :cond_19
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/i0/c;->A:Lcn/manstep/phonemirrorBox/x0/j;

    if-eqz p1, :cond_1e

    const/4 v1, 0x1

    :cond_1e
    if-nez v1, :cond_21

    goto :goto_2d

    :cond_21
    const/4 p2, -0x5

    .line 4
    invoke-virtual {p1, p2}, Lcn/manstep/phonemirrorBox/x0/j;->a(I)V

    throw v0

    .line 5
    :cond_26
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/i0/c;->A:Lcn/manstep/phonemirrorBox/x0/j;

    if-eqz p1, :cond_2b

    const/4 v1, 0x1

    :cond_2b
    if-nez v1, :cond_2e

    :goto_2d
    return-void

    .line 6
    :cond_2e
    invoke-virtual {p1, p2}, Lcn/manstep/phonemirrorBox/x0/j;->c(Landroid/view/View;)V

    throw v0
.end method

.method protected n()V
    .registers 11

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-wide v0, p0, Lcn/manstep/phonemirrorBox/i0/d;->F:J

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, p0, Lcn/manstep/phonemirrorBox/i0/d;->F:J

    .line 4
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_4a

    .line 5
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/i0/c;->A:Lcn/manstep/phonemirrorBox/x0/j;

    const/4 v5, 0x0

    const-wide/16 v6, 0x3

    and-long/2addr v6, v0

    const/4 v8, 0x0

    cmp-long v9, v6, v2

    if-eqz v9, :cond_1a

    if-nez v4, :cond_16

    goto :goto_1a

    .line 6
    :cond_16
    invoke-virtual {v4}, Lcn/manstep/phonemirrorBox/x0/j;->b()Ljava/lang/String;

    throw v8

    :cond_1a
    :goto_1a
    cmp-long v4, v6, v2

    if-eqz v4, :cond_2d

    .line 7
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/i0/c;->v:Landroid/widget/EditText;

    invoke-static {v4, v8}, Landroidx/databinding/j/b;->b(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 8
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/i0/c;->x:Landroid/widget/Switch;

    invoke-static {v4, v5}, Landroidx/databinding/j/a;->a(Landroid/widget/CompoundButton;Z)V

    .line 9
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/i0/c;->x:Landroid/widget/Switch;

    invoke-static {v4, v8, v8}, Landroidx/databinding/j/a;->b(Landroid/widget/CompoundButton;Landroid/widget/CompoundButton$OnCheckedChangeListener;Landroidx/databinding/g;)V

    :cond_2d
    const-wide/16 v4, 0x2

    and-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-eqz v4, :cond_49

    .line 10
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/i0/c;->w:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/i0/d;->E:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/i0/c;->y:Lcn/manstep/phonemirrorBox/customview/CustomImageView;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/i0/d;->C:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/i0/c;->z:Lcn/manstep/phonemirrorBox/customview/CustomImageView;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/i0/d;->D:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_49
    return-void

    :catchall_4a
    move-exception v0

    .line 13
    :try_start_4b
    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v0
.end method

.method public v()Z
    .registers 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-wide v0, p0, Lcn/manstep/phonemirrorBox/i0/d;->F:J

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

    const/4 p1, 0x0

    return p1
.end method
