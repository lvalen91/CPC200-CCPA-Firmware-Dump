.class public final Landroid/support/v4/media/RatingCompat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/support/v4/media/RatingCompat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:I

.field private final c:F

.field private d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/support/v4/media/RatingCompat$a;

    invoke-direct {v0}, Landroid/support/v4/media/RatingCompat$a;-><init>()V

    sput-object v0, Landroid/support/v4/media/RatingCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IF)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroid/support/v4/media/RatingCompat;->b:I

    .line 3
    iput p2, p0, Landroid/support/v4/media/RatingCompat;->c:F

    return-void
.end method

.method public static j(Ljava/lang/Object;)Landroid/support/v4/media/RatingCompat;
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_44

    .line 1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_44

    .line 2
    move-object v1, p0

    check-cast v1, Landroid/media/Rating;

    invoke-virtual {v1}, Landroid/media/Rating;->getRatingStyle()I

    move-result v2

    .line 3
    invoke-virtual {v1}, Landroid/media/Rating;->isRated()Z

    move-result v3

    if-eqz v3, :cond_3e

    packed-switch v2, :pswitch_data_46

    return-object v0

    .line 4
    :pswitch_1a
    invoke-virtual {v1}, Landroid/media/Rating;->getPercentRating()F

    move-result v0

    .line 5
    invoke-static {v0}, Landroid/support/v4/media/RatingCompat;->l(F)Landroid/support/v4/media/RatingCompat;

    move-result-object v0

    goto :goto_42

    .line 6
    :pswitch_23
    invoke-virtual {v1}, Landroid/media/Rating;->getStarRating()F

    move-result v0

    .line 7
    invoke-static {v2, v0}, Landroid/support/v4/media/RatingCompat;->m(IF)Landroid/support/v4/media/RatingCompat;

    move-result-object v0

    goto :goto_42

    .line 8
    :pswitch_2c
    invoke-virtual {v1}, Landroid/media/Rating;->isThumbUp()Z

    move-result v0

    invoke-static {v0}, Landroid/support/v4/media/RatingCompat;->n(Z)Landroid/support/v4/media/RatingCompat;

    move-result-object v0

    goto :goto_42

    .line 9
    :pswitch_35
    invoke-virtual {v1}, Landroid/media/Rating;->hasHeart()Z

    move-result v0

    invoke-static {v0}, Landroid/support/v4/media/RatingCompat;->k(Z)Landroid/support/v4/media/RatingCompat;

    move-result-object v0

    goto :goto_42

    .line 10
    :cond_3e
    invoke-static {v2}, Landroid/support/v4/media/RatingCompat;->o(I)Landroid/support/v4/media/RatingCompat;

    move-result-object v0

    .line 11
    :goto_42
    iput-object p0, v0, Landroid/support/v4/media/RatingCompat;->d:Ljava/lang/Object;

    :cond_44
    return-object v0

    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_35
        :pswitch_2c
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_1a
    .end packed-switch
.end method

.method public static k(Z)Landroid/support/v4/media/RatingCompat;
    .registers 3

    .line 1
    new-instance v0, Landroid/support/v4/media/RatingCompat;

    if-eqz p0, :cond_7

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/support/v4/media/RatingCompat;-><init>(IF)V

    return-object v0
.end method

.method public static l(F)Landroid/support/v4/media/RatingCompat;
    .registers 3

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_13

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_c

    goto :goto_13

    .line 1
    :cond_c
    new-instance v0, Landroid/support/v4/media/RatingCompat;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Landroid/support/v4/media/RatingCompat;-><init>(IF)V

    return-object v0

    :cond_13
    :goto_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public static m(IF)Landroid/support/v4/media/RatingCompat;
    .registers 5

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p0, v0, :cond_26

    const/4 v0, 0x4

    if-eq p0, v0, :cond_23

    const/4 v0, 0x5

    if-eq p0, v0, :cond_20

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid rating style ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") for a star rating"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-object v1

    :cond_20
    const/high16 v0, 0x40a00000    # 5.0f

    goto :goto_28

    :cond_23
    const/high16 v0, 0x40800000    # 4.0f

    goto :goto_28

    :cond_26
    const/high16 v0, 0x40400000    # 3.0f

    :goto_28
    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-ltz v2, :cond_38

    cmpl-float v0, p1, v0

    if-lez v0, :cond_32

    goto :goto_38

    .line 2
    :cond_32
    new-instance v0, Landroid/support/v4/media/RatingCompat;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/media/RatingCompat;-><init>(IF)V

    return-object v0

    :cond_38
    :goto_38
    return-object v1
.end method

.method public static n(Z)Landroid/support/v4/media/RatingCompat;
    .registers 3

    .line 1
    new-instance v0, Landroid/support/v4/media/RatingCompat;

    if-eqz p0, :cond_7

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroid/support/v4/media/RatingCompat;-><init>(IF)V

    return-object v0
.end method

.method public static o(I)Landroid/support/v4/media/RatingCompat;
    .registers 3

    packed-switch p0, :pswitch_data_e

    const/4 p0, 0x0

    return-object p0

    .line 1
    :pswitch_5
    new-instance v0, Landroid/support/v4/media/RatingCompat;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {v0, p0, v1}, Landroid/support/v4/media/RatingCompat;-><init>(IF)V

    return-object v0

    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 1
    iget v0, p0, Landroid/support/v4/media/RatingCompat;->b:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rating:style="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/media/RatingCompat;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/media/RatingCompat;->c:F

    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1e

    const-string v1, "unrated"

    goto :goto_22

    .line 2
    :cond_1e
    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    :goto_22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    iget p2, p0, Landroid/support/v4/media/RatingCompat;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget p2, p0, Landroid/support/v4/media/RatingCompat;->c:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
