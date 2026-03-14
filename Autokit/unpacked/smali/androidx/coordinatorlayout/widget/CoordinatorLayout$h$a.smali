.class final Landroidx/coordinatorlayout/widget/CoordinatorLayout$h$a;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$ClassLoaderCreator;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/coordinatorlayout/widget/CoordinatorLayout$h;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = null
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "Ljava/lang/Object;",
    "Landroid/os/Parcelable$ClassLoaderCreator<",
    "Landroidx/coordinatorlayout/widget/CoordinatorLayout$h;",
    ">;"
  }
.end annotation

.method constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(Landroid/os/Parcel;)Landroidx/coordinatorlayout/widget/CoordinatorLayout$h;
  .registers 4
  .line 1
    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$h;
    const/4 v1, 0
    invoke-direct { v0, p1, v1 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$h;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    return-object v0
.end method

.method public b(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidx/coordinatorlayout/widget/CoordinatorLayout$h;
  .registers 4
  .line 1
    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$h;
    invoke-direct { v0, p1, p2 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$h;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    return-object v0
.end method

.method public c(I)[Landroidx/coordinatorlayout/widget/CoordinatorLayout$h;
  .registers 2
  .line 1
    new-array p1, p1, [Landroidx/coordinatorlayout/widget/CoordinatorLayout$h;
    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$h$a;->a(Landroid/os/Parcel;)Landroidx/coordinatorlayout/widget/CoordinatorLayout$h;
    move-result-object p1
    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
  .registers 3
  .line 2
    invoke-virtual { p0, p1, p2 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$h$a;->b(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidx/coordinatorlayout/widget/CoordinatorLayout$h;
    move-result-object p1
    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$h$a;->c(I)[Landroidx/coordinatorlayout/widget/CoordinatorLayout$h;
    move-result-object p1
    return-object p1
.end method
