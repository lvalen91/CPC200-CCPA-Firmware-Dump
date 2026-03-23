.class public abstract Landroidx/fragment/app/k;
.super Landroidx/fragment/app/g;
.source "SourceFile"

.annotation system Ldalvik/annotation/Signature;
  value = {
    "<E:",
    "Ljava/lang/Object;",
    ">",
    "Landroidx/fragment/app/g;"
  }
.end annotation

.field private final b:Landroid/app/Activity;

.field private final c:Landroid/content/Context;

.field private final d:Landroid/os/Handler;

.field final e:Landroidx/fragment/app/n;

.method constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V
  .registers 5
  .line 2
    invoke-direct { p0 }, Landroidx/fragment/app/g;-><init>()V
  .line 3
    new-instance p4, Landroidx/fragment/app/o;
    invoke-direct { p4 }, Landroidx/fragment/app/o;-><init>()V
    iput-object p4, p0, Landroidx/fragment/app/k;->e:Landroidx/fragment/app/n;
  .line 4
    iput-object p1, p0, Landroidx/fragment/app/k;->b:Landroid/app/Activity;
    const-string p1, "context == null"
  .line 5
    invoke-static { p2, p1 }, Lc/g/j/h;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    check-cast p2, Landroid/content/Context;
    iput-object p2, p0, Landroidx/fragment/app/k;->c:Landroid/content/Context;
    const-string p1, "handler == null"
  .line 6
    invoke-static { p3, p1 }, Lc/g/j/h;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    check-cast p3, Landroid/os/Handler;
    iput-object p3, p0, Landroidx/fragment/app/k;->d:Landroid/os/Handler;
    return-void
.end method

.method constructor <init>(Landroidx/fragment/app/e;)V
  .registers 4
  .line 1
    new-instance v0, Landroid/os/Handler;
    invoke-direct { v0 }, Landroid/os/Handler;-><init>()V
    const/4 v1, 0
    invoke-direct { p0, p1, p1, v0, v1 }, Landroidx/fragment/app/k;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V
    return-void
.end method

.method public c(I)Landroid/view/View;
  .registers 2
    const/4 p1, 0
    return-object p1
.end method

.method public d()Z
  .registers 2
    const/4 v0, 1
    return v0
.end method

.method e()Landroid/app/Activity;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/k;->b:Landroid/app/Activity;
    return-object v0
.end method

.method f()Landroid/content/Context;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/k;->c:Landroid/content/Context;
    return-object v0
.end method

.method g()Landroid/os/Handler;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/k;->d:Landroid/os/Handler;
    return-object v0
.end method

.method public abstract h()Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()TE;"
    }
  .end annotation
.end method

.method public i()Landroid/view/LayoutInflater;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/k;->c:Landroid/content/Context;
    invoke-static { v0 }, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
    move-result-object v0
    return-object v0
.end method

.method public j(Landroidx/fragment/app/Fragment;)Z
  .registers 2
    const/4 p1, 1
    return p1
.end method

.method public k(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
  .parameter # Landroidx/fragment/app/Fragment;
  .parameter # Landroid/content/Intent;
    .annotation build Landroid/annotation/SuppressLint;
      value = {
        "UnknownNullness"
      }
    .end annotation
  .end parameter
  .registers 5
    const/4 p1, -1
    if-ne p3, p1, :L0
  .line 1
    iget-object p1, p0, Landroidx/fragment/app/k;->c:Landroid/content/Context;
    invoke-static { p1, p2, p4 }, Landroidx/core/content/a;->h(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V
    return-void
  :L0
  .line 2
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string p2, "Starting activity with a requestCode requires a FragmentActivity host"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public l(Landroidx/fragment/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .parameter # Landroidx/fragment/app/Fragment;
  .parameter # Landroid/content/IntentSender;
    .annotation build Landroid/annotation/SuppressLint;
      value = {
        "UnknownNullness"
      }
    .end annotation
  .end parameter
  .registers 18
    const/4 v0, -1
    move v3, p3
    if-ne v3, v0, :L0
    move-object v0, p0
  .line 1
    iget-object v1, v0, Landroidx/fragment/app/k;->b:Landroid/app/Activity;
    move-object v2, p2
    move v3, p3
    move-object v4, p4
    move v5, p5
    move v6, p6
    move/from16 v7, p7
    move-object/from16 v8, p8
    invoke-static/range { v1 .. v8 }, Landroidx/core/app/a;->r(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    return-void
  :L0
    move-object v0, p0
  .line 2
    new-instance v1, Ljava/lang/IllegalStateException;
    const-string v2, "Starting intent sender with a requestCode requires a FragmentActivity host"
    invoke-direct { v1, v2 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v1
.end method

.method public m()V
  .registers 1
    return-void
.end method
