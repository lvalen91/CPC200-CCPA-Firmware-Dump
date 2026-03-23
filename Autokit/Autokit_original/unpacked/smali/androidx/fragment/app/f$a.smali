.class Landroidx/fragment/app/f$a;
.super Ljava/lang/Object;
.implements Lc/g/g/b$a;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/fragment/app/f;->a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/f$d;Landroidx/fragment/app/x$g;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Landroidx/fragment/app/Fragment;

.method constructor <init>(Landroidx/fragment/app/Fragment;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/fragment/app/f$a;->a:Landroidx/fragment/app/Fragment;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a()V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/f$a;->a:Landroidx/fragment/app/Fragment;
    invoke-virtual { v0 }, Landroidx/fragment/app/Fragment;->G()Landroid/view/View;
    move-result-object v0
    const/4 v1, 0
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Landroidx/fragment/app/f$a;->a:Landroidx/fragment/app/Fragment;
    invoke-virtual { v0 }, Landroidx/fragment/app/Fragment;->G()Landroid/view/View;
    move-result-object v0
  .line 3
    iget-object v2, p0, Landroidx/fragment/app/f$a;->a:Landroidx/fragment/app/Fragment;
    invoke-virtual { v2, v1 }, Landroidx/fragment/app/Fragment;->P1(Landroid/view/View;)V
  .line 4
    invoke-virtual { v0 }, Landroid/view/View;->clearAnimation()V
  :L0
  .line 5
    iget-object v0, p0, Landroidx/fragment/app/f$a;->a:Landroidx/fragment/app/Fragment;
    invoke-virtual { v0, v1 }, Landroidx/fragment/app/Fragment;->R1(Landroid/animation/Animator;)V
    return-void
.end method
