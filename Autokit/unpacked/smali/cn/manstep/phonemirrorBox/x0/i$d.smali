.class Lcn/manstep/phonemirrorBox/x0/i$d;
.super Ljava/lang/Object;
.implements Landroidx/lifecycle/p;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/x0/i;-><init>(Landroid/app/Application;)V
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

.method constructor <init>(Lcn/manstep/phonemirrorBox/x0/i;)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(Ljava/lang/Integer;)V
  .registers 4
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    const-string v1, "MicGain"
    invoke-virtual { v0, v1, p1 }, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z
    move-result v0
    if-eqz v0, :L0
  .line 3
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    const-string v1, "mediaDelay"
    invoke-virtual { v0, v1, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->s0(Ljava/lang/String;Ljava/lang/Object;)Z
  :L0
    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
  .registers 2
  .line 1
    check-cast p1, Ljava/lang/Integer;
    invoke-virtual { p0, p1 }, Lcn/manstep/phonemirrorBox/x0/i$d;->a(Ljava/lang/Integer;)V
    return-void
.end method
