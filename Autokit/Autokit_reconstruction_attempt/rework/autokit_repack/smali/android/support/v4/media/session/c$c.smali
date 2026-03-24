.class public Landroid/support/v4/media/session/c$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public static a(Ljava/lang/Object;)Landroid/media/AudioAttributes;
    .registers 1

    .line 1
    check-cast p0, Landroid/media/session/MediaController$PlaybackInfo;

    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/Object;)I
    .registers 1

    .line 1
    invoke-static {p0}, Landroid/support/v4/media/session/c$c;->a(Ljava/lang/Object;)Landroid/media/AudioAttributes;

    move-result-object p0

    .line 2
    invoke-static {p0}, Landroid/support/v4/media/session/c$c;->c(Landroid/media/AudioAttributes;)I

    move-result p0

    return p0
.end method

.method private static c(Landroid/media/AudioAttributes;)I
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    const/4 p0, 0x7

    return p0

    .line 2
    :cond_a
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v0

    const/4 v2, 0x4

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_14

    const/4 p0, 0x6

    return p0

    .line 3
    :cond_14
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result p0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_2b

    packed-switch p0, :pswitch_data_2c

    const/4 p0, 0x3

    return p0

    :pswitch_21
    const/4 p0, 0x2

    return p0

    :pswitch_23
    const/4 p0, 0x5

    return p0

    :pswitch_25
    return v2

    :pswitch_26
    const/16 p0, 0x8

    return p0

    :pswitch_29
    const/4 p0, 0x0

    return p0

    :cond_2b
    return v1

    :pswitch_data_2c
    .packed-switch 0x2
        :pswitch_29
        :pswitch_26
        :pswitch_25
        :pswitch_23
        :pswitch_21
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
    .end packed-switch
.end method
