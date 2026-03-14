.class public final Landroid/support/v4/media/RatingCompat;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable;
.source "SourceFile"

.field public final static CREATOR:Landroid/os/Parcelable$Creator;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Landroid/os/Parcelable$Creator<",
      "Landroid/support/v4/media/RatingCompat;",
      ">;"
    }
  .end annotation
.end field

.field private final b:I

.field private final c:F

.field private d:Ljava/lang/Object;

.method static constructor <clinit>()V
  .registers 1
  .line 1
    new-instance v0, Landroid/support/v4/media/RatingCompat$a;
    invoke-direct { v0 }, Landroid/support/v4/media/RatingCompat$a;-><init>()V
    sput-object v0, Landroid/support/v4/media/RatingCompat;->CREATOR:Landroid/os/Parcelable$Creator;
    return-void
.end method

.method constructor <init>(IF)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput p1, p0, Landroid/support/v4/media/RatingCompat;->b:I
  .line 3
    iput p2, p0, Landroid/support/v4/media/RatingCompat;->c:F
    return-void
.end method

.method public static j(Ljava/lang/Object;)Landroid/support/v4/media/RatingCompat;
  .registers 5
    const/4 v0, 0
    if-eqz p0, :L6
  .line 1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 19
    if-lt v1, v2, :L6
  .line 2
    move-object v1, p0
    check-cast v1, Landroid/media/Rating;
    invoke-virtual { v1 }, Landroid/media/Rating;->getRatingStyle()I
    move-result v2
  .line 3
    invoke-virtual { v1 }, Landroid/media/Rating;->isRated()Z
    move-result v3
    if-eqz v3, :L4
    packed-switch v2, :L7
    return-object v0
  :L0
  .line 4
    invoke-virtual { v1 }, Landroid/media/Rating;->getPercentRating()F
    move-result v0
  .line 5
    invoke-static { v0 }, Landroid/support/v4/media/RatingCompat;->l(F)Landroid/support/v4/media/RatingCompat;
    move-result-object v0
    goto :L5
  :L1
  .line 6
    invoke-virtual { v1 }, Landroid/media/Rating;->getStarRating()F
    move-result v0
  .line 7
    invoke-static { v2, v0 }, Landroid/support/v4/media/RatingCompat;->m(IF)Landroid/support/v4/media/RatingCompat;
    move-result-object v0
    goto :L5
  :L2
  .line 8
    invoke-virtual { v1 }, Landroid/media/Rating;->isThumbUp()Z
    move-result v0
    invoke-static { v0 }, Landroid/support/v4/media/RatingCompat;->n(Z)Landroid/support/v4/media/RatingCompat;
    move-result-object v0
    goto :L5
  :L3
  .line 9
    invoke-virtual { v1 }, Landroid/media/Rating;->hasHeart()Z
    move-result v0
    invoke-static { v0 }, Landroid/support/v4/media/RatingCompat;->k(Z)Landroid/support/v4/media/RatingCompat;
    move-result-object v0
    goto :L5
  :L4
  .line 10
    invoke-static { v2 }, Landroid/support/v4/media/RatingCompat;->o(I)Landroid/support/v4/media/RatingCompat;
    move-result-object v0
  :L5
  .line 11
    iput-object p0, v0, Landroid/support/v4/media/RatingCompat;->d:Ljava/lang/Object;
  :L6
    return-object v0
  :L7
  .packed-switch 1
    :L3
    :L2
    :L1
    :L1
    :L1
    :L0
  .end packed-switch
.end method

.method public static k(Z)Landroid/support/v4/media/RatingCompat;
  .registers 3
  .line 1
    new-instance v0, Landroid/support/v4/media/RatingCompat;
    if-eqz p0, :L0
    const/high16 p0, 16256
    goto :L1
  :L0
    const/4 p0, 0
  :L1
    const/4 v1, 1
    invoke-direct { v0, v1, p0 }, Landroid/support/v4/media/RatingCompat;-><init>(IF)V
    return-object v0
.end method

.method public static l(F)Landroid/support/v4/media/RatingCompat;
  .registers 3
    const/4 v0, 0
    cmpg-float v0, p0, v0
    if-ltz v0, :L1
    const/high16 v0, 17096
    cmpl-float v0, p0, v0
    if-lez v0, :L0
    goto :L1
  :L0
  .line 1
    new-instance v0, Landroid/support/v4/media/RatingCompat;
    const/4 v1, 6
    invoke-direct { v0, v1, p0 }, Landroid/support/v4/media/RatingCompat;-><init>(IF)V
    return-object v0
  :L1
    const/4 p0, 0
    return-object p0
.end method

.method public static m(IF)Landroid/support/v4/media/RatingCompat;
  .registers 5
    const/4 v0, 3
    const/4 v1, 0
    if-eq p0, v0, :L2
    const/4 v0, 4
    if-eq p0, v0, :L1
    const/4 v0, 5
    if-eq p0, v0, :L0
  .line 1
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "Invalid rating style ("
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, p0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p0, ") for a star rating"
    invoke-virtual { p1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    return-object v1
  :L0
    const/high16 v0, 16544
    goto :L3
  :L1
    const/high16 v0, 16512
    goto :L3
  :L2
    const/high16 v0, 16448
  :L3
    const/4 v2, 0
    cmpg-float v2, p1, v2
    if-ltz v2, :L5
    cmpl-float v0, p1, v0
    if-lez v0, :L4
    goto :L5
  :L4
  .line 2
    new-instance v0, Landroid/support/v4/media/RatingCompat;
    invoke-direct { v0, p0, p1 }, Landroid/support/v4/media/RatingCompat;-><init>(IF)V
    return-object v0
  :L5
    return-object v1
.end method

.method public static n(Z)Landroid/support/v4/media/RatingCompat;
  .registers 3
  .line 1
    new-instance v0, Landroid/support/v4/media/RatingCompat;
    if-eqz p0, :L0
    const/high16 p0, 16256
    goto :L1
  :L0
    const/4 p0, 0
  :L1
    const/4 v1, 2
    invoke-direct { v0, v1, p0 }, Landroid/support/v4/media/RatingCompat;-><init>(IF)V
    return-object v0
.end method

.method public static o(I)Landroid/support/v4/media/RatingCompat;
  .registers 3
    packed-switch p0, :L1
    const/4 p0, 0
    return-object p0
  :L0
  .line 1
    new-instance v0, Landroid/support/v4/media/RatingCompat;
    const/high16 v1, -16512
    invoke-direct { v0, p0, v1 }, Landroid/support/v4/media/RatingCompat;-><init>(IF)V
    return-object v0
  :L1
  .packed-switch 1
    :L0
    :L0
    :L0
    :L0
    :L0
    :L0
  .end packed-switch
.end method

.method public describeContents()I
  .registers 2
  .line 1
    iget v0, p0, Landroid/support/v4/media/RatingCompat;->b:I
    return v0
.end method

.method public toString()Ljava/lang/String;
  .registers 4
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Rating:style="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Landroid/support/v4/media/RatingCompat;->b:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, " rating="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Landroid/support/v4/media/RatingCompat;->c:F
    const/4 v2, 0
    cmpg-float v2, v1, v2
    if-gez v2, :L0
    const-string v1, "unrated"
    goto :L1
  :L0
  .line 2
    invoke-static { v1 }, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    move-result-object v1
  :L1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
  .registers 3
  .line 1
    iget p2, p0, Landroid/support/v4/media/RatingCompat;->b:I
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->writeInt(I)V
  .line 2
    iget p2, p0, Landroid/support/v4/media/RatingCompat;->c:F
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->writeFloat(F)V
    return-void
.end method
