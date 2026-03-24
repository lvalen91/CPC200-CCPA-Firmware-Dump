.class public Ld/c/a/a/p/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_a

    const/4 v0, 0x2

    .line 2
    sput v0, Ld/c/a/a/p/c;->a:I

    goto :goto_15

    :cond_a
    const/16 v1, 0x12

    if-lt v0, v1, :cond_12

    const/4 v0, 0x1

    .line 3
    sput v0, Ld/c/a/a/p/c;->a:I

    goto :goto_15

    :cond_12
    const/4 v0, 0x0

    .line 4
    sput v0, Ld/c/a/a/p/c;->a:I

    :goto_15
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    const p0, 0x0

    throw p0
.end method

.method public b()V
    .registers 1

    const p0, 0x0

    throw p0
.end method

.method public c(Landroid/graphics/Canvas;)V
    .registers 2

    const p0, 0x0

    throw p0
.end method

.method public d()Landroid/graphics/drawable/Drawable;
    .registers 1

    const p0, 0x0

    throw p0
.end method

.method public e()I
    .registers 1

    const p0, 0x0

    throw p0
.end method

.method public f()Ld/c/a/a/p/d$e;
    .registers 1

    const p0, 0x0

    throw p0
.end method

.method public g()Z
    .registers 1

    const p0, 0x0

    throw p0
.end method

.method public h(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    const p0, 0x0

    throw p0
.end method

.method public i(I)V
    .registers 2

    const p0, 0x0

    throw p0
.end method

.method public j(Ld/c/a/a/p/d$e;)V
    .registers 2

    const p0, 0x0

    throw p0
.end method
