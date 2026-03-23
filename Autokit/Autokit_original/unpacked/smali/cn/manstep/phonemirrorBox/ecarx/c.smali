.class Lcn/manstep/phonemirrorBox/ecarx/c;
.super Lcom/ecarx/sdk/mediacenter/MusicClient;
.source "SourceFile"

.field private a:I

.method constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lcom/ecarx/sdk/mediacenter/MusicClient;-><init>()V
    return-void
.end method

.method public onMediaCenterFocusChanged(Ljava/lang/String;)V
  .registers 4
  .line 1
    invoke-super { p0, p1 }, Lcom/ecarx/sdk/mediacenter/MusicClient;->onMediaCenterFocusChanged(Ljava/lang/String;)V
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "ECarXMusicClient,onMediaCenterFocusChanged: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    return-void
.end method

.method public onNext()Z
  .registers 3
    const-string v0, "ECarXMusicClient,onNext."
  .line 1
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    const/16 v0, 204
  .line 2
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
  .line 3
    invoke-static { }, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->getInstance()Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;
    move-result-object v0
    const/4 v1, 1
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->requestPlay(Z)V
    return v1
.end method

.method public onPause()Z
  .registers 5
    const-string v0, "ECarXMusicClient,onPause."
  .line 1
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    iget v0, p0, Lcn/manstep/phonemirrorBox/ecarx/c;->a:I
    const/4 v1, 0
    const/16 v2, 202
    const/4 v3, 1
    if-ne v0, v3, :L0
  .line 3
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->L(I)V
  .line 4
    invoke-static { }, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->getInstance()Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;
    move-result-object v0
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->requestPlay(Z)V
    goto :L1
  :L0
  .line 5
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->L(I)V
  .line 6
    invoke-static { }, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->getInstance()Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;
    move-result-object v0
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->requestPlay(Z)V
  :L1
    return v3
.end method

.method public onPlay()Z
  .registers 3
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "ECarXMusicClient,onPlay."
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Lcn/manstep/phonemirrorBox/ecarx/c;->a:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    const/16 v0, 201
  .line 2
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->L(I)V
  .line 3
    invoke-static { }, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->getInstance()Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;
    move-result-object v0
    const/4 v1, 1
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->requestPlay(Z)V
    return v1
.end method

.method public onPrevious()Z
  .registers 3
    const-string v0, "ECarXMusicClient,onPrevious."
  .line 1
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    const/16 v0, 205
  .line 2
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
  .line 3
    invoke-static { }, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->getInstance()Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;
    move-result-object v0
    const/4 v1, 1
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->requestPlay(Z)V
    return v1
.end method

.method public operationType(I)V
  .registers 4
  .line 1
    invoke-super { p0, p1 }, Lcom/ecarx/sdk/mediacenter/MusicClient;->operationType(I)V
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "ECarXMusicClient,operationType: type = "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 3
    iput p1, p0, Lcn/manstep/phonemirrorBox/ecarx/c;->a:I
    return-void
.end method
