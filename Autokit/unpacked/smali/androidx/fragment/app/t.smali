.class final Landroidx/fragment/app/t;
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
      "Landroidx/fragment/app/t;",
      ">;"
    }
  .end annotation
.end field

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:Z

.field final e:I

.field final f:I

.field final g:Ljava/lang/String;

.field final h:Z

.field final i:Z

.field final j:Z

.field final k:Landroid/os/Bundle;

.field final l:Z

.field final m:I

.field n:Landroid/os/Bundle;

.method static constructor <clinit>()V
  .registers 1
  .line 1
    new-instance v0, Landroidx/fragment/app/t$a;
    invoke-direct { v0 }, Landroidx/fragment/app/t$a;-><init>()V
    sput-object v0, Landroidx/fragment/app/t;->CREATOR:Landroid/os/Parcelable$Creator;
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
  .registers 5
  .line 14
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 15
    invoke-virtual { p1 }, Landroid/os/Parcel;->readString()Ljava/lang/String;
    move-result-object v0
    iput-object v0, p0, Landroidx/fragment/app/t;->b:Ljava/lang/String;
  .line 16
    invoke-virtual { p1 }, Landroid/os/Parcel;->readString()Ljava/lang/String;
    move-result-object v0
    iput-object v0, p0, Landroidx/fragment/app/t;->c:Ljava/lang/String;
  .line 17
    invoke-virtual { p1 }, Landroid/os/Parcel;->readInt()I
    move-result v0
    const/4 v1, 1
    const/4 v2, 0
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    iput-boolean v0, p0, Landroidx/fragment/app/t;->d:Z
  .line 18
    invoke-virtual { p1 }, Landroid/os/Parcel;->readInt()I
    move-result v0
    iput v0, p0, Landroidx/fragment/app/t;->e:I
  .line 19
    invoke-virtual { p1 }, Landroid/os/Parcel;->readInt()I
    move-result v0
    iput v0, p0, Landroidx/fragment/app/t;->f:I
  .line 20
    invoke-virtual { p1 }, Landroid/os/Parcel;->readString()Ljava/lang/String;
    move-result-object v0
    iput-object v0, p0, Landroidx/fragment/app/t;->g:Ljava/lang/String;
  .line 21
    invoke-virtual { p1 }, Landroid/os/Parcel;->readInt()I
    move-result v0
    if-eqz v0, :L2
    const/4 v0, 1
    goto :L3
  :L2
    const/4 v0, 0
  :L3
    iput-boolean v0, p0, Landroidx/fragment/app/t;->h:Z
  .line 22
    invoke-virtual { p1 }, Landroid/os/Parcel;->readInt()I
    move-result v0
    if-eqz v0, :L4
    const/4 v0, 1
    goto :L5
  :L4
    const/4 v0, 0
  :L5
    iput-boolean v0, p0, Landroidx/fragment/app/t;->i:Z
  .line 23
    invoke-virtual { p1 }, Landroid/os/Parcel;->readInt()I
    move-result v0
    if-eqz v0, :L6
    const/4 v0, 1
    goto :L7
  :L6
    const/4 v0, 0
  :L7
    iput-boolean v0, p0, Landroidx/fragment/app/t;->j:Z
  .line 24
    invoke-virtual { p1 }, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;
    move-result-object v0
    iput-object v0, p0, Landroidx/fragment/app/t;->k:Landroid/os/Bundle;
  .line 25
    invoke-virtual { p1 }, Landroid/os/Parcel;->readInt()I
    move-result v0
    if-eqz v0, :L8
    goto :L9
  :L8
    const/4 v1, 0
  :L9
    iput-boolean v1, p0, Landroidx/fragment/app/t;->l:Z
  .line 26
    invoke-virtual { p1 }, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;
    move-result-object v0
    iput-object v0, p0, Landroidx/fragment/app/t;->n:Landroid/os/Bundle;
  .line 27
    invoke-virtual { p1 }, Landroid/os/Parcel;->readInt()I
    move-result p1
    iput p1, p0, Landroidx/fragment/app/t;->m:I
    return-void
.end method

.method constructor <init>(Landroidx/fragment/app/Fragment;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    invoke-virtual { p1 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/Class;->getName()Ljava/lang/String;
    move-result-object v0
    iput-object v0, p0, Landroidx/fragment/app/t;->b:Ljava/lang/String;
  .line 3
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->g:Ljava/lang/String;
    iput-object v0, p0, Landroidx/fragment/app/t;->c:Ljava/lang/String;
  .line 4
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->o:Z
    iput-boolean v0, p0, Landroidx/fragment/app/t;->d:Z
  .line 5
    iget v0, p1, Landroidx/fragment/app/Fragment;->x:I
    iput v0, p0, Landroidx/fragment/app/t;->e:I
  .line 6
    iget v0, p1, Landroidx/fragment/app/Fragment;->y:I
    iput v0, p0, Landroidx/fragment/app/t;->f:I
  .line 7
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->z:Ljava/lang/String;
    iput-object v0, p0, Landroidx/fragment/app/t;->g:Ljava/lang/String;
  .line 8
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->C:Z
    iput-boolean v0, p0, Landroidx/fragment/app/t;->h:Z
  .line 9
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->n:Z
    iput-boolean v0, p0, Landroidx/fragment/app/t;->i:Z
  .line 10
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->B:Z
    iput-boolean v0, p0, Landroidx/fragment/app/t;->j:Z
  .line 11
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->h:Landroid/os/Bundle;
    iput-object v0, p0, Landroidx/fragment/app/t;->k:Landroid/os/Bundle;
  .line 12
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->A:Z
    iput-boolean v0, p0, Landroidx/fragment/app/t;->l:Z
  .line 13
    iget-object p1, p1, Landroidx/fragment/app/Fragment;->R:Landroidx/lifecycle/f$c;
    invoke-virtual { p1 }, Ljava/lang/Enum;->ordinal()I
    move-result p1
    iput p1, p0, Landroidx/fragment/app/t;->m:I
    return-void
.end method

.method public describeContents()I
  .registers 2
    const/4 v0, 0
    return v0
.end method

.method public toString()Ljava/lang/String;
  .registers 3
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    const/16 v1, 128
    invoke-direct { v0, v1 }, Ljava/lang/StringBuilder;-><init>(I)V
    const-string v1, "FragmentState{"
  .line 2
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 3
    iget-object v1, p0, Landroidx/fragment/app/t;->b:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, " ("
  .line 4
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 5
    iget-object v1, p0, Landroidx/fragment/app/t;->c:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, ")}:"
  .line 6
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 7
    iget-boolean v1, p0, Landroidx/fragment/app/t;->d:Z
    if-eqz v1, :L0
    const-string v1, " fromLayout"
  .line 8
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L0
  .line 9
    iget v1, p0, Landroidx/fragment/app/t;->f:I
    if-eqz v1, :L1
    const-string v1, " id=0x"
  .line 10
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 11
    iget v1, p0, Landroidx/fragment/app/t;->f:I
    invoke-static { v1 }, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L1
  .line 12
    iget-object v1, p0, Landroidx/fragment/app/t;->g:Ljava/lang/String;
    if-eqz v1, :L2
    invoke-virtual { v1 }, Ljava/lang/String;->isEmpty()Z
    move-result v1
    if-nez v1, :L2
    const-string v1, " tag="
  .line 13
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 14
    iget-object v1, p0, Landroidx/fragment/app/t;->g:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L2
  .line 15
    iget-boolean v1, p0, Landroidx/fragment/app/t;->h:Z
    if-eqz v1, :L3
    const-string v1, " retainInstance"
  .line 16
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L3
  .line 17
    iget-boolean v1, p0, Landroidx/fragment/app/t;->i:Z
    if-eqz v1, :L4
    const-string v1, " removing"
  .line 18
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L4
  .line 19
    iget-boolean v1, p0, Landroidx/fragment/app/t;->j:Z
    if-eqz v1, :L5
    const-string v1, " detached"
  .line 20
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L5
  .line 21
    iget-boolean v1, p0, Landroidx/fragment/app/t;->l:Z
    if-eqz v1, :L6
    const-string v1, " hidden"
  .line 22
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L6
  .line 23
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
  .registers 3
  .line 1
    iget-object p2, p0, Landroidx/fragment/app/t;->b:Ljava/lang/String;
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
  .line 2
    iget-object p2, p0, Landroidx/fragment/app/t;->c:Ljava/lang/String;
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
  .line 3
    iget-boolean p2, p0, Landroidx/fragment/app/t;->d:Z
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->writeInt(I)V
  .line 4
    iget p2, p0, Landroidx/fragment/app/t;->e:I
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->writeInt(I)V
  .line 5
    iget p2, p0, Landroidx/fragment/app/t;->f:I
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->writeInt(I)V
  .line 6
    iget-object p2, p0, Landroidx/fragment/app/t;->g:Ljava/lang/String;
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
  .line 7
    iget-boolean p2, p0, Landroidx/fragment/app/t;->h:Z
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->writeInt(I)V
  .line 8
    iget-boolean p2, p0, Landroidx/fragment/app/t;->i:Z
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->writeInt(I)V
  .line 9
    iget-boolean p2, p0, Landroidx/fragment/app/t;->j:Z
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->writeInt(I)V
  .line 10
    iget-object p2, p0, Landroidx/fragment/app/t;->k:Landroid/os/Bundle;
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V
  .line 11
    iget-boolean p2, p0, Landroidx/fragment/app/t;->l:Z
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->writeInt(I)V
  .line 12
    iget-object p2, p0, Landroidx/fragment/app/t;->n:Landroid/os/Bundle;
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V
  .line 13
    iget p2, p0, Landroidx/fragment/app/t;->m:I
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->writeInt(I)V
    return-void
.end method
