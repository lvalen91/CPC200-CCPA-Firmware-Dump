.class public abstract Lc/i/a/a;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable;
.source "SourceFile"

.field public final static CREATOR:Landroid/os/Parcelable$Creator;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Landroid/os/Parcelable$Creator<",
      "Lc/i/a/a;",
      ">;"
    }
  .end annotation
.end field

.field public final static c:Lc/i/a/a;

.field private final b:Landroid/os/Parcelable;

.method static constructor <clinit>()V
  .registers 1
  .line 1
    new-instance v0, Lc/i/a/a$a;
    invoke-direct { v0 }, Lc/i/a/a$a;-><init>()V
    sput-object v0, Lc/i/a/a;->c:Lc/i/a/a;
  .line 2
    new-instance v0, Lc/i/a/a$b;
    invoke-direct { v0 }, Lc/i/a/a$b;-><init>()V
    sput-object v0, Lc/i/a/a;->CREATOR:Landroid/os/Parcelable$Creator;
    return-void
.end method

.method private constructor <init>()V
  .registers 2
  .line 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 0
  .line 3
    iput-object v0, p0, Lc/i/a/a;->b:Landroid/os/Parcelable;
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
  .registers 3
  .line 7
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 8
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
    move-result-object p1
    if-eqz p1, :L0
    goto :L1
  :L0
  .line 9
    sget-object p1, Lc/i/a/a;->c:Lc/i/a/a;
  :L1
    iput-object p1, p0, Lc/i/a/a;->b:Landroid/os/Parcelable;
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcelable;)V
  .registers 3
  .line 4
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    if-eqz p1, :L2
  .line 5
    sget-object v0, Lc/i/a/a;->c:Lc/i/a/a;
    if-eq p1, v0, :L0
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    iput-object p1, p0, Lc/i/a/a;->b:Landroid/os/Parcelable;
    return-void
  :L2
  .line 6
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string v0, "superState must not be null"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method synthetic constructor <init>(Lc/i/a/a$a;)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Lc/i/a/a;-><init>()V
    return-void
.end method

.method public describeContents()I
  .registers 2
    const/4 v0, 0
    return v0
.end method

.method public final j()Landroid/os/Parcelable;
  .registers 2
  .line 1
    iget-object v0, p0, Lc/i/a/a;->b:Landroid/os/Parcelable;
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
  .registers 4
  .line 1
    iget-object v0, p0, Lc/i/a/a;->b:Landroid/os/Parcelable;
    invoke-virtual { p1, v0, p2 }, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
    return-void
.end method
