.class final Lc/d/f$a;
.super Ljava/lang/Object;
.implements Ljava/util/Iterator;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lc/d/f;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 16
  name = "a"
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "<T:",
    "Ljava/lang/Object;",
    ">",
    "Ljava/lang/Object;",
    "Ljava/util/Iterator<",
    "TT;>;"
  }
.end annotation

.field final b:I

.field c:I

.field d:I

.field e:Z

.field final synthetic f:Lc/d/f;

.method constructor <init>(Lc/d/f;I)V
  .registers 4
  .line 1
    iput-object p1, p0, Lc/d/f$a;->f:Lc/d/f;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 0
  .line 2
    iput-boolean v0, p0, Lc/d/f$a;->e:Z
  .line 3
    iput p2, p0, Lc/d/f$a;->b:I
  .line 4
    invoke-virtual { p1 }, Lc/d/f;->d()I
    move-result p1
    iput p1, p0, Lc/d/f$a;->c:I
    return-void
.end method

.method public hasNext()Z
  .registers 3
  .line 1
    iget v0, p0, Lc/d/f$a;->d:I
    iget v1, p0, Lc/d/f$a;->c:I
    if-ge v0, v1, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public next()Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()TT;"
    }
  .end annotation
  .registers 4
  .line 1
    invoke-virtual { p0 }, Lc/d/f$a;->hasNext()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Lc/d/f$a;->f:Lc/d/f;
    iget v1, p0, Lc/d/f$a;->d:I
    iget v2, p0, Lc/d/f$a;->b:I
    invoke-virtual { v0, v1, v2 }, Lc/d/f;->b(II)Ljava/lang/Object;
    move-result-object v0
  .line 3
    iget v1, p0, Lc/d/f$a;->d:I
    const/4 v2, 1
    add-int/2addr v1, v2
    iput v1, p0, Lc/d/f$a;->d:I
  .line 4
    iput-boolean v2, p0, Lc/d/f$a;->e:Z
    return-object v0
  :L0
  .line 5
    new-instance v0, Ljava/util/NoSuchElementException;
    invoke-direct { v0 }, Ljava/util/NoSuchElementException;-><init>()V
    throw v0
.end method

.method public remove()V
  .registers 3
  .line 1
    iget-boolean v0, p0, Lc/d/f$a;->e:Z
    if-eqz v0, :L0
  .line 2
    iget v0, p0, Lc/d/f$a;->d:I
    add-int/lit8 v0, v0, -1
    iput v0, p0, Lc/d/f$a;->d:I
  .line 3
    iget v1, p0, Lc/d/f$a;->c:I
    add-int/lit8 v1, v1, -1
    iput v1, p0, Lc/d/f$a;->c:I
    const/4 v1, 0
  .line 4
    iput-boolean v1, p0, Lc/d/f$a;->e:Z
  .line 5
    iget-object v1, p0, Lc/d/f$a;->f:Lc/d/f;
    invoke-virtual { v1, v0 }, Lc/d/f;->h(I)V
    return-void
  :L0
  .line 6
    new-instance v0, Ljava/lang/IllegalStateException;
    invoke-direct { v0 }, Ljava/lang/IllegalStateException;-><init>()V
    throw v0
.end method
