.class Landroidx/fragment/app/e$a;
.super Ljava/lang/Object;
.implements Landroidx/savedstate/SavedStateRegistry$b;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/fragment/app/e;->init()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Landroidx/fragment/app/e;

.method constructor <init>(Landroidx/fragment/app/e;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/fragment/app/e$a;->a:Landroidx/fragment/app/e;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a()Landroid/os/Bundle;
  .registers 4
  .line 1
    new-instance v0, Landroid/os/Bundle;
    invoke-direct { v0 }, Landroid/os/Bundle;-><init>()V
  .line 2
    iget-object v1, p0, Landroidx/fragment/app/e$a;->a:Landroidx/fragment/app/e;
    invoke-virtual { v1 }, Landroidx/fragment/app/e;->markFragmentsCreated()V
  .line 3
    iget-object v1, p0, Landroidx/fragment/app/e$a;->a:Landroidx/fragment/app/e;
    iget-object v1, v1, Landroidx/fragment/app/e;->mFragmentLifecycleRegistry:Landroidx/lifecycle/k;
    sget-object v2, Landroidx/lifecycle/f$b;->ON_STOP:Landroidx/lifecycle/f$b;
    invoke-virtual { v1, v2 }, Landroidx/lifecycle/k;->h(Landroidx/lifecycle/f$b;)V
  .line 4
    iget-object v1, p0, Landroidx/fragment/app/e$a;->a:Landroidx/fragment/app/e;
    iget-object v1, v1, Landroidx/fragment/app/e;->mFragments:Landroidx/fragment/app/i;
    invoke-virtual { v1 }, Landroidx/fragment/app/i;->x()Landroid/os/Parcelable;
    move-result-object v1
    if-eqz v1, :L0
    const-string v2, "android:support:fragments"
  .line 5
    invoke-virtual { v0, v2, v1 }, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
  :L0
    return-object v0
.end method
