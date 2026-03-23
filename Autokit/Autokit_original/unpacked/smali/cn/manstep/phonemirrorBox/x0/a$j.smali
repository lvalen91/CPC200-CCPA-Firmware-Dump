.class Lcn/manstep/phonemirrorBox/x0/a$j;
.super Ljava/lang/Object;
.implements Lcn/manstep/phonemirrorBox/k0/c$b;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/x0/a;->d0()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Lcn/manstep/phonemirrorBox/x0/a;

.method constructor <init>(Lcn/manstep/phonemirrorBox/x0/a;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/x0/a$j;->a:Lcn/manstep/phonemirrorBox/x0/a;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(I)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a$j;->a:Lcn/manstep/phonemirrorBox/x0/a;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/x0/a;->l(Lcn/manstep/phonemirrorBox/x0/a;)Landroidx/lifecycle/o;
    move-result-object v0
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p1
    invoke-virtual { v0, p1 }, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object p1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a$j;->a:Lcn/manstep/phonemirrorBox/x0/a;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/x0/a;->l(Lcn/manstep/phonemirrorBox/x0/a;)Landroidx/lifecycle/o;
    move-result-object v0
    invoke-virtual { v0 }, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;
    move-result-object v0
    const-string v1, "RecordSource"
    invoke-virtual { p1, v1, v0 }, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V
    return-void
.end method
