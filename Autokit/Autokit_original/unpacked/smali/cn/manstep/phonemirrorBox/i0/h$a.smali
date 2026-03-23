.class Lcn/manstep/phonemirrorBox/i0/h$a;
.super Ljava/lang/Object;
.implements Landroidx/databinding/g;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcn/manstep/phonemirrorBox/i0/h;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Lcn/manstep/phonemirrorBox/i0/h;

.method constructor <init>(Lcn/manstep/phonemirrorBox/i0/h;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/i0/h$a;->a:Lcn/manstep/phonemirrorBox/i0/h;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a()V
  .registers 6
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/i0/h$a;->a:Lcn/manstep/phonemirrorBox/i0/h;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/i0/h;->N(Lcn/manstep/phonemirrorBox/i0/h;)Landroid/widget/CheckBox;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/widget/CheckBox;->isChecked()Z
    move-result v0
  .line 2
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/i0/h$a;->a:Lcn/manstep/phonemirrorBox/i0/h;
    iget-object v1, v1, Lcn/manstep/phonemirrorBox/i0/g;->M:Lcn/manstep/phonemirrorBox/x0/a;
    const/4 v2, 1
    const/4 v3, 0
    if-eqz v1, :L0
    const/4 v4, 1
    goto :L1
  :L0
    const/4 v4, 0
  :L1
    if-eqz v4, :L4
  .line 3
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/x0/a;->y()Landroidx/lifecycle/o;
    move-result-object v1
    if-eqz v1, :L2
    goto :L3
  :L2
    const/4 v2, 0
  :L3
    if-eqz v2, :L4
  .line 4
    invoke-static { v0 }, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    move-result-object v0
    invoke-virtual { v1, v0 }, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V
  :L4
    return-void
.end method
