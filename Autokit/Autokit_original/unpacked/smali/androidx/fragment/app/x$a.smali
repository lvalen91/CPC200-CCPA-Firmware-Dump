.class Landroidx/fragment/app/x$a;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/fragment/app/x;->o(Landroid/view/ViewGroup;Landroidx/fragment/app/x$h;Landroid/view/View;Lc/d/a;Landroidx/fragment/app/x$g;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Landroidx/fragment/app/x$g;

.field final synthetic c:Landroidx/fragment/app/Fragment;

.field final synthetic d:Lc/g/g/b;

.method constructor <init>(Landroidx/fragment/app/x$g;Landroidx/fragment/app/Fragment;Lc/g/g/b;)V
  .registers 4
  .line 1
    iput-object p1, p0, Landroidx/fragment/app/x$a;->b:Landroidx/fragment/app/x$g;
    iput-object p2, p0, Landroidx/fragment/app/x$a;->c:Landroidx/fragment/app/Fragment;
    iput-object p3, p0, Landroidx/fragment/app/x$a;->d:Lc/g/g/b;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/x$a;->b:Landroidx/fragment/app/x$g;
    iget-object v1, p0, Landroidx/fragment/app/x$a;->c:Landroidx/fragment/app/Fragment;
    iget-object v2, p0, Landroidx/fragment/app/x$a;->d:Lc/g/g/b;
    invoke-interface { v0, v1, v2 }, Landroidx/fragment/app/x$g;->a(Landroidx/fragment/app/Fragment;Lc/g/g/b;)V
    return-void
.end method
