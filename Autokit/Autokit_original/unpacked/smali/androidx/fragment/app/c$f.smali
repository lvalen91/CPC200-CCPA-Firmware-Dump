.class Landroidx/fragment/app/c$f;
.super Ljava/lang/Object;
.implements Lc/g/g/b$a;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/fragment/app/c;->w(Ljava/util/List;Ljava/util/List;ZLjava/util/Map;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/view/ViewGroup;

.field final synthetic c:Landroidx/fragment/app/c$k;

.method constructor <init>(Landroidx/fragment/app/c;Landroid/view/View;Landroid/view/ViewGroup;Landroidx/fragment/app/c$k;)V
  .registers 5
  .line 1
    iput-object p2, p0, Landroidx/fragment/app/c$f;->a:Landroid/view/View;
    iput-object p3, p0, Landroidx/fragment/app/c$f;->b:Landroid/view/ViewGroup;
    iput-object p4, p0, Landroidx/fragment/app/c$f;->c:Landroidx/fragment/app/c$k;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a()V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/c$f;->a:Landroid/view/View;
    invoke-virtual { v0 }, Landroid/view/View;->clearAnimation()V
  .line 2
    iget-object v0, p0, Landroidx/fragment/app/c$f;->b:Landroid/view/ViewGroup;
    iget-object v1, p0, Landroidx/fragment/app/c$f;->a:Landroid/view/View;
    invoke-virtual { v0, v1 }, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V
  .line 3
    iget-object v0, p0, Landroidx/fragment/app/c$f;->c:Landroidx/fragment/app/c$k;
    invoke-virtual { v0 }, Landroidx/fragment/app/c$l;->a()V
    return-void
.end method
