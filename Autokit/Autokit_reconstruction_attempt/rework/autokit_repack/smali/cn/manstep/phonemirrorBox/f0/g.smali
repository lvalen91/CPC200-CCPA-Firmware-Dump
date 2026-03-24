.class public Lcn/manstep/phonemirrorBox/f0/g;
.super Lcn/manstep/phonemirrorBox/f0/a;
.source "SourceFile"


# static fields
.field private static i:Lcn/manstep/phonemirrorBox/f0/g;


# instance fields
.field private f:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private g:Landroid/media/AudioFocusRequest;

.field private h:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/f0/a;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/manstep/phonemirrorBox/f0/g;->h:I

    return-void
.end method

.method static synthetic h(Lcn/manstep/phonemirrorBox/f0/g;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcn/manstep/phonemirrorBox/f0/g;->h:I

    return p1
.end method

.method public static j()Lcn/manstep/phonemirrorBox/f0/g;
    .registers 2

    .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/f0/g;->i:Lcn/manstep/phonemirrorBox/f0/g;

    if-nez v0, :cond_17

    .line 2
    const-class v0, Lcn/manstep/phonemirrorBox/f0/g;

    monitor-enter v0

    .line 3
    :try_start_7
    sget-object v1, Lcn/manstep/phonemirrorBox/f0/g;->i:Lcn/manstep/phonemirrorBox/f0/g;

    if-nez v1, :cond_12

    .line 4
    new-instance v1, Lcn/manstep/phonemirrorBox/f0/g;

    invoke-direct {v1}, Lcn/manstep/phonemirrorBox/f0/g;-><init>()V

    sput-object v1, Lcn/manstep/phonemirrorBox/f0/g;->i:Lcn/manstep/phonemirrorBox/f0/g;

    .line 5
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 6
    :cond_17
    :goto_17
    sget-object v0, Lcn/manstep/phonemirrorBox/f0/g;->i:Lcn/manstep/phonemirrorBox/f0/g;

    return-object v0
.end method


# virtual methods
.method public g()V
    .registers 4

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/u;->f0()Z

    move-result v0

    if-nez v0, :cond_45

    .line 2
    iget v0, p0, Lcn/manstep/phonemirrorBox/f0/g;->h:I

    if-eqz v0, :cond_4c

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "abandon: focus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/manstep/phonemirrorBox/f0/g;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VoiceManager"

    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/f0/a;->e:Landroid/media/AudioManager;

    if-eqz v0, :cond_41

    .line 5
    iget-boolean v1, p0, Lcn/manstep/phonemirrorBox/f0/a;->c:Z

    if-nez v1, :cond_3a

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_3a

    .line 6
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/f0/g;->g:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    goto :goto_41

    .line 7
    :cond_3a
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/f0/a;->e:Landroid/media/AudioManager;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/f0/g;->f:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_41
    :goto_41
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcn/manstep/phonemirrorBox/f0/g;->h:I

    goto :goto_4c

    .line 9
    :cond_45
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/e;->j()Lcn/manstep/phonemirrorBox/f0/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/f0/e;->g()V

    :cond_4c
    :goto_4c
    return-void
.end method

.method public i()Landroid/media/AudioAttributes;
    .registers 2

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/f0/g;->g:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0}, Landroid/media/AudioFocusRequest;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    return-object v0
.end method

.method public k()Z
    .registers 4

    .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/f0/g;->h:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    const/4 v2, 0x2

    if-ne v0, v2, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :cond_a
    :goto_a
    return v1
.end method

.method public l(Landroid/content/Context;)V
    .registers 10

    const-string v0, "audio"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/f0/a;->e:Landroid/media/AudioManager;

    .line 2
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object p1

    const-string v0, "VAAudioVol"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I

    move-result p1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init: val="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VoiceManager"

    invoke-static {v2, v0}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "init: type="

    const/16 v3, 0x10

    const v4, 0xffff

    if-lez p1, :cond_57

    and-int v5, p1, v4

    shr-int/2addr p1, v3

    and-int/2addr p1, v4

    .line 4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",vol="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v6, p0, Lcn/manstep/phonemirrorBox/f0/a;->e:Landroid/media/AudioManager;

    invoke-virtual {v6, p1, v5, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 6
    :cond_57
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object p1

    const-string v5, "LowerAudioAPI"

    invoke-virtual {p1, v5, v1}, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/f0/a;->c:Z

    .line 7
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object p1

    const-string v5, "VAAudioType"

    invoke-virtual {p1, v5, v1}, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I

    move-result p1

    shr-int/lit8 v5, p1, 0x10

    and-int/2addr v5, v4

    .line 8
    iput v5, p0, Lcn/manstep/phonemirrorBox/f0/a;->b:I

    and-int/2addr v4, p1

    .line 9
    iput v4, p0, Lcn/manstep/phonemirrorBox/f0/a;->a:I

    .line 10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",usage="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcn/manstep/phonemirrorBox/f0/a;->a:I

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",contentType="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcn/manstep/phonemirrorBox/f0/a;->b:I

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget p1, p0, Lcn/manstep/phonemirrorBox/f0/a;->a:I

    const/4 v0, 0x1

    const/16 v4, 0x1a

    if-nez p1, :cond_b1

    .line 12
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v4, :cond_af

    iget-boolean p1, p0, Lcn/manstep/phonemirrorBox/f0/a;->c:Z

    if-nez p1, :cond_af

    .line 13
    iput v3, p0, Lcn/manstep/phonemirrorBox/f0/a;->a:I

    .line 14
    iput v0, p0, Lcn/manstep/phonemirrorBox/f0/a;->b:I

    goto :goto_b1

    .line 15
    :cond_af
    iput v1, p0, Lcn/manstep/phonemirrorBox/f0/a;->a:I

    .line 16
    :cond_b1
    :goto_b1
    new-instance p1, Lcn/manstep/phonemirrorBox/f0/g$a;

    invoke-direct {p1, p0}, Lcn/manstep/phonemirrorBox/f0/g$a;-><init>(Lcn/manstep/phonemirrorBox/f0/g;)V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/f0/g;->f:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 17
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v4, :cond_102

    .line 18
    :try_start_bc
    new-instance p1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    iget v1, p0, Lcn/manstep/phonemirrorBox/f0/a;->a:I

    .line 19
    invoke-virtual {p1, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    iget v1, p0, Lcn/manstep/phonemirrorBox/f0/a;->b:I

    .line 20
    invoke-virtual {p1, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    .line 21
    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1
    :try_end_d1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_bc .. :try_end_d1} :catch_d2

    goto :goto_ec

    :catch_d2
    const/4 p1, 0x6

    .line 22
    iput p1, p0, Lcn/manstep/phonemirrorBox/f0/a;->a:I

    .line 23
    iput v0, p0, Lcn/manstep/phonemirrorBox/f0/a;->b:I

    .line 24
    new-instance p1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    iget v0, p0, Lcn/manstep/phonemirrorBox/f0/a;->a:I

    .line 25
    invoke-virtual {p1, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    iget v0, p0, Lcn/manstep/phonemirrorBox/f0/a;->b:I

    .line 26
    invoke-virtual {p1, v0}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    .line 27
    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    .line 28
    :goto_ec
    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    .line 29
    invoke-virtual {v0, p1}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/f0/g;->f:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 30
    invoke-virtual {p1, v0}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    .line 31
    invoke-virtual {p1}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object p1

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/f0/g;->g:Landroid/media/AudioFocusRequest;

    .line 32
    :cond_102
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "init: usage="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcn/manstep/phonemirrorBox/f0/a;->a:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcn/manstep/phonemirrorBox/f0/a;->b:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public m()I
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request: usage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/manstep/phonemirrorBox/f0/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/manstep/phonemirrorBox/f0/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VoiceManager"

    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/u;->f0()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 3
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/e;->j()Lcn/manstep/phonemirrorBox/f0/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/f0/e;->m()I

    move-result v0

    return v0

    .line 4
    :cond_35
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/f0/a;->c:Z

    const/4 v1, 0x2

    if-nez v0, :cond_49

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_49

    .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/f0/a;->e:Landroid/media/AudioManager;

    iget-object v2, p0, Lcn/manstep/phonemirrorBox/f0/g;->g:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result v0

    goto :goto_52

    .line 6
    :cond_49
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/f0/a;->e:Landroid/media/AudioManager;

    iget-object v2, p0, Lcn/manstep/phonemirrorBox/f0/g;->f:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    :goto_52
    const/4 v2, 0x1

    if-ne v0, v2, :cond_63

    .line 7
    iput v1, p0, Lcn/manstep/phonemirrorBox/f0/g;->h:I

    .line 8
    invoke-static {}, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;

    move-result-object v1

    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/e;->C()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcn/manstep/phonemirrorBox/u0/c;->e(Z)V

    goto :goto_66

    :cond_63
    const/4 v1, -0x1

    .line 9
    iput v1, p0, Lcn/manstep/phonemirrorBox/f0/g;->h:I

    :goto_66
    return v0
.end method

.method public n(ZLandroid/media/AudioAttributes;I)I
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/f0/g;->k()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2
    iget p1, p0, Lcn/manstep/phonemirrorBox/f0/g;->h:I

    return p1

    :cond_9
    const/4 v0, -0x1

    const/4 v1, 0x2

    if-nez p1, :cond_32

    .line 3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt p1, v2, :cond_32

    if-nez p2, :cond_16

    return v0

    .line 4
    :cond_16
    new-instance p1, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {p1, v1}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    .line 5
    invoke-virtual {p1, p2}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    iget-object p2, p0, Lcn/manstep/phonemirrorBox/f0/g;->f:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 6
    invoke-virtual {p1, p2}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object p1

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/f0/g;->g:Landroid/media/AudioFocusRequest;

    .line 8
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/f0/a;->e:Landroid/media/AudioManager;

    invoke-virtual {p2, p1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result p1

    goto :goto_3a

    .line 9
    :cond_32
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/f0/a;->e:Landroid/media/AudioManager;

    iget-object p2, p0, Lcn/manstep/phonemirrorBox/f0/g;->f:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {p1, p2, p3, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result p1

    :goto_3a
    const/4 p2, 0x1

    if-ne p1, p2, :cond_4b

    .line 10
    iput v1, p0, Lcn/manstep/phonemirrorBox/f0/g;->h:I

    .line 11
    invoke-static {}, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;

    move-result-object p2

    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/e;->C()Z

    move-result p3

    invoke-virtual {p2, p3}, Lcn/manstep/phonemirrorBox/u0/c;->e(Z)V

    goto :goto_4d

    .line 12
    :cond_4b
    iput v0, p0, Lcn/manstep/phonemirrorBox/f0/g;->h:I

    :goto_4d
    return p1
.end method
