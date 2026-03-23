.class Landroidx/fragment/app/Fragment$e;
.super Ljava/lang/Object;
.implements Lc/b/a/c/a;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/fragment/app/Fragment;->H1(Landroidx/activity/result/f/a;Landroidx/activity/result/b;)Landroidx/activity/result/c;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "Ljava/lang/Object;",
    "Lc/b/a/c/a<",
    "Ljava/lang/Void;",
    "Landroidx/activity/result/ActivityResultRegistry;",
    ">;"
  }
.end annotation

.field final synthetic a:Landroidx/fragment/app/Fragment;

.method constructor <init>(Landroidx/fragment/app/Fragment;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/fragment/app/Fragment$e;->a:Landroidx/fragment/app/Fragment;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
  .registers 2
  .line 1
    check-cast p1, Ljava/lang/Void;
    invoke-virtual { p0, p1 }, Landroidx/fragment/app/Fragment$e;->b(Ljava/lang/Void;)Landroidx/activity/result/ActivityResultRegistry;
    move-result-object p1
    return-object p1
.end method

.method public b(Ljava/lang/Void;)Landroidx/activity/result/ActivityResultRegistry;
  .registers 4
  .line 1
    iget-object p1, p0, Landroidx/fragment/app/Fragment$e;->a:Landroidx/fragment/app/Fragment;
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/k;
    instance-of v1, v0, Landroidx/activity/result/d;
    if-eqz v1, :L0
  .line 2
    check-cast v0, Landroidx/activity/result/d;
    invoke-interface { v0 }, Landroidx/activity/result/d;->getActivityResultRegistry()Landroidx/activity/result/ActivityResultRegistry;
    move-result-object p1
    return-object p1
  :L0
  .line 3
    invoke-virtual { p1 }, Landroidx/fragment/app/Fragment;->J1()Landroidx/fragment/app/e;
    move-result-object p1
    invoke-virtual { p1 }, Landroidx/activity/ComponentActivity;->getActivityResultRegistry()Landroidx/activity/result/ActivityResultRegistry;
    move-result-object p1
    return-object p1
.end method
