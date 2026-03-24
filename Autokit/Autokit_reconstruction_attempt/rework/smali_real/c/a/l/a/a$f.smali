.class Lc/a/l/a/a$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/l/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field private a:[I

.field private b:I

.field private c:I


# direct methods
.method constructor <init>(Landroid/graphics/drawable/AnimationDrawable;Z)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0, p1, p2}, Lc/a/l/a/a$f;->b(Landroid/graphics/drawable/AnimationDrawable;Z)I

    return-void
.end method


# virtual methods
.method a()I
    .registers 2

    .line 1
    iget v0, p0, Lc/a/l/a/a$f;->c:I

    return v0
.end method

.method b(Landroid/graphics/drawable/AnimationDrawable;Z)I
    .registers 8

    .line 1
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v0

    .line 2
    iput v0, p0, Lc/a/l/a/a$f;->b:I

    .line 3
    iget-object v1, p0, Lc/a/l/a/a$f;->a:[I

    if-eqz v1, :cond_d

    array-length v1, v1

    if-ge v1, v0, :cond_11

    .line 4
    :cond_d
    new-array v1, v0, [I

    iput-object v1, p0, Lc/a/l/a/a$f;->a:[I

    .line 5
    :cond_11
    iget-object v1, p0, Lc/a/l/a/a$f;->a:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_15
    if-ge v2, v0, :cond_29

    if-eqz p2, :cond_1e

    sub-int v4, v0, v2

    add-int/lit8 v4, v4, -0x1

    goto :goto_1f

    :cond_1e
    move v4, v2

    .line 6
    :goto_1f
    invoke-virtual {p1, v4}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v4

    .line 7
    aput v4, v1, v2

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 8
    :cond_29
    iput v3, p0, Lc/a/l/a/a$f;->c:I

    return v3
.end method

.method public getInterpolation(F)F
    .registers 6

    .line 1
    iget v0, p0, Lc/a/l/a/a$f;->c:I

    int-to-float v0, v0

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    .line 2
    iget v0, p0, Lc/a/l/a/a$f;->b:I

    .line 3
    iget-object v1, p0, Lc/a/l/a/a$f;->a:[I

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v0, :cond_1a

    .line 4
    aget v3, v1, v2

    if-lt p1, v3, :cond_1a

    .line 5
    aget v3, v1, v2

    sub-int/2addr p1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1a
    if-ge v2, v0, :cond_22

    int-to-float p1, p1

    .line 6
    iget v1, p0, Lc/a/l/a/a$f;->c:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    goto :goto_23

    :cond_22
    const/4 p1, 0x0

    :goto_23
    int-to-float v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    add-float/2addr v1, p1

    return v1
.end method
