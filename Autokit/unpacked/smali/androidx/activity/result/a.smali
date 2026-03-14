.class public final Landroidx/activity/result/a;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable;
.source "SourceFile"

.annotation build Landroid/annotation/SuppressLint;
  value = {
    "BanParcelableUsage"
  }
.end annotation

.field public final static CREATOR:Landroid/os/Parcelable$Creator;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Landroid/os/Parcelable$Creator<",
      "Landroidx/activity/result/a;",
      ">;"
    }
  .end annotation
.end field

.field private final b:I

.field private final c:Landroid/content/Intent;

.method static constructor <clinit>()V
  .registers 1
  .line 1
    new-instance v0, Landroidx/activity/result/a$a;
    invoke-direct { v0 }, Landroidx/activity/result/a$a;-><init>()V
    sput-object v0, Landroidx/activity/result/a;->CREATOR:Landroid/os/Parcelable$Creator;
    return-void
.end method

.method public constructor <init>(ILandroid/content/Intent;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput p1, p0, Landroidx/activity/result/a;->b:I
  .line 3
    iput-object p2, p0, Landroidx/activity/result/a;->c:Landroid/content/Intent;
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
  .registers 3
  .line 4
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 5
    invoke-virtual { p1 }, Landroid/os/Parcel;->readInt()I
    move-result v0
    iput v0, p0, Landroidx/activity/result/a;->b:I
  .line 6
    invoke-virtual { p1 }, Landroid/os/Parcel;->readInt()I
    move-result v0
    if-nez v0, :L0
    const/4 p1, 0
    goto :L1
  :L0
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;
    invoke-interface { v0, p1 }, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroid/content/Intent;
  :L1
    iput-object p1, p0, Landroidx/activity/result/a;->c:Landroid/content/Intent;
    return-void
.end method

.method public static l(I)Ljava/lang/String;
  .registers 2
    const/4 v0, -1
    if-eq p0, v0, :L1
    if-eqz p0, :L0
  .line 1
    invoke-static { p0 }, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    move-result-object p0
    return-object p0
  :L0
    const-string p0, "RESULT_CANCELED"
    return-object p0
  :L1
    const-string p0, "RESULT_OK"
    return-object p0
.end method

.method public describeContents()I
  .registers 2
    const/4 v0, 0
    return v0
.end method

.method public j()Landroid/content/Intent;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/activity/result/a;->c:Landroid/content/Intent;
    return-object v0
.end method

.method public k()I
  .registers 2
  .line 1
    iget v0, p0, Landroidx/activity/result/a;->b:I
    return v0
.end method

.method public toString()Ljava/lang/String;
  .registers 3
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "ActivityResult{resultCode="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Landroidx/activity/result/a;->b:I
  .line 2
    invoke-static { v1 }, Landroidx/activity/result/a;->l(I)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, ", data="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroidx/activity/result/a;->c:Landroid/content/Intent;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const/16 v1, 125
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
  .registers 4
  .line 1
    iget v0, p0, Landroidx/activity/result/a;->b:I
    invoke-virtual { p1, v0 }, Landroid/os/Parcel;->writeInt(I)V
  .line 2
    iget-object v0, p0, Landroidx/activity/result/a;->c:Landroid/content/Intent;
    if-nez v0, :L0
    const/4 v0, 0
    goto :L1
  :L0
    const/4 v0, 1
  :L1
    invoke-virtual { p1, v0 }, Landroid/os/Parcel;->writeInt(I)V
  .line 3
    iget-object v0, p0, Landroidx/activity/result/a;->c:Landroid/content/Intent;
    if-eqz v0, :L2
  .line 4
    invoke-virtual { v0, p1, p2 }, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V
  :L2
    return-void
.end method
