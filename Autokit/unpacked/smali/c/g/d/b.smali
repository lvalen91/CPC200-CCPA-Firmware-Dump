.class public final Lc/g/d/b;
.super Ljava/lang/Object;
.source "SourceFile"

.field public final static e:Lc/g/d/b;

.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.method static constructor <clinit>()V
  .registers 4
  .line 1
    new-instance v0, Lc/g/d/b;
    const/4 v1, 0
    invoke-direct { v0, v1, v1, v1, v1 }, Lc/g/d/b;-><init>(IIII)V
    sput-object v0, Lc/g/d/b;->e:Lc/g/d/b;
    return-void
.end method

.method private constructor <init>(IIII)V
  .registers 5
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput p1, p0, Lc/g/d/b;->a:I
  .line 3
    iput p2, p0, Lc/g/d/b;->b:I
  .line 4
    iput p3, p0, Lc/g/d/b;->c:I
  .line 5
    iput p4, p0, Lc/g/d/b;->d:I
    return-void
.end method

.method public static a(Lc/g/d/b;Lc/g/d/b;)Lc/g/d/b;
  .registers 6
  .line 1
    iget v0, p0, Lc/g/d/b;->a:I
    iget v1, p1, Lc/g/d/b;->a:I
    invoke-static { v0, v1 }, Ljava/lang/Math;->max(II)I
    move-result v0
    iget v1, p0, Lc/g/d/b;->b:I
    iget v2, p1, Lc/g/d/b;->b:I
    invoke-static { v1, v2 }, Ljava/lang/Math;->max(II)I
    move-result v1
    iget v2, p0, Lc/g/d/b;->c:I
    iget v3, p1, Lc/g/d/b;->c:I
  .line 2
    invoke-static { v2, v3 }, Ljava/lang/Math;->max(II)I
    move-result v2
    iget p0, p0, Lc/g/d/b;->d:I
    iget p1, p1, Lc/g/d/b;->d:I
    invoke-static { p0, p1 }, Ljava/lang/Math;->max(II)I
    move-result p0
  .line 3
    invoke-static { v0, v1, v2, p0 }, Lc/g/d/b;->b(IIII)Lc/g/d/b;
    move-result-object p0
    return-object p0
.end method

.method public static b(IIII)Lc/g/d/b;
  .registers 5
    if-nez p0, :L0
    if-nez p1, :L0
    if-nez p2, :L0
    if-nez p3, :L0
  .line 1
    sget-object p0, Lc/g/d/b;->e:Lc/g/d/b;
    return-object p0
  :L0
  .line 2
    new-instance v0, Lc/g/d/b;
    invoke-direct { v0, p0, p1, p2, p3 }, Lc/g/d/b;-><init>(IIII)V
    return-object v0
.end method

.method public static c(Landroid/graphics/Rect;)Lc/g/d/b;
  .registers 4
  .line 1
    iget v0, p0, Landroid/graphics/Rect;->left:I
    iget v1, p0, Landroid/graphics/Rect;->top:I
    iget v2, p0, Landroid/graphics/Rect;->right:I
    iget p0, p0, Landroid/graphics/Rect;->bottom:I
    invoke-static { v0, v1, v2, p0 }, Lc/g/d/b;->b(IIII)Lc/g/d/b;
    move-result-object p0
    return-object p0
.end method

.method public static d(Landroid/graphics/Insets;)Lc/g/d/b;
  .registers 4
  .line 1
    iget v0, p0, Landroid/graphics/Insets;->left:I
    iget v1, p0, Landroid/graphics/Insets;->top:I
    iget v2, p0, Landroid/graphics/Insets;->right:I
    iget p0, p0, Landroid/graphics/Insets;->bottom:I
    invoke-static { v0, v1, v2, p0 }, Lc/g/d/b;->b(IIII)Lc/g/d/b;
    move-result-object p0
    return-object p0
.end method

.method public e()Landroid/graphics/Insets;
  .registers 5
  .line 1
    iget v0, p0, Lc/g/d/b;->a:I
    iget v1, p0, Lc/g/d/b;->b:I
    iget v2, p0, Lc/g/d/b;->c:I
    iget v3, p0, Lc/g/d/b;->d:I
    invoke-static { v0, v1, v2, v3 }, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;
    move-result-object v0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
  .registers 6
    const/4 v0, 1
    if-ne p0, p1, :L0
    return v0
  :L0
    const/4 v1, 0
    if-eqz p1, :L6
  .line 1
    const-class v2, Lc/g/d/b;
    invoke-virtual { p1 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v3
    if-eq v2, v3, :L1
    goto :L6
  :L1
  .line 2
    check-cast p1, Lc/g/d/b;
  .line 3
    iget v2, p0, Lc/g/d/b;->d:I
    iget v3, p1, Lc/g/d/b;->d:I
    if-eq v2, v3, :L2
    return v1
  :L2
  .line 4
    iget v2, p0, Lc/g/d/b;->a:I
    iget v3, p1, Lc/g/d/b;->a:I
    if-eq v2, v3, :L3
    return v1
  :L3
  .line 5
    iget v2, p0, Lc/g/d/b;->c:I
    iget v3, p1, Lc/g/d/b;->c:I
    if-eq v2, v3, :L4
    return v1
  :L4
  .line 6
    iget v2, p0, Lc/g/d/b;->b:I
    iget p1, p1, Lc/g/d/b;->b:I
    if-eq v2, p1, :L5
    return v1
  :L5
    return v0
  :L6
    return v1
.end method

.method public hashCode()I
  .registers 3
  .line 1
    iget v0, p0, Lc/g/d/b;->a:I
    mul-int/lit8 v0, v0, 31
  .line 2
    iget v1, p0, Lc/g/d/b;->b:I
    add-int/2addr v0, v1
    mul-int/lit8 v0, v0, 31
  .line 3
    iget v1, p0, Lc/g/d/b;->c:I
    add-int/2addr v0, v1
    mul-int/lit8 v0, v0, 31
  .line 4
    iget v1, p0, Lc/g/d/b;->d:I
    add-int/2addr v0, v1
    return v0
.end method

.method public toString()Ljava/lang/String;
  .registers 3
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Insets{left="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Lc/g/d/b;->a:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, ", top="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Lc/g/d/b;->b:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, ", right="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Lc/g/d/b;->c:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, ", bottom="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Lc/g/d/b;->d:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const/16 v1, 125
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method
