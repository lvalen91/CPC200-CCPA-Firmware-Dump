.class public final Lc/g/d/a;
.super Ljava/lang/Object;
.source "SourceFile"

.method static constructor <clinit>()V
  .registers 3
  .line 1
    new-instance v0, Ljava/lang/ThreadLocal;
    invoke-direct { v0 }, Ljava/lang/ThreadLocal;-><init>()V
    return-void
.end method

.method public constructor <init>()V
  .registers 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method private static a(II)I
  .registers 2
    rsub-int p1, p1, 255
    rsub-int p0, p0, 255
    mul-int p1, p1, p0
  .line 1
    div-int/lit16 p1, p1, 255
    rsub-int p0, p1, 255
    return p0
.end method

.method public static b(II)I
  .registers 8
  .line 1
    invoke-static { p1 }, Landroid/graphics/Color;->alpha(I)I
    move-result v0
  .line 2
    invoke-static { p0 }, Landroid/graphics/Color;->alpha(I)I
    move-result v1
  .line 3
    invoke-static { v1, v0 }, Lc/g/d/a;->a(II)I
    move-result v2
  .line 4
    invoke-static { p0 }, Landroid/graphics/Color;->red(I)I
    move-result v3
  .line 5
    invoke-static { p1 }, Landroid/graphics/Color;->red(I)I
    move-result v4
  .line 6
    invoke-static { v3, v1, v4, v0, v2 }, Lc/g/d/a;->c(IIIII)I
    move-result v3
  .line 7
    invoke-static { p0 }, Landroid/graphics/Color;->green(I)I
    move-result v4
  .line 8
    invoke-static { p1 }, Landroid/graphics/Color;->green(I)I
    move-result v5
  .line 9
    invoke-static { v4, v1, v5, v0, v2 }, Lc/g/d/a;->c(IIIII)I
    move-result v4
  .line 10
    invoke-static { p0 }, Landroid/graphics/Color;->blue(I)I
    move-result p0
  .line 11
    invoke-static { p1 }, Landroid/graphics/Color;->blue(I)I
    move-result p1
  .line 12
    invoke-static { p0, v1, p1, v0, v2 }, Lc/g/d/a;->c(IIIII)I
    move-result p0
  .line 13
    invoke-static { v2, v3, v4, p0 }, Landroid/graphics/Color;->argb(IIII)I
    move-result p0
    return p0
.end method

.method private static c(IIIII)I
  .registers 5
    if-nez p4, :L0
    const/4 p0, 0
    return p0
  :L0
    mul-int/lit16 p0, p0, 255
    mul-int p0, p0, p1
    mul-int p2, p2, p3
    rsub-int p1, p1, 255
    mul-int p2, p2, p1
    add-int/2addr p0, p2
    mul-int/lit16 p4, p4, 255
  .line 1
    div-int/2addr p0, p4
    return p0
.end method

.method public static d(II)I
  .registers 3
    if-ltz p1, :L0
    const/16 v0, 255
    if-gt p1, v0, :L0
    const v0, 16777215
    and-int/2addr p0, v0
    shl-int/lit8 p1, p1, 24
    or-int/2addr p0, p1
    return p0
  :L0
  .line 1
    new-instance p0, Ljava/lang/IllegalArgumentException;
    const-string p1, "alpha must be between 0 and 255."
    invoke-direct { p0, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p0
.end method
