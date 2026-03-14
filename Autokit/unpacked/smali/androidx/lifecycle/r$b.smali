.class Landroidx/lifecycle/r$b;
.super Ljava/lang/Object;
.implements Landroidx/lifecycle/s$a;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/lifecycle/r;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Landroidx/lifecycle/r;

.method constructor <init>(Landroidx/lifecycle/r;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/lifecycle/r$b;->a:Landroidx/lifecycle/r;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a()V
  .registers 1
    return-void
.end method

.method public b()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/lifecycle/r$b;->a:Landroidx/lifecycle/r;
    invoke-virtual { v0 }, Landroidx/lifecycle/r;->b()V
    return-void
.end method

.method public c()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/lifecycle/r$b;->a:Landroidx/lifecycle/r;
    invoke-virtual { v0 }, Landroidx/lifecycle/r;->c()V
    return-void
.end method
