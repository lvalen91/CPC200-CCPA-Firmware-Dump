.class public abstract Lcn/manstep/phonemirrorBox/i0/s;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# instance fields
.field public final v:Landroid/widget/ImageView;

.field public final w:Landroid/widget/LinearLayout;

.field public final x:Landroid/widget/TextView;

.field public final y:Landroid/widget/TextView;

.field protected z:Lcn/manstep/phonemirrorBox/x0/k;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroidx/constraintlayout/widget/ConstraintLayout;Lcn/manstep/phonemirrorBox/customview/CustomImageView;Landroid/widget/RadioGroup;Landroid/widget/RadioGroup;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/ScrollView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;)V
    .registers 24

    move-object v0, p0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    move-object v1, p13

    .line 2
    iput-object v1, v0, Lcn/manstep/phonemirrorBox/i0/s;->v:Landroid/widget/ImageView;

    move-object/from16 v1, p14

    .line 3
    iput-object v1, v0, Lcn/manstep/phonemirrorBox/i0/s;->w:Landroid/widget/LinearLayout;

    move-object/from16 v1, p18

    .line 4
    iput-object v1, v0, Lcn/manstep/phonemirrorBox/i0/s;->x:Landroid/widget/TextView;

    move-object/from16 v1, p20

    .line 5
    iput-object v1, v0, Lcn/manstep/phonemirrorBox/i0/s;->y:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public abstract L(Lcn/manstep/phonemirrorBox/x0/i;)V
.end method

.method public abstract M(Lcn/manstep/phonemirrorBox/x0/k;)V
.end method
