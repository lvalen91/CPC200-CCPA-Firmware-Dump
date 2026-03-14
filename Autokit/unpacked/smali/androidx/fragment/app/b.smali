.class final Landroidx/fragment/app/b;
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
      "Landroidx/fragment/app/b;",
      ">;"
    }
  .end annotation
.end field

.field final b:[I

.field final c:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
.end field

.field final d:[I

.field final e:[I

.field final f:I

.field final g:Ljava/lang/String;

.field final h:I

.field final i:I

.field final j:Ljava/lang/CharSequence;

.field final k:I

.field final l:Ljava/lang/CharSequence;

.field final m:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
.end field

.field final n:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
.end field

.field final o:Z

.method static constructor <clinit>()V
  .registers 1
  .line 1
    new-instance v0, Landroidx/fragment/app/b$a;
    invoke-direct { v0 }, Landroidx/fragment/app/b$a;-><init>()V
    sput-object v0, Landroidx/fragment/app/b;->CREATOR:Landroid/os/Parcelable$Creator;
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
  .registers 3
  .line 28
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 29
    invoke-virtual { p1 }, Landroid/os/Parcel;->createIntArray()[I
    move-result-object v0
    iput-object v0, p0, Landroidx/fragment/app/b;->b:[I
  .line 30
    invoke-virtual { p1 }, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;
    move-result-object v0
    iput-object v0, p0, Landroidx/fragment/app/b;->c:Ljava/util/ArrayList;
  .line 31
    invoke-virtual { p1 }, Landroid/os/Parcel;->createIntArray()[I
    move-result-object v0
    iput-object v0, p0, Landroidx/fragment/app/b;->d:[I
  .line 32
    invoke-virtual { p1 }, Landroid/os/Parcel;->createIntArray()[I
    move-result-object v0
    iput-object v0, p0, Landroidx/fragment/app/b;->e:[I
  .line 33
    invoke-virtual { p1 }, Landroid/os/Parcel;->readInt()I
    move-result v0
    iput v0, p0, Landroidx/fragment/app/b;->f:I
  .line 34
    invoke-virtual { p1 }, Landroid/os/Parcel;->readString()Ljava/lang/String;
    move-result-object v0
    iput-object v0, p0, Landroidx/fragment/app/b;->g:Ljava/lang/String;
  .line 35
    invoke-virtual { p1 }, Landroid/os/Parcel;->readInt()I
    move-result v0
    iput v0, p0, Landroidx/fragment/app/b;->h:I
  .line 36
    invoke-virtual { p1 }, Landroid/os/Parcel;->readInt()I
    move-result v0
    iput v0, p0, Landroidx/fragment/app/b;->i:I
  .line 37
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;
    invoke-interface { v0, p1 }, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/CharSequence;
    iput-object v0, p0, Landroidx/fragment/app/b;->j:Ljava/lang/CharSequence;
  .line 38
    invoke-virtual { p1 }, Landroid/os/Parcel;->readInt()I
    move-result v0
    iput v0, p0, Landroidx/fragment/app/b;->k:I
  .line 39
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;
    invoke-interface { v0, p1 }, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/CharSequence;
    iput-object v0, p0, Landroidx/fragment/app/b;->l:Ljava/lang/CharSequence;
  .line 40
    invoke-virtual { p1 }, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;
    move-result-object v0
    iput-object v0, p0, Landroidx/fragment/app/b;->m:Ljava/util/ArrayList;
  .line 41
    invoke-virtual { p1 }, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;
    move-result-object v0
    iput-object v0, p0, Landroidx/fragment/app/b;->n:Ljava/util/ArrayList;
  .line 42
    invoke-virtual { p1 }, Landroid/os/Parcel;->readInt()I
    move-result p1
    if-eqz p1, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    iput-boolean p1, p0, Landroidx/fragment/app/b;->o:Z
    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/a;)V
  .registers 9
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iget-object v0, p1, Landroidx/fragment/app/w;->a:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    mul-int/lit8 v1, v0, 5
  .line 3
    new-array v1, v1, [I
    iput-object v1, p0, Landroidx/fragment/app/b;->b:[I
  .line 4
    iget-boolean v1, p1, Landroidx/fragment/app/w;->g:Z
    if-eqz v1, :L4
  .line 5
    new-instance v1, Ljava/util/ArrayList;
    invoke-direct { v1, v0 }, Ljava/util/ArrayList;-><init>(I)V
    iput-object v1, p0, Landroidx/fragment/app/b;->c:Ljava/util/ArrayList;
  .line 6
    new-array v1, v0, [I
    iput-object v1, p0, Landroidx/fragment/app/b;->d:[I
  .line 7
    new-array v1, v0, [I
    iput-object v1, p0, Landroidx/fragment/app/b;->e:[I
    const/4 v1, 0
    const/4 v2, 0
  :L0
    if-ge v1, v0, :L3
  .line 8
    iget-object v3, p1, Landroidx/fragment/app/w;->a:Ljava/util/ArrayList;
    invoke-virtual { v3, v1 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Landroidx/fragment/app/w$a;
  .line 9
    iget-object v4, p0, Landroidx/fragment/app/b;->b:[I
    add-int/lit8 v5, v2, 1
    iget v6, v3, Landroidx/fragment/app/w$a;->a:I
    aput v6, v4, v2
  .line 10
    iget-object v2, p0, Landroidx/fragment/app/b;->c:Ljava/util/ArrayList;
    iget-object v4, v3, Landroidx/fragment/app/w$a;->b:Landroidx/fragment/app/Fragment;
    if-eqz v4, :L1
    iget-object v4, v4, Landroidx/fragment/app/Fragment;->g:Ljava/lang/String;
    goto :L2
  :L1
    const/4 v4, 0
  :L2
    invoke-virtual { v2, v4 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  .line 11
    iget-object v2, p0, Landroidx/fragment/app/b;->b:[I
    add-int/lit8 v4, v5, 1
    iget v6, v3, Landroidx/fragment/app/w$a;->c:I
    aput v6, v2, v5
    add-int/lit8 v5, v4, 1
  .line 12
    iget v6, v3, Landroidx/fragment/app/w$a;->d:I
    aput v6, v2, v4
    add-int/lit8 v4, v5, 1
  .line 13
    iget v6, v3, Landroidx/fragment/app/w$a;->e:I
    aput v6, v2, v5
    add-int/lit8 v5, v4, 1
  .line 14
    iget v6, v3, Landroidx/fragment/app/w$a;->f:I
    aput v6, v2, v4
  .line 15
    iget-object v2, p0, Landroidx/fragment/app/b;->d:[I
    iget-object v4, v3, Landroidx/fragment/app/w$a;->g:Landroidx/lifecycle/f$c;
    invoke-virtual { v4 }, Ljava/lang/Enum;->ordinal()I
    move-result v4
    aput v4, v2, v1
  .line 16
    iget-object v2, p0, Landroidx/fragment/app/b;->e:[I
    iget-object v3, v3, Landroidx/fragment/app/w$a;->h:Landroidx/lifecycle/f$c;
    invoke-virtual { v3 }, Ljava/lang/Enum;->ordinal()I
    move-result v3
    aput v3, v2, v1
    add-int/lit8 v1, v1, 1
    move v2, v5
    goto :L0
  :L3
  .line 17
    iget v0, p1, Landroidx/fragment/app/w;->f:I
    iput v0, p0, Landroidx/fragment/app/b;->f:I
  .line 18
    iget-object v0, p1, Landroidx/fragment/app/w;->i:Ljava/lang/String;
    iput-object v0, p0, Landroidx/fragment/app/b;->g:Ljava/lang/String;
  .line 19
    iget v0, p1, Landroidx/fragment/app/a;->t:I
    iput v0, p0, Landroidx/fragment/app/b;->h:I
  .line 20
    iget v0, p1, Landroidx/fragment/app/w;->j:I
    iput v0, p0, Landroidx/fragment/app/b;->i:I
  .line 21
    iget-object v0, p1, Landroidx/fragment/app/w;->k:Ljava/lang/CharSequence;
    iput-object v0, p0, Landroidx/fragment/app/b;->j:Ljava/lang/CharSequence;
  .line 22
    iget v0, p1, Landroidx/fragment/app/w;->l:I
    iput v0, p0, Landroidx/fragment/app/b;->k:I
  .line 23
    iget-object v0, p1, Landroidx/fragment/app/w;->m:Ljava/lang/CharSequence;
    iput-object v0, p0, Landroidx/fragment/app/b;->l:Ljava/lang/CharSequence;
  .line 24
    iget-object v0, p1, Landroidx/fragment/app/w;->n:Ljava/util/ArrayList;
    iput-object v0, p0, Landroidx/fragment/app/b;->m:Ljava/util/ArrayList;
  .line 25
    iget-object v0, p1, Landroidx/fragment/app/w;->o:Ljava/util/ArrayList;
    iput-object v0, p0, Landroidx/fragment/app/b;->n:Ljava/util/ArrayList;
  .line 26
    iget-boolean p1, p1, Landroidx/fragment/app/w;->p:Z
    iput-boolean p1, p0, Landroidx/fragment/app/b;->o:Z
    return-void
  :L4
  .line 27
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string v0, "Not on back stack"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    goto :L6
  :L5
    throw p1
  :L6
    goto :L5
.end method

.method public describeContents()I
  .registers 2
    const/4 v0, 0
    return v0
.end method

.method public j(Landroidx/fragment/app/n;)Landroidx/fragment/app/a;
  .registers 11
  .line 1
    new-instance v0, Landroidx/fragment/app/a;
    invoke-direct { v0, p1 }, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/n;)V
    const/4 v1, 0
    const/4 v2, 0
  :L0
  .line 2
    iget-object v3, p0, Landroidx/fragment/app/b;->b:[I
    array-length v3, v3
    if-ge v1, v3, :L4
  .line 3
    new-instance v3, Landroidx/fragment/app/w$a;
    invoke-direct { v3 }, Landroidx/fragment/app/w$a;-><init>()V
  .line 4
    iget-object v4, p0, Landroidx/fragment/app/b;->b:[I
    add-int/lit8 v5, v1, 1
    aget v1, v4, v1
    iput v1, v3, Landroidx/fragment/app/w$a;->a:I
    const/4 v1, 2
  .line 5
    invoke-static { v1 }, Landroidx/fragment/app/n;->E0(I)Z
    move-result v1
    if-eqz v1, :L1
  .line 6
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "Instantiate "
    invoke-virtual { v1, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v4, " op #"
    invoke-virtual { v1, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v4, " base fragment #"
    invoke-virtual { v1, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v4, p0, Landroidx/fragment/app/b;->b:[I
    aget v4, v4, v5
    invoke-virtual { v1, v4 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L1
  .line 7
    iget-object v1, p0, Landroidx/fragment/app/b;->c:Ljava/util/ArrayList;
    invoke-virtual { v1, v2 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/String;
    if-eqz v1, :L2
  .line 8
    invoke-virtual { p1, v1 }, Landroidx/fragment/app/n;->f0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    move-result-object v1
  .line 9
    iput-object v1, v3, Landroidx/fragment/app/w$a;->b:Landroidx/fragment/app/Fragment;
    goto :L3
  :L2
    const/4 v1, 0
  .line 10
    iput-object v1, v3, Landroidx/fragment/app/w$a;->b:Landroidx/fragment/app/Fragment;
  :L3
  .line 11
    invoke-static { }, Landroidx/lifecycle/f$c;->values()[Landroidx/lifecycle/f$c;
    move-result-object v1
    iget-object v4, p0, Landroidx/fragment/app/b;->d:[I
    aget v4, v4, v2
    aget-object v1, v1, v4
    iput-object v1, v3, Landroidx/fragment/app/w$a;->g:Landroidx/lifecycle/f$c;
  .line 12
    invoke-static { }, Landroidx/lifecycle/f$c;->values()[Landroidx/lifecycle/f$c;
    move-result-object v1
    iget-object v4, p0, Landroidx/fragment/app/b;->e:[I
    aget v4, v4, v2
    aget-object v1, v1, v4
    iput-object v1, v3, Landroidx/fragment/app/w$a;->h:Landroidx/lifecycle/f$c;
  .line 13
    iget-object v1, p0, Landroidx/fragment/app/b;->b:[I
    add-int/lit8 v4, v5, 1
    aget v5, v1, v5
    iput v5, v3, Landroidx/fragment/app/w$a;->c:I
    add-int/lit8 v6, v4, 1
  .line 14
    aget v4, v1, v4
    iput v4, v3, Landroidx/fragment/app/w$a;->d:I
    add-int/lit8 v7, v6, 1
  .line 15
    aget v6, v1, v6
    iput v6, v3, Landroidx/fragment/app/w$a;->e:I
    add-int/lit8 v8, v7, 1
  .line 16
    aget v1, v1, v7
    iput v1, v3, Landroidx/fragment/app/w$a;->f:I
  .line 17
    iput v5, v0, Landroidx/fragment/app/w;->b:I
  .line 18
    iput v4, v0, Landroidx/fragment/app/w;->c:I
  .line 19
    iput v6, v0, Landroidx/fragment/app/w;->d:I
  .line 20
    iput v1, v0, Landroidx/fragment/app/w;->e:I
  .line 21
    invoke-virtual { v0, v3 }, Landroidx/fragment/app/w;->f(Landroidx/fragment/app/w$a;)V
    add-int/lit8 v2, v2, 1
    move v1, v8
    goto/16 :L0
  :L4
  .line 22
    iget p1, p0, Landroidx/fragment/app/b;->f:I
    iput p1, v0, Landroidx/fragment/app/w;->f:I
  .line 23
    iget-object p1, p0, Landroidx/fragment/app/b;->g:Ljava/lang/String;
    iput-object p1, v0, Landroidx/fragment/app/w;->i:Ljava/lang/String;
  .line 24
    iget p1, p0, Landroidx/fragment/app/b;->h:I
    iput p1, v0, Landroidx/fragment/app/a;->t:I
    const/4 p1, 1
  .line 25
    iput-boolean p1, v0, Landroidx/fragment/app/w;->g:Z
  .line 26
    iget v1, p0, Landroidx/fragment/app/b;->i:I
    iput v1, v0, Landroidx/fragment/app/w;->j:I
  .line 27
    iget-object v1, p0, Landroidx/fragment/app/b;->j:Ljava/lang/CharSequence;
    iput-object v1, v0, Landroidx/fragment/app/w;->k:Ljava/lang/CharSequence;
  .line 28
    iget v1, p0, Landroidx/fragment/app/b;->k:I
    iput v1, v0, Landroidx/fragment/app/w;->l:I
  .line 29
    iget-object v1, p0, Landroidx/fragment/app/b;->l:Ljava/lang/CharSequence;
    iput-object v1, v0, Landroidx/fragment/app/w;->m:Ljava/lang/CharSequence;
  .line 30
    iget-object v1, p0, Landroidx/fragment/app/b;->m:Ljava/util/ArrayList;
    iput-object v1, v0, Landroidx/fragment/app/w;->n:Ljava/util/ArrayList;
  .line 31
    iget-object v1, p0, Landroidx/fragment/app/b;->n:Ljava/util/ArrayList;
    iput-object v1, v0, Landroidx/fragment/app/w;->o:Ljava/util/ArrayList;
  .line 32
    iget-boolean v1, p0, Landroidx/fragment/app/b;->o:Z
    iput-boolean v1, v0, Landroidx/fragment/app/w;->p:Z
  .line 33
    invoke-virtual { v0, p1 }, Landroidx/fragment/app/a;->u(I)V
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
  .registers 4
  .line 1
    iget-object p2, p0, Landroidx/fragment/app/b;->b:[I
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->writeIntArray([I)V
  .line 2
    iget-object p2, p0, Landroidx/fragment/app/b;->c:Ljava/util/ArrayList;
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V
  .line 3
    iget-object p2, p0, Landroidx/fragment/app/b;->d:[I
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->writeIntArray([I)V
  .line 4
    iget-object p2, p0, Landroidx/fragment/app/b;->e:[I
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->writeIntArray([I)V
  .line 5
    iget p2, p0, Landroidx/fragment/app/b;->f:I
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->writeInt(I)V
  .line 6
    iget-object p2, p0, Landroidx/fragment/app/b;->g:Ljava/lang/String;
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
  .line 7
    iget p2, p0, Landroidx/fragment/app/b;->h:I
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->writeInt(I)V
  .line 8
    iget p2, p0, Landroidx/fragment/app/b;->i:I
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->writeInt(I)V
  .line 9
    iget-object p2, p0, Landroidx/fragment/app/b;->j:Ljava/lang/CharSequence;
    const/4 v0, 0
    invoke-static { p2, p1, v0 }, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V
  .line 10
    iget p2, p0, Landroidx/fragment/app/b;->k:I
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->writeInt(I)V
  .line 11
    iget-object p2, p0, Landroidx/fragment/app/b;->l:Ljava/lang/CharSequence;
    invoke-static { p2, p1, v0 }, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V
  .line 12
    iget-object p2, p0, Landroidx/fragment/app/b;->m:Ljava/util/ArrayList;
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V
  .line 13
    iget-object p2, p0, Landroidx/fragment/app/b;->n:Ljava/util/ArrayList;
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V
  .line 14
    iget-boolean p2, p0, Landroidx/fragment/app/b;->o:Z
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->writeInt(I)V
    return-void
.end method
