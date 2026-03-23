.class Landroidx/fragment/app/c$c;
.super Landroid/animation/AnimatorListenerAdapter;
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

.field final synthetic c:Z

.field final synthetic d:Landroidx/fragment/app/c0$e;

.field final synthetic e:Landroidx/fragment/app/c$k;

.method constructor <init>(Landroidx/fragment/app/c;Landroid/view/ViewGroup;Landroid/view/View;ZLandroidx/fragment/app/c0$e;Landroidx/fragment/app/c$k;)V
  .registers 7
  .line 1
    iput-object p2, p0, Landroidx/fragment/app/c$c;->a:Landroid/view/ViewGroup;
    iput-object p3, p0, Landroidx/fragment/app/c$c;->b:Landroid/view/View;
    iput-boolean p4, p0, Landroidx/fragment/app/c$c;->c:Z
    iput-object p5, p0, Landroidx/fragment/app/c$c;->d:Landroidx/fragment/app/c0$e;
    iput-object p6, p0, Landroidx/fragment/app/c$c;->e:Landroidx/fragment/app/c$k;
    invoke-direct { p0 }, Landroid/animation/AnimatorListenerAdapter;-><init>()V
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
  .registers 3
  .line 1
    iget-object p1, p0, Landroidx/fragment/app/c$c;->a:Landroid/view/ViewGroup;
    iget-object v0, p0, Landroidx/fragment/app/c$c;->b:Landroid/view/View;
    invoke-virtual { p1, v0 }, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V
  .line 2
    iget-boolean p1, p0, Landroidx/fragment/app/c$c;->c:Z
    if-eqz p1, :L0
  .line 3
    iget-object p1, p0, Landroidx/fragment/app/c$c;->d:Landroidx/fragment/app/c0$e;
    invoke-virtual { p1 }, Landroidx/fragment/app/c0$e;->e()Landroidx/fragment/app/c0$e$c;
    move-result-object p1
    iget-object v0, p0, Landroidx/fragment/app/c$c;->b:Landroid/view/View;
    invoke-virtual { p1, v0 }, Landroidx/fragment/app/c0$e$c;->a(Landroid/view/View;)V
  :L0
  .line 4
    iget-object p1, p0, Landroidx/fragment/app/c$c;->e:Landroidx/fragment/app/c$k;
    invoke-virtual { p1 }, Landroidx/fragment/app/c$l;->a()V
    return-void
.end method
