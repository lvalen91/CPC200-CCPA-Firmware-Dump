.class Landroidx/fragment/app/Fragment$f;
.super Landroidx/fragment/app/Fragment$j;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/fragment/app/Fragment;->G1(Landroidx/activity/result/f/a;Lc/b/a/c/a;Landroidx/activity/result/b;)Landroidx/activity/result/c;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Lc/b/a/c/a;

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic c:Landroidx/activity/result/f/a;

.field final synthetic d:Landroidx/activity/result/b;

.field final synthetic e:Landroidx/fragment/app/Fragment;

.method constructor <init>(Landroidx/fragment/app/Fragment;Lc/b/a/c/a;Ljava/util/concurrent/atomic/AtomicReference;Landroidx/activity/result/f/a;Landroidx/activity/result/b;)V
  .registers 6
  .line 1
    iput-object p1, p0, Landroidx/fragment/app/Fragment$f;->e:Landroidx/fragment/app/Fragment;
    iput-object p2, p0, Landroidx/fragment/app/Fragment$f;->a:Lc/b/a/c/a;
    iput-object p3, p0, Landroidx/fragment/app/Fragment$f;->b:Ljava/util/concurrent/atomic/AtomicReference;
    iput-object p4, p0, Landroidx/fragment/app/Fragment$f;->c:Landroidx/activity/result/f/a;
    iput-object p5, p0, Landroidx/fragment/app/Fragment$f;->d:Landroidx/activity/result/b;
    const/4 p1, 0
    invoke-direct { p0, p1 }, Landroidx/fragment/app/Fragment$j;-><init>(Landroidx/fragment/app/Fragment$a;)V
    return-void
.end method

.method a()V
  .registers 7
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment$f;->e:Landroidx/fragment/app/Fragment;
    invoke-virtual { v0 }, Landroidx/fragment/app/Fragment;->C()Ljava/lang/String;
    move-result-object v0
  .line 2
    iget-object v1, p0, Landroidx/fragment/app/Fragment$f;->a:Lc/b/a/c/a;
    const/4 v2, 0
    invoke-interface { v1, v2 }, Lc/b/a/c/a;->a(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/activity/result/ActivityResultRegistry;
  .line 3
    iget-object v2, p0, Landroidx/fragment/app/Fragment$f;->b:Ljava/util/concurrent/atomic/AtomicReference;
    iget-object v3, p0, Landroidx/fragment/app/Fragment$f;->e:Landroidx/fragment/app/Fragment;
    iget-object v4, p0, Landroidx/fragment/app/Fragment$f;->c:Landroidx/activity/result/f/a;
    iget-object v5, p0, Landroidx/fragment/app/Fragment$f;->d:Landroidx/activity/result/b;
    invoke-virtual { v1, v0, v3, v4, v5 }, Landroidx/activity/result/ActivityResultRegistry;->j(Ljava/lang/String;Landroidx/lifecycle/j;Landroidx/activity/result/f/a;Landroidx/activity/result/b;)Landroidx/activity/result/c;
    move-result-object v0
    invoke-virtual { v2, v0 }, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    return-void
.end method
