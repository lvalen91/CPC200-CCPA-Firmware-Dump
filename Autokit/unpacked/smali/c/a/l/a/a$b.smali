.class Lc/a/l/a/a$b;
.super Lc/a/l/a/a$g;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lc/a/l/a/a;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "b"
.end annotation

.field private final a:Landroid/graphics/drawable/Animatable;

.method constructor <init>(Landroid/graphics/drawable/Animatable;)V
  .registers 3
    const/4 v0, 0
  .line 1
    invoke-direct { p0, v0 }, Lc/a/l/a/a$g;-><init>(Lc/a/l/a/a$a;)V
  .line 2
    iput-object p1, p0, Lc/a/l/a/a$b;->a:Landroid/graphics/drawable/Animatable;
    return-void
.end method

.method public c()V
  .registers 2
  .line 1
    iget-object v0, p0, Lc/a/l/a/a$b;->a:Landroid/graphics/drawable/Animatable;
    invoke-interface { v0 }, Landroid/graphics/drawable/Animatable;->start()V
    return-void
.end method

.method public d()V
  .registers 2
  .line 1
    iget-object v0, p0, Lc/a/l/a/a$b;->a:Landroid/graphics/drawable/Animatable;
    invoke-interface { v0 }, Landroid/graphics/drawable/Animatable;->stop()V
    return-void
.end method
