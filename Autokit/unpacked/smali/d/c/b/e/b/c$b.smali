.class public final Ld/c/b/e/b/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Ld/c/b/e/b/c;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 25
  name = "b"
.end annotation

.field private final a:I

.field private final b:[Ld/c/b/e/b/c$a;

.method varargs constructor <init>(I[Ld/c/b/e/b/c$a;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput p1, p0, Ld/c/b/e/b/c$b;->a:I
  .line 3
    iput-object p2, p0, Ld/c/b/e/b/c$b;->b:[Ld/c/b/e/b/c$a;
    return-void
.end method

.method public a()[Ld/c/b/e/b/c$a;
  .registers 2
  .line 1
    iget-object v0, p0, Ld/c/b/e/b/c$b;->b:[Ld/c/b/e/b/c$a;
    return-object v0
.end method

.method public b()I
  .registers 2
  .line 1
    iget v0, p0, Ld/c/b/e/b/c$b;->a:I
    return v0
.end method

.method public c()I
  .registers 6
  .line 1
    iget-object v0, p0, Ld/c/b/e/b/c$b;->b:[Ld/c/b/e/b/c$a;
    array-length v1, v0
    const/4 v2, 0
    const/4 v3, 0
  :L0
    if-ge v2, v1, :L1
    aget-object v4, v0, v2
  .line 2
    invoke-virtual { v4 }, Ld/c/b/e/b/c$a;->a()I
    move-result v4
    add-int/2addr v3, v4
    add-int/lit8 v2, v2, 1
    goto :L0
  :L1
    return v3
.end method

.method public d()I
  .registers 3
  .line 1
    iget v0, p0, Ld/c/b/e/b/c$b;->a:I
    invoke-virtual { p0 }, Ld/c/b/e/b/c$b;->c()I
    move-result v1
    mul-int v0, v0, v1
    return v0
.end method
