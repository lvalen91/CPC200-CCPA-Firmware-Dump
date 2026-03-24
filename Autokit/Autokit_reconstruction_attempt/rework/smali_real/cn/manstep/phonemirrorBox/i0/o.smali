.class public abstract Lcn/manstep/phonemirrorBox/i0/o;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# instance fields
.field protected A:Lcn/manstep/phonemirrorBox/x0/g;

.field public final v:Landroid/widget/TextView;

.field public final w:Landroid/widget/Button;

.field public final x:Landroid/widget/ImageView;

.field public final y:Landroid/widget/ImageView;

.field public final z:Lcn/manstep/phonemirrorBox/util/AutoFitTextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Lcn/manstep/phonemirrorBox/util/AutoFitTextView;)V
    .registers 12

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p5, p0, Lcn/manstep/phonemirrorBox/i0/o;->v:Landroid/widget/TextView;

    .line 3
    iput-object p6, p0, Lcn/manstep/phonemirrorBox/i0/o;->w:Landroid/widget/Button;

    .line 4
    iput-object p8, p0, Lcn/manstep/phonemirrorBox/i0/o;->x:Landroid/widget/ImageView;

    .line 5
    iput-object p9, p0, Lcn/manstep/phonemirrorBox/i0/o;->y:Landroid/widget/ImageView;

    .line 6
    iput-object p11, p0, Lcn/manstep/phonemirrorBox/i0/o;->z:Lcn/manstep/phonemirrorBox/util/AutoFitTextView;

    return-void
.end method

.method public static L(Landroid/view/View;)Lcn/manstep/phonemirrorBox/i0/o;
    .registers 2

    .line 1
    invoke-static {}, Landroidx/databinding/f;->d()Landroidx/databinding/e;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/manstep/phonemirrorBox/i0/o;->M(Landroid/view/View;Ljava/lang/Object;)Lcn/manstep/phonemirrorBox/i0/o;

    move-result-object p0

    return-object p0
.end method

.method public static M(Landroid/view/View;Ljava/lang/Object;)Lcn/manstep/phonemirrorBox/i0/o;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0c004d

    .line 1
    invoke-static {p1, p0, v0}, Landroidx/databinding/ViewDataBinding;->l(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcn/manstep/phonemirrorBox/i0/o;

    return-object p0
.end method


# virtual methods
.method public abstract N(Lcn/manstep/phonemirrorBox/x0/g;)V
.end method
