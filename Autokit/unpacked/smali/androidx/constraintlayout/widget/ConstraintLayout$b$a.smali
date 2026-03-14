.class Landroidx/constraintlayout/widget/ConstraintLayout$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/constraintlayout/widget/ConstraintLayout$b;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "a"
.end annotation

.field public final static a:Landroid/util/SparseIntArray;

.method static constructor <clinit>()V
  .registers 3
  .line 1
    new-instance v0, Landroid/util/SparseIntArray;
    invoke-direct { v0 }, Landroid/util/SparseIntArray;-><init>()V
    sput-object v0, Landroidx/constraintlayout/widget/ConstraintLayout$b$a;->a:Landroid/util/SparseIntArray;
  .line 2
    sget v1, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_layout_constraintLeft_toLeftOf:I
    const/16 v2, 8
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 3
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout$b$a;->a:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_layout_constraintLeft_toRightOf:I
    const/16 v2, 9
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 4
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout$b$a;->a:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_layout_constraintRight_toLeftOf:I
    const/16 v2, 10
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 5
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout$b$a;->a:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_layout_constraintRight_toRightOf:I
    const/16 v2, 11
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 6
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout$b$a;->a:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_layout_constraintTop_toTopOf:I
    const/16 v2, 12
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 7
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout$b$a;->a:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_layout_constraintTop_toBottomOf:I
    const/16 v2, 13
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 8
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout$b$a;->a:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_layout_constraintBottom_toTopOf:I
    const/16 v2, 14
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 9
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout$b$a;->a:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_layout_constraintBottom_toBottomOf:I
    const/16 v2, 15
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 10
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout$b$a;->a:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_layout_constraintBaseline_toBaselineOf:I
    const/16 v2, 16
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 11
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout$b$a;->a:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_layout_constraintCircle:I
    const/4 v2, 2
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 12
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout$b$a;->a:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_layout_constraintCircleRadius:I
    const/4 v2, 3
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 13
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout$b$a;->a:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_layout_constraintCircleAngle:I
    const/4 v2, 4
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 14
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout$b$a;->a:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_layout_editor_absoluteX:I
    const/16 v2, 49
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 15
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout$b$a;->a:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_layout_editor_absoluteY:I
    const/16 v2, 50
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 16
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout$b$a;->a:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_layout_constraintGuide_begin:I
    const/4 v2, 5
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 17
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout$b$a;->a:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_layout_constraintGuide_end:I
    const/4 v2, 6
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 18
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout$b$a;->a:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_layout_constraintGuide_percent:I
    const/4 v2, 7
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 19
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout$b$a;->a:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_android_orientation:I
    const/4 v2, 1
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 20
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout$b$a;->a:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_layout_constraintStart_toEndOf:I
    const/16 v2, 17
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 21
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout$b$a;->a:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_layout_constraintStart_toStartOf:I
    const/16 v2, 18
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 22
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout$b$a;->a:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_layout_constraintEnd_toStartOf:I
    const/16 v2, 19
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 23
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout$b$a;->a:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_layout_constraintEnd_toEndOf:I
    const/16 v2, 20
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 24
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout$b$a;->a:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_layout_goneMarginLeft:I
    const/16 v2, 21
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 25
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout$b$a;->a:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_layout_goneMarginTop:I
    const/16 v2, 22
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 26
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout$b$a;->a:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_layout_goneMarginRight:I
    const/16 v2, 23
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 27
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout$b$a;->a:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_layout_goneMarginBottom:I
    const/16 v2, 24
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 28
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout$b$a;->a:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_layout_goneMarginStart:I
    const/16 v2, 25
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 29
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout$b$a;->a:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_layout_goneMarginEnd:I
    const/16 v2, 26
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 30
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout$b$a;->a:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_layout_constraintHorizontal_bias:I
    const/16 v2, 29
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 31
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout$b$a;->a:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_layout_constraintVertical_bias:I
    const/16 v2, 30
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 32
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout$b$a;->a:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_layout_constraintDimensionRatio:I
    const/16 v2, 44
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 33
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout$b$a;->a:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_layout_constraintHorizontal_weight:I
    const/16 v2, 45
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 34
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout$b$a;->a:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_layout_constraintVertical_weight:I
    const/16 v2, 46
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 35
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout$b$a;->a:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_layout_constraintHorizontal_chainStyle:I
    const/16 v2, 47
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 36
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout$b$a;->a:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_layout_constraintVertical_chainStyle:I
    const/16 v2, 48
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 37
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout$b$a;->a:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_layout_constrainedWidth:I
    const/16 v2, 27
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 38
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout$b$a;->a:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_layout_constrainedHeight:I
    const/16 v2, 28
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 39
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout$b$a;->a:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_layout_constraintWidth_default:I
    const/16 v2, 31
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 40
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout$b$a;->a:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_layout_constraintHeight_default:I
    const/16 v2, 32
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 41
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout$b$a;->a:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_layout_constraintWidth_min:I
    const/16 v2, 33
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 42
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout$b$a;->a:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_layout_constraintWidth_max:I
    const/16 v2, 34
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 43
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout$b$a;->a:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_layout_constraintWidth_percent:I
    const/16 v2, 35
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 44
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout$b$a;->a:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_layout_constraintHeight_min:I
    const/16 v2, 36
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 45
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout$b$a;->a:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_layout_constraintHeight_max:I
    const/16 v2, 37
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 46
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout$b$a;->a:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_layout_constraintHeight_percent:I
    const/16 v2, 38
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 47
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout$b$a;->a:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_layout_constraintLeft_creator:I
    const/16 v2, 39
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 48
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout$b$a;->a:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_layout_constraintTop_creator:I
    const/16 v2, 40
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 49
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout$b$a;->a:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_layout_constraintRight_creator:I
    const/16 v2, 41
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 50
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout$b$a;->a:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_layout_constraintBottom_creator:I
    const/16 v2, 42
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 51
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout$b$a;->a:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_layout_constraintBaseline_creator:I
    const/16 v2, 43
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
  .line 52
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout$b$a;->a:Landroid/util/SparseIntArray;
    sget v1, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_layout_constraintTag:I
    const/16 v2, 51
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->append(II)V
    return-void
.end method
