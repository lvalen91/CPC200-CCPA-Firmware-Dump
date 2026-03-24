.class public Lcn/manstep/phonemirrorBox/f0/b;
.super Lcn/manstep/phonemirrorBox/f0/a;
.source "SourceFile"


# static fields
.field private static i:Lcn/manstep/phonemirrorBox/f0/b;


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
    iput v0, p0, Lcn/manstep/phonemirrorBox/f0/b;->h:I

    return-void
.end method

.method static synthetic h(Lcn/manstep/phonemirrorBox/f0/b;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcn/manstep/phonemirrorBox/f0/b;->h:I

    return p1
.end method

.method public static j()Lcn/manstep/phonemirrorBox/f0/b;
    .registers 4

    .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/f0/b;->i:Lcn/manstep/phonemirrorBox/f0/b;

    if-nez v0, :cond_17

    .line 2
    const-class v0, Lcn/manstep/phonemirrorBox/f0/b;

    monitor-enter v0

    .line 3
    :try_start_7
    sget-object v1, Lcn/manstep/phonemirrorBox/f0/b;->i:Lcn/manstep/phonemirrorBox/f0/b;

    if-nez v1, :cond_12

    .line 4
    new-instance v1, Lcn/manstep/phonemirrorBox/f0/b;

    invoke-direct {v1}, Lcn/manstep/phonemirrorBox/f0/b;-><init>()V

    sput-object v1, Lcn/manstep/phonemirrorBox/f0/b;->i:Lcn/manstep/phonemirrorBox/f0/b;

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
    sget-object v0, Lcn/manstep/phonemirrorBox/f0/b;->i:Lcn/manstep/phonemirrorBox/f0/b;

    return-object v0
.end method

.method private o()V
    .registers 7

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    const-string v1, "CallAudioVol"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVolume: val="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "CallManager"

    invoke-static {v3, v1}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v0, :cond_4c

    const v1, 0xffff

    and-int v4, v0, v1

    shr-int/lit8 v0, v0, 0x10

    and-int/2addr v0, v1

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setVolume: type="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",vol="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/f0/a;->e:Landroid/media/AudioManager;

    invoke-virtual {v1, v0, v4, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_4c
    return-void
.end method


# virtual methods
.method public g()V
    .registers 4

    .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/f0/b;->h:I

    if-eqz v0, :cond_41

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "abandon: focus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/manstep/phonemirrorBox/f0/b;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CallManager"

    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/v0/a;->f()V

    .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/f0/a;->e:Landroid/media/AudioManager;

    if-eqz v0, :cond_3e

    .line 5
    iget-boolean v1, p0, Lcn/manstep/phonemirrorBox/f0/a;->c:Z

    if-nez v1, :cond_37

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_37

    .line 6
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/f0/b;->g:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    goto :goto_3e

    .line 7
    :cond_37
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/f0/a;->e:Landroid/media/AudioManager;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/f0/b;->f:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_3e
    :goto_3e
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcn/manstep/phonemirrorBox/f0/b;->h:I

    :cond_41
    return-void
.end method

.method public i()Landroid/media/AudioAttributes;
    .registers 3

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/u;->i()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v1, 0xd

    .line 3
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    return-object v0

    .line 6
    :cond_1f
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/f0/b;->g:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0}, Landroid/media/AudioFocusRequest;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    return-object v0
.end method

.method public k()Z
    .registers 4

    .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/f0/b;->h:I

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
    .registers 6

    const-string v0, "audio"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/f0/a;->e:Landroid/media/AudioManager;

    .line 2
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/f0/b;->o()V

    .line 3
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object p1

    const-string v0, "LowerAudioAPI"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/f0/a;->c:Z

    .line 4
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object p1

    const-string v0, "CallAudioType"

    invoke-virtual {p1, v0, v1}, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I

    move-result p1

    shr-int/lit8 v0, p1, 0x10

    const v2, 0xffff

    and-int/2addr v0, v2

    .line 5
    iput v0, p0, Lcn/manstep/phonemirrorBox/f0/a;->b:I

    and-int v0, p1, v2

    .line 6
    iput v0, p0, Lcn/manstep/phonemirrorBox/f0/a;->a:I

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init: type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",usage="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcn/manstep/phonemirrorBox/f0/a;->a:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",contentType="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcn/manstep/phonemirrorBox/f0/a;->b:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CallManager"

    invoke-static {v0, p1}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget p1, p0, Lcn/manstep/phonemirrorBox/f0/a;->a:I

    const/4 v2, 0x2

    const/16 v3, 0x1a

    if-nez p1, :cond_71

    .line 9
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_6f

    iget-boolean p1, p0, Lcn/manstep/phonemirrorBox/f0/a;->c:Z

    if-nez p1, :cond_6f

    .line 10
    iput v2, p0, Lcn/manstep/phonemirrorBox/f0/a;->a:I

    const/4 p1, 0x1

    .line 11
    iput p1, p0, Lcn/manstep/phonemirrorBox/f0/a;->b:I

    goto :goto_71

    .line 12
    :cond_6f
    iput v1, p0, Lcn/manstep/phonemirrorBox/f0/a;->a:I

    .line 13
    :cond_71
    :goto_71
    new-instance p1, Lcn/manstep/phonemirrorBox/f0/b$a;

    invoke-direct {p1, p0}, Lcn/manstep/phonemirrorBox/f0/b$a;-><init>(Lcn/manstep/phonemirrorBox/f0/b;)V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/f0/b;->f:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 14
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_a6

    .line 15
    new-instance p1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    iget v1, p0, Lcn/manstep/phonemirrorBox/f0/a;->a:I

    .line 16
    invoke-virtual {p1, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    iget v1, p0, Lcn/manstep/phonemirrorBox/f0/a;->b:I

    .line 17
    invoke-virtual {p1, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    .line 19
    new-instance v1, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v1, v2}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    .line 20
    invoke-virtual {v1, p1}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/f0/b;->f:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 21
    invoke-virtual {p1, v1}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object p1

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/f0/b;->g:Landroid/media/AudioFocusRequest;

    .line 23
    :cond_a6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init: usage="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/manstep/phonemirrorBox/f0/a;->a:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/manstep/phonemirrorBox/f0/a;->b:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public m()I
    .registers 6

    .line 1
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/f0/b;->o()V

    .line 2
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

    const-string v1, "CallManager"

    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/f0/b;->k()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 4
    iget v0, p0, Lcn/manstep/phonemirrorBox/f0/b;->h:I

    return v0

    .line 5
    :cond_2e
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/f0/a;->c:Z

    const/4 v2, 0x2

    if-nez v0, :cond_42

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_42

    .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/f0/a;->e:Landroid/media/AudioManager;

    iget-object v3, p0, Lcn/manstep/phonemirrorBox/f0/b;->g:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result v0

    goto :goto_4c

    .line 7
    :cond_42
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/f0/a;->e:Landroid/media/AudioManager;

    iget-object v3, p0, Lcn/manstep/phonemirrorBox/f0/b;->f:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iget v4, p0, Lcn/manstep/phonemirrorBox/f0/a;->a:I

    invoke-virtual {v0, v3, v4, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    :goto_4c
    const/4 v3, 0x1

    if-ne v0, v3, :cond_5d

    .line 8
    iput v2, p0, Lcn/manstep/phonemirrorBox/f0/b;->h:I

    .line 9
    invoke-static {}, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;

    move-result-object v2

    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/e;->C()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcn/manstep/phonemirrorBox/u0/c;->c(Z)V

    goto :goto_60

    :cond_5d
    const/4 v2, -0x1

    .line 10
    iput v2, p0, Lcn/manstep/phonemirrorBox/f0/b;->h:I

    .line 11
    :goto_60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request focus= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcn/manstep/phonemirrorBox/f0/b;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",ret= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public n(ZLandroid/media/AudioAttributes;I)I
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/f0/b;->k()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2
    iget p1, p0, Lcn/manstep/phonemirrorBox/f0/b;->h:I

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

    iget-object p2, p0, Lcn/manstep/phonemirrorBox/f0/b;->f:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 6
    invoke-virtual {p1, p2}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object p1

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/f0/b;->g:Landroid/media/AudioFocusRequest;

    .line 8
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/f0/a;->e:Landroid/media/AudioManager;

    invoke-virtual {p2, p1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result p1

    goto :goto_3a

    .line 9
    :cond_32
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/f0/a;->e:Landroid/media/AudioManager;

    iget-object p2, p0, Lcn/manstep/phonemirrorBox/f0/b;->f:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {p1, p2, p3, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result p1

    :goto_3a
    const/4 p2, 0x1

    if-ne p1, p2, :cond_4b

    .line 10
    iput v1, p0, Lcn/manstep/phonemirrorBox/f0/b;->h:I

    .line 11
    invoke-static {}, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;

    move-result-object p2

    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/e;->C()Z

    move-result p3

    invoke-virtual {p2, p3}, Lcn/manstep/phonemirrorBox/u0/c;->c(Z)V

    goto :goto_4d

    .line 12
    :cond_4b
    iput v0, p0, Lcn/manstep/phonemirrorBox/f0/b;->h:I

    :goto_4d
    return p1
.end method
