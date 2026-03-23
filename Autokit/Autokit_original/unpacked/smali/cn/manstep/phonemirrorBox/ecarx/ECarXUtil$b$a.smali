.class Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil$b$a;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil$b;->onAPIReady(Z)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil$b;

.method constructor <init>(Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil$b;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil$b$a;->b:Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil$b;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil$b$a;->b:Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil$b;
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil$b;->a:Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->access$500(Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;)Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil$b$a;->b:Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil$b;
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil$b;->a:Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->access$700(Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;)Lcom/ecarx/sdk/mediacenter/MediaCenterAPI;
    move-result-object v0
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil$b$a;->b:Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil$b;
    iget-object v1, v1, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil$b;->a:Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->access$600(Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;)Lcn/manstep/phonemirrorBox/ecarx/b;
    move-result-object v1
    invoke-virtual { v0, v1 }, Lcom/ecarx/sdk/mediacenter/MediaCenterAPI;->setLogImpl(Lcom/ecarx/sdk/log/ILog;)V
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil$b$a;->b:Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil$b;
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil$b;->a:Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->access$700(Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;)Lcom/ecarx/sdk/mediacenter/MediaCenterAPI;
    move-result-object v0
    const/4 v1, 1
    invoke-virtual { v0, v1 }, Lcom/ecarx/sdk/mediacenter/MediaCenterAPI;->setLogEnable(Z)V
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil$b$a;->b:Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil$b;
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil$b;->a:Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->access$700(Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;)Lcom/ecarx/sdk/mediacenter/MediaCenterAPI;
    move-result-object v0
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Lcom/ecarx/sdk/mediacenter/MediaCenterAPI;->setLogLevel(I)V
  :L0
    return-void
.end method
