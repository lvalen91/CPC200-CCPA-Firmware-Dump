.class final Lcn/manstep/phonemirrorBox/util/x$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/manstep/phonemirrorBox/util/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcn/manstep/phonemirrorBox/util/x;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcn/manstep/phonemirrorBox/util/x;
    .registers 3

    .line 1
    new-instance v0, Lcn/manstep/phonemirrorBox/util/x;

    invoke-direct {v0, p1}, Lcn/manstep/phonemirrorBox/util/x;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public b(I)[Lcn/manstep/phonemirrorBox/util/x;
    .registers 2

    .line 1
    new-array p1, p1, [Lcn/manstep/phonemirrorBox/util/x;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcn/manstep/phonemirrorBox/util/x$a;->a(Landroid/os/Parcel;)Lcn/manstep/phonemirrorBox/util/x;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcn/manstep/phonemirrorBox/util/x$a;->b(I)[Lcn/manstep/phonemirrorBox/util/x;

    move-result-object p1

    return-object p1
.end method
