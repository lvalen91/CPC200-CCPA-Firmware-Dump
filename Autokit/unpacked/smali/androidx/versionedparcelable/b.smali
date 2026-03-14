.class Landroidx/versionedparcelable/b;
.super Landroidx/versionedparcelable/a;
.source "SourceFile"

.field private final d:Landroid/util/SparseIntArray;

.field private final e:Landroid/os/Parcel;

.field private final f:I

.field private final g:I

.field private final h:Ljava/lang/String;

.field private i:I

.field private j:I

.field private k:I

.method constructor <init>(Landroid/os/Parcel;)V
  .registers 10
  .line 1
    invoke-virtual { p1 }, Landroid/os/Parcel;->dataPosition()I
    move-result v2
    invoke-virtual { p1 }, Landroid/os/Parcel;->dataSize()I
    move-result v3
    new-instance v5, Lc/d/a;
    invoke-direct { v5 }, Lc/d/a;-><init>()V
    new-instance v6, Lc/d/a;
    invoke-direct { v6 }, Lc/d/a;-><init>()V
    new-instance v7, Lc/d/a;
    invoke-direct { v7 }, Lc/d/a;-><init>()V
    const-string v4, ""
    move-object v0, p0
    move-object v1, p1
    invoke-direct/range { v0 .. v7 }, Landroidx/versionedparcelable/b;-><init>(Landroid/os/Parcel;IILjava/lang/String;Lc/d/a;Lc/d/a;Lc/d/a;)V
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;IILjava/lang/String;Lc/d/a;Lc/d/a;Lc/d/a;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroid/os/Parcel;",
      "II",
      "Ljava/lang/String;",
      "Lc/d/a<",
      "Ljava/lang/String;",
      "Ljava/lang/reflect/Method;",
      ">;",
      "Lc/d/a<",
      "Ljava/lang/String;",
      "Ljava/lang/reflect/Method;",
      ">;",
      "Lc/d/a<",
      "Ljava/lang/String;",
      "Ljava/lang/Class;",
      ">;)V"
    }
  .end annotation
  .registers 8
  .line 2
    invoke-direct { p0, p5, p6, p7 }, Landroidx/versionedparcelable/a;-><init>(Lc/d/a;Lc/d/a;Lc/d/a;)V
  .line 3
    new-instance p5, Landroid/util/SparseIntArray;
    invoke-direct { p5 }, Landroid/util/SparseIntArray;-><init>()V
    iput-object p5, p0, Landroidx/versionedparcelable/b;->d:Landroid/util/SparseIntArray;
    const/4 p5, -1
  .line 4
    iput p5, p0, Landroidx/versionedparcelable/b;->i:I
    const/4 p6, 0
  .line 5
    iput p6, p0, Landroidx/versionedparcelable/b;->j:I
  .line 6
    iput p5, p0, Landroidx/versionedparcelable/b;->k:I
  .line 7
    iput-object p1, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;
  .line 8
    iput p2, p0, Landroidx/versionedparcelable/b;->f:I
  .line 9
    iput p3, p0, Landroidx/versionedparcelable/b;->g:I
  .line 10
    iput p2, p0, Landroidx/versionedparcelable/b;->j:I
  .line 11
    iput-object p4, p0, Landroidx/versionedparcelable/b;->h:Ljava/lang/String;
    return-void
.end method

.method public A([B)V
  .registers 4
    if-eqz p1, :L0
  .line 1
    iget-object v0, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;
    array-length v1, p1
    invoke-virtual { v0, v1 }, Landroid/os/Parcel;->writeInt(I)V
  .line 2
    iget-object v0, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;
    invoke-virtual { v0, p1 }, Landroid/os/Parcel;->writeByteArray([B)V
    goto :L1
  :L0
  .line 3
    iget-object p1, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;
    const/4 v0, -1
    invoke-virtual { p1, v0 }, Landroid/os/Parcel;->writeInt(I)V
  :L1
    return-void
.end method

.method protected C(Ljava/lang/CharSequence;)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;
    const/4 v1, 0
    invoke-static { p1, v0, v1 }, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V
    return-void
.end method

.method public E(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;
    invoke-virtual { v0, p1 }, Landroid/os/Parcel;->writeInt(I)V
    return-void
.end method

.method public G(Landroid/os/Parcelable;)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;
    const/4 v1, 0
    invoke-virtual { v0, p1, v1 }, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
    return-void
.end method

.method public I(Ljava/lang/String;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;
    invoke-virtual { v0, p1 }, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    return-void
.end method

.method public a()V
  .registers 5
  .line 1
    iget v0, p0, Landroidx/versionedparcelable/b;->i:I
    if-ltz v0, :L0
  .line 2
    iget-object v1, p0, Landroidx/versionedparcelable/b;->d:Landroid/util/SparseIntArray;
    invoke-virtual { v1, v0 }, Landroid/util/SparseIntArray;->get(I)I
    move-result v0
  .line 3
    iget-object v1, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;
    invoke-virtual { v1 }, Landroid/os/Parcel;->dataPosition()I
    move-result v1
    sub-int v2, v1, v0
  .line 4
    iget-object v3, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;
    invoke-virtual { v3, v0 }, Landroid/os/Parcel;->setDataPosition(I)V
  .line 5
    iget-object v0, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInt(I)V
  .line 6
    iget-object v0, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;
    invoke-virtual { v0, v1 }, Landroid/os/Parcel;->setDataPosition(I)V
  :L0
    return-void
.end method

.method protected b()Landroidx/versionedparcelable/a;
  .registers 10
  .line 1
    new-instance v8, Landroidx/versionedparcelable/b;
    iget-object v1, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;
    invoke-virtual { v1 }, Landroid/os/Parcel;->dataPosition()I
    move-result v2
    iget v0, p0, Landroidx/versionedparcelable/b;->j:I
    iget v3, p0, Landroidx/versionedparcelable/b;->f:I
    if-ne v0, v3, :L0
    iget v0, p0, Landroidx/versionedparcelable/b;->g:I
  :L0
    move v3, v0
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    iget-object v4, p0, Landroidx/versionedparcelable/b;->h:Ljava/lang/String;
    invoke-virtual { v0, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v4, "  "
    invoke-virtual { v0, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    iget-object v5, p0, Landroidx/versionedparcelable/a;->a:Lc/d/a;
    iget-object v6, p0, Landroidx/versionedparcelable/a;->b:Lc/d/a;
    iget-object v7, p0, Landroidx/versionedparcelable/a;->c:Lc/d/a;
    move-object v0, v8
    invoke-direct/range { v0 .. v7 }, Landroidx/versionedparcelable/b;-><init>(Landroid/os/Parcel;IILjava/lang/String;Lc/d/a;Lc/d/a;Lc/d/a;)V
    return-object v8
.end method

.method public g()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;
    invoke-virtual { v0 }, Landroid/os/Parcel;->readInt()I
    move-result v0
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public i()[B
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;
    invoke-virtual { v0 }, Landroid/os/Parcel;->readInt()I
    move-result v0
    if-gez v0, :L0
    const/4 v0, 0
    return-object v0
  :L0
  .line 2
    new-array v0, v0, [B
  .line 3
    iget-object v1, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;
    invoke-virtual { v1, v0 }, Landroid/os/Parcel;->readByteArray([B)V
    return-object v0
.end method

.method protected k()Ljava/lang/CharSequence;
  .registers 3
  .line 1
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;
    iget-object v1, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;
    invoke-interface { v0, v1 }, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/CharSequence;
    return-object v0
.end method

.method public m(I)Z
  .registers 6
  :L0
  .line 1
    iget v0, p0, Landroidx/versionedparcelable/b;->j:I
    iget v1, p0, Landroidx/versionedparcelable/b;->g:I
    const/4 v2, 1
    const/4 v3, 0
    if-ge v0, v1, :L3
  .line 2
    iget v0, p0, Landroidx/versionedparcelable/b;->k:I
    if-ne v0, p1, :L1
    return v2
  :L1
  .line 3
    invoke-static { v0 }, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    move-result-object v0
    invoke-static { p1 }, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
    move-result v0
    if-lez v0, :L2
    return v3
  :L2
  .line 4
    iget-object v0, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;
    iget v1, p0, Landroidx/versionedparcelable/b;->j:I
    invoke-virtual { v0, v1 }, Landroid/os/Parcel;->setDataPosition(I)V
  .line 5
    iget-object v0, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;
    invoke-virtual { v0 }, Landroid/os/Parcel;->readInt()I
    move-result v0
  .line 6
    iget-object v1, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;
    invoke-virtual { v1 }, Landroid/os/Parcel;->readInt()I
    move-result v1
    iput v1, p0, Landroidx/versionedparcelable/b;->k:I
  .line 7
    iget v1, p0, Landroidx/versionedparcelable/b;->j:I
    add-int/2addr v1, v0
    iput v1, p0, Landroidx/versionedparcelable/b;->j:I
    goto :L0
  :L3
  .line 8
    iget v0, p0, Landroidx/versionedparcelable/b;->k:I
    if-ne v0, p1, :L4
    goto :L5
  :L4
    const/4 v2, 0
  :L5
    return v2
.end method

.method public o()I
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;
    invoke-virtual { v0 }, Landroid/os/Parcel;->readInt()I
    move-result v0
    return v0
.end method

.method public q()Landroid/os/Parcelable;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "<T::",
      "Landroid/os/Parcelable;",
      ">()TT;"
    }
  .end annotation
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;
    const-class v1, Landroidx/versionedparcelable/b;
    invoke-virtual { v1 }, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
    move-result-object v0
    return-object v0
.end method

.method public s()Ljava/lang/String;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;
    invoke-virtual { v0 }, Landroid/os/Parcel;->readString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public w(I)V
  .registers 4
  .line 1
    invoke-virtual { p0 }, Landroidx/versionedparcelable/b;->a()V
  .line 2
    iput p1, p0, Landroidx/versionedparcelable/b;->i:I
  .line 3
    iget-object v0, p0, Landroidx/versionedparcelable/b;->d:Landroid/util/SparseIntArray;
    iget-object v1, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;
    invoke-virtual { v1 }, Landroid/os/Parcel;->dataPosition()I
    move-result v1
    invoke-virtual { v0, p1, v1 }, Landroid/util/SparseIntArray;->put(II)V
    const/4 v0, 0
  .line 4
    invoke-virtual { p0, v0 }, Landroidx/versionedparcelable/b;->E(I)V
  .line 5
    invoke-virtual { p0, p1 }, Landroidx/versionedparcelable/b;->E(I)V
    return-void
.end method

.method public y(Z)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;
    invoke-virtual { v0, p1 }, Landroid/os/Parcel;->writeInt(I)V
    return-void
.end method
