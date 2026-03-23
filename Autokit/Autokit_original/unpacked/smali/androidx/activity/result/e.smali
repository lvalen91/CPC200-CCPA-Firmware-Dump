.class public final Landroidx/activity/result/e;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable;
.source "SourceFile"

.annotation build Landroid/annotation/SuppressLint;
  value = {
    "BanParcelableUsage"
  }
.end annotation
.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/activity/result/e$b;
  }
.end annotation

.field public final static CREATOR:Landroid/os/Parcelable$Creator;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Landroid/os/Parcelable$Creator<",
      "Landroidx/activity/result/e;",
      ">;"
    }
  .end annotation
.end field

.field private final b:Landroid/content/IntentSender;

.field private final c:Landroid/content/Intent;

.field private final d:I

.field private final e:I

.method static constructor <clinit>()V
  .registers 1
  .line 1
    new-instance v0, Landroidx/activity/result/e$a;
    invoke-direct { v0 }, Landroidx/activity/result/e$a;-><init>()V
    sput-object v0, Landroidx/activity/result/e;->CREATOR:Landroid/os/Parcelable$Creator;
    return-void
.end method

.method constructor <init>(Landroid/content/IntentSender;Landroid/content/Intent;II)V
  .registers 5
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Landroidx/activity/result/e;->b:Landroid/content/IntentSender;
  .line 3
    iput-object p2, p0, Landroidx/activity/result/e;->c:Landroid/content/Intent;
  .line 4
    iput p3, p0, Landroidx/activity/result/e;->d:I
  .line 5
    iput p4, p0, Landroidx/activity/result/e;->e:I
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
  .registers 3
  .line 6
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 7
    const-class v0, Landroid/content/IntentSender;
    invoke-virtual { v0 }, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
    move-result-object v0
    check-cast v0, Landroid/content/IntentSender;
    iput-object v0, p0, Landroidx/activity/result/e;->b:Landroid/content/IntentSender;
  .line 8
    const-class v0, Landroid/content/Intent;
    invoke-virtual { v0 }, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
    move-result-object v0
    check-cast v0, Landroid/content/Intent;
    iput-object v0, p0, Landroidx/activity/result/e;->c:Landroid/content/Intent;
  .line 9
    invoke-virtual { p1 }, Landroid/os/Parcel;->readInt()I
    move-result v0
    iput v0, p0, Landroidx/activity/result/e;->d:I
  .line 10
    invoke-virtual { p1 }, Landroid/os/Parcel;->readInt()I
    move-result p1
    iput p1, p0, Landroidx/activity/result/e;->e:I
    return-void
.end method

.method public describeContents()I
  .registers 2
    const/4 v0, 0
    return v0
.end method

.method public j()Landroid/content/Intent;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/activity/result/e;->c:Landroid/content/Intent;
    return-object v0
.end method

.method public k()I
  .registers 2
  .line 1
    iget v0, p0, Landroidx/activity/result/e;->d:I
    return v0
.end method

.method public l()I
  .registers 2
  .line 1
    iget v0, p0, Landroidx/activity/result/e;->e:I
    return v0
.end method

.method public m()Landroid/content/IntentSender;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/activity/result/e;->b:Landroid/content/IntentSender;
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/activity/result/e;->b:Landroid/content/IntentSender;
    invoke-virtual { p1, v0, p2 }, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
  .line 2
    iget-object v0, p0, Landroidx/activity/result/e;->c:Landroid/content/Intent;
    invoke-virtual { p1, v0, p2 }, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
  .line 3
    iget p2, p0, Landroidx/activity/result/e;->d:I
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->writeInt(I)V
  .line 4
    iget p2, p0, Landroidx/activity/result/e;->e:I
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->writeInt(I)V
    return-void
.end method
