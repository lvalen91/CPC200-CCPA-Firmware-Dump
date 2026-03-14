.class final Landroidx/fragment/app/b0;
.super Ljava/io/Writer;
.source "SourceFile"

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/StringBuilder;

.method constructor <init>(Ljava/lang/String;)V
  .registers 4
  .line 1
    invoke-direct { p0 }, Ljava/io/Writer;-><init>()V
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    const/16 v1, 128
    invoke-direct { v0, v1 }, Ljava/lang/StringBuilder;-><init>(I)V
    iput-object v0, p0, Landroidx/fragment/app/b0;->c:Ljava/lang/StringBuilder;
  .line 3
    iput-object p1, p0, Landroidx/fragment/app/b0;->b:Ljava/lang/String;
    return-void
.end method

.method private a()V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/b0;->c:Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->length()I
    move-result v0
    if-lez v0, :L0
  .line 2
    iget-object v0, p0, Landroidx/fragment/app/b0;->c:Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  .line 3
    iget-object v0, p0, Landroidx/fragment/app/b0;->c:Ljava/lang/StringBuilder;
    const/4 v1, 0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->length()I
    move-result v2
    invoke-virtual { v0, v1, v2 }, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
  :L0
    return-void
.end method

.method public close()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Landroidx/fragment/app/b0;->a()V
    return-void
.end method

.method public flush()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Landroidx/fragment/app/b0;->a()V
    return-void
.end method

.method public write([CII)V
  .registers 7
    const/4 v0, 0
  :L0
    if-ge v0, p3, :L3
    add-int v1, p2, v0
  .line 1
    aget-char v1, p1, v1
    const/16 v2, 10
    if-ne v1, v2, :L1
  .line 2
    invoke-direct { p0 }, Landroidx/fragment/app/b0;->a()V
    goto :L2
  :L1
  .line 3
    iget-object v2, p0, Landroidx/fragment/app/b0;->c:Ljava/lang/StringBuilder;
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
  :L2
    add-int/lit8 v0, v0, 1
    goto :L0
  :L3
    return-void
.end method
