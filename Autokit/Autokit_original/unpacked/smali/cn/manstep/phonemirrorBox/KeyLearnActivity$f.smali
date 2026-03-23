.class Lcn/manstep/phonemirrorBox/KeyLearnActivity$f;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnClickListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/KeyLearnActivity;->J0(Landroid/widget/LinearLayout;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:I

.field final synthetic c:Landroid/widget/Button;

.field final synthetic d:Lcn/manstep/phonemirrorBox/KeyLearnActivity;

.method constructor <init>(Lcn/manstep/phonemirrorBox/KeyLearnActivity;ILandroid/widget/Button;)V
  .registers 4
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity$f;->d:Lcn/manstep/phonemirrorBox/KeyLearnActivity;
    iput p2, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity$f;->b:I
    iput-object p3, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity$f;->c:Landroid/widget/Button;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onClick(Landroid/view/View;)V
  .registers 4
  .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity$f;->d:Lcn/manstep/phonemirrorBox/KeyLearnActivity;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->v0(Lcn/manstep/phonemirrorBox/KeyLearnActivity;)[I
    move-result-object v0
    iget v1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity$f;->b:I
    aget v0, v0, v1
    invoke-static { p1, v0 }, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->u0(Lcn/manstep/phonemirrorBox/KeyLearnActivity;I)I
  .line 2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v0, 17
    if-lt p1, v0, :L0
  .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity$f;->d:Lcn/manstep/phonemirrorBox/KeyLearnActivity;
    invoke-static { }, Landroid/view/View;->generateViewId()I
    move-result v0
    invoke-static { p1, v0 }, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->x0(Lcn/manstep/phonemirrorBox/KeyLearnActivity;I)I
    goto :L1
  :L0
  .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity$f;->d:Lcn/manstep/phonemirrorBox/KeyLearnActivity;
    invoke-static { }, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->y0()I
    move-result v0
    invoke-static { p1, v0 }, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->x0(Lcn/manstep/phonemirrorBox/KeyLearnActivity;I)I
  :L1
  .line 5
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "mBtnId="
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity$f;->d:Lcn/manstep/phonemirrorBox/KeyLearnActivity;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->w0(Lcn/manstep/phonemirrorBox/KeyLearnActivity;)I
    move-result v0
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v0, ", mControlCmd="
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity$f;->d:Lcn/manstep/phonemirrorBox/KeyLearnActivity;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->t0(Lcn/manstep/phonemirrorBox/KeyLearnActivity;)I
    move-result v0
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    const-string v0, "KeyLearnActivity"
    invoke-static { v0, p1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity$f;->c:Landroid/widget/Button;
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity$f;->d:Lcn/manstep/phonemirrorBox/KeyLearnActivity;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->w0(Lcn/manstep/phonemirrorBox/KeyLearnActivity;)I
    move-result v0
    invoke-virtual { p1, v0 }, Landroid/widget/Button;->setId(I)V
  .line 7
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity$f;->d:Lcn/manstep/phonemirrorBox/KeyLearnActivity;
    const/4 v0, -1
    invoke-static { p1, v0 }, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->z0(Lcn/manstep/phonemirrorBox/KeyLearnActivity;I)I
  .line 8
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity$f;->d:Lcn/manstep/phonemirrorBox/KeyLearnActivity;
    const/4 v0, 0
    invoke-static { p1, v0 }, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->A0(Lcn/manstep/phonemirrorBox/KeyLearnActivity;Z)Z
  .line 9
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity$f;->d:Lcn/manstep/phonemirrorBox/KeyLearnActivity;
    const v1, 2131689914
    invoke-virtual { p1, v1 }, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { p1, v1, v0 }, Lcn/manstep/phonemirrorBox/widget/a;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object p1
    invoke-virtual { p1 }, Landroid/widget/Toast;->show()V
    return-void
.end method
