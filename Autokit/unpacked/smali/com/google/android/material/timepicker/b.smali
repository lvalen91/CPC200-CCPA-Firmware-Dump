.class Lcom/google/android/material/timepicker/b;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable;
.source "SourceFile"

.field public final static CREATOR:Landroid/os/Parcelable$Creator;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Landroid/os/Parcelable$Creator<",
      "Lcom/google/android/material/timepicker/b;",
      ">;"
    }
  .end annotation
.end field

.field final b:I

.field c:I

.field d:I

.field e:I

.method static constructor <clinit>()V
  .registers 3
  .line 1
    new-instance v0, Lcom/google/android/material/timepicker/b$a;
    invoke-direct { v0 }, Lcom/google/android/material/timepicker/b$a;-><init>()V
    sput-object v0, Lcom/google/android/material/timepicker/b;->CREATOR:Landroid/os/Parcelable$Creator;
    return-void
.end method

.method public constructor <init>()V
  .registers 2
    const/4 v0, 0
  .line 1
    invoke-direct { p0, v0 }, Lcom/google/android/material/timepicker/b;-><init>(I)V
    return-void
.end method

.method public constructor <init>(I)V
  .registers 4
    const/4 v0, 0
    const/16 v1, 10
  .line 2
    invoke-direct { p0, v0, v0, v1, p1 }, Lcom/google/android/material/timepicker/b;-><init>(IIII)V
    return-void
.end method

.method public constructor <init>(IIII)V
  .registers 5
  .line 3
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 4
    iput p1, p0, Lcom/google/android/material/timepicker/b;->c:I
  .line 5
    iput p2, p0, Lcom/google/android/material/timepicker/b;->d:I
  .line 6
    iput p3, p0, Lcom/google/android/material/timepicker/b;->e:I
  .line 7
    iput p4, p0, Lcom/google/android/material/timepicker/b;->b:I
  .line 8
    invoke-static { p1 }, Lcom/google/android/material/timepicker/b;->l(I)I
    const/4 p1, 1
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
  .registers 5
  .line 9
    invoke-virtual { p1 }, Landroid/os/Parcel;->readInt()I
    move-result v0
    invoke-virtual { p1 }, Landroid/os/Parcel;->readInt()I
    move-result v1
    invoke-virtual { p1 }, Landroid/os/Parcel;->readInt()I
    move-result v2
    invoke-virtual { p1 }, Landroid/os/Parcel;->readInt()I
    move-result p1
    invoke-direct { p0, v0, v1, v2, p1 }, Lcom/google/android/material/timepicker/b;-><init>(IIII)V
    return-void
.end method

.method public static j(Landroid/content/res/Resources;Ljava/lang/CharSequence;)Ljava/lang/String;
  .registers 3
    const-string v0, "%02d"
  .line 1
    invoke-static { p0, p1, v0 }, Lcom/google/android/material/timepicker/b;->k(Landroid/content/res/Resources;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    move-result-object p0
    return-object p0
.end method

.method public static k(Landroid/content/res/Resources;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
  .registers 5
  .line 1
    invoke-virtual { p0 }, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
    move-result-object p0
    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
    const/4 v0, 1
    new-array v0, v0, [Ljava/lang/Object;
  .line 2
    invoke-static { p1 }, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result p1
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p1
    const/4 v1, 0
    aput-object p1, v0, v1
  .line 3
    invoke-static { p0, p2, v0 }, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object p0
    return-object p0
.end method

.method private static l(I)I
  .registers 2
    const/16 v0, 12
    if-lt p0, v0, :L0
    const/4 p0, 1
    goto :L1
  :L0
    const/4 p0, 0
  :L1
    return p0
.end method

.method public describeContents()I
  .registers 2
    const/4 v0, 0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
  .registers 6
    const/4 v0, 1
    if-ne p0, p1, :L0
    return v0
  :L0
  .line 1
    instance-of v1, p1, Lcom/google/android/material/timepicker/b;
    const/4 v2, 0
    if-nez v1, :L1
    return v2
  :L1
  .line 2
    check-cast p1, Lcom/google/android/material/timepicker/b;
  .line 3
    iget v1, p0, Lcom/google/android/material/timepicker/b;->c:I
    iget v3, p1, Lcom/google/android/material/timepicker/b;->c:I
    if-ne v1, v3, :L2
    iget v1, p0, Lcom/google/android/material/timepicker/b;->d:I
    iget v3, p1, Lcom/google/android/material/timepicker/b;->d:I
    if-ne v1, v3, :L2
    iget v1, p0, Lcom/google/android/material/timepicker/b;->b:I
    iget v3, p1, Lcom/google/android/material/timepicker/b;->b:I
    if-ne v1, v3, :L2
    iget v1, p0, Lcom/google/android/material/timepicker/b;->e:I
    iget p1, p1, Lcom/google/android/material/timepicker/b;->e:I
    if-ne v1, p1, :L2
    goto :L3
  :L2
    const/4 v0, 0
  :L3
    return v0
.end method

.method public hashCode()I
  .registers 4
    const/4 v0, 4
    new-array v0, v0, [Ljava/lang/Object;
  .line 1
    iget v1, p0, Lcom/google/android/material/timepicker/b;->b:I
    invoke-static { v1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    const/4 v2, 0
    aput-object v1, v0, v2
    iget v1, p0, Lcom/google/android/material/timepicker/b;->c:I
    invoke-static { v1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    const/4 v2, 1
    aput-object v1, v0, v2
    iget v1, p0, Lcom/google/android/material/timepicker/b;->d:I
    invoke-static { v1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    const/4 v2, 2
    aput-object v1, v0, v2
    iget v1, p0, Lcom/google/android/material/timepicker/b;->e:I
    invoke-static { v1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    const/4 v2, 3
    aput-object v1, v0, v2
  .line 2
    invoke-static { v0 }, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I
    move-result v0
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
  .registers 3
  .line 1
    iget p2, p0, Lcom/google/android/material/timepicker/b;->c:I
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->writeInt(I)V
  .line 2
    iget p2, p0, Lcom/google/android/material/timepicker/b;->d:I
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->writeInt(I)V
  .line 3
    iget p2, p0, Lcom/google/android/material/timepicker/b;->e:I
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->writeInt(I)V
  .line 4
    iget p2, p0, Lcom/google/android/material/timepicker/b;->b:I
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->writeInt(I)V
    return-void
.end method
