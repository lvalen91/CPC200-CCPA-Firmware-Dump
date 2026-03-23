.class public Lcom/google/android/material/bottomsheet/BottomSheetBehavior$h;
.super Lc/i/a/a;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 12
  name = "h"
.end annotation

.field public final static CREATOR:Landroid/os/Parcelable$Creator;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Landroid/os/Parcelable$Creator<",
      "Lcom/google/android/material/bottomsheet/BottomSheetBehavior$h;",
      ">;"
    }
  .end annotation
.end field

.field final d:I

.field e:I

.field f:Z

.field g:Z

.field h:Z

.method static constructor <clinit>()V
  .registers 1
  .line 1
    new-instance v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$h$a;
    invoke-direct { v0 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$h$a;-><init>()V
    sput-object v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$h;->CREATOR:Landroid/os/Parcelable$Creator;
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
  .registers 5
  .line 1
    invoke-direct { p0, p1, p2 }, Lc/i/a/a;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
  .line 2
    invoke-virtual { p1 }, Landroid/os/Parcel;->readInt()I
    move-result p2
    iput p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$h;->d:I
  .line 3
    invoke-virtual { p1 }, Landroid/os/Parcel;->readInt()I
    move-result p2
    iput p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$h;->e:I
  .line 4
    invoke-virtual { p1 }, Landroid/os/Parcel;->readInt()I
    move-result p2
    const/4 v0, 0
    const/4 v1, 1
    if-ne p2, v1, :L0
    const/4 p2, 1
    goto :L1
  :L0
    const/4 p2, 0
  :L1
    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$h;->f:Z
  .line 5
    invoke-virtual { p1 }, Landroid/os/Parcel;->readInt()I
    move-result p2
    if-ne p2, v1, :L2
    const/4 p2, 1
    goto :L3
  :L2
    const/4 p2, 0
  :L3
    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$h;->g:Z
  .line 6
    invoke-virtual { p1 }, Landroid/os/Parcel;->readInt()I
    move-result p1
    if-ne p1, v1, :L4
    const/4 v0, 1
  :L4
    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$h;->h:Z
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroid/os/Parcelable;",
      "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
      "*>;)V"
    }
  .end annotation
  .registers 3
  .line 7
    invoke-direct { p0, p1 }, Lc/i/a/a;-><init>(Landroid/os/Parcelable;)V
  .line 8
    iget p1, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->G:I
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$h;->d:I
  .line 9
    invoke-static { p2 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)I
    move-result p1
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$h;->e:I
  .line 10
    invoke-static { p2 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->F(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z
    move-result p1
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$h;->f:Z
  .line 11
    iget-boolean p1, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D:Z
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$h;->g:Z
  .line 12
    invoke-static { p2 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->I(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z
    move-result p1
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$h;->h:Z
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
  .registers 3
  .line 1
    invoke-super { p0, p1, p2 }, Lc/i/a/a;->writeToParcel(Landroid/os/Parcel;I)V
  .line 2
    iget p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$h;->d:I
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->writeInt(I)V
  .line 3
    iget p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$h;->e:I
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->writeInt(I)V
  .line 4
    iget-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$h;->f:Z
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->writeInt(I)V
  .line 5
    iget-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$h;->g:Z
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->writeInt(I)V
  .line 6
    iget-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$h;->h:Z
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->writeInt(I)V
    return-void
.end method
