.class public final Landroid/support/v4/media/session/MediaSessionCompat$Token;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroid/support/v4/media/session/MediaSessionCompat;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 25
  name = "Token"
.end annotation

.field public final static CREATOR:Landroid/os/Parcelable$Creator;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Landroid/os/Parcelable$Creator<",
      "Landroid/support/v4/media/session/MediaSessionCompat$Token;",
      ">;"
    }
  .end annotation
.end field

.field private final b:Ljava/lang/Object;

.field private c:Landroid/support/v4/media/session/b;

.field private d:Landroid/os/Bundle;

.method static constructor <clinit>()V
  .registers 1
  .line 1
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$Token$a;
    invoke-direct { v0 }, Landroid/support/v4/media/session/MediaSessionCompat$Token$a;-><init>()V
    sput-object v0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->CREATOR:Landroid/os/Parcelable$Creator;
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
  .registers 3
    const/4 v0, 0
  .line 1
    invoke-direct { p0, p1, v0, v0 }, Landroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Ljava/lang/Object;Landroid/support/v4/media/session/b;Landroid/os/Bundle;)V
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Landroid/support/v4/media/session/b;Landroid/os/Bundle;)V
  .registers 4
  .line 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 3
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->b:Ljava/lang/Object;
  .line 4
    iput-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->c:Landroid/support/v4/media/session/b;
  .line 5
    iput-object p3, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->d:Landroid/os/Bundle;
    return-void
.end method

.method public describeContents()I
  .registers 2
    const/4 v0, 0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
  .registers 5
    const/4 v0, 1
    if-ne p0, p1, :L0
    return v0
  :L0
  .line 1
    instance-of v1, p1, Landroid/support/v4/media/session/MediaSessionCompat$Token;
    const/4 v2, 0
    if-nez v1, :L1
    return v2
  :L1
  .line 2
    check-cast p1, Landroid/support/v4/media/session/MediaSessionCompat$Token;
  .line 3
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->b:Ljava/lang/Object;
    if-nez v1, :L4
  .line 4
    iget-object p1, p1, Landroid/support/v4/media/session/MediaSessionCompat$Token;->b:Ljava/lang/Object;
    if-nez p1, :L2
    goto :L3
  :L2
    const/4 v0, 0
  :L3
    return v0
  :L4
  .line 5
    iget-object p1, p1, Landroid/support/v4/media/session/MediaSessionCompat$Token;->b:Ljava/lang/Object;
    if-nez p1, :L5
    return v2
  :L5
  .line 6
    invoke-virtual { v1, p1 }, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    move-result p1
    return p1
.end method

.method public hashCode()I
  .registers 2
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->b:Ljava/lang/Object;
    if-nez v0, :L0
    const/4 v0, 0
    return v0
  :L0
  .line 2
    invoke-virtual { v0 }, Ljava/lang/Object;->hashCode()I
    move-result v0
    return v0
.end method

.method public j()Landroid/support/v4/media/session/b;
  .registers 2
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->c:Landroid/support/v4/media/session/b;
    return-object v0
.end method

.method public k()Landroid/os/Bundle;
  .registers 2
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->d:Landroid/os/Bundle;
    return-object v0
.end method

.method public l()Ljava/lang/Object;
  .registers 2
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->b:Ljava/lang/Object;
    return-object v0
.end method

.method public m(Landroid/support/v4/media/session/b;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->c:Landroid/support/v4/media/session/b;
    return-void
.end method

.method public n(Landroid/os/Bundle;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->d:Landroid/os/Bundle;
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
  .registers 5
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L0
  .line 2
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->b:Ljava/lang/Object;
    check-cast v0, Landroid/os/Parcelable;
    invoke-virtual { p1, v0, p2 }, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
    goto :L1
  :L0
  .line 3
    iget-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->b:Ljava/lang/Object;
    check-cast p2, Landroid/os/IBinder;
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
  :L1
    return-void
.end method
