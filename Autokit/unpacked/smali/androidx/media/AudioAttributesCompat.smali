.class public Landroidx/media/AudioAttributesCompat;
.super Ljava/lang/Object;
.implements Landroidx/versionedparcelable/c;
.source "SourceFile"

.field private final static b:Landroid/util/SparseIntArray;

.field a:Landroidx/media/AudioAttributesImpl;

.method static constructor <clinit>()V
  .registers 4
  .line 1
    new-instance v0, Landroid/util/SparseIntArray;
    invoke-direct { v0 }, Landroid/util/SparseIntArray;-><init>()V
    sput-object v0, Landroidx/media/AudioAttributesCompat;->b:Landroid/util/SparseIntArray;
    const/4 v1, 5
    const/4 v2, 1
  .line 2
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->put(II)V
  .line 3
    sget-object v0, Landroidx/media/AudioAttributesCompat;->b:Landroid/util/SparseIntArray;
    const/4 v1, 6
    const/4 v3, 2
    invoke-virtual { v0, v1, v3 }, Landroid/util/SparseIntArray;->put(II)V
  .line 4
    sget-object v0, Landroidx/media/AudioAttributesCompat;->b:Landroid/util/SparseIntArray;
    const/4 v1, 7
    invoke-virtual { v0, v1, v3 }, Landroid/util/SparseIntArray;->put(II)V
  .line 5
    sget-object v0, Landroidx/media/AudioAttributesCompat;->b:Landroid/util/SparseIntArray;
    const/16 v1, 8
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->put(II)V
  .line 6
    sget-object v0, Landroidx/media/AudioAttributesCompat;->b:Landroid/util/SparseIntArray;
    const/16 v1, 9
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->put(II)V
  .line 7
    sget-object v0, Landroidx/media/AudioAttributesCompat;->b:Landroid/util/SparseIntArray;
    const/16 v1, 10
    invoke-virtual { v0, v1, v2 }, Landroid/util/SparseIntArray;->put(II)V
    return-void
.end method

.method constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method static a(ZII)I
  .registers 6
    and-int/lit8 v0, p1, 1
    const/4 v1, 1
    if-ne v0, v1, :L2
    if-eqz p0, :L0
    goto :L1
  :L0
    const/4 v1, 7
  :L1
    return v1
  :L2
    const/4 v0, 4
    and-int/2addr p1, v0
    const/4 v2, 0
    if-ne p1, v0, :L5
    if-eqz p0, :L3
    goto :L4
  :L3
    const/4 v2, 6
  :L4
    return v2
  :L5
    const/4 p1, 3
    packed-switch p2, :L19
  :L6
    if-nez p0, :L18
    return p1
  :L7
    return v1
  :L8
    const/16 p0, 10
    return p0
  :L9
    const/4 p0, 2
    return p0
  :L10
    const/4 p0, 5
    return p0
  :L11
    return v0
  :L12
    if-eqz p0, :L13
    goto :L14
  :L13
    const/16 v2, 8
  :L14
    return v2
  :L15
    return p1
  :L16
    if-eqz p0, :L17
    const/high16 p1, -32768
  :L17
    return p1
  :L18
  .line 1
    new-instance p0, Ljava/lang/IllegalArgumentException;
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "Unknown usage value "
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p2, " in audio attributes"
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { p0, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p0
  :L19
  .packed-switch 0
    :L16
    :L15
    :L14
    :L12
    :L11
    :L10
    :L9
    :L10
    :L10
    :L10
    :L10
    :L8
    :L15
    :L7
    :L15
    :L6
    :L15
  .end packed-switch
.end method

.method static b(I)Ljava/lang/String;
  .registers 3
    packed-switch p0, :L17
  :L0
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "unknown usage "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    return-object p0
  :L1
    const-string p0, "USAGE_ASSISTANT"
    return-object p0
  :L2
    const-string p0, "USAGE_GAME"
    return-object p0
  :L3
    const-string p0, "USAGE_ASSISTANCE_SONIFICATION"
    return-object p0
  :L4
    const-string p0, "USAGE_ASSISTANCE_NAVIGATION_GUIDANCE"
    return-object p0
  :L5
    const-string p0, "USAGE_ASSISTANCE_ACCESSIBILITY"
    return-object p0
  :L6
    const-string p0, "USAGE_NOTIFICATION_EVENT"
    return-object p0
  :L7
    const-string p0, "USAGE_NOTIFICATION_COMMUNICATION_DELAYED"
    return-object p0
  :L8
    const-string p0, "USAGE_NOTIFICATION_COMMUNICATION_INSTANT"
    return-object p0
  :L9
    const-string p0, "USAGE_NOTIFICATION_COMMUNICATION_REQUEST"
    return-object p0
  :L10
    const-string p0, "USAGE_NOTIFICATION_RINGTONE"
    return-object p0
  :L11
    const-string p0, "USAGE_NOTIFICATION"
    return-object p0
  :L12
    const-string p0, "USAGE_ALARM"
    return-object p0
  :L13
    const-string p0, "USAGE_VOICE_COMMUNICATION_SIGNALLING"
    return-object p0
  :L14
    const-string p0, "USAGE_VOICE_COMMUNICATION"
    return-object p0
  :L15
    const-string p0, "USAGE_MEDIA"
    return-object p0
  :L16
    const-string p0, "USAGE_UNKNOWN"
    return-object p0
  :L17
  .packed-switch 0
    :L16
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
    :L0
    :L1
  .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
  .registers 4
  .line 1
    instance-of v0, p1, Landroidx/media/AudioAttributesCompat;
    const/4 v1, 0
    if-nez v0, :L0
    return v1
  :L0
  .line 2
    check-cast p1, Landroidx/media/AudioAttributesCompat;
  .line 3
    iget-object v0, p0, Landroidx/media/AudioAttributesCompat;->a:Landroidx/media/AudioAttributesImpl;
    if-nez v0, :L2
  .line 4
    iget-object p1, p1, Landroidx/media/AudioAttributesCompat;->a:Landroidx/media/AudioAttributesImpl;
    if-nez p1, :L1
    const/4 v1, 1
  :L1
    return v1
  :L2
  .line 5
    iget-object p1, p1, Landroidx/media/AudioAttributesCompat;->a:Landroidx/media/AudioAttributesImpl;
    invoke-virtual { v0, p1 }, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    move-result p1
    return p1
.end method

.method public hashCode()I
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/media/AudioAttributesCompat;->a:Landroidx/media/AudioAttributesImpl;
    invoke-virtual { v0 }, Ljava/lang/Object;->hashCode()I
    move-result v0
    return v0
.end method

.method public toString()Ljava/lang/String;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/media/AudioAttributesCompat;->a:Landroidx/media/AudioAttributesImpl;
    invoke-virtual { v0 }, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method
