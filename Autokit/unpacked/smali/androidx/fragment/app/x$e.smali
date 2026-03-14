.class Landroidx/fragment/app/x$e;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/fragment/app/x;->m(Landroidx/fragment/app/z;Landroid/view/ViewGroup;Landroid/view/View;Lc/d/a;Landroidx/fragment/app/x$h;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Landroidx/fragment/app/Fragment;

.field final synthetic c:Landroidx/fragment/app/Fragment;

.field final synthetic d:Z

.field final synthetic e:Lc/d/a;

.field final synthetic f:Landroid/view/View;

.field final synthetic g:Landroidx/fragment/app/z;

.field final synthetic h:Landroid/graphics/Rect;

.method constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLc/d/a;Landroid/view/View;Landroidx/fragment/app/z;Landroid/graphics/Rect;)V
  .registers 8
  .line 1
    iput-object p1, p0, Landroidx/fragment/app/x$e;->b:Landroidx/fragment/app/Fragment;
    iput-object p2, p0, Landroidx/fragment/app/x$e;->c:Landroidx/fragment/app/Fragment;
    iput-boolean p3, p0, Landroidx/fragment/app/x$e;->d:Z
    iput-object p4, p0, Landroidx/fragment/app/x$e;->e:Lc/d/a;
    iput-object p5, p0, Landroidx/fragment/app/x$e;->f:Landroid/view/View;
    iput-object p6, p0, Landroidx/fragment/app/x$e;->g:Landroidx/fragment/app/z;
    iput-object p7, p0, Landroidx/fragment/app/x$e;->h:Landroid/graphics/Rect;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/x$e;->b:Landroidx/fragment/app/Fragment;
    iget-object v1, p0, Landroidx/fragment/app/x$e;->c:Landroidx/fragment/app/Fragment;
    iget-boolean v2, p0, Landroidx/fragment/app/x$e;->d:Z
    iget-object v3, p0, Landroidx/fragment/app/x$e;->e:Lc/d/a;
    const/4 v4, 0
    invoke-static { v0, v1, v2, v3, v4 }, Landroidx/fragment/app/x;->f(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLc/d/a;Z)V
  .line 2
    iget-object v0, p0, Landroidx/fragment/app/x$e;->f:Landroid/view/View;
    if-eqz v0, :L0
  .line 3
    iget-object v1, p0, Landroidx/fragment/app/x$e;->g:Landroidx/fragment/app/z;
    iget-object v2, p0, Landroidx/fragment/app/x$e;->h:Landroid/graphics/Rect;
    invoke-virtual { v1, v0, v2 }, Landroidx/fragment/app/z;->k(Landroid/view/View;Landroid/graphics/Rect;)V
  :L0
    return-void
.end method
