.class Lc/a/l/a/b$a;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lc/a/l/a/b;->g(I)Z
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lc/a/l/a/b;

.method constructor <init>(Lc/a/l/a/b;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lc/a/l/a/b$a;->b:Lc/a/l/a/b;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 3
  .line 1
    iget-object v0, p0, Lc/a/l/a/b$a;->b:Lc/a/l/a/b;
    const/4 v1, 1
    invoke-virtual { v0, v1 }, Lc/a/l/a/b;->a(Z)V
  .line 2
    iget-object v0, p0, Lc/a/l/a/b$a;->b:Lc/a/l/a/b;
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable;->invalidateSelf()V
    return-void
.end method
