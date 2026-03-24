.class public Lcn/manstep/phonemirrorBox/i0/f;
.super Lcn/manstep/phonemirrorBox/i0/e;
.source "SourceFile"

# interfaces
.implements Lcn/manstep/phonemirrorBox/m0/a/a$a;


# static fields
.field private static final B0:Landroidx/databinding/ViewDataBinding$g;

.field private static final C0:Landroid/util/SparseIntArray;


# instance fields
.field private final A:Landroid/widget/RadioButton;

.field private A0:J

.field private final B:Landroid/widget/RadioButton;

.field private final C:Landroid/widget/RadioButton;

.field private final D:Landroid/widget/RadioButton;

.field private final E:Landroid/widget/RadioButton;

.field private final F:Landroid/widget/RadioButton;

.field private final G:Lcn/manstep/phonemirrorBox/customview/CustomImageView;

.field private final H:Landroid/widget/RadioButton;

.field private final I:Landroid/widget/TextView;

.field private final J:Landroid/widget/RadioButton;

.field private final K:Lcn/manstep/phonemirrorBox/customview/CustomImageView;

.field private final L:Landroid/widget/RadioButton;

.field private final M:Landroid/widget/RadioButton;

.field private final N:Landroid/widget/LinearLayout;

.field private final O:Landroid/widget/RadioButton;

.field private final P:Landroid/widget/RadioButton;

.field private final Q:Landroid/widget/ImageView;

.field private final R:Landroidx/appcompat/widget/AppCompatButton;

.field private final S:Landroid/widget/ImageView;

.field private final T:Landroid/widget/TextView;

.field private final U:Landroid/widget/ImageView;

.field private final V:Landroid/widget/TextView;

.field private final W:Landroid/widget/ImageView;

.field private final X:Landroid/widget/RadioButton;

.field private final Y:Landroid/widget/RadioButton;

.field private final Z:Landroid/view/View$OnClickListener;

.field private final a0:Landroid/view/View$OnClickListener;

.field private final b0:Landroid/view/View$OnClickListener;

.field private final c0:Landroid/view/View$OnClickListener;

.field private final d0:Landroid/view/View$OnClickListener;

.field private final e0:Landroid/view/View$OnClickListener;

.field private final f0:Landroid/view/View$OnClickListener;

.field private final g0:Landroid/view/View$OnClickListener;

.field private final h0:Landroid/view/View$OnClickListener;

.field private final i0:Landroid/view/View$OnClickListener;

.field private final j0:Landroid/view/View$OnClickListener;

.field private final k0:Landroid/view/View$OnClickListener;

.field private final l0:Landroid/view/View$OnClickListener;

.field private final m0:Landroid/view/View$OnClickListener;

.field private final n0:Landroid/view/View$OnClickListener;

.field private final o0:Landroid/view/View$OnClickListener;

.field private final p0:Landroid/view/View$OnClickListener;

.field private final q0:Landroid/view/View$OnClickListener;

.field private final r0:Landroid/view/View$OnClickListener;

.field private final s0:Landroid/view/View$OnClickListener;

.field private final t0:Landroid/view/View$OnClickListener;

.field private final u0:Landroid/view/View$OnClickListener;

.field private final v0:Landroid/view/View$OnClickListener;

.field private final w:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final w0:Landroid/view/View$OnClickListener;

.field private final x:Landroid/widget/ImageView;

.field private final x0:Landroid/view/View$OnClickListener;

.field private final y:Landroid/widget/RadioButton;

.field private final y0:Landroid/view/View$OnClickListener;

.field private final z:Landroid/widget/RadioButton;

.field private final z0:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcn/manstep/phonemirrorBox/i0/f;->C0:Landroid/util/SparseIntArray;

    const v1, 0x7f090270

    const/16 v2, 0x1d

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3
    sget-object v0, Lcn/manstep/phonemirrorBox/i0/f;->C0:Landroid/util/SparseIntArray;

    const v1, 0x7f090072

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 4
    sget-object v0, Lcn/manstep/phonemirrorBox/i0/f;->C0:Landroid/util/SparseIntArray;

    const v1, 0x7f09014f

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 5
    sget-object v0, Lcn/manstep/phonemirrorBox/i0/f;->C0:Landroid/util/SparseIntArray;

    const v1, 0x7f0902a6

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 6
    sget-object v0, Lcn/manstep/phonemirrorBox/i0/f;->C0:Landroid/util/SparseIntArray;

    const v1, 0x7f0902a7

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/e;Landroid/view/View;)V
    .registers 6

    .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/i0/f;->B0:Landroidx/databinding/ViewDataBinding$g;

    sget-object v1, Lcn/manstep/phonemirrorBox/i0/f;->C0:Landroid/util/SparseIntArray;

    const/16 v2, 0x22

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->y(Landroidx/databinding/e;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$g;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcn/manstep/phonemirrorBox/i0/f;-><init>(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;)V
    .registers 21

    move-object/from16 v9, p0

    const/16 v0, 0x1e

    .line 2
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Landroid/widget/Button;

    const/16 v0, 0x1f

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/RelativeLayout;

    const/16 v0, 0x1d

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/RelativeLayout;

    const/16 v0, 0x20

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/view/View;

    const/16 v0, 0x21

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/view/View;

    const/16 v3, 0xc

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v8}, Lcn/manstep/phonemirrorBox/i0/e;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/Button;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/view/View;Landroid/view/View;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, v9, Lcn/manstep/phonemirrorBox/i0/f;->A0:J

    const/4 v0, 0x0

    .line 4
    aget-object v0, p3, v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, v9, Lcn/manstep/phonemirrorBox/i0/f;->w:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 6
    aget-object v2, p3, v0

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v9, Lcn/manstep/phonemirrorBox/i0/f;->x:Landroid/widget/ImageView;

    .line 7
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/16 v2, 0xa

    .line 8
    aget-object v3, p3, v2

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, v9, Lcn/manstep/phonemirrorBox/i0/f;->y:Landroid/widget/RadioButton;

    .line 9
    invoke-virtual {v3, v1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    const/16 v3, 0xb

    .line 10
    aget-object v4, p3, v3

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, v9, Lcn/manstep/phonemirrorBox/i0/f;->z:Landroid/widget/RadioButton;

    .line 11
    invoke-virtual {v4, v1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    const/16 v4, 0xc

    .line 12
    aget-object v5, p3, v4

    check-cast v5, Landroid/widget/RadioButton;

    iput-object v5, v9, Lcn/manstep/phonemirrorBox/i0/f;->A:Landroid/widget/RadioButton;

    .line 13
    invoke-virtual {v5, v1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    const/16 v5, 0xd

    .line 14
    aget-object v6, p3, v5

    check-cast v6, Landroid/widget/RadioButton;

    iput-object v6, v9, Lcn/manstep/phonemirrorBox/i0/f;->B:Landroid/widget/RadioButton;

    .line 15
    invoke-virtual {v6, v1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    const/16 v6, 0xe

    .line 16
    aget-object v7, p3, v6

    check-cast v7, Landroid/widget/RadioButton;

    iput-object v7, v9, Lcn/manstep/phonemirrorBox/i0/f;->C:Landroid/widget/RadioButton;

    .line 17
    invoke-virtual {v7, v1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    const/16 v7, 0xf

    .line 18
    aget-object v8, p3, v7

    check-cast v8, Landroid/widget/RadioButton;

    iput-object v8, v9, Lcn/manstep/phonemirrorBox/i0/f;->D:Landroid/widget/RadioButton;

    .line 19
    invoke-virtual {v8, v1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    const/16 v8, 0x10

    .line 20
    aget-object v10, p3, v8

    check-cast v10, Landroid/widget/RadioButton;

    iput-object v10, v9, Lcn/manstep/phonemirrorBox/i0/f;->E:Landroid/widget/RadioButton;

    .line 21
    invoke-virtual {v10, v1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    const/16 v10, 0x11

    .line 22
    aget-object v11, p3, v10

    check-cast v11, Landroid/widget/RadioButton;

    iput-object v11, v9, Lcn/manstep/phonemirrorBox/i0/f;->F:Landroid/widget/RadioButton;

    .line 23
    invoke-virtual {v11, v1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    const/16 v11, 0x12

    .line 24
    aget-object v12, p3, v11

    check-cast v12, Lcn/manstep/phonemirrorBox/customview/CustomImageView;

    iput-object v12, v9, Lcn/manstep/phonemirrorBox/i0/f;->G:Lcn/manstep/phonemirrorBox/customview/CustomImageView;

    .line 25
    invoke-virtual {v12, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/16 v12, 0x13

    .line 26
    aget-object v13, p3, v12

    check-cast v13, Landroid/widget/RadioButton;

    iput-object v13, v9, Lcn/manstep/phonemirrorBox/i0/f;->H:Landroid/widget/RadioButton;

    .line 27
    invoke-virtual {v13, v1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    const/4 v13, 0x2

    .line 28
    aget-object v14, p3, v13

    check-cast v14, Landroid/widget/TextView;

    iput-object v14, v9, Lcn/manstep/phonemirrorBox/i0/f;->I:Landroid/widget/TextView;

    .line 29
    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/16 v14, 0x14

    .line 30
    aget-object v15, p3, v14

    check-cast v15, Landroid/widget/RadioButton;

    iput-object v15, v9, Lcn/manstep/phonemirrorBox/i0/f;->J:Landroid/widget/RadioButton;

    .line 31
    invoke-virtual {v15, v1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    const/16 v15, 0x15

    .line 32
    aget-object v16, p3, v15

    move-object/from16 v13, v16

    check-cast v13, Lcn/manstep/phonemirrorBox/customview/CustomImageView;

    iput-object v13, v9, Lcn/manstep/phonemirrorBox/i0/f;->K:Lcn/manstep/phonemirrorBox/customview/CustomImageView;

    .line 33
    invoke-virtual {v13, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/16 v13, 0x16

    .line 34
    aget-object v16, p3, v13

    move-object/from16 v6, v16

    check-cast v6, Landroid/widget/RadioButton;

    iput-object v6, v9, Lcn/manstep/phonemirrorBox/i0/f;->L:Landroid/widget/RadioButton;

    .line 35
    invoke-virtual {v6, v1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    const/16 v6, 0x17

    .line 36
    aget-object v16, p3, v6

    move-object/from16 v11, v16

    check-cast v11, Landroid/widget/RadioButton;

    iput-object v11, v9, Lcn/manstep/phonemirrorBox/i0/f;->M:Landroid/widget/RadioButton;

    .line 37
    invoke-virtual {v11, v1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    const/16 v11, 0x18

    .line 38
    aget-object v16, p3, v11

    move-object/from16 v2, v16

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v9, Lcn/manstep/phonemirrorBox/i0/f;->N:Landroid/widget/LinearLayout;

    .line 39
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/16 v2, 0x19

    .line 40
    aget-object v16, p3, v2

    move-object/from16 v13, v16

    check-cast v13, Landroid/widget/RadioButton;

    iput-object v13, v9, Lcn/manstep/phonemirrorBox/i0/f;->O:Landroid/widget/RadioButton;

    .line 41
    invoke-virtual {v13, v1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    const/16 v13, 0x1a

    .line 42
    aget-object v16, p3, v13

    move-object/from16 v13, v16

    check-cast v13, Landroid/widget/RadioButton;

    iput-object v13, v9, Lcn/manstep/phonemirrorBox/i0/f;->P:Landroid/widget/RadioButton;

    .line 43
    invoke-virtual {v13, v1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    const/16 v13, 0x1b

    .line 44
    aget-object v16, p3, v13

    move-object/from16 v5, v16

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v9, Lcn/manstep/phonemirrorBox/i0/f;->Q:Landroid/widget/ImageView;

    .line 45
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/16 v5, 0x1c

    .line 46
    aget-object v5, p3, v5

    check-cast v5, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v5, v9, Lcn/manstep/phonemirrorBox/i0/f;->R:Landroidx/appcompat/widget/AppCompatButton;

    .line 47
    invoke-virtual {v5, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    const/4 v5, 0x3

    .line 48
    aget-object v16, p3, v5

    move-object/from16 v2, v16

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v9, Lcn/manstep/phonemirrorBox/i0/f;->S:Landroid/widget/ImageView;

    .line 49
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v2, 0x4

    .line 50
    aget-object v2, p3, v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v9, Lcn/manstep/phonemirrorBox/i0/f;->T:Landroid/widget/TextView;

    .line 51
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v2, 0x5

    .line 52
    aget-object v2, p3, v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v9, Lcn/manstep/phonemirrorBox/i0/f;->U:Landroid/widget/ImageView;

    .line 53
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v2, 0x6

    .line 54
    aget-object v2, p3, v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v9, Lcn/manstep/phonemirrorBox/i0/f;->V:Landroid/widget/TextView;

    .line 55
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v2, 0x7

    .line 56
    aget-object v2, p3, v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v9, Lcn/manstep/phonemirrorBox/i0/f;->W:Landroid/widget/ImageView;

    .line 57
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/16 v2, 0x8

    .line 58
    aget-object v2, p3, v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, v9, Lcn/manstep/phonemirrorBox/i0/f;->X:Landroid/widget/RadioButton;

    .line 59
    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    const/16 v2, 0x9

    .line 60
    aget-object v2, p3, v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, v9, Lcn/manstep/phonemirrorBox/i0/f;->Y:Landroid/widget/RadioButton;

    .line 61
    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    move-object/from16 v1, p2

    .line 62
    invoke-virtual {v9, v1}, Landroidx/databinding/ViewDataBinding;->H(Landroid/view/View;)V

    .line 63
    new-instance v1, Lcn/manstep/phonemirrorBox/m0/a/a;

    invoke-direct {v1, v9, v3}, Lcn/manstep/phonemirrorBox/m0/a/a;-><init>(Lcn/manstep/phonemirrorBox/m0/a/a$a;I)V

    iput-object v1, v9, Lcn/manstep/phonemirrorBox/i0/f;->Z:Landroid/view/View$OnClickListener;

    .line 64
    new-instance v1, Lcn/manstep/phonemirrorBox/m0/a/a;

    const/4 v2, 0x7

    invoke-direct {v1, v9, v2}, Lcn/manstep/phonemirrorBox/m0/a/a;-><init>(Lcn/manstep/phonemirrorBox/m0/a/a$a;I)V

    iput-object v1, v9, Lcn/manstep/phonemirrorBox/i0/f;->a0:Landroid/view/View$OnClickListener;

    .line 65
    new-instance v1, Lcn/manstep/phonemirrorBox/m0/a/a;

    invoke-direct {v1, v9, v12}, Lcn/manstep/phonemirrorBox/m0/a/a;-><init>(Lcn/manstep/phonemirrorBox/m0/a/a$a;I)V

    iput-object v1, v9, Lcn/manstep/phonemirrorBox/i0/f;->b0:Landroid/view/View$OnClickListener;

    .line 66
    new-instance v1, Lcn/manstep/phonemirrorBox/m0/a/a;

    invoke-direct {v1, v9, v13}, Lcn/manstep/phonemirrorBox/m0/a/a;-><init>(Lcn/manstep/phonemirrorBox/m0/a/a$a;I)V

    iput-object v1, v9, Lcn/manstep/phonemirrorBox/i0/f;->c0:Landroid/view/View$OnClickListener;

    .line 67
    new-instance v1, Lcn/manstep/phonemirrorBox/m0/a/a;

    invoke-direct {v1, v9, v5}, Lcn/manstep/phonemirrorBox/m0/a/a;-><init>(Lcn/manstep/phonemirrorBox/m0/a/a$a;I)V

    iput-object v1, v9, Lcn/manstep/phonemirrorBox/i0/f;->d0:Landroid/view/View$OnClickListener;

    .line 68
    new-instance v1, Lcn/manstep/phonemirrorBox/m0/a/a;

    invoke-direct {v1, v9, v7}, Lcn/manstep/phonemirrorBox/m0/a/a;-><init>(Lcn/manstep/phonemirrorBox/m0/a/a$a;I)V

    iput-object v1, v9, Lcn/manstep/phonemirrorBox/i0/f;->e0:Landroid/view/View$OnClickListener;

    .line 69
    new-instance v1, Lcn/manstep/phonemirrorBox/m0/a/a;

    invoke-direct {v1, v9, v6}, Lcn/manstep/phonemirrorBox/m0/a/a;-><init>(Lcn/manstep/phonemirrorBox/m0/a/a$a;I)V

    iput-object v1, v9, Lcn/manstep/phonemirrorBox/i0/f;->f0:Landroid/view/View$OnClickListener;

    .line 70
    new-instance v1, Lcn/manstep/phonemirrorBox/m0/a/a;

    invoke-direct {v1, v9, v4}, Lcn/manstep/phonemirrorBox/m0/a/a;-><init>(Lcn/manstep/phonemirrorBox/m0/a/a$a;I)V

    iput-object v1, v9, Lcn/manstep/phonemirrorBox/i0/f;->g0:Landroid/view/View$OnClickListener;

    .line 71
    new-instance v1, Lcn/manstep/phonemirrorBox/m0/a/a;

    invoke-direct {v1, v9, v14}, Lcn/manstep/phonemirrorBox/m0/a/a;-><init>(Lcn/manstep/phonemirrorBox/m0/a/a$a;I)V

    iput-object v1, v9, Lcn/manstep/phonemirrorBox/i0/f;->h0:Landroid/view/View$OnClickListener;

    .line 72
    new-instance v1, Lcn/manstep/phonemirrorBox/m0/a/a;

    const/16 v2, 0x8

    invoke-direct {v1, v9, v2}, Lcn/manstep/phonemirrorBox/m0/a/a;-><init>(Lcn/manstep/phonemirrorBox/m0/a/a$a;I)V

    iput-object v1, v9, Lcn/manstep/phonemirrorBox/i0/f;->i0:Landroid/view/View$OnClickListener;

    .line 73
    new-instance v1, Lcn/manstep/phonemirrorBox/m0/a/a;

    invoke-direct {v1, v9, v8}, Lcn/manstep/phonemirrorBox/m0/a/a;-><init>(Lcn/manstep/phonemirrorBox/m0/a/a$a;I)V

    iput-object v1, v9, Lcn/manstep/phonemirrorBox/i0/f;->j0:Landroid/view/View$OnClickListener;

    .line 74
    new-instance v1, Lcn/manstep/phonemirrorBox/m0/a/a;

    const/4 v2, 0x4

    invoke-direct {v1, v9, v2}, Lcn/manstep/phonemirrorBox/m0/a/a;-><init>(Lcn/manstep/phonemirrorBox/m0/a/a$a;I)V

    iput-object v1, v9, Lcn/manstep/phonemirrorBox/i0/f;->k0:Landroid/view/View$OnClickListener;

    .line 75
    new-instance v1, Lcn/manstep/phonemirrorBox/m0/a/a;

    invoke-direct {v1, v9, v11}, Lcn/manstep/phonemirrorBox/m0/a/a;-><init>(Lcn/manstep/phonemirrorBox/m0/a/a$a;I)V

    iput-object v1, v9, Lcn/manstep/phonemirrorBox/i0/f;->l0:Landroid/view/View$OnClickListener;

    .line 76
    new-instance v1, Lcn/manstep/phonemirrorBox/m0/a/a;

    invoke-direct {v1, v9, v0}, Lcn/manstep/phonemirrorBox/m0/a/a;-><init>(Lcn/manstep/phonemirrorBox/m0/a/a$a;I)V

    iput-object v1, v9, Lcn/manstep/phonemirrorBox/i0/f;->m0:Landroid/view/View$OnClickListener;

    .line 77
    new-instance v0, Lcn/manstep/phonemirrorBox/m0/a/a;

    const/16 v1, 0x9

    invoke-direct {v0, v9, v1}, Lcn/manstep/phonemirrorBox/m0/a/a;-><init>(Lcn/manstep/phonemirrorBox/m0/a/a$a;I)V

    iput-object v0, v9, Lcn/manstep/phonemirrorBox/i0/f;->n0:Landroid/view/View$OnClickListener;

    .line 78
    new-instance v0, Lcn/manstep/phonemirrorBox/m0/a/a;

    invoke-direct {v0, v9, v15}, Lcn/manstep/phonemirrorBox/m0/a/a;-><init>(Lcn/manstep/phonemirrorBox/m0/a/a$a;I)V

    iput-object v0, v9, Lcn/manstep/phonemirrorBox/i0/f;->o0:Landroid/view/View$OnClickListener;

    .line 79
    new-instance v0, Lcn/manstep/phonemirrorBox/m0/a/a;

    const/4 v1, 0x5

    invoke-direct {v0, v9, v1}, Lcn/manstep/phonemirrorBox/m0/a/a;-><init>(Lcn/manstep/phonemirrorBox/m0/a/a$a;I)V

    iput-object v0, v9, Lcn/manstep/phonemirrorBox/i0/f;->p0:Landroid/view/View$OnClickListener;

    .line 80
    new-instance v0, Lcn/manstep/phonemirrorBox/m0/a/a;

    invoke-direct {v0, v9, v10}, Lcn/manstep/phonemirrorBox/m0/a/a;-><init>(Lcn/manstep/phonemirrorBox/m0/a/a$a;I)V

    iput-object v0, v9, Lcn/manstep/phonemirrorBox/i0/f;->q0:Landroid/view/View$OnClickListener;

    .line 81
    new-instance v0, Lcn/manstep/phonemirrorBox/m0/a/a;

    const/16 v1, 0x19

    invoke-direct {v0, v9, v1}, Lcn/manstep/phonemirrorBox/m0/a/a;-><init>(Lcn/manstep/phonemirrorBox/m0/a/a$a;I)V

    iput-object v0, v9, Lcn/manstep/phonemirrorBox/i0/f;->r0:Landroid/view/View$OnClickListener;

    .line 82
    new-instance v0, Lcn/manstep/phonemirrorBox/m0/a/a;

    const/16 v1, 0xd

    invoke-direct {v0, v9, v1}, Lcn/manstep/phonemirrorBox/m0/a/a;-><init>(Lcn/manstep/phonemirrorBox/m0/a/a$a;I)V

    iput-object v0, v9, Lcn/manstep/phonemirrorBox/i0/f;->s0:Landroid/view/View$OnClickListener;

    .line 83
    new-instance v0, Lcn/manstep/phonemirrorBox/m0/a/a;

    const/16 v1, 0x16

    invoke-direct {v0, v9, v1}, Lcn/manstep/phonemirrorBox/m0/a/a;-><init>(Lcn/manstep/phonemirrorBox/m0/a/a$a;I)V

    iput-object v0, v9, Lcn/manstep/phonemirrorBox/i0/f;->t0:Landroid/view/View$OnClickListener;

    .line 84
    new-instance v0, Lcn/manstep/phonemirrorBox/m0/a/a;

    const/16 v1, 0xa

    invoke-direct {v0, v9, v1}, Lcn/manstep/phonemirrorBox/m0/a/a;-><init>(Lcn/manstep/phonemirrorBox/m0/a/a$a;I)V

    iput-object v0, v9, Lcn/manstep/phonemirrorBox/i0/f;->u0:Landroid/view/View$OnClickListener;

    .line 85
    new-instance v0, Lcn/manstep/phonemirrorBox/m0/a/a;

    const/16 v1, 0x12

    invoke-direct {v0, v9, v1}, Lcn/manstep/phonemirrorBox/m0/a/a;-><init>(Lcn/manstep/phonemirrorBox/m0/a/a$a;I)V

    iput-object v0, v9, Lcn/manstep/phonemirrorBox/i0/f;->v0:Landroid/view/View$OnClickListener;

    .line 86
    new-instance v0, Lcn/manstep/phonemirrorBox/m0/a/a;

    const/4 v1, 0x6

    invoke-direct {v0, v9, v1}, Lcn/manstep/phonemirrorBox/m0/a/a;-><init>(Lcn/manstep/phonemirrorBox/m0/a/a$a;I)V

    iput-object v0, v9, Lcn/manstep/phonemirrorBox/i0/f;->w0:Landroid/view/View$OnClickListener;

    .line 87
    new-instance v0, Lcn/manstep/phonemirrorBox/m0/a/a;

    const/16 v1, 0xe

    invoke-direct {v0, v9, v1}, Lcn/manstep/phonemirrorBox/m0/a/a;-><init>(Lcn/manstep/phonemirrorBox/m0/a/a$a;I)V

    iput-object v0, v9, Lcn/manstep/phonemirrorBox/i0/f;->x0:Landroid/view/View$OnClickListener;

    .line 88
    new-instance v0, Lcn/manstep/phonemirrorBox/m0/a/a;

    const/16 v1, 0x1a

    invoke-direct {v0, v9, v1}, Lcn/manstep/phonemirrorBox/m0/a/a;-><init>(Lcn/manstep/phonemirrorBox/m0/a/a$a;I)V

    iput-object v0, v9, Lcn/manstep/phonemirrorBox/i0/f;->y0:Landroid/view/View$OnClickListener;

    .line 89
    new-instance v0, Lcn/manstep/phonemirrorBox/m0/a/a;

    const/4 v1, 0x2

    invoke-direct {v0, v9, v1}, Lcn/manstep/phonemirrorBox/m0/a/a;-><init>(Lcn/manstep/phonemirrorBox/m0/a/a$a;I)V

    iput-object v0, v9, Lcn/manstep/phonemirrorBox/i0/f;->z0:Landroid/view/View$OnClickListener;

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcn/manstep/phonemirrorBox/i0/f;->N()V

    return-void
.end method

.method private O(Landroidx/lifecycle/o;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Boolean;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_3
    iget-wide p1, p0, Lcn/manstep/phonemirrorBox/i0/f;->A0:J

    const-wide/16 v0, 0x80

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcn/manstep/phonemirrorBox/i0/f;->A0:J

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
    iget-wide p1, p0, Lcn/manstep/phonemirrorBox/i0/f;->A0:J

    const-wide/16 v0, 0x10

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcn/manstep/phonemirrorBox/i0/f;->A0:J

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
            "Ljava/lang/Boolean;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_3
    iget-wide p1, p0, Lcn/manstep/phonemirrorBox/i0/f;->A0:J

    const-wide/16 v0, 0x200

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcn/manstep/phonemirrorBox/i0/f;->A0:J

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
            "Ljava/lang/Boolean;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_3
    iget-wide p1, p0, Lcn/manstep/phonemirrorBox/i0/f;->A0:J

    const-wide/16 v0, 0x100

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcn/manstep/phonemirrorBox/i0/f;->A0:J

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
            "Ljava/lang/Boolean;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_3
    iget-wide p1, p0, Lcn/manstep/phonemirrorBox/i0/f;->A0:J

    const-wide/16 v0, 0x8

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcn/manstep/phonemirrorBox/i0/f;->A0:J

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

.method private T(Landroidx/lifecycle/o;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Boolean;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_3
    iget-wide p1, p0, Lcn/manstep/phonemirrorBox/i0/f;->A0:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcn/manstep/phonemirrorBox/i0/f;->A0:J

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

.method private U(Landroidx/lifecycle/o;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Boolean;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_3
    iget-wide p1, p0, Lcn/manstep/phonemirrorBox/i0/f;->A0:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcn/manstep/phonemirrorBox/i0/f;->A0:J

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

.method private V(Landroidx/lifecycle/o;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Boolean;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_3
    iget-wide p1, p0, Lcn/manstep/phonemirrorBox/i0/f;->A0:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcn/manstep/phonemirrorBox/i0/f;->A0:J

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

.method private W(Landroidx/lifecycle/o;I)Z
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
    iget-wide p1, p0, Lcn/manstep/phonemirrorBox/i0/f;->A0:J

    const-wide/16 v0, 0x20

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcn/manstep/phonemirrorBox/i0/f;->A0:J

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

.method private X(Landroidx/lifecycle/o;I)Z
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
    iget-wide p1, p0, Lcn/manstep/phonemirrorBox/i0/f;->A0:J

    const-wide/16 v0, 0x40

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcn/manstep/phonemirrorBox/i0/f;->A0:J

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

.method private Y(Landroidx/lifecycle/o;I)Z
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
    iget-wide p1, p0, Lcn/manstep/phonemirrorBox/i0/f;->A0:J

    const-wide/16 v0, 0x400

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcn/manstep/phonemirrorBox/i0/f;->A0:J

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

.method private Z(Landroidx/lifecycle/o;I)Z
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
    iget-wide p1, p0, Lcn/manstep/phonemirrorBox/i0/f;->A0:J

    const-wide/16 v0, 0x800

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcn/manstep/phonemirrorBox/i0/f;->A0:J

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
.method public L(Lcn/manstep/phonemirrorBox/x0/i;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/i0/e;->v:Lcn/manstep/phonemirrorBox/x0/i;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_3
    iget-wide v0, p0, Lcn/manstep/phonemirrorBox/i0/f;->A0:J

    const-wide/16 v2, 0x2000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcn/manstep/phonemirrorBox/i0/f;->A0:J

    .line 4
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_13

    const/4 p1, 0x5

    .line 5
    invoke-virtual {p0, p1}, Landroidx/databinding/a;->d(I)V

    .line 6
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->D()V

    return-void

    :catchall_13
    move-exception p1

    .line 7
    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public M(Lcn/manstep/phonemirrorBox/x0/k;)V
    .registers 2

    return-void
.end method

.method public N()V
    .registers 3

    .line 1
    monitor-enter p0

    const-wide/16 v0, 0x4000

    .line 2
    :try_start_3
    iput-wide v0, p0, Lcn/manstep/phonemirrorBox/i0/f;->A0:J

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
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_1ac

    goto/16 :goto_1ab

    .line 1
    :pswitch_7
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/i0/e;->v:Lcn/manstep/phonemirrorBox/x0/i;

    if-eqz p1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    if-eqz v0, :cond_1ab

    .line 2
    invoke-virtual {p1, p2}, Lcn/manstep/phonemirrorBox/x0/i;->R(Landroid/view/View;)V

    goto/16 :goto_1ab

    .line 3
    :pswitch_14
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/i0/e;->v:Lcn/manstep/phonemirrorBox/x0/i;

    if-eqz p1, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    if-eqz v0, :cond_1ab

    .line 4
    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/x0/i;->k()V

    goto/16 :goto_1ab

    .line 5
    :pswitch_21
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/i0/e;->v:Lcn/manstep/phonemirrorBox/x0/i;

    if-eqz p1, :cond_26

    const/4 v1, 0x1

    :cond_26
    if-eqz v1, :cond_1ab

    .line 6
    invoke-virtual {p1, v0}, Lcn/manstep/phonemirrorBox/x0/i;->D(I)V

    goto/16 :goto_1ab

    .line 7
    :pswitch_2d
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/i0/e;->v:Lcn/manstep/phonemirrorBox/x0/i;

    if-eqz p1, :cond_32

    goto :goto_33

    :cond_32
    const/4 v0, 0x0

    :goto_33
    if-eqz v0, :cond_1ab

    .line 8
    invoke-virtual {p1, v1}, Lcn/manstep/phonemirrorBox/x0/i;->D(I)V

    goto/16 :goto_1ab

    .line 9
    :pswitch_3a
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/i0/e;->v:Lcn/manstep/phonemirrorBox/x0/i;

    if-eqz p1, :cond_3f

    goto :goto_40

    :cond_3f
    const/4 v0, 0x0

    :goto_40
    if-eqz v0, :cond_1ab

    .line 10
    invoke-virtual {p1, v1}, Lcn/manstep/phonemirrorBox/x0/i;->H(Z)V

    goto/16 :goto_1ab

    .line 11
    :pswitch_47
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/i0/e;->v:Lcn/manstep/phonemirrorBox/x0/i;

    if-eqz p1, :cond_4c

    const/4 v1, 0x1

    :cond_4c
    if-eqz v1, :cond_1ab

    .line 12
    invoke-virtual {p1, v0}, Lcn/manstep/phonemirrorBox/x0/i;->H(Z)V

    goto/16 :goto_1ab

    .line 13
    :pswitch_53
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/i0/e;->v:Lcn/manstep/phonemirrorBox/x0/i;

    if-eqz p1, :cond_58

    goto :goto_59

    :cond_58
    const/4 v0, 0x0

    :goto_59
    if-eqz v0, :cond_1ab

    .line 14
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/i0/f;->K:Lcn/manstep/phonemirrorBox/customview/CustomImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0068

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcn/manstep/phonemirrorBox/x0/i;->T(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_1ab

    .line 15
    :pswitch_6d
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/i0/e;->v:Lcn/manstep/phonemirrorBox/x0/i;

    if-eqz p1, :cond_72

    goto :goto_73

    :cond_72
    const/4 v0, 0x0

    :goto_73
    if-eqz v0, :cond_1ab

    .line 16
    invoke-virtual {p1, v1}, Lcn/manstep/phonemirrorBox/x0/i;->J(Z)V

    goto/16 :goto_1ab

    .line 17
    :pswitch_7a
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/i0/e;->v:Lcn/manstep/phonemirrorBox/x0/i;

    if-eqz p1, :cond_7f

    const/4 v1, 0x1

    :cond_7f
    if-eqz v1, :cond_1ab

    .line 18
    invoke-virtual {p1, v0}, Lcn/manstep/phonemirrorBox/x0/i;->J(Z)V

    goto/16 :goto_1ab

    .line 19
    :pswitch_86
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/i0/e;->v:Lcn/manstep/phonemirrorBox/x0/i;

    if-eqz p1, :cond_8b

    goto :goto_8c

    :cond_8b
    const/4 v0, 0x0

    :goto_8c
    if-eqz v0, :cond_1ab

    .line 20
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/i0/f;->G:Lcn/manstep/phonemirrorBox/customview/CustomImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcn/manstep/phonemirrorBox/x0/i;->T(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_1ab

    .line 21
    :pswitch_a0
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/i0/e;->v:Lcn/manstep/phonemirrorBox/x0/i;

    if-eqz p1, :cond_a5

    goto :goto_a6

    :cond_a5
    const/4 v0, 0x0

    :goto_a6
    if-eqz v0, :cond_1ab

    .line 22
    invoke-virtual {p1, v1}, Lcn/manstep/phonemirrorBox/x0/i;->G(Z)V

    goto/16 :goto_1ab

    .line 23
    :pswitch_ad
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/i0/e;->v:Lcn/manstep/phonemirrorBox/x0/i;

    if-eqz p1, :cond_b2

    const/4 v1, 0x1

    :cond_b2
    if-eqz v1, :cond_1ab

    .line 24
    invoke-virtual {p1, v0}, Lcn/manstep/phonemirrorBox/x0/i;->G(Z)V

    goto/16 :goto_1ab

    .line 25
    :pswitch_b9
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/i0/e;->v:Lcn/manstep/phonemirrorBox/x0/i;

    if-eqz p1, :cond_be

    goto :goto_bf

    :cond_be
    const/4 v0, 0x0

    :goto_bf
    if-eqz v0, :cond_1ab

    .line 26
    invoke-virtual {p1, v1}, Lcn/manstep/phonemirrorBox/x0/i;->O(Z)V

    goto/16 :goto_1ab

    .line 27
    :pswitch_c6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/i0/e;->v:Lcn/manstep/phonemirrorBox/x0/i;

    if-eqz p1, :cond_cb

    const/4 v1, 0x1

    :cond_cb
    if-eqz v1, :cond_1ab

    .line 28
    invoke-virtual {p1, v0}, Lcn/manstep/phonemirrorBox/x0/i;->O(Z)V

    goto/16 :goto_1ab

    .line 29
    :pswitch_d2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/i0/e;->v:Lcn/manstep/phonemirrorBox/x0/i;

    if-eqz p1, :cond_d7

    goto :goto_d8

    :cond_d7
    const/4 v0, 0x0

    :goto_d8
    if-eqz v0, :cond_1ab

    .line 30
    invoke-virtual {p1, v1}, Lcn/manstep/phonemirrorBox/x0/i;->B(Z)V

    goto/16 :goto_1ab

    .line 31
    :pswitch_df
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/i0/e;->v:Lcn/manstep/phonemirrorBox/x0/i;

    if-eqz p1, :cond_e4

    const/4 v1, 0x1

    :cond_e4
    if-eqz v1, :cond_1ab

    .line 32
    invoke-virtual {p1, v0}, Lcn/manstep/phonemirrorBox/x0/i;->B(Z)V

    goto/16 :goto_1ab

    .line 33
    :pswitch_eb
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/i0/e;->v:Lcn/manstep/phonemirrorBox/x0/i;

    if-eqz p1, :cond_f0

    goto :goto_f1

    :cond_f0
    const/4 v0, 0x0

    :goto_f1
    if-eqz v0, :cond_1ab

    .line 34
    invoke-virtual {p1, v1}, Lcn/manstep/phonemirrorBox/x0/i;->I(Z)V

    goto/16 :goto_1ab

    .line 35
    :pswitch_f8
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/i0/e;->v:Lcn/manstep/phonemirrorBox/x0/i;

    if-eqz p1, :cond_fd

    const/4 v1, 0x1

    :cond_fd
    if-eqz v1, :cond_1ab

    .line 36
    invoke-virtual {p1, v0}, Lcn/manstep/phonemirrorBox/x0/i;->I(Z)V

    goto/16 :goto_1ab

    .line 37
    :pswitch_104
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/i0/e;->v:Lcn/manstep/phonemirrorBox/x0/i;

    if-eqz p1, :cond_10a

    const/4 p2, 0x1

    goto :goto_10b

    :cond_10a
    const/4 p2, 0x0

    :goto_10b
    if-eqz p2, :cond_1ab

    .line 38
    iget-object p1, p1, Lcn/manstep/phonemirrorBox/x0/i;->y:Lcn/manstep/phonemirrorBox/x0/m;

    if-eqz p1, :cond_112

    goto :goto_113

    :cond_112
    const/4 v0, 0x0

    :goto_113
    if-eqz v0, :cond_1ab

    const/4 p2, 0x5

    .line 39
    invoke-virtual {p1, p2}, Lcn/manstep/phonemirrorBox/x0/m;->v(I)V

    goto/16 :goto_1ab

    .line 40
    :pswitch_11b
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/i0/e;->v:Lcn/manstep/phonemirrorBox/x0/i;

    if-eqz p1, :cond_121

    const/4 p2, 0x1

    goto :goto_122

    :cond_121
    const/4 p2, 0x0

    :goto_122
    if-eqz p2, :cond_1ab

    .line 41
    iget-object p1, p1, Lcn/manstep/phonemirrorBox/x0/i;->y:Lcn/manstep/phonemirrorBox/x0/m;

    if-eqz p1, :cond_129

    goto :goto_12a

    :cond_129
    const/4 v0, 0x0

    :goto_12a
    if-eqz v0, :cond_1ab

    const/16 p2, 0x18

    .line 42
    invoke-virtual {p1, p2}, Lcn/manstep/phonemirrorBox/x0/m;->v(I)V

    goto/16 :goto_1ab

    .line 43
    :pswitch_133
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/i0/e;->v:Lcn/manstep/phonemirrorBox/x0/i;

    if-eqz p1, :cond_139

    const/4 p2, 0x1

    goto :goto_13a

    :cond_139
    const/4 p2, 0x0

    :goto_13a
    if-eqz p2, :cond_1ab

    .line 44
    iget-object p1, p1, Lcn/manstep/phonemirrorBox/x0/i;->y:Lcn/manstep/phonemirrorBox/x0/m;

    if-eqz p1, :cond_141

    goto :goto_142

    :cond_141
    const/4 v0, 0x0

    :goto_142
    if-eqz v0, :cond_1ab

    .line 45
    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/x0/m;->t()V

    goto/16 :goto_1ab

    .line 46
    :pswitch_149
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/i0/e;->v:Lcn/manstep/phonemirrorBox/x0/i;

    if-eqz p1, :cond_14f

    const/4 p2, 0x1

    goto :goto_150

    :cond_14f
    const/4 p2, 0x0

    :goto_150
    if-eqz p2, :cond_1ab

    .line 47
    iget-object p1, p1, Lcn/manstep/phonemirrorBox/x0/i;->y:Lcn/manstep/phonemirrorBox/x0/m;

    if-eqz p1, :cond_157

    goto :goto_158

    :cond_157
    const/4 v0, 0x0

    :goto_158
    if-eqz v0, :cond_1ab

    .line 48
    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/x0/m;->t()V

    goto :goto_1ab

    .line 49
    :pswitch_15e
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/i0/e;->v:Lcn/manstep/phonemirrorBox/x0/i;

    if-eqz p1, :cond_164

    const/4 p2, 0x1

    goto :goto_165

    :cond_164
    const/4 p2, 0x0

    :goto_165
    if-eqz p2, :cond_1ab

    .line 50
    iget-object p1, p1, Lcn/manstep/phonemirrorBox/x0/i;->y:Lcn/manstep/phonemirrorBox/x0/m;

    if-eqz p1, :cond_16c

    goto :goto_16d

    :cond_16c
    const/4 v0, 0x0

    :goto_16d
    if-eqz v0, :cond_1ab

    .line 51
    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/x0/m;->q()V

    goto :goto_1ab

    .line 52
    :pswitch_173
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/i0/e;->v:Lcn/manstep/phonemirrorBox/x0/i;

    if-eqz p1, :cond_179

    const/4 p2, 0x1

    goto :goto_17a

    :cond_179
    const/4 p2, 0x0

    :goto_17a
    if-eqz p2, :cond_1ab

    .line 53
    iget-object p1, p1, Lcn/manstep/phonemirrorBox/x0/i;->y:Lcn/manstep/phonemirrorBox/x0/m;

    if-eqz p1, :cond_181

    goto :goto_182

    :cond_181
    const/4 v0, 0x0

    :goto_182
    if-eqz v0, :cond_1ab

    .line 54
    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/x0/m;->q()V

    goto :goto_1ab

    .line 55
    :pswitch_188
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/i0/e;->v:Lcn/manstep/phonemirrorBox/x0/i;

    if-eqz p1, :cond_18d

    goto :goto_18e

    :cond_18d
    const/4 v0, 0x0

    :goto_18e
    if-eqz v0, :cond_1ab

    .line 56
    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/x0/i;->M()V

    goto :goto_1ab

    .line 57
    :pswitch_194
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/i0/e;->v:Lcn/manstep/phonemirrorBox/x0/i;

    if-eqz p1, :cond_199

    goto :goto_19a

    :cond_199
    const/4 v0, 0x0

    :goto_19a
    if-eqz v0, :cond_1ab

    .line 58
    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/x0/i;->M()V

    goto :goto_1ab

    .line 59
    :pswitch_1a0
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/i0/e;->v:Lcn/manstep/phonemirrorBox/x0/i;

    if-eqz p1, :cond_1a5

    goto :goto_1a6

    :cond_1a5
    const/4 v0, 0x0

    :goto_1a6
    if-eqz v0, :cond_1ab

    .line 60
    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/x0/i;->S()V

    :cond_1ab
    :goto_1ab
    return-void

    :pswitch_data_1ac
    .packed-switch 0x1
        :pswitch_1a0
        :pswitch_194
        :pswitch_188
        :pswitch_173
        :pswitch_15e
        :pswitch_149
        :pswitch_133
        :pswitch_11b
        :pswitch_104
        :pswitch_f8
        :pswitch_eb
        :pswitch_df
        :pswitch_d2
        :pswitch_c6
        :pswitch_b9
        :pswitch_ad
        :pswitch_a0
        :pswitch_86
        :pswitch_7a
        :pswitch_6d
        :pswitch_53
        :pswitch_47
        :pswitch_3a
        :pswitch_2d
        :pswitch_21
        :pswitch_14
        :pswitch_7
    .end packed-switch
.end method

.method protected n()V
    .registers 62

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_3
    iget-wide v2, v1, Lcn/manstep/phonemirrorBox/i0/f;->A0:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lcn/manstep/phonemirrorBox/i0/f;->A0:J

    .line 4
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_46e

    .line 5
    iget-object v0, v1, Lcn/manstep/phonemirrorBox/i0/e;->v:Lcn/manstep/phonemirrorBox/x0/i;

    const-wide/16 v6, 0x6fff

    and-long/2addr v6, v2

    const-wide/16 v10, 0x6800

    const-wide/16 v14, 0x6400

    const-wide/16 v16, 0x6010

    const-wide/16 v18, 0x6040

    const-wide/16 v20, 0x6200

    const-wide/16 v22, 0x6004

    const-wide/16 v24, 0x6008

    const-wide/16 v26, 0x6080

    const-wide/16 v28, 0x6002

    const-wide/16 v30, 0x6001

    const/16 v32, 0x0

    const/4 v8, 0x0

    cmp-long v9, v6, v4

    if-eqz v9, :cond_2bd

    and-long v6, v2, v30

    cmp-long v35, v6, v4

    if-eqz v35, :cond_60

    if-eqz v0, :cond_39

    .line 6
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/x0/i;->s()Landroidx/lifecycle/o;

    move-result-object v35

    move-object/from16 v9, v35

    goto :goto_3b

    :cond_39
    move-object/from16 v9, v32

    .line 7
    :goto_3b
    invoke-virtual {v1, v8, v9}, Landroidx/databinding/ViewDataBinding;->J(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v9, :cond_47

    .line 8
    invoke-virtual {v9}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    goto :goto_49

    :cond_47
    move-object/from16 v9, v32

    .line 9
    :goto_49
    invoke-static {v9}, Landroidx/databinding/ViewDataBinding;->F(Ljava/lang/Boolean;)Z

    move-result v9

    cmp-long v36, v6, v4

    if-eqz v36, :cond_5b

    if-eqz v9, :cond_57

    const-wide/32 v6, 0x10000

    goto :goto_5a

    :cond_57
    const-wide/32 v6, 0x8000

    :goto_5a
    or-long/2addr v2, v6

    :cond_5b
    if-eqz v9, :cond_60

    const/16 v6, 0x8

    goto :goto_61

    :cond_60
    const/4 v6, 0x0

    :goto_61
    and-long v36, v2, v28

    const/4 v7, 0x1

    cmp-long v9, v36, v4

    if-eqz v9, :cond_8b

    if-eqz v0, :cond_6f

    .line 10
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/x0/i;->t()Landroidx/lifecycle/o;

    move-result-object v9

    goto :goto_71

    :cond_6f
    move-object/from16 v9, v32

    .line 11
    :goto_71
    invoke-virtual {v1, v7, v9}, Landroidx/databinding/ViewDataBinding;->J(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v9, :cond_7d

    .line 12
    invoke-virtual {v9}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    goto :goto_7f

    :cond_7d
    move-object/from16 v9, v32

    .line 13
    :goto_7f
    invoke-static {v9}, Landroidx/databinding/ViewDataBinding;->F(Ljava/lang/Boolean;)Z

    move-result v36

    .line 14
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v9, v8, :cond_89

    const/4 v8, 0x1

    goto :goto_8e

    :cond_89
    const/4 v8, 0x0

    goto :goto_8e

    :cond_8b
    const/4 v8, 0x0

    const/16 v36, 0x0

    :goto_8e
    const-wide/16 v38, 0x6c40

    and-long v38, v2, v38

    const/4 v9, 0x5

    cmp-long v40, v38, v4

    if-eqz v40, :cond_109

    if-eqz v0, :cond_9c

    .line 15
    iget-object v12, v0, Lcn/manstep/phonemirrorBox/x0/i;->y:Lcn/manstep/phonemirrorBox/x0/m;

    goto :goto_9e

    :cond_9c
    move-object/from16 v12, v32

    :goto_9e
    and-long v40, v2, v18

    cmp-long v13, v40, v4

    if-eqz v13, :cond_ba

    if-eqz v12, :cond_ab

    .line 16
    invoke-virtual {v12}, Lcn/manstep/phonemirrorBox/x0/m;->l()Landroidx/lifecycle/o;

    move-result-object v13

    goto :goto_ad

    :cond_ab
    move-object/from16 v13, v32

    :goto_ad
    const/4 v7, 0x6

    .line 17
    invoke-virtual {v1, v7, v13}, Landroidx/databinding/ViewDataBinding;->J(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v13, :cond_ba

    .line 18
    invoke-virtual {v13}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    goto :goto_bc

    :cond_ba
    move-object/from16 v7, v32

    :goto_bc
    and-long v41, v2, v14

    cmp-long v13, v41, v4

    if-eqz v13, :cond_d9

    if-eqz v12, :cond_c9

    .line 19
    invoke-virtual {v12}, Lcn/manstep/phonemirrorBox/x0/m;->n()Landroidx/lifecycle/o;

    move-result-object v13

    goto :goto_cb

    :cond_c9
    move-object/from16 v13, v32

    :goto_cb
    const/16 v14, 0xa

    .line 20
    invoke-virtual {v1, v14, v13}, Landroidx/databinding/ViewDataBinding;->J(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v13, :cond_d9

    .line 21
    invoke-virtual {v13}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    goto :goto_db

    :cond_d9
    move-object/from16 v13, v32

    :goto_db
    and-long v14, v2, v10

    cmp-long v43, v14, v4

    if-eqz v43, :cond_10c

    if-eqz v12, :cond_e8

    .line 22
    invoke-virtual {v12}, Lcn/manstep/phonemirrorBox/x0/m;->o()Landroidx/lifecycle/o;

    move-result-object v12

    goto :goto_ea

    :cond_e8
    move-object/from16 v12, v32

    :goto_ea
    const/16 v14, 0xb

    .line 23
    invoke-virtual {v1, v14, v12}, Landroidx/databinding/ViewDataBinding;->J(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v12, :cond_f8

    .line 24
    invoke-virtual {v12}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    goto :goto_fa

    :cond_f8
    move-object/from16 v12, v32

    .line 25
    :goto_fa
    invoke-static {v12}, Landroidx/databinding/ViewDataBinding;->E(Ljava/lang/Integer;)I

    move-result v12

    if-ne v12, v9, :cond_102

    const/4 v14, 0x1

    goto :goto_103

    :cond_102
    const/4 v14, 0x0

    :goto_103
    if-eq v12, v9, :cond_107

    const/4 v12, 0x1

    goto :goto_10e

    :cond_107
    const/4 v12, 0x0

    goto :goto_10e

    :cond_109
    move-object/from16 v7, v32

    move-object v13, v7

    :cond_10c
    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_10e
    and-long v43, v2, v22

    cmp-long v15, v43, v4

    if-eqz v15, :cond_138

    if-eqz v0, :cond_11b

    .line 26
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/x0/i;->u()Landroidx/lifecycle/o;

    move-result-object v15

    goto :goto_11d

    :cond_11b
    move-object/from16 v15, v32

    :goto_11d
    const/4 v10, 0x2

    .line 27
    invoke-virtual {v1, v10, v15}, Landroidx/databinding/ViewDataBinding;->J(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v15, :cond_12a

    .line 28
    invoke-virtual {v15}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    goto :goto_12c

    :cond_12a
    move-object/from16 v10, v32

    .line 29
    :goto_12c
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v10, v11, :cond_132

    const/4 v11, 0x1

    goto :goto_133

    :cond_132
    const/4 v11, 0x0

    .line 30
    :goto_133
    invoke-static {v10}, Landroidx/databinding/ViewDataBinding;->F(Ljava/lang/Boolean;)Z

    move-result v10

    goto :goto_13a

    :cond_138
    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_13a
    and-long v45, v2, v24

    cmp-long v15, v45, v4

    if-eqz v15, :cond_164

    if-eqz v0, :cond_147

    .line 31
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/x0/i;->r()Landroidx/lifecycle/o;

    move-result-object v15

    goto :goto_149

    :cond_147
    move-object/from16 v15, v32

    :goto_149
    const/4 v9, 0x3

    .line 32
    invoke-virtual {v1, v9, v15}, Landroidx/databinding/ViewDataBinding;->J(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v15, :cond_156

    .line 33
    invoke-virtual {v15}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    goto :goto_158

    :cond_156
    move-object/from16 v9, v32

    .line 34
    :goto_158
    invoke-static {v9}, Landroidx/databinding/ViewDataBinding;->F(Ljava/lang/Boolean;)Z

    move-result v15

    .line 35
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v9, v4, :cond_162

    const/4 v4, 0x1

    goto :goto_166

    :cond_162
    const/4 v4, 0x0

    goto :goto_166

    :cond_164
    const/4 v4, 0x0

    const/4 v15, 0x0

    :goto_166
    and-long v48, v2, v16

    const-wide/16 v46, 0x0

    cmp-long v5, v48, v46

    if-eqz v5, :cond_19a

    if-eqz v0, :cond_175

    .line 36
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/x0/i;->n()Landroidx/lifecycle/o;

    move-result-object v5

    goto :goto_177

    :cond_175
    move-object/from16 v5, v32

    :goto_177
    const/4 v9, 0x4

    .line 37
    invoke-virtual {v1, v9, v5}, Landroidx/databinding/ViewDataBinding;->J(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v5, :cond_184

    .line 38
    invoke-virtual {v5}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    goto :goto_186

    :cond_184
    move-object/from16 v5, v32

    .line 39
    :goto_186
    invoke-static {v5}, Landroidx/databinding/ViewDataBinding;->E(Ljava/lang/Integer;)I

    move-result v5

    const/4 v9, 0x1

    if-nez v5, :cond_190

    const/16 v40, 0x1

    goto :goto_192

    :cond_190
    const/16 v40, 0x0

    :goto_192
    if-ne v5, v9, :cond_196

    const/4 v5, 0x1

    goto :goto_197

    :cond_196
    const/4 v5, 0x0

    :goto_197
    const-wide/16 v38, 0x6020

    goto :goto_1a0

    :cond_19a
    const/4 v9, 0x1

    const/4 v5, 0x0

    const-wide/16 v38, 0x6020

    const/16 v40, 0x0

    :goto_1a0
    and-long v48, v2, v38

    const-wide/16 v46, 0x0

    cmp-long v50, v48, v46

    if-eqz v50, :cond_1cf

    if-eqz v0, :cond_1b3

    .line 40
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/x0/i;->x()Landroidx/lifecycle/o;

    move-result-object v48

    move/from16 v45, v4

    move-object/from16 v9, v48

    goto :goto_1b7

    :cond_1b3
    move/from16 v45, v4

    move-object/from16 v9, v32

    :goto_1b7
    const/4 v4, 0x5

    .line 41
    invoke-virtual {v1, v4, v9}, Landroidx/databinding/ViewDataBinding;->J(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v9, :cond_1c4

    .line 42
    invoke-virtual {v9}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    goto :goto_1c6

    :cond_1c4
    move-object/from16 v4, v32

    .line 43
    :goto_1c6
    invoke-static {v4}, Landroidx/databinding/ViewDataBinding;->E(Ljava/lang/Integer;)I

    move-result v4

    .line 44
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1d3

    :cond_1cf
    move/from16 v45, v4

    move-object/from16 v4, v32

    :goto_1d3
    and-long v49, v2, v26

    const-wide/16 v46, 0x0

    cmp-long v9, v49, v46

    if-eqz v9, :cond_203

    if-eqz v0, :cond_1e4

    .line 45
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/x0/i;->l()Landroidx/lifecycle/o;

    move-result-object v9

    move-object/from16 v49, v4

    goto :goto_1e8

    :cond_1e4
    move-object/from16 v49, v4

    move-object/from16 v9, v32

    :goto_1e8
    const/4 v4, 0x7

    .line 46
    invoke-virtual {v1, v4, v9}, Landroidx/databinding/ViewDataBinding;->J(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v9, :cond_1f5

    .line 47
    invoke-virtual {v9}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    goto :goto_1f7

    :cond_1f5
    move-object/from16 v4, v32

    .line 48
    :goto_1f7
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v4, v9, :cond_1fd

    const/4 v9, 0x1

    goto :goto_1fe

    :cond_1fd
    const/4 v9, 0x0

    .line 49
    :goto_1fe
    invoke-static {v4}, Landroidx/databinding/ViewDataBinding;->F(Ljava/lang/Boolean;)Z

    move-result v4

    goto :goto_207

    :cond_203
    move-object/from16 v49, v4

    const/4 v4, 0x0

    const/4 v9, 0x0

    :goto_207
    const-wide/16 v33, 0x6100

    and-long v50, v2, v33

    const-wide/16 v46, 0x0

    cmp-long v52, v50, v46

    if-eqz v52, :cond_247

    if-eqz v0, :cond_222

    .line 50
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/x0/i;->q()Landroidx/lifecycle/o;

    move-result-object v50

    move/from16 v35, v5

    const/16 v5, 0x8

    move-object/from16 v60, v50

    move/from16 v50, v4

    move-object/from16 v4, v60

    goto :goto_22a

    :cond_222
    move/from16 v50, v4

    move/from16 v35, v5

    move-object/from16 v4, v32

    const/16 v5, 0x8

    .line 51
    :goto_22a
    invoke-virtual {v1, v5, v4}, Landroidx/databinding/ViewDataBinding;->J(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v4, :cond_236

    .line 52
    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    goto :goto_238

    :cond_236
    move-object/from16 v4, v32

    .line 53
    :goto_238
    invoke-static {v4}, Landroidx/databinding/ViewDataBinding;->F(Ljava/lang/Boolean;)Z

    move-result v4

    xor-int/lit8 v5, v4, 0x1

    .line 54
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v5}, Landroidx/databinding/ViewDataBinding;->F(Ljava/lang/Boolean;)Z

    move-result v5

    goto :goto_24d

    :cond_247
    move/from16 v50, v4

    move/from16 v35, v5

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_24d
    and-long v51, v2, v20

    const-wide/16 v46, 0x0

    cmp-long v53, v51, v46

    if-eqz v53, :cond_29f

    if-eqz v0, :cond_25e

    .line 55
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/x0/i;->p()Landroidx/lifecycle/o;

    move-result-object v0

    move-wide/from16 v51, v2

    goto :goto_262

    :cond_25e
    move-wide/from16 v51, v2

    move-object/from16 v0, v32

    :goto_262
    const/16 v2, 0x9

    .line 56
    invoke-virtual {v1, v2, v0}, Landroidx/databinding/ViewDataBinding;->J(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v0, :cond_271

    .line 57
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v32, v0

    check-cast v32, Ljava/lang/Boolean;

    :cond_271
    move-object/from16 v0, v32

    .line 58
    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->F(Ljava/lang/Boolean;)Z

    move-result v2

    .line 59
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v0, v3, :cond_27e

    const/16 v48, 0x1

    goto :goto_280

    :cond_27e
    const/16 v48, 0x0

    :goto_280
    move/from16 v32, v6

    move-object/from16 v58, v7

    move v0, v8

    move/from16 v56, v12

    move-object/from16 v59, v13

    move/from16 v57, v14

    move/from16 v55, v35

    move/from16 v8, v36

    move/from16 v54, v40

    move/from16 v7, v48

    move-object/from16 v14, v49

    move v6, v2

    move v12, v4

    move v13, v5

    move/from16 v5, v45

    move/from16 v4, v50

    move-wide/from16 v2, v51

    goto :goto_2d9

    :cond_29f
    move-wide/from16 v51, v2

    move/from16 v32, v6

    move-object/from16 v58, v7

    move v0, v8

    move/from16 v56, v12

    move-object/from16 v59, v13

    move/from16 v57, v14

    move/from16 v55, v35

    move/from16 v8, v36

    move/from16 v54, v40

    move-object/from16 v14, v49

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v12, v4

    move v13, v5

    move/from16 v5, v45

    move/from16 v4, v50

    goto :goto_2d9

    :cond_2bd
    move-object/from16 v14, v32

    move-object/from16 v58, v14

    move-object/from16 v59, v58

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v32, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    :goto_2d9
    const-wide/16 v35, 0x4000

    and-long v35, v2, v35

    const-wide/16 v45, 0x0

    cmp-long v37, v35, v45

    if-eqz v37, :cond_3a5

    move/from16 v35, v13

    .line 60
    iget-object v13, v1, Lcn/manstep/phonemirrorBox/i0/f;->x:Landroid/widget/ImageView;

    move/from16 v36, v12

    iget-object v12, v1, Lcn/manstep/phonemirrorBox/i0/f;->m0:Landroid/view/View$OnClickListener;

    invoke-virtual {v13, v12}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v12, v1, Lcn/manstep/phonemirrorBox/i0/f;->y:Landroid/widget/RadioButton;

    iget-object v13, v1, Lcn/manstep/phonemirrorBox/i0/f;->u0:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v13}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v12, v1, Lcn/manstep/phonemirrorBox/i0/f;->z:Landroid/widget/RadioButton;

    iget-object v13, v1, Lcn/manstep/phonemirrorBox/i0/f;->Z:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v13}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v12, v1, Lcn/manstep/phonemirrorBox/i0/f;->A:Landroid/widget/RadioButton;

    iget-object v13, v1, Lcn/manstep/phonemirrorBox/i0/f;->g0:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v13}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v12, v1, Lcn/manstep/phonemirrorBox/i0/f;->B:Landroid/widget/RadioButton;

    iget-object v13, v1, Lcn/manstep/phonemirrorBox/i0/f;->s0:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v13}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v12, v1, Lcn/manstep/phonemirrorBox/i0/f;->C:Landroid/widget/RadioButton;

    iget-object v13, v1, Lcn/manstep/phonemirrorBox/i0/f;->x0:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v13}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v12, v1, Lcn/manstep/phonemirrorBox/i0/f;->D:Landroid/widget/RadioButton;

    iget-object v13, v1, Lcn/manstep/phonemirrorBox/i0/f;->e0:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v13}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v12, v1, Lcn/manstep/phonemirrorBox/i0/f;->E:Landroid/widget/RadioButton;

    iget-object v13, v1, Lcn/manstep/phonemirrorBox/i0/f;->j0:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v13}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v12, v1, Lcn/manstep/phonemirrorBox/i0/f;->F:Landroid/widget/RadioButton;

    iget-object v13, v1, Lcn/manstep/phonemirrorBox/i0/f;->q0:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v13}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v12, v1, Lcn/manstep/phonemirrorBox/i0/f;->G:Lcn/manstep/phonemirrorBox/customview/CustomImageView;

    iget-object v13, v1, Lcn/manstep/phonemirrorBox/i0/f;->v0:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v12, v1, Lcn/manstep/phonemirrorBox/i0/f;->H:Landroid/widget/RadioButton;

    iget-object v13, v1, Lcn/manstep/phonemirrorBox/i0/f;->b0:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v13}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v12, v1, Lcn/manstep/phonemirrorBox/i0/f;->I:Landroid/widget/TextView;

    iget-object v13, v1, Lcn/manstep/phonemirrorBox/i0/f;->z0:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v12, v1, Lcn/manstep/phonemirrorBox/i0/f;->J:Landroid/widget/RadioButton;

    iget-object v13, v1, Lcn/manstep/phonemirrorBox/i0/f;->h0:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v13}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v12, v1, Lcn/manstep/phonemirrorBox/i0/f;->K:Lcn/manstep/phonemirrorBox/customview/CustomImageView;

    iget-object v13, v1, Lcn/manstep/phonemirrorBox/i0/f;->o0:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v12, v1, Lcn/manstep/phonemirrorBox/i0/f;->L:Landroid/widget/RadioButton;

    iget-object v13, v1, Lcn/manstep/phonemirrorBox/i0/f;->t0:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v13}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v12, v1, Lcn/manstep/phonemirrorBox/i0/f;->M:Landroid/widget/RadioButton;

    iget-object v13, v1, Lcn/manstep/phonemirrorBox/i0/f;->f0:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v13}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v12, v1, Lcn/manstep/phonemirrorBox/i0/f;->O:Landroid/widget/RadioButton;

    iget-object v13, v1, Lcn/manstep/phonemirrorBox/i0/f;->l0:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v13}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v12, v1, Lcn/manstep/phonemirrorBox/i0/f;->P:Landroid/widget/RadioButton;

    iget-object v13, v1, Lcn/manstep/phonemirrorBox/i0/f;->r0:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v13}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v12, v1, Lcn/manstep/phonemirrorBox/i0/f;->Q:Landroid/widget/ImageView;

    iget-object v13, v1, Lcn/manstep/phonemirrorBox/i0/f;->y0:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v12, v1, Lcn/manstep/phonemirrorBox/i0/f;->R:Landroidx/appcompat/widget/AppCompatButton;

    iget-object v13, v1, Lcn/manstep/phonemirrorBox/i0/f;->c0:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v12, v1, Lcn/manstep/phonemirrorBox/i0/f;->S:Landroid/widget/ImageView;

    iget-object v13, v1, Lcn/manstep/phonemirrorBox/i0/f;->d0:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v12, v1, Lcn/manstep/phonemirrorBox/i0/f;->T:Landroid/widget/TextView;

    iget-object v13, v1, Lcn/manstep/phonemirrorBox/i0/f;->k0:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v12, v1, Lcn/manstep/phonemirrorBox/i0/f;->U:Landroid/widget/ImageView;

    iget-object v13, v1, Lcn/manstep/phonemirrorBox/i0/f;->p0:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v12, v1, Lcn/manstep/phonemirrorBox/i0/f;->V:Landroid/widget/TextView;

    iget-object v13, v1, Lcn/manstep/phonemirrorBox/i0/f;->w0:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v12, v1, Lcn/manstep/phonemirrorBox/i0/f;->W:Landroid/widget/ImageView;

    iget-object v13, v1, Lcn/manstep/phonemirrorBox/i0/f;->a0:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v12, v1, Lcn/manstep/phonemirrorBox/i0/f;->X:Landroid/widget/RadioButton;

    iget-object v13, v1, Lcn/manstep/phonemirrorBox/i0/f;->i0:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v13}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v12, v1, Lcn/manstep/phonemirrorBox/i0/f;->Y:Landroid/widget/RadioButton;

    iget-object v13, v1, Lcn/manstep/phonemirrorBox/i0/f;->n0:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v13}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3a9

    :cond_3a5
    move/from16 v36, v12

    move/from16 v35, v13

    :goto_3a9
    and-long v12, v2, v28

    const-wide/16 v28, 0x0

    cmp-long v37, v12, v28

    if-eqz v37, :cond_3bb

    .line 87
    iget-object v12, v1, Lcn/manstep/phonemirrorBox/i0/f;->y:Landroid/widget/RadioButton;

    invoke-static {v12, v8}, Landroidx/databinding/j/a;->a(Landroid/widget/CompoundButton;Z)V

    .line 88
    iget-object v8, v1, Lcn/manstep/phonemirrorBox/i0/f;->z:Landroid/widget/RadioButton;

    invoke-static {v8, v0}, Landroidx/databinding/j/a;->a(Landroid/widget/CompoundButton;Z)V

    :cond_3bb
    and-long v12, v2, v26

    cmp-long v0, v12, v28

    if-eqz v0, :cond_3cb

    .line 89
    iget-object v0, v1, Lcn/manstep/phonemirrorBox/i0/f;->A:Landroid/widget/RadioButton;

    invoke-static {v0, v4}, Landroidx/databinding/j/a;->a(Landroid/widget/CompoundButton;Z)V

    .line 90
    iget-object v0, v1, Lcn/manstep/phonemirrorBox/i0/f;->B:Landroid/widget/RadioButton;

    invoke-static {v0, v9}, Landroidx/databinding/j/a;->a(Landroid/widget/CompoundButton;Z)V

    :cond_3cb
    and-long v8, v2, v24

    cmp-long v0, v8, v28

    if-eqz v0, :cond_3db

    .line 91
    iget-object v0, v1, Lcn/manstep/phonemirrorBox/i0/f;->C:Landroid/widget/RadioButton;

    invoke-static {v0, v15}, Landroidx/databinding/j/a;->a(Landroid/widget/CompoundButton;Z)V

    .line 92
    iget-object v0, v1, Lcn/manstep/phonemirrorBox/i0/f;->D:Landroid/widget/RadioButton;

    invoke-static {v0, v5}, Landroidx/databinding/j/a;->a(Landroid/widget/CompoundButton;Z)V

    :cond_3db
    and-long v4, v2, v20

    cmp-long v0, v4, v28

    if-eqz v0, :cond_3eb

    .line 93
    iget-object v0, v1, Lcn/manstep/phonemirrorBox/i0/f;->E:Landroid/widget/RadioButton;

    invoke-static {v0, v6}, Landroidx/databinding/j/a;->a(Landroid/widget/CompoundButton;Z)V

    .line 94
    iget-object v0, v1, Lcn/manstep/phonemirrorBox/i0/f;->F:Landroid/widget/RadioButton;

    invoke-static {v0, v7}, Landroidx/databinding/j/a;->a(Landroid/widget/CompoundButton;Z)V

    :cond_3eb
    and-long v4, v2, v22

    cmp-long v0, v4, v28

    if-eqz v0, :cond_3fb

    .line 95
    iget-object v0, v1, Lcn/manstep/phonemirrorBox/i0/f;->H:Landroid/widget/RadioButton;

    invoke-static {v0, v10}, Landroidx/databinding/j/a;->a(Landroid/widget/CompoundButton;Z)V

    .line 96
    iget-object v0, v1, Lcn/manstep/phonemirrorBox/i0/f;->J:Landroid/widget/RadioButton;

    invoke-static {v0, v11}, Landroidx/databinding/j/a;->a(Landroid/widget/CompoundButton;Z)V

    :cond_3fb
    const-wide/16 v4, 0x6020

    and-long/2addr v4, v2

    cmp-long v0, v4, v28

    if-eqz v0, :cond_407

    .line 97
    iget-object v0, v1, Lcn/manstep/phonemirrorBox/i0/f;->I:Landroid/widget/TextView;

    invoke-static {v0, v14}, Landroidx/databinding/j/b;->b(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_407
    const-wide/16 v4, 0x6100

    and-long/2addr v4, v2

    cmp-long v0, v4, v28

    if-eqz v0, :cond_41c

    .line 98
    iget-object v0, v1, Lcn/manstep/phonemirrorBox/i0/f;->L:Landroid/widget/RadioButton;

    move/from16 v4, v36

    invoke-static {v0, v4}, Landroidx/databinding/j/a;->a(Landroid/widget/CompoundButton;Z)V

    .line 99
    iget-object v0, v1, Lcn/manstep/phonemirrorBox/i0/f;->M:Landroid/widget/RadioButton;

    move/from16 v5, v35

    invoke-static {v0, v5}, Landroidx/databinding/j/a;->a(Landroid/widget/CompoundButton;Z)V

    :cond_41c
    and-long v4, v2, v30

    cmp-long v0, v4, v28

    if-eqz v0, :cond_429

    .line 100
    iget-object v0, v1, Lcn/manstep/phonemirrorBox/i0/f;->N:Landroid/widget/LinearLayout;

    move/from16 v6, v32

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_429
    and-long v4, v2, v16

    cmp-long v0, v4, v28

    if-eqz v0, :cond_43d

    .line 101
    iget-object v0, v1, Lcn/manstep/phonemirrorBox/i0/f;->O:Landroid/widget/RadioButton;

    move/from16 v4, v54

    invoke-static {v0, v4}, Landroidx/databinding/j/a;->a(Landroid/widget/CompoundButton;Z)V

    .line 102
    iget-object v0, v1, Lcn/manstep/phonemirrorBox/i0/f;->P:Landroid/widget/RadioButton;

    move/from16 v4, v55

    invoke-static {v0, v4}, Landroidx/databinding/j/a;->a(Landroid/widget/CompoundButton;Z)V

    :cond_43d
    and-long v4, v2, v18

    cmp-long v0, v4, v28

    if-eqz v0, :cond_44a

    .line 103
    iget-object v0, v1, Lcn/manstep/phonemirrorBox/i0/f;->T:Landroid/widget/TextView;

    move-object/from16 v7, v58

    invoke-static {v0, v7}, Landroidx/databinding/j/b;->b(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_44a
    const-wide/16 v4, 0x6400

    and-long/2addr v4, v2

    cmp-long v0, v4, v28

    if-eqz v0, :cond_458

    .line 104
    iget-object v0, v1, Lcn/manstep/phonemirrorBox/i0/f;->V:Landroid/widget/TextView;

    move-object/from16 v13, v59

    invoke-static {v0, v13}, Landroidx/databinding/j/b;->b(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_458
    const-wide/16 v4, 0x6800

    and-long/2addr v2, v4

    cmp-long v0, v2, v28

    if-eqz v0, :cond_46d

    .line 105
    iget-object v0, v1, Lcn/manstep/phonemirrorBox/i0/f;->X:Landroid/widget/RadioButton;

    move/from16 v12, v56

    invoke-static {v0, v12}, Landroidx/databinding/j/a;->a(Landroid/widget/CompoundButton;Z)V

    .line 106
    iget-object v0, v1, Lcn/manstep/phonemirrorBox/i0/f;->Y:Landroid/widget/RadioButton;

    move/from16 v14, v57

    invoke-static {v0, v14}, Landroidx/databinding/j/a;->a(Landroid/widget/CompoundButton;Z)V

    :cond_46d
    return-void

    :catchall_46e
    move-exception v0

    .line 107
    :try_start_46f
    monitor-exit p0
    :try_end_470
    .catchall {:try_start_46f .. :try_end_470} :catchall_46e

    throw v0
.end method

.method public v()Z
    .registers 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-wide v0, p0, Lcn/manstep/phonemirrorBox/i0/f;->A0:J

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

    packed-switch p1, :pswitch_data_5a

    const/4 p1, 0x0

    return p1

    .line 1
    :pswitch_5
    check-cast p2, Landroidx/lifecycle/o;

    invoke-direct {p0, p2, p3}, Lcn/manstep/phonemirrorBox/i0/f;->Z(Landroidx/lifecycle/o;I)Z

    move-result p1

    return p1

    .line 2
    :pswitch_c
    check-cast p2, Landroidx/lifecycle/o;

    invoke-direct {p0, p2, p3}, Lcn/manstep/phonemirrorBox/i0/f;->Y(Landroidx/lifecycle/o;I)Z

    move-result p1

    return p1

    .line 3
    :pswitch_13
    check-cast p2, Landroidx/lifecycle/o;

    invoke-direct {p0, p2, p3}, Lcn/manstep/phonemirrorBox/i0/f;->Q(Landroidx/lifecycle/o;I)Z

    move-result p1

    return p1

    .line 4
    :pswitch_1a
    check-cast p2, Landroidx/lifecycle/o;

    invoke-direct {p0, p2, p3}, Lcn/manstep/phonemirrorBox/i0/f;->R(Landroidx/lifecycle/o;I)Z

    move-result p1

    return p1

    .line 5
    :pswitch_21
    check-cast p2, Landroidx/lifecycle/o;

    invoke-direct {p0, p2, p3}, Lcn/manstep/phonemirrorBox/i0/f;->O(Landroidx/lifecycle/o;I)Z

    move-result p1

    return p1

    .line 6
    :pswitch_28
    check-cast p2, Landroidx/lifecycle/o;

    invoke-direct {p0, p2, p3}, Lcn/manstep/phonemirrorBox/i0/f;->X(Landroidx/lifecycle/o;I)Z

    move-result p1

    return p1

    .line 7
    :pswitch_2f
    check-cast p2, Landroidx/lifecycle/o;

    invoke-direct {p0, p2, p3}, Lcn/manstep/phonemirrorBox/i0/f;->W(Landroidx/lifecycle/o;I)Z

    move-result p1

    return p1

    .line 8
    :pswitch_36
    check-cast p2, Landroidx/lifecycle/o;

    invoke-direct {p0, p2, p3}, Lcn/manstep/phonemirrorBox/i0/f;->P(Landroidx/lifecycle/o;I)Z

    move-result p1

    return p1

    .line 9
    :pswitch_3d
    check-cast p2, Landroidx/lifecycle/o;

    invoke-direct {p0, p2, p3}, Lcn/manstep/phonemirrorBox/i0/f;->S(Landroidx/lifecycle/o;I)Z

    move-result p1

    return p1

    .line 10
    :pswitch_44
    check-cast p2, Landroidx/lifecycle/o;

    invoke-direct {p0, p2, p3}, Lcn/manstep/phonemirrorBox/i0/f;->V(Landroidx/lifecycle/o;I)Z

    move-result p1

    return p1

    .line 11
    :pswitch_4b
    check-cast p2, Landroidx/lifecycle/o;

    invoke-direct {p0, p2, p3}, Lcn/manstep/phonemirrorBox/i0/f;->U(Landroidx/lifecycle/o;I)Z

    move-result p1

    return p1

    .line 12
    :pswitch_52
    check-cast p2, Landroidx/lifecycle/o;

    invoke-direct {p0, p2, p3}, Lcn/manstep/phonemirrorBox/i0/f;->T(Landroidx/lifecycle/o;I)Z

    move-result p1

    return p1

    nop

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_52
        :pswitch_4b
        :pswitch_44
        :pswitch_3d
        :pswitch_36
        :pswitch_2f
        :pswitch_28
        :pswitch_21
        :pswitch_1a
        :pswitch_13
        :pswitch_c
        :pswitch_5
    .end packed-switch
.end method
