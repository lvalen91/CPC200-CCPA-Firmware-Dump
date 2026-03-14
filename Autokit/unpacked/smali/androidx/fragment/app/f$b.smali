.class Landroidx/fragment/app/f$b;
.super Ljava/lang/Object;
.implements Landroid/view/animation/Animation$AnimationListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/fragment/app/f;->a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/f$d;Landroidx/fragment/app/x$g;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Landroidx/fragment/app/Fragment;

.field final synthetic c:Landroidx/fragment/app/x$g;

.field final synthetic d:Lc/g/g/b;

.method constructor <init>(Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/x$g;Lc/g/g/b;)V
  .registers 5
  .line 1
    iput-object p1, p0, Landroidx/fragment/app/f$b;->a:Landroid/view/ViewGroup;
    iput-object p2, p0, Landroidx/fragment/app/f$b;->b:Landroidx/fragment/app/Fragment;
    iput-object p3, p0, Landroidx/fragment/app/f$b;->c:Landroidx/fragment/app/x$g;
    iput-object p4, p0, Landroidx/fragment/app/f$b;->d:Lc/g/g/b;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
  .registers 3
  .line 1
    iget-object p1, p0, Landroidx/fragment/app/f$b;->a:Landroid/view/ViewGroup;
    new-instance v0, Landroidx/fragment/app/f$b$a;
    invoke-direct { v0, p0 }, Landroidx/fragment/app/f$b$a;-><init>(Landroidx/fragment/app/f$b;)V
    invoke-virtual { p1, v0 }, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
  .registers 2
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
  .registers 2
    return-void
.end method
