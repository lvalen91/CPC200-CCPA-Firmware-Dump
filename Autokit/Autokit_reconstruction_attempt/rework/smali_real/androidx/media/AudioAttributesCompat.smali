.class public Landroidx/media/AudioAttributesCompat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/versionedparcelable/c;


# static fields
.field private static final b:Landroid/util/SparseIntArray;


# instance fields
.field a:Landroidx/media/AudioAttributesImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroidx/media/AudioAttributesCompat;->b:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3
    sget-object v0, Landroidx/media/AudioAttributesCompat;->b:Landroid/util/SparseIntArray;

    const/4 v1, 0x6

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 4
    sget-object v0, Landroidx/media/AudioAttributesCompat;->b:Landroid/util/SparseIntArray;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 5
    sget-object v0, Landroidx/media/AudioAttributesCompat;->b:Landroid/util/SparseIntArray;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 6
    sget-object v0, Landroidx/media/AudioAttributesCompat;->b:Landroid/util/SparseIntArray;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 7
    sget-object v0, Landroidx/media/AudioAttributesCompat;->b:Landroid/util/SparseIntArray;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(ZII)I
    .registers 6

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    if-eqz p0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x7

    :goto_9
    return v1

    :cond_a
    const/4 v0, 0x4

    and-int/2addr p1, v0

    const/4 v2, 0x0

    if-ne p1, v0, :cond_14

    if-eqz p0, :cond_12

    goto :goto_13

    :cond_12
    const/4 v2, 0x6

    :goto_13
    return v2

    :cond_14
    const/4 p1, 0x3

    packed-switch p2, :pswitch_data_4c

    :pswitch_18
    if-nez p0, :cond_30

    return p1

    :pswitch_1b
    return v1

    :pswitch_1c
    const/16 p0, 0xa

    return p0

    :pswitch_1f
    const/4 p0, 0x2

    return p0

    :pswitch_21
    const/4 p0, 0x5

    return p0

    :pswitch_23
    return v0

    :pswitch_24
    if-eqz p0, :cond_27

    goto :goto_29

    :cond_27
    const/16 v2, 0x8

    :goto_29
    :pswitch_29
    return v2

    :pswitch_2a
    return p1

    :pswitch_2b
    if-eqz p0, :cond_2f

    const/high16 p1, -0x80000000

    :cond_2f
    return p1

    .line 1
    :cond_30
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown usage value "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " in audio attributes"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_24
        :pswitch_23
        :pswitch_21
        :pswitch_1f
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_1c
        :pswitch_2a
        :pswitch_1b
        :pswitch_2a
        :pswitch_18
        :pswitch_2a
    .end packed-switch
.end method

.method static b(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_46

    .line 1
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown usage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_15
    const-string p0, "USAGE_ASSISTANT"

    return-object p0

    :pswitch_18
    const-string p0, "USAGE_GAME"

    return-object p0

    :pswitch_1b
    const-string p0, "USAGE_ASSISTANCE_SONIFICATION"

    return-object p0

    :pswitch_1e
    const-string p0, "USAGE_ASSISTANCE_NAVIGATION_GUIDANCE"

    return-object p0

    :pswitch_21
    const-string p0, "USAGE_ASSISTANCE_ACCESSIBILITY"

    return-object p0

    :pswitch_24
    const-string p0, "USAGE_NOTIFICATION_EVENT"

    return-object p0

    :pswitch_27
    const-string p0, "USAGE_NOTIFICATION_COMMUNICATION_DELAYED"

    return-object p0

    :pswitch_2a
    const-string p0, "USAGE_NOTIFICATION_COMMUNICATION_INSTANT"

    return-object p0

    :pswitch_2d
    const-string p0, "USAGE_NOTIFICATION_COMMUNICATION_REQUEST"

    return-object p0

    :pswitch_30
    const-string p0, "USAGE_NOTIFICATION_RINGTONE"

    return-object p0

    :pswitch_33
    const-string p0, "USAGE_NOTIFICATION"

    return-object p0

    :pswitch_36
    const-string p0, "USAGE_ALARM"

    return-object p0

    :pswitch_39
    const-string p0, "USAGE_VOICE_COMMUNICATION_SIGNALLING"

    return-object p0

    :pswitch_3c
    const-string p0, "USAGE_VOICE_COMMUNICATION"

    return-object p0

    :pswitch_3f
    const-string p0, "USAGE_MEDIA"

    return-object p0

    :pswitch_42
    const-string p0, "USAGE_UNKNOWN"

    return-object p0

    nop

    :pswitch_data_46
    .packed-switch 0x0
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
        :pswitch_3
        :pswitch_15
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 1
    instance-of v0, p1, Landroidx/media/AudioAttributesCompat;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2
    :cond_6
    check-cast p1, Landroidx/media/AudioAttributesCompat;

    .line 3
    iget-object v0, p0, Landroidx/media/AudioAttributesCompat;->a:Landroidx/media/AudioAttributesImpl;

    if-nez v0, :cond_12

    .line 4
    iget-object p1, p1, Landroidx/media/AudioAttributesCompat;->a:Landroidx/media/AudioAttributesImpl;

    if-nez p1, :cond_11

    const/4 v1, 0x1

    :cond_11
    return v1

    .line 5
    :cond_12
    iget-object p1, p1, Landroidx/media/AudioAttributesCompat;->a:Landroidx/media/AudioAttributesImpl;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/media/AudioAttributesCompat;->a:Landroidx/media/AudioAttributesImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/media/AudioAttributesCompat;->a:Landroidx/media/AudioAttributesImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
