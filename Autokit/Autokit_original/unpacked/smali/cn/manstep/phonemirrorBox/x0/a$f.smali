.class Lcn/manstep/phonemirrorBox/x0/a$f;
.super Ljava/lang/Object;
.implements Lcn/manstep/phonemirrorBox/k0/c$b;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/x0/a;->U()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Lcn/manstep/phonemirrorBox/x0/a;

.method constructor <init>(Lcn/manstep/phonemirrorBox/x0/a;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/x0/a$f;->a:Lcn/manstep/phonemirrorBox/x0/a;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(I)V
  .registers 5
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a$f;->a:Lcn/manstep/phonemirrorBox/x0/a;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/x0/a;->q(Lcn/manstep/phonemirrorBox/x0/a;)Landroidx/lifecycle/o;
    move-result-object v0
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p1
    invoke-virtual { v0, p1 }, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object p1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a$f;->a:Lcn/manstep/phonemirrorBox/x0/a;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/x0/a;->q(Lcn/manstep/phonemirrorBox/x0/a;)Landroidx/lifecycle/o;
    move-result-object v1
    invoke-virtual { v1 }, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/Integer;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/x0/a$f;->a:Lcn/manstep/phonemirrorBox/x0/a;
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/x0/a;->p(Lcn/manstep/phonemirrorBox/x0/a;)Landroidx/lifecycle/o;
    move-result-object v2
    invoke-virtual { v2 }, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/Integer;
    invoke-static { v0, v1, v2 }, Lcn/manstep/phonemirrorBox/x0/a;->n(Lcn/manstep/phonemirrorBox/x0/a;Ljava/lang/Integer;Ljava/lang/Integer;)I
    move-result v0
    invoke-static { v0 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v0
    const-string v1, "CallAudioType"
    invoke-virtual { p1, v1, v0 }, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V
  .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/x0/a$f;->a:Lcn/manstep/phonemirrorBox/x0/a;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/x0/a;->o(Lcn/manstep/phonemirrorBox/x0/a;)Lcn/manstep/phonemirrorBox/x0/a$k;
    move-result-object p1
    if-eqz p1, :L0
  .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/x0/a$f;->a:Lcn/manstep/phonemirrorBox/x0/a;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/x0/a;->o(Lcn/manstep/phonemirrorBox/x0/a;)Lcn/manstep/phonemirrorBox/x0/a$k;
    move-result-object p1
    invoke-interface { p1 }, Lcn/manstep/phonemirrorBox/x0/a$k;->a()V
  :L0
    return-void
.end method
