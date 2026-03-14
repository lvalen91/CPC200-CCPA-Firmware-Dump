.class Landroidx/fragment/app/Fragment$d;
.super Landroidx/fragment/app/g;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/fragment/app/Fragment;->y()Landroidx/fragment/app/g;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Landroidx/fragment/app/Fragment;

.method constructor <init>(Landroidx/fragment/app/Fragment;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/fragment/app/Fragment$d;->a:Landroidx/fragment/app/Fragment;
    invoke-direct { p0 }, Landroidx/fragment/app/g;-><init>()V
    return-void
.end method

.method public c(I)Landroid/view/View;
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment$d;->a:Landroidx/fragment/app/Fragment;
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object p1
    return-object p1
  :L0
  .line 3
    new-instance p1, Ljava/lang/IllegalStateException;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Fragment "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroidx/fragment/app/Fragment$d;->a:Landroidx/fragment/app/Fragment;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v1, " does not have a view"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-direct { p1, v0 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public d()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment$d;->a:Landroidx/fragment/app/Fragment;
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method
