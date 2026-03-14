.class Landroidx/fragment/app/c$e;
.super Ljava/lang/Object;
.implements Landroid/view/animation/Animation$AnimationListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/fragment/app/c;->w(Ljava/util/List;Ljava/util/List;ZLjava/util/Map;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroidx/fragment/app/c$k;

.method constructor <init>(Landroidx/fragment/app/c;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/c$k;)V
  .registers 5
  .line 1
    iput-object p2, p0, Landroidx/fragment/app/c$e;->a:Landroid/view/ViewGroup;
    iput-object p3, p0, Landroidx/fragment/app/c$e;->b:Landroid/view/View;
    iput-object p4, p0, Landroidx/fragment/app/c$e;->c:Landroidx/fragment/app/c$k;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
  .registers 3
  .line 1
    iget-object p1, p0, Landroidx/fragment/app/c$e;->a:Landroid/view/ViewGroup;
    new-instance v0, Landroidx/fragment/app/c$e$a;
    invoke-direct { v0, p0 }, Landroidx/fragment/app/c$e$a;-><init>(Landroidx/fragment/app/c$e;)V
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
