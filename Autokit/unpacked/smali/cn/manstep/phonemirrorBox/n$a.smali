.class Lcn/manstep/phonemirrorBox/n$a;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcn/manstep/phonemirrorBox/n;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.method constructor <init>(Lcn/manstep/phonemirrorBox/n;)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 4
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/c;->n()Lcn/manstep/phonemirrorBox/f0/c;
    move-result-object v1
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/f0/a;->d()I
    move-result v1
    const-string v2, "mediaVol"
    invoke-virtual { v0, v2, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->J0(Ljava/lang/String;I)Z
  .line 3
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/b;->j()Lcn/manstep/phonemirrorBox/f0/b;
    move-result-object v1
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/f0/a;->d()I
    move-result v1
    const-string v2, "callVol"
    invoke-virtual { v0, v2, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->J0(Ljava/lang/String;I)Z
  .line 4
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/f;->j()Lcn/manstep/phonemirrorBox/f0/f;
    move-result-object v1
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/f0/a;->d()I
    move-result v1
    const-string v2, "ringVol"
    invoke-virtual { v0, v2, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->J0(Ljava/lang/String;I)Z
  .line 5
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/e;->j()Lcn/manstep/phonemirrorBox/f0/e;
    move-result-object v1
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/f0/a;->d()I
    move-result v1
    const-string v2, "navVol"
    invoke-virtual { v0, v2, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->J0(Ljava/lang/String;I)Z
  .line 6
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/g;->j()Lcn/manstep/phonemirrorBox/f0/g;
    move-result-object v1
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/f0/a;->d()I
    move-result v1
    const-string v2, "speechVol"
    invoke-virtual { v0, v2, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->J0(Ljava/lang/String;I)Z
  :L0
    return-void
.end method
