.class public Landroidx/constraintlayout/widget/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/d$a;,
        Landroidx/constraintlayout/widget/d$c;,
        Landroidx/constraintlayout/widget/d$d;,
        Landroidx/constraintlayout/widget/d$e;,
        Landroidx/constraintlayout/widget/d$b;
    }
.end annotation


# static fields
.field private static final d:[I

.field private static e:Landroid/util/SparseIntArray;


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/widget/a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroidx/constraintlayout/widget/d$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_304

    sput-object v1, Landroidx/constraintlayout/widget/d;->d:[I

    .line 2
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    .line 3
    sget v2, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintLeft_toLeftOf:I

    const/16 v3, 0x19

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 4
    sget-object v1, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v2, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintLeft_toRightOf:I

    const/16 v3, 0x1a

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 5
    sget-object v1, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v2, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintRight_toLeftOf:I

    const/16 v3, 0x1d

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 6
    sget-object v1, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v2, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintRight_toRightOf:I

    const/16 v3, 0x1e

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 7
    sget-object v1, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v2, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintTop_toTopOf:I

    const/16 v3, 0x24

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 8
    sget-object v1, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v2, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintTop_toBottomOf:I

    const/16 v3, 0x23

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 9
    sget-object v1, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v2, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintBottom_toTopOf:I

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 10
    sget-object v1, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v2, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintBottom_toBottomOf:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 11
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintBaseline_toBaselineOf:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 12
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_editor_absoluteX:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 13
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_editor_absoluteY:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 14
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintGuide_begin:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 15
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintGuide_end:I

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 16
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintGuide_percent:I

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 17
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_android_orientation:I

    const/16 v2, 0x1b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 18
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintStart_toEndOf:I

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 19
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintStart_toStartOf:I

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 20
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintEnd_toStartOf:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 21
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintEnd_toEndOf:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 22
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_goneMarginLeft:I

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 23
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_goneMarginTop:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 24
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_goneMarginRight:I

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 25
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_goneMarginBottom:I

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 26
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_goneMarginStart:I

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 27
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_goneMarginEnd:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 28
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintVertical_weight:I

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 29
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintHorizontal_weight:I

    const/16 v2, 0x27

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 30
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintHorizontal_chainStyle:I

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 31
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintVertical_chainStyle:I

    const/16 v2, 0x2a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 32
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintHorizontal_bias:I

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 33
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintVertical_bias:I

    const/16 v2, 0x25

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 34
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintDimensionRatio:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 35
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintLeft_creator:I

    const/16 v2, 0x52

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 36
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintTop_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 37
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintRight_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 38
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintBottom_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 39
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintBaseline_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 40
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_android_layout_marginLeft:I

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 41
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_android_layout_marginRight:I

    const/16 v2, 0x1c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 42
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_android_layout_marginStart:I

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 43
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_android_layout_marginEnd:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 44
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_android_layout_marginTop:I

    const/16 v2, 0x22

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 45
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_android_layout_marginBottom:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 46
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_android_layout_width:I

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 47
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_android_layout_height:I

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 48
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_android_visibility:I

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 49
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_android_alpha:I

    const/16 v2, 0x2b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 50
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_android_elevation:I

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 51
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_android_rotationX:I

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 52
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_android_rotationY:I

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 53
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_android_rotation:I

    const/16 v2, 0x3c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 54
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_android_scaleX:I

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 55
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_android_scaleY:I

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 56
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_android_transformPivotX:I

    const/16 v2, 0x31

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 57
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_android_transformPivotY:I

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 58
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_android_translationX:I

    const/16 v2, 0x33

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 59
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_android_translationY:I

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 60
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_android_translationZ:I

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 61
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintWidth_default:I

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 62
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintHeight_default:I

    const/16 v2, 0x37

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 63
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintWidth_max:I

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 64
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintHeight_max:I

    const/16 v2, 0x39

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 65
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintWidth_min:I

    const/16 v2, 0x3a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 66
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintHeight_min:I

    const/16 v2, 0x3b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 67
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintCircle:I

    const/16 v2, 0x3d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 68
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintCircleRadius:I

    const/16 v2, 0x3e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 69
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintCircleAngle:I

    const/16 v2, 0x3f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 70
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_animate_relativeTo:I

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 71
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_transitionEasing:I

    const/16 v2, 0x41

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 72
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_drawPath:I

    const/16 v2, 0x42

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 73
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_transitionPathRotate:I

    const/16 v2, 0x43

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 74
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_motionStagger:I

    const/16 v2, 0x4f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 75
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_android_id:I

    const/16 v2, 0x26

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 76
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_motionProgress:I

    const/16 v2, 0x44

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 77
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintWidth_percent:I

    const/16 v2, 0x45

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 78
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintHeight_percent:I

    const/16 v2, 0x46

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 79
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_chainUseRtl:I

    const/16 v2, 0x47

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 80
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_barrierDirection:I

    const/16 v2, 0x48

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 81
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_barrierMargin:I

    const/16 v2, 0x49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 82
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_constraint_referenced_ids:I

    const/16 v2, 0x4a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 83
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_barrierAllowsGoneWidgets:I

    const/16 v2, 0x4b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 84
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_pathMotionArc:I

    const/16 v2, 0x4c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 85
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintTag:I

    const/16 v2, 0x4d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 86
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_visibilityMode:I

    const/16 v2, 0x4e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 87
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constrainedWidth:I

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 88
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constrainedHeight:I

    const/16 v2, 0x51

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    return-void

    :array_304
    .array-data 4
        0x0
        0x4
        0x8
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/d;->a:Ljava/util/HashMap;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/d;->b:Z

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/d;->c:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic a(Landroid/content/res/TypedArray;II)I
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/constraintlayout/widget/d;->o(Landroid/content/res/TypedArray;II)I

    move-result p0

    return p0
.end method

.method static synthetic b()[I
    .registers 1

    .line 1
    sget-object v0, Landroidx/constraintlayout/widget/d;->d:[I

    return-object v0
.end method

.method private j(Landroid/view/View;Ljava/lang/String;)[I
    .registers 12

    const-string v0, ","

    .line 1
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    array-length v1, p2

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4
    :goto_10
    array-length v5, p2

    if-ge v3, v5, :cond_64

    .line 5
    aget-object v5, p2, v3

    .line 6
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 7
    :try_start_19
    const-class v6, Landroidx/constraintlayout/widget/h;

    .line 8
    invoke-virtual {v6, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    const/4 v7, 0x0

    .line 9
    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_24} :catch_25

    goto :goto_26

    :catch_25
    const/4 v6, 0x0

    :goto_26
    if-nez v6, :cond_36

    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "id"

    .line 12
    invoke-virtual {v6, v5, v8, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    :cond_36
    if-nez v6, :cond_5c

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->isInEditMode()Z

    move-result v7

    if-eqz v7, :cond_5c

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    instance-of v7, v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v7, :cond_5c

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 15
    invoke-virtual {v7, v2, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->g(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_5c

    .line 16
    instance-of v7, v5, Ljava/lang/Integer;

    if-eqz v7, :cond_5c

    .line 17
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :cond_5c
    add-int/lit8 v5, v4, 0x1

    .line 18
    aput v6, v1, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto :goto_10

    .line 19
    :cond_64
    array-length p1, p2

    if-eq v4, p1, :cond_6b

    .line 20
    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    :cond_6b
    return-object v1
.end method

.method private k(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/d$a;
    .registers 5

    .line 1
    new-instance v0, Landroidx/constraintlayout/widget/d$a;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/d$a;-><init>()V

    .line 2
    sget-object v1, Landroidx/constraintlayout/widget/i;->Constraint:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 3
    invoke-direct {p0, p1, v0, p2}, Landroidx/constraintlayout/widget/d;->p(Landroid/content/Context;Landroidx/constraintlayout/widget/d$a;Landroid/content/res/TypedArray;)V

    .line 4
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method private l(I)Landroidx/constraintlayout/widget/d$a;
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/d;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/widget/d;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroidx/constraintlayout/widget/d$a;

    invoke-direct {v2}, Landroidx/constraintlayout/widget/d$a;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_1a
    iget-object v0, p0, Landroidx/constraintlayout/widget/d;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/d$a;

    return-object p1
.end method

.method private static o(Landroid/content/res/TypedArray;II)I
    .registers 4

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_b

    .line 2
    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    :cond_b
    return p2
.end method

.method private p(Landroid/content/Context;Landroidx/constraintlayout/widget/d$a;Landroid/content/res/TypedArray;)V
    .registers 13

    .line 1
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, p1, :cond_45a

    .line 2
    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 3
    sget v3, Landroidx/constraintlayout/widget/i;->Constraint_android_id:I

    const/4 v4, 0x1

    if-eq v2, v3, :cond_29

    sget v3, Landroidx/constraintlayout/widget/i;->Constraint_android_layout_marginStart:I

    if-eq v3, v2, :cond_29

    sget v3, Landroidx/constraintlayout/widget/i;->Constraint_android_layout_marginEnd:I

    if-eq v3, v2, :cond_29

    .line 4
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->c:Landroidx/constraintlayout/widget/d$c;

    iput-boolean v4, v3, Landroidx/constraintlayout/widget/d$c;->a:Z

    .line 5
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iput-boolean v4, v3, Landroidx/constraintlayout/widget/d$b;->b:Z

    .line 6
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->b:Landroidx/constraintlayout/widget/d$d;

    iput-boolean v4, v3, Landroidx/constraintlayout/widget/d$d;->a:Z

    .line 7
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;

    iput-boolean v4, v3, Landroidx/constraintlayout/widget/d$e;->a:Z

    .line 8
    :cond_29
    sget-object v3, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    const-string v5, "   "

    const/high16 v6, 0x3f800000    # 1.0f

    const/16 v7, 0x15

    const/16 v8, 0x11

    packed-switch v3, :pswitch_data_45c

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown attribute 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_456

    .line 11
    :pswitch_5c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unused attribute 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_456

    .line 13
    :pswitch_7e
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iget-boolean v4, v3, Landroidx/constraintlayout/widget/d$b;->i0:Z

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v3, Landroidx/constraintlayout/widget/d$b;->i0:Z

    goto/16 :goto_456

    .line 14
    :pswitch_8a
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iget-boolean v4, v3, Landroidx/constraintlayout/widget/d$b;->h0:Z

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v3, Landroidx/constraintlayout/widget/d$b;->h0:Z

    goto/16 :goto_456

    .line 15
    :pswitch_96
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->c:Landroidx/constraintlayout/widget/d$c;

    iget v4, v3, Landroidx/constraintlayout/widget/d$c;->f:F

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$c;->f:F

    goto/16 :goto_456

    .line 16
    :pswitch_a2
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->b:Landroidx/constraintlayout/widget/d$d;

    iget v4, v3, Landroidx/constraintlayout/widget/d$d;->c:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$d;->c:I

    goto/16 :goto_456

    .line 17
    :pswitch_ae
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    invoke-virtual {p3, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Landroidx/constraintlayout/widget/d$b;->g0:Ljava/lang/String;

    goto/16 :goto_456

    .line 18
    :pswitch_b8
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->c:Landroidx/constraintlayout/widget/d$c;

    iget v4, v3, Landroidx/constraintlayout/widget/d$c;->d:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$c;->d:I

    goto/16 :goto_456

    .line 19
    :pswitch_c4
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iget-boolean v4, v3, Landroidx/constraintlayout/widget/d$b;->j0:Z

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v3, Landroidx/constraintlayout/widget/d$b;->j0:Z

    goto/16 :goto_456

    .line 20
    :pswitch_d0
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    invoke-virtual {p3, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Landroidx/constraintlayout/widget/d$b;->f0:Ljava/lang/String;

    goto/16 :goto_456

    .line 21
    :pswitch_da
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->c0:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->c0:I

    goto/16 :goto_456

    .line 22
    :pswitch_e6
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->b0:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->b0:I

    goto/16 :goto_456

    .line 23
    :pswitch_f2
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    invoke-virtual {p3, v2, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->a0:F

    goto/16 :goto_456

    .line 24
    :pswitch_fc
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    invoke-virtual {p3, v2, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->Z:F

    goto/16 :goto_456

    .line 25
    :pswitch_106
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->b:Landroidx/constraintlayout/widget/d$d;

    iget v4, v3, Landroidx/constraintlayout/widget/d$d;->e:F

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$d;->e:F

    goto/16 :goto_456

    .line 26
    :pswitch_112
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->c:Landroidx/constraintlayout/widget/d$c;

    iget v4, v3, Landroidx/constraintlayout/widget/d$c;->g:F

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$c;->g:F

    goto/16 :goto_456

    .line 27
    :pswitch_11e
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->c:Landroidx/constraintlayout/widget/d$c;

    invoke-virtual {p3, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$c;->e:I

    goto/16 :goto_456

    .line 28
    :pswitch_128
    invoke-virtual {p3, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    .line 29
    iget v3, v3, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_13b

    .line 30
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->c:Landroidx/constraintlayout/widget/d$c;

    invoke-virtual {p3, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Landroidx/constraintlayout/widget/d$c;->c:Ljava/lang/String;

    goto/16 :goto_456

    .line 31
    :cond_13b
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->c:Landroidx/constraintlayout/widget/d$c;

    sget-object v4, Lc/e/a/a/a;->a:[Ljava/lang/String;

    invoke-virtual {p3, v2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    aget-object v2, v4, v2

    iput-object v2, v3, Landroidx/constraintlayout/widget/d$c;->c:Ljava/lang/String;

    goto/16 :goto_456

    .line 32
    :pswitch_149
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->c:Landroidx/constraintlayout/widget/d$c;

    iget v4, v3, Landroidx/constraintlayout/widget/d$c;->b:I

    invoke-static {p3, v2, v4}, Landroidx/constraintlayout/widget/d;->o(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$c;->b:I

    goto/16 :goto_456

    .line 33
    :pswitch_155
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->z:F

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->z:F

    goto/16 :goto_456

    .line 34
    :pswitch_161
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->y:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->y:I

    goto/16 :goto_456

    .line 35
    :pswitch_16d
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->x:I

    invoke-static {p3, v2, v4}, Landroidx/constraintlayout/widget/d;->o(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->x:I

    goto/16 :goto_456

    .line 36
    :pswitch_179
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;

    iget v4, v3, Landroidx/constraintlayout/widget/d$e;->b:F

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$e;->b:F

    goto/16 :goto_456

    .line 37
    :pswitch_185
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->Y:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->Y:I

    goto/16 :goto_456

    .line 38
    :pswitch_191
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->X:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->X:I

    goto/16 :goto_456

    .line 39
    :pswitch_19d
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->W:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->W:I

    goto/16 :goto_456

    .line 40
    :pswitch_1a9
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->V:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->V:I

    goto/16 :goto_456

    .line 41
    :pswitch_1b5
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->U:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->U:I

    goto/16 :goto_456

    .line 42
    :pswitch_1c1
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->T:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->T:I

    goto/16 :goto_456

    .line 43
    :pswitch_1cd
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v7, :cond_456

    .line 44
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;

    iget v4, v3, Landroidx/constraintlayout/widget/d$e;->k:F

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$e;->k:F

    goto/16 :goto_456

    .line 45
    :pswitch_1dd
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;

    iget v4, v3, Landroidx/constraintlayout/widget/d$e;->j:F

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$e;->j:F

    goto/16 :goto_456

    .line 46
    :pswitch_1e9
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;

    iget v4, v3, Landroidx/constraintlayout/widget/d$e;->i:F

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$e;->i:F

    goto/16 :goto_456

    .line 47
    :pswitch_1f5
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;

    iget v4, v3, Landroidx/constraintlayout/widget/d$e;->h:F

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$e;->h:F

    goto/16 :goto_456

    .line 48
    :pswitch_201
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;

    iget v4, v3, Landroidx/constraintlayout/widget/d$e;->g:F

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$e;->g:F

    goto/16 :goto_456

    .line 49
    :pswitch_20d
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;

    iget v4, v3, Landroidx/constraintlayout/widget/d$e;->f:F

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$e;->f:F

    goto/16 :goto_456

    .line 50
    :pswitch_219
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;

    iget v4, v3, Landroidx/constraintlayout/widget/d$e;->e:F

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$e;->e:F

    goto/16 :goto_456

    .line 51
    :pswitch_225
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;

    iget v4, v3, Landroidx/constraintlayout/widget/d$e;->d:F

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$e;->d:F

    goto/16 :goto_456

    .line 52
    :pswitch_231
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;

    iget v4, v3, Landroidx/constraintlayout/widget/d$e;->c:F

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$e;->c:F

    goto/16 :goto_456

    .line 53
    :pswitch_23d
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v7, :cond_456

    .line 54
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;

    iput-boolean v4, v3, Landroidx/constraintlayout/widget/d$e;->l:Z

    .line 55
    iget v4, v3, Landroidx/constraintlayout/widget/d$e;->m:F

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$e;->m:F

    goto/16 :goto_456

    .line 56
    :pswitch_24f
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->b:Landroidx/constraintlayout/widget/d$d;

    iget v4, v3, Landroidx/constraintlayout/widget/d$d;->d:F

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$d;->d:F

    goto/16 :goto_456

    .line 57
    :pswitch_25b
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->S:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->S:I

    goto/16 :goto_456

    .line 58
    :pswitch_267
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->R:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->R:I

    goto/16 :goto_456

    .line 59
    :pswitch_273
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->P:F

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->P:F

    goto/16 :goto_456

    .line 60
    :pswitch_27f
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->Q:F

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->Q:F

    goto/16 :goto_456

    .line 61
    :pswitch_28b
    iget v3, p2, Landroidx/constraintlayout/widget/d$a;->a:I

    invoke-virtual {p3, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p2, Landroidx/constraintlayout/widget/d$a;->a:I

    goto/16 :goto_456

    .line 62
    :pswitch_295
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->v:F

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->v:F

    goto/16 :goto_456

    .line 63
    :pswitch_2a1
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->l:I

    invoke-static {p3, v2, v4}, Landroidx/constraintlayout/widget/d;->o(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->l:I

    goto/16 :goto_456

    .line 64
    :pswitch_2ad
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->m:I

    invoke-static {p3, v2, v4}, Landroidx/constraintlayout/widget/d;->o(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->m:I

    goto/16 :goto_456

    .line 65
    :pswitch_2b9
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->F:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->F:I

    goto/16 :goto_456

    .line 66
    :pswitch_2c5
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->r:I

    invoke-static {p3, v2, v4}, Landroidx/constraintlayout/widget/d;->o(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->r:I

    goto/16 :goto_456

    .line 67
    :pswitch_2d1
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->q:I

    invoke-static {p3, v2, v4}, Landroidx/constraintlayout/widget/d;->o(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->q:I

    goto/16 :goto_456

    .line 68
    :pswitch_2dd
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v8, :cond_456

    .line 69
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->I:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->I:I

    goto/16 :goto_456

    .line 70
    :pswitch_2ed
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->k:I

    invoke-static {p3, v2, v4}, Landroidx/constraintlayout/widget/d;->o(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->k:I

    goto/16 :goto_456

    .line 71
    :pswitch_2f9
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->j:I

    invoke-static {p3, v2, v4}, Landroidx/constraintlayout/widget/d;->o(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->j:I

    goto/16 :goto_456

    .line 72
    :pswitch_305
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->E:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->E:I

    goto/16 :goto_456

    .line 73
    :pswitch_311
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->C:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->C:I

    goto/16 :goto_456

    .line 74
    :pswitch_31d
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->i:I

    invoke-static {p3, v2, v4}, Landroidx/constraintlayout/widget/d;->o(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->i:I

    goto/16 :goto_456

    .line 75
    :pswitch_329
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->h:I

    invoke-static {p3, v2, v4}, Landroidx/constraintlayout/widget/d;->o(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->h:I

    goto/16 :goto_456

    .line 76
    :pswitch_335
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->D:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->D:I

    goto/16 :goto_456

    .line 77
    :pswitch_341
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->c:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->c:I

    goto/16 :goto_456

    .line 78
    :pswitch_34d
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->b:Landroidx/constraintlayout/widget/d$d;

    iget v4, v3, Landroidx/constraintlayout/widget/d$d;->b:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$d;->b:I

    .line 79
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->b:Landroidx/constraintlayout/widget/d$d;

    sget-object v3, Landroidx/constraintlayout/widget/d;->d:[I

    iget v4, v2, Landroidx/constraintlayout/widget/d$d;->b:I

    aget v3, v3, v4

    iput v3, v2, Landroidx/constraintlayout/widget/d$d;->b:I

    goto/16 :goto_456

    .line 80
    :pswitch_363
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->d:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->d:I

    goto/16 :goto_456

    .line 81
    :pswitch_36f
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->u:F

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->u:F

    goto/16 :goto_456

    .line 82
    :pswitch_37b
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->g:F

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->g:F

    goto/16 :goto_456

    .line 83
    :pswitch_387
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->f:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->f:I

    goto/16 :goto_456

    .line 84
    :pswitch_393
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->e:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->e:I

    goto/16 :goto_456

    .line 85
    :pswitch_39f
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->K:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->K:I

    goto/16 :goto_456

    .line 86
    :pswitch_3ab
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->O:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->O:I

    goto/16 :goto_456

    .line 87
    :pswitch_3b7
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->L:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->L:I

    goto/16 :goto_456

    .line 88
    :pswitch_3c3
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->J:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->J:I

    goto/16 :goto_456

    .line 89
    :pswitch_3cf
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->N:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->N:I

    goto/16 :goto_456

    .line 90
    :pswitch_3db
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->M:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->M:I

    goto/16 :goto_456

    .line 91
    :pswitch_3e7
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->s:I

    invoke-static {p3, v2, v4}, Landroidx/constraintlayout/widget/d;->o(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->s:I

    goto :goto_456

    .line 92
    :pswitch_3f2
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->t:I

    invoke-static {p3, v2, v4}, Landroidx/constraintlayout/widget/d;->o(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->t:I

    goto :goto_456

    .line 93
    :pswitch_3fd
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v8, :cond_456

    .line 94
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->H:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->H:I

    goto :goto_456

    .line 95
    :pswitch_40c
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->B:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->B:I

    goto :goto_456

    .line 96
    :pswitch_417
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->A:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->A:I

    goto :goto_456

    .line 97
    :pswitch_422
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    invoke-virtual {p3, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Landroidx/constraintlayout/widget/d$b;->w:Ljava/lang/String;

    goto :goto_456

    .line 98
    :pswitch_42b
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->n:I

    invoke-static {p3, v2, v4}, Landroidx/constraintlayout/widget/d;->o(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->n:I

    goto :goto_456

    .line 99
    :pswitch_436
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->o:I

    invoke-static {p3, v2, v4}, Landroidx/constraintlayout/widget/d;->o(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->o:I

    goto :goto_456

    .line 100
    :pswitch_441
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->G:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->G:I

    goto :goto_456

    .line 101
    :pswitch_44c
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->p:I

    invoke-static {p3, v2, v4}, Landroidx/constraintlayout/widget/d;->o(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->p:I

    :cond_456
    :goto_456
    :pswitch_456
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    :cond_45a
    return-void

    nop

    :pswitch_data_45c
    .packed-switch 0x1
        :pswitch_44c
        :pswitch_441
        :pswitch_436
        :pswitch_42b
        :pswitch_422
        :pswitch_417
        :pswitch_40c
        :pswitch_3fd
        :pswitch_3f2
        :pswitch_3e7
        :pswitch_3db
        :pswitch_3cf
        :pswitch_3c3
        :pswitch_3b7
        :pswitch_3ab
        :pswitch_39f
        :pswitch_393
        :pswitch_387
        :pswitch_37b
        :pswitch_36f
        :pswitch_363
        :pswitch_34d
        :pswitch_341
        :pswitch_335
        :pswitch_329
        :pswitch_31d
        :pswitch_311
        :pswitch_305
        :pswitch_2f9
        :pswitch_2ed
        :pswitch_2dd
        :pswitch_2d1
        :pswitch_2c5
        :pswitch_2b9
        :pswitch_2ad
        :pswitch_2a1
        :pswitch_295
        :pswitch_28b
        :pswitch_27f
        :pswitch_273
        :pswitch_267
        :pswitch_25b
        :pswitch_24f
        :pswitch_23d
        :pswitch_231
        :pswitch_225
        :pswitch_219
        :pswitch_20d
        :pswitch_201
        :pswitch_1f5
        :pswitch_1e9
        :pswitch_1dd
        :pswitch_1cd
        :pswitch_1c1
        :pswitch_1b5
        :pswitch_1a9
        :pswitch_19d
        :pswitch_191
        :pswitch_185
        :pswitch_179
        :pswitch_16d
        :pswitch_161
        :pswitch_155
        :pswitch_149
        :pswitch_128
        :pswitch_11e
        :pswitch_112
        :pswitch_106
        :pswitch_fc
        :pswitch_f2
        :pswitch_456
        :pswitch_e6
        :pswitch_da
        :pswitch_d0
        :pswitch_c4
        :pswitch_b8
        :pswitch_ae
        :pswitch_a2
        :pswitch_96
        :pswitch_8a
        :pswitch_7e
        :pswitch_5c
    .end packed-switch
.end method


# virtual methods
.method public c(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .registers 3

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/widget/d;->d(Landroidx/constraintlayout/widget/ConstraintLayout;Z)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setConstraintSet(Landroidx/constraintlayout/widget/d;)V

    .line 3
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method d(Landroidx/constraintlayout/widget/ConstraintLayout;Z)V
    .registers 12

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Landroidx/constraintlayout/widget/d;->c:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    :goto_10
    const/4 v3, 0x1

    const/4 v4, -0x1

    if-ge v2, v0, :cond_165

    .line 3
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v6

    .line 5
    iget-object v7, p0, Landroidx/constraintlayout/widget/d;->c:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3e

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id unknown "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lc/e/a/b/a;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_161

    .line 7
    :cond_3e
    iget-boolean v7, p0, Landroidx/constraintlayout/widget/d;->b:Z

    if-eqz v7, :cond_4d

    if-eq v6, v4, :cond_45

    goto :goto_4d

    .line 8
    :cond_45
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4d
    :goto_4d
    if-ne v6, v4, :cond_51

    goto/16 :goto_161

    .line 9
    :cond_51
    iget-object v7, p0, Landroidx/constraintlayout/widget/d;->c:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_151

    .line 10
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 11
    iget-object v7, p0, Landroidx/constraintlayout/widget/d;->c:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/widget/d$a;

    .line 12
    instance-of v8, v5, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v8, :cond_78

    .line 13
    iget-object v8, v7, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iput v3, v8, Landroidx/constraintlayout/widget/d$b;->d0:I

    .line 14
    :cond_78
    iget-object v8, v7, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iget v8, v8, Landroidx/constraintlayout/widget/d$b;->d0:I

    if-eq v8, v4, :cond_b7

    if-eq v8, v3, :cond_81

    goto :goto_b7

    .line 15
    :cond_81
    move-object v3, v5

    check-cast v3, Landroidx/constraintlayout/widget/Barrier;

    .line 16
    invoke-virtual {v3, v6}, Landroid/view/View;->setId(I)V

    .line 17
    iget-object v4, v7, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iget v4, v4, Landroidx/constraintlayout/widget/d$b;->b0:I

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/Barrier;->setType(I)V

    .line 18
    iget-object v4, v7, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iget v4, v4, Landroidx/constraintlayout/widget/d$b;->c0:I

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/Barrier;->setMargin(I)V

    .line 19
    iget-object v4, v7, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iget-boolean v4, v4, Landroidx/constraintlayout/widget/d$b;->j0:Z

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/Barrier;->setAllowsGoneWidget(Z)V

    .line 20
    iget-object v4, v7, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iget-object v6, v4, Landroidx/constraintlayout/widget/d$b;->e0:[I

    if-eqz v6, :cond_a6

    .line 21
    invoke-virtual {v3, v6}, Landroidx/constraintlayout/widget/b;->setReferencedIds([I)V

    goto :goto_b7

    .line 22
    :cond_a6
    iget-object v6, v4, Landroidx/constraintlayout/widget/d$b;->f0:Ljava/lang/String;

    if-eqz v6, :cond_b7

    .line 23
    invoke-direct {p0, v3, v6}, Landroidx/constraintlayout/widget/d;->j(Landroid/view/View;Ljava/lang/String;)[I

    move-result-object v6

    iput-object v6, v4, Landroidx/constraintlayout/widget/d$b;->e0:[I

    .line 24
    iget-object v4, v7, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iget-object v4, v4, Landroidx/constraintlayout/widget/d$b;->e0:[I

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/b;->setReferencedIds([I)V

    .line 25
    :cond_b7
    :goto_b7
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 26
    invoke-virtual {v3}, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a()V

    .line 27
    invoke-virtual {v7, v3}, Landroidx/constraintlayout/widget/d$a;->d(Landroidx/constraintlayout/widget/ConstraintLayout$b;)V

    if-eqz p2, :cond_ca

    .line 28
    iget-object v4, v7, Landroidx/constraintlayout/widget/d$a;->f:Ljava/util/HashMap;

    invoke-static {v5, v4}, Landroidx/constraintlayout/widget/a;->c(Landroid/view/View;Ljava/util/HashMap;)V

    .line 29
    :cond_ca
    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    iget-object v3, v7, Landroidx/constraintlayout/widget/d$a;->b:Landroidx/constraintlayout/widget/d$d;

    iget v4, v3, Landroidx/constraintlayout/widget/d$d;->c:I

    if-nez v4, :cond_d8

    .line 31
    iget v3, v3, Landroidx/constraintlayout/widget/d$d;->b:I

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 32
    :cond_d8
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_161

    .line 33
    iget-object v3, v7, Landroidx/constraintlayout/widget/d$a;->b:Landroidx/constraintlayout/widget/d$d;

    iget v3, v3, Landroidx/constraintlayout/widget/d$d;->d:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setAlpha(F)V

    .line 34
    iget-object v3, v7, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;

    iget v3, v3, Landroidx/constraintlayout/widget/d$e;->b:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setRotation(F)V

    .line 35
    iget-object v3, v7, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;

    iget v3, v3, Landroidx/constraintlayout/widget/d$e;->c:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setRotationX(F)V

    .line 36
    iget-object v3, v7, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;

    iget v3, v3, Landroidx/constraintlayout/widget/d$e;->d:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setRotationY(F)V

    .line 37
    iget-object v3, v7, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;

    iget v3, v3, Landroidx/constraintlayout/widget/d$e;->e:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setScaleX(F)V

    .line 38
    iget-object v3, v7, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;

    iget v3, v3, Landroidx/constraintlayout/widget/d$e;->f:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setScaleY(F)V

    .line 39
    iget-object v3, v7, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;

    iget v3, v3, Landroidx/constraintlayout/widget/d$e;->g:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_119

    .line 40
    iget-object v3, v7, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;

    iget v3, v3, Landroidx/constraintlayout/widget/d$e;->g:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setPivotX(F)V

    .line 41
    :cond_119
    iget-object v3, v7, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;

    iget v3, v3, Landroidx/constraintlayout/widget/d$e;->h:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_12a

    .line 42
    iget-object v3, v7, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;

    iget v3, v3, Landroidx/constraintlayout/widget/d$e;->h:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setPivotY(F)V

    .line 43
    :cond_12a
    iget-object v3, v7, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;

    iget v3, v3, Landroidx/constraintlayout/widget/d$e;->i:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 44
    iget-object v3, v7, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;

    iget v3, v3, Landroidx/constraintlayout/widget/d$e;->j:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 45
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_161

    .line 46
    iget-object v3, v7, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;

    iget v3, v3, Landroidx/constraintlayout/widget/d$e;->k:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setTranslationZ(F)V

    .line 47
    iget-object v3, v7, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;

    iget-boolean v4, v3, Landroidx/constraintlayout/widget/d$e;->l:Z

    if-eqz v4, :cond_161

    .line 48
    iget v3, v3, Landroidx/constraintlayout/widget/d$e;->m:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setElevation(F)V

    goto :goto_161

    .line 49
    :cond_151
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WARNING NO CONSTRAINTS for view "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_161
    :goto_161
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_10

    .line 50
    :cond_165
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_169
    :goto_169
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1ee

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 51
    iget-object v1, p0, Landroidx/constraintlayout/widget/d;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/d$a;

    .line 52
    iget-object v2, v1, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iget v2, v2, Landroidx/constraintlayout/widget/d$b;->d0:I

    if-eq v2, v4, :cond_1cc

    if-eq v2, v3, :cond_186

    goto :goto_1cc

    .line 53
    :cond_186
    new-instance v2, Landroidx/constraintlayout/widget/Barrier;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroidx/constraintlayout/widget/Barrier;-><init>(Landroid/content/Context;)V

    .line 54
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setId(I)V

    .line 55
    iget-object v5, v1, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iget-object v6, v5, Landroidx/constraintlayout/widget/d$b;->e0:[I

    if-eqz v6, :cond_1a0

    .line 56
    invoke-virtual {v2, v6}, Landroidx/constraintlayout/widget/b;->setReferencedIds([I)V

    goto :goto_1b1

    .line 57
    :cond_1a0
    iget-object v6, v5, Landroidx/constraintlayout/widget/d$b;->f0:Ljava/lang/String;

    if-eqz v6, :cond_1b1

    .line 58
    invoke-direct {p0, v2, v6}, Landroidx/constraintlayout/widget/d;->j(Landroid/view/View;Ljava/lang/String;)[I

    move-result-object v6

    iput-object v6, v5, Landroidx/constraintlayout/widget/d$b;->e0:[I

    .line 59
    iget-object v5, v1, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iget-object v5, v5, Landroidx/constraintlayout/widget/d$b;->e0:[I

    invoke-virtual {v2, v5}, Landroidx/constraintlayout/widget/b;->setReferencedIds([I)V

    .line 60
    :cond_1b1
    :goto_1b1
    iget-object v5, v1, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iget v5, v5, Landroidx/constraintlayout/widget/d$b;->b0:I

    invoke-virtual {v2, v5}, Landroidx/constraintlayout/widget/Barrier;->setType(I)V

    .line 61
    iget-object v5, v1, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iget v5, v5, Landroidx/constraintlayout/widget/d$b;->c0:I

    invoke-virtual {v2, v5}, Landroidx/constraintlayout/widget/Barrier;->setMargin(I)V

    .line 62
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->e()Landroidx/constraintlayout/widget/ConstraintLayout$b;

    move-result-object v5

    .line 63
    invoke-virtual {v2}, Landroidx/constraintlayout/widget/b;->n()V

    .line 64
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/widget/d$a;->d(Landroidx/constraintlayout/widget/ConstraintLayout$b;)V

    .line 65
    invoke-virtual {p1, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    :cond_1cc
    :goto_1cc
    iget-object v2, v1, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iget-boolean v2, v2, Landroidx/constraintlayout/widget/d$b;->a:Z

    if-eqz v2, :cond_169

    .line 67
    new-instance v2, Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroidx/constraintlayout/widget/Guideline;-><init>(Landroid/content/Context;)V

    .line 68
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setId(I)V

    .line 69
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->e()Landroidx/constraintlayout/widget/ConstraintLayout$b;

    move-result-object v0

    .line 70
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/d$a;->d(Landroidx/constraintlayout/widget/ConstraintLayout$b;)V

    .line 71
    invoke-virtual {p1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_169

    :cond_1ee
    return-void
.end method

.method public e(II)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/d;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/widget/d;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/d$a;

    const/4 v0, -0x1

    packed-switch p2, :pswitch_data_6c

    .line 3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unknown constraint"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :pswitch_24
    iget-object p1, p1, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->s:I

    .line 5
    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->t:I

    .line 6
    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->H:I

    .line 7
    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->N:I

    goto :goto_6a

    .line 8
    :pswitch_2f
    iget-object p1, p1, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->q:I

    .line 9
    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->r:I

    .line 10
    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->I:I

    .line 11
    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->O:I

    goto :goto_6a

    .line 12
    :pswitch_3a
    iget-object p1, p1, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->p:I

    goto :goto_6a

    .line 13
    :pswitch_3f
    iget-object p1, p1, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->n:I

    .line 14
    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->o:I

    .line 15
    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->G:I

    .line 16
    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->M:I

    goto :goto_6a

    .line 17
    :pswitch_4a
    iget-object p1, p1, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->m:I

    .line 18
    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->l:I

    .line 19
    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->F:I

    .line 20
    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->K:I

    goto :goto_6a

    .line 21
    :pswitch_55
    iget-object p1, p1, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->k:I

    .line 22
    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->j:I

    .line 23
    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->E:I

    .line 24
    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->L:I

    goto :goto_6a

    .line 25
    :pswitch_60
    iget-object p1, p1, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->i:I

    .line 26
    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->h:I

    .line 27
    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->D:I

    .line 28
    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->J:I

    :cond_6a
    :goto_6a
    return-void

    nop

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_60
        :pswitch_55
        :pswitch_4a
        :pswitch_3f
        :pswitch_3a
        :pswitch_2f
        :pswitch_24
    .end packed-switch
.end method

.method public f(Landroid/content/Context;I)V
    .registers 4

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/d;->g(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method public g(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .registers 13

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2
    iget-object v1, p0, Landroidx/constraintlayout/widget/d;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_107

    .line 3
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 5
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    .line 6
    iget-boolean v5, p0, Landroidx/constraintlayout/widget/d;->b:Z

    if-eqz v5, :cond_2a

    const/4 v5, -0x1

    if-eq v4, v5, :cond_22

    goto :goto_2a

    .line 7
    :cond_22
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_2a
    :goto_2a
    iget-object v5, p0, Landroidx/constraintlayout/widget/d;->c:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_44

    .line 9
    iget-object v5, p0, Landroidx/constraintlayout/widget/d;->c:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Landroidx/constraintlayout/widget/d$a;

    invoke-direct {v7}, Landroidx/constraintlayout/widget/d$a;-><init>()V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_44
    iget-object v5, p0, Landroidx/constraintlayout/widget/d;->c:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/d$a;

    .line 11
    iget-object v6, p0, Landroidx/constraintlayout/widget/d;->a:Ljava/util/HashMap;

    invoke-static {v6, v2}, Landroidx/constraintlayout/widget/a;->a(Ljava/util/HashMap;Landroid/view/View;)Ljava/util/HashMap;

    move-result-object v6

    iput-object v6, v5, Landroidx/constraintlayout/widget/d$a;->f:Ljava/util/HashMap;

    .line 12
    invoke-static {v5, v4, v3}, Landroidx/constraintlayout/widget/d$a;->a(Landroidx/constraintlayout/widget/d$a;ILandroidx/constraintlayout/widget/ConstraintLayout$b;)V

    .line 13
    iget-object v3, v5, Landroidx/constraintlayout/widget/d$a;->b:Landroidx/constraintlayout/widget/d$d;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/d$d;->b:I

    .line 14
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_dd

    .line 15
    iget-object v3, v5, Landroidx/constraintlayout/widget/d$a;->b:Landroidx/constraintlayout/widget/d$d;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/d$d;->d:F

    .line 16
    iget-object v3, v5, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;

    invoke-virtual {v2}, Landroid/view/View;->getRotation()F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/d$e;->b:F

    .line 17
    iget-object v3, v5, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;

    invoke-virtual {v2}, Landroid/view/View;->getRotationX()F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/d$e;->c:F

    .line 18
    iget-object v3, v5, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;

    invoke-virtual {v2}, Landroid/view/View;->getRotationY()F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/d$e;->d:F

    .line 19
    iget-object v3, v5, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;

    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/d$e;->e:F

    .line 20
    iget-object v3, v5, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;

    invoke-virtual {v2}, Landroid/view/View;->getScaleY()F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/d$e;->f:F

    .line 21
    invoke-virtual {v2}, Landroid/view/View;->getPivotX()F

    move-result v3

    .line 22
    invoke-virtual {v2}, Landroid/view/View;->getPivotY()F

    move-result v4

    float-to-double v6, v3

    const-wide/16 v8, 0x0

    cmpl-double v10, v6, v8

    if-nez v10, :cond_ad

    float-to-double v6, v4

    cmpl-double v10, v6, v8

    if-eqz v10, :cond_b3

    .line 23
    :cond_ad
    iget-object v6, v5, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;

    iput v3, v6, Landroidx/constraintlayout/widget/d$e;->g:F

    .line 24
    iput v4, v6, Landroidx/constraintlayout/widget/d$e;->h:F

    .line 25
    :cond_b3
    iget-object v3, v5, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/d$e;->i:F

    .line 26
    iget-object v3, v5, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/d$e;->j:F

    .line 27
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_dd

    .line 28
    iget-object v3, v5, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationZ()F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/d$e;->k:F

    .line 29
    iget-object v3, v5, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;

    iget-boolean v4, v3, Landroidx/constraintlayout/widget/d$e;->l:Z

    if-eqz v4, :cond_dd

    .line 30
    invoke-virtual {v2}, Landroid/view/View;->getElevation()F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/d$e;->m:F

    .line 31
    :cond_dd
    instance-of v3, v2, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v3, :cond_103

    .line 32
    check-cast v2, Landroidx/constraintlayout/widget/Barrier;

    .line 33
    iget-object v3, v5, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    invoke-virtual {v2}, Landroidx/constraintlayout/widget/Barrier;->o()Z

    move-result v4

    iput-boolean v4, v3, Landroidx/constraintlayout/widget/d$b;->j0:Z

    .line 34
    iget-object v3, v5, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    invoke-virtual {v2}, Landroidx/constraintlayout/widget/b;->getReferencedIds()[I

    move-result-object v4

    iput-object v4, v3, Landroidx/constraintlayout/widget/d$b;->e0:[I

    .line 35
    iget-object v3, v5, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    invoke-virtual {v2}, Landroidx/constraintlayout/widget/Barrier;->getType()I

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/d$b;->b0:I

    .line 36
    iget-object v3, v5, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    invoke-virtual {v2}, Landroidx/constraintlayout/widget/Barrier;->getMargin()I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->c0:I

    :cond_103
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_a

    :cond_107
    return-void
.end method

.method public h(Landroidx/constraintlayout/widget/e;)V
    .registers 10

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2
    iget-object v1, p0, Landroidx/constraintlayout/widget/d;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_5f

    .line 3
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/e$a;

    .line 5
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    .line 6
    iget-boolean v5, p0, Landroidx/constraintlayout/widget/d;->b:Z

    if-eqz v5, :cond_2a

    const/4 v5, -0x1

    if-eq v4, v5, :cond_22

    goto :goto_2a

    .line 7
    :cond_22
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_2a
    :goto_2a
    iget-object v5, p0, Landroidx/constraintlayout/widget/d;->c:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_44

    .line 9
    iget-object v5, p0, Landroidx/constraintlayout/widget/d;->c:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Landroidx/constraintlayout/widget/d$a;

    invoke-direct {v7}, Landroidx/constraintlayout/widget/d$a;-><init>()V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_44
    iget-object v5, p0, Landroidx/constraintlayout/widget/d;->c:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/d$a;

    .line 11
    instance-of v6, v2, Landroidx/constraintlayout/widget/b;

    if-eqz v6, :cond_59

    .line 12
    check-cast v2, Landroidx/constraintlayout/widget/b;

    .line 13
    invoke-static {v5, v2, v4, v3}, Landroidx/constraintlayout/widget/d$a;->b(Landroidx/constraintlayout/widget/d$a;Landroidx/constraintlayout/widget/b;ILandroidx/constraintlayout/widget/e$a;)V

    .line 14
    :cond_59
    invoke-static {v5, v4, v3}, Landroidx/constraintlayout/widget/d$a;->c(Landroidx/constraintlayout/widget/d$a;ILandroidx/constraintlayout/widget/e$a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_5f
    return-void
.end method

.method public i(IIIF)V
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/d;->l(I)Landroidx/constraintlayout/widget/d$a;

    move-result-object p1

    .line 2
    iget-object p1, p1, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iput p2, p1, Landroidx/constraintlayout/widget/d$b;->x:I

    .line 3
    iput p3, p1, Landroidx/constraintlayout/widget/d$b;->y:I

    .line 4
    iput p4, p1, Landroidx/constraintlayout/widget/d$b;->z:F

    return-void
.end method

.method public m(Landroid/content/Context;I)V
    .registers 7

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p2

    .line 3
    :try_start_8
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :goto_c
    const/4 v1, 0x1

    if-eq v0, v1, :cond_4a

    if-eqz v0, :cond_39

    const/4 v2, 0x2

    if-eq v0, v2, :cond_15

    goto :goto_3c

    .line 4
    :cond_15
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Landroidx/constraintlayout/widget/d;->k(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/d$a;

    move-result-object v2

    const-string v3, "Guideline"

    .line 6
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 7
    iget-object v0, v2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iput-boolean v1, v0, Landroidx/constraintlayout/widget/d$b;->a:Z

    .line 8
    :cond_2d
    iget-object v0, p0, Landroidx/constraintlayout/widget/d;->c:Ljava/util/HashMap;

    iget v1, v2, Landroidx/constraintlayout/widget/d$a;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3c

    .line 9
    :cond_39
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 10
    :goto_3c
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_40
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_40} :catch_46
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_40} :catch_41

    goto :goto_c

    :catch_41
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4a

    :catch_46
    move-exception p1

    .line 12
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :cond_4a
    :goto_4a
    return-void
.end method

.method public n(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 12

    .line 1
    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_4} :catch_186
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_181

    const/4 v1, 0x0

    move-object v2, v1

    :goto_6
    const/4 v3, 0x1

    if-eq v0, v3, :cond_18a

    if-eqz v0, :cond_178

    const-string v4, "Constraint"

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq v0, v6, :cond_36

    if-eq v0, v5, :cond_15

    goto/16 :goto_17b

    .line 2
    :cond_15
    :try_start_15
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ConstraintSet"

    .line 3
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    return-void

    .line 4
    :cond_22
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17b

    .line 5
    iget-object v0, p0, Landroidx/constraintlayout/widget/d;->c:Ljava/util/HashMap;

    iget v3, v2, Landroidx/constraintlayout/widget/d$a;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    goto/16 :goto_17b

    .line 6
    :cond_36
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v7, -0x1

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_18c

    goto :goto_90

    :sswitch_43
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    const/4 v5, 0x0

    goto :goto_91

    :sswitch_4b
    const-string v4, "CustomAttribute"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    const/4 v5, 0x7

    goto :goto_91

    :sswitch_55
    const-string v4, "Barrier"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    const/4 v5, 0x2

    goto :goto_91

    :sswitch_5f
    const-string v4, "Guideline"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    const/4 v5, 0x1

    goto :goto_91

    :sswitch_69
    const-string v4, "Transform"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    const/4 v5, 0x4

    goto :goto_91

    :sswitch_73
    const-string v4, "PropertySet"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    goto :goto_91

    :sswitch_7c
    const-string v4, "Motion"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    const/4 v5, 0x6

    goto :goto_91

    :sswitch_86
    const-string v4, "Layout"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_8c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_15 .. :try_end_8c} :catch_186
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_8c} :catch_181

    if-eqz v0, :cond_90

    const/4 v5, 0x5

    goto :goto_91

    :cond_90
    :goto_90
    const/4 v5, -0x1

    :goto_91
    const-string v0, "XML parser error must be within a Constraint "

    packed-switch v5, :pswitch_data_1ae

    goto/16 :goto_17b

    :pswitch_98
    if-eqz v2, :cond_a1

    .line 8
    :try_start_9a
    iget-object v0, v2, Landroidx/constraintlayout/widget/d$a;->f:Ljava/util/HashMap;

    invoke-static {p1, p2, v0}, Landroidx/constraintlayout/widget/a;->b(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V

    goto/16 :goto_17b

    .line 9
    :cond_a1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_ba
    if-eqz v2, :cond_c7

    .line 10
    iget-object v0, v2, Landroidx/constraintlayout/widget/d$a;->c:Landroidx/constraintlayout/widget/d$c;

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Landroidx/constraintlayout/widget/d$c;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_17b

    .line 11
    :cond_c7
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_e0
    if-eqz v2, :cond_ed

    .line 12
    iget-object v0, v2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Landroidx/constraintlayout/widget/d$b;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_17b

    .line 13
    :cond_ed
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_106
    if-eqz v2, :cond_112

    .line 14
    iget-object v0, v2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Landroidx/constraintlayout/widget/d$e;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_17b

    .line 15
    :cond_112
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_12b
    if-eqz v2, :cond_137

    .line 16
    iget-object v0, v2, Landroidx/constraintlayout/widget/d$a;->b:Landroidx/constraintlayout/widget/d$d;

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Landroidx/constraintlayout/widget/d$d;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_17b

    .line 17
    :cond_137
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :pswitch_150
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/widget/d;->k(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/d$a;

    move-result-object v0

    .line 19
    iget-object v2, v0, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iput v3, v2, Landroidx/constraintlayout/widget/d$b;->d0:I

    goto :goto_176

    .line 20
    :pswitch_15d
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/widget/d;->k(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/d$a;

    move-result-object v0

    .line 21
    iget-object v2, v0, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iput-boolean v3, v2, Landroidx/constraintlayout/widget/d$b;->a:Z

    .line 22
    iget-object v2, v0, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iput-boolean v3, v2, Landroidx/constraintlayout/widget/d$b;->b:Z

    goto :goto_176

    .line 23
    :pswitch_16e
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/widget/d;->k(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/d$a;

    move-result-object v0

    :goto_176
    move-object v2, v0

    goto :goto_17b

    .line 24
    :cond_178
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 25
    :cond_17b
    :goto_17b
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_17f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9a .. :try_end_17f} :catch_186
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_17f} :catch_181

    goto/16 :goto_6

    :catch_181
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_18a

    :catch_186
    move-exception p1

    .line 27
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :cond_18a
    :goto_18a
    return-void

    nop

    :sswitch_data_18c
    .sparse-switch
        -0x78c018b6 -> :sswitch_86
        -0x7648542a -> :sswitch_7c
        -0x4bab3dd3 -> :sswitch_73
        -0x49cf74b4 -> :sswitch_69
        -0x446d330 -> :sswitch_5f
        0x4f5d3b97 -> :sswitch_55
        0x6acd460b -> :sswitch_4b
        0x6b78f1fd -> :sswitch_43
    .end sparse-switch

    :pswitch_data_1ae
    .packed-switch 0x0
        :pswitch_16e
        :pswitch_15d
        :pswitch_150
        :pswitch_12b
        :pswitch_106
        :pswitch_e0
        :pswitch_ba
        :pswitch_98
    .end packed-switch
.end method
