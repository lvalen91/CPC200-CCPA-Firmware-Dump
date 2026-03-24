.class public final Lcom/yalantis/ucrop/util/CubicEasing;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static easeIn(FFFF)F
    .registers 4

    div-float/2addr p0, p3

    mul-float p2, p2, p0

    mul-float p2, p2, p0

    mul-float p2, p2, p0

    add-float/2addr p2, p1

    return p2
.end method

.method public static easeInOut(FFFF)F
    .registers 5

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p3, v0

    div-float/2addr p0, p3

    const/high16 p3, 0x3f800000    # 1.0f

    cmpg-float p3, p0, p3

    div-float/2addr p2, v0

    if-gez p3, :cond_12

    mul-float p2, p2, p0

    mul-float p2, p2, p0

    mul-float p2, p2, p0

    goto :goto_1a

    :cond_12
    sub-float/2addr p0, v0

    mul-float p3, p0, p0

    mul-float p3, p3, p0

    add-float/2addr p3, v0

    mul-float p2, p2, p3

    :goto_1a
    add-float/2addr p2, p1

    return p2
.end method

.method public static easeOut(FFFF)F
    .registers 5

    div-float/2addr p0, p3

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float/2addr p0, p3

    mul-float v0, p0, p0

    mul-float v0, v0, p0

    add-float/2addr v0, p3

    mul-float p2, p2, v0

    add-float/2addr p2, p1

    return p2
.end method
