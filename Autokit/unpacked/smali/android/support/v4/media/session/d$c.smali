.class Landroid/support/v4/media/session/d$c;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroid/support/v4/media/session/d;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = "c"
.end annotation

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
  .registers 1
  .line 1
    check-cast p0, Landroid/media/session/MediaSession$QueueItem;
    invoke-virtual { p0 }, Landroid/media/session/MediaSession$QueueItem;->getDescription()Landroid/media/MediaDescription;
    move-result-object p0
    return-object p0
.end method

.method public static b(Ljava/lang/Object;)J
  .registers 3
  .line 1
    check-cast p0, Landroid/media/session/MediaSession$QueueItem;
    invoke-virtual { p0 }, Landroid/media/session/MediaSession$QueueItem;->getQueueId()J
    move-result-wide v0
    return-wide v0
.end method
