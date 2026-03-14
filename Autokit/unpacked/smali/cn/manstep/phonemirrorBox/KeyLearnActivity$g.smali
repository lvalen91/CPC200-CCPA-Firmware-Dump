.class Lcn/manstep/phonemirrorBox/KeyLearnActivity$g;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnLongClickListener;
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
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity$g;->d:Lcn/manstep/phonemirrorBox/KeyLearnActivity;
    iput p2, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity$g;->b:I
    iput-object p3, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity$g;->c:Landroid/widget/Button;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
  .registers 8
  .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity$g;->d:Lcn/manstep/phonemirrorBox/KeyLearnActivity;
    const/4 v0, 0
    invoke-static { p1, v0 }, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->u0(Lcn/manstep/phonemirrorBox/KeyLearnActivity;I)I
  .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity$g;->d:Lcn/manstep/phonemirrorBox/KeyLearnActivity;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->v0(Lcn/manstep/phonemirrorBox/KeyLearnActivity;)[I
    move-result-object v1
    iget v2, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity$g;->b:I
    aget v1, v1, v2
    invoke-static { p1, v1 }, Lcn/manstep/phonemirrorBox/b0;->j(Landroid/content/Context;I)I
    move-result p1
  .line 3
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity$g;->d:Lcn/manstep/phonemirrorBox/KeyLearnActivity;
    invoke-static { v1, p1, v0 }, Lcn/manstep/phonemirrorBox/b0;->t(Landroid/content/Context;II)V
  .line 4
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity$g;->d:Lcn/manstep/phonemirrorBox/KeyLearnActivity;
    invoke-static { v1, p1, v0 }, Lcn/manstep/phonemirrorBox/b0;->u(Landroid/content/Context;II)V
  .line 5
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity$g;->d:Lcn/manstep/phonemirrorBox/KeyLearnActivity;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->v0(Lcn/manstep/phonemirrorBox/KeyLearnActivity;)[I
    move-result-object v1
    iget v2, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity$g;->b:I
    aget v1, v1, v2
    invoke-static { p1, v1, v0 }, Lcn/manstep/phonemirrorBox/b0;->v(Landroid/content/Context;II)V
  .line 6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity$g;->d:Lcn/manstep/phonemirrorBox/KeyLearnActivity;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->v0(Lcn/manstep/phonemirrorBox/KeyLearnActivity;)[I
    move-result-object v1
    iget v2, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity$g;->b:I
    aget v1, v1, v2
    invoke-static { p1, v1, v0 }, Lcn/manstep/phonemirrorBox/b0;->s(Landroid/content/Context;IZ)V
  .line 7
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity$g;->d:Lcn/manstep/phonemirrorBox/KeyLearnActivity;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->p0(Lcn/manstep/phonemirrorBox/KeyLearnActivity;)Lcn/manstep/phonemirrorBox/b;
    move-result-object v0
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity$g;->d:Lcn/manstep/phonemirrorBox/KeyLearnActivity;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity$g;->c:Landroid/widget/Button;
    const/4 v3, 1
    const/4 v4, 0
    const/4 v5, 0
    invoke-virtual/range { v0 .. v5 }, Lcn/manstep/phonemirrorBox/b;->f(Landroid/content/Context;Landroid/widget/Button;ZZZ)V
    const/4 p1, 1
    return p1
.end method
