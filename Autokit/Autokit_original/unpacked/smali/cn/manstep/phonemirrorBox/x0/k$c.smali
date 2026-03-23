.class Lcn/manstep/phonemirrorBox/x0/k$c;
.super Ljava/lang/Object;
.implements Lcn/manstep/phonemirrorBox/util/q$d;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/x0/k;->F0(Landroid/view/View;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/x0/k;

.method constructor <init>(Lcn/manstep/phonemirrorBox/x0/k;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/x0/k$c;->b:Lcn/manstep/phonemirrorBox/x0/k;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(Z)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/k$c;->b:Lcn/manstep/phonemirrorBox/x0/k;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/x0/k;->m(Lcn/manstep/phonemirrorBox/x0/k;)Lcn/manstep/phonemirrorBox/x0/l;
    move-result-object v0
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/k$c;->b:Lcn/manstep/phonemirrorBox/x0/k;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/x0/k;->m(Lcn/manstep/phonemirrorBox/x0/k;)Lcn/manstep/phonemirrorBox/x0/l;
    move-result-object v0
    invoke-interface { v0, p1 }, Lcn/manstep/phonemirrorBox/x0/l;->l(Z)V
  :L0
    return-void
.end method
