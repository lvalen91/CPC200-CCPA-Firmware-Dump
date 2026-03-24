.class public Landroidx/constraintlayout/widget/e$a;
.super Landroidx/constraintlayout/widget/ConstraintLayout$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public A0:F

.field public o0:F

.field public p0:Z

.field public q0:F

.field public r0:F

.field public s0:F

.field public t0:F

.field public u0:F

.field public v0:F

.field public w0:F

.field public x0:F

.field public y0:F

.field public z0:F


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 2
    iput p1, p0, Landroidx/constraintlayout/widget/e$a;->o0:F

    const/4 p2, 0x0

    .line 3
    iput-boolean p2, p0, Landroidx/constraintlayout/widget/e$a;->p0:Z

    const/4 p2, 0x0

    .line 4
    iput p2, p0, Landroidx/constraintlayout/widget/e$a;->q0:F

    .line 5
    iput p2, p0, Landroidx/constraintlayout/widget/e$a;->r0:F

    .line 6
    iput p2, p0, Landroidx/constraintlayout/widget/e$a;->s0:F

    .line 7
    iput p2, p0, Landroidx/constraintlayout/widget/e$a;->t0:F

    .line 8
    iput p1, p0, Landroidx/constraintlayout/widget/e$a;->u0:F

    .line 9
    iput p1, p0, Landroidx/constraintlayout/widget/e$a;->v0:F

    .line 10
    iput p2, p0, Landroidx/constraintlayout/widget/e$a;->w0:F

    .line 11
    iput p2, p0, Landroidx/constraintlayout/widget/e$a;->x0:F

    .line 12
    iput p2, p0, Landroidx/constraintlayout/widget/e$a;->y0:F

    .line 13
    iput p2, p0, Landroidx/constraintlayout/widget/e$a;->z0:F

    .line 14
    iput p2, p0, Landroidx/constraintlayout/widget/e$a;->A0:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    .line 15
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 16
    iput v0, p0, Landroidx/constraintlayout/widget/e$a;->o0:F

    const/4 v1, 0x0

    .line 17
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/e$a;->p0:Z

    const/4 v2, 0x0

    .line 18
    iput v2, p0, Landroidx/constraintlayout/widget/e$a;->q0:F

    .line 19
    iput v2, p0, Landroidx/constraintlayout/widget/e$a;->r0:F

    .line 20
    iput v2, p0, Landroidx/constraintlayout/widget/e$a;->s0:F

    .line 21
    iput v2, p0, Landroidx/constraintlayout/widget/e$a;->t0:F

    .line 22
    iput v0, p0, Landroidx/constraintlayout/widget/e$a;->u0:F

    .line 23
    iput v0, p0, Landroidx/constraintlayout/widget/e$a;->v0:F

    .line 24
    iput v2, p0, Landroidx/constraintlayout/widget/e$a;->w0:F

    .line 25
    iput v2, p0, Landroidx/constraintlayout/widget/e$a;->x0:F

    .line 26
    iput v2, p0, Landroidx/constraintlayout/widget/e$a;->y0:F

    .line 27
    iput v2, p0, Landroidx/constraintlayout/widget/e$a;->z0:F

    .line 28
    iput v2, p0, Landroidx/constraintlayout/widget/e$a;->A0:F

    .line 29
    sget-object v0, Landroidx/constraintlayout/widget/i;->ConstraintSet:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 30
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    :goto_2b
    if-ge v1, p2, :cond_e1

    .line 31
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    .line 32
    sget v2, Landroidx/constraintlayout/widget/i;->ConstraintSet_android_alpha:I

    if-ne v0, v2, :cond_3f

    .line 33
    iget v2, p0, Landroidx/constraintlayout/widget/e$a;->o0:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/e$a;->o0:F

    goto/16 :goto_dd

    .line 34
    :cond_3f
    sget v2, Landroidx/constraintlayout/widget/i;->ConstraintSet_android_elevation:I

    const/16 v3, 0x15

    if-ne v0, v2, :cond_56

    .line 35
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_dd

    .line 36
    iget v2, p0, Landroidx/constraintlayout/widget/e$a;->q0:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/e$a;->q0:F

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/e$a;->p0:Z

    goto/16 :goto_dd

    .line 38
    :cond_56
    sget v2, Landroidx/constraintlayout/widget/i;->ConstraintSet_android_rotationX:I

    if-ne v0, v2, :cond_64

    .line 39
    iget v2, p0, Landroidx/constraintlayout/widget/e$a;->s0:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/e$a;->s0:F

    goto/16 :goto_dd

    .line 40
    :cond_64
    sget v2, Landroidx/constraintlayout/widget/i;->ConstraintSet_android_rotationY:I

    if-ne v0, v2, :cond_72

    .line 41
    iget v2, p0, Landroidx/constraintlayout/widget/e$a;->t0:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/e$a;->t0:F

    goto/16 :goto_dd

    .line 42
    :cond_72
    sget v2, Landroidx/constraintlayout/widget/i;->ConstraintSet_android_rotation:I

    if-ne v0, v2, :cond_7f

    .line 43
    iget v2, p0, Landroidx/constraintlayout/widget/e$a;->r0:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/e$a;->r0:F

    goto :goto_dd

    .line 44
    :cond_7f
    sget v2, Landroidx/constraintlayout/widget/i;->ConstraintSet_android_scaleX:I

    if-ne v0, v2, :cond_8c

    .line 45
    iget v2, p0, Landroidx/constraintlayout/widget/e$a;->u0:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/e$a;->u0:F

    goto :goto_dd

    .line 46
    :cond_8c
    sget v2, Landroidx/constraintlayout/widget/i;->ConstraintSet_android_scaleY:I

    if-ne v0, v2, :cond_99

    .line 47
    iget v2, p0, Landroidx/constraintlayout/widget/e$a;->v0:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/e$a;->v0:F

    goto :goto_dd

    .line 48
    :cond_99
    sget v2, Landroidx/constraintlayout/widget/i;->ConstraintSet_android_transformPivotX:I

    if-ne v0, v2, :cond_a6

    .line 49
    iget v2, p0, Landroidx/constraintlayout/widget/e$a;->w0:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/e$a;->w0:F

    goto :goto_dd

    .line 50
    :cond_a6
    sget v2, Landroidx/constraintlayout/widget/i;->ConstraintSet_android_transformPivotY:I

    if-ne v0, v2, :cond_b3

    .line 51
    iget v2, p0, Landroidx/constraintlayout/widget/e$a;->x0:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/e$a;->x0:F

    goto :goto_dd

    .line 52
    :cond_b3
    sget v2, Landroidx/constraintlayout/widget/i;->ConstraintSet_android_translationX:I

    if-ne v0, v2, :cond_c0

    .line 53
    iget v2, p0, Landroidx/constraintlayout/widget/e$a;->y0:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/e$a;->y0:F

    goto :goto_dd

    .line 54
    :cond_c0
    sget v2, Landroidx/constraintlayout/widget/i;->ConstraintSet_android_translationY:I

    if-ne v0, v2, :cond_cd

    .line 55
    iget v2, p0, Landroidx/constraintlayout/widget/e$a;->z0:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/e$a;->z0:F

    goto :goto_dd

    .line 56
    :cond_cd
    sget v2, Landroidx/constraintlayout/widget/i;->ConstraintSet_android_translationZ:I

    if-ne v0, v2, :cond_dd

    .line 57
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_dd

    .line 58
    iget v2, p0, Landroidx/constraintlayout/widget/e$a;->A0:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/e$a;->A0:F

    :cond_dd
    :goto_dd
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2b

    .line 59
    :cond_e1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
