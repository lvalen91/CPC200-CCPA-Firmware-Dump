.class public Landroidx/constraintlayout/widget/d;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/constraintlayout/widget/d$a;,
    Landroidx/constraintlayout/widget/d$c;,
    Landroidx/constraintlayout/widget/d$d;,
    Landroidx/constraintlayout/widget/d$e;,
    Landroidx/constraintlayout/widget/d$b;
  }
.end annotation

.field private final static d:[I

.field private static e:Landroid/util/SparseIntArray;

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

.method static constructor <clinit>()V
  .registers 4
    const/4 v0, 3
    new-array v1, v0, [I
  .line 1
    fill-array-data v1, :L0
    sput-object v1, Landroidx/constraintlayout/widget/d;->d:[I
  .line 2
    new-instance v1, Landroid/util/SparseIntArray;
    invoke-direct { v1 }, Landroid/util/SparseIntArray;-><init>()V
    sput-object v1, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
  .line 3
    sget v2, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintLeft_toLeftOf:I
    const/16 v3, 25
    invoke-virtual { v1, v2, v3 }, Landroid/util/SparseIntArray;->append(II)V
  .line 4
    sget-object v1, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v2, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintLeft_toRightOf:I
    const/16 v3, 26
    invoke-virtual { v1, v2, v3 }, Landroid/util/SparseIntArray;->append(II)V
  .line 5
    sget-object v1, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v2, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintRight_toLeftOf:I
    const/16 v3, 29
    invoke-virtual { v1, v2, v3 }, Landroid/util/SparseIntArray;->append(II)V
  .line 6
    sget-object v1, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v2, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintRight_toRightOf:I
    const/16 v3, 30
    invoke-virtual { v1, v2, v3 }, Landroid/util/SparseIntArray;->append(II)V
  .line 7
    sget-object v1, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v2, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintTop_toTopOf:I
    const/16 v3, 36
    invoke-virtual { v1, v2, v3 }, Landroid/util/SparseIntArray;->append(II)V
  .line 8
    sget-object v1, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v2, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintTop_toBottomOf:I
    const/16 v3, 35
    invoke-virtual { v1, v2, v3 }, Landroid/util/SparseIntArray;->append(II)V
  .line 9
    sget-object v1, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v2, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintBottom_toTopOf:I
    const/4 v3, 4
    invoke-virtual { v1, v2, v3 }, Landroid/util/SparseIntArray;->append(II)V
  .line 10
    sget-object v1, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v2, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintBottom_toBottomOf:I
    invoke-virtual { v1, v2, v0 }, Landroid/util/SparseIntArray;->append(II)V
  .line 11
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintBaseline_toBaselineOf:I
    const/4 v2, 1
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 12
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_editor_absoluteX:I
    const/4 v2, 6
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 13
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_editor_absoluteY:I
    const/4 v2, 7
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 14
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintGuide_begin:I
    const/16 v2, 17
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 15
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintGuide_end:I
    const/16 v2, 18
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 16
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintGuide_percent:I
    const/16 v2, 19
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 17
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_android_orientation:I
    const/16 v2, 27
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 18
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintStart_toEndOf:I
    const/16 v2, 32
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 19
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintStart_toStartOf:I
    const/16 v2, 33
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 20
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintEnd_toStartOf:I
    const/16 v2, 10
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 21
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintEnd_toEndOf:I
    const/16 v2, 9
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 22
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_goneMarginLeft:I
    const/16 v2, 13
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 23
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_goneMarginTop:I
    const/16 v2, 16
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 24
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_goneMarginRight:I
    const/16 v2, 14
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 25
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_goneMarginBottom:I
    const/16 v2, 11
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 26
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_goneMarginStart:I
    const/16 v2, 15
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 27
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_goneMarginEnd:I
    const/16 v2, 12
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 28
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintVertical_weight:I
    const/16 v2, 40
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 29
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintHorizontal_weight:I
    const/16 v2, 39
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 30
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintHorizontal_chainStyle:I
    const/16 v2, 41
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 31
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintVertical_chainStyle:I
    const/16 v2, 42
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 32
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintHorizontal_bias:I
    const/16 v2, 20
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 33
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintVertical_bias:I
    const/16 v2, 37
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 34
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintDimensionRatio:I
    const/4 v2, 5
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 35
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintLeft_creator:I
    const/16 v2, 82
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 36
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintTop_creator:I
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 37
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintRight_creator:I
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 38
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintBottom_creator:I
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 39
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintBaseline_creator:I
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 40
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_android_layout_marginLeft:I
    const/16 v2, 24
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 41
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_android_layout_marginRight:I
    const/16 v2, 28
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 42
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_android_layout_marginStart:I
    const/16 v2, 31
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 43
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_android_layout_marginEnd:I
    const/16 v2, 8
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 44
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_android_layout_marginTop:I
    const/16 v2, 34
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 45
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_android_layout_marginBottom:I
    const/4 v2, 2
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 46
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_android_layout_width:I
    const/16 v2, 23
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 47
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_android_layout_height:I
    const/16 v2, 21
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 48
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_android_visibility:I
    const/16 v2, 22
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 49
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_android_alpha:I
    const/16 v2, 43
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 50
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_android_elevation:I
    const/16 v2, 44
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 51
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_android_rotationX:I
    const/16 v2, 45
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 52
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_android_rotationY:I
    const/16 v2, 46
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 53
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_android_rotation:I
    const/16 v2, 60
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 54
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_android_scaleX:I
    const/16 v2, 47
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 55
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_android_scaleY:I
    const/16 v2, 48
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 56
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_android_transformPivotX:I
    const/16 v2, 49
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 57
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_android_transformPivotY:I
    const/16 v2, 50
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 58
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_android_translationX:I
    const/16 v2, 51
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 59
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_android_translationY:I
    const/16 v2, 52
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 60
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_android_translationZ:I
    const/16 v2, 53
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 61
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintWidth_default:I
    const/16 v2, 54
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 62
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintHeight_default:I
    const/16 v2, 55
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 63
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintWidth_max:I
    const/16 v2, 56
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 64
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintHeight_max:I
    const/16 v2, 57
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 65
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintWidth_min:I
    const/16 v2, 58
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 66
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintHeight_min:I
    const/16 v2, 59
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 67
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintCircle:I
    const/16 v2, 61
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 68
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintCircleRadius:I
    const/16 v2, 62
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 69
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintCircleAngle:I
    const/16 v2, 63
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 70
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_animate_relativeTo:I
    const/16 v2, 64
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 71
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_transitionEasing:I
    const/16 v2, 65
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 72
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_drawPath:I
    const/16 v2, 66
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 73
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_transitionPathRotate:I
    const/16 v2, 67
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 74
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_motionStagger:I
    const/16 v2, 79
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 75
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_android_id:I
    const/16 v2, 38
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 76
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_motionProgress:I
    const/16 v2, 68
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 77
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintWidth_percent:I
    const/16 v2, 69
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 78
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintHeight_percent:I
    const/16 v2, 70
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 79
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_chainUseRtl:I
    const/16 v2, 71
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 80
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_barrierDirection:I
    const/16 v2, 72
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 81
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_barrierMargin:I
    const/16 v2, 73
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 82
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_constraint_referenced_ids:I
    const/16 v2, 74
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 83
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_barrierAllowsGoneWidgets:I
    const/16 v2, 75
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 84
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_pathMotionArc:I
    const/16 v2, 76
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 85
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constraintTag:I
    const/16 v2, 77
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 86
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_visibilityMode:I
    const/16 v2, 78
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 87
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constrainedWidth:I
    const/16 v2, 80
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 88
    sget-object v0, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->Constraint_layout_constrainedHeight:I
    const/16 v2, 81
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
    return-void
  :L0
  .array-data 4
    0t 0t 0t 0t
    4t 0t 0t 0t
    8t 0t 0t 0t
  .end array-data
.end method

.method public constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Ljava/util/HashMap;
    invoke-direct { v0 }, Ljava/util/HashMap;-><init>()V
    iput-object v0, p0, Landroidx/constraintlayout/widget/d;->a:Ljava/util/HashMap;
    const/4 v0, 1
  .line 3
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/d;->b:Z
  .line 4
    new-instance v0, Ljava/util/HashMap;
    invoke-direct { v0 }, Ljava/util/HashMap;-><init>()V
    iput-object v0, p0, Landroidx/constraintlayout/widget/d;->c:Ljava/util/HashMap;
    return-void
.end method

.method static synthetic a(Landroid/content/res/TypedArray;II)I
  .registers 3
  .line 1
    invoke-static { p0, p1, p2 }, Landroidx/constraintlayout/widget/d;->o(Landroid/content/res/TypedArray;II)I
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
  .catch Ljava/lang/Exception; { :L1 .. :L2 } :L3
  .registers 12
    const-string v0, ","
  .line 1
    invoke-virtual { p2, v0 }, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object p2
  .line 2
    invoke-virtual { p1 }, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v0
  .line 3
    array-length v1, p2
    new-array v1, v1, [I
    const/4 v2, 0
    const/4 v3, 0
    const/4 v4, 0
  :L0
  .line 4
    array-length v5, p2
    if-ge v3, v5, :L7
  .line 5
    aget-object v5, p2, v3
  .line 6
    invoke-virtual { v5 }, Ljava/lang/String;->trim()Ljava/lang/String;
    move-result-object v5
  :L1
  .line 7
    const-class v6, Landroidx/constraintlayout/widget/h;
  .line 8
    invoke-virtual { v6, v5 }, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    move-result-object v6
    const/4 v7, 0
  .line 9
    invoke-virtual { v6, v7 }, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    move-result v6
  :L2
    goto :L4
  :L3
    const/4 v6, 0
  :L4
    if-nez v6, :L5
  .line 10
    invoke-virtual { v0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v6
  .line 11
    invoke-virtual { v0 }, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    move-result-object v7
    const-string v8, "id"
  .line 12
    invoke-virtual { v6, v5, v8, v7 }, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    move-result v6
  :L5
    if-nez v6, :L6
  .line 13
    invoke-virtual { p1 }, Landroid/view/View;->isInEditMode()Z
    move-result v7
    if-eqz v7, :L6
    invoke-virtual { p1 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v7
    instance-of v7, v7, Landroidx/constraintlayout/widget/ConstraintLayout;
    if-eqz v7, :L6
  .line 14
    invoke-virtual { p1 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v7
    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout;
  .line 15
    invoke-virtual { v7, v2, v5 }, Landroidx/constraintlayout/widget/ConstraintLayout;->g(ILjava/lang/Object;)Ljava/lang/Object;
    move-result-object v5
    if-eqz v5, :L6
  .line 16
    instance-of v7, v5, Ljava/lang/Integer;
    if-eqz v7, :L6
  .line 17
    check-cast v5, Ljava/lang/Integer;
    invoke-virtual { v5 }, Ljava/lang/Integer;->intValue()I
    move-result v6
  :L6
    add-int/lit8 v5, v4, 1
  .line 18
    aput v6, v1, v4
    add-int/lit8 v3, v3, 1
    move v4, v5
    goto :L0
  :L7
  .line 19
    array-length p1, p2
    if-eq v4, p1, :L8
  .line 20
    invoke-static { v1, v4 }, Ljava/util/Arrays;->copyOf([II)[I
    move-result-object v1
  :L8
    return-object v1
.end method

.method private k(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/d$a;
  .registers 5
  .line 1
    new-instance v0, Landroidx/constraintlayout/widget/d$a;
    invoke-direct { v0 }, Landroidx/constraintlayout/widget/d$a;-><init>()V
  .line 2
    sget-object v1, Landroidx/constraintlayout/widget/i;->Constraint:[I
    invoke-virtual { p1, p2, v1 }, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    move-result-object p2
  .line 3
    invoke-direct { p0, p1, v0, p2 }, Landroidx/constraintlayout/widget/d;->p(Landroid/content/Context;Landroidx/constraintlayout/widget/d$a;Landroid/content/res/TypedArray;)V
  .line 4
    invoke-virtual { p2 }, Landroid/content/res/TypedArray;->recycle()V
    return-object v0
.end method

.method private l(I)Landroidx/constraintlayout/widget/d$a;
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/d;->c:Ljava/util/HashMap;
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L0
  .line 2
    iget-object v0, p0, Landroidx/constraintlayout/widget/d;->c:Ljava/util/HashMap;
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    new-instance v2, Landroidx/constraintlayout/widget/d$a;
    invoke-direct { v2 }, Landroidx/constraintlayout/widget/d$a;-><init>()V
    invoke-virtual { v0, v1, v2 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L0
  .line 3
    iget-object v0, p0, Landroidx/constraintlayout/widget/d;->c:Ljava/util/HashMap;
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p1
    invoke-virtual { v0, p1 }, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroidx/constraintlayout/widget/d$a;
    return-object p1
.end method

.method private static o(Landroid/content/res/TypedArray;II)I
  .registers 4
  .line 1
    invoke-virtual { p0, p1, p2 }, Landroid/content/res/TypedArray;->getResourceId(II)I
    move-result p2
    const/4 v0, -1
    if-ne p2, v0, :L0
  .line 2
    invoke-virtual { p0, p1, v0 }, Landroid/content/res/TypedArray;->getInt(II)I
    move-result p2
  :L0
    return p2
.end method

.method private p(Landroid/content/Context;Landroidx/constraintlayout/widget/d$a;Landroid/content/res/TypedArray;)V
  .registers 13
  .line 1
    invoke-virtual { p3 }, Landroid/content/res/TypedArray;->getIndexCount()I
    move-result p1
    const/4 v0, 0
    const/4 v1, 0
  :L0
    if-ge v1, p1, :L85
  .line 2
    invoke-virtual { p3, v1 }, Landroid/content/res/TypedArray;->getIndex(I)I
    move-result v2
  .line 3
    sget v3, Landroidx/constraintlayout/widget/i;->Constraint_android_id:I
    const/4 v4, 1
    if-eq v2, v3, :L1
    sget v3, Landroidx/constraintlayout/widget/i;->Constraint_android_layout_marginStart:I
    if-eq v3, v2, :L1
    sget v3, Landroidx/constraintlayout/widget/i;->Constraint_android_layout_marginEnd:I
    if-eq v3, v2, :L1
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
  :L1
  .line 8
    sget-object v3, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    invoke-virtual { v3, v2 }, Landroid/util/SparseIntArray;->get(I)I
    move-result v3
    const-string v5, "   "
    const/high16 v6, 16256
    const/16 v7, 21
    const/16 v8, 17
    packed-switch v3, :L86
  .line 9
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "Unknown attribute 0x"
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 10
    invoke-static { v2 }, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
    move-result-object v4
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-object v4, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    invoke-virtual { v4, v2 }, Landroid/util/SparseIntArray;->get(I)I
    move-result v2
    invoke-virtual { v3, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    goto/16 :L84
  :L2
  .line 11
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "unused attribute 0x"
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 12
    invoke-static { v2 }, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
    move-result-object v4
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-object v4, Landroidx/constraintlayout/widget/d;->e:Landroid/util/SparseIntArray;
    invoke-virtual { v4, v2 }, Landroid/util/SparseIntArray;->get(I)I
    move-result v2
    invoke-virtual { v3, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    goto/16 :L84
  :L3
  .line 13
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iget-boolean v4, v3, Landroidx/constraintlayout/widget/d$b;->i0:Z
    invoke-virtual { p3, v2, v4 }, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    move-result v2
    iput-boolean v2, v3, Landroidx/constraintlayout/widget/d$b;->i0:Z
    goto/16 :L84
  :L4
  .line 14
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iget-boolean v4, v3, Landroidx/constraintlayout/widget/d$b;->h0:Z
    invoke-virtual { p3, v2, v4 }, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    move-result v2
    iput-boolean v2, v3, Landroidx/constraintlayout/widget/d$b;->h0:Z
    goto/16 :L84
  :L5
  .line 15
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->c:Landroidx/constraintlayout/widget/d$c;
    iget v4, v3, Landroidx/constraintlayout/widget/d$c;->f:F
    invoke-virtual { p3, v2, v4 }, Landroid/content/res/TypedArray;->getFloat(IF)F
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$c;->f:F
    goto/16 :L84
  :L6
  .line 16
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->b:Landroidx/constraintlayout/widget/d$d;
    iget v4, v3, Landroidx/constraintlayout/widget/d$d;->c:I
    invoke-virtual { p3, v2, v4 }, Landroid/content/res/TypedArray;->getInt(II)I
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$d;->c:I
    goto/16 :L84
  :L7
  .line 17
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    invoke-virtual { p3, v2 }, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
    move-result-object v2
    iput-object v2, v3, Landroidx/constraintlayout/widget/d$b;->g0:Ljava/lang/String;
    goto/16 :L84
  :L8
  .line 18
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->c:Landroidx/constraintlayout/widget/d$c;
    iget v4, v3, Landroidx/constraintlayout/widget/d$c;->d:I
    invoke-virtual { p3, v2, v4 }, Landroid/content/res/TypedArray;->getInt(II)I
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$c;->d:I
    goto/16 :L84
  :L9
  .line 19
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iget-boolean v4, v3, Landroidx/constraintlayout/widget/d$b;->j0:Z
    invoke-virtual { p3, v2, v4 }, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    move-result v2
    iput-boolean v2, v3, Landroidx/constraintlayout/widget/d$b;->j0:Z
    goto/16 :L84
  :L10
  .line 20
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    invoke-virtual { p3, v2 }, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
    move-result-object v2
    iput-object v2, v3, Landroidx/constraintlayout/widget/d$b;->f0:Ljava/lang/String;
    goto/16 :L84
  :L11
  .line 21
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->c0:I
    invoke-virtual { p3, v2, v4 }, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->c0:I
    goto/16 :L84
  :L12
  .line 22
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->b0:I
    invoke-virtual { p3, v2, v4 }, Landroid/content/res/TypedArray;->getInt(II)I
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->b0:I
    goto/16 :L84
  :L13
  .line 23
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    invoke-virtual { p3, v2, v6 }, Landroid/content/res/TypedArray;->getFloat(IF)F
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->a0:F
    goto/16 :L84
  :L14
  .line 24
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    invoke-virtual { p3, v2, v6 }, Landroid/content/res/TypedArray;->getFloat(IF)F
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->Z:F
    goto/16 :L84
  :L15
  .line 25
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->b:Landroidx/constraintlayout/widget/d$d;
    iget v4, v3, Landroidx/constraintlayout/widget/d$d;->e:F
    invoke-virtual { p3, v2, v4 }, Landroid/content/res/TypedArray;->getFloat(IF)F
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$d;->e:F
    goto/16 :L84
  :L16
  .line 26
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->c:Landroidx/constraintlayout/widget/d$c;
    iget v4, v3, Landroidx/constraintlayout/widget/d$c;->g:F
    invoke-virtual { p3, v2, v4 }, Landroid/content/res/TypedArray;->getFloat(IF)F
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$c;->g:F
    goto/16 :L84
  :L17
  .line 27
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->c:Landroidx/constraintlayout/widget/d$c;
    invoke-virtual { p3, v2, v0 }, Landroid/content/res/TypedArray;->getInt(II)I
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$c;->e:I
    goto/16 :L84
  :L18
  .line 28
    invoke-virtual { p3, v2 }, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;
    move-result-object v3
  .line 29
    iget v3, v3, Landroid/util/TypedValue;->type:I
    const/4 v4, 3
    if-ne v3, v4, :L19
  .line 30
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->c:Landroidx/constraintlayout/widget/d$c;
    invoke-virtual { p3, v2 }, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
    move-result-object v2
    iput-object v2, v3, Landroidx/constraintlayout/widget/d$c;->c:Ljava/lang/String;
    goto/16 :L84
  :L19
  .line 31
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->c:Landroidx/constraintlayout/widget/d$c;
    sget-object v4, Lc/e/a/a/a;->a:[Ljava/lang/String;
    invoke-virtual { p3, v2, v0 }, Landroid/content/res/TypedArray;->getInteger(II)I
    move-result v2
    aget-object v2, v4, v2
    iput-object v2, v3, Landroidx/constraintlayout/widget/d$c;->c:Ljava/lang/String;
    goto/16 :L84
  :L20
  .line 32
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->c:Landroidx/constraintlayout/widget/d$c;
    iget v4, v3, Landroidx/constraintlayout/widget/d$c;->b:I
    invoke-static { p3, v2, v4 }, Landroidx/constraintlayout/widget/d;->o(Landroid/content/res/TypedArray;II)I
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$c;->b:I
    goto/16 :L84
  :L21
  .line 33
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->z:F
    invoke-virtual { p3, v2, v4 }, Landroid/content/res/TypedArray;->getFloat(IF)F
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->z:F
    goto/16 :L84
  :L22
  .line 34
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->y:I
    invoke-virtual { p3, v2, v4 }, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->y:I
    goto/16 :L84
  :L23
  .line 35
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->x:I
    invoke-static { p3, v2, v4 }, Landroidx/constraintlayout/widget/d;->o(Landroid/content/res/TypedArray;II)I
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->x:I
    goto/16 :L84
  :L24
  .line 36
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;
    iget v4, v3, Landroidx/constraintlayout/widget/d$e;->b:F
    invoke-virtual { p3, v2, v4 }, Landroid/content/res/TypedArray;->getFloat(IF)F
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$e;->b:F
    goto/16 :L84
  :L25
  .line 37
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->Y:I
    invoke-virtual { p3, v2, v4 }, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->Y:I
    goto/16 :L84
  :L26
  .line 38
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->X:I
    invoke-virtual { p3, v2, v4 }, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->X:I
    goto/16 :L84
  :L27
  .line 39
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->W:I
    invoke-virtual { p3, v2, v4 }, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->W:I
    goto/16 :L84
  :L28
  .line 40
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->V:I
    invoke-virtual { p3, v2, v4 }, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->V:I
    goto/16 :L84
  :L29
  .line 41
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->U:I
    invoke-virtual { p3, v2, v4 }, Landroid/content/res/TypedArray;->getInt(II)I
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->U:I
    goto/16 :L84
  :L30
  .line 42
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->T:I
    invoke-virtual { p3, v2, v4 }, Landroid/content/res/TypedArray;->getInt(II)I
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->T:I
    goto/16 :L84
  :L31
  .line 43
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt v3, v7, :L84
  .line 44
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;
    iget v4, v3, Landroidx/constraintlayout/widget/d$e;->k:F
    invoke-virtual { p3, v2, v4 }, Landroid/content/res/TypedArray;->getDimension(IF)F
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$e;->k:F
    goto/16 :L84
  :L32
  .line 45
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;
    iget v4, v3, Landroidx/constraintlayout/widget/d$e;->j:F
    invoke-virtual { p3, v2, v4 }, Landroid/content/res/TypedArray;->getDimension(IF)F
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$e;->j:F
    goto/16 :L84
  :L33
  .line 46
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;
    iget v4, v3, Landroidx/constraintlayout/widget/d$e;->i:F
    invoke-virtual { p3, v2, v4 }, Landroid/content/res/TypedArray;->getDimension(IF)F
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$e;->i:F
    goto/16 :L84
  :L34
  .line 47
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;
    iget v4, v3, Landroidx/constraintlayout/widget/d$e;->h:F
    invoke-virtual { p3, v2, v4 }, Landroid/content/res/TypedArray;->getDimension(IF)F
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$e;->h:F
    goto/16 :L84
  :L35
  .line 48
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;
    iget v4, v3, Landroidx/constraintlayout/widget/d$e;->g:F
    invoke-virtual { p3, v2, v4 }, Landroid/content/res/TypedArray;->getDimension(IF)F
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$e;->g:F
    goto/16 :L84
  :L36
  .line 49
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;
    iget v4, v3, Landroidx/constraintlayout/widget/d$e;->f:F
    invoke-virtual { p3, v2, v4 }, Landroid/content/res/TypedArray;->getFloat(IF)F
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$e;->f:F
    goto/16 :L84
  :L37
  .line 50
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;
    iget v4, v3, Landroidx/constraintlayout/widget/d$e;->e:F
    invoke-virtual { p3, v2, v4 }, Landroid/content/res/TypedArray;->getFloat(IF)F
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$e;->e:F
    goto/16 :L84
  :L38
  .line 51
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;
    iget v4, v3, Landroidx/constraintlayout/widget/d$e;->d:F
    invoke-virtual { p3, v2, v4 }, Landroid/content/res/TypedArray;->getFloat(IF)F
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$e;->d:F
    goto/16 :L84
  :L39
  .line 52
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;
    iget v4, v3, Landroidx/constraintlayout/widget/d$e;->c:F
    invoke-virtual { p3, v2, v4 }, Landroid/content/res/TypedArray;->getFloat(IF)F
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$e;->c:F
    goto/16 :L84
  :L40
  .line 53
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt v3, v7, :L84
  .line 54
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;
    iput-boolean v4, v3, Landroidx/constraintlayout/widget/d$e;->l:Z
  .line 55
    iget v4, v3, Landroidx/constraintlayout/widget/d$e;->m:F
    invoke-virtual { p3, v2, v4 }, Landroid/content/res/TypedArray;->getDimension(IF)F
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$e;->m:F
    goto/16 :L84
  :L41
  .line 56
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->b:Landroidx/constraintlayout/widget/d$d;
    iget v4, v3, Landroidx/constraintlayout/widget/d$d;->d:F
    invoke-virtual { p3, v2, v4 }, Landroid/content/res/TypedArray;->getFloat(IF)F
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$d;->d:F
    goto/16 :L84
  :L42
  .line 57
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->S:I
    invoke-virtual { p3, v2, v4 }, Landroid/content/res/TypedArray;->getInt(II)I
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->S:I
    goto/16 :L84
  :L43
  .line 58
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->R:I
    invoke-virtual { p3, v2, v4 }, Landroid/content/res/TypedArray;->getInt(II)I
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->R:I
    goto/16 :L84
  :L44
  .line 59
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->P:F
    invoke-virtual { p3, v2, v4 }, Landroid/content/res/TypedArray;->getFloat(IF)F
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->P:F
    goto/16 :L84
  :L45
  .line 60
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->Q:F
    invoke-virtual { p3, v2, v4 }, Landroid/content/res/TypedArray;->getFloat(IF)F
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->Q:F
    goto/16 :L84
  :L46
  .line 61
    iget v3, p2, Landroidx/constraintlayout/widget/d$a;->a:I
    invoke-virtual { p3, v2, v3 }, Landroid/content/res/TypedArray;->getResourceId(II)I
    move-result v2
    iput v2, p2, Landroidx/constraintlayout/widget/d$a;->a:I
    goto/16 :L84
  :L47
  .line 62
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->v:F
    invoke-virtual { p3, v2, v4 }, Landroid/content/res/TypedArray;->getFloat(IF)F
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->v:F
    goto/16 :L84
  :L48
  .line 63
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->l:I
    invoke-static { p3, v2, v4 }, Landroidx/constraintlayout/widget/d;->o(Landroid/content/res/TypedArray;II)I
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->l:I
    goto/16 :L84
  :L49
  .line 64
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->m:I
    invoke-static { p3, v2, v4 }, Landroidx/constraintlayout/widget/d;->o(Landroid/content/res/TypedArray;II)I
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->m:I
    goto/16 :L84
  :L50
  .line 65
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->F:I
    invoke-virtual { p3, v2, v4 }, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->F:I
    goto/16 :L84
  :L51
  .line 66
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->r:I
    invoke-static { p3, v2, v4 }, Landroidx/constraintlayout/widget/d;->o(Landroid/content/res/TypedArray;II)I
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->r:I
    goto/16 :L84
  :L52
  .line 67
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->q:I
    invoke-static { p3, v2, v4 }, Landroidx/constraintlayout/widget/d;->o(Landroid/content/res/TypedArray;II)I
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->q:I
    goto/16 :L84
  :L53
  .line 68
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt v3, v8, :L84
  .line 69
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->I:I
    invoke-virtual { p3, v2, v4 }, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->I:I
    goto/16 :L84
  :L54
  .line 70
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->k:I
    invoke-static { p3, v2, v4 }, Landroidx/constraintlayout/widget/d;->o(Landroid/content/res/TypedArray;II)I
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->k:I
    goto/16 :L84
  :L55
  .line 71
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->j:I
    invoke-static { p3, v2, v4 }, Landroidx/constraintlayout/widget/d;->o(Landroid/content/res/TypedArray;II)I
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->j:I
    goto/16 :L84
  :L56
  .line 72
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->E:I
    invoke-virtual { p3, v2, v4 }, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->E:I
    goto/16 :L84
  :L57
  .line 73
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->C:I
    invoke-virtual { p3, v2, v4 }, Landroid/content/res/TypedArray;->getInt(II)I
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->C:I
    goto/16 :L84
  :L58
  .line 74
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->i:I
    invoke-static { p3, v2, v4 }, Landroidx/constraintlayout/widget/d;->o(Landroid/content/res/TypedArray;II)I
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->i:I
    goto/16 :L84
  :L59
  .line 75
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->h:I
    invoke-static { p3, v2, v4 }, Landroidx/constraintlayout/widget/d;->o(Landroid/content/res/TypedArray;II)I
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->h:I
    goto/16 :L84
  :L60
  .line 76
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->D:I
    invoke-virtual { p3, v2, v4 }, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->D:I
    goto/16 :L84
  :L61
  .line 77
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->c:I
    invoke-virtual { p3, v2, v4 }, Landroid/content/res/TypedArray;->getLayoutDimension(II)I
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->c:I
    goto/16 :L84
  :L62
  .line 78
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->b:Landroidx/constraintlayout/widget/d$d;
    iget v4, v3, Landroidx/constraintlayout/widget/d$d;->b:I
    invoke-virtual { p3, v2, v4 }, Landroid/content/res/TypedArray;->getInt(II)I
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$d;->b:I
  .line 79
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->b:Landroidx/constraintlayout/widget/d$d;
    sget-object v3, Landroidx/constraintlayout/widget/d;->d:[I
    iget v4, v2, Landroidx/constraintlayout/widget/d$d;->b:I
    aget v3, v3, v4
    iput v3, v2, Landroidx/constraintlayout/widget/d$d;->b:I
    goto/16 :L84
  :L63
  .line 80
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->d:I
    invoke-virtual { p3, v2, v4 }, Landroid/content/res/TypedArray;->getLayoutDimension(II)I
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->d:I
    goto/16 :L84
  :L64
  .line 81
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->u:F
    invoke-virtual { p3, v2, v4 }, Landroid/content/res/TypedArray;->getFloat(IF)F
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->u:F
    goto/16 :L84
  :L65
  .line 82
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->g:F
    invoke-virtual { p3, v2, v4 }, Landroid/content/res/TypedArray;->getFloat(IF)F
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->g:F
    goto/16 :L84
  :L66
  .line 83
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->f:I
    invoke-virtual { p3, v2, v4 }, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->f:I
    goto/16 :L84
  :L67
  .line 84
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->e:I
    invoke-virtual { p3, v2, v4 }, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->e:I
    goto/16 :L84
  :L68
  .line 85
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->K:I
    invoke-virtual { p3, v2, v4 }, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->K:I
    goto/16 :L84
  :L69
  .line 86
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->O:I
    invoke-virtual { p3, v2, v4 }, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->O:I
    goto/16 :L84
  :L70
  .line 87
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->L:I
    invoke-virtual { p3, v2, v4 }, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->L:I
    goto/16 :L84
  :L71
  .line 88
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->J:I
    invoke-virtual { p3, v2, v4 }, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->J:I
    goto/16 :L84
  :L72
  .line 89
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->N:I
    invoke-virtual { p3, v2, v4 }, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->N:I
    goto/16 :L84
  :L73
  .line 90
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->M:I
    invoke-virtual { p3, v2, v4 }, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->M:I
    goto/16 :L84
  :L74
  .line 91
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->s:I
    invoke-static { p3, v2, v4 }, Landroidx/constraintlayout/widget/d;->o(Landroid/content/res/TypedArray;II)I
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->s:I
    goto :L84
  :L75
  .line 92
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->t:I
    invoke-static { p3, v2, v4 }, Landroidx/constraintlayout/widget/d;->o(Landroid/content/res/TypedArray;II)I
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->t:I
    goto :L84
  :L76
  .line 93
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt v3, v8, :L84
  .line 94
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->H:I
    invoke-virtual { p3, v2, v4 }, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->H:I
    goto :L84
  :L77
  .line 95
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->B:I
    invoke-virtual { p3, v2, v4 }, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->B:I
    goto :L84
  :L78
  .line 96
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->A:I
    invoke-virtual { p3, v2, v4 }, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->A:I
    goto :L84
  :L79
  .line 97
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    invoke-virtual { p3, v2 }, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
    move-result-object v2
    iput-object v2, v3, Landroidx/constraintlayout/widget/d$b;->w:Ljava/lang/String;
    goto :L84
  :L80
  .line 98
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->n:I
    invoke-static { p3, v2, v4 }, Landroidx/constraintlayout/widget/d;->o(Landroid/content/res/TypedArray;II)I
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->n:I
    goto :L84
  :L81
  .line 99
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->o:I
    invoke-static { p3, v2, v4 }, Landroidx/constraintlayout/widget/d;->o(Landroid/content/res/TypedArray;II)I
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->o:I
    goto :L84
  :L82
  .line 100
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->G:I
    invoke-virtual { p3, v2, v4 }, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->G:I
    goto :L84
  :L83
  .line 101
    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iget v4, v3, Landroidx/constraintlayout/widget/d$b;->p:I
    invoke-static { p3, v2, v4 }, Landroidx/constraintlayout/widget/d;->o(Landroid/content/res/TypedArray;II)I
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->p:I
  :L84
    add-int/lit8 v1, v1, 1
    goto/16 :L0
  :L85
    return-void
  :L86
  .packed-switch 1
    :L83
    :L82
    :L81
    :L80
    :L79
    :L78
    :L77
    :L76
    :L75
    :L74
    :L73
    :L72
    :L71
    :L70
    :L69
    :L68
    :L67
    :L66
    :L65
    :L64
    :L63
    :L62
    :L61
    :L60
    :L59
    :L58
    :L57
    :L56
    :L55
    :L54
    :L53
    :L52
    :L51
    :L50
    :L49
    :L48
    :L47
    :L46
    :L45
    :L44
    :L43
    :L42
    :L41
    :L40
    :L39
    :L38
    :L37
    :L36
    :L35
    :L34
    :L33
    :L32
    :L31
    :L30
    :L29
    :L28
    :L27
    :L26
    :L25
    :L24
    :L23
    :L22
    :L21
    :L20
    :L18
    :L17
    :L16
    :L15
    :L14
    :L13
    :L84
    :L12
    :L11
    :L10
    :L9
    :L8
    :L7
    :L6
    :L5
    :L4
    :L3
    :L2
  .end packed-switch
.end method

.method public c(Landroidx/constraintlayout/widget/ConstraintLayout;)V
  .registers 3
    const/4 v0, 1
  .line 1
    invoke-virtual { p0, p1, v0 }, Landroidx/constraintlayout/widget/d;->d(Landroidx/constraintlayout/widget/ConstraintLayout;Z)V
    const/4 v0, 0
  .line 2
    invoke-virtual { p1, v0 }, Landroidx/constraintlayout/widget/ConstraintLayout;->setConstraintSet(Landroidx/constraintlayout/widget/d;)V
  .line 3
    invoke-virtual { p1 }, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V
    return-void
.end method

.method d(Landroidx/constraintlayout/widget/ConstraintLayout;Z)V
  .registers 12
  .line 1
    invoke-virtual { p1 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v0
  .line 2
    new-instance v1, Ljava/util/HashSet;
    iget-object v2, p0, Landroidx/constraintlayout/widget/d;->c:Ljava/util/HashMap;
    invoke-virtual { v2 }, Ljava/util/HashMap;->keySet()Ljava/util/Set;
    move-result-object v2
    invoke-direct { v1, v2 }, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    const/4 v2, 0
  :L0
    const/4 v3, 1
    const/4 v4, -1
    if-ge v2, v0, :L15
  .line 3
    invoke-virtual { p1, v2 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v5
  .line 4
    invoke-virtual { v5 }, Landroid/view/View;->getId()I
    move-result v6
  .line 5
    iget-object v7, p0, Landroidx/constraintlayout/widget/d;->c:Ljava/util/HashMap;
    invoke-static { v6 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v8
    invoke-virtual { v7, v8 }, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    move-result v7
    if-nez v7, :L1
  .line 6
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "id unknown "
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { v5 }, Lc/e/a/b/a;->a(Landroid/view/View;)Ljava/lang/String;
    move-result-object v4
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    goto/16 :L14
  :L1
  .line 7
    iget-boolean v7, p0, Landroidx/constraintlayout/widget/d;->b:Z
    if-eqz v7, :L3
    if-eq v6, v4, :L2
    goto :L3
  :L2
  .line 8
    new-instance p1, Ljava/lang/RuntimeException;
    const-string p2, "All children of ConstraintLayout must have ids to use ConstraintSet"
    invoke-direct { p1, p2 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
    throw p1
  :L3
    if-ne v6, v4, :L4
    goto/16 :L14
  :L4
  .line 9
    iget-object v7, p0, Landroidx/constraintlayout/widget/d;->c:Ljava/util/HashMap;
    invoke-static { v6 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v8
    invoke-virtual { v7, v8 }, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    move-result v7
    if-eqz v7, :L13
  .line 10
    invoke-static { v6 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v7
    invoke-virtual { v1, v7 }, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
  .line 11
    iget-object v7, p0, Landroidx/constraintlayout/widget/d;->c:Ljava/util/HashMap;
    invoke-static { v6 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v8
    invoke-virtual { v7, v8 }, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v7
    check-cast v7, Landroidx/constraintlayout/widget/d$a;
  .line 12
    instance-of v8, v5, Landroidx/constraintlayout/widget/Barrier;
    if-eqz v8, :L5
  .line 13
    iget-object v8, v7, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iput v3, v8, Landroidx/constraintlayout/widget/d$b;->d0:I
  :L5
  .line 14
    iget-object v8, v7, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iget v8, v8, Landroidx/constraintlayout/widget/d$b;->d0:I
    if-eq v8, v4, :L8
    if-eq v8, v3, :L6
    goto :L8
  :L6
  .line 15
    move-object v3, v5
    check-cast v3, Landroidx/constraintlayout/widget/Barrier;
  .line 16
    invoke-virtual { v3, v6 }, Landroid/view/View;->setId(I)V
  .line 17
    iget-object v4, v7, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iget v4, v4, Landroidx/constraintlayout/widget/d$b;->b0:I
    invoke-virtual { v3, v4 }, Landroidx/constraintlayout/widget/Barrier;->setType(I)V
  .line 18
    iget-object v4, v7, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iget v4, v4, Landroidx/constraintlayout/widget/d$b;->c0:I
    invoke-virtual { v3, v4 }, Landroidx/constraintlayout/widget/Barrier;->setMargin(I)V
  .line 19
    iget-object v4, v7, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iget-boolean v4, v4, Landroidx/constraintlayout/widget/d$b;->j0:Z
    invoke-virtual { v3, v4 }, Landroidx/constraintlayout/widget/Barrier;->setAllowsGoneWidget(Z)V
  .line 20
    iget-object v4, v7, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iget-object v6, v4, Landroidx/constraintlayout/widget/d$b;->e0:[I
    if-eqz v6, :L7
  .line 21
    invoke-virtual { v3, v6 }, Landroidx/constraintlayout/widget/b;->setReferencedIds([I)V
    goto :L8
  :L7
  .line 22
    iget-object v6, v4, Landroidx/constraintlayout/widget/d$b;->f0:Ljava/lang/String;
    if-eqz v6, :L8
  .line 23
    invoke-direct { p0, v3, v6 }, Landroidx/constraintlayout/widget/d;->j(Landroid/view/View;Ljava/lang/String;)[I
    move-result-object v6
    iput-object v6, v4, Landroidx/constraintlayout/widget/d$b;->e0:[I
  .line 24
    iget-object v4, v7, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iget-object v4, v4, Landroidx/constraintlayout/widget/d$b;->e0:[I
    invoke-virtual { v3, v4 }, Landroidx/constraintlayout/widget/b;->setReferencedIds([I)V
  :L8
  .line 25
    invoke-virtual { v5 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v3
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$b;
  .line 26
    invoke-virtual { v3 }, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a()V
  .line 27
    invoke-virtual { v7, v3 }, Landroidx/constraintlayout/widget/d$a;->d(Landroidx/constraintlayout/widget/ConstraintLayout$b;)V
    if-eqz p2, :L9
  .line 28
    iget-object v4, v7, Landroidx/constraintlayout/widget/d$a;->f:Ljava/util/HashMap;
    invoke-static { v5, v4 }, Landroidx/constraintlayout/widget/a;->c(Landroid/view/View;Ljava/util/HashMap;)V
  :L9
  .line 29
    invoke-virtual { v5, v3 }, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  .line 30
    iget-object v3, v7, Landroidx/constraintlayout/widget/d$a;->b:Landroidx/constraintlayout/widget/d$d;
    iget v4, v3, Landroidx/constraintlayout/widget/d$d;->c:I
    if-nez v4, :L10
  .line 31
    iget v3, v3, Landroidx/constraintlayout/widget/d$d;->b:I
    invoke-virtual { v5, v3 }, Landroid/view/View;->setVisibility(I)V
  :L10
  .line 32
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v4, 17
    if-lt v3, v4, :L14
  .line 33
    iget-object v3, v7, Landroidx/constraintlayout/widget/d$a;->b:Landroidx/constraintlayout/widget/d$d;
    iget v3, v3, Landroidx/constraintlayout/widget/d$d;->d:F
    invoke-virtual { v5, v3 }, Landroid/view/View;->setAlpha(F)V
  .line 34
    iget-object v3, v7, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;
    iget v3, v3, Landroidx/constraintlayout/widget/d$e;->b:F
    invoke-virtual { v5, v3 }, Landroid/view/View;->setRotation(F)V
  .line 35
    iget-object v3, v7, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;
    iget v3, v3, Landroidx/constraintlayout/widget/d$e;->c:F
    invoke-virtual { v5, v3 }, Landroid/view/View;->setRotationX(F)V
  .line 36
    iget-object v3, v7, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;
    iget v3, v3, Landroidx/constraintlayout/widget/d$e;->d:F
    invoke-virtual { v5, v3 }, Landroid/view/View;->setRotationY(F)V
  .line 37
    iget-object v3, v7, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;
    iget v3, v3, Landroidx/constraintlayout/widget/d$e;->e:F
    invoke-virtual { v5, v3 }, Landroid/view/View;->setScaleX(F)V
  .line 38
    iget-object v3, v7, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;
    iget v3, v3, Landroidx/constraintlayout/widget/d$e;->f:F
    invoke-virtual { v5, v3 }, Landroid/view/View;->setScaleY(F)V
  .line 39
    iget-object v3, v7, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;
    iget v3, v3, Landroidx/constraintlayout/widget/d$e;->g:F
    invoke-static { v3 }, Ljava/lang/Float;->isNaN(F)Z
    move-result v3
    if-nez v3, :L11
  .line 40
    iget-object v3, v7, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;
    iget v3, v3, Landroidx/constraintlayout/widget/d$e;->g:F
    invoke-virtual { v5, v3 }, Landroid/view/View;->setPivotX(F)V
  :L11
  .line 41
    iget-object v3, v7, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;
    iget v3, v3, Landroidx/constraintlayout/widget/d$e;->h:F
    invoke-static { v3 }, Ljava/lang/Float;->isNaN(F)Z
    move-result v3
    if-nez v3, :L12
  .line 42
    iget-object v3, v7, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;
    iget v3, v3, Landroidx/constraintlayout/widget/d$e;->h:F
    invoke-virtual { v5, v3 }, Landroid/view/View;->setPivotY(F)V
  :L12
  .line 43
    iget-object v3, v7, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;
    iget v3, v3, Landroidx/constraintlayout/widget/d$e;->i:F
    invoke-virtual { v5, v3 }, Landroid/view/View;->setTranslationX(F)V
  .line 44
    iget-object v3, v7, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;
    iget v3, v3, Landroidx/constraintlayout/widget/d$e;->j:F
    invoke-virtual { v5, v3 }, Landroid/view/View;->setTranslationY(F)V
  .line 45
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v4, 21
    if-lt v3, v4, :L14
  .line 46
    iget-object v3, v7, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;
    iget v3, v3, Landroidx/constraintlayout/widget/d$e;->k:F
    invoke-virtual { v5, v3 }, Landroid/view/View;->setTranslationZ(F)V
  .line 47
    iget-object v3, v7, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;
    iget-boolean v4, v3, Landroidx/constraintlayout/widget/d$e;->l:Z
    if-eqz v4, :L14
  .line 48
    iget v3, v3, Landroidx/constraintlayout/widget/d$e;->m:F
    invoke-virtual { v5, v3 }, Landroid/view/View;->setElevation(F)V
    goto :L14
  :L13
  .line 49
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "WARNING NO CONSTRAINTS for view "
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3, v6 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L14
    add-int/lit8 v2, v2, 1
    goto/16 :L0
  :L15
  .line 50
    invoke-virtual { v1 }, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;
    move-result-object p2
  :L16
    invoke-interface { p2 }, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :L21
    invoke-interface { p2 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/Integer;
  .line 51
    iget-object v1, p0, Landroidx/constraintlayout/widget/d;->c:Ljava/util/HashMap;
    invoke-virtual { v1, v0 }, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/constraintlayout/widget/d$a;
  .line 52
    iget-object v2, v1, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iget v2, v2, Landroidx/constraintlayout/widget/d$b;->d0:I
    if-eq v2, v4, :L20
    if-eq v2, v3, :L17
    goto :L20
  :L17
  .line 53
    new-instance v2, Landroidx/constraintlayout/widget/Barrier;
    invoke-virtual { p1 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object v5
    invoke-direct { v2, v5 }, Landroidx/constraintlayout/widget/Barrier;-><init>(Landroid/content/Context;)V
  .line 54
    invoke-virtual { v0 }, Ljava/lang/Integer;->intValue()I
    move-result v5
    invoke-virtual { v2, v5 }, Landroid/view/View;->setId(I)V
  .line 55
    iget-object v5, v1, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iget-object v6, v5, Landroidx/constraintlayout/widget/d$b;->e0:[I
    if-eqz v6, :L18
  .line 56
    invoke-virtual { v2, v6 }, Landroidx/constraintlayout/widget/b;->setReferencedIds([I)V
    goto :L19
  :L18
  .line 57
    iget-object v6, v5, Landroidx/constraintlayout/widget/d$b;->f0:Ljava/lang/String;
    if-eqz v6, :L19
  .line 58
    invoke-direct { p0, v2, v6 }, Landroidx/constraintlayout/widget/d;->j(Landroid/view/View;Ljava/lang/String;)[I
    move-result-object v6
    iput-object v6, v5, Landroidx/constraintlayout/widget/d$b;->e0:[I
  .line 59
    iget-object v5, v1, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iget-object v5, v5, Landroidx/constraintlayout/widget/d$b;->e0:[I
    invoke-virtual { v2, v5 }, Landroidx/constraintlayout/widget/b;->setReferencedIds([I)V
  :L19
  .line 60
    iget-object v5, v1, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iget v5, v5, Landroidx/constraintlayout/widget/d$b;->b0:I
    invoke-virtual { v2, v5 }, Landroidx/constraintlayout/widget/Barrier;->setType(I)V
  .line 61
    iget-object v5, v1, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iget v5, v5, Landroidx/constraintlayout/widget/d$b;->c0:I
    invoke-virtual { v2, v5 }, Landroidx/constraintlayout/widget/Barrier;->setMargin(I)V
  .line 62
    invoke-virtual { p1 }, Landroidx/constraintlayout/widget/ConstraintLayout;->e()Landroidx/constraintlayout/widget/ConstraintLayout$b;
    move-result-object v5
  .line 63
    invoke-virtual { v2 }, Landroidx/constraintlayout/widget/b;->n()V
  .line 64
    invoke-virtual { v1, v5 }, Landroidx/constraintlayout/widget/d$a;->d(Landroidx/constraintlayout/widget/ConstraintLayout$b;)V
  .line 65
    invoke-virtual { p1, v2, v5 }, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  :L20
  .line 66
    iget-object v2, v1, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iget-boolean v2, v2, Landroidx/constraintlayout/widget/d$b;->a:Z
    if-eqz v2, :L16
  .line 67
    new-instance v2, Landroidx/constraintlayout/widget/Guideline;
    invoke-virtual { p1 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object v5
    invoke-direct { v2, v5 }, Landroidx/constraintlayout/widget/Guideline;-><init>(Landroid/content/Context;)V
  .line 68
    invoke-virtual { v0 }, Ljava/lang/Integer;->intValue()I
    move-result v0
    invoke-virtual { v2, v0 }, Landroid/view/View;->setId(I)V
  .line 69
    invoke-virtual { p1 }, Landroidx/constraintlayout/widget/ConstraintLayout;->e()Landroidx/constraintlayout/widget/ConstraintLayout$b;
    move-result-object v0
  .line 70
    invoke-virtual { v1, v0 }, Landroidx/constraintlayout/widget/d$a;->d(Landroidx/constraintlayout/widget/ConstraintLayout$b;)V
  .line 71
    invoke-virtual { p1, v2, v0 }, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    goto/16 :L16
  :L21
    return-void
.end method

.method public e(II)V
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/d;->c:Ljava/util/HashMap;
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L7
  .line 2
    iget-object v0, p0, Landroidx/constraintlayout/widget/d;->c:Ljava/util/HashMap;
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p1
    invoke-virtual { v0, p1 }, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroidx/constraintlayout/widget/d$a;
    const/4 v0, -1
    packed-switch p2, :L8
  .line 3
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string p2, "unknown constraint"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
  :L0
  .line 4
    iget-object p1, p1, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->s:I
  .line 5
    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->t:I
  .line 6
    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->H:I
  .line 7
    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->N:I
    goto :L7
  :L1
  .line 8
    iget-object p1, p1, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->q:I
  .line 9
    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->r:I
  .line 10
    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->I:I
  .line 11
    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->O:I
    goto :L7
  :L2
  .line 12
    iget-object p1, p1, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->p:I
    goto :L7
  :L3
  .line 13
    iget-object p1, p1, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->n:I
  .line 14
    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->o:I
  .line 15
    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->G:I
  .line 16
    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->M:I
    goto :L7
  :L4
  .line 17
    iget-object p1, p1, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->m:I
  .line 18
    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->l:I
  .line 19
    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->F:I
  .line 20
    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->K:I
    goto :L7
  :L5
  .line 21
    iget-object p1, p1, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->k:I
  .line 22
    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->j:I
  .line 23
    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->E:I
  .line 24
    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->L:I
    goto :L7
  :L6
  .line 25
    iget-object p1, p1, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->i:I
  .line 26
    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->h:I
  .line 27
    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->D:I
  .line 28
    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->J:I
  :L7
    return-void
  :L8
  .packed-switch 1
    :L6
    :L5
    :L4
    :L3
    :L2
    :L1
    :L0
  .end packed-switch
.end method

.method public f(Landroid/content/Context;I)V
  .registers 4
  .line 1
    invoke-static { p1 }, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
    move-result-object p1
    const/4 v0, 0
    invoke-virtual { p1, p2, v0 }, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    move-result-object p1
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;
    invoke-virtual { p0, p1 }, Landroidx/constraintlayout/widget/d;->g(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    return-void
.end method

.method public g(Landroidx/constraintlayout/widget/ConstraintLayout;)V
  .registers 13
  .line 1
    invoke-virtual { p1 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v0
  .line 2
    iget-object v1, p0, Landroidx/constraintlayout/widget/d;->c:Ljava/util/HashMap;
    invoke-virtual { v1 }, Ljava/util/HashMap;->clear()V
    const/4 v1, 0
  :L0
    if-ge v1, v0, :L8
  .line 3
    invoke-virtual { p1, v1 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v2
  .line 4
    invoke-virtual { v2 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v3
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$b;
  .line 5
    invoke-virtual { v2 }, Landroid/view/View;->getId()I
    move-result v4
  .line 6
    iget-boolean v5, p0, Landroidx/constraintlayout/widget/d;->b:Z
    if-eqz v5, :L2
    const/4 v5, -1
    if-eq v4, v5, :L1
    goto :L2
  :L1
  .line 7
    new-instance p1, Ljava/lang/RuntimeException;
    const-string v0, "All children of ConstraintLayout must have ids to use ConstraintSet"
    invoke-direct { p1, v0 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
    throw p1
  :L2
  .line 8
    iget-object v5, p0, Landroidx/constraintlayout/widget/d;->c:Ljava/util/HashMap;
    invoke-static { v4 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    invoke-virtual { v5, v6 }, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    move-result v5
    if-nez v5, :L3
  .line 9
    iget-object v5, p0, Landroidx/constraintlayout/widget/d;->c:Ljava/util/HashMap;
    invoke-static { v4 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    new-instance v7, Landroidx/constraintlayout/widget/d$a;
    invoke-direct { v7 }, Landroidx/constraintlayout/widget/d$a;-><init>()V
    invoke-virtual { v5, v6, v7 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L3
  .line 10
    iget-object v5, p0, Landroidx/constraintlayout/widget/d;->c:Ljava/util/HashMap;
    invoke-static { v4 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    invoke-virtual { v5, v6 }, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Landroidx/constraintlayout/widget/d$a;
  .line 11
    iget-object v6, p0, Landroidx/constraintlayout/widget/d;->a:Ljava/util/HashMap;
    invoke-static { v6, v2 }, Landroidx/constraintlayout/widget/a;->a(Ljava/util/HashMap;Landroid/view/View;)Ljava/util/HashMap;
    move-result-object v6
    iput-object v6, v5, Landroidx/constraintlayout/widget/d$a;->f:Ljava/util/HashMap;
  .line 12
    invoke-static { v5, v4, v3 }, Landroidx/constraintlayout/widget/d$a;->a(Landroidx/constraintlayout/widget/d$a;ILandroidx/constraintlayout/widget/ConstraintLayout$b;)V
  .line 13
    iget-object v3, v5, Landroidx/constraintlayout/widget/d$a;->b:Landroidx/constraintlayout/widget/d$d;
    invoke-virtual { v2 }, Landroid/view/View;->getVisibility()I
    move-result v4
    iput v4, v3, Landroidx/constraintlayout/widget/d$d;->b:I
  .line 14
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v4, 17
    if-lt v3, v4, :L6
  .line 15
    iget-object v3, v5, Landroidx/constraintlayout/widget/d$a;->b:Landroidx/constraintlayout/widget/d$d;
    invoke-virtual { v2 }, Landroid/view/View;->getAlpha()F
    move-result v4
    iput v4, v3, Landroidx/constraintlayout/widget/d$d;->d:F
  .line 16
    iget-object v3, v5, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;
    invoke-virtual { v2 }, Landroid/view/View;->getRotation()F
    move-result v4
    iput v4, v3, Landroidx/constraintlayout/widget/d$e;->b:F
  .line 17
    iget-object v3, v5, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;
    invoke-virtual { v2 }, Landroid/view/View;->getRotationX()F
    move-result v4
    iput v4, v3, Landroidx/constraintlayout/widget/d$e;->c:F
  .line 18
    iget-object v3, v5, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;
    invoke-virtual { v2 }, Landroid/view/View;->getRotationY()F
    move-result v4
    iput v4, v3, Landroidx/constraintlayout/widget/d$e;->d:F
  .line 19
    iget-object v3, v5, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;
    invoke-virtual { v2 }, Landroid/view/View;->getScaleX()F
    move-result v4
    iput v4, v3, Landroidx/constraintlayout/widget/d$e;->e:F
  .line 20
    iget-object v3, v5, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;
    invoke-virtual { v2 }, Landroid/view/View;->getScaleY()F
    move-result v4
    iput v4, v3, Landroidx/constraintlayout/widget/d$e;->f:F
  .line 21
    invoke-virtual { v2 }, Landroid/view/View;->getPivotX()F
    move-result v3
  .line 22
    invoke-virtual { v2 }, Landroid/view/View;->getPivotY()F
    move-result v4
    float-to-double v6, v3
    const-wide/16 v8, 0
    cmpl-double v10, v6, v8
    if-nez v10, :L4
    float-to-double v6, v4
    cmpl-double v10, v6, v8
    if-eqz v10, :L5
  :L4
  .line 23
    iget-object v6, v5, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;
    iput v3, v6, Landroidx/constraintlayout/widget/d$e;->g:F
  .line 24
    iput v4, v6, Landroidx/constraintlayout/widget/d$e;->h:F
  :L5
  .line 25
    iget-object v3, v5, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;
    invoke-virtual { v2 }, Landroid/view/View;->getTranslationX()F
    move-result v4
    iput v4, v3, Landroidx/constraintlayout/widget/d$e;->i:F
  .line 26
    iget-object v3, v5, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;
    invoke-virtual { v2 }, Landroid/view/View;->getTranslationY()F
    move-result v4
    iput v4, v3, Landroidx/constraintlayout/widget/d$e;->j:F
  .line 27
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v4, 21
    if-lt v3, v4, :L6
  .line 28
    iget-object v3, v5, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;
    invoke-virtual { v2 }, Landroid/view/View;->getTranslationZ()F
    move-result v4
    iput v4, v3, Landroidx/constraintlayout/widget/d$e;->k:F
  .line 29
    iget-object v3, v5, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;
    iget-boolean v4, v3, Landroidx/constraintlayout/widget/d$e;->l:Z
    if-eqz v4, :L6
  .line 30
    invoke-virtual { v2 }, Landroid/view/View;->getElevation()F
    move-result v4
    iput v4, v3, Landroidx/constraintlayout/widget/d$e;->m:F
  :L6
  .line 31
    instance-of v3, v2, Landroidx/constraintlayout/widget/Barrier;
    if-eqz v3, :L7
  .line 32
    check-cast v2, Landroidx/constraintlayout/widget/Barrier;
  .line 33
    iget-object v3, v5, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    invoke-virtual { v2 }, Landroidx/constraintlayout/widget/Barrier;->o()Z
    move-result v4
    iput-boolean v4, v3, Landroidx/constraintlayout/widget/d$b;->j0:Z
  .line 34
    iget-object v3, v5, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    invoke-virtual { v2 }, Landroidx/constraintlayout/widget/b;->getReferencedIds()[I
    move-result-object v4
    iput-object v4, v3, Landroidx/constraintlayout/widget/d$b;->e0:[I
  .line 35
    iget-object v3, v5, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    invoke-virtual { v2 }, Landroidx/constraintlayout/widget/Barrier;->getType()I
    move-result v4
    iput v4, v3, Landroidx/constraintlayout/widget/d$b;->b0:I
  .line 36
    iget-object v3, v5, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    invoke-virtual { v2 }, Landroidx/constraintlayout/widget/Barrier;->getMargin()I
    move-result v2
    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->c0:I
  :L7
    add-int/lit8 v1, v1, 1
    goto/16 :L0
  :L8
    return-void
.end method

.method public h(Landroidx/constraintlayout/widget/e;)V
  .registers 10
  .line 1
    invoke-virtual { p1 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v0
  .line 2
    iget-object v1, p0, Landroidx/constraintlayout/widget/d;->c:Ljava/util/HashMap;
    invoke-virtual { v1 }, Ljava/util/HashMap;->clear()V
    const/4 v1, 0
  :L0
    if-ge v1, v0, :L5
  .line 3
    invoke-virtual { p1, v1 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v2
  .line 4
    invoke-virtual { v2 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v3
    check-cast v3, Landroidx/constraintlayout/widget/e$a;
  .line 5
    invoke-virtual { v2 }, Landroid/view/View;->getId()I
    move-result v4
  .line 6
    iget-boolean v5, p0, Landroidx/constraintlayout/widget/d;->b:Z
    if-eqz v5, :L2
    const/4 v5, -1
    if-eq v4, v5, :L1
    goto :L2
  :L1
  .line 7
    new-instance p1, Ljava/lang/RuntimeException;
    const-string v0, "All children of ConstraintLayout must have ids to use ConstraintSet"
    invoke-direct { p1, v0 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
    throw p1
  :L2
  .line 8
    iget-object v5, p0, Landroidx/constraintlayout/widget/d;->c:Ljava/util/HashMap;
    invoke-static { v4 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    invoke-virtual { v5, v6 }, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    move-result v5
    if-nez v5, :L3
  .line 9
    iget-object v5, p0, Landroidx/constraintlayout/widget/d;->c:Ljava/util/HashMap;
    invoke-static { v4 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    new-instance v7, Landroidx/constraintlayout/widget/d$a;
    invoke-direct { v7 }, Landroidx/constraintlayout/widget/d$a;-><init>()V
    invoke-virtual { v5, v6, v7 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L3
  .line 10
    iget-object v5, p0, Landroidx/constraintlayout/widget/d;->c:Ljava/util/HashMap;
    invoke-static { v4 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    invoke-virtual { v5, v6 }, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Landroidx/constraintlayout/widget/d$a;
  .line 11
    instance-of v6, v2, Landroidx/constraintlayout/widget/b;
    if-eqz v6, :L4
  .line 12
    check-cast v2, Landroidx/constraintlayout/widget/b;
  .line 13
    invoke-static { v5, v2, v4, v3 }, Landroidx/constraintlayout/widget/d$a;->b(Landroidx/constraintlayout/widget/d$a;Landroidx/constraintlayout/widget/b;ILandroidx/constraintlayout/widget/e$a;)V
  :L4
  .line 14
    invoke-static { v5, v4, v3 }, Landroidx/constraintlayout/widget/d$a;->c(Landroidx/constraintlayout/widget/d$a;ILandroidx/constraintlayout/widget/e$a;)V
    add-int/lit8 v1, v1, 1
    goto :L0
  :L5
    return-void
.end method

.method public i(IIIF)V
  .registers 5
  .line 1
    invoke-direct { p0, p1 }, Landroidx/constraintlayout/widget/d;->l(I)Landroidx/constraintlayout/widget/d$a;
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
  .catch Lorg/xmlpull/v1/XmlPullParserException; { :L0 .. :L6 } :L8
  .catch Ljava/io/IOException; { :L0 .. :L6 } :L7
  .registers 7
  .line 1
    invoke-virtual { p1 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
  .line 2
    invoke-virtual { v0, p2 }, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    move-result-object p2
  :L0
  .line 3
    invoke-interface { p2 }, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    move-result v0
  :L1
    const/4 v1, 1
    if-eq v0, v1, :L9
    if-eqz v0, :L4
    const/4 v2, 2
    if-eq v0, v2, :L2
    goto :L5
  :L2
  .line 4
    invoke-interface { p2 }, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
    move-result-object v0
  .line 5
    invoke-static { p2 }, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;
    move-result-object v2
    invoke-direct { p0, p1, v2 }, Landroidx/constraintlayout/widget/d;->k(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/d$a;
    move-result-object v2
    const-string v3, "Guideline"
  .line 6
    invoke-virtual { v0, v3 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :L3
  .line 7
    iget-object v0, v2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iput-boolean v1, v0, Landroidx/constraintlayout/widget/d$b;->a:Z
  :L3
  .line 8
    iget-object v0, p0, Landroidx/constraintlayout/widget/d;->c:Ljava/util/HashMap;
    iget v1, v2, Landroidx/constraintlayout/widget/d$a;->a:I
    invoke-static { v1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-virtual { v0, v1, v2 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    goto :L5
  :L4
  .line 9
    invoke-interface { p2 }, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
  :L5
  .line 10
    invoke-interface { p2 }, Lorg/xmlpull/v1/XmlPullParser;->next()I
    move-result v0
  :L6
    goto :L1
  :L7
    move-exception p1
  .line 11
    invoke-virtual { p1 }, Ljava/io/IOException;->printStackTrace()V
    goto :L9
  :L8
    move-exception p1
  .line 12
    invoke-virtual { p1 }, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
  :L9
    return-void
.end method

.method public n(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
  .catch Lorg/xmlpull/v1/XmlPullParserException; { :L0 .. :L1 } :L36
  .catch Ljava/io/IOException; { :L0 .. :L1 } :L35
  .catch Lorg/xmlpull/v1/XmlPullParserException; { :L3 .. :L14 } :L36
  .catch Ljava/io/IOException; { :L3 .. :L14 } :L35
  .catch Lorg/xmlpull/v1/XmlPullParserException; { :L18 .. :L34 } :L36
  .catch Ljava/io/IOException; { :L18 .. :L34 } :L35
  .registers 12
  :L0
  .line 1
    invoke-interface { p2 }, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    move-result v0
  :L1
    const/4 v1, 0
    move-object v2, v1
  :L2
    const/4 v3, 1
    if-eq v0, v3, :L37
    if-eqz v0, :L32
    const-string v4, "Constraint"
    const/4 v5, 3
    const/4 v6, 2
    if-eq v0, v6, :L5
    if-eq v0, v5, :L3
    goto/16 :L33
  :L3
  .line 2
    invoke-interface { p2 }, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
    move-result-object v0
    const-string v3, "ConstraintSet"
  .line 3
    invoke-virtual { v3, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :L4
    return-void
  :L4
  .line 4
    invoke-virtual { v0, v4 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :L33
  .line 5
    iget-object v0, p0, Landroidx/constraintlayout/widget/d;->c:Ljava/util/HashMap;
    iget v3, v2, Landroidx/constraintlayout/widget/d$a;->a:I
    invoke-static { v3 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v3
    invoke-virtual { v0, v3, v2 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    move-object v2, v1
    goto/16 :L33
  :L5
  .line 6
    invoke-interface { p2 }, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
    move-result-object v0
    const/4 v7, -1
  .line 7
    invoke-virtual { v0 }, Ljava/lang/String;->hashCode()I
    move-result v8
    sparse-switch v8, :L38
    goto :L15
  :L6
    invoke-virtual { v0, v4 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L15
    const/4 v5, 0
    goto :L16
  :L7
    const-string v4, "CustomAttribute"
    invoke-virtual { v0, v4 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L15
    const/4 v5, 7
    goto :L16
  :L8
    const-string v4, "Barrier"
    invoke-virtual { v0, v4 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L15
    const/4 v5, 2
    goto :L16
  :L9
    const-string v4, "Guideline"
    invoke-virtual { v0, v4 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L15
    const/4 v5, 1
    goto :L16
  :L10
    const-string v4, "Transform"
    invoke-virtual { v0, v4 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L15
    const/4 v5, 4
    goto :L16
  :L11
    const-string v4, "PropertySet"
    invoke-virtual { v0, v4 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L15
    goto :L16
  :L12
    const-string v4, "Motion"
    invoke-virtual { v0, v4 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L15
    const/4 v5, 6
    goto :L16
  :L13
    const-string v4, "Layout"
    invoke-virtual { v0, v4 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
  :L14
    if-eqz v0, :L15
    const/4 v5, 5
    goto :L16
  :L15
    const/4 v5, -1
  :L16
    const-string v0, "XML parser error must be within a Constraint "
    packed-switch v5, :L39
    goto/16 :L33
  :L17
    if-eqz v2, :L19
  :L18
  .line 8
    iget-object v0, v2, Landroidx/constraintlayout/widget/d$a;->f:Ljava/util/HashMap;
    invoke-static { p1, p2, v0 }, Landroidx/constraintlayout/widget/a;->b(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V
    goto/16 :L33
  :L19
  .line 9
    new-instance p1, Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-interface { p2 }, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I
    move-result p2
    invoke-virtual { v1, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
    throw p1
  :L20
    if-eqz v2, :L21
  .line 10
    iget-object v0, v2, Landroidx/constraintlayout/widget/d$a;->c:Landroidx/constraintlayout/widget/d$c;
    invoke-static { p2 }, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;
    move-result-object v3
    invoke-virtual { v0, p1, v3 }, Landroidx/constraintlayout/widget/d$c;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V
    goto/16 :L33
  :L21
  .line 11
    new-instance p1, Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-interface { p2 }, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I
    move-result p2
    invoke-virtual { v1, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
    throw p1
  :L22
    if-eqz v2, :L23
  .line 12
    iget-object v0, v2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    invoke-static { p2 }, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;
    move-result-object v3
    invoke-virtual { v0, p1, v3 }, Landroidx/constraintlayout/widget/d$b;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V
    goto/16 :L33
  :L23
  .line 13
    new-instance p1, Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-interface { p2 }, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I
    move-result p2
    invoke-virtual { v1, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
    throw p1
  :L24
    if-eqz v2, :L25
  .line 14
    iget-object v0, v2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$e;
    invoke-static { p2 }, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;
    move-result-object v3
    invoke-virtual { v0, p1, v3 }, Landroidx/constraintlayout/widget/d$e;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V
    goto :L33
  :L25
  .line 15
    new-instance p1, Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-interface { p2 }, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I
    move-result p2
    invoke-virtual { v1, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
    throw p1
  :L26
    if-eqz v2, :L27
  .line 16
    iget-object v0, v2, Landroidx/constraintlayout/widget/d$a;->b:Landroidx/constraintlayout/widget/d$d;
    invoke-static { p2 }, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;
    move-result-object v3
    invoke-virtual { v0, p1, v3 }, Landroidx/constraintlayout/widget/d$d;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V
    goto :L33
  :L27
  .line 17
    new-instance p1, Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-interface { p2 }, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I
    move-result p2
    invoke-virtual { v1, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
    throw p1
  :L28
  .line 18
    invoke-static { p2 }, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;
    move-result-object v0
    invoke-direct { p0, p1, v0 }, Landroidx/constraintlayout/widget/d;->k(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/d$a;
    move-result-object v0
  .line 19
    iget-object v2, v0, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iput v3, v2, Landroidx/constraintlayout/widget/d$b;->d0:I
    goto :L31
  :L29
  .line 20
    invoke-static { p2 }, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;
    move-result-object v0
    invoke-direct { p0, p1, v0 }, Landroidx/constraintlayout/widget/d;->k(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/d$a;
    move-result-object v0
  .line 21
    iget-object v2, v0, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iput-boolean v3, v2, Landroidx/constraintlayout/widget/d$b;->a:Z
  .line 22
    iget-object v2, v0, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;
    iput-boolean v3, v2, Landroidx/constraintlayout/widget/d$b;->b:Z
    goto :L31
  :L30
  .line 23
    invoke-static { p2 }, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;
    move-result-object v0
    invoke-direct { p0, p1, v0 }, Landroidx/constraintlayout/widget/d;->k(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/d$a;
    move-result-object v0
  :L31
    move-object v2, v0
    goto :L33
  :L32
  .line 24
    invoke-interface { p2 }, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
  :L33
  .line 25
    invoke-interface { p2 }, Lorg/xmlpull/v1/XmlPullParser;->next()I
    move-result v0
  :L34
    goto/16 :L2
  :L35
    move-exception p1
  .line 26
    invoke-virtual { p1 }, Ljava/io/IOException;->printStackTrace()V
    goto :L37
  :L36
    move-exception p1
  .line 27
    invoke-virtual { p1 }, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
  :L37
    return-void
  :L38
  .sparse-switch
    -2025855158 -> :L13
    -1984451626 -> :L12
    -1269513683 -> :L11
    -1238332596 -> :L10
    -71750448 -> :L9
    1331510167 -> :L8
    1791837707 -> :L7
    1803088381 -> :L6
  .end sparse-switch
  :L39
  .packed-switch 0
    :L30
    :L29
    :L28
    :L26
    :L24
    :L22
    :L20
    :L17
  .end packed-switch
.end method
