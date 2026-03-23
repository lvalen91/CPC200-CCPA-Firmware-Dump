.class public final Landroidx/core/view/d;
.super Ljava/lang/Object;
.source "SourceFile"

.field private final a:Ljava/lang/Object;

.method private constructor <init>(Ljava/lang/Object;)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Landroidx/core/view/d;->a:Ljava/lang/Object;
    return-void
.end method

.method static a(Ljava/lang/Object;)Landroidx/core/view/d;
  .registers 2
    if-nez p0, :L0
    const/4 p0, 0
    goto :L1
  :L0
  .line 1
    new-instance v0, Landroidx/core/view/d;
    invoke-direct { v0, p0 }, Landroidx/core/view/d;-><init>(Ljava/lang/Object;)V
    move-object p0, v0
  :L1
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
  .registers 4
    if-ne p0, p1, :L0
    const/4 p1, 1
    return p1
  :L0
    if-eqz p1, :L2
  .line 1
    const-class v0, Landroidx/core/view/d;
    invoke-virtual { p1 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v1
    if-eq v0, v1, :L1
    goto :L2
  :L1
  .line 2
    check-cast p1, Landroidx/core/view/d;
  .line 3
    iget-object v0, p0, Landroidx/core/view/d;->a:Ljava/lang/Object;
    iget-object p1, p1, Landroidx/core/view/d;->a:Ljava/lang/Object;
    invoke-static { v0, p1 }, Lc/g/j/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
    move-result p1
    return p1
  :L2
    const/4 p1, 0
    return p1
.end method

.method public hashCode()I
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/view/d;->a:Ljava/lang/Object;
    if-nez v0, :L0
    const/4 v0, 0
    goto :L1
  :L0
    invoke-virtual { v0 }, Ljava/lang/Object;->hashCode()I
    move-result v0
  :L1
    return v0
.end method

.method public toString()Ljava/lang/String;
  .registers 3
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "DisplayCutoutCompat{"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroidx/core/view/d;->a:Ljava/lang/Object;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v1, "}"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method
