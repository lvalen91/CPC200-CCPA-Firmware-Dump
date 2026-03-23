.class Lcn/manstep/phonemirrorBox/util/d0$c$a;
.super Ljava/lang/Object;
.implements Lcn/manstep/phonemirrorBox/util/p$f;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/util/d0$c;->onClick(Landroid/view/View;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Lcn/manstep/phonemirrorBox/k0/f;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcn/manstep/phonemirrorBox/util/d0$c;

.method constructor <init>(Lcn/manstep/phonemirrorBox/util/d0$c;Lcn/manstep/phonemirrorBox/k0/f;Ljava/lang/String;)V
  .registers 4
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/d0$c$a;->c:Lcn/manstep/phonemirrorBox/util/d0$c;
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/util/d0$c$a;->a:Lcn/manstep/phonemirrorBox/k0/f;
    iput-object p3, p0, Lcn/manstep/phonemirrorBox/util/d0$c$a;->b:Ljava/lang/String;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a()V
  .registers 1
    return-void
.end method

.method public b(Ljava/lang/String;)V
  .registers 3
  .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/d0$c$a;->c:Lcn/manstep/phonemirrorBox/util/d0$c;
    iget p1, p1, Lcn/manstep/phonemirrorBox/util/d0$c;->f:I
    if-nez p1, :L0
  .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/d0$c$a;->a:Lcn/manstep/phonemirrorBox/k0/f;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/k0/f;->m()V
  :L0
  .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/d0$c$a;->a:Lcn/manstep/phonemirrorBox/k0/f;
    const v0, 2131689706
    invoke-virtual { p1, v0 }, Lcn/manstep/phonemirrorBox/k0/f;->k(I)V
    return-void
.end method

.method public c(Ljava/lang/String;)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/d0$c$a;->c:Lcn/manstep/phonemirrorBox/util/d0$c;
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/util/d0$c;->e:Ljava/lang/String;
    invoke-virtual { v0, p1 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result p1
    if-eqz p1, :L0
  .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/d0$c$a;->c:Lcn/manstep/phonemirrorBox/util/d0$c;
    iget-object p1, p1, Lcn/manstep/phonemirrorBox/util/d0$c;->g:Lcn/manstep/phonemirrorBox/util/d0;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/d0;->e(Lcn/manstep/phonemirrorBox/util/d0;)Landroidx/fragment/app/n;
    move-result-object p1
    new-instance v0, Lcn/manstep/phonemirrorBox/util/d0$c$a$a;
    invoke-direct { v0, p0 }, Lcn/manstep/phonemirrorBox/util/d0$c$a$a;-><init>(Lcn/manstep/phonemirrorBox/util/d0$c$a;)V
    const/4 v1, 0
    invoke-static { p1, v0, v1 }, Lcn/manstep/phonemirrorBox/k0/a;->D2(Landroidx/fragment/app/n;Landroid/view/View$OnClickListener;Z)V
    goto :L1
  :L0
  .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/d0$c$a;->c:Lcn/manstep/phonemirrorBox/util/d0$c;
    iget-object p1, p1, Lcn/manstep/phonemirrorBox/util/d0$c;->e:Ljava/lang/String;
    invoke-virtual { p0, p1 }, Lcn/manstep/phonemirrorBox/util/d0$c$a;->b(Ljava/lang/String;)V
  :L1
    return-void
.end method

.method public d(J)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/d0$c$a;->a:Lcn/manstep/phonemirrorBox/k0/f;
    long-to-int p2, p1
    invoke-virtual { v0, p2 }, Lcn/manstep/phonemirrorBox/k0/f;->l(I)V
    return-void
.end method

.method public e(J)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/d0$c$a;->a:Lcn/manstep/phonemirrorBox/k0/f;
    long-to-int p2, p1
    invoke-virtual { v0, p2 }, Lcn/manstep/phonemirrorBox/k0/f;->j(I)V
    return-void
.end method
