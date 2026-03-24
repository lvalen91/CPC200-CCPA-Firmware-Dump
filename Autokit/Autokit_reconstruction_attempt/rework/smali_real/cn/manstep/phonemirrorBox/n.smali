.class public Lcn/manstep/phonemirrorBox/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/manstep/phonemirrorBox/n$c;
    }
.end annotation


# static fields
.field private static final i:[Ljava/lang/String;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcn/manstep/phonemirrorBox/u0/d;

.field private final c:Ljava/lang/Runnable;

.field private d:Lcn/manstep/phonemirrorBox/n$c;

.field private e:Z

.field private f:Z

.field private final g:Landroid/content/BroadcastReceiver;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v0, 0x21

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.nwd.action.ACTION_KEY_VALUE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.microntek.irkeyUp"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.microntek.irkeyDown"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android.media.STREAM_MUTE_CHANGED_ACTION"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.winca.service.Setting.KEY_ACTION"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "android.intent.action.C3_HARDKEY"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "IKeyClick.KEY_CLICK"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.tencent.qqmusiccar.action.MEDIA_BUTTON_INNER_MUSICMEDIA"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.tencent.qqmusiccar.action.MEDIA_BUTTON_INNER_ONKEY"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "cn.kuwo.player.imcs.action.MUSIC_CONTROL"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "kuwo.musichd_car.pre"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "kuwo.musichd_car.next"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "kuwo.musichd_car.playing"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "kuwo.play.playing"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "kuwo.play.pre"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "kuwo.play.next"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "cn.kuwo.kwmusicauto.action.MEDIA_BUTTON"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "com.eryanet.action.hk.vr"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "com.eryanet.music.prev"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "com.eryanet.music.next"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "com.eryanet.media.playorpause"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "com.eryanet.media.play"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "com.eryanet.media.pause"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "com.eryanet.link.connected"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "com.bz.action.phone.pickup"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "com.bz.action.phone.hangup"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "android.intent.action.MEDIA_PREVIOUS_DOWN"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "android.intent.action.MEDIA_NEXT_DOWN"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "android.intent.action.VOICE_ASSIST1_DOWN"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "android.intent.action.CALL_DOWN"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "android.intent.action.ENDCALL_DOWN"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "android.intent.action.VOICE_ASSIST_DOWN"

    aput-object v2, v0, v1

    .line 1
    sput-object v0, Lcn/manstep/phonemirrorBox/n;->i:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcn/manstep/phonemirrorBox/n$a;

    invoke-direct {v0, p0}, Lcn/manstep/phonemirrorBox/n$a;-><init>(Lcn/manstep/phonemirrorBox/n;)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/n;->c:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/n;->f:Z

    .line 4
    new-instance v1, Lcn/manstep/phonemirrorBox/n$b;

    invoke-direct {v1, p0}, Lcn/manstep/phonemirrorBox/n$b;-><init>(Lcn/manstep/phonemirrorBox/n;)V

    iput-object v1, p0, Lcn/manstep/phonemirrorBox/n;->g:Landroid/content/BroadcastReceiver;

    .line 5
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/n;->h:Z

    .line 6
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/n;->a:Ljava/lang/ref/WeakReference;

    .line 7
    new-instance p1, Lcn/manstep/phonemirrorBox/u0/d;

    invoke-direct {p1}, Lcn/manstep/phonemirrorBox/u0/d;-><init>()V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/n;->b:Lcn/manstep/phonemirrorBox/u0/d;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/manstep/phonemirrorBox/n$c;)V
    .registers 3

    .line 8
    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/n;-><init>(Landroid/content/Context;)V

    .line 9
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/n;->d:Lcn/manstep/phonemirrorBox/n$c;

    return-void
.end method

.method static synthetic a(Lcn/manstep/phonemirrorBox/n;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcn/manstep/phonemirrorBox/n;->e:Z

    return p0
.end method

.method static synthetic b(Lcn/manstep/phonemirrorBox/n;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/n;->e:Z

    return p1
.end method

.method static synthetic c(Lcn/manstep/phonemirrorBox/n;Landroid/content/Intent;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/n;->l(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic d(Lcn/manstep/phonemirrorBox/n;)Lcn/manstep/phonemirrorBox/n$c;
    .registers 1

    .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/n;->d:Lcn/manstep/phonemirrorBox/n$c;

    return-object p0
.end method

.method static synthetic e(Lcn/manstep/phonemirrorBox/n;Landroid/content/Intent;)I
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/n;->i(Landroid/content/Intent;)I

    move-result p0

    return p0
.end method

.method static synthetic f(Lcn/manstep/phonemirrorBox/n;Landroid/content/Intent;)I
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/n;->j(Landroid/content/Intent;)I

    move-result p0

    return p0
.end method

.method static synthetic g(Lcn/manstep/phonemirrorBox/n;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcn/manstep/phonemirrorBox/n;->f:Z

    return p0
.end method

.method static synthetic h(Lcn/manstep/phonemirrorBox/n;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/n;->f:Z

    return p1
.end method

.method private i(Landroid/content/Intent;)I
    .registers 5

    const-string v0, "android.intent.extra.c3_hardkey_action"

    const/4 v1, -0x1

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "android.intent.extra.c3_hardkey_keycode"

    .line 2
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_16

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/n;->e:Z

    if-eq p1, v1, :cond_21

    return p1

    :cond_16
    if-nez v0, :cond_21

    .line 4
    iget-boolean p1, p0, Lcn/manstep/phonemirrorBox/n;->e:Z

    if-eqz p1, :cond_1f

    .line 5
    iput-boolean v2, p0, Lcn/manstep/phonemirrorBox/n;->f:Z

    goto :goto_21

    .line 6
    :cond_1f
    iput-boolean v2, p0, Lcn/manstep/phonemirrorBox/n;->e:Z

    :cond_21
    :goto_21
    return v1
.end method

.method private j(Landroid/content/Intent;)I
    .registers 4

    const-string v0, "CLICK_KEY"

    const/4 v1, -0x1

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method private k(II)V
    .registers 6

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/c;->n()Lcn/manstep/phonemirrorBox/f0/c;

    move-result-object p2

    invoke-virtual {p2}, Lcn/manstep/phonemirrorBox/f0/a;->b()I

    move-result p2

    if-eq p1, p2, :cond_32

    .line 2
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/b;->j()Lcn/manstep/phonemirrorBox/f0/b;

    move-result-object p2

    invoke-virtual {p2}, Lcn/manstep/phonemirrorBox/f0/a;->b()I

    move-result p2

    if-eq p1, p2, :cond_32

    .line 3
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/f;->j()Lcn/manstep/phonemirrorBox/f0/f;

    move-result-object p2

    invoke-virtual {p2}, Lcn/manstep/phonemirrorBox/f0/a;->b()I

    move-result p2

    if-eq p1, p2, :cond_32

    .line 4
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/e;->j()Lcn/manstep/phonemirrorBox/f0/e;

    move-result-object p2

    invoke-virtual {p2}, Lcn/manstep/phonemirrorBox/f0/a;->b()I

    move-result p2

    if-eq p1, p2, :cond_32

    .line 5
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/g;->j()Lcn/manstep/phonemirrorBox/f0/g;

    move-result-object p2

    invoke-virtual {p2}, Lcn/manstep/phonemirrorBox/f0/a;->b()I

    move-result p2

    if-ne p1, p2, :cond_46

    .line 6
    :cond_32
    invoke-static {}, Lcn/manstep/phonemirrorBox/util/j;->c()Lcn/manstep/phonemirrorBox/util/j;

    move-result-object p1

    const-string p2, "VolumeChanged"

    invoke-virtual {p1, p2}, Lcn/manstep/phonemirrorBox/util/j;->b(Ljava/lang/String;)Lcn/manstep/phonemirrorBox/util/j;

    .line 7
    invoke-static {}, Lcn/manstep/phonemirrorBox/util/j;->c()Lcn/manstep/phonemirrorBox/util/j;

    move-result-object p1

    const-wide/16 v0, 0x5dc

    iget-object v2, p0, Lcn/manstep/phonemirrorBox/n;->c:Ljava/lang/Runnable;

    invoke-virtual {p1, p2, v0, v1, v2}, Lcn/manstep/phonemirrorBox/util/j;->e(Ljava/lang/String;JLjava/lang/Runnable;)Lcn/manstep/phonemirrorBox/util/j;

    :cond_46
    return-void
.end method

.method private l(Landroid/content/Intent;)V
    .registers 5

    const-string v0, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    .line 2
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 3
    invoke-direct {p0, v0, p1}, Lcn/manstep/phonemirrorBox/n;->k(II)V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVolumeChanged: type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",value="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarButtonListener"

    invoke-static {v0, p1}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public m()V
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "register: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcn/manstep/phonemirrorBox/n;->h:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CarButtonListener"

    invoke-static {v2, v0}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/n;->h:Z

    if-eqz v0, :cond_1d

    return-void

    .line 3
    :cond_1d
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/n;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_76

    .line 4
    :try_start_25
    invoke-static {}, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;

    move-result-object v0

    iget-object v3, p0, Lcn/manstep/phonemirrorBox/n;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcn/manstep/phonemirrorBox/u0/c;->t(Landroid/content/Context;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_34} :catch_37
    .catch Ljava/lang/Error; {:try_start_25 .. :try_end_34} :catch_35

    goto :goto_4e

    :catch_35
    move-exception v0

    goto :goto_38

    :catch_37
    move-exception v0

    .line 5
    :goto_38
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->g(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :goto_4e
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 7
    sget-object v1, Lcn/manstep/phonemirrorBox/n;->i:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_57
    if-ge v3, v2, :cond_61

    aget-object v4, v1, v3

    .line 8
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_57

    :cond_61
    const/16 v1, 0x3e8

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 10
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/n;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcn/manstep/phonemirrorBox/n;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/n;->h:Z

    .line 12
    :cond_76
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/n;->b:Lcn/manstep/phonemirrorBox/u0/d;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/n;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/manstep/phonemirrorBox/u0/d;->b(Landroid/content/Context;)V

    return-void
.end method

.method public n()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/n;->h:Z

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/n;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/n;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/n;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/n;->h:Z

    .line 5
    :cond_1d
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/n;->b:Lcn/manstep/phonemirrorBox/u0/d;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/n;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/manstep/phonemirrorBox/u0/d;->c(Landroid/content/Context;)V

    .line 6
    invoke-static {}, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/u0/c;->z()V

    return-void
.end method
