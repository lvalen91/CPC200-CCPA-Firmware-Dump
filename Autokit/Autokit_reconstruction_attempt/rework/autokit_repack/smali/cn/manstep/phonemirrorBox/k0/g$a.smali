.class Lcn/manstep/phonemirrorBox/k0/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/k0/g;->g1(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/k0/g;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/k0/g;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/k0/g$a;->b:Lcn/manstep/phonemirrorBox/k0/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/k0/g$a;->b:Lcn/manstep/phonemirrorBox/k0/g;

    add-int/lit8 p2, p2, 0x8

    int-to-float p2, p2

    const/high16 p3, 0x42480000    # 50.0f

    div-float/2addr p2, p3

    invoke-static {p1, p2}, Lcn/manstep/phonemirrorBox/k0/g;->w2(Lcn/manstep/phonemirrorBox/k0/g;F)F

    .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/k0/g$a;->b:Lcn/manstep/phonemirrorBox/k0/g;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/k0/g;->x2(Lcn/manstep/phonemirrorBox/k0/g;)Lcn/manstep/phonemirrorBox/k;

    move-result-object p1

    if-eqz p1, :cond_2d

    .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/k0/g$a;->b:Lcn/manstep/phonemirrorBox/k0/g;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/k0/g;->y2(Lcn/manstep/phonemirrorBox/k0/g;)Landroid/util/DisplayMetrics;

    move-result-object p1

    iget-object p2, p0, Lcn/manstep/phonemirrorBox/k0/g$a;->b:Lcn/manstep/phonemirrorBox/k0/g;

    invoke-static {p2}, Lcn/manstep/phonemirrorBox/k0/g;->x2(Lcn/manstep/phonemirrorBox/k0/g;)Lcn/manstep/phonemirrorBox/k;

    move-result-object p2

    invoke-virtual {p2}, Lcn/manstep/phonemirrorBox/k;->a0()F

    move-result p2

    iget-object p3, p0, Lcn/manstep/phonemirrorBox/k0/g$a;->b:Lcn/manstep/phonemirrorBox/k0/g;

    invoke-static {p3}, Lcn/manstep/phonemirrorBox/k0/g;->v2(Lcn/manstep/phonemirrorBox/k0/g;)F

    move-result p3

    mul-float p2, p2, p3

    iput p2, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 4
    :cond_2d
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/k0/g$a;->b:Lcn/manstep/phonemirrorBox/k0/g;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/k0/g;->z2(Lcn/manstep/phonemirrorBox/k0/g;)Landroid/widget/TextView;

    move-result-object p1

    const/4 p2, 0x2

    const/high16 p3, 0x41900000    # 18.0f

    invoke-virtual {p1, p2, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    return-void
.end method
