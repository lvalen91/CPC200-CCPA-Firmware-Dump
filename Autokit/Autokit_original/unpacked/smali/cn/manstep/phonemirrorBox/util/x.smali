.class public Lcn/manstep/phonemirrorBox/util/x;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable;
.source "SourceFile"

.field public final static CREATOR:Landroid/os/Parcelable$Creator;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Landroid/os/Parcelable$Creator<",
      "Lcn/manstep/phonemirrorBox/util/x;",
      ">;"
    }
  .end annotation
.end field

.field public b:I

.field public c:I

.method static constructor <clinit>()V
  .registers 1
  .line 1
    new-instance v0, Lcn/manstep/phonemirrorBox/util/x$a;
    invoke-direct { v0 }, Lcn/manstep/phonemirrorBox/util/x$a;-><init>()V
    sput-object v0, Lcn/manstep/phonemirrorBox/util/x;->CREATOR:Landroid/os/Parcelable$Creator;
    return-void
.end method

.method public constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 0
  .line 2
    invoke-virtual { p0, v0, v0 }, Lcn/manstep/phonemirrorBox/util/x;->m(II)V
    return-void
.end method

.method public constructor <init>(II)V
  .registers 3
  .line 3
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 4
    invoke-virtual { p0, p1, p2 }, Lcn/manstep/phonemirrorBox/util/x;->m(II)V
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
  .registers 3
  .line 7
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 8
    invoke-virtual { p1 }, Landroid/os/Parcel;->readInt()I
    move-result v0
    iput v0, p0, Lcn/manstep/phonemirrorBox/util/x;->b:I
  .line 9
    invoke-virtual { p1 }, Landroid/os/Parcel;->readInt()I
    move-result p1
    iput p1, p0, Lcn/manstep/phonemirrorBox/util/x;->c:I
    return-void
.end method

.method public constructor <init>(Lcn/manstep/phonemirrorBox/util/x;)V
  .registers 3
  .line 5
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 6
    iget v0, p1, Lcn/manstep/phonemirrorBox/util/x;->b:I
    iget p1, p1, Lcn/manstep/phonemirrorBox/util/x;->c:I
    invoke-virtual { p0, v0, p1 }, Lcn/manstep/phonemirrorBox/util/x;->m(II)V
    return-void
.end method

.method public static l(Ljava/lang/String;)Lcn/manstep/phonemirrorBox/util/x;
  .catch Ljava/lang/NumberFormatException; { :L3 .. :L4 } :L5
  .registers 6
    const/4 v0, 4
    new-array v1, v0, [I
  .line 1
    fill-array-data v1, :L6
    const/4 v2, 0
    const/4 v3, -1
    const/4 v4, 0
  :L0
    if-ge v4, v0, :L2
  .line 2
    aget v3, v1, v4
  .line 3
    invoke-virtual { p0, v3 }, Ljava/lang/String;->indexOf(I)I
    move-result v3
    if-ltz v3, :L1
    goto :L2
  :L1
    add-int/lit8 v4, v4, 1
    goto :L0
  :L2
    if-gez v3, :L3
  .line 4
    new-instance p0, Lcn/manstep/phonemirrorBox/util/x;
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/util/x;-><init>()V
    return-object p0
  :L3
  .line 5
    new-instance v0, Lcn/manstep/phonemirrorBox/util/x;
    invoke-virtual { p0, v2, v3 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v1
    add-int/lit8 v3, v3, 1
    invoke-virtual { p0, v3 }, Ljava/lang/String;->substring(I)Ljava/lang/String;
    move-result-object p0
    invoke-static { p0 }, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result p0
    invoke-direct { v0, v1, p0 }, Lcn/manstep/phonemirrorBox/util/x;-><init>(II)V
  :L4
    return-object v0
  :L5
  .line 6
    new-instance p0, Lcn/manstep/phonemirrorBox/util/x;
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/util/x;-><init>()V
    return-object p0
  :L6
  .array-data 4
    42t 0t 0t 0t
    120t 0t 0t 0t
    95t 0t 0t 0t
    44t 0t 0t 0t
  .end array-data
.end method

.method public describeContents()I
  .registers 2
    const/4 v0, 0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
  .registers 6
    const/4 v0, 0
    if-nez p1, :L0
    return v0
  :L0
    const/4 v1, 1
    if-ne p0, p1, :L1
    return v1
  :L1
  .line 1
    instance-of v2, p1, Lcn/manstep/phonemirrorBox/util/x;
    if-eqz v2, :L3
  .line 2
    check-cast p1, Lcn/manstep/phonemirrorBox/util/x;
  .line 3
    iget v2, p0, Lcn/manstep/phonemirrorBox/util/x;->b:I
    iget v3, p1, Lcn/manstep/phonemirrorBox/util/x;->b:I
    if-ne v2, v3, :L2
    iget v2, p0, Lcn/manstep/phonemirrorBox/util/x;->c:I
    iget p1, p1, Lcn/manstep/phonemirrorBox/util/x;->c:I
    if-ne v2, p1, :L2
    const/4 v0, 1
  :L2
    return v0
  :L3
  .line 4
    instance-of v2, p1, Ljava/lang/String;
    if-eqz v2, :L4
  .line 5
    check-cast p1, Ljava/lang/String;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/x;->l(Ljava/lang/String;)Lcn/manstep/phonemirrorBox/util/x;
    move-result-object p1
  .line 6
    iget v2, p0, Lcn/manstep/phonemirrorBox/util/x;->b:I
    iget v3, p1, Lcn/manstep/phonemirrorBox/util/x;->b:I
    if-ne v2, v3, :L4
    iget v2, p0, Lcn/manstep/phonemirrorBox/util/x;->c:I
    iget p1, p1, Lcn/manstep/phonemirrorBox/util/x;->c:I
    if-ne v2, p1, :L4
    const/4 v0, 1
  :L4
    return v0
.end method

.method public hashCode()I
  .registers 4
  .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/util/x;->c:I
    iget v1, p0, Lcn/manstep/phonemirrorBox/util/x;->b:I
    shl-int/lit8 v2, v1, 16
    ushr-int/lit8 v1, v1, 16
    or-int/2addr v1, v2
    xor-int/2addr v0, v1
    return v0
.end method

.method public j(II)Z
  .registers 5
  .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/util/x;->b:I
    const/4 v1, 0
    if-eq p1, v0, :L0
    return v1
  :L0
  .line 2
    iget p1, p0, Lcn/manstep/phonemirrorBox/util/x;->c:I
    if-ne p2, p1, :L1
    const/4 v1, 1
  :L1
    return v1
.end method

.method public k()Z
  .registers 3
  .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/util/x;->b:I
    const/4 v1, 1
    if-gtz v0, :L0
    return v1
  :L0
  .line 2
    iget v0, p0, Lcn/manstep/phonemirrorBox/util/x;->c:I
    if-gtz v0, :L1
    goto :L2
  :L1
    const/4 v1, 0
  :L2
    return v1
.end method

.method public m(II)V
  .registers 3
  .line 1
    iput p1, p0, Lcn/manstep/phonemirrorBox/util/x;->b:I
  .line 2
    iput p2, p0, Lcn/manstep/phonemirrorBox/util/x;->c:I
    return-void
.end method

.method public n(Lcn/manstep/phonemirrorBox/util/x;)V
  .registers 3
  .line 1
    iget v0, p1, Lcn/manstep/phonemirrorBox/util/x;->b:I
    iput v0, p0, Lcn/manstep/phonemirrorBox/util/x;->b:I
  .line 2
    iget p1, p1, Lcn/manstep/phonemirrorBox/util/x;->c:I
    iput p1, p0, Lcn/manstep/phonemirrorBox/util/x;->c:I
    return-void
.end method

.method public toString()Ljava/lang/String;
  .registers 3
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    iget v1, p0, Lcn/manstep/phonemirrorBox/util/x;->b:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, "x"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Lcn/manstep/phonemirrorBox/util/x;->c:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
  .registers 3
  .line 1
    iget p2, p0, Lcn/manstep/phonemirrorBox/util/x;->b:I
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->writeInt(I)V
  .line 2
    iget p2, p0, Lcn/manstep/phonemirrorBox/util/x;->c:I
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->writeInt(I)V
    return-void
.end method
