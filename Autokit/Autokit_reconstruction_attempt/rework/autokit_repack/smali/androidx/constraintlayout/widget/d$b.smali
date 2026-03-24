.class public Landroidx/constraintlayout/widget/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field private static k0:Landroid/util/SparseIntArray;


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:I

.field public E:I

.field public F:I

.field public G:I

.field public H:I

.field public I:I

.field public J:I

.field public K:I

.field public L:I

.field public M:I

.field public N:I

.field public O:I

.field public P:F

.field public Q:F

.field public R:I

.field public S:I

.field public T:I

.field public U:I

.field public V:I

.field public W:I

.field public X:I

.field public Y:I

.field public Z:F

.field public a:Z

.field public a0:F

.field public b:Z

.field public b0:I

.field public c:I

.field public c0:I

.field public d:I

.field public d0:I

.field public e:I

.field public e0:[I

.field public f:I

.field public f0:Ljava/lang/String;

.field public g:F

.field public g0:Ljava/lang/String;

.field public h:I

.field public h0:Z

.field public i:I

.field public i0:Z

.field public j:I

.field public j0:Z

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:F

.field public v:F

.field public w:Ljava/lang/String;

.field public x:I

.field public y:I

.field public z:F


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroidx/constraintlayout/widget/d$b;->k0:Landroid/util/SparseIntArray;

    .line 2
    sget v1, Landroidx/constraintlayout/widget/i;->Layout_layout_constraintLeft_toLeftOf:I

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 3
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->k0:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Layout_layout_constraintLeft_toRightOf:I

    const/16 v2, 0x19

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 4
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->k0:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Layout_layout_constraintRight_toLeftOf:I

    const/16 v2, 0x1c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 5
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->k0:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Layout_layout_constraintRight_toRightOf:I

    const/16 v2, 0x1d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 6
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->k0:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Layout_layout_constraintTop_toTopOf:I

    const/16 v2, 0x23

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 7
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->k0:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Layout_layout_constraintTop_toBottomOf:I

    const/16 v2, 0x22

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 8
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->k0:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Layout_layout_constraintBottom_toTopOf:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 9
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->k0:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Layout_layout_constraintBottom_toBottomOf:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 10
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->k0:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Layout_layout_constraintBaseline_toBaselineOf:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 11
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->k0:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Layout_layout_editor_absoluteX:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 12
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->k0:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Layout_layout_editor_absoluteY:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 13
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->k0:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Layout_layout_constraintGuide_begin:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 14
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->k0:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Layout_layout_constraintGuide_end:I

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 15
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->k0:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Layout_layout_constraintGuide_percent:I

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 16
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->k0:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Layout_android_orientation:I

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 17
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->k0:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Layout_layout_constraintStart_toEndOf:I

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 18
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->k0:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Layout_layout_constraintStart_toStartOf:I

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 19
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->k0:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Layout_layout_constraintEnd_toStartOf:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 20
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->k0:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Layout_layout_constraintEnd_toEndOf:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 21
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->k0:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Layout_layout_goneMarginLeft:I

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 22
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->k0:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Layout_layout_goneMarginTop:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 23
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->k0:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Layout_layout_goneMarginRight:I

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 24
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->k0:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Layout_layout_goneMarginBottom:I

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 25
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->k0:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Layout_layout_goneMarginStart:I

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 26
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->k0:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Layout_layout_goneMarginEnd:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 27
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->k0:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Layout_layout_constraintVertical_weight:I

    const/16 v2, 0x26

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 28
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->k0:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Layout_layout_constraintHorizontal_weight:I

    const/16 v2, 0x25

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 29
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->k0:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Layout_layout_constraintHorizontal_chainStyle:I

    const/16 v2, 0x27

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 30
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->k0:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Layout_layout_constraintVertical_chainStyle:I

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 31
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->k0:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Layout_layout_constraintHorizontal_bias:I

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 32
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->k0:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Layout_layout_constraintVertical_bias:I

    const/16 v2, 0x24

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 33
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->k0:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Layout_layout_constraintDimensionRatio:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 34
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->k0:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Layout_layout_constraintLeft_creator:I

    const/16 v2, 0x4c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 35
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->k0:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Layout_layout_constraintTop_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 36
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->k0:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Layout_layout_constraintRight_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 37
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->k0:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Layout_layout_constraintBottom_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 38
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->k0:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Layout_layout_constraintBaseline_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 39
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->k0:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Layout_android_layout_marginLeft:I

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 40
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->k0:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Layout_android_layout_marginRight:I

    const/16 v2, 0x1b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 41
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->k0:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Layout_android_layout_marginStart:I

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 42
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->k0:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Layout_android_layout_marginEnd:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 43
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->k0:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Layout_android_layout_marginTop:I

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 44
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->k0:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Layout_android_layout_marginBottom:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 45
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->k0:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Layout_android_layout_width:I

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 46
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->k0:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Layout_android_layout_height:I

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 47
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->k0:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Layout_layout_constraintCircle:I

    const/16 v2, 0x3d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 48
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->k0:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Layout_layout_constraintCircleRadius:I

    const/16 v2, 0x3e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 49
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->k0:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Layout_layout_constraintCircleAngle:I

    const/16 v2, 0x3f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 50
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->k0:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Layout_layout_constraintWidth_percent:I

    const/16 v2, 0x45

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 51
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->k0:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Layout_layout_constraintHeight_percent:I

    const/16 v2, 0x46

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 52
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->k0:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Layout_chainUseRtl:I

    const/16 v2, 0x47

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 53
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->k0:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Layout_barrierDirection:I

    const/16 v2, 0x48

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 54
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->k0:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Layout_barrierMargin:I

    const/16 v2, 0x49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 55
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->k0:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Layout_constraint_referenced_ids:I

    const/16 v2, 0x4a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 56
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->k0:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Layout_barrierAllowsGoneWidgets:I

    const/16 v2, 0x4b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/d$b;->a:Z

    .line 3
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/d$b;->b:Z

    const/4 v1, -0x1

    .line 4
    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->e:I

    .line 5
    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->f:I

    const/high16 v2, -0x40800000    # -1.0f

    .line 6
    iput v2, p0, Landroidx/constraintlayout/widget/d$b;->g:F

    .line 7
    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->h:I

    .line 8
    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->i:I

    .line 9
    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->j:I

    .line 10
    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->k:I

    .line 11
    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->l:I

    .line 12
    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->m:I

    .line 13
    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->n:I

    .line 14
    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->o:I

    .line 15
    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->p:I

    .line 16
    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->q:I

    .line 17
    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->r:I

    .line 18
    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->s:I

    .line 19
    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->t:I

    const/high16 v3, 0x3f000000    # 0.5f

    .line 20
    iput v3, p0, Landroidx/constraintlayout/widget/d$b;->u:F

    .line 21
    iput v3, p0, Landroidx/constraintlayout/widget/d$b;->v:F

    const/4 v3, 0x0

    .line 22
    iput-object v3, p0, Landroidx/constraintlayout/widget/d$b;->w:Ljava/lang/String;

    .line 23
    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->x:I

    .line 24
    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->y:I

    const/4 v3, 0x0

    .line 25
    iput v3, p0, Landroidx/constraintlayout/widget/d$b;->z:F

    .line 26
    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->A:I

    .line 27
    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->B:I

    .line 28
    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->C:I

    .line 29
    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->D:I

    .line 30
    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->E:I

    .line 31
    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->F:I

    .line 32
    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->G:I

    .line 33
    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->H:I

    .line 34
    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->I:I

    .line 35
    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->J:I

    .line 36
    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->K:I

    .line 37
    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->L:I

    .line 38
    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->M:I

    .line 39
    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->N:I

    .line 40
    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->O:I

    .line 41
    iput v2, p0, Landroidx/constraintlayout/widget/d$b;->P:F

    .line 42
    iput v2, p0, Landroidx/constraintlayout/widget/d$b;->Q:F

    .line 43
    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->R:I

    .line 44
    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->S:I

    .line 45
    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->T:I

    .line 46
    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->U:I

    .line 47
    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->V:I

    .line 48
    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->W:I

    .line 49
    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->X:I

    .line 50
    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->Y:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 51
    iput v2, p0, Landroidx/constraintlayout/widget/d$b;->Z:F

    .line 52
    iput v2, p0, Landroidx/constraintlayout/widget/d$b;->a0:F

    .line 53
    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->b0:I

    .line 54
    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->c0:I

    .line 55
    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->d0:I

    .line 56
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/d$b;->h0:Z

    .line 57
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/d$b;->i0:Z

    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/d$b;->j0:Z

    return-void
.end method


# virtual methods
.method public a(Landroidx/constraintlayout/widget/d$b;)V
    .registers 4

    .line 1
    iget-boolean v0, p1, Landroidx/constraintlayout/widget/d$b;->a:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/d$b;->a:Z

    .line 2
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->c:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->c:I

    .line 3
    iget-boolean v0, p1, Landroidx/constraintlayout/widget/d$b;->b:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/d$b;->b:Z

    .line 4
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->d:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->d:I

    .line 5
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->e:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->e:I

    .line 6
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->f:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->f:I

    .line 7
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->g:F

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->g:F

    .line 8
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->h:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->h:I

    .line 9
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->i:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->i:I

    .line 10
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->j:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->j:I

    .line 11
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->k:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->k:I

    .line 12
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->l:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->l:I

    .line 13
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->m:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->m:I

    .line 14
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->n:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->n:I

    .line 15
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->o:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->o:I

    .line 16
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->p:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->p:I

    .line 17
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->q:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->q:I

    .line 18
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->r:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->r:I

    .line 19
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->s:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->s:I

    .line 20
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->t:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->t:I

    .line 21
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->u:F

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->u:F

    .line 22
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->v:F

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->v:F

    .line 23
    iget-object v0, p1, Landroidx/constraintlayout/widget/d$b;->w:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/widget/d$b;->w:Ljava/lang/String;

    .line 24
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->x:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->x:I

    .line 25
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->y:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->y:I

    .line 26
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->z:F

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->z:F

    .line 27
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->A:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->A:I

    .line 28
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->B:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->B:I

    .line 29
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->C:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->C:I

    .line 30
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->D:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->D:I

    .line 31
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->E:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->E:I

    .line 32
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->F:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->F:I

    .line 33
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->G:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->G:I

    .line 34
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->H:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->H:I

    .line 35
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->I:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->I:I

    .line 36
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->J:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->J:I

    .line 37
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->K:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->K:I

    .line 38
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->L:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->L:I

    .line 39
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->M:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->M:I

    .line 40
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->N:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->N:I

    .line 41
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->O:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->O:I

    .line 42
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->P:F

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->P:F

    .line 43
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->Q:F

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->Q:F

    .line 44
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->R:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->R:I

    .line 45
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->S:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->S:I

    .line 46
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->T:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->T:I

    .line 47
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->U:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->U:I

    .line 48
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->V:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->V:I

    .line 49
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->W:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->W:I

    .line 50
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->X:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->X:I

    .line 51
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->Y:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->Y:I

    .line 52
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->Z:F

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->Z:F

    .line 53
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->a0:F

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->a0:F

    .line 54
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->b0:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->b0:I

    .line 55
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->c0:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->c0:I

    .line 56
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->d0:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->d0:I

    .line 57
    iget-object v0, p1, Landroidx/constraintlayout/widget/d$b;->g0:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/widget/d$b;->g0:Ljava/lang/String;

    .line 58
    iget-object v0, p1, Landroidx/constraintlayout/widget/d$b;->e0:[I

    if-eqz v0, :cond_f0

    .line 59
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/widget/d$b;->e0:[I

    goto :goto_f3

    :cond_f0
    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Landroidx/constraintlayout/widget/d$b;->e0:[I

    .line 61
    :goto_f3
    iget-object v0, p1, Landroidx/constraintlayout/widget/d$b;->f0:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/widget/d$b;->f0:Ljava/lang/String;

    .line 62
    iget-boolean v0, p1, Landroidx/constraintlayout/widget/d$b;->h0:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/d$b;->h0:Z

    .line 63
    iget-boolean v0, p1, Landroidx/constraintlayout/widget/d$b;->i0:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/d$b;->i0:Z

    .line 64
    iget-boolean p1, p1, Landroidx/constraintlayout/widget/d$b;->j0:Z

    iput-boolean p1, p0, Landroidx/constraintlayout/widget/d$b;->j0:Z

    return-void
.end method

.method b(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    .line 1
    sget-object v0, Landroidx/constraintlayout/widget/i;->Layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    .line 2
    iput-boolean p2, p0, Landroidx/constraintlayout/widget/d$b;->b:Z

    .line 3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v0, 0x0

    :goto_e
    if-ge v0, p2, :cond_2b1

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 5
    sget-object v2, Landroidx/constraintlayout/widget/d$b;->k0:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    const/16 v3, 0x50

    if-eq v2, v3, :cond_2a5

    const/16 v3, 0x51

    if-eq v2, v3, :cond_29c

    const/16 v3, 0x11

    packed-switch v2, :pswitch_data_2b6

    packed-switch v2, :pswitch_data_30a

    packed-switch v2, :pswitch_data_31a

    const/high16 v3, 0x3f800000    # 1.0f

    const-string v4, "   "

    packed-switch v2, :pswitch_data_324

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown attribute 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroidx/constraintlayout/widget/d$b;->k0:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_2ad

    .line 8
    :pswitch_56
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroidx/constraintlayout/widget/d$b;->g0:Ljava/lang/String;

    goto/16 :goto_2ad

    .line 9
    :pswitch_5e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unused attribute 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroidx/constraintlayout/widget/d$b;->k0:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_2ad

    .line 11
    :pswitch_80
    iget-boolean v2, p0, Landroidx/constraintlayout/widget/d$b;->j0:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/constraintlayout/widget/d$b;->j0:Z

    goto/16 :goto_2ad

    .line 12
    :pswitch_8a
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroidx/constraintlayout/widget/d$b;->f0:Ljava/lang/String;

    goto/16 :goto_2ad

    .line 13
    :pswitch_92
    iget v2, p0, Landroidx/constraintlayout/widget/d$b;->c0:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->c0:I

    goto/16 :goto_2ad

    .line 14
    :pswitch_9c
    iget v2, p0, Landroidx/constraintlayout/widget/d$b;->b0:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->b0:I

    goto/16 :goto_2ad

    .line 15
    :pswitch_a6
    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->a0:F

    goto/16 :goto_2ad

    .line 16
    :pswitch_ae
    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->Z:F

    goto/16 :goto_2ad

    .line 17
    :pswitch_b6
    iget v2, p0, Landroidx/constraintlayout/widget/d$b;->z:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->z:F

    goto/16 :goto_2ad

    .line 18
    :pswitch_c0
    iget v2, p0, Landroidx/constraintlayout/widget/d$b;->y:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->y:I

    goto/16 :goto_2ad

    .line 19
    :pswitch_ca
    iget v2, p0, Landroidx/constraintlayout/widget/d$b;->x:I

    invoke-static {p1, v1, v2}, Landroidx/constraintlayout/widget/d;->a(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->x:I

    goto/16 :goto_2ad

    .line 20
    :pswitch_d4
    iget v2, p0, Landroidx/constraintlayout/widget/d$b;->Y:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->Y:I

    goto/16 :goto_2ad

    .line 21
    :pswitch_de
    iget v2, p0, Landroidx/constraintlayout/widget/d$b;->X:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->X:I

    goto/16 :goto_2ad

    .line 22
    :pswitch_e8
    iget v2, p0, Landroidx/constraintlayout/widget/d$b;->W:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->W:I

    goto/16 :goto_2ad

    .line 23
    :pswitch_f2
    iget v2, p0, Landroidx/constraintlayout/widget/d$b;->V:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->V:I

    goto/16 :goto_2ad

    .line 24
    :pswitch_fc
    iget v2, p0, Landroidx/constraintlayout/widget/d$b;->U:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->U:I

    goto/16 :goto_2ad

    .line 25
    :pswitch_106
    iget v2, p0, Landroidx/constraintlayout/widget/d$b;->T:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->T:I

    goto/16 :goto_2ad

    .line 26
    :pswitch_110
    iget v2, p0, Landroidx/constraintlayout/widget/d$b;->S:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->S:I

    goto/16 :goto_2ad

    .line 27
    :pswitch_11a
    iget v2, p0, Landroidx/constraintlayout/widget/d$b;->R:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->R:I

    goto/16 :goto_2ad

    .line 28
    :pswitch_124
    iget v2, p0, Landroidx/constraintlayout/widget/d$b;->P:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->P:F

    goto/16 :goto_2ad

    .line 29
    :pswitch_12e
    iget v2, p0, Landroidx/constraintlayout/widget/d$b;->Q:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->Q:F

    goto/16 :goto_2ad

    .line 30
    :pswitch_138
    iget v2, p0, Landroidx/constraintlayout/widget/d$b;->v:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->v:F

    goto/16 :goto_2ad

    .line 31
    :pswitch_142
    iget v2, p0, Landroidx/constraintlayout/widget/d$b;->l:I

    invoke-static {p1, v1, v2}, Landroidx/constraintlayout/widget/d;->a(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->l:I

    goto/16 :goto_2ad

    .line 32
    :pswitch_14c
    iget v2, p0, Landroidx/constraintlayout/widget/d$b;->m:I

    invoke-static {p1, v1, v2}, Landroidx/constraintlayout/widget/d;->a(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->m:I

    goto/16 :goto_2ad

    .line 33
    :pswitch_156
    iget v2, p0, Landroidx/constraintlayout/widget/d$b;->F:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->F:I

    goto/16 :goto_2ad

    .line 34
    :pswitch_160
    iget v2, p0, Landroidx/constraintlayout/widget/d$b;->r:I

    invoke-static {p1, v1, v2}, Landroidx/constraintlayout/widget/d;->a(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->r:I

    goto/16 :goto_2ad

    .line 35
    :pswitch_16a
    iget v2, p0, Landroidx/constraintlayout/widget/d$b;->q:I

    invoke-static {p1, v1, v2}, Landroidx/constraintlayout/widget/d;->a(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->q:I

    goto/16 :goto_2ad

    .line 36
    :pswitch_174
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_2ad

    .line 37
    iget v2, p0, Landroidx/constraintlayout/widget/d$b;->I:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->I:I

    goto/16 :goto_2ad

    .line 38
    :pswitch_182
    iget v2, p0, Landroidx/constraintlayout/widget/d$b;->k:I

    invoke-static {p1, v1, v2}, Landroidx/constraintlayout/widget/d;->a(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->k:I

    goto/16 :goto_2ad

    .line 39
    :pswitch_18c
    iget v2, p0, Landroidx/constraintlayout/widget/d$b;->j:I

    invoke-static {p1, v1, v2}, Landroidx/constraintlayout/widget/d;->a(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->j:I

    goto/16 :goto_2ad

    .line 40
    :pswitch_196
    iget v2, p0, Landroidx/constraintlayout/widget/d$b;->E:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->E:I

    goto/16 :goto_2ad

    .line 41
    :pswitch_1a0
    iget v2, p0, Landroidx/constraintlayout/widget/d$b;->C:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->C:I

    goto/16 :goto_2ad

    .line 42
    :pswitch_1aa
    iget v2, p0, Landroidx/constraintlayout/widget/d$b;->i:I

    invoke-static {p1, v1, v2}, Landroidx/constraintlayout/widget/d;->a(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->i:I

    goto/16 :goto_2ad

    .line 43
    :pswitch_1b4
    iget v2, p0, Landroidx/constraintlayout/widget/d$b;->h:I

    invoke-static {p1, v1, v2}, Landroidx/constraintlayout/widget/d;->a(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->h:I

    goto/16 :goto_2ad

    .line 44
    :pswitch_1be
    iget v2, p0, Landroidx/constraintlayout/widget/d$b;->D:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->D:I

    goto/16 :goto_2ad

    .line 45
    :pswitch_1c8
    iget v2, p0, Landroidx/constraintlayout/widget/d$b;->c:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->c:I

    goto/16 :goto_2ad

    .line 46
    :pswitch_1d2
    iget v2, p0, Landroidx/constraintlayout/widget/d$b;->d:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->d:I

    goto/16 :goto_2ad

    .line 47
    :pswitch_1dc
    iget v2, p0, Landroidx/constraintlayout/widget/d$b;->u:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->u:F

    goto/16 :goto_2ad

    .line 48
    :pswitch_1e6
    iget v2, p0, Landroidx/constraintlayout/widget/d$b;->g:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->g:F

    goto/16 :goto_2ad

    .line 49
    :pswitch_1f0
    iget v2, p0, Landroidx/constraintlayout/widget/d$b;->f:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->f:I

    goto/16 :goto_2ad

    .line 50
    :pswitch_1fa
    iget v2, p0, Landroidx/constraintlayout/widget/d$b;->e:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->e:I

    goto/16 :goto_2ad

    .line 51
    :pswitch_204
    iget v2, p0, Landroidx/constraintlayout/widget/d$b;->K:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->K:I

    goto/16 :goto_2ad

    .line 52
    :pswitch_20e
    iget v2, p0, Landroidx/constraintlayout/widget/d$b;->O:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->O:I

    goto/16 :goto_2ad

    .line 53
    :pswitch_218
    iget v2, p0, Landroidx/constraintlayout/widget/d$b;->L:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->L:I

    goto/16 :goto_2ad

    .line 54
    :pswitch_222
    iget v2, p0, Landroidx/constraintlayout/widget/d$b;->J:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->J:I

    goto/16 :goto_2ad

    .line 55
    :pswitch_22c
    iget v2, p0, Landroidx/constraintlayout/widget/d$b;->N:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->N:I

    goto/16 :goto_2ad

    .line 56
    :pswitch_236
    iget v2, p0, Landroidx/constraintlayout/widget/d$b;->M:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->M:I

    goto/16 :goto_2ad

    .line 57
    :pswitch_240
    iget v2, p0, Landroidx/constraintlayout/widget/d$b;->s:I

    invoke-static {p1, v1, v2}, Landroidx/constraintlayout/widget/d;->a(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->s:I

    goto :goto_2ad

    .line 58
    :pswitch_249
    iget v2, p0, Landroidx/constraintlayout/widget/d$b;->t:I

    invoke-static {p1, v1, v2}, Landroidx/constraintlayout/widget/d;->a(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->t:I

    goto :goto_2ad

    .line 59
    :pswitch_252
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_2ad

    .line 60
    iget v2, p0, Landroidx/constraintlayout/widget/d$b;->H:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->H:I

    goto :goto_2ad

    .line 61
    :pswitch_25f
    iget v2, p0, Landroidx/constraintlayout/widget/d$b;->B:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->B:I

    goto :goto_2ad

    .line 62
    :pswitch_268
    iget v2, p0, Landroidx/constraintlayout/widget/d$b;->A:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->A:I

    goto :goto_2ad

    .line 63
    :pswitch_271
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroidx/constraintlayout/widget/d$b;->w:Ljava/lang/String;

    goto :goto_2ad

    .line 64
    :pswitch_278
    iget v2, p0, Landroidx/constraintlayout/widget/d$b;->n:I

    invoke-static {p1, v1, v2}, Landroidx/constraintlayout/widget/d;->a(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->n:I

    goto :goto_2ad

    .line 65
    :pswitch_281
    iget v2, p0, Landroidx/constraintlayout/widget/d$b;->o:I

    invoke-static {p1, v1, v2}, Landroidx/constraintlayout/widget/d;->a(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->o:I

    goto :goto_2ad

    .line 66
    :pswitch_28a
    iget v2, p0, Landroidx/constraintlayout/widget/d$b;->G:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->G:I

    goto :goto_2ad

    .line 67
    :pswitch_293
    iget v2, p0, Landroidx/constraintlayout/widget/d$b;->p:I

    invoke-static {p1, v1, v2}, Landroidx/constraintlayout/widget/d;->a(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->p:I

    goto :goto_2ad

    .line 68
    :cond_29c
    iget-boolean v2, p0, Landroidx/constraintlayout/widget/d$b;->i0:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/constraintlayout/widget/d$b;->i0:Z

    goto :goto_2ad

    .line 69
    :cond_2a5
    iget-boolean v2, p0, Landroidx/constraintlayout/widget/d$b;->h0:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/constraintlayout/widget/d$b;->h0:Z

    :cond_2ad
    :goto_2ad
    :pswitch_2ad
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_e

    .line 70
    :cond_2b1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    nop

    :pswitch_data_2b6
    .packed-switch 0x1
        :pswitch_293
        :pswitch_28a
        :pswitch_281
        :pswitch_278
        :pswitch_271
        :pswitch_268
        :pswitch_25f
        :pswitch_252
        :pswitch_249
        :pswitch_240
        :pswitch_236
        :pswitch_22c
        :pswitch_222
        :pswitch_218
        :pswitch_20e
        :pswitch_204
        :pswitch_1fa
        :pswitch_1f0
        :pswitch_1e6
        :pswitch_1dc
        :pswitch_1d2
        :pswitch_1c8
        :pswitch_1be
        :pswitch_1b4
        :pswitch_1aa
        :pswitch_1a0
        :pswitch_196
        :pswitch_18c
        :pswitch_182
        :pswitch_174
        :pswitch_16a
        :pswitch_160
        :pswitch_156
        :pswitch_14c
        :pswitch_142
        :pswitch_138
        :pswitch_12e
        :pswitch_124
        :pswitch_11a
        :pswitch_110
    .end packed-switch

    :pswitch_data_30a
    .packed-switch 0x36
        :pswitch_106
        :pswitch_fc
        :pswitch_f2
        :pswitch_e8
        :pswitch_de
        :pswitch_d4
    .end packed-switch

    :pswitch_data_31a
    .packed-switch 0x3d
        :pswitch_ca
        :pswitch_c0
        :pswitch_b6
    .end packed-switch

    :pswitch_data_324
    .packed-switch 0x45
        :pswitch_ae
        :pswitch_a6
        :pswitch_2ad
        :pswitch_9c
        :pswitch_92
        :pswitch_8a
        :pswitch_80
        :pswitch_5e
        :pswitch_56
    .end packed-switch
.end method
