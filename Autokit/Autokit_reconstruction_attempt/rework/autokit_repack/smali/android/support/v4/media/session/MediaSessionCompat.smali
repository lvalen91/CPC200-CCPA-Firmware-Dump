.class public Landroid/support/v4/media/session/MediaSessionCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaSessionCompat$h;,
        Landroid/support/v4/media/session/MediaSessionCompat$g;,
        Landroid/support/v4/media/session/MediaSessionCompat$f;,
        Landroid/support/v4/media/session/MediaSessionCompat$e;,
        Landroid/support/v4/media/session/MediaSessionCompat$i;,
        Landroid/support/v4/media/session/MediaSessionCompat$d;,
        Landroid/support/v4/media/session/MediaSessionCompat$j;,
        Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;,
        Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;,
        Landroid/support/v4/media/session/MediaSessionCompat$Token;,
        Landroid/support/v4/media/session/MediaSessionCompat$c;
    }
.end annotation


# static fields
.field static c:I


# instance fields
.field private final a:Landroid/support/v4/media/session/MediaSessionCompat$d;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/media/session/MediaSessionCompat$j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/support/v4/media/session/MediaSessionCompat;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2
    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/session/MediaSessionCompat;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;Landroid/os/Bundle;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;Landroid/os/Bundle;)V
    .registers 8

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->b:Ljava/util/ArrayList;

    if-eqz p1, :cond_a5

    .line 5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9d

    if-nez p3, :cond_18

    .line 6
    invoke-static {p1}, Landroidx/media/f/a;->a(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object p3

    :cond_18
    if-eqz p3, :cond_2b

    if-nez p4, :cond_2b

    .line 7
    new-instance p4, Landroid/content/Intent;

    const-string v0, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {p4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p4, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v0, 0x0

    .line 9
    invoke-static {p1, v0, p4, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p4

    .line 10
    :cond_2b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_46

    .line 11
    new-instance p3, Landroid/support/v4/media/session/MediaSessionCompat$h;

    invoke-direct {p3, p1, p2, p5}, Landroid/support/v4/media/session/MediaSessionCompat$h;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    iput-object p3, p0, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/support/v4/media/session/MediaSessionCompat$d;

    .line 12
    new-instance p2, Landroid/support/v4/media/session/MediaSessionCompat$a;

    invoke-direct {p2, p0}, Landroid/support/v4/media/session/MediaSessionCompat$a;-><init>(Landroid/support/v4/media/session/MediaSessionCompat;)V

    invoke-virtual {p0, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->f(Landroid/support/v4/media/session/MediaSessionCompat$c;)V

    .line 13
    iget-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/support/v4/media/session/MediaSessionCompat$d;

    invoke-interface {p2, p4}, Landroid/support/v4/media/session/MediaSessionCompat$d;->b(Landroid/app/PendingIntent;)V

    goto :goto_7e

    :cond_46
    const/16 v1, 0x15

    if-lt v0, v1, :cond_5f

    .line 14
    new-instance p3, Landroid/support/v4/media/session/MediaSessionCompat$g;

    invoke-direct {p3, p1, p2, p5}, Landroid/support/v4/media/session/MediaSessionCompat$g;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    iput-object p3, p0, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/support/v4/media/session/MediaSessionCompat$d;

    .line 15
    new-instance p2, Landroid/support/v4/media/session/MediaSessionCompat$b;

    invoke-direct {p2, p0}, Landroid/support/v4/media/session/MediaSessionCompat$b;-><init>(Landroid/support/v4/media/session/MediaSessionCompat;)V

    invoke-virtual {p0, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->f(Landroid/support/v4/media/session/MediaSessionCompat$c;)V

    .line 16
    iget-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/support/v4/media/session/MediaSessionCompat$d;

    invoke-interface {p2, p4}, Landroid/support/v4/media/session/MediaSessionCompat$d;->b(Landroid/app/PendingIntent;)V

    goto :goto_7e

    :cond_5f
    const/16 p5, 0x13

    if-lt v0, p5, :cond_6b

    .line 17
    new-instance p5, Landroid/support/v4/media/session/MediaSessionCompat$f;

    invoke-direct {p5, p1, p2, p3, p4}, Landroid/support/v4/media/session/MediaSessionCompat$f;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V

    iput-object p5, p0, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/support/v4/media/session/MediaSessionCompat$d;

    goto :goto_7e

    :cond_6b
    const/16 p5, 0x12

    if-lt v0, p5, :cond_77

    .line 18
    new-instance p5, Landroid/support/v4/media/session/MediaSessionCompat$e;

    invoke-direct {p5, p1, p2, p3, p4}, Landroid/support/v4/media/session/MediaSessionCompat$e;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V

    iput-object p5, p0, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/support/v4/media/session/MediaSessionCompat$d;

    goto :goto_7e

    .line 19
    :cond_77
    new-instance p5, Landroid/support/v4/media/session/MediaSessionCompat$i;

    invoke-direct {p5, p1, p2, p3, p4}, Landroid/support/v4/media/session/MediaSessionCompat$i;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V

    iput-object p5, p0, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/support/v4/media/session/MediaSessionCompat$d;

    .line 20
    :goto_7e
    new-instance p2, Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-direct {p2, p1, p0}, Landroid/support/v4/media/session/MediaControllerCompat;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat;)V

    .line 21
    sget p2, Landroid/support/v4/media/session/MediaSessionCompat;->c:I

    if-nez p2, :cond_9c

    const/4 p2, 0x1

    const/high16 p3, 0x43a00000    # 320.0f

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 23
    invoke-static {p2, p3, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    float-to-int p1, p1

    sput p1, Landroid/support/v4/media/session/MediaSessionCompat;->c:I

    :cond_9c
    return-void

    .line 24
    :cond_9d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "tag must not be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_a5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Landroid/os/Bundle;)V
    .registers 2

    if-eqz p0, :cond_b

    .line 1
    const-class v0, Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_b
    return-void
.end method

.method static c(Landroid/support/v4/media/session/PlaybackStateCompat;Landroid/support/v4/media/MediaMetadataCompat;)Landroid/support/v4/media/session/PlaybackStateCompat;
    .registers 16

    if-eqz p0, :cond_73

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->o()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_d

    goto :goto_73

    .line 2
    :cond_d
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->p()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_22

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->p()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_22

    .line 4
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->p()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_73

    .line 5
    :cond_22
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->l()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-lez v6, :cond_73

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 7
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->m()F

    move-result v6

    sub-long v0, v12, v0

    long-to-float v0, v0

    mul-float v6, v6, v0

    float-to-long v0, v6

    .line 8
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->o()J

    move-result-wide v6

    add-long/2addr v0, v6

    if-eqz p1, :cond_4d

    const-string v6, "android.media.metadata.DURATION"

    .line 9
    invoke-virtual {p1, v6}, Landroid/support/v4/media/MediaMetadataCompat;->j(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4d

    .line 10
    invoke-virtual {p1, v6}, Landroid/support/v4/media/MediaMetadataCompat;->m(Ljava/lang/String;)J

    move-result-wide v2

    :cond_4d
    cmp-long p1, v2, v4

    if-ltz p1, :cond_57

    cmp-long p1, v0, v2

    if-lez p1, :cond_57

    move-wide v9, v2

    goto :goto_5e

    :cond_57
    cmp-long p1, v0, v4

    if-gez p1, :cond_5d

    move-wide v9, v4

    goto :goto_5e

    :cond_5d
    move-wide v9, v0

    .line 11
    :goto_5e
    new-instance p1, Landroid/support/v4/media/session/PlaybackStateCompat$b;

    invoke-direct {p1, p0}, Landroid/support/v4/media/session/PlaybackStateCompat$b;-><init>(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 12
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->p()I

    move-result v8

    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->m()F

    move-result v11

    move-object v7, p1

    invoke-virtual/range {v7 .. v13}, Landroid/support/v4/media/session/PlaybackStateCompat$b;->c(IJFJ)Landroid/support/v4/media/session/PlaybackStateCompat$b;

    .line 13
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat$b;->a()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p0

    :cond_73
    :goto_73
    return-object p0
.end method


# virtual methods
.method public b()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .registers 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/support/v4/media/session/MediaSessionCompat$d;

    invoke-interface {v0}, Landroid/support/v4/media/session/MediaSessionCompat$d;->d()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/support/v4/media/session/MediaSessionCompat$d;

    invoke-interface {v0}, Landroid/support/v4/media/session/MediaSessionCompat$d;->a()V

    return-void
.end method

.method public e(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/support/v4/media/session/MediaSessionCompat$d;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$d;->c(Z)V

    .line 2
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/MediaSessionCompat$j;

    .line 3
    invoke-interface {v0}, Landroid/support/v4/media/session/MediaSessionCompat$j;->a()V

    goto :goto_b

    :cond_1b
    return-void
.end method

.method public f(Landroid/support/v4/media/session/MediaSessionCompat$c;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->g(Landroid/support/v4/media/session/MediaSessionCompat$c;Landroid/os/Handler;)V

    return-void
.end method

.method public g(Landroid/support/v4/media/session/MediaSessionCompat$c;Landroid/os/Handler;)V
    .registers 4

    if-nez p1, :cond_9

    .line 1
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/support/v4/media/session/MediaSessionCompat$d;

    const/4 p2, 0x0

    invoke-interface {p1, p2, p2}, Landroid/support/v4/media/session/MediaSessionCompat$d;->h(Landroid/support/v4/media/session/MediaSessionCompat$c;Landroid/os/Handler;)V

    goto :goto_16

    .line 2
    :cond_9
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/support/v4/media/session/MediaSessionCompat$d;

    if-eqz p2, :cond_e

    goto :goto_13

    :cond_e
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    :goto_13
    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$d;->h(Landroid/support/v4/media/session/MediaSessionCompat$c;Landroid/os/Handler;)V

    :goto_16
    return-void
.end method

.method public h(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/support/v4/media/session/MediaSessionCompat$d;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$d;->j(I)V

    return-void
.end method

.method public i(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/support/v4/media/session/MediaSessionCompat$d;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$d;->g(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    return-void
.end method
