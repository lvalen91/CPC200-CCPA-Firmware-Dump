.class public Lcn/manstep/phonemirrorBox/util/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcn/manstep/phonemirrorBox/util/x;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:I

.field public c:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcn/manstep/phonemirrorBox/util/x$a;

    invoke-direct {v0}, Lcn/manstep/phonemirrorBox/util/x$a;-><init>()V

    sput-object v0, Lcn/manstep/phonemirrorBox/util/x;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0}, Lcn/manstep/phonemirrorBox/util/x;->m(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p0, p1, p2}, Lcn/manstep/phonemirrorBox/util/x;->m(II)V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/manstep/phonemirrorBox/util/x;->b:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcn/manstep/phonemirrorBox/util/x;->c:I

    return-void
.end method

.method public constructor <init>(Lcn/manstep/phonemirrorBox/util/x;)V
    .registers 3

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iget v0, p1, Lcn/manstep/phonemirrorBox/util/x;->b:I

    iget p1, p1, Lcn/manstep/phonemirrorBox/util/x;->c:I

    invoke-virtual {p0, v0, p1}, Lcn/manstep/phonemirrorBox/util/x;->m(II)V

    return-void
.end method

.method public static l(Ljava/lang/String;)Lcn/manstep/phonemirrorBox/util/x;
    .registers 6

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_3e

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v0, :cond_17

    .line 2
    aget v3, v1, v4

    .line 3
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_14

    goto :goto_17

    :cond_14
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_17
    :goto_17
    if-gez v3, :cond_1f

    .line 4
    new-instance p0, Lcn/manstep/phonemirrorBox/util/x;

    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/util/x;-><init>()V

    return-object p0

    .line 5
    :cond_1f
    :try_start_1f
    new-instance v0, Lcn/manstep/phonemirrorBox/util/x;

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-direct {v0, v1, p0}, Lcn/manstep/phonemirrorBox/util/x;-><init>(II)V
    :try_end_36
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_36} :catch_37

    return-object v0

    .line 6
    :catch_37
    new-instance p0, Lcn/manstep/phonemirrorBox/util/x;

    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/util/x;-><init>()V

    return-object p0

    nop

    :array_3e
    .array-data 4
        0x2a
        0x78
        0x5f
        0x2c
    .end array-data
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    return v1

    .line 1
    :cond_8
    instance-of v2, p1, Lcn/manstep/phonemirrorBox/util/x;

    if-eqz v2, :cond_1c

    .line 2
    check-cast p1, Lcn/manstep/phonemirrorBox/util/x;

    .line 3
    iget v2, p0, Lcn/manstep/phonemirrorBox/util/x;->b:I

    iget v3, p1, Lcn/manstep/phonemirrorBox/util/x;->b:I

    if-ne v2, v3, :cond_1b

    iget v2, p0, Lcn/manstep/phonemirrorBox/util/x;->c:I

    iget p1, p1, Lcn/manstep/phonemirrorBox/util/x;->c:I

    if-ne v2, p1, :cond_1b

    const/4 v0, 0x1

    :cond_1b
    return v0

    .line 4
    :cond_1c
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_33

    .line 5
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/x;->l(Ljava/lang/String;)Lcn/manstep/phonemirrorBox/util/x;

    move-result-object p1

    .line 6
    iget v2, p0, Lcn/manstep/phonemirrorBox/util/x;->b:I

    iget v3, p1, Lcn/manstep/phonemirrorBox/util/x;->b:I

    if-ne v2, v3, :cond_33

    iget v2, p0, Lcn/manstep/phonemirrorBox/util/x;->c:I

    iget p1, p1, Lcn/manstep/phonemirrorBox/util/x;->c:I

    if-ne v2, p1, :cond_33

    const/4 v0, 0x1

    :cond_33
    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/util/x;->c:I

    iget v1, p0, Lcn/manstep/phonemirrorBox/util/x;->b:I

    shl-int/lit8 v2, v1, 0x10

    ushr-int/lit8 v1, v1, 0x10

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public j(II)Z
    .registers 5

    .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/util/x;->b:I

    const/4 v1, 0x0

    if-eq p1, v0, :cond_6

    return v1

    .line 2
    :cond_6
    iget p1, p0, Lcn/manstep/phonemirrorBox/util/x;->c:I

    if-ne p2, p1, :cond_b

    const/4 v1, 0x1

    :cond_b
    return v1
.end method

.method public k()Z
    .registers 3

    .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/util/x;->b:I

    const/4 v1, 0x1

    if-gtz v0, :cond_6

    return v1

    .line 2
    :cond_6
    iget v0, p0, Lcn/manstep/phonemirrorBox/util/x;->c:I

    if-gtz v0, :cond_b

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
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

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcn/manstep/phonemirrorBox/util/x;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/manstep/phonemirrorBox/util/x;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    iget p2, p0, Lcn/manstep/phonemirrorBox/util/x;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget p2, p0, Lcn/manstep/phonemirrorBox/util/x;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
