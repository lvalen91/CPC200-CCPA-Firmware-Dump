.class public Lcn/manstep/phonemirrorBox/BoxInterface/a;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcn/manstep/phonemirrorBox/BoxInterface/a$c;,
    Lcn/manstep/phonemirrorBox/BoxInterface/a$b;
  }
.end annotation

.field private final static f:Ljava/util/Map;
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

.field private a:I

.field private b:I

.field private c:Ld/b/a/b;

.field private d:I

.field private e:Lcn/manstep/phonemirrorBox/BoxInterface/a$b;

.method static constructor <clinit>()V
  .registers 2
  .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;
    const/4 v1, 6
    invoke-direct { v0, v1 }, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V
    sput-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->f:Ljava/util/Map;
    const/4 v0, 1
  .line 2
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->g:Z
  .line 3
    new-instance v0, Ld/b/a/c;
    invoke-direct { v0 }, Ld/b/a/c;-><init>()V
    sput-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->h:Ld/b/a/c;
    const/4 v0, -1
  .line 4
    sput v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->i:I
    const/4 v0, 0
  .line 5
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->j:Z
  .line 6
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->k:Z
  .line 7
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->l:Z
    const/4 v1, 0
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
  .catch Ljava/lang/Exception; { :L0 .. :L2 } :L3
  .registers 7
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 0
  .line 2
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;
    const/4 v1, 0
  .line 3
    iput v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->d:I
  .line 4
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->e:Lcn/manstep/phonemirrorBox/BoxInterface/a$b;
  :L0
  .line 5
    invoke-virtual { p3 }, Landroid/content/Context;->getFilesDir()Ljava/io/File;
    move-result-object p3
  .line 6
    invoke-virtual { p3 }, Ljava/io/File;->exists()Z
    move-result v1
    if-eqz v1, :L1
    invoke-virtual { p3 }, Ljava/io/File;->isDirectory()Z
    move-result v1
    if-eqz v1, :L1
  .line 7
    sget-object v1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->m:Landroid/media/MediaPlayer;
    if-nez v1, :L4
  .line 8
    new-instance v1, Landroid/media/MediaPlayer;
    invoke-direct { v1 }, Landroid/media/MediaPlayer;-><init>()V
    sput-object v1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->m:Landroid/media/MediaPlayer;
  .line 9
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p3 }, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object p3
    invoke-virtual { v2, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p3, "/mute.wav"
    invoke-virtual { v2, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p3
    invoke-virtual { v1, p3 }, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    const-string p3, "BoxAudioPlayer: Create Mute MediaPlayer!"
  .line 10
    invoke-static { p3 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    goto :L4
  :L1
    const-string p3, "BoxAudioPlayer: Directory does not exist!"
  .line 11
    invoke-static { p3 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L2
    goto :L4
  :L3
    move-exception p3
  .line 12
    sput-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->m:Landroid/media/MediaPlayer;
  .line 13
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "BoxAudioPlayer: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { p3 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object p3
    invoke-virtual { v1, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p3
    invoke-static { p3 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L4
  .line 14
    iput p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->b:I
  .line 15
    iput p2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->a:I
  .line 16
    new-instance p1, Lcn/manstep/phonemirrorBox/BoxInterface/a$c;
    invoke-direct { p1, p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/a$c;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/a;)V
    sput-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->w:Lcn/manstep/phonemirrorBox/BoxInterface/a$c;
  .line 17
    new-instance p1, Lcn/manstep/phonemirrorBox/BoxInterface/a$b;
    invoke-direct { p1, p0, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/a$b;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/a;Lcn/manstep/phonemirrorBox/BoxInterface/a$a;)V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->e:Lcn/manstep/phonemirrorBox/BoxInterface/a$b;
  .line 18
    invoke-virtual { p1 }, Ljava/lang/Thread;->start()V
  .line 19
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;
    if-nez p1, :L5
  .line 20
    new-instance p1, Ld/b/a/b;
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->e:Lcn/manstep/phonemirrorBox/BoxInterface/a$b;
    invoke-virtual { p2 }, Lcn/manstep/phonemirrorBox/BoxInterface/a$b;->c()Landroid/os/Handler;
    move-result-object p2
    invoke-direct { p1, p2 }, Ld/b/a/b;-><init>(Landroid/os/Handler;)V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;
  :L5
    return-void
.end method

.method public static A(Landroid/content/Context;Z)V
  .registers 5
    if-eqz p1, :L0
  .line 1
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->h:Ld/b/a/c;
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    const-string v1, "MicGain"
    const/4 v2, 0
    invoke-virtual { v0, v1, v2 }, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I
    move-result v0
    invoke-virtual { p1, v0 }, Ld/b/a/c;->w(I)V
    const-string p1, "NaviGain"
  .line 2
    invoke-static { p0, p1, v2 }, Lcn/manstep/phonemirrorBox/b0;->d(Landroid/content/Context;Ljava/lang/String;I)I
    move-result p1
    sput p1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->t:I
    const-string p1, "VoiceCallGain"
  .line 3
    invoke-static { p0, p1, v2 }, Lcn/manstep/phonemirrorBox/b0;->d(Landroid/content/Context;Ljava/lang/String;I)I
    move-result p0
    sput p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->u:I
  :L0
    return-void
.end method

.method public static B()V
  .registers 4
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    const-string v1, "IsAutoPlayMusic"
    const/4 v2, 1
    invoke-virtual { v0, v1, v2 }, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z
    move-result v0
    if-eqz v0, :L0
    const/4 v0, 3
    const/16 v1, 50
  .line 2
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->q(II)I
    move-result v0
  .line 3
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "BoxAudioPlayer,onResumeRequestAudioFocus: isMusicActive:  "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  :L0
    return-void
.end method

.method private C(I)V
  .registers 4
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "BoxAudioPlayer,onRingStart: index="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->k()I
    move-result v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, ",bAlertRinging="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-boolean v1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->q:Z
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->h(Ljava/lang/String;)V
  .line 2
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->q:Z
    if-nez v0, :L0
    const/4 v0, 1
  .line 3
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->q:Z
  .line 4
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;
    invoke-virtual { v1, v0 }, Ld/b/a/b;->l(Z)V
  .line 5
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->o(I)V
  .line 6
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/f;->j()Lcn/manstep/phonemirrorBox/f0/f;
    move-result-object p1
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/f0/f;->m()I
  .line 7
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;
    move-result-object p1
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/v0/a;->e()V
  :L0
    return-void
.end method

.method private D()V
  .registers 3
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "BoxAudioPlayer,onRingStop: index="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->k()I
    move-result v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, ",bAlertRinging="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-boolean v1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->q:Z
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->h(Ljava/lang/String;)V
  .line 2
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->q:Z
    if-eqz v0, :L0
    const/4 v0, 0
  .line 3
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->q:Z
  .line 4
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;
    invoke-virtual { v1, v0 }, Ld/b/a/b;->l(Z)V
  .line 5
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/v0/a;->l()V
  .line 6
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/f;->j()Lcn/manstep/phonemirrorBox/f0/f;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/f0/f;->g()V
  :L0
    return-void
.end method

.method private E()V
  .registers 3
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "BoxAudioPlayer,onSiriStart: index="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->k()I
    move-result v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;
    const/4 v1, 1
    invoke-virtual { v0, v1 }, Ld/b/a/b;->l(Z)V
  .line 3
    sput-boolean v1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->p:Z
  .line 4
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/v0/a;->h()V
  .line 5
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->k()I
    move-result v1
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->m1(I)V
  .line 6
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/g;->j()Lcn/manstep/phonemirrorBox/f0/g;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/f0/g;->m()I
    return-void
.end method

.method private F()V
  .registers 3
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "BoxAudioPlayer,onSiriStop: index="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->k()I
    move-result v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    const/4 v0, 0
  .line 2
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->p:Z
  .line 3
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;
    invoke-virtual { v1, v0 }, Ld/b/a/b;->l(Z)V
  .line 4
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/v0/a;->o()V
  .line 5
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    const/4 v1, -1
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->m1(I)V
  .line 6
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/g;->j()Lcn/manstep/phonemirrorBox/f0/g;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/f0/g;->g()V
  .line 7
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/u;->i0()V
    return-void
.end method

.method public static G()V
  .registers 3
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "BoxAudioPlayer,requestAudioFocus: bStopiPhoneAudio="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-boolean v1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->l:Z
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->s:Z
    if-nez v0, :L1
  .line 3
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z
    move-result v0
    if-eqz v0, :L1
  .line 4
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->o:Z
    if-eqz v0, :L0
  .line 5
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/b;->j()Lcn/manstep/phonemirrorBox/f0/b;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/f0/b;->m()I
    goto :L1
  :L0
  .line 6
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/c;->n()Lcn/manstep/phonemirrorBox/f0/c;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/f0/c;->u()I
  :L1
    return-void
.end method

.method private static H()V
  .registers 4
    const/4 v0, 1
  .line 1
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->g:Z
    const/4 v0, 0
  .line 2
    sput-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->m:Landroid/media/MediaPlayer;
    const/4 v0, 0
  .line 3
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->k:Z
    const/4 v1, -1
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
    if-eqz p0, :L2
    if-eqz p1, :L0
    const/4 p0, 1
  .line 1
    sput-boolean p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->l:Z
    goto :L1
  :L0
  .line 2
    new-instance p0, Ljava/lang/StringBuilder;
    invoke-direct { p0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p1, "BoxAudioPlayer,stopMusicAudioOutput: "
    invoke-virtual { p0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-boolean p1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->j:Z
    invoke-virtual { p0, p1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    const-string p1, " "
    invoke-virtual { p0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-boolean p1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->k:Z
    invoke-virtual { p0, p1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 3
    sget-boolean p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->j:Z
    sput-boolean p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->l:Z
  :L1
  .line 4
    invoke-static { }, Lcn/manstep/phonemirrorBox/util/j;->c()Lcn/manstep/phonemirrorBox/util/j;
    move-result-object p0
    const-wide/16 v0, 2000
    new-instance p1, Lcn/manstep/phonemirrorBox/BoxInterface/a$a;
    invoke-direct { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/a$a;-><init>()V
    const-string v2, "SetStopiPhoneAudio"
    invoke-virtual { p0, v2, v0, v1, p1 }, Lcn/manstep/phonemirrorBox/util/j;->e(Ljava/lang/String;JLjava/lang/Runnable;)Lcn/manstep/phonemirrorBox/util/j;
    goto :L3
  :L2
    const/4 p0, 0
  .line 5
    sput-boolean p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->l:Z
  :L3
    return-void
.end method

.method private a([BII)V
  .registers 8
  .line 1
    sget-boolean v0, Lcn/manstep/phonemirrorBox/p;->x:Z
    if-eqz v0, :L0
  .line 2
    invoke-static { }, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
    move-result-object v0
    const/4 v1, 1
    new-array v1, v1, [Ljava/lang/Object;
    const/4 v2, 0
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->k()I
    move-result v3
    invoke-static { v3 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v3
    aput-object v3, v1, v2
    const-string v2, "pout_%02d.pcm"
    invoke-static { v0, v2, v1 }, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v0
    invoke-static { }, Lcn/manstep/phonemirrorBox/MyApplication;->b()Lcn/manstep/phonemirrorBox/MyApplication;
    move-result-object v1
    invoke-static { p1, p2, p3, v0, v1 }, Lcn/manstep/phonemirrorBox/util/n;->z([BIILjava/lang/String;Landroid/content/Context;)Z
  :L0
  .line 3
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->x:Z
    if-eqz v0, :L1
    return-void
  :L1
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;
    if-eqz v0, :L7
  .line 5
    sget-boolean v1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->n:Z
    if-nez v1, :L3
    sget-boolean v1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->o:Z
    if-nez v1, :L3
    sget-boolean v1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->p:Z
    if-nez v1, :L3
    sget-boolean v1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->q:Z
    if-eqz v1, :L2
    goto :L3
  :L2
  .line 6
    sget-boolean v1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->l:Z
    if-nez v1, :L7
  .line 7
    invoke-virtual { v0, p1, p2, p3 }, Ld/b/a/b;->f([BII)V
    goto :L7
  :L3
  .line 8
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->n:Z
    if-eqz v0, :L4
    sget v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->t:I
    if-lez v0, :L4
  .line 9
    invoke-static { p1, p2, p3, v0 }, Lcn/manstep/phonemirrorBox/util/JniTools;->amplifyPcmData([BIII)V
    goto :L6
  :L4
  .line 10
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->o:Z
    if-eqz v0, :L5
    sget v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->u:I
    if-lez v0, :L5
  .line 11
    invoke-static { p1, p2, p3, v0 }, Lcn/manstep/phonemirrorBox/util/JniTools;->amplifyPcmData([BIII)V
    goto :L6
  :L5
  .line 12
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/v0/a;->B()Z
  :L6
  .line 13
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;
    invoke-virtual { v0, p1, p2, p3 }, Ld/b/a/b;->f([BII)V
  :L7
    return-void
.end method

.method private c(IZ)Ld/b/a/a;
  .registers 11
    const/16 v0, 16000
    const/4 v1, 0
    const/4 v2, 1
    const/4 v3, 2
    const/16 v4, 16
    packed-switch p1, :L14
    const/4 v0, 0
    const/4 v5, 0
    goto :L6
  :L0
    const/16 v0, 24000
    goto :L3
  :L1
    const v0, 48000
    goto :L5
  :L2
    const/16 v0, 8000
  :L3
    const/16 v1, 16
    const/4 v5, 1
    goto :L6
  :L4
    const v0, 44100
  :L5
    const/16 v1, 16
    const/4 v5, 2
  :L6
  .line 1
    new-instance v6, Ljava/lang/StringBuilder;
    invoke-direct { v6 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v7, "BoxAudioPlayer,GetAudioParamByDecodeType: decode_type="
    invoke-virtual { v6, v7 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v6, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p1, " rate="
    invoke-virtual { v6, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v6, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p1, " bits="
    invoke-virtual { v6, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v6, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p1, " channel="
    invoke-virtual { v6, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v6, v5 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v6 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    const/4 p1, 3
    const/16 v6, 12
    if-eqz p2, :L10
  .line 2
    new-instance p2, Ld/b/a/a;
    if-ne v5, v2, :L7
    const/16 v6, 16
  :L7
    if-ne v1, v4, :L8
    goto :L9
  :L8
    const/4 v3, 3
  :L9
    invoke-direct { p2, v0, v6, v3 }, Ld/b/a/a;-><init>(III)V
    return-object p2
  :L10
  .line 3
    new-instance p2, Ld/b/a/a;
    if-ne v5, v2, :L11
    const/4 v6, 4
  :L11
    if-ne v1, v4, :L12
    goto :L13
  :L12
    const/4 v3, 3
  :L13
    invoke-direct { p2, v0, v6, v3 }, Ld/b/a/a;-><init>(III)V
    return-object p2
  :L14
  .packed-switch 1
    :L4
    :L4
    :L2
    :L1
    :L3
    :L0
    :L5
  .end packed-switch
.end method

.method private d()V
  .registers 2
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->H()V
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/c;->n()Lcn/manstep/phonemirrorBox/f0/c;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/f0/c;->s()V
  .line 3
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/e;->j()Lcn/manstep/phonemirrorBox/f0/e;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/f0/e;->g()V
  .line 4
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/b;->j()Lcn/manstep/phonemirrorBox/f0/b;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/f0/b;->g()V
  .line 5
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/g;->j()Lcn/manstep/phonemirrorBox/f0/g;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/f0/g;->g()V
  .line 6
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/f;->j()Lcn/manstep/phonemirrorBox/f0/f;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/f0/f;->g()V
    return-void
.end method

.method private e(I)Ljava/lang/String;
  .registers 4
    packed-switch p1, :L16
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Unknown: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    return-object p1
  :L0
    const-string p1, "AUDIO_NOTICE_STOP"
    return-object p1
  :L1
    const-string p1, "AUDIO_NOTICE_START"
    return-object p1
  :L2
    const-string p1, "AUDIO_PHONECALL_INCOMING"
    return-object p1
  :L3
    const-string p1, "AUDIO_ALERT_STOP"
    return-object p1
  :L4
    const-string p1, "AUDIO_ALERT_START"
    return-object p1
  :L5
    const-string p1, "AUDIO_MEDIA_STOP"
    return-object p1
  :L6
    const-string p1, "AUDIO_MEDIA_START"
    return-object p1
  :L7
    const-string p1, "AUDIO_SIRI_STOP"
    return-object p1
  :L8
    const-string p1, "AUDIO_SIRI_START"
    return-object p1
  :L9
    const-string p1, "AUDIO_NAVI_STOP"
    return-object p1
  :L10
    const-string p1, "AUDIO_NAVI_START"
    return-object p1
  :L11
    const-string p1, "AUDIO_PHONECALL_STOP"
    return-object p1
  :L12
    const-string p1, "AUDIO_PHONECALL_START"
    return-object p1
  :L13
    const-string p1, "AUDIO_INPUT_CONFIG"
    return-object p1
  :L14
    const-string p1, "AUDIO_OUTPUT_STOP"
    return-object p1
  :L15
    const-string p1, "AUDIO_OUTPUT_START"
    return-object p1
  :L16
  .packed-switch 1
    :L15
    :L14
    :L13
    :L12
    :L11
    :L10
    :L9
    :L8
    :L7
    :L6
    :L5
    :L4
    :L3
    :L2
    :L1
    :L0
  .end packed-switch
.end method

.method private f(I)Ljava/lang/String;
  .registers 4
    const/4 v0, 1
    if-eq p1, v0, :L2
    const/4 v0, 2
    if-eq p1, v0, :L1
    const/4 v0, 3
    if-eq p1, v0, :L0
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Unknown Type: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    return-object p1
  :L0
    const-string p1, "AUDIO_INPUT"
    return-object p1
  :L1
    const-string p1, "AUDIO_ALTERNATE"
    return-object p1
  :L2
    const-string p1, "AUDIO_MAIN"
    return-object p1
.end method

.method private g()V
  .registers 4
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/v0/a;->y()Z
    move-result v0
    if-eqz v0, :L3
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->t()Z
    move-result v0
    if-eqz v0, :L0
  .line 3
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    const/4 v1, 3
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->z(I)Lcn/manstep/phonemirrorBox/BoxInterface/a;
    move-result-object v0
    goto :L1
  :L0
  .line 4
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->z(I)Lcn/manstep/phonemirrorBox/BoxInterface/a;
    move-result-object v0
  :L1
  .line 5
    iget-object v1, v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;
    invoke-virtual { v1 }, Ld/b/a/b;->D()Z
    move-result v1
    if-nez v1, :L3
  .line 6
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/c;->n()Lcn/manstep/phonemirrorBox/f0/c;
    move-result-object v1
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/f0/a;->e()Z
    move-result v1
    if-nez v1, :L2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 26
    if-lt v1, v2, :L2
  .line 7
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;
    invoke-virtual { v0 }, Ld/b/a/b;->g()V
    goto :L3
  :L2
  .line 8
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;
    invoke-virtual { v0 }, Ld/b/a/b;->h()V
  :L3
    return-void
.end method

.method private static j(I)I
  .registers 5
  .line 1
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->v:Z
    const/4 v1, 1
    const/4 v2, 3
    const/4 v3, 2
    if-eqz v0, :L2
    if-eq p0, v1, :L1
    if-eq p0, v3, :L0
    if-eq p0, v2, :L0
    goto :L3
  :L0
    return v3
  :L1
    const/4 p0, 0
    return p0
  :L2
    if-eq p0, v1, :L6
    if-eq p0, v3, :L5
    if-eq p0, v2, :L4
  :L3
    return v2
  :L4
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object p0
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/u;->B()I
    move-result p0
    return p0
  :L5
  .line 3
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object p0
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/u;->J()I
    move-result p0
    return p0
  :L6
  .line 4
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object p0
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/u;->K()I
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
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->H()V
  .line 2
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->h:Ld/b/a/c;
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v1
    const-string v2, "MicGain"
    const/4 v3, 0
    invoke-virtual { v1, v2, v3 }, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I
    move-result v1
    invoke-virtual { v0, v1 }, Ld/b/a/c;->w(I)V
  .line 3
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->h:Ld/b/a/c;
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v1
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object v2
    invoke-virtual { v2 }, Lcn/manstep/phonemirrorBox/u;->F()I
    move-result v2
    const-string v4, "RecordSource"
    invoke-virtual { v1, v4, v2 }, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I
    move-result v1
    invoke-virtual { v0, v1 }, Ld/b/a/c;->v(I)V
  .line 4
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    const-string v1, "AudioClassify"
    invoke-virtual { v0, v1, v3 }, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z
    move-result v0
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->v:Z
  .line 5
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    const-string v1, "AudioTransferMode"
    invoke-virtual { v0, v1, v3 }, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z
    move-result v0
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->s:Z
  .line 6
    invoke-static { }, Landroid/os/SystemClock;->elapsedRealtime()J
    move-result-wide v0
  .line 7
    sget-object v2, Lcn/manstep/phonemirrorBox/BoxInterface/a;->f:Ljava/util/Map;
    const/4 v3, 6
    invoke-static { v3 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v3
    invoke-static { v0, v1 }, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v4
    invoke-interface { v2, v3, v4 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 8
    sget-object v2, Lcn/manstep/phonemirrorBox/BoxInterface/a;->f:Ljava/util/Map;
    const/4 v3, 7
    invoke-static { v3 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v3
    invoke-static { v0, v1 }, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v4
    invoke-interface { v2, v3, v4 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 9
    sget-object v2, Lcn/manstep/phonemirrorBox/BoxInterface/a;->f:Ljava/util/Map;
    const/16 v3, 8
    invoke-static { v3 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v3
    invoke-static { v0, v1 }, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v4
    invoke-interface { v2, v3, v4 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 10
    sget-object v2, Lcn/manstep/phonemirrorBox/BoxInterface/a;->f:Ljava/util/Map;
    const/16 v3, 9
    invoke-static { v3 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v3
    invoke-static { v0, v1 }, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v4
    invoke-interface { v2, v3, v4 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 11
    sget-object v2, Lcn/manstep/phonemirrorBox/BoxInterface/a;->f:Ljava/util/Map;
    const/4 v3, 4
    invoke-static { v3 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v3
    invoke-static { v0, v1 }, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v4
    invoke-interface { v2, v3, v4 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 12
    sget-object v2, Lcn/manstep/phonemirrorBox/BoxInterface/a;->f:Ljava/util/Map;
    const/4 v3, 5
    invoke-static { v3 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v3
    invoke-static { v0, v1 }, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v0
    invoke-interface { v2, v3, v0 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 13
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/c;->n()Lcn/manstep/phonemirrorBox/f0/c;
    move-result-object v0
    invoke-virtual { v0, p0 }, Lcn/manstep/phonemirrorBox/f0/c;->p(Landroid/content/Context;)V
  .line 14
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/e;->j()Lcn/manstep/phonemirrorBox/f0/e;
    move-result-object v0
    invoke-virtual { v0, p0 }, Lcn/manstep/phonemirrorBox/f0/e;->l(Landroid/content/Context;)V
  .line 15
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/b;->j()Lcn/manstep/phonemirrorBox/f0/b;
    move-result-object v0
    invoke-virtual { v0, p0 }, Lcn/manstep/phonemirrorBox/f0/b;->l(Landroid/content/Context;)V
  .line 16
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/g;->j()Lcn/manstep/phonemirrorBox/f0/g;
    move-result-object v0
    invoke-virtual { v0, p0 }, Lcn/manstep/phonemirrorBox/f0/g;->l(Landroid/content/Context;)V
  .line 17
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/f;->j()Lcn/manstep/phonemirrorBox/f0/f;
    move-result-object v0
    invoke-virtual { v0, p0 }, Lcn/manstep/phonemirrorBox/f0/f;->l(Landroid/content/Context;)V
    return-void
.end method

.method private m(I)V
  .registers 6
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "BoxAudioPlayer,initCallAudioPlayer: index="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->k()I
    move-result v2
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v2, ", decodeType="
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z
    move-result v0
    if-eqz v0, :L0
  .line 3
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->H()Lcn/manstep/phonemirrorBox/BoxInterface/a;
    move-result-object v0
    if-eqz v0, :L0
  .line 4
    invoke-direct { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->k()I
    move-result v2
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->k()I
    move-result v3
    if-eq v2, v3, :L0
  .line 5
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p1, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->k()I
    move-result v1
    invoke-virtual { p1, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, ", CurrentCallAudioPlayerIndex="
    invoke-virtual { p1, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->k()I
    move-result v0
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    return-void
  :L0
  .line 6
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/b;->j()Lcn/manstep/phonemirrorBox/f0/b;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/f0/a;->e()Z
    move-result v0
    const/4 v1, 0
    if-nez v0, :L1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 26
    if-lt v0, v2, :L1
  .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/b;->j()Lcn/manstep/phonemirrorBox/f0/b;
    move-result-object v2
    invoke-virtual { v2 }, Lcn/manstep/phonemirrorBox/f0/b;->i()Landroid/media/AudioAttributes;
    move-result-object v2
    invoke-direct { p0, p1, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c(IZ)Ld/b/a/a;
    move-result-object p1
    invoke-virtual { v0, v2, p1 }, Ld/b/a/b;->a(Landroid/media/AudioAttributes;Ld/b/a/a;)V
    goto :L2
  :L1
  .line 8
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;
    invoke-direct { p0, p1, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c(IZ)Ld/b/a/a;
    move-result-object p1
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/b;->j()Lcn/manstep/phonemirrorBox/f0/b;
    move-result-object v1
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/f0/a;->c()I
    move-result v1
    invoke-virtual { v0, p1, v1 }, Ld/b/a/b;->d(Ld/b/a/a;I)V
  :L2
  .line 9
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/b;->j()Lcn/manstep/phonemirrorBox/f0/b;
    move-result-object p1
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/f0/b;->m()I
  .line 10
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/b;->j()Lcn/manstep/phonemirrorBox/f0/b;
    move-result-object p1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;
    invoke-virtual { p1, v0 }, Lcn/manstep/phonemirrorBox/f0/a;->f(Ld/b/a/b;)V
  .line 11
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/b;->j()Lcn/manstep/phonemirrorBox/f0/b;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/f0/a;->d()I
    move-result v0
    const-string v1, "callVol"
    invoke-virtual { p1, v1, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->J0(Ljava/lang/String;I)Z
    return-void
.end method

.method private n(I)V
  .registers 5
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "BoxAudioPlayer,initMediaAudioPlayer: decodeType = "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, ",index="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->k()I
    move-result v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    const/4 v0, 0
  .line 2
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->l:Z
  .line 3
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/c;->n()Lcn/manstep/phonemirrorBox/f0/c;
    move-result-object v1
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/f0/a;->e()Z
    move-result v1
    if-nez v1, :L0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 26
    if-lt v1, v2, :L0
  .line 4
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/c;->n()Lcn/manstep/phonemirrorBox/f0/c;
    move-result-object v2
    invoke-virtual { v2 }, Lcn/manstep/phonemirrorBox/f0/c;->m()Landroid/media/AudioAttributes;
    move-result-object v2
    invoke-direct { p0, p1, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c(IZ)Ld/b/a/a;
    move-result-object p1
    invoke-virtual { v1, v2, p1 }, Ld/b/a/b;->a(Landroid/media/AudioAttributes;Ld/b/a/a;)V
    goto :L1
  :L0
  .line 5
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;
    invoke-direct { p0, p1, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c(IZ)Ld/b/a/a;
    move-result-object p1
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->j(I)I
    move-result v0
    invoke-virtual { v1, p1, v0 }, Ld/b/a/b;->d(Ld/b/a/a;I)V
  :L1
  .line 6
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/c;->n()Lcn/manstep/phonemirrorBox/f0/c;
    move-result-object p1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;
    invoke-virtual { p1, v0 }, Lcn/manstep/phonemirrorBox/f0/a;->f(Ld/b/a/b;)V
  .line 7
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/c;->n()Lcn/manstep/phonemirrorBox/f0/c;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/f0/a;->d()I
    move-result v0
    const-string v1, "mediaVol"
    invoke-virtual { p1, v1, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->J0(Ljava/lang/String;I)Z
    return-void
.end method

.method private o(I)V
  .registers 5
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "initRingAudioPlayer: decodeType="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, ",index="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->k()I
    move-result v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, ",isReady="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;
    invoke-virtual { v1 }, Ld/b/a/b;->D()Z
    move-result v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v1, "BoxAudioPlayer"
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/f;->j()Lcn/manstep/phonemirrorBox/f0/f;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/f0/a;->e()Z
    move-result v0
    const/4 v1, 0
    if-nez v0, :L0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 26
    if-lt v0, v2, :L0
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/f;->j()Lcn/manstep/phonemirrorBox/f0/f;
    move-result-object v2
    invoke-virtual { v2 }, Lcn/manstep/phonemirrorBox/f0/f;->i()Landroid/media/AudioAttributes;
    move-result-object v2
    invoke-direct { p0, p1, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c(IZ)Ld/b/a/a;
    move-result-object p1
    invoke-virtual { v0, v2, p1 }, Ld/b/a/b;->a(Landroid/media/AudioAttributes;Ld/b/a/a;)V
    goto :L1
  :L0
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;
    invoke-direct { p0, p1, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c(IZ)Ld/b/a/a;
    move-result-object p1
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/f;->j()Lcn/manstep/phonemirrorBox/f0/f;
    move-result-object v1
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/f0/a;->c()I
    move-result v1
    invoke-virtual { v0, p1, v1 }, Ld/b/a/b;->d(Ld/b/a/a;I)V
  :L1
  .line 5
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/f;->j()Lcn/manstep/phonemirrorBox/f0/f;
    move-result-object p1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;
    invoke-virtual { p1, v0 }, Lcn/manstep/phonemirrorBox/f0/a;->f(Ld/b/a/b;)V
  .line 6
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/f;->j()Lcn/manstep/phonemirrorBox/f0/f;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/f0/a;->d()I
    move-result v0
    const-string v1, "ringVol"
    invoke-virtual { p1, v1, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->J0(Ljava/lang/String;I)Z
    return-void
.end method

.method private p(I)V
  .registers 5
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "BoxAudioPlayer,initSiriAudioPlayer: decodeType = "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, ", index="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->k()I
    move-result v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/g;->j()Lcn/manstep/phonemirrorBox/f0/g;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/f0/a;->e()Z
    move-result v0
    const/4 v1, 0
    if-nez v0, :L0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 26
    if-lt v0, v2, :L0
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/g;->j()Lcn/manstep/phonemirrorBox/f0/g;
    move-result-object v2
    invoke-virtual { v2 }, Lcn/manstep/phonemirrorBox/f0/g;->i()Landroid/media/AudioAttributes;
    move-result-object v2
    invoke-direct { p0, p1, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c(IZ)Ld/b/a/a;
    move-result-object p1
    invoke-virtual { v0, v2, p1 }, Ld/b/a/b;->a(Landroid/media/AudioAttributes;Ld/b/a/a;)V
    goto :L1
  :L0
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;
    invoke-direct { p0, p1, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c(IZ)Ld/b/a/a;
    move-result-object p1
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/g;->j()Lcn/manstep/phonemirrorBox/f0/g;
    move-result-object v1
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/f0/a;->c()I
    move-result v1
    invoke-virtual { v0, p1, v1 }, Ld/b/a/b;->d(Ld/b/a/a;I)V
  :L1
  .line 5
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/g;->j()Lcn/manstep/phonemirrorBox/f0/g;
    move-result-object p1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;
    invoke-virtual { p1, v0 }, Lcn/manstep/phonemirrorBox/f0/a;->f(Ld/b/a/b;)V
    return-void
.end method

.method public static q(II)I
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L3
  .registers 9
  :L0
    const-string v0, "android.media.AudioSystem"
  .line 1
    invoke-static { v0 }, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    move-result-object v0
    const-string v1, "isStreamActive"
    const/4 v2, 2
    new-array v3, v2, [Ljava/lang/Class;
  .line 2
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    const/4 v5, 0
    aput-object v4, v3, v5
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    const/4 v6, 1
    aput-object v4, v3, v6
    invoke-virtual { v0, v1, v3 }, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v0
    const/4 v1, 0
    new-array v2, v2, [Ljava/lang/Object;
  .line 3
    invoke-static { p0 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p0
    aput-object p0, v2, v5
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p0
    aput-object p0, v2, v6
    invoke-virtual { v0, v1, v2 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p0
    check-cast p0, Ljava/lang/Boolean;
    invoke-virtual { p0 }, Ljava/lang/Boolean;->booleanValue()Z
    move-result p0
  :L1
    if-eqz p0, :L2
    return v6
  :L2
    return v5
  :L3
    move-exception p0
  .line 4
    invoke-virtual { p0 }, Ljava/lang/Exception;->printStackTrace()V
    const/4 p0, -1
    return p0
.end method

.method private r(I)V
  .registers 8
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "onAlternateStart: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, ", index="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->k()I
    move-result v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v1, "BoxAudioPlayer"
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 2
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->r:Z
    if-nez v0, :L2
    const/4 v0, 1
  .line 3
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->r:Z
  .line 4
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/c;->n()Lcn/manstep/phonemirrorBox/f0/c;
    move-result-object v2
    invoke-virtual { v2 }, Lcn/manstep/phonemirrorBox/f0/a;->e()Z
    move-result v2
    const/4 v3, 0
    if-nez v2, :L0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v4, 26
    if-lt v2, v4, :L0
  .line 5
    new-instance v2, Landroid/media/AudioAttributes$Builder;
    invoke-direct { v2 }, Landroid/media/AudioAttributes$Builder;-><init>()V
  .line 6
    invoke-virtual { v2, v0 }, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;
    move-result-object v2
    const/4 v4, 2
  .line 7
    invoke-virtual { v2, v4 }, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;
    move-result-object v2
  .line 8
    invoke-virtual { v2 }, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;
    move-result-object v2
  .line 9
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "onAlternateStart: VolumeControlStream="
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Landroid/media/AudioAttributes;->getVolumeControlStream()I
    move-result v5
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-static { v1, v4 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 10
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;
    invoke-direct { p0, p1, v3 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c(IZ)Ld/b/a/a;
    move-result-object v3
    invoke-virtual { v4, v2, v3 }, Ld/b/a/b;->a(Landroid/media/AudioAttributes;Ld/b/a/a;)V
    goto :L1
  :L0
  .line 11
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;
    invoke-direct { p0, p1, v3 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c(IZ)Ld/b/a/a;
    move-result-object v3
    const/4 v4, 3
    invoke-virtual { v2, v3, v4 }, Ld/b/a/b;->d(Ld/b/a/a;I)V
  :L1
  .line 12
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "onAlternateStart: decodeType="
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p1, ",StreamType="
    invoke-virtual { v2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;
    invoke-virtual { p1 }, Ld/b/a/b;->C()I
    move-result p1
    invoke-virtual { v2, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { v1, p1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 13
    invoke-static { }, Lcn/manstep/phonemirrorBox/e0/b;->a()Lcn/manstep/phonemirrorBox/e0/b;
    move-result-object p1
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;
    invoke-virtual { v1 }, Ld/b/a/b;->C()I
    move-result v1
    invoke-virtual { p1, v0, v1 }, Lcn/manstep/phonemirrorBox/e0/b;->c(II)V
  :L2
    return-void
.end method

.method private s()V
  .registers 2
    const/4 v0, 0
  .line 1
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->r:Z
    return-void
.end method

.method private u(Z)V
  .registers 4
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "BoxAudioPlayer,onCallStart: index="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->k()I
    move-result v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->h(Ljava/lang/String;)V
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;
    const/4 v1, 1
    invoke-virtual { v0, v1 }, Ld/b/a/b;->l(Z)V
    if-eqz p1, :L0
  .line 3
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/v0/a;->s()V
    goto :L1
  :L0
  .line 4
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/v0/a;->k()V
  :L1
  .line 5
    sput-boolean v1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->o:Z
  .line 6
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->k()I
    move-result v1
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->l1(I)V
    if-nez p1, :L2
  .line 7
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/b;->j()Lcn/manstep/phonemirrorBox/f0/b;
    move-result-object p1
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/f0/b;->m()I
  :L2
    return-void
.end method

.method private v()V
  .registers 3
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "BoxAudioPlayer,onCallStop: index="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->k()I
    move-result v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, ",isMusicPlaying="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;
    move-result-object v1
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/v0/a;->y()Z
    move-result v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->h(Ljava/lang/String;)V
    const/4 v0, 0
  .line 2
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->l:Z
  .line 3
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->o:Z
  .line 4
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;
    invoke-virtual { v1, v0 }, Ld/b/a/b;->l(Z)V
  .line 5
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/v0/a;->f()V
  .line 6
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    const/4 v1, -1
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->l1(I)V
  .line 7
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/b;->j()Lcn/manstep/phonemirrorBox/f0/b;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/f0/b;->g()V
  .line 8
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->g()V
    return-void
.end method

.method private w()V
  .registers 6
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "BoxAudioPlayer,onMediaStart: index="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->k()I
    move-result v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, " "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-boolean v1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->j:Z
    const/4 v2, 1
    const/4 v3, 0
    if-eqz v1, :L0
    sget-boolean v1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->l:Z
    if-nez v1, :L0
    const/4 v1, 1
    goto :L1
  :L0
    const/4 v1, 0
  :L1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->h(Ljava/lang/String;)V
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z
    move-result v0
    if-eqz v0, :L2
  .line 3
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "MediaPlaying_"
    invoke-virtual { v1, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-object v4, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-virtual { v4 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->K()I
    move-result v4
    invoke-virtual { v1, v4 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    invoke-virtual { v0, v1, v4 }, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V
  :L2
  .line 4
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->j:Z
    if-eqz v0, :L3
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->l:Z
    if-nez v0, :L3
    return-void
  :L3
  .line 5
    sput-boolean v2, Lcn/manstep/phonemirrorBox/BoxInterface/a;->j:Z
  .line 6
    sput-boolean v3, Lcn/manstep/phonemirrorBox/BoxInterface/a;->l:Z
  .line 7
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/v0/a;->g()V
  .line 8
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/c;->n()Lcn/manstep/phonemirrorBox/f0/c;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/f0/c;->u()I
    return-void
.end method

.method private x()V
  .registers 4
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "BoxAudioPlayer,onMediaStop: index="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->k()I
    move-result v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->h(Ljava/lang/String;)V
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z
    move-result v0
    if-eqz v0, :L0
  .line 3
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "MediaPlaying_"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-object v2, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-virtual { v2 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->K()I
    move-result v2
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    invoke-virtual { v0, v1, v2 }, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V
  :L0
    const/4 v0, 0
  .line 4
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->j:Z
  .line 5
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/v0/a;->m()V
  .line 6
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/c;->n()Lcn/manstep/phonemirrorBox/f0/c;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/f0/c;->g()V
    return-void
.end method

.method private y(I)V
  .registers 6
    const-string v0, "BoxAudioPlayer"
    const-string v1, "onNaviReportStart: "
  .line 1
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 2
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->f:Ljava/util/Map;
    const/16 v1, 8
    invoke-static { v1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-static { }, Landroid/os/SystemClock;->elapsedRealtime()J
    move-result-wide v2
    invoke-static { v2, v3 }, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v2
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 3
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->n:Z
    if-nez v0, :L2
  .line 4
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "BoxAudioPlayer,onNaviReportStart: index="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->k()I
    move-result v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->h(Ljava/lang/String;)V
  .line 5
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/v0/a;->b()V
    const/4 v0, 1
  .line 6
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->n:Z
  .line 7
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;
    invoke-virtual { v1, v0 }, Ld/b/a/b;->l(Z)V
  .line 8
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/e;->j()Lcn/manstep/phonemirrorBox/f0/e;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/f0/a;->e()Z
    move-result v0
    const/4 v1, 0
    if-nez v0, :L0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 26
    if-lt v0, v2, :L0
  .line 9
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/e;->j()Lcn/manstep/phonemirrorBox/f0/e;
    move-result-object v2
    invoke-virtual { v2 }, Lcn/manstep/phonemirrorBox/f0/e;->i()Landroid/media/AudioAttributes;
    move-result-object v2
    invoke-direct { p0, p1, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c(IZ)Ld/b/a/a;
    move-result-object p1
    invoke-virtual { v0, v2, p1 }, Ld/b/a/b;->a(Landroid/media/AudioAttributes;Ld/b/a/a;)V
    goto :L1
  :L0
  .line 10
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;
    invoke-direct { p0, p1, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c(IZ)Ld/b/a/a;
    move-result-object p1
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/e;->j()Lcn/manstep/phonemirrorBox/f0/e;
    move-result-object v1
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/f0/a;->c()I
    move-result v1
    invoke-virtual { v0, p1, v1 }, Ld/b/a/b;->d(Ld/b/a/a;I)V
  :L1
  .line 11
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/e;->j()Lcn/manstep/phonemirrorBox/f0/e;
    move-result-object p1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;
    invoke-virtual { p1, v0 }, Lcn/manstep/phonemirrorBox/f0/a;->f(Ld/b/a/b;)V
  .line 12
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/e;->j()Lcn/manstep/phonemirrorBox/f0/e;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/f0/a;->d()I
    move-result v0
    const-string v1, "navVol"
    invoke-virtual { p1, v1, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->J0(Ljava/lang/String;I)Z
  .line 13
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/e;->j()Lcn/manstep/phonemirrorBox/f0/e;
    move-result-object p1
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/f0/e;->m()I
  :L2
    return-void
.end method

.method private z()V
  .registers 5
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "onNaviReportStop: bNavieRport="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-boolean v1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->n:Z
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    const-string v1, ", index="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->k()I
    move-result v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v1, "BoxAudioPlayer"
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->p(Ljava/lang/String;Ljava/lang/String;)V
  .line 2
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->f:Ljava/util/Map;
    const/16 v1, 9
    invoke-static { v1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-static { }, Landroid/os/SystemClock;->elapsedRealtime()J
    move-result-wide v2
    invoke-static { v2, v3 }, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v2
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 3
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->n:Z
    const/4 v1, 0
    if-eqz v0, :L0
  .line 4
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "BoxAudioPlayer,onNaviReportStop: index="
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->k()I
    move-result v2
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->h(Ljava/lang/String;)V
  .line 5
    sput-boolean v1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->n:Z
  .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;
    invoke-virtual { v0, v1 }, Ld/b/a/b;->l(Z)V
  .line 7
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/u;->h0()V
  .line 8
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/v0/a;->d()V
  .line 9
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/e;->j()Lcn/manstep/phonemirrorBox/f0/e;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/f0/e;->g()V
  :L0
  .line 10
    sput-boolean v1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->l:Z
    return-void
.end method

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
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Ld/b/a/b;->i()V
  :L0
    const/4 v0, 0
  .line 3
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->j:Z
  .line 4
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->d()V
    return-void
.end method

.method public b(F)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Ld/b/a/b;->n(F)V
  :L0
    return-void
.end method

.method public h()V
  .registers 3
    const-string v0, "BoxAudioPlayer"
    const-string v1, "destroy: "
  .line 1
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;
    const/4 v1, 0
    if-eqz v0, :L0
  .line 3
    invoke-virtual { v0 }, Ld/b/a/b;->i()V
  .line 4
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;
  :L0
  .line 5
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->m:Landroid/media/MediaPlayer;
    if-eqz v0, :L1
  .line 6
    invoke-virtual { v0 }, Landroid/media/MediaPlayer;->release()V
  .line 7
    sput-object v1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->m:Landroid/media/MediaPlayer;
  :L1
  .line 8
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->e:Lcn/manstep/phonemirrorBox/BoxInterface/a$b;
    if-eqz v0, :L2
  .line 9
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/a$b;->d()V
  .line 10
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->e:Lcn/manstep/phonemirrorBox/BoxInterface/a$b;
  :L2
  .line 11
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->d()V
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
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;
    move-result-object v1
    const/4 v2, 0
    invoke-virtual { v1, v2 }, Ljava/nio/ByteBuffer;->getInt(I)I
    move-result v1
    iput v1, v0, Lcn/manstep/phonemirrorBox/BoxInterface/a$c;->a:I
  .line 2
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->w:Lcn/manstep/phonemirrorBox/BoxInterface/a$c;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;
    move-result-object v1
    const/16 v3, 8
    invoke-virtual { v1, v3 }, Ljava/nio/ByteBuffer;->getInt(I)I
    move-result v1
    iput v1, v0, Lcn/manstep/phonemirrorBox/BoxInterface/a$c;->b:I
  .line 3
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->w:Lcn/manstep/phonemirrorBox/BoxInterface/a$c;
    iget v1, v0, Lcn/manstep/phonemirrorBox/BoxInterface/a$c;->a:I
    const/4 v3, 1
    const/4 v4, 5
    if-ne v1, v4, :L0
    iget v0, v0, Lcn/manstep/phonemirrorBox/BoxInterface/a$c;->b:I
    if-ne v0, v3, :L0
  .line 4
    sget-boolean v0, Lcn/manstep/phonemirrorBox/p;->u:Z
    if-eqz v0, :L0
  .line 5
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->w:Lcn/manstep/phonemirrorBox/BoxInterface/a$c;
    const/4 v1, 7
    iput v1, v0, Lcn/manstep/phonemirrorBox/BoxInterface/a$c;->a:I
  :L0
  .line 6
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->w:Lcn/manstep/phonemirrorBox/BoxInterface/a$c;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;
    move-result-object v1
    const/4 v4, 4
    invoke-virtual { v1, v4 }, Ljava/nio/ByteBuffer;->getFloat(I)F
    move-result v1
    iput v1, v0, Lcn/manstep/phonemirrorBox/BoxInterface/a$c;->d:F
  .line 7
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->w:Lcn/manstep/phonemirrorBox/BoxInterface/a$c;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I
    move-result v1
    const/16 v5, 12
    sub-int/2addr v1, v5
    iput v1, v0, Lcn/manstep/phonemirrorBox/BoxInterface/a$c;->c:I
  .line 8
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->w:Lcn/manstep/phonemirrorBox/BoxInterface/a$c;
    iget v1, v0, Lcn/manstep/phonemirrorBox/BoxInterface/a$c;->a:I
    iget v6, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->b:I
    if-ne v1, v6, :L31
    iget v6, v0, Lcn/manstep/phonemirrorBox/BoxInterface/a$c;->b:I
    iget v7, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->a:I
    if-ne v6, v7, :L31
  .line 9
    iget v0, v0, Lcn/manstep/phonemirrorBox/BoxInterface/a$c;->c:I
    if-ne v0, v3, :L28
  .line 10
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;
    move-result-object p1
    invoke-virtual { p1, v5 }, Ljava/nio/ByteBuffer;->get(I)B
    move-result p1
  .line 11
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "BoxAudioPlayer,onAudioProcess: audioCtrlCmd="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, ", "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->e(I)Ljava/lang/String;
    move-result-object v5
    invoke-virtual { v0, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 12
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "BoxAudioPlayer,onAudioProcess: audioType="
    invoke-virtual { v0, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v5, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->a:I
    invoke-virtual { v0, v5 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->a:I
    invoke-direct { p0, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->f(I)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 13
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "BoxAudioPlayer,onAudioProcess: Recv Audio control data: cmd="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, ", AudioType="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->a:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, ", DecodeType="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->b:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    const-string v0, "BoxAudioPlayer"
    const/4 v1, 2
    packed-switch p1, :L32
  .line 14
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "onAudioProcess: unknown "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { v0, p1 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
    goto/16 :L31
  :L1
  .line 15
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->s()V
    goto/16 :L31
  :L2
  .line 16
    iget p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->b:I
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->r(I)V
    goto/16 :L31
  :L3
  .line 17
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->D()V
    goto/16 :L31
  :L4
  .line 18
    iget p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->b:I
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->C(I)V
    goto/16 :L31
  :L5
  .line 19
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->x()V
    goto/16 :L31
  :L6
  .line 20
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->w()V
    goto/16 :L31
  :L7
  .line 21
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->F()V
    goto/16 :L31
  :L8
  .line 22
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->E()V
    goto/16 :L31
  :L9
  .line 23
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->z()V
    goto/16 :L31
  :L10
  .line 24
    iget p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->b:I
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->y(I)V
    goto/16 :L31
  :L11
  .line 25
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->v()V
    goto/16 :L31
  :L12
    const/16 v0, 14
    if-ne p1, v0, :L13
    const/4 v2, 1
  :L13
  .line 26
    invoke-direct { p0, v2 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->u(Z)V
    goto/16 :L31
  :L14
  .line 27
    sget p1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->i:I
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->w:Lcn/manstep/phonemirrorBox/BoxInterface/a$c;
    iget v0, v0, Lcn/manstep/phonemirrorBox/BoxInterface/a$c;->a:I
    if-eq p1, v0, :L31
  .line 28
    sput v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->i:I
  .line 29
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->h:Ld/b/a/c;
    invoke-direct { p0, v0, v3 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c(IZ)Ld/b/a/a;
    move-result-object v0
    invoke-virtual { p1, v0 }, Ld/b/a/c;->h(Ld/b/a/a;)V
    goto/16 :L31
  :L15
  .line 30
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "BoxAudioPlayer,onAudioProcess: AUDIO_OUTPUT_STOP,"
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->k()I
    move-result v0
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v0, ",SessionId="
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->i()Ld/b/a/b;
    move-result-object v0
    invoke-virtual { v0 }, Ld/b/a/b;->y()I
    move-result v0
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 31
    iget p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->a:I
    if-ne p1, v1, :L16
  .line 32
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->z()V
  .line 33
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->s()V
    goto :L17
  :L16
  .line 34
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;
    invoke-virtual { p1 }, Ld/b/a/b;->i()V
  :L17
  .line 35
    iget p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->a:I
    if-ne p1, v3, :L31
    iget p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->b:I
    if-eq p1, v1, :L18
    if-ne p1, v4, :L31
  :L18
  .line 36
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->x()V
    goto/16 :L31
  :L19
  .line 37
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct { v5 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v6, "BoxAudioPlayer,onAudioProcess: AUDIO_OUTPUT_START audioCtrlCmd="
    invoke-virtual { v5, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v5, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v5 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 38
    iget p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->a:I
    if-ne p1, v1, :L21
    const-string p1, "onAudioProcess: AUDIO_ALTERNATE Start"
  .line 39
    invoke-static { v0, p1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 40
    sget-boolean p1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->r:Z
    if-eqz p1, :L20
  .line 41
    iget p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->b:I
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->r(I)V
    goto/16 :L31
  :L20
  .line 42
    iget p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->b:I
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->y(I)V
    goto/16 :L31
  :L21
  .line 43
    sget-boolean v5, Lcn/manstep/phonemirrorBox/BoxInterface/a;->o:Z
    if-eqz v5, :L22
  .line 44
    iget p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->b:I
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->m(I)V
    goto/16 :L31
  :L22
  .line 45
    sget-boolean v5, Lcn/manstep/phonemirrorBox/BoxInterface/a;->p:Z
    if-eqz v5, :L23
  .line 46
    iget p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->b:I
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->p(I)V
    goto/16 :L31
  :L23
  .line 47
    sget-boolean v5, Lcn/manstep/phonemirrorBox/BoxInterface/a;->q:Z
    if-eqz v5, :L24
  .line 48
    iget p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->b:I
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->o(I)V
    goto/16 :L31
  :L24
  .line 49
    sget-boolean v5, Lcn/manstep/phonemirrorBox/BoxInterface/a;->j:Z
    if-eqz v5, :L25
  .line 50
    iget p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->b:I
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->n(I)V
    goto/16 :L31
  :L25
    if-ne p1, v3, :L27
  .line 51
    iget p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->b:I
    if-eq p1, v1, :L26
    if-ne p1, v4, :L27
  :L26
  .line 52
    iget p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->b:I
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->n(I)V
  .line 53
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->w()V
    goto/16 :L31
  :L27
  .line 54
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "onAudioProcess: ==============index="
    invoke-virtual { p1, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->k()I
    move-result v1
    invoke-virtual { p1, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { v0, p1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 55
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;
    iget v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->b:I
    invoke-direct { p0, v0, v2 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c(IZ)Ld/b/a/a;
    move-result-object v0
    invoke-virtual { p1, v0 }, Ld/b/a/b;->c(Ld/b/a/a;)V
    goto/16 :L31
  :L28
    if-ne v0, v4, :L29
  .line 56
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;
    move-result-object p1
    invoke-virtual { p1, v5 }, Ljava/nio/ByteBuffer;->getFloat(I)F
    move-result p1
  .line 57
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "BoxAudioPlayer,onAudioProcess: change volume duration: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    const-string p1, ", AudioSessionId="
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;
    invoke-virtual { v1 }, Ld/b/a/b;->y()I
    move-result v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->h(Ljava/lang/String;)V
  .line 58
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "BoxAudioPlayer,onAudioProcess: Lower the volume: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-object v1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->w:Lcn/manstep/phonemirrorBox/BoxInterface/a$c;
    iget v1, v1, Lcn/manstep/phonemirrorBox/BoxInterface/a$c;->d:F
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->c:Ld/b/a/b;
    invoke-virtual { p1 }, Ld/b/a/b;->y()I
    move-result p1
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p1, " "
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->h(Ljava/lang/String;)V
    goto :L31
  :L29
    if-ne v1, v3, :L30
    goto :L31
  :L30
  .line 59
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B
    move-result-object v0
    sget-object v1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->w:Lcn/manstep/phonemirrorBox/BoxInterface/a$c;
    iget v1, v1, Lcn/manstep/phonemirrorBox/BoxInterface/a$c;->c:I
    invoke-direct { p0, v0, v5, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->a([BII)V
  .line 60
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->w:Lcn/manstep/phonemirrorBox/BoxInterface/a$c;
    iget v0, v0, Lcn/manstep/phonemirrorBox/BoxInterface/a$c;->a:I
    sget v1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->i:I
    if-ne v0, v1, :L31
    sget-boolean v0, Lcn/manstep/phonemirrorBox/p;->H:Z
    if-eqz v0, :L31
  .line 61
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->h:Ld/b/a/c;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B
    move-result-object p1
    sget-object v1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->w:Lcn/manstep/phonemirrorBox/BoxInterface/a$c;
    iget v1, v1, Lcn/manstep/phonemirrorBox/BoxInterface/a$c;->c:I
    invoke-virtual { v0, p1, v5, v1 }, Ld/b/a/c;->e([BII)V
  :L31
    return-void
  :L32
  .packed-switch 1
    :L19
    :L15
    :L14
    :L12
    :L11
    :L10
    :L9
    :L8
    :L7
    :L6
    :L5
    :L4
    :L3
    :L12
    :L2
    :L1
  .end packed-switch
.end method
