.class Landroidx/appcompat/widget/Toolbar$g$a;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$ClassLoaderCreator;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/widget/Toolbar$g;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "Ljava/lang/Object;",
    "Landroid/os/Parcelable$ClassLoaderCreator<",
    "Landroidx/appcompat/widget/Toolbar$g;",
    ">;"
  }
.end annotation

.method constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(Landroid/os/Parcel;)Landroidx/appcompat/widget/Toolbar$g;
  .registers 4
  .line 1
    new-instance v0, Landroidx/appcompat/widget/Toolbar$g;
    const/4 v1, 0
    invoke-direct { v0, p1, v1 }, Landroidx/appcompat/widget/Toolbar$g;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    return-object v0
.end method

.method public b(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidx/appcompat/widget/Toolbar$g;
  .registers 4
  .line 1
    new-instance v0, Landroidx/appcompat/widget/Toolbar$g;
    invoke-direct { v0, p1, p2 }, Landroidx/appcompat/widget/Toolbar$g;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    return-object v0
.end method

.method public c(I)[Landroidx/appcompat/widget/Toolbar$g;
  .registers 2
  .line 1
    new-array p1, p1, [Landroidx/appcompat/widget/Toolbar$g;
    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/Toolbar$g$a;->a(Landroid/os/Parcel;)Landroidx/appcompat/widget/Toolbar$g;
    move-result-object p1
    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
  .registers 3
  .line 2
    invoke-virtual { p0, p1, p2 }, Landroidx/appcompat/widget/Toolbar$g$a;->b(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidx/appcompat/widget/Toolbar$g;
    move-result-object p1
    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/Toolbar$g$a;->c(I)[Landroidx/appcompat/widget/Toolbar$g;
    move-result-object p1
    return-object p1
.end method
