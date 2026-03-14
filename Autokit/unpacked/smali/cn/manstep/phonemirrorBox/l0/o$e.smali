.class Lcn/manstep/phonemirrorBox/l0/o$e;
.super Ljava/lang/Object;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/l0/o;->g1(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/l0/o;

.method constructor <init>(Lcn/manstep/phonemirrorBox/l0/o;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/o$e;->b:Lcn/manstep/phonemirrorBox/l0/o;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
  .registers 4
  .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/o$e;->b:Lcn/manstep/phonemirrorBox/l0/o;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/l0/o;->i2(Lcn/manstep/phonemirrorBox/l0/o;)Lcn/manstep/phonemirrorBox/i0/m;
    move-result-object p1
    iget-object p1, p1, Lcn/manstep/phonemirrorBox/i0/m;->G:Landroid/widget/TextView;
    invoke-static { p2 }, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    move-result-object p3
    invoke-virtual { p1, p3 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object p1
    invoke-static { p2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p2
    const-string p3, "BootDelay"
    invoke-virtual { p1, p3, p2 }, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V
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
