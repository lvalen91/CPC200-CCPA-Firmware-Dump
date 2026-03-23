.class public Lcn/manstep/phonemirrorBox/i0/d;
.super Lcn/manstep/phonemirrorBox/i0/c;
.implements Lcn/manstep/phonemirrorBox/m0/a/a$a;
.source "SourceFile"

.field private final static G:Landroidx/databinding/ViewDataBinding$g;

.field private final static H:Landroid/util/SparseIntArray;

.field private final B:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final C:Landroid/view/View$OnClickListener;

.field private final D:Landroid/view/View$OnClickListener;

.field private final E:Landroid/view/View$OnClickListener;

.field private F:J

.method static constructor <clinit>()V
  .registers 5
  .line 1
    new-instance v0, Landroid/util/SparseIntArray;
    invoke-direct { v0 }, Landroid/util/SparseIntArray;-><init>()V
    sput-object v0, Lcn/manstep/phonemirrorBox/i0/d;->H:Landroid/util/SparseIntArray;
    const v1, 2131296871
    const/4 v2, 6
  .line 2
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->put(II)V
  .line 3
    sget-object v0, Lcn/manstep/phonemirrorBox/i0/d;->H:Landroid/util/SparseIntArray;
    const v1, 2131296874
    const/4 v2, 7
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->put(II)V
  .line 4
    sget-object v0, Lcn/manstep/phonemirrorBox/i0/d;->H:Landroid/util/SparseIntArray;
    const v1, 2131296758
    const/16 v2, 8
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->put(II)V
    return-void
.end method

.method public constructor <init>(Landroidx/databinding/e;Landroid/view/View;)V
  .registers 6
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/i0/d;->G:Landroidx/databinding/ViewDataBinding$g;
    sget-object v1, Lcn/manstep/phonemirrorBox/i0/d;->H:Landroid/util/SparseIntArray;
    const/16 v2, 9
    invoke-static { p1, p2, v2, v0, v1 }, Landroidx/databinding/ViewDataBinding;->y(Landroidx/databinding/e;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$g;Landroid/util/SparseIntArray;)[Ljava/lang/Object;
    move-result-object v0
    invoke-direct { p0, p1, p2, v0 }, Lcn/manstep/phonemirrorBox/i0/d;-><init>(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;)V
    return-void
.end method

.method private constructor <init>(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;)V
  .registers 20
    move-object/from16 v12, p0
    const/4 v0, 4
  .line 2
    aget-object v0, p3, v0
    move-object v4, v0
    check-cast v4, Landroid/widget/EditText;
    const/4 v13, 1
    aget-object v0, p3, v13
    move-object v5, v0
    check-cast v5, Landroid/widget/ImageView;
    const/4 v14, 2
    aget-object v0, p3, v14
    move-object v6, v0
    check-cast v6, Landroid/widget/Switch;
    const/4 v15, 3
    aget-object v0, p3, v15
    move-object v7, v0
    check-cast v7, Lcn/manstep/phonemirrorBox/customview/CustomImageView;
    const/4 v0, 5
    aget-object v0, p3, v0
    move-object v8, v0
    check-cast v8, Lcn/manstep/phonemirrorBox/customview/CustomImageView;
    const/16 v0, 8
    aget-object v0, p3, v0
    move-object v9, v0
    check-cast v9, Landroid/widget/ScrollView;
    const/4 v0, 6
    aget-object v0, p3, v0
    move-object v10, v0
    check-cast v10, Landroid/widget/TextView;
    const/4 v0, 7
    aget-object v0, p3, v0
    move-object v11, v0
    check-cast v11, Landroid/view/View;
    const/4 v3, 0
    move-object/from16 v0, p0
    move-object/from16 v1, p1
    move-object/from16 v2, p2
    invoke-direct/range { v0 .. v11 }, Lcn/manstep/phonemirrorBox/i0/c;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/EditText;Landroid/widget/ImageView;Landroid/widget/Switch;Lcn/manstep/phonemirrorBox/customview/CustomImageView;Lcn/manstep/phonemirrorBox/customview/CustomImageView;Landroid/widget/ScrollView;Landroid/widget/TextView;Landroid/view/View;)V
    const-wide/16 v0, -1
  .line 3
    iput-wide v0, v12, Lcn/manstep/phonemirrorBox/i0/d;->F:J
  .line 4
    iget-object v0, v12, Lcn/manstep/phonemirrorBox/i0/c;->v:Landroid/widget/EditText;
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V
  .line 5
    iget-object v0, v12, Lcn/manstep/phonemirrorBox/i0/c;->w:Landroid/widget/ImageView;
    invoke-virtual { v0, v1 }, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V
  .line 6
    iget-object v0, v12, Lcn/manstep/phonemirrorBox/i0/c;->x:Landroid/widget/Switch;
    invoke-virtual { v0, v1 }, Landroid/widget/Switch;->setTag(Ljava/lang/Object;)V
    const/4 v0, 0
  .line 7
    aget-object v0, p3, v0
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;
    iput-object v0, v12, Lcn/manstep/phonemirrorBox/i0/d;->B:Landroidx/constraintlayout/widget/ConstraintLayout;
  .line 8
    invoke-virtual { v0, v1 }, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V
  .line 9
    iget-object v0, v12, Lcn/manstep/phonemirrorBox/i0/c;->y:Lcn/manstep/phonemirrorBox/customview/CustomImageView;
    invoke-virtual { v0, v1 }, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V
  .line 10
    iget-object v0, v12, Lcn/manstep/phonemirrorBox/i0/c;->z:Lcn/manstep/phonemirrorBox/customview/CustomImageView;
    invoke-virtual { v0, v1 }, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V
    move-object/from16 v0, p2
  .line 11
    invoke-virtual { v12, v0 }, Landroidx/databinding/ViewDataBinding;->H(Landroid/view/View;)V
  .line 12
    new-instance v0, Lcn/manstep/phonemirrorBox/m0/a/a;
    invoke-direct { v0, v12, v14 }, Lcn/manstep/phonemirrorBox/m0/a/a;-><init>(Lcn/manstep/phonemirrorBox/m0/a/a$a;I)V
    iput-object v0, v12, Lcn/manstep/phonemirrorBox/i0/d;->C:Landroid/view/View$OnClickListener;
  .line 13
    new-instance v0, Lcn/manstep/phonemirrorBox/m0/a/a;
    invoke-direct { v0, v12, v15 }, Lcn/manstep/phonemirrorBox/m0/a/a;-><init>(Lcn/manstep/phonemirrorBox/m0/a/a$a;I)V
    iput-object v0, v12, Lcn/manstep/phonemirrorBox/i0/d;->D:Landroid/view/View$OnClickListener;
  .line 14
    new-instance v0, Lcn/manstep/phonemirrorBox/m0/a/a;
    invoke-direct { v0, v12, v13 }, Lcn/manstep/phonemirrorBox/m0/a/a;-><init>(Lcn/manstep/phonemirrorBox/m0/a/a$a;I)V
    iput-object v0, v12, Lcn/manstep/phonemirrorBox/i0/d;->E:Landroid/view/View$OnClickListener;
  .line 15
    invoke-virtual/range { p0 .. p0 }, Lcn/manstep/phonemirrorBox/i0/d;->L()V
    return-void
.end method

.method public L()V
  .catchall { :L0 .. :L1 } :L2
  .catchall { :L3 .. :L4 } :L2
  .registers 3
  .line 1
    monitor-enter p0
    const-wide/16 v0, 2
  :L0
  .line 2
    iput-wide v0, p0, Lcn/manstep/phonemirrorBox/i0/d;->F:J
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

.method public final b(ILandroid/view/View;)V
  .registers 6
    const/4 v0, 0
    const/4 v1, 0
    const/4 v2, 1
    if-eq p1, v2, :L6
    const/4 p2, 2
    if-eq p1, p2, :L3
    const/4 p2, 3
    if-eq p1, p2, :L0
    goto :L8
  :L0
  .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/i0/c;->A:Lcn/manstep/phonemirrorBox/x0/j;
    if-eqz p1, :L1
    const/4 v1, 1
  :L1
    if-nez v1, :L2
    goto :L8
  :L2
    const/4 p2, 5
  .line 2
    invoke-virtual { p1, p2 }, Lcn/manstep/phonemirrorBox/x0/j;->a(I)V
    throw v0
  :L3
  .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/i0/c;->A:Lcn/manstep/phonemirrorBox/x0/j;
    if-eqz p1, :L4
    const/4 v1, 1
  :L4
    if-nez v1, :L5
    goto :L8
  :L5
    const/4 p2, -5
  .line 4
    invoke-virtual { p1, p2 }, Lcn/manstep/phonemirrorBox/x0/j;->a(I)V
    throw v0
  :L6
  .line 5
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/i0/c;->A:Lcn/manstep/phonemirrorBox/x0/j;
    if-eqz p1, :L7
    const/4 v1, 1
  :L7
    if-nez v1, :L9
  :L8
    return-void
  :L9
  .line 6
    invoke-virtual { p1, p2 }, Lcn/manstep/phonemirrorBox/x0/j;->c(Landroid/view/View;)V
    throw v0
.end method

.method protected n()V
  .catchall { :L0 .. :L1 } :L6
  .catchall { :L7 .. :L8 } :L6
  .registers 11
  .line 1
    monitor-enter p0
  :L0
  .line 2
    iget-wide v0, p0, Lcn/manstep/phonemirrorBox/i0/d;->F:J
    const-wide/16 v2, 0
  .line 3
    iput-wide v2, p0, Lcn/manstep/phonemirrorBox/i0/d;->F:J
  .line 4
    monitor-exit p0
  :L1
  .line 5
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/i0/c;->A:Lcn/manstep/phonemirrorBox/x0/j;
    const/4 v5, 0
    const-wide/16 v6, 3
    and-long/2addr v6, v0
    const/4 v8, 0
    cmp-long v9, v6, v2
    if-eqz v9, :L3
    if-nez v4, :L2
    goto :L3
  :L2
  .line 6
    invoke-virtual { v4 }, Lcn/manstep/phonemirrorBox/x0/j;->b()Ljava/lang/String;
    throw v8
  :L3
    cmp-long v4, v6, v2
    if-eqz v4, :L4
  .line 7
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/i0/c;->v:Landroid/widget/EditText;
    invoke-static { v4, v8 }, Landroidx/databinding/j/b;->b(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
  .line 8
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/i0/c;->x:Landroid/widget/Switch;
    invoke-static { v4, v5 }, Landroidx/databinding/j/a;->a(Landroid/widget/CompoundButton;Z)V
  .line 9
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/i0/c;->x:Landroid/widget/Switch;
    invoke-static { v4, v8, v8 }, Landroidx/databinding/j/a;->b(Landroid/widget/CompoundButton;Landroid/widget/CompoundButton$OnCheckedChangeListener;Landroidx/databinding/g;)V
  :L4
    const-wide/16 v4, 2
    and-long/2addr v0, v4
    cmp-long v4, v0, v2
    if-eqz v4, :L5
  .line 10
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/i0/c;->w:Landroid/widget/ImageView;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/i0/d;->E:Landroid/view/View$OnClickListener;
    invoke-virtual { v0, v1 }, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  .line 11
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/i0/c;->y:Lcn/manstep/phonemirrorBox/customview/CustomImageView;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/i0/d;->C:Landroid/view/View$OnClickListener;
    invoke-virtual { v0, v1 }, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  .line 12
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/i0/c;->z:Lcn/manstep/phonemirrorBox/customview/CustomImageView;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/i0/d;->D:Landroid/view/View$OnClickListener;
    invoke-virtual { v0, v1 }, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  :L5
    return-void
  :L6
    move-exception v0
  :L7
  .line 13
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
    iget-wide v0, p0, Lcn/manstep/phonemirrorBox/i0/d;->F:J
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
