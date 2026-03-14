.class Lcn/manstep/phonemirrorBox/a0$b;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnClickListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/a0;->l(Landroidx/fragment/app/n;III)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:I

.field final synthetic c:Lcn/manstep/phonemirrorBox/a0;

.method constructor <init>(Lcn/manstep/phonemirrorBox/a0;I)V
  .registers 3
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/a0$b;->c:Lcn/manstep/phonemirrorBox/a0;
    iput p2, p0, Lcn/manstep/phonemirrorBox/a0$b;->b:I
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onClick(Landroid/view/View;)V
  .registers 3
  .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/a0$b;->c:Lcn/manstep/phonemirrorBox/a0;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/a0;->p(Lcn/manstep/phonemirrorBox/a0;)Lcn/manstep/phonemirrorBox/c$a;
    move-result-object p1
    if-eqz p1, :L0
  .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/a0$b;->c:Lcn/manstep/phonemirrorBox/a0;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/a0;->p(Lcn/manstep/phonemirrorBox/a0;)Lcn/manstep/phonemirrorBox/c$a;
    move-result-object p1
    iget v0, p0, Lcn/manstep/phonemirrorBox/a0$b;->b:I
    invoke-interface { p1, v0 }, Lcn/manstep/phonemirrorBox/c$a;->e(I)V
  :L0
    return-void
.end method
