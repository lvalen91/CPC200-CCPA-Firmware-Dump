.class Landroidx/fragment/app/n$e;
.super Landroidx/fragment/app/j;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/fragment/app/n;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Landroidx/fragment/app/n;

.method constructor <init>(Landroidx/fragment/app/n;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/fragment/app/n$e;->b:Landroidx/fragment/app/n;
    invoke-direct { p0 }, Landroidx/fragment/app/j;-><init>()V
    return-void
.end method

.method public a(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
  .registers 5
  .line 1
    iget-object p1, p0, Landroidx/fragment/app/n$e;->b:Landroidx/fragment/app/n;
    invoke-virtual { p1 }, Landroidx/fragment/app/n;->s0()Landroidx/fragment/app/k;
    move-result-object p1
    iget-object v0, p0, Landroidx/fragment/app/n$e;->b:Landroidx/fragment/app/n;
    invoke-virtual { v0 }, Landroidx/fragment/app/n;->s0()Landroidx/fragment/app/k;
    move-result-object v0
    invoke-virtual { v0 }, Landroidx/fragment/app/k;->f()Landroid/content/Context;
    move-result-object v0
    const/4 v1, 0
    invoke-virtual { p1, v0, p2, v1 }, Landroidx/fragment/app/g;->b(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;
    move-result-object p1
    return-object p1
.end method
