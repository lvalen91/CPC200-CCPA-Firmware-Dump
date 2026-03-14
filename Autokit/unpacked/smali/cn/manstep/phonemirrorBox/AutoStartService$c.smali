.class Lcn/manstep/phonemirrorBox/AutoStartService$c;
.super Ljava/util/TimerTask;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/AutoStartService;->H()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcn/manstep/phonemirrorBox/AutoStartService;

.method constructor <init>(Lcn/manstep/phonemirrorBox/AutoStartService;Ljava/lang/String;)V
  .registers 3
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/AutoStartService$c;->c:Lcn/manstep/phonemirrorBox/AutoStartService;
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/AutoStartService$c;->b:Ljava/lang/String;
    invoke-direct { p0 }, Ljava/util/TimerTask;-><init>()V
    return-void
.end method

.method public run()V
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoStartService$c;->c:Lcn/manstep/phonemirrorBox/AutoStartService;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AutoStartService$c;->b:Ljava/lang/String;
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/AutoStartService;->l(Lcn/manstep/phonemirrorBox/AutoStartService;Ljava/lang/String;)Z
    move-result v0
  .line 2
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "AutoStartService,startNightModeDetectTimer: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    const-string v2, ","
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/AutoStartService$c;->c:Lcn/manstep/phonemirrorBox/AutoStartService;
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/AutoStartService;->m(Lcn/manstep/phonemirrorBox/AutoStartService;)I
    move-result v2
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    if-eqz v0, :L0
  .line 3
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AutoStartService$c;->c:Lcn/manstep/phonemirrorBox/AutoStartService;
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/AutoStartService;->m(Lcn/manstep/phonemirrorBox/AutoStartService;)I
    move-result v1
    const/4 v2, 1
    if-ne v1, v2, :L0
    return-void
  :L0
    if-nez v0, :L1
  .line 4
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AutoStartService$c;->c:Lcn/manstep/phonemirrorBox/AutoStartService;
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/AutoStartService;->m(Lcn/manstep/phonemirrorBox/AutoStartService;)I
    move-result v1
    if-nez v1, :L1
    return-void
  :L1
    if-eqz v0, :L2
    const/16 v1, 16
    goto :L3
  :L2
    const/16 v1, 17
  :L3
  .line 5
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->L(I)V
  .line 6
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AutoStartService$c;->c:Lcn/manstep/phonemirrorBox/AutoStartService;
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/AutoStartService;->p(Lcn/manstep/phonemirrorBox/AutoStartService;I)I
    return-void
.end method
