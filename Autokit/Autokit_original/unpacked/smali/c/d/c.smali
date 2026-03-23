.class Lc/d/c;
.super Ljava/lang/Object;
.source "SourceFile"

.field final static a:[I

.field final static b:[J

.field final static c:[Ljava/lang/Object;

.method static constructor <clinit>()V
  .registers 3
    const/4 v0, 0
    new-array v1, v0, [I
  .line 1
    sput-object v1, Lc/d/c;->a:[I
    new-array v1, v0, [J
  .line 2
    sput-object v1, Lc/d/c;->b:[J
    new-array v0, v0, [Ljava/lang/Object;
  .line 3
    sput-object v0, Lc/d/c;->c:[Ljava/lang/Object;
    return-void
.end method

.method public constructor <init>()V
  .registers 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method static a([III)I
  .registers 6
    add-int/lit8 p1, p1, -1
    const/4 v0, 0
  :L0
    if-gt v0, p1, :L3
    add-int v1, v0, p1
    ushr-int/lit8 v1, v1, 1
  .line 1
    aget v2, p0, v1
    if-ge v2, p2, :L1
    add-int/lit8 v1, v1, 1
    move v0, v1
    goto :L0
  :L1
    if-le v2, p2, :L2
    add-int/lit8 v1, v1, -1
    move p1, v1
    goto :L0
  :L2
    return v1
  :L3
    xor-int/lit8 p0, v0, -1
    return p0
.end method

.method static b([JIJ)I
  .registers 9
    add-int/lit8 p1, p1, -1
    const/4 v0, 0
  :L0
    if-gt v0, p1, :L3
    add-int v1, v0, p1
    ushr-int/lit8 v1, v1, 1
  .line 1
    aget-wide v2, p0, v1
    cmp-long v4, v2, p2
    if-gez v4, :L1
    add-int/lit8 v1, v1, 1
    move v0, v1
    goto :L0
  :L1
    cmp-long p1, v2, p2
    if-lez p1, :L2
    add-int/lit8 v1, v1, -1
    move p1, v1
    goto :L0
  :L2
    return v1
  :L3
    xor-int/lit8 p0, v0, -1
    return p0
.end method

.method public static c(Ljava/lang/Object;Ljava/lang/Object;)Z
  .registers 2
    if-eq p0, p1, :L1
    if-eqz p0, :L0
  .line 1
    invoke-virtual { p0, p1 }, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    move-result p0
    if-eqz p0, :L0
    goto :L1
  :L0
    const/4 p0, 0
    goto :L2
  :L1
    const/4 p0, 1
  :L2
    return p0
.end method

.method public static d(I)I
  .registers 3
    const/4 v0, 4
  :L0
    const/16 v1, 32
    if-ge v0, v1, :L2
    const/4 v1, 1
    shl-int/2addr v1, v0
    add-int/lit8 v1, v1, -12
    if-gt p0, v1, :L1
    return v1
  :L1
    add-int/lit8 v0, v0, 1
    goto :L0
  :L2
    return p0
.end method

.method public static e(I)I
  .registers 1
    mul-int/lit8 p0, p0, 4
  .line 1
    invoke-static { p0 }, Lc/d/c;->d(I)I
    move-result p0
    div-int/lit8 p0, p0, 4
    return p0
.end method

.method public static f(I)I
  .registers 1
    mul-int/lit8 p0, p0, 8
  .line 1
    invoke-static { p0 }, Lc/d/c;->d(I)I
    move-result p0
    div-int/lit8 p0, p0, 8
    return p0
.end method
