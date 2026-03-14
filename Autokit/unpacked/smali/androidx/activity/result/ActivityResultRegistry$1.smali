.class Landroidx/activity/result/ActivityResultRegistry$1;
.super Ljava/lang/Object;
.implements Landroidx/lifecycle/h;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/activity/result/ActivityResultRegistry;->j(Ljava/lang/String;Landroidx/lifecycle/j;Landroidx/activity/result/f/a;Landroidx/activity/result/b;)Landroidx/activity/result/c;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroidx/activity/result/b;

.field final synthetic c:Landroidx/activity/result/f/a;

.field final synthetic d:Landroidx/activity/result/ActivityResultRegistry;

.method constructor <init>(Landroidx/activity/result/ActivityResultRegistry;Ljava/lang/String;Landroidx/activity/result/b;Landroidx/activity/result/f/a;)V
  .registers 5
  .line 1
    iput-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$1;->d:Landroidx/activity/result/ActivityResultRegistry;
    iput-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->a:Ljava/lang/String;
    iput-object p3, p0, Landroidx/activity/result/ActivityResultRegistry$1;->b:Landroidx/activity/result/b;
    iput-object p4, p0, Landroidx/activity/result/ActivityResultRegistry$1;->c:Landroidx/activity/result/f/a;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public d(Landroidx/lifecycle/j;Landroidx/lifecycle/f$b;)V
  .registers 6
  .line 1
    sget-object p1, Landroidx/lifecycle/f$b;->ON_START:Landroidx/lifecycle/f$b;
    invoke-virtual { p1, p2 }, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z
    move-result p1
    if-eqz p1, :L1
  .line 2
    iget-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$1;->d:Landroidx/activity/result/ActivityResultRegistry;
    iget-object p1, p1, Landroidx/activity/result/ActivityResultRegistry;->f:Ljava/util/Map;
    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->a:Ljava/lang/String;
    new-instance v0, Landroidx/activity/result/ActivityResultRegistry$c;
    iget-object v1, p0, Landroidx/activity/result/ActivityResultRegistry$1;->b:Landroidx/activity/result/b;
    iget-object v2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->c:Landroidx/activity/result/f/a;
    invoke-direct { v0, v1, v2 }, Landroidx/activity/result/ActivityResultRegistry$c;-><init>(Landroidx/activity/result/b;Landroidx/activity/result/f/a;)V
    invoke-interface { p1, p2, v0 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 3
    iget-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$1;->d:Landroidx/activity/result/ActivityResultRegistry;
    iget-object p1, p1, Landroidx/activity/result/ActivityResultRegistry;->g:Ljava/util/Map;
    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->a:Ljava/lang/String;
    invoke-interface { p1, p2 }, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    move-result p1
    if-eqz p1, :L0
  .line 4
    iget-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$1;->d:Landroidx/activity/result/ActivityResultRegistry;
    iget-object p1, p1, Landroidx/activity/result/ActivityResultRegistry;->g:Ljava/util/Map;
    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->a:Ljava/lang/String;
    invoke-interface { p1, p2 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
  .line 5
    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->d:Landroidx/activity/result/ActivityResultRegistry;
    iget-object p2, p2, Landroidx/activity/result/ActivityResultRegistry;->g:Ljava/util/Map;
    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry$1;->a:Ljava/lang/String;
    invoke-interface { p2, v0 }, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
  .line 6
    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->b:Landroidx/activity/result/b;
    invoke-interface { p2, p1 }, Landroidx/activity/result/b;->a(Ljava/lang/Object;)V
  :L0
  .line 7
    iget-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$1;->d:Landroidx/activity/result/ActivityResultRegistry;
    iget-object p1, p1, Landroidx/activity/result/ActivityResultRegistry;->h:Landroid/os/Bundle;
    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->a:Ljava/lang/String;
    invoke-virtual { p1, p2 }, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
    move-result-object p1
    check-cast p1, Landroidx/activity/result/a;
    if-eqz p1, :L3
  .line 8
    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->d:Landroidx/activity/result/ActivityResultRegistry;
    iget-object p2, p2, Landroidx/activity/result/ActivityResultRegistry;->h:Landroid/os/Bundle;
    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry$1;->a:Ljava/lang/String;
    invoke-virtual { p2, v0 }, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
  .line 9
    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->b:Landroidx/activity/result/b;
    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry$1;->c:Landroidx/activity/result/f/a;
  .line 10
    invoke-virtual { p1 }, Landroidx/activity/result/a;->k()I
    move-result v1
  .line 11
    invoke-virtual { p1 }, Landroidx/activity/result/a;->j()Landroid/content/Intent;
    move-result-object p1
  .line 12
    invoke-virtual { v0, v1, p1 }, Landroidx/activity/result/f/a;->c(ILandroid/content/Intent;)Ljava/lang/Object;
    move-result-object p1
    invoke-interface { p2, p1 }, Landroidx/activity/result/b;->a(Ljava/lang/Object;)V
    goto :L3
  :L1
  .line 13
    sget-object p1, Landroidx/lifecycle/f$b;->ON_STOP:Landroidx/lifecycle/f$b;
    invoke-virtual { p1, p2 }, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z
    move-result p1
    if-eqz p1, :L2
  .line 14
    iget-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$1;->d:Landroidx/activity/result/ActivityResultRegistry;
    iget-object p1, p1, Landroidx/activity/result/ActivityResultRegistry;->f:Ljava/util/Map;
    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->a:Ljava/lang/String;
    invoke-interface { p1, p2 }, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    goto :L3
  :L2
  .line 15
    sget-object p1, Landroidx/lifecycle/f$b;->ON_DESTROY:Landroidx/lifecycle/f$b;
    invoke-virtual { p1, p2 }, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z
    move-result p1
    if-eqz p1, :L3
  .line 16
    iget-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$1;->d:Landroidx/activity/result/ActivityResultRegistry;
    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->a:Ljava/lang/String;
    invoke-virtual { p1, p2 }, Landroidx/activity/result/ActivityResultRegistry;->l(Ljava/lang/String;)V
  :L3
    return-void
.end method
