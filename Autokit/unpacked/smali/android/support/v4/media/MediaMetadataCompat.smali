.class public final Landroid/support/v4/media/MediaMetadataCompat;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroid/support/v4/media/MediaMetadataCompat$b;
  }
.end annotation

.field public final static CREATOR:Landroid/os/Parcelable$Creator;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Landroid/os/Parcelable$Creator<",
      "Landroid/support/v4/media/MediaMetadataCompat;",
      ">;"
    }
  .end annotation
.end field

.field final static d:Lc/d/a;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Lc/d/a<",
      "Ljava/lang/String;",
      "Ljava/lang/Integer;",
      ">;"
    }
  .end annotation
.end field

.field final b:Landroid/os/Bundle;

.field private c:Ljava/lang/Object;

.method static constructor <clinit>()V
  .registers 6
  .line 1
    new-instance v0, Lc/d/a;
    invoke-direct { v0 }, Lc/d/a;-><init>()V
    sput-object v0, Landroid/support/v4/media/MediaMetadataCompat;->d:Lc/d/a;
    const/4 v1, 1
  .line 2
    invoke-static { v1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    const-string v2, "android.media.metadata.TITLE"
    invoke-virtual { v0, v2, v1 }, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 3
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->d:Lc/d/a;
    const-string v2, "android.media.metadata.ARTIST"
    invoke-virtual { v0, v2, v1 }, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 4
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->d:Lc/d/a;
    const/4 v2, 0
    invoke-static { v2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    const-string v3, "android.media.metadata.DURATION"
    invoke-virtual { v0, v3, v2 }, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 5
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->d:Lc/d/a;
    const-string v3, "android.media.metadata.ALBUM"
    invoke-virtual { v0, v3, v1 }, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 6
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->d:Lc/d/a;
    const-string v3, "android.media.metadata.AUTHOR"
    invoke-virtual { v0, v3, v1 }, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 7
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->d:Lc/d/a;
    const-string v3, "android.media.metadata.WRITER"
    invoke-virtual { v0, v3, v1 }, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 8
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->d:Lc/d/a;
    const-string v3, "android.media.metadata.COMPOSER"
    invoke-virtual { v0, v3, v1 }, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 9
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->d:Lc/d/a;
    const-string v3, "android.media.metadata.COMPILATION"
    invoke-virtual { v0, v3, v1 }, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 10
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->d:Lc/d/a;
    const-string v3, "android.media.metadata.DATE"
    invoke-virtual { v0, v3, v1 }, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 11
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->d:Lc/d/a;
    const-string v3, "android.media.metadata.YEAR"
    invoke-virtual { v0, v3, v2 }, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 12
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->d:Lc/d/a;
    const-string v3, "android.media.metadata.GENRE"
    invoke-virtual { v0, v3, v1 }, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 13
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->d:Lc/d/a;
    const-string v3, "android.media.metadata.TRACK_NUMBER"
    invoke-virtual { v0, v3, v2 }, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 14
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->d:Lc/d/a;
    const-string v3, "android.media.metadata.NUM_TRACKS"
    invoke-virtual { v0, v3, v2 }, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 15
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->d:Lc/d/a;
    const-string v3, "android.media.metadata.DISC_NUMBER"
    invoke-virtual { v0, v3, v2 }, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 16
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->d:Lc/d/a;
    const-string v3, "android.media.metadata.ALBUM_ARTIST"
    invoke-virtual { v0, v3, v1 }, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 17
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->d:Lc/d/a;
    const/4 v3, 2
    invoke-static { v3 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v3
    const-string v4, "android.media.metadata.ART"
    invoke-virtual { v0, v4, v3 }, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 18
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->d:Lc/d/a;
    const-string v4, "android.media.metadata.ART_URI"
    invoke-virtual { v0, v4, v1 }, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 19
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->d:Lc/d/a;
    const-string v4, "android.media.metadata.ALBUM_ART"
    invoke-virtual { v0, v4, v3 }, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 20
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->d:Lc/d/a;
    const-string v4, "android.media.metadata.ALBUM_ART_URI"
    invoke-virtual { v0, v4, v1 }, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 21
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->d:Lc/d/a;
    const/4 v4, 3
    invoke-static { v4 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    const-string v5, "android.media.metadata.USER_RATING"
    invoke-virtual { v0, v5, v4 }, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 22
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->d:Lc/d/a;
    const-string v5, "android.media.metadata.RATING"
    invoke-virtual { v0, v5, v4 }, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 23
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->d:Lc/d/a;
    const-string v4, "android.media.metadata.DISPLAY_TITLE"
    invoke-virtual { v0, v4, v1 }, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 24
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->d:Lc/d/a;
    const-string v4, "android.media.metadata.DISPLAY_SUBTITLE"
    invoke-virtual { v0, v4, v1 }, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 25
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->d:Lc/d/a;
    const-string v4, "android.media.metadata.DISPLAY_DESCRIPTION"
    invoke-virtual { v0, v4, v1 }, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 26
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->d:Lc/d/a;
    const-string v4, "android.media.metadata.DISPLAY_ICON"
    invoke-virtual { v0, v4, v3 }, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 27
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->d:Lc/d/a;
    const-string v3, "android.media.metadata.DISPLAY_ICON_URI"
    invoke-virtual { v0, v3, v1 }, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 28
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->d:Lc/d/a;
    const-string v3, "android.media.metadata.MEDIA_ID"
    invoke-virtual { v0, v3, v1 }, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 29
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->d:Lc/d/a;
    const-string v3, "android.media.metadata.BT_FOLDER_TYPE"
    invoke-virtual { v0, v3, v2 }, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 30
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->d:Lc/d/a;
    const-string v3, "android.media.metadata.MEDIA_URI"
    invoke-virtual { v0, v3, v1 }, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 31
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->d:Lc/d/a;
    const-string v1, "android.media.metadata.ADVERTISEMENT"
    invoke-virtual { v0, v1, v2 }, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 32
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->d:Lc/d/a;
    const-string v1, "android.media.metadata.DOWNLOAD_STATUS"
    invoke-virtual { v0, v1, v2 }, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 33
    new-instance v0, Landroid/support/v4/media/MediaMetadataCompat$a;
    invoke-direct { v0 }, Landroid/support/v4/media/MediaMetadataCompat$a;-><init>()V
    sput-object v0, Landroid/support/v4/media/MediaMetadataCompat;->CREATOR:Landroid/os/Parcelable$Creator;
    return-void
.end method

.method constructor <init>(Landroid/os/Bundle;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Landroid/os/Bundle;
    invoke-direct { v0, p1 }, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V
    iput-object v0, p0, Landroid/support/v4/media/MediaMetadataCompat;->b:Landroid/os/Bundle;
  .line 3
    invoke-static { v0 }, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
  .registers 3
  .line 4
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 5
    const-class v0, Landroid/support/v4/media/session/MediaSessionCompat;
    invoke-virtual { v0 }, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;
    move-result-object p1
    iput-object p1, p0, Landroid/support/v4/media/MediaMetadataCompat;->b:Landroid/os/Bundle;
    return-void
.end method

.method public static k(Ljava/lang/Object;)Landroid/support/v4/media/MediaMetadataCompat;
  .registers 3
    if-eqz p0, :L0
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L0
  .line 2
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
    const/4 v1, 0
  .line 3
    invoke-static { p0, v0, v1 }, Landroid/support/v4/media/f;->a(Ljava/lang/Object;Landroid/os/Parcel;I)V
  .line 4
    invoke-virtual { v0, v1 }, Landroid/os/Parcel;->setDataPosition(I)V
  .line 5
    sget-object v1, Landroid/support/v4/media/MediaMetadataCompat;->CREATOR:Landroid/os/Parcelable$Creator;
    invoke-interface { v1, v0 }, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroid/support/v4/media/MediaMetadataCompat;
  .line 6
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
  .line 7
    iput-object p0, v1, Landroid/support/v4/media/MediaMetadataCompat;->c:Ljava/lang/Object;
    return-object v1
  :L0
    const/4 p0, 0
    return-object p0
.end method

.method public describeContents()I
  .registers 2
    const/4 v0, 0
    return v0
.end method

.method public j(Ljava/lang/String;)Z
  .registers 3
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaMetadataCompat;->b:Landroid/os/Bundle;
    invoke-virtual { v0, p1 }, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
    move-result p1
    return p1
.end method

.method public l()Landroid/os/Bundle;
  .registers 3
  .line 1
    new-instance v0, Landroid/os/Bundle;
    iget-object v1, p0, Landroid/support/v4/media/MediaMetadataCompat;->b:Landroid/os/Bundle;
    invoke-direct { v0, v1 }, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V
    return-object v0
.end method

.method public m(Ljava/lang/String;)J
  .registers 5
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaMetadataCompat;->b:Landroid/os/Bundle;
    const-wide/16 v1, 0
    invoke-virtual { v0, p1, v1, v2 }, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J
    move-result-wide v0
    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
  .registers 3
  .line 1
    iget-object p2, p0, Landroid/support/v4/media/MediaMetadataCompat;->b:Landroid/os/Bundle;
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V
    return-void
.end method
