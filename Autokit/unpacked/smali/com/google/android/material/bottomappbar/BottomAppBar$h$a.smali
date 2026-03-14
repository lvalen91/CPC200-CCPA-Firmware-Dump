.class final Lcom/google/android/material/bottomappbar/BottomAppBar$h$a;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$ClassLoaderCreator;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcom/google/android/material/bottomappbar/BottomAppBar$h;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = null
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "Ljava/lang/Object;",
    "Landroid/os/Parcelable$ClassLoaderCreator<",
    "Lcom/google/android/material/bottomappbar/BottomAppBar$h;",
    ">;"
  }
.end annotation

.method constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(Landroid/os/Parcel;)Lcom/google/android/material/bottomappbar/BottomAppBar$h;
  .registers 4
  .line 1
    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$h;
    const/4 v1, 0
    invoke-direct { v0, p1, v1 }, Lcom/google/android/material/bottomappbar/BottomAppBar$h;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    return-object v0
.end method

.method public b(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/google/android/material/bottomappbar/BottomAppBar$h;
  .registers 4
  .line 1
    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$h;
    invoke-direct { v0, p1, p2 }, Lcom/google/android/material/bottomappbar/BottomAppBar$h;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    return-object v0
.end method

.method public c(I)[Lcom/google/android/material/bottomappbar/BottomAppBar$h;
  .registers 2
  .line 1
    new-array p1, p1, [Lcom/google/android/material/bottomappbar/BottomAppBar$h;
    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Lcom/google/android/material/bottomappbar/BottomAppBar$h$a;->a(Landroid/os/Parcel;)Lcom/google/android/material/bottomappbar/BottomAppBar$h;
    move-result-object p1
    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
  .registers 3
  .line 2
    invoke-virtual { p0, p1, p2 }, Lcom/google/android/material/bottomappbar/BottomAppBar$h$a;->b(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/google/android/material/bottomappbar/BottomAppBar$h;
    move-result-object p1
    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Lcom/google/android/material/bottomappbar/BottomAppBar$h$a;->c(I)[Lcom/google/android/material/bottomappbar/BottomAppBar$h;
    move-result-object p1
    return-object p1
.end method
