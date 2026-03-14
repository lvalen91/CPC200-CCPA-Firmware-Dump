.class Lcn/manstep/phonemirrorBox/x0/k$j;
.super Ljava/lang/Object;
.implements Landroidx/lifecycle/p;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/x0/k;->C()Landroidx/lifecycle/o;
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

.method constructor <init>(Lcn/manstep/phonemirrorBox/x0/k;)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(Ljava/lang/Integer;)V
  .registers 4
  .line 1
    invoke-virtual { p1 }, Ljava/lang/Integer;->intValue()I
    move-result v0
    const-string v1, "DPI"
    if-nez v0, :L0
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object p1
    invoke-virtual { p1, v1 }, Lcn/manstep/phonemirrorBox/b0;->q(Ljava/lang/String;)V
  .line 3
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z
    move-result p1
    if-eqz p1, :L1
  .line 4
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->O0()Z
    goto :L1
  :L0
  .line 5
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    invoke-virtual { v0, v1, p1 }, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V
  .line 6
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z
    move-result v0
    if-eqz v0, :L1
  .line 7
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-virtual { p1 }, Ljava/lang/Integer;->intValue()I
    move-result p1
    invoke-virtual { v0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->P0(I)Z
  :L1
    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
  .registers 2
  .line 1
    check-cast p1, Ljava/lang/Integer;
    invoke-virtual { p0, p1 }, Lcn/manstep/phonemirrorBox/x0/k$j;->a(Ljava/lang/Integer;)V
    return-void
.end method
