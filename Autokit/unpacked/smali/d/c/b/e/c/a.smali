.class final Ld/c/b/e/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

.field private final a:[B

.field private final b:[B

.method constructor <init>([B[B)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Ld/c/b/e/c/a;->a:[B
  .line 3
    iput-object p2, p0, Ld/c/b/e/c/a;->b:[B
    return-void
.end method

.method public a()[B
  .registers 2
  .line 1
    iget-object v0, p0, Ld/c/b/e/c/a;->a:[B
    return-object v0
.end method

.method public b()[B
  .registers 2
  .line 1
    iget-object v0, p0, Ld/c/b/e/c/a;->b:[B
    return-object v0
.end method
