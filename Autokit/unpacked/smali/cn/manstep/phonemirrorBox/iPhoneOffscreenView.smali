.class public Lcn/manstep/phonemirrorBox/iPhoneOffscreenView;
.super Landroidx/appcompat/widget/x;
.implements Lcn/manstep/phonemirrorBox/BoxInterface/d$g;
.source "SourceFile"

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 3
  .line 1
    invoke-direct { p0, p1, p2 }, Landroidx/appcompat/widget/x;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .line 2
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/v0/e;->M(Lcn/manstep/phonemirrorBox/BoxInterface/d$g;)Lcn/manstep/phonemirrorBox/BoxInterface/d;
    return-void
.end method

.method public a(ILjava/lang/Object;)V
  .registers 3
    return-void
.end method

.method public c(I)V
  .registers 2
    return-void
.end method

.method public n(Lcn/manstep/phonemirrorBox/BoxInterface/d;)V
  .registers 2
    return-void
.end method

.method public o(I)V
  .registers 4
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "iPhoneOffscreenView parse: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    const/16 v0, 10
    if-eq p1, v0, :L1
    const/16 v0, 11
    if-eq p1, v0, :L0
    goto :L2
  :L0
    const/4 p1, 0
  .line 2
    invoke-virtual { p0, p1 }, Landroid/widget/TextView;->setVisibility(I)V
    goto :L2
  :L1
    const/16 p1, 8
  .line 3
    invoke-virtual { p0, p1 }, Landroid/widget/TextView;->setVisibility(I)V
  :L2
    return-void
.end method

.method protected onAttachedToWindow()V
  .registers 1
  .line 1
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/v0/e;->M(Lcn/manstep/phonemirrorBox/BoxInterface/d$g;)Lcn/manstep/phonemirrorBox/BoxInterface/d;
  .line 2
    invoke-super { p0 }, Landroid/widget/TextView;->onAttachedToWindow()V
    return-void
.end method

.method protected onDetachedFromWindow()V
  .registers 1
  .line 1
    invoke-super { p0 }, Landroid/widget/TextView;->onDetachedFromWindow()V
  .line 2
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/v0/e;->S(Lcn/manstep/phonemirrorBox/BoxInterface/d$g;)V
    return-void
.end method

.method public v([B)V
  .registers 2
    return-void
.end method
