.class Landroidx/fragment/app/d$e;
.super Landroidx/fragment/app/g;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/fragment/app/d;->y()Landroidx/fragment/app/g;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Landroidx/fragment/app/g;

.field final synthetic b:Landroidx/fragment/app/d;

.method constructor <init>(Landroidx/fragment/app/d;Landroidx/fragment/app/g;)V
  .registers 3
  .line 1
    iput-object p1, p0, Landroidx/fragment/app/d$e;->b:Landroidx/fragment/app/d;
    iput-object p2, p0, Landroidx/fragment/app/d$e;->a:Landroidx/fragment/app/g;
    invoke-direct { p0 }, Landroidx/fragment/app/g;-><init>()V
    return-void
.end method

.method public c(I)Landroid/view/View;
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/d$e;->a:Landroidx/fragment/app/g;
    invoke-virtual { v0 }, Landroidx/fragment/app/g;->d()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Landroidx/fragment/app/d$e;->a:Landroidx/fragment/app/g;
    invoke-virtual { v0, p1 }, Landroidx/fragment/app/g;->c(I)Landroid/view/View;
    move-result-object p1
    return-object p1
  :L0
  .line 3
    iget-object v0, p0, Landroidx/fragment/app/d$e;->b:Landroidx/fragment/app/d;
    invoke-virtual { v0, p1 }, Landroidx/fragment/app/d;->p2(I)Landroid/view/View;
    move-result-object p1
    return-object p1
.end method

.method public d()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/d$e;->a:Landroidx/fragment/app/g;
    invoke-virtual { v0 }, Landroidx/fragment/app/g;->d()Z
    move-result v0
    if-nez v0, :L1
    iget-object v0, p0, Landroidx/fragment/app/d$e;->b:Landroidx/fragment/app/d;
    invoke-virtual { v0 }, Landroidx/fragment/app/d;->q2()Z
    move-result v0
    if-eqz v0, :L0
    goto :L1
  :L0
    const/4 v0, 0
    goto :L2
  :L1
    const/4 v0, 1
  :L2
    return v0
.end method
