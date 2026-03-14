.class Lcn/manstep/phonemirrorBox/x0/m$d;
.super Ljava/lang/Object;
.implements Lcn/manstep/phonemirrorBox/k0/h$c;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/x0/m;->u()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Lcn/manstep/phonemirrorBox/x0/m;

.method constructor <init>(Lcn/manstep/phonemirrorBox/x0/m;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/x0/m$d;->a:Lcn/manstep/phonemirrorBox/x0/m;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(Ljava/lang/String;)Z
  .registers 5
  .line 1
    invoke-static { p1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    const/4 v1, 0
    if-eqz v0, :L0
    return v1
  :L0
  .line 2
    invoke-virtual { p1 }, Ljava/lang/String;->getBytes()[B
    move-result-object v0
    array-length v0, v0
    const/16 v2, 15
    if-le v0, v2, :L1
    return v1
  :L1
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/m$d;->a:Lcn/manstep/phonemirrorBox/x0/m;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/x0/m;->k(Lcn/manstep/phonemirrorBox/x0/m;)Landroidx/lifecycle/o;
    move-result-object v0
    invoke-virtual { v0 }, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;
    move-result-object v0
    invoke-virtual { p1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L2
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/m$d;->a:Lcn/manstep/phonemirrorBox/x0/m;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/x0/m;->k(Lcn/manstep/phonemirrorBox/x0/m;)Landroidx/lifecycle/o;
    move-result-object v0
    invoke-virtual { v0, p1 }, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V
  .line 5
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    const-string v1, "WifiName"
    invoke-virtual { v0, v1, p1 }, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V
  .line 6
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z
    move-result v0
    if-eqz v0, :L2
  .line 7
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-virtual { p1 }, Ljava/lang/String;->getBytes()[B
    move-result-object p1
    invoke-virtual { v0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->i1([B)Z
  :L2
    const/4 p1, 1
    return p1
.end method
