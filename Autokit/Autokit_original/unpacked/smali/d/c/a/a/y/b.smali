.class public Ld/c/a/a/y/b;
.super Ljava/lang/Object;
.source "SourceFile"

.field public final static a:Z

.field private final static b:[I

.field final static c:Ljava/lang/String;

.method static constructor <clinit>()V
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    sput-boolean v0, Ld/c/a/a/y/b;->a:Z
    const/4 v0, 2
    new-array v0, v0, [I
  .line 2
    fill-array-data v0, :L2
    sput-object v0, Ld/c/a/a/y/b;->b:[I
  .line 3
    const-class v0, Ld/c/a/a/y/b;
    invoke-virtual { v0 }, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
    move-result-object v0
    sput-object v0, Ld/c/a/a/y/b;->c:Ljava/lang/String;
    return-void
  :L2
  .array-data 4
    -98t 0t 1t 1t
    -89t 0t 1t 1t
  .end array-data
.end method

.method private constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static a(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
  .registers 4
    const/4 v0, 0
    if-eqz p0, :L1
  .line 1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 22
    if-lt v1, v2, :L0
    const/16 v2, 27
    if-gt v1, v2, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/content/res/ColorStateList;->getDefaultColor()I
    move-result v1
    invoke-static { v1 }, Landroid/graphics/Color;->alpha(I)I
    move-result v1
    if-nez v1, :L0
    sget-object v1, Ld/c/a/a/y/b;->b:[I
  .line 3
    invoke-virtual { p0, v1, v0 }, Landroid/content/res/ColorStateList;->getColorForState([II)I
    move-result v0
    invoke-static { v0 }, Landroid/graphics/Color;->alpha(I)I
    move-result v0
  :L0
    return-object p0
  :L1
  .line 4
    invoke-static { v0 }, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;
    move-result-object p0
    return-object p0
.end method

.method public static b([I)Z
  .registers 9
  .line 1
    array-length v0, p0
    const/4 v1, 0
    const/4 v2, 0
    const/4 v3, 0
    const/4 v4, 0
  :L0
    const/4 v5, 1
    if-ge v2, v0, :L6
    aget v6, p0, v2
    const v7, 16842910
    if-ne v6, v7, :L1
    const/4 v3, 1
    goto :L5
  :L1
    const v7, 16842908
    if-ne v6, v7, :L3
  :L2
    const/4 v4, 1
    goto :L5
  :L3
    const v7, 16842919
    if-ne v6, v7, :L4
    goto :L2
  :L4
    const v7, 16843623
    if-ne v6, v7, :L5
    goto :L2
  :L5
    add-int/lit8 v2, v2, 1
    goto :L0
  :L6
    if-eqz v3, :L7
    if-eqz v4, :L7
    const/4 v1, 1
  :L7
    return v1
.end method
