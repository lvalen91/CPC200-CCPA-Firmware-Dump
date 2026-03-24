.class public Lcn/manstep/phonemirrorBox/BoxInterface/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/manstep/phonemirrorBox/BoxInterface/a$c;,
        Lcn/manstep/phonemirrorBox/BoxInterface/a$b;
    }
.end annotation


# static fields
.field private static final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static g:Z

.field public static h:Ld/b/a/c;

.field public static i:I

.field public static j:Z

.field public static k:Z

.field public static l:Z

.field private static m:Landroid/media/MediaPlayer;

.field private static n:Z

.field private static o:Z

.field private static p:Z

.field private static q:Z

.field private static r:Z

.field public static s:Z

.field private static t:I

.field private static u:I

.field private static v:Z

.field private static w:Lcn/manstep/phonemirrorBox/BoxInterface/a$c;

.field private static x:Z


# instance fields
.field private a:I

.field private b:I

.field private c:Ld/b/a/b;

.field private d:I

.field private e:Lcn/manstep/phonemirrorBox/BoxInterface/a$b;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->f:Ljava/util/Map;

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->g:Z

    .line 3
    new-instance v0, Ld/b/a/c;

    invoke-direct {v0}, Ld/b/a/c;-><init>()V

    sput-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->h:Ld/b/a/c;

    const/4 v0, -0x1

    .line 4
    sput v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->i:I

    const/4 v0, 0x0

    .line 5
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->j:Z

    .line 6
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->k:Z

    .line 7
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->l:Z

    const/4 v1, 0x0

    .line 8
    sput-object v1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->m:Landroid/media/MediaPlayer;

    .line 9
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->n:Z

    .line 10
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->o:Z

    .line 11
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->p:Z

    .line 12
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->q:Z

    .line 13
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->r:Z

    .line 14
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->s:Z

    .line 15
    sput v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->t:I

    .line 16
    sput v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->u:I

    .line 17
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->v:Z

    .line 18
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->x:Z

    return-void
.end method

.method public constructor <init>(IILandroid/content/Context;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->d:I

    .line 4
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->e:Lcn/manstep/phonemirrorBox/BoxInterface/a$b;

    .line 5
    :try_start_b
    invoke-virtual {p3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p3

    .line 6
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 7
    sget-object v1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->m:Landroid/media/MediaPlayer;

    if-nez v1, :cond_65

    .line 8
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->m:Landroid/media/MediaPlayer;

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/mute.wav"

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    const-string p3, "BoxAudioPlayer: Create Mute MediaPlayer!"

    .line 10
    invoke-static {p3}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    goto :goto_65

    :cond_44
    const-string p3, "BoxAudioPlayer: Directory does not exist!"

    .line 11
    invoke-static {p3}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_49} :catch_4a

    goto :goto_65

    :catch_4a
    move-exception p3

    .line 12
    sput-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->m:Landroid/media/MediaPlayer;

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BoxAudioPlayer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 14
    :cond_65
    :goto_65
    iput p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->b:I

    .line 15
    iput p2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->a:I

    .line 16
    new-instance p1, Lcn/manstep/phonemirrorBox/BoxInterface/a$c;

    invoke-direct {p1, p0}, Lcn/manstep/phonemirrorBox/BoxInterface/a$c;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/a;)V

    sput-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->w:Lcn/manstep/phonemirrorBox/BoxInterface/a$c;

    .line 17
    new-instance p1, Lcn/manstep/phonemirrorBox/BoxInterface/a$b;

    invoke-direct {p1, p0, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/a$b;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/a;Lcn/manstep/phonemirrorBox/BoxInterface/a$a;)V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->e:Lcn/manstep/phonemirrorBox/BoxInterface/a$b;

    .line 18
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 19
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;

    if-nez p1, :cond_8b

    .line 20
    new-instance p1, Ld/b/a/b;

    iget-object p2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->e:Lcn/manstep/phonemirrorBox/BoxInterface/a$b;

    invoke-virtual {p2}, Lcn/manstep/phonemirrorBox/BoxInterface/a$b;->c()Landroid/os/Handler;

    move-result-object p2

    invoke-direct {p1, p2}, Ld/b/a/b;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;

    :cond_8b
    return-void
.end method

.method public static A(Landroid/content/Context;Z)V
    .registers 5

    if-eqz p1, :cond_22

    .line 1
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->h:Ld/b/a/c;

    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    const-string v1, "MicGain"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Ld/b/a/c;->w(I)V

    const-string p1, "NaviGain"

    .line 2
    invoke-static {p0, p1, v2}, Lcn/manstep/phonemirrorBox/b0;->d(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    sput p1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->t:I

    const-string p1, "VoiceCallGain"

    .line 3
    invoke-static {p0, p1, v2}, Lcn/manstep/phonemirrorBox/b0;->d(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->u:I

    :cond_22
    return-void
.end method

.method public static B()V
    .registers 4

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    const-string v1, "IsAutoPlayMusic"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_28

    const/4 v0, 0x3

    const/16 v1, 0x32

    .line 2
    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->q(II)I

    move-result v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BoxAudioPlayer,onResumeRequestAudioFocus: isMusicActive:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    :cond_28
    return-void
.end method

.method private C(I)V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BoxAudioPlayer,onRingStart: index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",bAlertRinging="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->q:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->h(Ljava/lang/String;)V

    .line 2
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->q:Z

    if-nez v0, :cond_3f

    const/4 v0, 0x1

    .line 3
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->q:Z

    .line 4
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;

    invoke-virtual {v1, v0}, Ld/b/a/b;->l(Z)V

    .line 5
    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->o(I)V

    .line 6
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/f;->j()Lcn/manstep/phonemirrorBox/f0/f;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/f0/f;->m()I

    .line 7
    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/v0/a;->e()V

    :cond_3f
    return-void
.end method

.method private D()V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BoxAudioPlayer,onRingStop: index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",bAlertRinging="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->q:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->h(Ljava/lang/String;)V

    .line 2
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->q:Z

    if-eqz v0, :cond_3c

    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->q:Z

    .line 4
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;

    invoke-virtual {v1, v0}, Ld/b/a/b;->l(Z)V

    .line 5
    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/v0/a;->l()V

    .line 6
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/f;->j()Lcn/manstep/phonemirrorBox/f0/f;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/f0/f;->g()V

    :cond_3c
    return-void
.end method

.method private E()V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BoxAudioPlayer,onSiriStart: index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ld/b/a/b;->l(Z)V

    .line 3
    sput-boolean v1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->p:Z

    .line 4
    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/v0/a;->h()V

    .line 5
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->m1(I)V

    .line 6
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/g;->j()Lcn/manstep/phonemirrorBox/f0/g;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/f0/g;->m()I

    return-void
.end method

.method private F()V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BoxAudioPlayer,onSiriStop: index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->p:Z

    .line 3
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;

    invoke-virtual {v1, v0}, Ld/b/a/b;->l(Z)V

    .line 4
    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/v0/a;->o()V

    .line 5
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->m1(I)V

    .line 6
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/g;->j()Lcn/manstep/phonemirrorBox/f0/g;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/f0/g;->g()V

    .line 7
    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/u;->i0()V

    return-void
.end method

.method public static G()V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BoxAudioPlayer,requestAudioFocus: bStopiPhoneAudio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 2
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->s:Z

    if-nez v0, :cond_33

    .line 3
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 4
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->o:Z

    if-eqz v0, :cond_2c

    .line 5
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/b;->j()Lcn/manstep/phonemirrorBox/f0/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/f0/b;->m()I

    goto :goto_33

    .line 6
    :cond_2c
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/c;->n()Lcn/manstep/phonemirrorBox/f0/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/f0/c;->u()I

    :cond_33
    :goto_33
    return-void
.end method

.method private static H()V
    .registers 4

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->g:Z

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->m:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->k:Z

    const/4 v1, -0x1

    .line 4
    sput v1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->i:I

    .line 5
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->j:Z

    .line 6
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->n:Z

    .line 7
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->o:Z

    .line 8
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->p:Z

    .line 9
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->q:Z

    .line 10
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->r:Z

    return-void
.end method

.method public static I(Z)V
    .registers 1

    .line 1
    sput-boolean p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->v:Z

    return-void
.end method

.method public static L(ZZ)V
    .registers 5

    if-eqz p0, :cond_3d

    if-eqz p1, :cond_8

    const/4 p0, 0x1

    .line 1
    sput-boolean p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->l:Z

    goto :goto_2c

    .line 2
    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "BoxAudioPlayer,stopMusicAudioOutput: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->j:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->k:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 3
    sget-boolean p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->j:Z

    sput-boolean p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->l:Z

    .line 4
    :goto_2c
    invoke-static {}, Lcn/manstep/phonemirrorBox/util/j;->c()Lcn/manstep/phonemirrorBox/util/j;

    move-result-object p0

    const-wide/16 v0, 0x7d0

    new-instance p1, Lcn/manstep/phonemirrorBox/BoxInterface/a$a;

    invoke-direct {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/a$a;-><init>()V

    const-string v2, "SetStopiPhoneAudio"

    invoke-virtual {p0, v2, v0, v1, p1}, Lcn/manstep/phonemirrorBox/util/j;->e(Ljava/lang/String;JLjava/lang/Runnable;)Lcn/manstep/phonemirrorBox/util/j;

    goto :goto_40

    :cond_3d
    const/4 p0, 0x0

    .line 5
    sput-boolean p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->l:Z

    :goto_40
    return-void
.end method

.method private a([BII)V
    .registers 8

    .line 1
    sget-boolean v0, Lcn/manstep/phonemirrorBox/p;->x:Z

    if-eqz v0, :cond_23

    .line 2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->k()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "pout_%02d.pcm"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/manstep/phonemirrorBox/MyApplication;->b()Lcn/manstep/phonemirrorBox/MyApplication;

    move-result-object v1

    invoke-static {p1, p2, p3, v0, v1}, Lcn/manstep/phonemirrorBox/util/n;->z([BIILjava/lang/String;Landroid/content/Context;)Z

    .line 3
    :cond_23
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->x:Z

    if-eqz v0, :cond_28

    return-void

    .line 4
    :cond_28
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;

    if-eqz v0, :cond_69

    .line 5
    sget-boolean v1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->n:Z

    if-nez v1, :cond_45

    sget-boolean v1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->o:Z

    if-nez v1, :cond_45

    sget-boolean v1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->p:Z

    if-nez v1, :cond_45

    sget-boolean v1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->q:Z

    if-eqz v1, :cond_3d

    goto :goto_45

    .line 6
    :cond_3d
    sget-boolean v1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->l:Z

    if-nez v1, :cond_69

    .line 7
    invoke-virtual {v0, p1, p2, p3}, Ld/b/a/b;->f([BII)V

    goto :goto_69

    .line 8
    :cond_45
    :goto_45
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->n:Z

    if-eqz v0, :cond_51

    sget v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->t:I

    if-lez v0, :cond_51

    .line 9
    invoke-static {p1, p2, p3, v0}, Lcn/manstep/phonemirrorBox/util/JniTools;->amplifyPcmData([BIII)V

    goto :goto_64

    .line 10
    :cond_51
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->o:Z

    if-eqz v0, :cond_5d

    sget v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->u:I

    if-lez v0, :cond_5d

    .line 11
    invoke-static {p1, p2, p3, v0}, Lcn/manstep/phonemirrorBox/util/JniTools;->amplifyPcmData([BIII)V

    goto :goto_64

    .line 12
    :cond_5d
    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/v0/a;->B()Z

    .line 13
    :goto_64
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;

    invoke-virtual {v0, p1, p2, p3}, Ld/b/a/b;->f([BII)V

    :cond_69
    :goto_69
    return-void
.end method

.method private c(IZ)Ld/b/a/a;
    .registers 11

    const/16 v0, 0x3e80

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/16 v4, 0x10

    packed-switch p1, :pswitch_data_6c

    const/4 v0, 0x0

    const/4 v5, 0x0

    goto :goto_20

    :pswitch_d
    const/16 v0, 0x5dc0

    goto :goto_16

    :pswitch_10
    const v0, 0xbb80

    goto :goto_1d

    :pswitch_14
    const/16 v0, 0x1f40

    :goto_16
    :pswitch_16
    const/16 v1, 0x10

    const/4 v5, 0x1

    goto :goto_20

    :pswitch_1a
    const v0, 0xac44

    :goto_1d
    :pswitch_1d
    const/16 v1, 0x10

    const/4 v5, 0x2

    .line 1
    :goto_20
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BoxAudioPlayer,GetAudioParamByDecodeType: decode_type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " rate="

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bits="

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " channel="

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    const/4 p1, 0x3

    const/16 v6, 0xc

    if-eqz p2, :cond_5f

    .line 2
    new-instance p2, Ld/b/a/a;

    if-ne v5, v2, :cond_57

    const/16 v6, 0x10

    :cond_57
    if-ne v1, v4, :cond_5a

    goto :goto_5b

    :cond_5a
    const/4 v3, 0x3

    :goto_5b
    invoke-direct {p2, v0, v6, v3}, Ld/b/a/a;-><init>(III)V

    return-object p2

    .line 3
    :cond_5f
    new-instance p2, Ld/b/a/a;

    if-ne v5, v2, :cond_64

    const/4 v6, 0x4

    :cond_64
    if-ne v1, v4, :cond_67

    goto :goto_68

    :cond_67
    const/4 v3, 0x3

    :goto_68
    invoke-direct {p2, v0, v6, v3}, Ld/b/a/a;-><init>(III)V

    return-object p2

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_1a
        :pswitch_14
        :pswitch_10
        :pswitch_16
        :pswitch_d
        :pswitch_1d
    .end packed-switch
.end method

.method private d()V
    .registers 2

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->H()V

    .line 2
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/c;->n()Lcn/manstep/phonemirrorBox/f0/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/f0/c;->s()V

    .line 3
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/e;->j()Lcn/manstep/phonemirrorBox/f0/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/f0/e;->g()V

    .line 4
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/b;->j()Lcn/manstep/phonemirrorBox/f0/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/f0/b;->g()V

    .line 5
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/g;->j()Lcn/manstep/phonemirrorBox/f0/g;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/f0/g;->g()V

    .line 6
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/f;->j()Lcn/manstep/phonemirrorBox/f0/f;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/f0/f;->g()V

    return-void
.end method

.method private e(I)Ljava/lang/String;
    .registers 4

    packed-switch p1, :pswitch_data_46

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_15
    const-string p1, "AUDIO_NOTICE_STOP"

    return-object p1

    :pswitch_18
    const-string p1, "AUDIO_NOTICE_START"

    return-object p1

    :pswitch_1b
    const-string p1, "AUDIO_PHONECALL_INCOMING"

    return-object p1

    :pswitch_1e
    const-string p1, "AUDIO_ALERT_STOP"

    return-object p1

    :pswitch_21
    const-string p1, "AUDIO_ALERT_START"

    return-object p1

    :pswitch_24
    const-string p1, "AUDIO_MEDIA_STOP"

    return-object p1

    :pswitch_27
    const-string p1, "AUDIO_MEDIA_START"

    return-object p1

    :pswitch_2a
    const-string p1, "AUDIO_SIRI_STOP"

    return-object p1

    :pswitch_2d
    const-string p1, "AUDIO_SIRI_START"

    return-object p1

    :pswitch_30
    const-string p1, "AUDIO_NAVI_STOP"

    return-object p1

    :pswitch_33
    const-string p1, "AUDIO_NAVI_START"

    return-object p1

    :pswitch_36
    const-string p1, "AUDIO_PHONECALL_STOP"

    return-object p1

    :pswitch_39
    const-string p1, "AUDIO_PHONECALL_START"

    return-object p1

    :pswitch_3c
    const-string p1, "AUDIO_INPUT_CONFIG"

    return-object p1

    :pswitch_3f
    const-string p1, "AUDIO_OUTPUT_STOP"

    return-object p1

    :pswitch_42
    const-string p1, "AUDIO_OUTPUT_START"

    return-object p1

    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
    .end packed-switch
.end method

.method private f(I)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_21

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1e

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1b

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1b
    const-string p1, "AUDIO_INPUT"

    return-object p1

    :cond_1e
    const-string p1, "AUDIO_ALTERNATE"

    return-object p1

    :cond_21
    const-string p1, "AUDIO_MAIN"

    return-object p1
.end method

.method private g()V
    .registers 4

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/v0/a;->y()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 2
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->t()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->z(I)Lcn/manstep/phonemirrorBox/BoxInterface/a;

    move-result-object v0

    goto :goto_1f

    .line 4
    :cond_18
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->z(I)Lcn/manstep/phonemirrorBox/BoxInterface/a;

    move-result-object v0

    .line 5
    :goto_1f
    iget-object v1, v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;

    invoke-virtual {v1}, Ld/b/a/b;->D()Z

    move-result v1

    if-nez v1, :cond_42

    .line 6
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/c;->n()Lcn/manstep/phonemirrorBox/f0/c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/f0/a;->e()Z

    move-result v1

    if-nez v1, :cond_3d

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_3d

    .line 7
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;

    invoke-virtual {v0}, Ld/b/a/b;->g()V

    goto :goto_42

    .line 8
    :cond_3d
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;

    invoke-virtual {v0}, Ld/b/a/b;->h()V

    :cond_42
    :goto_42
    return-void
.end method

.method private static j(I)I
    .registers 5

    .line 1
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->v:Z

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eqz v0, :cond_11

    if-eq p0, v1, :cond_f

    if-eq p0, v3, :cond_e

    if-eq p0, v2, :cond_e

    goto :goto_17

    :cond_e
    return v3

    :cond_f
    const/4 p0, 0x0

    return p0

    :cond_11
    if-eq p0, v1, :cond_2a

    if-eq p0, v3, :cond_21

    if-eq p0, v2, :cond_18

    :goto_17
    return v2

    .line 2
    :cond_18
    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object p0

    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/u;->B()I

    move-result p0

    return p0

    .line 3
    :cond_21
    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object p0

    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/u;->J()I

    move-result p0

    return p0

    .line 4
    :cond_2a
    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object p0

    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/u;->K()I

    move-result p0

    return p0
.end method

.method private k()I
    .registers 2

    .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->d:I

    return v0
.end method

.method public static l(Landroid/content/Context;)V
    .registers 6

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->H()V

    .line 2
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->h:Ld/b/a/c;

    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v1

    const-string v2, "MicGain"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ld/b/a/c;->w(I)V

    .line 3
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->h:Ld/b/a/c;

    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v1

    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object v2

    invoke-virtual {v2}, Lcn/manstep/phonemirrorBox/u;->F()I

    move-result v2

    const-string v4, "RecordSource"

    invoke-virtual {v1, v4, v2}, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ld/b/a/c;->v(I)V

    .line 4
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    const-string v1, "AudioClassify"

    invoke-virtual {v0, v1, v3}, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->v:Z

    .line 5
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    const-string v1, "AudioTransferMode"

    invoke-virtual {v0, v1, v3}, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->s:Z

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 7
    sget-object v2, Lcn/manstep/phonemirrorBox/BoxInterface/a;->f:Ljava/util/Map;

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v2, Lcn/manstep/phonemirrorBox/BoxInterface/a;->f:Ljava/util/Map;

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v2, Lcn/manstep/phonemirrorBox/BoxInterface/a;->f:Ljava/util/Map;

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v2, Lcn/manstep/phonemirrorBox/BoxInterface/a;->f:Ljava/util/Map;

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v2, Lcn/manstep/phonemirrorBox/BoxInterface/a;->f:Ljava/util/Map;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v2, Lcn/manstep/phonemirrorBox/BoxInterface/a;->f:Ljava/util/Map;

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/c;->n()Lcn/manstep/phonemirrorBox/f0/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/manstep/phonemirrorBox/f0/c;->p(Landroid/content/Context;)V

    .line 14
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/e;->j()Lcn/manstep/phonemirrorBox/f0/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/manstep/phonemirrorBox/f0/e;->l(Landroid/content/Context;)V

    .line 15
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/b;->j()Lcn/manstep/phonemirrorBox/f0/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/manstep/phonemirrorBox/f0/b;->l(Landroid/content/Context;)V

    .line 16
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/g;->j()Lcn/manstep/phonemirrorBox/f0/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/manstep/phonemirrorBox/f0/g;->l(Landroid/content/Context;)V

    .line 17
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/f;->j()Lcn/manstep/phonemirrorBox/f0/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/manstep/phonemirrorBox/f0/f;->l(Landroid/content/Context;)V

    return-void
.end method

.method private m(I)V
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BoxAudioPlayer,initCallAudioPlayer: index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->k()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", decodeType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 3
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->H()Lcn/manstep/phonemirrorBox/BoxInterface/a;

    move-result-object v0

    if-eqz v0, :cond_5b

    .line 4
    invoke-direct {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->k()I

    move-result v2

    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->k()I

    move-result v3

    if-eq v2, v3, :cond_5b

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->k()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", CurrentCallAudioPlayerIndex="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->k()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_5b
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/b;->j()Lcn/manstep/phonemirrorBox/f0/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/f0/a;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7e

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_7e

    .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;

    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/b;->j()Lcn/manstep/phonemirrorBox/f0/b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/manstep/phonemirrorBox/f0/b;->i()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-direct {p0, p1, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c(IZ)Ld/b/a/a;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ld/b/a/b;->a(Landroid/media/AudioAttributes;Ld/b/a/a;)V

    goto :goto_8f

    .line 8
    :cond_7e
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;

    invoke-direct {p0, p1, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c(IZ)Ld/b/a/a;

    move-result-object p1

    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/b;->j()Lcn/manstep/phonemirrorBox/f0/b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/f0/a;->c()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Ld/b/a/b;->d(Ld/b/a/a;I)V

    .line 9
    :goto_8f
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/b;->j()Lcn/manstep/phonemirrorBox/f0/b;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/f0/b;->m()I

    .line 10
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/b;->j()Lcn/manstep/phonemirrorBox/f0/b;

    move-result-object p1

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;

    invoke-virtual {p1, v0}, Lcn/manstep/phonemirrorBox/f0/a;->f(Ld/b/a/b;)V

    .line 11
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/b;->j()Lcn/manstep/phonemirrorBox/f0/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/f0/a;->d()I

    move-result v0

    const-string v1, "callVol"

    invoke-virtual {p1, v1, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->J0(Ljava/lang/String;I)Z

    return-void
.end method

.method private n(I)V
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BoxAudioPlayer,initMediaAudioPlayer: decodeType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->l:Z

    .line 3
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/c;->n()Lcn/manstep/phonemirrorBox/f0/c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/f0/a;->e()Z

    move-result v1

    if-nez v1, :cond_45

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_45

    .line 4
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;

    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/c;->n()Lcn/manstep/phonemirrorBox/f0/c;

    move-result-object v2

    invoke-virtual {v2}, Lcn/manstep/phonemirrorBox/f0/c;->m()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-direct {p0, p1, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c(IZ)Ld/b/a/a;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Ld/b/a/b;->a(Landroid/media/AudioAttributes;Ld/b/a/a;)V

    goto :goto_52

    .line 5
    :cond_45
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;

    invoke-direct {p0, p1, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c(IZ)Ld/b/a/a;

    move-result-object p1

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->j(I)I

    move-result v0

    invoke-virtual {v1, p1, v0}, Ld/b/a/b;->d(Ld/b/a/a;I)V

    .line 6
    :goto_52
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/c;->n()Lcn/manstep/phonemirrorBox/f0/c;

    move-result-object p1

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;

    invoke-virtual {p1, v0}, Lcn/manstep/phonemirrorBox/f0/a;->f(Ld/b/a/b;)V

    .line 7
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/c;->n()Lcn/manstep/phonemirrorBox/f0/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/f0/a;->d()I

    move-result v0

    const-string v1, "mediaVol"

    invoke-virtual {p1, v1, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->J0(Ljava/lang/String;I)Z

    return-void
.end method

.method private o(I)V
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initRingAudioPlayer: decodeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",isReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;

    invoke-virtual {v1}, Ld/b/a/b;->D()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BoxAudioPlayer"

    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/f;->j()Lcn/manstep/phonemirrorBox/f0/f;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/f0/a;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_53

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_53

    .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;

    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/f;->j()Lcn/manstep/phonemirrorBox/f0/f;

    move-result-object v2

    invoke-virtual {v2}, Lcn/manstep/phonemirrorBox/f0/f;->i()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-direct {p0, p1, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c(IZ)Ld/b/a/a;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ld/b/a/b;->a(Landroid/media/AudioAttributes;Ld/b/a/a;)V

    goto :goto_64

    .line 4
    :cond_53
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;

    invoke-direct {p0, p1, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c(IZ)Ld/b/a/a;

    move-result-object p1

    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/f;->j()Lcn/manstep/phonemirrorBox/f0/f;

    move-result-object v1

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/f0/a;->c()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Ld/b/a/b;->d(Ld/b/a/a;I)V

    .line 5
    :goto_64
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/f;->j()Lcn/manstep/phonemirrorBox/f0/f;

    move-result-object p1

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;

    invoke-virtual {p1, v0}, Lcn/manstep/phonemirrorBox/f0/a;->f(Ld/b/a/b;)V

    .line 6
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/f;->j()Lcn/manstep/phonemirrorBox/f0/f;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/f0/a;->d()I

    move-result v0

    const-string v1, "ringVol"

    invoke-virtual {p1, v1, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->J0(Ljava/lang/String;I)Z

    return-void
.end method

.method private p(I)V
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BoxAudioPlayer,initSiriAudioPlayer: decodeType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/g;->j()Lcn/manstep/phonemirrorBox/f0/g;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/f0/a;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_43

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_43

    .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;

    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/g;->j()Lcn/manstep/phonemirrorBox/f0/g;

    move-result-object v2

    invoke-virtual {v2}, Lcn/manstep/phonemirrorBox/f0/g;->i()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-direct {p0, p1, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c(IZ)Ld/b/a/a;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ld/b/a/b;->a(Landroid/media/AudioAttributes;Ld/b/a/a;)V

    goto :goto_54

    .line 4
    :cond_43
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;

    invoke-direct {p0, p1, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c(IZ)Ld/b/a/a;

    move-result-object p1

    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/g;->j()Lcn/manstep/phonemirrorBox/f0/g;

    move-result-object v1

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/f0/a;->c()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Ld/b/a/b;->d(Ld/b/a/a;I)V

    .line 5
    :goto_54
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/g;->j()Lcn/manstep/phonemirrorBox/f0/g;

    move-result-object p1

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;

    invoke-virtual {p1, v0}, Lcn/manstep/phonemirrorBox/f0/a;->f(Ld/b/a/b;)V

    return-void
.end method

.method public static q(II)I
    .registers 9

    :try_start_0
    const-string v0, "android.media.AudioSystem"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "isStreamActive"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    .line 2
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_36

    if-eqz p0, :cond_35

    return v6

    :cond_35
    return v5

    :catch_36
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method private r(I)V
    .registers 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAlternateStart: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BoxAudioPlayer"

    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->r:Z

    if-nez v0, :cond_a7

    const/4 v0, 0x1

    .line 3
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->r:Z

    .line 4
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/c;->n()Lcn/manstep/phonemirrorBox/f0/c;

    move-result-object v2

    invoke-virtual {v2}, Lcn/manstep/phonemirrorBox/f0/a;->e()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_6e

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v2, v4, :cond_6e

    .line 5
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 6
    invoke-virtual {v2, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    const/4 v4, 0x2

    .line 7
    invoke-virtual {v2, v4}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onAlternateStart: VolumeControlStream="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getVolumeControlStream()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;

    invoke-direct {p0, p1, v3}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c(IZ)Ld/b/a/a;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ld/b/a/b;->a(Landroid/media/AudioAttributes;Ld/b/a/a;)V

    goto :goto_78

    .line 11
    :cond_6e
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;

    invoke-direct {p0, p1, v3}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c(IZ)Ld/b/a/a;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Ld/b/a/b;->d(Ld/b/a/a;I)V

    .line 12
    :goto_78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAlternateStart: decodeType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",StreamType="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;

    invoke-virtual {p1}, Ld/b/a/b;->C()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lcn/manstep/phonemirrorBox/e0/b;->a()Lcn/manstep/phonemirrorBox/e0/b;

    move-result-object p1

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;

    invoke-virtual {v1}, Ld/b/a/b;->C()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcn/manstep/phonemirrorBox/e0/b;->c(II)V

    :cond_a7
    return-void
.end method

.method private s()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->r:Z

    return-void
.end method

.method private u(Z)V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BoxAudioPlayer,onCallStart: index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->h(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ld/b/a/b;->l(Z)V

    if-eqz p1, :cond_28

    .line 3
    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/v0/a;->s()V

    goto :goto_2f

    .line 4
    :cond_28
    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/v0/a;->k()V

    .line 5
    :goto_2f
    sput-boolean v1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->o:Z

    .line 6
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->l1(I)V

    if-nez p1, :cond_43

    .line 7
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/b;->j()Lcn/manstep/phonemirrorBox/f0/b;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/f0/b;->m()I

    :cond_43
    return-void
.end method

.method private v()V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BoxAudioPlayer,onCallStop: index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",isMusicPlaying="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/v0/a;->y()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->l:Z

    .line 3
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->o:Z

    .line 4
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;

    invoke-virtual {v1, v0}, Ld/b/a/b;->l(Z)V

    .line 5
    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/v0/a;->f()V

    .line 6
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->l1(I)V

    .line 7
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/b;->j()Lcn/manstep/phonemirrorBox/f0/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/f0/b;->g()V

    .line 8
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->g()V

    return-void
.end method

.method private w()V
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BoxAudioPlayer,onMediaStart: index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->j:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_22

    sget-boolean v1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->l:Z

    if-nez v1, :cond_22

    const/4 v1, 0x1

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :goto_23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->h(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 3
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MediaPlaying_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    invoke-virtual {v4}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->K()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v4}, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    :cond_53
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->j:Z

    if-eqz v0, :cond_5c

    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->l:Z

    if-nez v0, :cond_5c

    return-void

    .line 5
    :cond_5c
    sput-boolean v2, Lcn/manstep/phonemirrorBox/BoxInterface/a;->j:Z

    .line 6
    sput-boolean v3, Lcn/manstep/phonemirrorBox/BoxInterface/a;->l:Z

    .line 7
    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/v0/a;->g()V

    .line 8
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/c;->n()Lcn/manstep/phonemirrorBox/f0/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/f0/c;->u()I

    return-void
.end method

.method private x()V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BoxAudioPlayer,onMediaStop: index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->h(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 3
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaPlaying_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    invoke-virtual {v2}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->K()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3e
    const/4 v0, 0x0

    .line 4
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->j:Z

    .line 5
    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/v0/a;->m()V

    .line 6
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/c;->n()Lcn/manstep/phonemirrorBox/f0/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/f0/c;->g()V

    return-void
.end method

.method private y(I)V
    .registers 6

    const-string v0, "BoxAudioPlayer"

    const-string v1, "onNaviReportStart: "

    .line 1
    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->f:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->n:Z

    if-nez v0, :cond_98

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BoxAudioPlayer,onNaviReportStart: index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->h(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/v0/a;->b()V

    const/4 v0, 0x1

    .line 6
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->n:Z

    .line 7
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;

    invoke-virtual {v1, v0}, Ld/b/a/b;->l(Z)V

    .line 8
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/e;->j()Lcn/manstep/phonemirrorBox/f0/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/f0/a;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_68

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_68

    .line 9
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;

    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/e;->j()Lcn/manstep/phonemirrorBox/f0/e;

    move-result-object v2

    invoke-virtual {v2}, Lcn/manstep/phonemirrorBox/f0/e;->i()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-direct {p0, p1, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c(IZ)Ld/b/a/a;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ld/b/a/b;->a(Landroid/media/AudioAttributes;Ld/b/a/a;)V

    goto :goto_79

    .line 10
    :cond_68
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;

    invoke-direct {p0, p1, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c(IZ)Ld/b/a/a;

    move-result-object p1

    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/e;->j()Lcn/manstep/phonemirrorBox/f0/e;

    move-result-object v1

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/f0/a;->c()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Ld/b/a/b;->d(Ld/b/a/a;I)V

    .line 11
    :goto_79
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/e;->j()Lcn/manstep/phonemirrorBox/f0/e;

    move-result-object p1

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;

    invoke-virtual {p1, v0}, Lcn/manstep/phonemirrorBox/f0/a;->f(Ld/b/a/b;)V

    .line 12
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/e;->j()Lcn/manstep/phonemirrorBox/f0/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/f0/a;->d()I

    move-result v0

    const-string v1, "navVol"

    invoke-virtual {p1, v1, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->J0(Ljava/lang/String;I)Z

    .line 13
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/e;->j()Lcn/manstep/phonemirrorBox/f0/e;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/f0/e;->m()I

    :cond_98
    return-void
.end method

.method private z()V
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNaviReportStop: bNavieRport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->n:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BoxAudioPlayer"

    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/util/s;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->f:Ljava/util/Map;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->n:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_70

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BoxAudioPlayer,onNaviReportStop: index="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->k()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->h(Ljava/lang/String;)V

    .line 5
    sput-boolean v1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->n:Z

    .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;

    invoke-virtual {v0, v1}, Ld/b/a/b;->l(Z)V

    .line 7
    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/u;->h0()V

    .line 8
    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/v0/a;->d()V

    .line 9
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/e;->j()Lcn/manstep/phonemirrorBox/f0/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/f0/e;->g()V

    .line 10
    :cond_70
    sput-boolean v1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->l:Z

    return-void
.end method


# virtual methods
.method public J(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->d:I

    return-void
.end method

.method public K()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Ld/b/a/b;->i()V

    :cond_7
    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->j:Z

    .line 4
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->d()V

    return-void
.end method

.method public b(F)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0, p1}, Ld/b/a/b;->n(F)V

    :cond_7
    return-void
.end method

.method public h()V
    .registers 3

    const-string v0, "BoxAudioPlayer"

    const-string v1, "destroy: "

    .line 1
    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 3
    invoke-virtual {v0}, Ld/b/a/b;->i()V

    .line 4
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;

    .line 5
    :cond_11
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->m:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1a

    .line 6
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 7
    sput-object v1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->m:Landroid/media/MediaPlayer;

    .line 8
    :cond_1a
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->e:Lcn/manstep/phonemirrorBox/BoxInterface/a$b;

    if-eqz v0, :cond_23

    .line 9
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/a$b;->d()V

    .line 10
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->e:Lcn/manstep/phonemirrorBox/BoxInterface/a$b;

    .line 11
    :cond_23
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->d()V

    return-void
.end method

.method public i()Ld/b/a/b;
    .registers 2

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;

    return-object v0
.end method

.method public t(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)V
    .registers 10

    .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->w:Lcn/manstep/phonemirrorBox/BoxInterface/a$c;

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    iput v1, v0, Lcn/manstep/phonemirrorBox/BoxInterface/a$c;->a:I

    .line 2
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->w:Lcn/manstep/phonemirrorBox/BoxInterface/a$c;

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    iput v1, v0, Lcn/manstep/phonemirrorBox/BoxInterface/a$c;->b:I

    .line 3
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->w:Lcn/manstep/phonemirrorBox/BoxInterface/a$c;

    iget v1, v0, Lcn/manstep/phonemirrorBox/BoxInterface/a$c;->a:I

    const/4 v3, 0x1

    const/4 v4, 0x5

    if-ne v1, v4, :cond_30

    iget v0, v0, Lcn/manstep/phonemirrorBox/BoxInterface/a$c;->b:I

    if-ne v0, v3, :cond_30

    .line 4
    sget-boolean v0, Lcn/manstep/phonemirrorBox/p;->u:Z

    if-eqz v0, :cond_30

    .line 5
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->w:Lcn/manstep/phonemirrorBox/BoxInterface/a$c;

    const/4 v1, 0x7

    iput v1, v0, Lcn/manstep/phonemirrorBox/BoxInterface/a$c;->a:I

    .line 6
    :cond_30
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->w:Lcn/manstep/phonemirrorBox/BoxInterface/a$c;

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v1

    iput v1, v0, Lcn/manstep/phonemirrorBox/BoxInterface/a$c;->d:F

    .line 7
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->w:Lcn/manstep/phonemirrorBox/BoxInterface/a$c;

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I

    move-result v1

    const/16 v5, 0xc

    sub-int/2addr v1, v5

    iput v1, v0, Lcn/manstep/phonemirrorBox/BoxInterface/a$c;->c:I

    .line 8
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->w:Lcn/manstep/phonemirrorBox/BoxInterface/a$c;

    iget v1, v0, Lcn/manstep/phonemirrorBox/BoxInterface/a$c;->a:I

    iget v6, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->b:I

    if-ne v1, v6, :cond_29d

    iget v6, v0, Lcn/manstep/phonemirrorBox/BoxInterface/a$c;->b:I

    iget v7, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->a:I

    if-ne v6, v7, :cond_29d

    .line 9
    iget v0, v0, Lcn/manstep/phonemirrorBox/BoxInterface/a$c;->c:I

    if-ne v0, v3, :cond_21d

    .line 10
    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BoxAudioPlayer,onAudioProcess: audioCtrlCmd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->e(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BoxAudioPlayer,onAudioProcess: audioType="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->a:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->a:I

    invoke-direct {p0, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->f(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BoxAudioPlayer,onAudioProcess: Recv Audio control data: cmd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", AudioType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", DecodeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    const-string v0, "BoxAudioPlayer"

    const/4 v1, 0x2

    packed-switch p1, :pswitch_data_29e

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudioProcess: unknown "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_29d

    .line 15
    :pswitch_e8
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->s()V

    goto/16 :goto_29d

    .line 16
    :pswitch_ed
    iget p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->b:I

    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->r(I)V

    goto/16 :goto_29d

    .line 17
    :pswitch_f4
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->D()V

    goto/16 :goto_29d

    .line 18
    :pswitch_f9
    iget p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->b:I

    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->C(I)V

    goto/16 :goto_29d

    .line 19
    :pswitch_100
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->x()V

    goto/16 :goto_29d

    .line 20
    :pswitch_105
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->w()V

    goto/16 :goto_29d

    .line 21
    :pswitch_10a
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->F()V

    goto/16 :goto_29d

    .line 22
    :pswitch_10f
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->E()V

    goto/16 :goto_29d

    .line 23
    :pswitch_114
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->z()V

    goto/16 :goto_29d

    .line 24
    :pswitch_119
    iget p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->b:I

    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->y(I)V

    goto/16 :goto_29d

    .line 25
    :pswitch_120
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->v()V

    goto/16 :goto_29d

    :pswitch_125
    const/16 v0, 0xe

    if-ne p1, v0, :cond_12a

    const/4 v2, 0x1

    .line 26
    :cond_12a
    invoke-direct {p0, v2}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->u(Z)V

    goto/16 :goto_29d

    .line 27
    :pswitch_12f
    sget p1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->i:I

    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->w:Lcn/manstep/phonemirrorBox/BoxInterface/a$c;

    iget v0, v0, Lcn/manstep/phonemirrorBox/BoxInterface/a$c;->a:I

    if-eq p1, v0, :cond_29d

    .line 28
    sput v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->i:I

    .line 29
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->h:Ld/b/a/c;

    invoke-direct {p0, v0, v3}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c(IZ)Ld/b/a/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Ld/b/a/c;->h(Ld/b/a/a;)V

    goto/16 :goto_29d

    .line 30
    :pswitch_144
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BoxAudioPlayer,onAudioProcess: AUDIO_OUTPUT_STOP,"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->k()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",SessionId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->i()Ld/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Ld/b/a/b;->y()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 31
    iget p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->a:I

    if-ne p1, v1, :cond_177

    .line 32
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->z()V

    .line 33
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->s()V

    goto :goto_17c

    .line 34
    :cond_177
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;

    invoke-virtual {p1}, Ld/b/a/b;->i()V

    .line 35
    :goto_17c
    iget p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->a:I

    if-ne p1, v3, :cond_29d

    iget p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->b:I

    if-eq p1, v1, :cond_186

    if-ne p1, v4, :cond_29d

    .line 36
    :cond_186
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->x()V

    goto/16 :goto_29d

    .line 37
    :pswitch_18b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BoxAudioPlayer,onAudioProcess: AUDIO_OUTPUT_START audioCtrlCmd="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 38
    iget p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->a:I

    if-ne p1, v1, :cond_1ba

    const-string p1, "onAudioProcess: AUDIO_ALTERNATE Start"

    .line 39
    invoke-static {v0, p1}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    sget-boolean p1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->r:Z

    if-eqz p1, :cond_1b3

    .line 41
    iget p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->b:I

    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->r(I)V

    goto/16 :goto_29d

    .line 42
    :cond_1b3
    iget p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->b:I

    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->y(I)V

    goto/16 :goto_29d

    .line 43
    :cond_1ba
    sget-boolean v5, Lcn/manstep/phonemirrorBox/BoxInterface/a;->o:Z

    if-eqz v5, :cond_1c5

    .line 44
    iget p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->b:I

    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->m(I)V

    goto/16 :goto_29d

    .line 45
    :cond_1c5
    sget-boolean v5, Lcn/manstep/phonemirrorBox/BoxInterface/a;->p:Z

    if-eqz v5, :cond_1d0

    .line 46
    iget p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->b:I

    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->p(I)V

    goto/16 :goto_29d

    .line 47
    :cond_1d0
    sget-boolean v5, Lcn/manstep/phonemirrorBox/BoxInterface/a;->q:Z

    if-eqz v5, :cond_1db

    .line 48
    iget p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->b:I

    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->o(I)V

    goto/16 :goto_29d

    .line 49
    :cond_1db
    sget-boolean v5, Lcn/manstep/phonemirrorBox/BoxInterface/a;->j:Z

    if-eqz v5, :cond_1e6

    .line 50
    iget p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->b:I

    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->n(I)V

    goto/16 :goto_29d

    :cond_1e6
    if-ne p1, v3, :cond_1f8

    .line 51
    iget p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->b:I

    if-eq p1, v1, :cond_1ee

    if-ne p1, v4, :cond_1f8

    .line 52
    :cond_1ee
    iget p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->b:I

    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->n(I)V

    .line 53
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->w()V

    goto/16 :goto_29d

    .line 54
    :cond_1f8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAudioProcess: ==============index="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->k()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;

    iget v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->b:I

    invoke-direct {p0, v0, v2}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c(IZ)Ld/b/a/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Ld/b/a/b;->c(Ld/b/a/a;)V

    goto/16 :goto_29d

    :cond_21d
    if-ne v0, v4, :cond_276

    .line 56
    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result p1

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BoxAudioPlayer,onAudioProcess: change volume duration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", AudioSessionId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;

    invoke-virtual {v1}, Ld/b/a/b;->y()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->h(Ljava/lang/String;)V

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BoxAudioPlayer,onAudioProcess: Lower the volume: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->w:Lcn/manstep/phonemirrorBox/BoxInterface/a$c;

    iget v1, v1, Lcn/manstep/phonemirrorBox/BoxInterface/a$c;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;

    invoke-virtual {p1}, Ld/b/a/b;->y()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->h(Ljava/lang/String;)V

    goto :goto_29d

    :cond_276
    if-ne v1, v3, :cond_279

    goto :goto_29d

    .line 59
    :cond_279
    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B

    move-result-object v0

    sget-object v1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->w:Lcn/manstep/phonemirrorBox/BoxInterface/a$c;

    iget v1, v1, Lcn/manstep/phonemirrorBox/BoxInterface/a$c;->c:I

    invoke-direct {p0, v0, v5, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->a([BII)V

    .line 60
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->w:Lcn/manstep/phonemirrorBox/BoxInterface/a$c;

    iget v0, v0, Lcn/manstep/phonemirrorBox/BoxInterface/a$c;->a:I

    sget v1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->i:I

    if-ne v0, v1, :cond_29d

    sget-boolean v0, Lcn/manstep/phonemirrorBox/p;->H:Z

    if-eqz v0, :cond_29d

    .line 61
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->h:Ld/b/a/c;

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B

    move-result-object p1

    sget-object v1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->w:Lcn/manstep/phonemirrorBox/BoxInterface/a$c;

    iget v1, v1, Lcn/manstep/phonemirrorBox/BoxInterface/a$c;->c:I

    invoke-virtual {v0, p1, v5, v1}, Ld/b/a/c;->e([BII)V

    :cond_29d
    :goto_29d
    return-void

    :pswitch_data_29e
    .packed-switch 0x1
        :pswitch_18b
        :pswitch_144
        :pswitch_12f
        :pswitch_125
        :pswitch_120
        :pswitch_119
        :pswitch_114
        :pswitch_10f
        :pswitch_10a
        :pswitch_105
        :pswitch_100
        :pswitch_f9
        :pswitch_f4
        :pswitch_125
        :pswitch_ed
        :pswitch_e8
    .end packed-switch
.end method
