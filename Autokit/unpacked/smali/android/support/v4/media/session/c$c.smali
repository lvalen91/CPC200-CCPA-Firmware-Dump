.class public Landroid/support/v4/media/session/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroid/support/v4/media/session/c;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 9
  name = "c"
.end annotation

.method public static a(Ljava/lang/Object;)Landroid/media/AudioAttributes;
  .registers 1
  .line 1
    check-cast p0, Landroid/media/session/MediaController$PlaybackInfo;
    invoke-virtual { p0 }, Landroid/media/session/MediaController$PlaybackInfo;->getAudioAttributes()Landroid/media/AudioAttributes;
    move-result-object p0
    return-object p0
.end method

.method public static b(Ljava/lang/Object;)I
  .registers 1
  .line 1
    invoke-static { p0 }, Landroid/support/v4/media/session/c$c;->a(Ljava/lang/Object;)Landroid/media/AudioAttributes;
    move-result-object p0
  .line 2
    invoke-static { p0 }, Landroid/support/v4/media/session/c$c;->c(Landroid/media/AudioAttributes;)I
    move-result p0
    return p0
.end method

.method private static c(Landroid/media/AudioAttributes;)I
  .registers 4
  .line 1
    invoke-virtual { p0 }, Landroid/media/AudioAttributes;->getFlags()I
    move-result v0
    const/4 v1, 1
    and-int/2addr v0, v1
    if-ne v0, v1, :L0
    const/4 p0, 7
    return p0
  :L0
  .line 2
    invoke-virtual { p0 }, Landroid/media/AudioAttributes;->getFlags()I
    move-result v0
    const/4 v2, 4
    and-int/2addr v0, v2
    if-ne v0, v2, :L1
    const/4 p0, 6
    return p0
  :L1
  .line 3
    invoke-virtual { p0 }, Landroid/media/AudioAttributes;->getUsage()I
    move-result p0
    const/16 v0, 13
    if-eq p0, v0, :L7
    packed-switch p0, :L8
    const/4 p0, 3
    return p0
  :L2
    const/4 p0, 2
    return p0
  :L3
    const/4 p0, 5
    return p0
  :L4
    return v2
  :L5
    const/16 p0, 8
    return p0
  :L6
    const/4 p0, 0
    return p0
  :L7
    return v1
  :L8
  .packed-switch 2
    :L6
    :L5
    :L4
    :L3
    :L2
    :L3
    :L3
    :L3
    :L3
  .end packed-switch
.end method
