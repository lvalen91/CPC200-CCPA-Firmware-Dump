.class Lcn/manstep/phonemirrorBox/x0/i$a;
.super Ljava/lang/Object;
.implements Lcn/manstep/phonemirrorBox/l0/t$e;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/x0/i;->M()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Lcn/manstep/phonemirrorBox/x0/i;

.method constructor <init>(Lcn/manstep/phonemirrorBox/x0/i;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/x0/i$a;->a:Lcn/manstep/phonemirrorBox/x0/i;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(Ljava/lang/String;)Z
  .registers 4
  .line 1
    invoke-static { p1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    const/4 v1, 0
    if-eqz v0, :L0
    return v1
  :L0
  .line 2
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/o0/a;->b(Ljava/lang/CharSequence;)Z
    move-result v0
    if-nez v0, :L1
    return v1
  :L1
  .line 3
    invoke-static { p1 }, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result p1
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/i$a;->a:Lcn/manstep/phonemirrorBox/x0/i;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/x0/i;->j(Lcn/manstep/phonemirrorBox/x0/i;)Landroidx/lifecycle/o;
    move-result-object v0
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p1
    invoke-virtual { v0, p1 }, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V
    const/4 p1, 1
    return p1
.end method
