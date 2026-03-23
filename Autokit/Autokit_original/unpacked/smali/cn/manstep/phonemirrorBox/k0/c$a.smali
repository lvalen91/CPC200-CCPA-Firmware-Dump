.class Lcn/manstep/phonemirrorBox/k0/c$a;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnClickListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/k0/c;->y2(Landroid/widget/Button;Landroid/widget/TableRow$LayoutParams;Ljava/lang/String;Z)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Landroid/widget/Button;

.field final synthetic c:Lcn/manstep/phonemirrorBox/k0/c;

.method constructor <init>(Lcn/manstep/phonemirrorBox/k0/c;Landroid/widget/Button;)V
  .registers 3
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/k0/c$a;->c:Lcn/manstep/phonemirrorBox/k0/c;
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/k0/c$a;->b:Landroid/widget/Button;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onClick(Landroid/view/View;)V
  .registers 3
  .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/k0/c$a;->c:Lcn/manstep/phonemirrorBox/k0/c;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/k0/c;->v2(Lcn/manstep/phonemirrorBox/k0/c;)Lcn/manstep/phonemirrorBox/k0/c$b;
    move-result-object p1
    if-eqz p1, :L0
  .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/k0/c$a;->c:Lcn/manstep/phonemirrorBox/k0/c;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/k0/c;->v2(Lcn/manstep/phonemirrorBox/k0/c;)Lcn/manstep/phonemirrorBox/k0/c$b;
    move-result-object p1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/c$a;->b:Landroid/widget/Button;
    invoke-virtual { v0 }, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;
    move-result-object v0
    invoke-interface { v0 }, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v0
    invoke-interface { p1, v0 }, Lcn/manstep/phonemirrorBox/k0/c$b;->a(I)V
  .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/k0/c$a;->c:Lcn/manstep/phonemirrorBox/k0/c;
    invoke-virtual { p1 }, Landroidx/fragment/app/d;->j2()V
  :L0
    return-void
.end method
