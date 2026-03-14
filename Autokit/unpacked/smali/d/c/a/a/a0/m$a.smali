.class Ld/c/a/a/a0/m$a;
.super Ld/c/a/a/a0/m$g;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Ld/c/a/a/a0/m;->f(Landroid/graphics/Matrix;)Ld/c/a/a/a0/m$g;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Landroid/graphics/Matrix;

.method constructor <init>(Ld/c/a/a/a0/m;Ljava/util/List;Landroid/graphics/Matrix;)V
  .registers 4
  .line 1
    iput-object p2, p0, Ld/c/a/a/a0/m$a;->b:Ljava/util/List;
    iput-object p3, p0, Ld/c/a/a/a0/m$a;->c:Landroid/graphics/Matrix;
    invoke-direct { p0 }, Ld/c/a/a/a0/m$g;-><init>()V
    return-void
.end method

.method public a(Landroid/graphics/Matrix;Ld/c/a/a/z/a;ILandroid/graphics/Canvas;)V
  .registers 7
  .line 1
    iget-object p1, p0, Ld/c/a/a/a0/m$a;->b:Ljava/util/List;
    invoke-interface { p1 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object p1
  :L0
    invoke-interface { p1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :L1
    invoke-interface { p1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ld/c/a/a/a0/m$g;
  .line 2
    iget-object v1, p0, Ld/c/a/a/a0/m$a;->c:Landroid/graphics/Matrix;
    invoke-virtual { v0, v1, p2, p3, p4 }, Ld/c/a/a/a0/m$g;->a(Landroid/graphics/Matrix;Ld/c/a/a/z/a;ILandroid/graphics/Canvas;)V
    goto :L0
  :L1
    return-void
.end method
