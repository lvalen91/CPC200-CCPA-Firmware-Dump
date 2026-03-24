.class public final Landroidx/core/view/d0$m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "m"
.end annotation


# direct methods
.method static a(I)I
    .registers 4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_44

    const/4 v1, 0x2

    if-eq p0, v1, :cond_43

    const/4 v0, 0x4

    if-eq p0, v0, :cond_42

    const/16 v1, 0x8

    if-eq p0, v1, :cond_40

    const/16 v2, 0x10

    if-eq p0, v2, :cond_3f

    const/16 v0, 0x20

    if-eq p0, v0, :cond_3d

    const/16 v0, 0x40

    if-eq p0, v0, :cond_3b

    const/16 v0, 0x80

    if-eq p0, v0, :cond_39

    const/16 v0, 0x100

    if-ne p0, v0, :cond_22

    return v1

    .line 1
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type needs to be >= FIRST and <= LAST, type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    const/4 p0, 0x7

    return p0

    :cond_3b
    const/4 p0, 0x6

    return p0

    :cond_3d
    const/4 p0, 0x5

    return p0

    :cond_3f
    return v0

    :cond_40
    const/4 p0, 0x3

    return p0

    :cond_42
    return v1

    :cond_43
    return v0

    :cond_44
    const/4 p0, 0x0

    return p0
.end method
