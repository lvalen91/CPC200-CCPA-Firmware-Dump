.class public final Ld/c/b/e/c/f;
.super Ljava/lang/Object;
.source "SourceFile"

.field private a:Ld/c/b/e/b/b;

.field private b:Ld/c/b/e/b/a;

.field private c:Ld/c/b/e/b/c;

.field private d:I

.field private e:Ld/c/b/e/c/b;

.method public constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, -1
  .line 2
    iput v0, p0, Ld/c/b/e/c/f;->d:I
    return-void
.end method

.method public static b(I)Z
  .registers 2
    if-ltz p0, :L0
    const/16 v0, 8
    if-ge p0, v0, :L0
    const/4 p0, 1
    return p0
  :L0
    const/4 p0, 0
    return p0
.end method

.method public a()Ld/c/b/e/c/b;
  .registers 2
  .line 1
    iget-object v0, p0, Ld/c/b/e/c/f;->e:Ld/c/b/e/c/b;
    return-object v0
.end method

.method public c(Ld/c/b/e/b/a;)V
  .registers 2
  .line 1
    iput-object p1, p0, Ld/c/b/e/c/f;->b:Ld/c/b/e/b/a;
    return-void
.end method

.method public d(I)V
  .registers 2
  .line 1
    iput p1, p0, Ld/c/b/e/c/f;->d:I
    return-void
.end method

.method public e(Ld/c/b/e/c/b;)V
  .registers 2
  .line 1
    iput-object p1, p0, Ld/c/b/e/c/f;->e:Ld/c/b/e/c/b;
    return-void
.end method

.method public f(Ld/c/b/e/b/b;)V
  .registers 2
  .line 1
    iput-object p1, p0, Ld/c/b/e/c/f;->a:Ld/c/b/e/b/b;
    return-void
.end method

.method public g(Ld/c/b/e/b/c;)V
  .registers 2
  .line 1
    iput-object p1, p0, Ld/c/b/e/c/f;->c:Ld/c/b/e/b/c;
    return-void
.end method

.method public toString()Ljava/lang/String;
  .registers 3
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    const/16 v1, 200
    invoke-direct { v0, v1 }, Ljava/lang/StringBuilder;-><init>(I)V
    const-string v1, "<<\n"
  .line 2
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, " mode: "
  .line 3
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 4
    iget-object v1, p0, Ld/c/b/e/c/f;->a:Ld/c/b/e/b/b;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v1, "\n ecLevel: "
  .line 5
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 6
    iget-object v1, p0, Ld/c/b/e/c/f;->b:Ld/c/b/e/b/a;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v1, "\n version: "
  .line 7
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 8
    iget-object v1, p0, Ld/c/b/e/c/f;->c:Ld/c/b/e/b/c;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v1, "\n maskPattern: "
  .line 9
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 10
    iget v1, p0, Ld/c/b/e/c/f;->d:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
  .line 11
    iget-object v1, p0, Ld/c/b/e/c/f;->e:Ld/c/b/e/c/b;
    if-nez v1, :L0
    const-string v1, "\n matrix: null\n"
  .line 12
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    goto :L1
  :L0
    const-string v1, "\n matrix:\n"
  .line 13
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 14
    iget-object v1, p0, Ld/c/b/e/c/f;->e:Ld/c/b/e/c/b;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
  :L1
    const-string v1, ">>\n"
  .line 15
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 16
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method
