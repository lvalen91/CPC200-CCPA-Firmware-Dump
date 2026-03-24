.class public Lcn/manstep/phonemirrorBox/ecarx/d;
.super Lcom/ecarx/sdk/vr/music/MusicIntentListener;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/ecarx/sdk/vr/music/MusicIntentListener;-><init>()V

    return-void
.end method


# virtual methods
.method public handleCtrlApp(Lcom/ecarx/sdk/vr/common/MediaCtrlIntent;Lcom/ecarx/sdk/vr/common/IResponse;)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2}, Lcom/ecarx/sdk/vr/music/MusicIntentListener;->handleCtrlApp(Lcom/ecarx/sdk/vr/common/MediaCtrlIntent;Lcom/ecarx/sdk/vr/common/IResponse;)V

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MusicIntentListener,handleCtrlApp: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    return-void
.end method

.method public handlePlayMusic(Lcom/ecarx/sdk/vr/music/MusicPlayIntent;Lcom/ecarx/sdk/vr/common/IResponse;)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2}, Lcom/ecarx/sdk/vr/music/MusicIntentListener;->handlePlayMusic(Lcom/ecarx/sdk/vr/music/MusicPlayIntent;Lcom/ecarx/sdk/vr/common/IResponse;)V

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MusicIntentListener,handlePlayMusic: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    return-void
.end method

.method public handleSearchMusic(Lcom/ecarx/sdk/vr/music/MusicSearchIntent;Lcom/ecarx/sdk/vr/common/IResponse;)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2}, Lcom/ecarx/sdk/vr/music/MusicIntentListener;->handleSearchMusic(Lcom/ecarx/sdk/vr/music/MusicSearchIntent;Lcom/ecarx/sdk/vr/common/IResponse;)V

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MusicIntentListener,handleSearchMusic: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    return-void
.end method
