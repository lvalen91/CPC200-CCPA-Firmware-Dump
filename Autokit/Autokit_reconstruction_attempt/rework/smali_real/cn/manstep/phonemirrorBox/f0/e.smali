.class public Lcn/manstep/phonemirrorBox/f0/e;
.super Lcn/manstep/phonemirrorBox/f0/a;
.source "SourceFile"


# static fields
.field private static i:Lcn/manstep/phonemirrorBox/f0/e;


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
    iput v0, p0, Lcn/manstep/phonemirrorBox/f0/e;->h:I

    return-void
.end method

.method static synthetic h(Lcn/manstep/phonemirrorBox/f0/e;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcn/manstep/phonemirrorBox/f0/e;->h:I

    return p1
.end method

.method public static j()Lcn/manstep/phonemirrorBox/f0/e;
    .registers 4

    .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/f0/e;->i:Lcn/manstep/phonemirrorBox/f0/e;

    if-nez v0, :cond_17

    .line 2
    const-class v0, Lcn/manstep/phonemirrorBox/f0/e;

    monitor-enter v0

    .line 3
    :try_start_7
    sget-object v1, Lcn/manstep/phonemirrorBox/f0/e;->i:Lcn/manstep/phonemirrorBox/f0/e;

    if-nez v1, :cond_12

    .line 4
    new-instance v1, Lcn/manstep/phonemirrorBox/f0/e;

    invoke-direct {v1}, Lcn/manstep/phonemirrorBox/f0/e;-><init>()V

    sput-object v1, Lcn/manstep/phonemirrorBox/f0/e;->i:Lcn/manstep/phonemirrorBox/f0/e;

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
    sget-object v0, Lcn/manstep/phonemirrorBox/f0/e;->i:Lcn/manstep/phonemirrorBox/f0/e;

    return-object v0
.end method

.method private o(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/f0/a;->d:Ld/b/a/b;

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    if-eqz p1, :cond_15

    .line 2
    invoke-static {}, Lcn/manstep/phonemirrorBox/e0/b;->a()Lcn/manstep/phonemirrorBox/e0/b;

    move-result-object p1

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/f0/a;->d:Ld/b/a/b;

    invoke-virtual {v1}, Ld/b/a/b;->C()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcn/manstep/phonemirrorBox/e0/b;->c(II)V

    goto :goto_1e

    .line 3
    :cond_15
    invoke-static {}, Lcn/manstep/phonemirrorBox/e0/b;->a()Lcn/manstep/phonemirrorBox/e0/b;

    move-result-object p1

    const/high16 v1, -0x80000000

    invoke-virtual {p1, v0, v1}, Lcn/manstep/phonemirrorBox/e0/b;->c(II)V

    :cond_1e
    :goto_1e
    return-void
.end method


# virtual methods
.method public g()V
    .registers 5

    .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/f0/e;->h:I

    if-eqz v0, :cond_3d

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "abandon: focus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/manstep/phonemirrorBox/f0/e;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavManager"

    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcn/manstep/phonemirrorBox/f0/e;->o(Z)V

    .line 4
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/f0/a;->e:Landroid/media/AudioManager;

    if-eqz v1, :cond_3b

    .line 5
    iget-boolean v2, p0, Lcn/manstep/phonemirrorBox/f0/a;->c:Z

    if-nez v2, :cond_34

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_34

    .line 6
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/f0/e;->g:Landroid/media/AudioFocusRequest;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    goto :goto_3b

    .line 7
    :cond_34
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/f0/a;->e:Landroid/media/AudioManager;

    iget-object v2, p0, Lcn/manstep/phonemirrorBox/f0/e;->f:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 8
    :cond_3b
    :goto_3b
    iput v0, p0, Lcn/manstep/phonemirrorBox/f0/e;->h:I

    :cond_3d
    return-void
.end method

.method public i()Landroid/media/AudioAttributes;
    .registers 2

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/f0/e;->g:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0}, Landroid/media/AudioFocusRequest;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    return-object v0
.end method

.method public k()Z
    .registers 3

    .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/f0/e;->h:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public l(Landroid/content/Context;)V
    .registers 8

    const-string v0, "audio"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/f0/a;->e:Landroid/media/AudioManager;

    .line 2
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object p1

    const-string v0, "NVAudioVol"

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

    const-string v2, "NavManager"

    invoke-static {v2, v0}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0xffff

    if-lez p1, :cond_70

    and-int v3, p1, v0

    shr-int/lit8 p1, p1, 0x10

    and-int/2addr p1, v0

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init: streamVolume="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcn/manstep/phonemirrorBox/f0/a;->e:Landroid/media/AudioManager;

    invoke-virtual {v5, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/f0/a;->e:Landroid/media/AudioManager;

    invoke-virtual {v4, p1, v3, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init: volType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", vol="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_70
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object p1

    const-string v3, "LowerAudioAPI"

    invoke-virtual {p1, v3, v1}, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/f0/a;->c:Z

    .line 8
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object p1

    const-string v3, "NVAudioType"

    invoke-virtual {p1, v3, v1}, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I

    move-result p1

    shr-int/lit8 v1, p1, 0x10

    and-int/2addr v1, v0

    .line 9
    iput v1, p0, Lcn/manstep/phonemirrorBox/f0/a;->b:I

    and-int/2addr p1, v0

    .line 10
    iput p1, p0, Lcn/manstep/phonemirrorBox/f0/a;->a:I

    const/4 v0, 0x3

    const/16 v1, 0x1a

    if-nez p1, :cond_a5

    .line 11
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v1, :cond_a3

    iget-boolean p1, p0, Lcn/manstep/phonemirrorBox/f0/a;->c:Z

    if-nez p1, :cond_a3

    const/16 p1, 0xc

    .line 12
    iput p1, p0, Lcn/manstep/phonemirrorBox/f0/a;->a:I

    const/4 p1, 0x2

    .line 13
    iput p1, p0, Lcn/manstep/phonemirrorBox/f0/a;->b:I

    goto :goto_a5

    .line 14
    :cond_a3
    iput v0, p0, Lcn/manstep/phonemirrorBox/f0/a;->a:I

    .line 15
    :cond_a5
    :goto_a5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init: usage="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcn/manstep/phonemirrorBox/f0/a;->a:I

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    new-instance p1, Lcn/manstep/phonemirrorBox/f0/e$a;

    invoke-direct {p1, p0}, Lcn/manstep/phonemirrorBox/f0/e$a;-><init>(Lcn/manstep/phonemirrorBox/f0/e;)V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/f0/e;->f:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 17
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v1, :cond_f0

    .line 18
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

    .line 22
    new-instance v1, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v1, v0}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    .line 23
    invoke-virtual {v1, p1}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/f0/e;->f:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 24
    invoke-virtual {p1, v0}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    .line 25
    invoke-virtual {p1}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object p1

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/f0/e;->g:Landroid/media/AudioFocusRequest;

    .line 26
    :cond_f0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request: usage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/manstep/phonemirrorBox/f0/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",contentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/manstep/phonemirrorBox/f0/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\uff0cLowerApi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/manstep/phonemirrorBox/f0/a;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",focus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/manstep/phonemirrorBox/f0/e;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavManager"

    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/f0/e;->k()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_43

    .line 3
    invoke-direct {p0, v2}, Lcn/manstep/phonemirrorBox/f0/e;->o(Z)V

    .line 4
    iget v0, p0, Lcn/manstep/phonemirrorBox/f0/e;->h:I

    return v0

    .line 5
    :cond_43
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    const-string v3, "IsTurnDownMusic"

    invoke-virtual {v0, v3, v2}, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 6
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/f0/a;->c:Z

    if-nez v0, :cond_62

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_62

    .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/f0/a;->e:Landroid/media/AudioManager;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/f0/e;->g:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result v0

    goto :goto_be

    .line 8
    :cond_62
    iget v0, p0, Lcn/manstep/phonemirrorBox/f0/a;->a:I

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request: streamType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :try_start_78
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request: streamVolume="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/manstep/phonemirrorBox/f0/a;->e:Landroid/media/AudioManager;

    invoke-virtual {v4, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_92} :catch_93

    goto :goto_9f

    :catch_93
    nop

    .line 11
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/f0/a;->d:Ld/b/a/b;

    if-eqz v3, :cond_9f

    .line 12
    invoke-virtual {v3}, Ld/b/a/b;->C()I

    move-result v3

    if-ltz v3, :cond_9f

    move v0, v3

    .line 13
    :cond_9f
    :goto_9f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request: type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/f0/a;->e:Landroid/media/AudioManager;

    iget-object v3, p0, Lcn/manstep/phonemirrorBox/f0/e;->f:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v0, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    goto :goto_be

    :cond_bd
    const/4 v0, 0x1

    :goto_be
    if-ne v0, v2, :cond_d1

    .line 15
    invoke-direct {p0, v2}, Lcn/manstep/phonemirrorBox/f0/e;->o(Z)V

    .line 16
    iput v2, p0, Lcn/manstep/phonemirrorBox/f0/e;->h:I

    .line 17
    invoke-static {}, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;

    move-result-object v1

    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/e;->C()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcn/manstep/phonemirrorBox/u0/c;->d(Z)V

    goto :goto_d4

    :cond_d1
    const/4 v1, -0x1

    .line 18
    iput v1, p0, Lcn/manstep/phonemirrorBox/f0/e;->h:I

    :goto_d4
    return v0
.end method

.method public n(ZLandroid/media/AudioAttributes;I)I
    .registers 9

    .line 1
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/f0/e;->k()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    .line 2
    invoke-direct {p0, v1}, Lcn/manstep/phonemirrorBox/f0/e;->o(Z)V

    .line 3
    iget p1, p0, Lcn/manstep/phonemirrorBox/f0/e;->h:I

    return p1

    :cond_d
    const/4 v0, -0x1

    const/4 v2, 0x3

    if-nez p1, :cond_36

    .line 4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt p1, v3, :cond_36

    if-nez p2, :cond_1a

    return v0

    .line 5
    :cond_1a
    new-instance p1, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {p1, v2}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    .line 6
    invoke-virtual {p1, p2}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    iget-object p2, p0, Lcn/manstep/phonemirrorBox/f0/e;->f:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 7
    invoke-virtual {p1, p2}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object p1

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/f0/e;->g:Landroid/media/AudioFocusRequest;

    .line 9
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/f0/a;->e:Landroid/media/AudioManager;

    invoke-virtual {p2, p1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result p1

    goto :goto_9b

    .line 10
    :cond_36
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "request: streamType="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",usage="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcn/manstep/phonemirrorBox/f0/a;->a:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NavManager"

    invoke-static {p2, p1}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :try_start_56
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request: streamVolume="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/manstep/phonemirrorBox/f0/a;->e:Landroid/media/AudioManager;

    iget v4, p0, Lcn/manstep/phonemirrorBox/f0/a;->a:I

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_72} :catch_73

    goto :goto_7f

    :catch_73
    nop

    .line 12
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/f0/a;->d:Ld/b/a/b;

    if-eqz p1, :cond_7f

    .line 13
    invoke-virtual {p1}, Ld/b/a/b;->C()I

    move-result p1

    if-ltz p1, :cond_7f

    move p3, p1

    .line 14
    :cond_7f
    :goto_7f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request: type="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/f0/a;->e:Landroid/media/AudioManager;

    iget-object p2, p0, Lcn/manstep/phonemirrorBox/f0/e;->f:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {p1, p2, p3, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result p1

    :goto_9b
    if-ne p1, v1, :cond_ae

    .line 16
    invoke-direct {p0, v1}, Lcn/manstep/phonemirrorBox/f0/e;->o(Z)V

    .line 17
    iput v1, p0, Lcn/manstep/phonemirrorBox/f0/e;->h:I

    .line 18
    invoke-static {}, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;

    move-result-object p2

    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/e;->C()Z

    move-result p3

    invoke-virtual {p2, p3}, Lcn/manstep/phonemirrorBox/u0/c;->d(Z)V

    goto :goto_b0

    .line 19
    :cond_ae
    iput v0, p0, Lcn/manstep/phonemirrorBox/f0/e;->h:I

    :goto_b0
    return p1
.end method
