.class Lcn/manstep/phonemirrorBox/ecarx/e;
.super Lcom/ecarx/sdk/mediacenter/MusicPlaybackInfo;
.source "SourceFile"


# instance fields
.field private a:Landroid/net/Uri;

.field private b:I

.field private c:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/ecarx/sdk/mediacenter/MusicPlaybackInfo;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcn/manstep/phonemirrorBox/ecarx/e;->b:I

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/manstep/phonemirrorBox/MainActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x34010000

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 5
    invoke-static {p1, v1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/e;->c:Landroid/app/PendingIntent;

    .line 6
    iput p2, p0, Lcn/manstep/phonemirrorBox/ecarx/e;->b:I

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "android.resource://"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static/range {p1 .. p1}, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f0800bb

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/ecarx/e;->a:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .registers 2

    const-string v0, "\u6295\u5f71\u7cbe\u7075"

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->T()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "CarPlay"

    return-object v0

    .line 2
    :cond_d
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->U()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "HiCar"

    return-object v0

    :cond_1a
    const-string v0, ""

    return-object v0
.end method

.method public getArtwork()Landroid/net/Uri;
    .registers 2

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/e;->a:Landroid/net/Uri;

    return-object v0
.end method

.method public getDuration()J
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/ecarx/sdk/mediacenter/MusicPlaybackInfo;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLaunchIntent()Landroid/app/PendingIntent;
    .registers 2

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/e;->c:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getNextArtwork()Landroid/net/Uri;
    .registers 2

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/e;->a:Landroid/net/Uri;

    return-object v0
.end method

.method public getPlaybackStatus()I
    .registers 2

    .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/ecarx/e;->b:I

    return v0
.end method

.method public getPlayerIntent()Landroid/app/PendingIntent;
    .registers 2

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/e;->c:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getPreviousArtwork()Landroid/net/Uri;
    .registers 2

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/e;->a:Landroid/net/Uri;

    return-object v0
.end method

.method public getSourceType()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    const-string v0, "\u6295\u5f71\u7cbe\u7075"

    return-object v0
.end method
