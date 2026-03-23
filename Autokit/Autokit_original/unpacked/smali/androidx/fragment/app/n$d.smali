.class Landroidx/fragment/app/n$d;
.super Ljava/lang/Object;
.implements Landroidx/fragment/app/x$g;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/fragment/app/n;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Landroidx/fragment/app/n;

.method constructor <init>(Landroidx/fragment/app/n;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/fragment/app/n$d;->a:Landroidx/fragment/app/n;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(Landroidx/fragment/app/Fragment;Lc/g/g/b;)V
  .registers 4
  .line 1
    invoke-virtual { p2 }, Lc/g/g/b;->b()Z
    move-result v0
    if-nez v0, :L0
  .line 2
    iget-object v0, p0, Landroidx/fragment/app/n$d;->a:Landroidx/fragment/app/n;
    invoke-virtual { v0, p1, p2 }, Landroidx/fragment/app/n;->Z0(Landroidx/fragment/app/Fragment;Lc/g/g/b;)V
  :L0
    return-void
.end method

.method public b(Landroidx/fragment/app/Fragment;Lc/g/g/b;)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/n$d;->a:Landroidx/fragment/app/n;
    invoke-virtual { v0, p1, p2 }, Landroidx/fragment/app/n;->f(Landroidx/fragment/app/Fragment;Lc/g/g/b;)V
    return-void
.end method
