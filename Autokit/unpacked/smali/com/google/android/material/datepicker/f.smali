.class public Lcom/google/android/material/datepicker/f;
.super Ljava/lang/Object;
.implements Lcom/google/android/material/datepicker/a$c;
.source "SourceFile"

.field public final static CREATOR:Landroid/os/Parcelable$Creator;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Landroid/os/Parcelable$Creator<",
      "Lcom/google/android/material/datepicker/f;",
      ">;"
    }
  .end annotation
.end field

.field private final b:J

.method static constructor <clinit>()V
  .registers 2
  .line 1
    new-instance v0, Lcom/google/android/material/datepicker/f$a;
    invoke-direct { v0 }, Lcom/google/android/material/datepicker/f$a;-><init>()V
    sput-object v0, Lcom/google/android/material/datepicker/f;->CREATOR:Landroid/os/Parcelable$Creator;
    return-void
.end method

.method private constructor <init>(J)V
  .registers 3
  .line 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 3
    iput-wide p1, p0, Lcom/google/android/material/datepicker/f;->b:J
    return-void
.end method

.method synthetic constructor <init>(JLcom/google/android/material/datepicker/f$a;)V
  .registers 4
  .line 1
    invoke-direct { p0, p1, p2 }, Lcom/google/android/material/datepicker/f;-><init>(J)V
    return-void
.end method

.method public static j(J)Lcom/google/android/material/datepicker/f;
  .registers 3
  .line 1
    new-instance v0, Lcom/google/android/material/datepicker/f;
    invoke-direct { v0, p0, p1 }, Lcom/google/android/material/datepicker/f;-><init>(J)V
    return-object v0
.end method

.method public describeContents()I
  .registers 2
    const/4 v0, 0
    return v0
.end method

.method public e(J)Z
  .registers 6
  .line 1
    iget-wide v0, p0, Lcom/google/android/material/datepicker/f;->b:J
    cmp-long v2, p1, v0
    if-ltz v2, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
  .registers 9
    const/4 v0, 1
    if-ne p0, p1, :L0
    return v0
  :L0
  .line 1
    instance-of v1, p1, Lcom/google/android/material/datepicker/f;
    const/4 v2, 0
    if-nez v1, :L1
    return v2
  :L1
  .line 2
    check-cast p1, Lcom/google/android/material/datepicker/f;
  .line 3
    iget-wide v3, p0, Lcom/google/android/material/datepicker/f;->b:J
    iget-wide v5, p1, Lcom/google/android/material/datepicker/f;->b:J
    cmp-long p1, v3, v5
    if-nez p1, :L2
    goto :L3
  :L2
    const/4 v0, 0
  :L3
    return v0
.end method

.method public hashCode()I
  .registers 4
    const/4 v0, 1
    new-array v0, v0, [Ljava/lang/Object;
  .line 1
    iget-wide v1, p0, Lcom/google/android/material/datepicker/f;->b:J
    invoke-static { v1, v2 }, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v1
    const/4 v2, 0
    aput-object v1, v0, v2
  .line 2
    invoke-static { v0 }, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I
    move-result v0
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
  .registers 5
  .line 1
    iget-wide v0, p0, Lcom/google/android/material/datepicker/f;->b:J
    invoke-virtual { p1, v0, v1 }, Landroid/os/Parcel;->writeLong(J)V
    return-void
.end method
