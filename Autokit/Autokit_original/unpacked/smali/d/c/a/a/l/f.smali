.class public Ld/c/a/a/l/f;
.super Landroid/util/Property;
.source "SourceFile"

.annotation system Ldalvik/annotation/Signature;
  value = {
    "Landroid/util/Property<",
    "Landroid/widget/ImageView;",
    "Landroid/graphics/Matrix;",
    ">;"
  }
.end annotation

.field private final a:Landroid/graphics/Matrix;

.method public constructor <init>()V
  .registers 3
  .line 1
    const-class v0, Landroid/graphics/Matrix;
    const-string v1, "imageMatrixProperty"
    invoke-direct { p0, v0, v1 }, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V
  .line 2
    new-instance v0, Landroid/graphics/Matrix;
    invoke-direct { v0 }, Landroid/graphics/Matrix;-><init>()V
    iput-object v0, p0, Ld/c/a/a/l/f;->a:Landroid/graphics/Matrix;
    return-void
.end method

.method public a(Landroid/widget/ImageView;)Landroid/graphics/Matrix;
  .registers 3
  .line 1
    iget-object v0, p0, Ld/c/a/a/l/f;->a:Landroid/graphics/Matrix;
    invoke-virtual { p1 }, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;
    move-result-object p1
    invoke-virtual { v0, p1 }, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V
  .line 2
    iget-object p1, p0, Ld/c/a/a/l/f;->a:Landroid/graphics/Matrix;
    return-object p1
.end method

.method public b(Landroid/widget/ImageView;Landroid/graphics/Matrix;)V
  .registers 3
  .line 1
    invoke-virtual { p1, p2 }, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V
    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
  .registers 2
  .line 1
    check-cast p1, Landroid/widget/ImageView;
    invoke-virtual { p0, p1 }, Ld/c/a/a/l/f;->a(Landroid/widget/ImageView;)Landroid/graphics/Matrix;
    move-result-object p1
    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
  .registers 3
  .line 1
    check-cast p1, Landroid/widget/ImageView;
    check-cast p2, Landroid/graphics/Matrix;
    invoke-virtual { p0, p1, p2 }, Ld/c/a/a/l/f;->b(Landroid/widget/ImageView;Landroid/graphics/Matrix;)V
    return-void
.end method
