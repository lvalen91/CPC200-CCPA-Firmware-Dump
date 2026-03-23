.class Lcn/manstep/phonemirrorBox/x0/g$d;
.super Ljava/lang/Object;
.implements Landroidx/lifecycle/p;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/x0/g;->L(Lcn/manstep/phonemirrorBox/x0/k;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "Ljava/lang/Object;",
    "Landroidx/lifecycle/p<",
    "Ljava/lang/Integer;",
    ">;"
  }
.end annotation

.field final synthetic a:Lcn/manstep/phonemirrorBox/x0/g;

.method constructor <init>(Lcn/manstep/phonemirrorBox/x0/g;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/x0/g$d;->a:Lcn/manstep/phonemirrorBox/x0/g;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(Ljava/lang/Integer;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/g$d;->a:Lcn/manstep/phonemirrorBox/x0/g;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/x0/g;->p(Lcn/manstep/phonemirrorBox/x0/g;)Landroidx/lifecycle/o;
    move-result-object v0
    invoke-virtual { v0, p1 }, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/g$d;->a:Lcn/manstep/phonemirrorBox/x0/g;
    invoke-virtual { p1 }, Ljava/lang/Integer;->intValue()I
    move-result p1
    invoke-virtual { v0, p1 }, Lcn/manstep/phonemirrorBox/x0/g;->K(I)V
    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
  .registers 2
  .line 1
    check-cast p1, Ljava/lang/Integer;
    invoke-virtual { p0, p1 }, Lcn/manstep/phonemirrorBox/x0/g$d;->a(Ljava/lang/Integer;)V
    return-void
.end method
