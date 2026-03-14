.class Ld/c/a/a/a0/g$a;
.super Ljava/lang/Object;
.implements Ld/c/a/a/a0/l$b;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Ld/c/a/a/a0/g;-><init>(Ld/c/a/a/a0/g$c;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Ld/c/a/a/a0/g;

.method constructor <init>(Ld/c/a/a/a0/g;)V
  .registers 2
  .line 1
    iput-object p1, p0, Ld/c/a/a/a0/g$a;->a:Ld/c/a/a/a0/g;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(Ld/c/a/a/a0/m;Landroid/graphics/Matrix;I)V
  .registers 7
  .line 1
    iget-object v0, p0, Ld/c/a/a/a0/g$a;->a:Ld/c/a/a/a0/g;
    invoke-static { v0 }, Ld/c/a/a/a0/g;->b(Ld/c/a/a/a0/g;)Ljava/util/BitSet;
    move-result-object v0
    add-int/lit8 v1, p3, 4
    invoke-virtual { p1 }, Ld/c/a/a/a0/m;->e()Z
    move-result v2
    invoke-virtual { v0, v1, v2 }, Ljava/util/BitSet;->set(IZ)V
  .line 2
    iget-object v0, p0, Ld/c/a/a/a0/g$a;->a:Ld/c/a/a/a0/g;
    invoke-static { v0 }, Ld/c/a/a/a0/g;->d(Ld/c/a/a/a0/g;)[Ld/c/a/a/a0/m$g;
    move-result-object v0
    invoke-virtual { p1, p2 }, Ld/c/a/a/a0/m;->f(Landroid/graphics/Matrix;)Ld/c/a/a/a0/m$g;
    move-result-object p1
    aput-object p1, v0, p3
    return-void
.end method

.method public b(Ld/c/a/a/a0/m;Landroid/graphics/Matrix;I)V
  .registers 6
  .line 1
    iget-object v0, p0, Ld/c/a/a/a0/g$a;->a:Ld/c/a/a/a0/g;
    invoke-static { v0 }, Ld/c/a/a/a0/g;->b(Ld/c/a/a/a0/g;)Ljava/util/BitSet;
    move-result-object v0
    invoke-virtual { p1 }, Ld/c/a/a/a0/m;->e()Z
    move-result v1
    invoke-virtual { v0, p3, v1 }, Ljava/util/BitSet;->set(IZ)V
  .line 2
    iget-object v0, p0, Ld/c/a/a/a0/g$a;->a:Ld/c/a/a/a0/g;
    invoke-static { v0 }, Ld/c/a/a/a0/g;->c(Ld/c/a/a/a0/g;)[Ld/c/a/a/a0/m$g;
    move-result-object v0
    invoke-virtual { p1, p2 }, Ld/c/a/a/a0/m;->f(Landroid/graphics/Matrix;)Ld/c/a/a/a0/m$g;
    move-result-object p1
    aput-object p1, v0, p3
    return-void
.end method
