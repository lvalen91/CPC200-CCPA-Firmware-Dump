.class public final Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroid/support/v4/media/session/MediaSessionCompat;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 25
  name = "QueueItem"
.end annotation

.field public final static CREATOR:Landroid/os/Parcelable$Creator;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Landroid/os/Parcelable$Creator<",
      "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
      ">;"
    }
  .end annotation
.end field

.field private final b:Landroid/support/v4/media/MediaDescriptionCompat;

.field private final c:J

.field private d:Ljava/lang/Object;

.method static constructor <clinit>()V
  .registers 1
  .line 1
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem$a;
    invoke-direct { v0 }, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem$a;-><init>()V
    sput-object v0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->CREATOR:Landroid/os/Parcelable$Creator;
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
  .registers 4
  .line 7
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 8
    sget-object v0, Landroid/support/v4/media/MediaDescriptionCompat;->CREATOR:Landroid/os/Parcelable$Creator;
    invoke-interface { v0, p1 }, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/support/v4/media/MediaDescriptionCompat;
    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->b:Landroid/support/v4/media/MediaDescriptionCompat;
  .line 9
    invoke-virtual { p1 }, Landroid/os/Parcel;->readLong()J
    move-result-wide v0
    iput-wide v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->c:J
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Landroid/support/v4/media/MediaDescriptionCompat;J)V
  .registers 8
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    if-eqz p2, :L1
    const-wide/16 v0, -1
    cmp-long v2, p3, v0
    if-eqz v2, :L0
  .line 2
    iput-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->b:Landroid/support/v4/media/MediaDescriptionCompat;
  .line 3
    iput-wide p3, p0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->c:J
  .line 4
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->d:Ljava/lang/Object;
    return-void
  :L0
  .line 5
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string p2, "Id cannot be QueueItem.UNKNOWN_ID"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
  :L1
  .line 6
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string p2, "Description cannot be null."
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public static j(Ljava/lang/Object;)Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;
  .registers 5
    if-eqz p0, :L1
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-ge v0, v1, :L0
    goto :L1
  :L0
  .line 2
    invoke-static { p0 }, Landroid/support/v4/media/session/d$c;->a(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
  .line 3
    invoke-static { v0 }, Landroid/support/v4/media/MediaDescriptionCompat;->j(Ljava/lang/Object;)Landroid/support/v4/media/MediaDescriptionCompat;
    move-result-object v0
  .line 4
    invoke-static { p0 }, Landroid/support/v4/media/session/d$c;->b(Ljava/lang/Object;)J
    move-result-wide v1
  .line 5
    new-instance v3, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;
    invoke-direct { v3, p0, v0, v1, v2 }, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;-><init>(Ljava/lang/Object;Landroid/support/v4/media/MediaDescriptionCompat;J)V
    return-object v3
  :L1
    const/4 p0, 0
    return-object p0
.end method

.method public static k(Ljava/util/List;)Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/List<",
      "*>;)",
      "Ljava/util/List<",
      "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
      ">;"
    }
  .end annotation
  .registers 3
    if-eqz p0, :L3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-ge v0, v1, :L0
    goto :L3
  :L0
  .line 2
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
  .line 3
    invoke-interface { p0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object p0
  :L1
    invoke-interface { p0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L2
    invoke-interface { p0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
  .line 4
    invoke-static { v1 }, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->j(Ljava/lang/Object;)Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;
    move-result-object v1
    invoke-interface { v0, v1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    goto :L1
  :L2
    return-object v0
  :L3
    const/4 p0, 0
    return-object p0
.end method

.method public describeContents()I
  .registers 2
    const/4 v0, 0
    return v0
.end method

.method public l()Landroid/support/v4/media/MediaDescriptionCompat;
  .registers 2
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->b:Landroid/support/v4/media/MediaDescriptionCompat;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
  .registers 4
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "MediaSession.QueueItem {Description="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->b:Landroid/support/v4/media/MediaDescriptionCompat;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v1, ", Id="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-wide v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->c:J
    invoke-virtual { v0, v1, v2 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    const-string v1, " }"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
  .registers 5
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->b:Landroid/support/v4/media/MediaDescriptionCompat;
    invoke-virtual { v0, p1, p2 }, Landroid/support/v4/media/MediaDescriptionCompat;->writeToParcel(Landroid/os/Parcel;I)V
  .line 2
    iget-wide v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->c:J
    invoke-virtual { p1, v0, v1 }, Landroid/os/Parcel;->writeLong(J)V
    return-void
.end method
