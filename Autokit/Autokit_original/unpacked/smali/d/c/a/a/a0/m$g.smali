.class abstract Ld/c/a/a/a0/m$g;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Ld/c/a/a/a0/m;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 1032
  name = "g"
.end annotation

.field final static a:Landroid/graphics/Matrix;

.method static constructor <clinit>()V
  .registers 3
  .line 1
    new-instance v0, Landroid/graphics/Matrix;
    invoke-direct { v0 }, Landroid/graphics/Matrix;-><init>()V
    sput-object v0, Ld/c/a/a/a0/m$g;->a:Landroid/graphics/Matrix;
    return-void
.end method

.method constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public abstract a(Landroid/graphics/Matrix;Ld/c/a/a/z/a;ILandroid/graphics/Canvas;)V
.end method

.method public final b(Ld/c/a/a/z/a;ILandroid/graphics/Canvas;)V
  .registers 5
  .line 1
    sget-object v0, Ld/c/a/a/a0/m$g;->a:Landroid/graphics/Matrix;
    invoke-virtual { p0, v0, p1, p2, p3 }, Ld/c/a/a/a0/m$g;->a(Landroid/graphics/Matrix;Ld/c/a/a/z/a;ILandroid/graphics/Canvas;)V
    return-void
.end method
