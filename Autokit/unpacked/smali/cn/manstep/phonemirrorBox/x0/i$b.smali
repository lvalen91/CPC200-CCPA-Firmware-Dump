.class Lcn/manstep/phonemirrorBox/x0/i$b;
.super Ljava/lang/Object;
.implements Lcn/manstep/phonemirrorBox/k0/h$c;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/x0/i;->N()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Lcn/manstep/phonemirrorBox/x0/i;

.method constructor <init>(Lcn/manstep/phonemirrorBox/x0/i;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/x0/i$b;->a:Lcn/manstep/phonemirrorBox/x0/i;
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
    invoke-static { p1 }, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z
    move-result v0
    if-nez v0, :L1
    return v1
  :L1
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/i$b;->a:Lcn/manstep/phonemirrorBox/x0/i;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/x0/i;->j(Lcn/manstep/phonemirrorBox/x0/i;)Landroidx/lifecycle/o;
    move-result-object v0
    invoke-virtual { v0 }, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;
    move-result-object v0
    invoke-static { v0 }, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L2
  .line 4
    invoke-static { p1 }, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result p1
  .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/i$b;->a:Lcn/manstep/phonemirrorBox/x0/i;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/x0/i;->j(Lcn/manstep/phonemirrorBox/x0/i;)Landroidx/lifecycle/o;
    move-result-object v0
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p1
    invoke-virtual { v0, p1 }, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V
  :L2
    const/4 p1, 1
    return p1
.end method
