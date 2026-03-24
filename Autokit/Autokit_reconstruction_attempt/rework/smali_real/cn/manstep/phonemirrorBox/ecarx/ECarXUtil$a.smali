.class Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ecarx/sdk/openapi/ECarXApiClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->initPolicyAPI(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil$a;->a:Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAPIReady(Z)V
    .registers 9

    const-string v0, "MEDIA"

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ECarXUtil,initPolicyAPI: onAPIReady "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil$a;->a:Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;

    # setter for: Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->bPolicyAPIReady:Z
    invoke-static {v1, p1}, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->access$002(Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;Z)Z

    .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil$a;->a:Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;

    # getter for: Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->bPolicyAPIReady:Z
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->access$000(Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;)Z

    move-result p1

    if-eqz p1, :cond_a1

    const/4 p1, 0x0

    .line 4
    :try_start_24
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil$a;->a:Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;

    # getter for: Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mPolicyAPI:Lcom/ecarx/sdk/policy/PolicyAPI;
    invoke-static {v1}, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->access$100(Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;)Lcom/ecarx/sdk/policy/PolicyAPI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ecarx/sdk/policy/PolicyAPI;->getAudioAttributes()Lcom/ecarx/sdk/policy/IAudioAttributes;

    move-result-object v1

    const-string v2, "NAVIGATION_GUIDANCE"

    .line 5
    invoke-interface {v1, v2}, Lcom/ecarx/sdk/policy/IAudioAttributes;->getAudioAttributesUsage(Ljava/lang/String;)I

    move-result v2

    const-string v3, "NAVI_GUIDANCE"

    .line 6
    invoke-interface {v1, v3}, Lcom/ecarx/sdk/policy/IAudioAttributes;->getAudioAttributesContentType(Ljava/lang/String;)I

    move-result v3

    .line 7
    invoke-interface {v1, v0}, Lcom/ecarx/sdk/policy/IAudioAttributes;->getAudioAttributesUsage(Ljava/lang/String;)I

    move-result v4

    const-string v5, "MUSIC"

    .line 8
    invoke-interface {v1, v5}, Lcom/ecarx/sdk/policy/IAudioAttributes;->getAudioAttributesContentType(Ljava/lang/String;)I

    move-result v5

    .line 9
    invoke-interface {v1, v0}, Lcom/ecarx/sdk/policy/IAudioAttributes;->getAudioAttributesUsage(Ljava/lang/String;)I

    move-result v0

    const-string v6, "BLUETOOTH_HFP"

    .line 10
    invoke-interface {v1, v6}, Lcom/ecarx/sdk/policy/IAudioAttributes;->getAudioAttributesContentType(Ljava/lang/String;)I

    .line 11
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-lt v1, v6, :cond_a1

    .line 12
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil$a;->a:Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;

    new-instance v6, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v6}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v6, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    # setter for: Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mNavAudioAttributes:Landroid/media/AudioAttributes;
    invoke-static {v1, v2}, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->access$202(Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;Landroid/media/AudioAttributes;)Landroid/media/AudioAttributes;

    .line 13
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil$a;->a:Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;

    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v2, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    # setter for: Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mCallAudioAttributes:Landroid/media/AudioAttributes;
    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->access$302(Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;Landroid/media/AudioAttributes;)Landroid/media/AudioAttributes;

    .line 14
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil$a;->a:Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v1, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    # setter for: Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->mMediaAudioAttributes:Landroid/media/AudioAttributes;
    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->access$402(Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;Landroid/media/AudioAttributes;)Landroid/media/AudioAttributes;
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_95} :catch_9c
    .catch Ljava/lang/Error; {:try_start_24 .. :try_end_95} :catch_96

    goto :goto_a1

    .line 15
    :catch_96
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil$a;->a:Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;

    # setter for: Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->bPolicyAPIReady:Z
    invoke-static {v0, p1}, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->access$002(Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;Z)Z

    goto :goto_a1

    .line 16
    :catch_9c
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil$a;->a:Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;

    # setter for: Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->bPolicyAPIReady:Z
    invoke-static {v0, p1}, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->access$002(Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;Z)Z

    :cond_a1
    :goto_a1
    return-void
.end method
