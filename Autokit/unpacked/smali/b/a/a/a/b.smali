.class public Lb/a/a/a/b;
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
    Lb/a/a/a/b$b;,
    Lb/a/a/a/b$c;
  }
.end annotation

.field public final static CREATOR:Landroid/os/Parcelable$Creator;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Landroid/os/Parcelable$Creator<",
      "Lb/a/a/a/b;",
      ">;"
    }
  .end annotation
.end field

.field final b:Landroid/os/Handler;

.field c:Lb/a/a/a/a;

.method static constructor <clinit>()V
  .registers 3
  .line 1
    new-instance v0, Lb/a/a/a/b$a;
    invoke-direct { v0 }, Lb/a/a/a/b$a;-><init>()V
    sput-object v0, Lb/a/a/a/b;->CREATOR:Landroid/os/Parcelable$Creator;
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 0
  .line 2
    iput-object v0, p0, Lb/a/a/a/b;->b:Landroid/os/Handler;
  .line 3
    invoke-virtual { p1 }, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
    move-result-object p1
    invoke-static { p1 }, Lb/a/a/a/a$a;->u(Landroid/os/IBinder;)Lb/a/a/a/a;
    move-result-object p1
    iput-object p1, p0, Lb/a/a/a/b;->c:Lb/a/a/a/a;
    return-void
.end method

.method public describeContents()I
  .registers 2
    const/4 v0, 0
    return v0
.end method

.method protected j(ILandroid/os/Bundle;)V
  .registers 3
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
  .catchall { :L0 .. :L3 } :L2
  .registers 3
  .line 1
    monitor-enter p0
  :L0
  .line 2
    iget-object p2, p0, Lb/a/a/a/b;->c:Lb/a/a/a/a;
    if-nez p2, :L1
  .line 3
    new-instance p2, Lb/a/a/a/b$b;
    invoke-direct { p2, p0 }, Lb/a/a/a/b$b;-><init>(Lb/a/a/a/b;)V
    iput-object p2, p0, Lb/a/a/a/b;->c:Lb/a/a/a/a;
  :L1
  .line 4
    iget-object p2, p0, Lb/a/a/a/b;->c:Lb/a/a/a/a;
    invoke-interface { p2 }, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;
    move-result-object p2
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
  .line 5
    monitor-exit p0
    return-void
  :L2
    move-exception p1
    monitor-exit p0
  :L3
    throw p1
.end method
