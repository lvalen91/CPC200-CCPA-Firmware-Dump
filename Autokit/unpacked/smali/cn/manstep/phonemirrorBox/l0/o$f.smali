.class Lcn/manstep/phonemirrorBox/l0/o$f;
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

.field final synthetic b:I

.field final synthetic c:Lcn/manstep/phonemirrorBox/l0/o;

.method constructor <init>(Lcn/manstep/phonemirrorBox/l0/o;I)V
  .registers 3
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/o$f;->c:Lcn/manstep/phonemirrorBox/l0/o;
    iput p2, p0, Lcn/manstep/phonemirrorBox/l0/o$f;->b:I
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
  .registers 5
  .line 1
    iget p1, p0, Lcn/manstep/phonemirrorBox/l0/o$f;->b:I
    mul-int p1, p1, p2
  .line 2
    iget-object p3, p0, Lcn/manstep/phonemirrorBox/l0/o$f;->c:Lcn/manstep/phonemirrorBox/l0/o;
    invoke-static { p3 }, Lcn/manstep/phonemirrorBox/l0/o;->i2(Lcn/manstep/phonemirrorBox/l0/o;)Lcn/manstep/phonemirrorBox/i0/m;
    move-result-object p3
    iget-object p3, p3, Lcn/manstep/phonemirrorBox/i0/m;->z:Landroid/widget/TextView;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p1, " dpi"
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-virtual { p3, p1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 3
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object p1
    iget p3, p0, Lcn/manstep/phonemirrorBox/l0/o$f;->b:I
    mul-int p3, p3, p2
    invoke-static { p3 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p3
    const-string v0, "DPI"
    invoke-virtual { p1, v0, p3 }, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V
  .line 4
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z
    move-result p1
    if-eqz p1, :L0
  .line 5
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    iget p3, p0, Lcn/manstep/phonemirrorBox/l0/o$f;->b:I
    mul-int p2, p2, p3
    invoke-virtual { p1, p2 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->P0(I)Z
  :L0
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
