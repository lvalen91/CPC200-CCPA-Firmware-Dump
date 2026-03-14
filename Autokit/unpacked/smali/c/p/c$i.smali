.class Lc/p/c$i;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lc/p/c;->m(Landroid/view/ViewGroup;Lc/p/s;Lc/p/s;)Landroid/animation/Animator;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field private a:Z

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/graphics/Rect;

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:I

.method constructor <init>(Lc/p/c;Landroid/view/View;Landroid/graphics/Rect;IIII)V
  .registers 8
  .line 1
    iput-object p2, p0, Lc/p/c$i;->b:Landroid/view/View;
    iput-object p3, p0, Lc/p/c$i;->c:Landroid/graphics/Rect;
    iput p4, p0, Lc/p/c$i;->d:I
    iput p5, p0, Lc/p/c$i;->e:I
    iput p6, p0, Lc/p/c$i;->f:I
    iput p7, p0, Lc/p/c$i;->g:I
    invoke-direct { p0 }, Landroid/animation/AnimatorListenerAdapter;-><init>()V
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
  .registers 2
    const/4 p1, 1
  .line 1
    iput-boolean p1, p0, Lc/p/c$i;->a:Z
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
  .registers 6
  .line 1
    iget-boolean p1, p0, Lc/p/c$i;->a:Z
    if-nez p1, :L0
  .line 2
    iget-object p1, p0, Lc/p/c$i;->b:Landroid/view/View;
    iget-object v0, p0, Lc/p/c$i;->c:Landroid/graphics/Rect;
    invoke-static { p1, v0 }, Landroidx/core/view/v;->u0(Landroid/view/View;Landroid/graphics/Rect;)V
  .line 3
    iget-object p1, p0, Lc/p/c$i;->b:Landroid/view/View;
    iget v0, p0, Lc/p/c$i;->d:I
    iget v1, p0, Lc/p/c$i;->e:I
    iget v2, p0, Lc/p/c$i;->f:I
    iget v3, p0, Lc/p/c$i;->g:I
    invoke-static { p1, v0, v1, v2, v3 }, Lc/p/c0;->f(Landroid/view/View;IIII)V
  :L0
    return-void
.end method
