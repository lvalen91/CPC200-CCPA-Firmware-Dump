.class public Landroidx/fragment/app/e;
.super Landroidx/activity/ComponentActivity;
.implements Landroidx/core/app/a$c;
.implements Landroidx/core/app/a$e;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/fragment/app/e$c;
  }
.end annotation

.field final static FRAGMENTS_TAG:Ljava/lang/String; = "android:support:fragments"

.field mCreated:Z

.field final mFragmentLifecycleRegistry:Landroidx/lifecycle/k;

.field final mFragments:Landroidx/fragment/app/i;

.field mResumed:Z

.field mStopped:Z

.method public constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Landroidx/activity/ComponentActivity;-><init>()V
  .line 2
    new-instance v0, Landroidx/fragment/app/e$c;
    invoke-direct { v0, p0 }, Landroidx/fragment/app/e$c;-><init>(Landroidx/fragment/app/e;)V
    invoke-static { v0 }, Landroidx/fragment/app/i;->b(Landroidx/fragment/app/k;)Landroidx/fragment/app/i;
    move-result-object v0
    iput-object v0, p0, Landroidx/fragment/app/e;->mFragments:Landroidx/fragment/app/i;
  .line 3
    new-instance v0, Landroidx/lifecycle/k;
    invoke-direct { v0, p0 }, Landroidx/lifecycle/k;-><init>(Landroidx/lifecycle/j;)V
    iput-object v0, p0, Landroidx/fragment/app/e;->mFragmentLifecycleRegistry:Landroidx/lifecycle/k;
    const/4 v0, 1
  .line 4
    iput-boolean v0, p0, Landroidx/fragment/app/e;->mStopped:Z
  .line 5
    invoke-direct { p0 }, Landroidx/fragment/app/e;->init()V
    return-void
.end method

.method public constructor <init>(I)V
  .registers 2
  .line 6
    invoke-direct { p0, p1 }, Landroidx/activity/ComponentActivity;-><init>(I)V
  .line 7
    new-instance p1, Landroidx/fragment/app/e$c;
    invoke-direct { p1, p0 }, Landroidx/fragment/app/e$c;-><init>(Landroidx/fragment/app/e;)V
    invoke-static { p1 }, Landroidx/fragment/app/i;->b(Landroidx/fragment/app/k;)Landroidx/fragment/app/i;
    move-result-object p1
    iput-object p1, p0, Landroidx/fragment/app/e;->mFragments:Landroidx/fragment/app/i;
  .line 8
    new-instance p1, Landroidx/lifecycle/k;
    invoke-direct { p1, p0 }, Landroidx/lifecycle/k;-><init>(Landroidx/lifecycle/j;)V
    iput-object p1, p0, Landroidx/fragment/app/e;->mFragmentLifecycleRegistry:Landroidx/lifecycle/k;
    const/4 p1, 1
  .line 9
    iput-boolean p1, p0, Landroidx/fragment/app/e;->mStopped:Z
  .line 10
    invoke-direct { p0 }, Landroidx/fragment/app/e;->init()V
    return-void
.end method

.method private init()V
  .registers 4
  .line 1
    invoke-virtual { p0 }, Landroidx/activity/ComponentActivity;->getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;
    move-result-object v0
    new-instance v1, Landroidx/fragment/app/e$a;
    invoke-direct { v1, p0 }, Landroidx/fragment/app/e$a;-><init>(Landroidx/fragment/app/e;)V
    const-string v2, "android:support:fragments"
    invoke-virtual { v0, v2, v1 }, Landroidx/savedstate/SavedStateRegistry;->d(Ljava/lang/String;Landroidx/savedstate/SavedStateRegistry$b;)V
  .line 2
    new-instance v0, Landroidx/fragment/app/e$b;
    invoke-direct { v0, p0 }, Landroidx/fragment/app/e$b;-><init>(Landroidx/fragment/app/e;)V
    invoke-virtual { p0, v0 }, Landroidx/activity/ComponentActivity;->addOnContextAvailableListener(Landroidx/activity/d/b;)V
    return-void
.end method

.method private static markState(Landroidx/fragment/app/n;Landroidx/lifecycle/f$c;)Z
  .registers 7
  .line 1
    invoke-virtual { p0 }, Landroidx/fragment/app/n;->r0()Ljava/util/List;
    move-result-object p0
  .line 2
    invoke-interface { p0 }, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    move-result-object p0
    const/4 v0, 0
  :L0
    invoke-interface { p0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L4
    invoke-interface { p0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/fragment/app/Fragment;
    if-nez v1, :L1
    goto :L0
  :L1
  .line 3
    invoke-virtual { v1 }, Landroidx/fragment/app/Fragment;->S()Ljava/lang/Object;
    move-result-object v2
    if-eqz v2, :L2
  .line 4
    invoke-virtual { v1 }, Landroidx/fragment/app/Fragment;->J()Landroidx/fragment/app/n;
    move-result-object v2
  .line 5
    invoke-static { v2, p1 }, Landroidx/fragment/app/e;->markState(Landroidx/fragment/app/n;Landroidx/lifecycle/f$c;)Z
    move-result v2
    or-int/2addr v0, v2
  :L2
  .line 6
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->T:Landroidx/fragment/app/a0;
    const/4 v3, 1
    if-eqz v2, :L3
  .line 7
    invoke-virtual { v2 }, Landroidx/fragment/app/a0;->getLifecycle()Landroidx/lifecycle/f;
    move-result-object v2
    invoke-virtual { v2 }, Landroidx/lifecycle/f;->b()Landroidx/lifecycle/f$c;
    move-result-object v2
    sget-object v4, Landroidx/lifecycle/f$c;->e:Landroidx/lifecycle/f$c;
    invoke-virtual { v2, v4 }, Landroidx/lifecycle/f$c;->a(Landroidx/lifecycle/f$c;)Z
    move-result v2
    if-eqz v2, :L3
  .line 8
    iget-object v0, v1, Landroidx/fragment/app/Fragment;->T:Landroidx/fragment/app/a0;
    invoke-virtual { v0, p1 }, Landroidx/fragment/app/a0;->f(Landroidx/lifecycle/f$c;)V
    const/4 v0, 1
  :L3
  .line 9
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->S:Landroidx/lifecycle/k;
    invoke-virtual { v2 }, Landroidx/lifecycle/k;->b()Landroidx/lifecycle/f$c;
    move-result-object v2
    sget-object v4, Landroidx/lifecycle/f$c;->e:Landroidx/lifecycle/f$c;
    invoke-virtual { v2, v4 }, Landroidx/lifecycle/f$c;->a(Landroidx/lifecycle/f$c;)Z
    move-result v2
    if-eqz v2, :L0
  .line 10
    iget-object v0, v1, Landroidx/fragment/app/Fragment;->S:Landroidx/lifecycle/k;
    invoke-virtual { v0, p1 }, Landroidx/lifecycle/k;->o(Landroidx/lifecycle/f$c;)V
    const/4 v0, 1
    goto :L0
  :L4
    return v0
.end method

.method final dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/e;->mFragments:Landroidx/fragment/app/i;
    invoke-virtual { v0, p1, p2, p3, p4 }, Landroidx/fragment/app/i;->v(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    move-result-object p1
    return-object p1
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
  .registers 7
  .line 1
    invoke-super { p0, p1, p2, p3, p4 }, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
  .line 2
    invoke-virtual { p3, p1 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    const-string v0, "Local FragmentActivity "
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
  .line 3
    invoke-static { p0 }, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I
    move-result v0
    invoke-static { v0 }, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    const-string v0, " State:"
  .line 4
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
  .line 5
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, "  "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
  .line 6
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    const-string v1, "mCreated="
    invoke-virtual { p3, v1 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
  .line 7
    iget-boolean v1, p0, Landroidx/fragment/app/e;->mCreated:Z
    invoke-virtual { p3, v1 }, Ljava/io/PrintWriter;->print(Z)V
    const-string v1, " mResumed="
    invoke-virtual { p3, v1 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
  .line 8
    iget-boolean v1, p0, Landroidx/fragment/app/e;->mResumed:Z
    invoke-virtual { p3, v1 }, Ljava/io/PrintWriter;->print(Z)V
    const-string v1, " mStopped="
    invoke-virtual { p3, v1 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
  .line 9
    iget-boolean v1, p0, Landroidx/fragment/app/e;->mStopped:Z
    invoke-virtual { p3, v1 }, Ljava/io/PrintWriter;->print(Z)V
  .line 10
    invoke-virtual { p0 }, Landroid/app/Activity;->getApplication()Landroid/app/Application;
    move-result-object v1
    if-eqz v1, :L0
  .line 11
    invoke-static { p0 }, Lc/l/a/a;->b(Landroidx/lifecycle/j;)Lc/l/a/a;
    move-result-object v1
    invoke-virtual { v1, v0, p2, p3, p4 }, Lc/l/a/a;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
  :L0
  .line 12
    iget-object v0, p0, Landroidx/fragment/app/e;->mFragments:Landroidx/fragment/app/i;
    invoke-virtual { v0 }, Landroidx/fragment/app/i;->t()Landroidx/fragment/app/n;
    move-result-object v0
    invoke-virtual { v0, p1, p2, p3, p4 }, Landroidx/fragment/app/n;->W(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    return-void
.end method

.method public getSupportFragmentManager()Landroidx/fragment/app/n;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/e;->mFragments:Landroidx/fragment/app/i;
    invoke-virtual { v0 }, Landroidx/fragment/app/i;->t()Landroidx/fragment/app/n;
    move-result-object v0
    return-object v0
.end method

.method public getSupportLoaderManager()Lc/l/a/a;
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 2
  .line 1
    invoke-static { p0 }, Lc/l/a/a;->b(Landroidx/lifecycle/j;)Lc/l/a/a;
    move-result-object v0
    return-object v0
.end method

.method markFragmentsCreated()V
  .registers 3
  :L0
  .line 1
    invoke-virtual { p0 }, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;
    move-result-object v0
    sget-object v1, Landroidx/lifecycle/f$c;->d:Landroidx/lifecycle/f$c;
    invoke-static { v0, v1 }, Landroidx/fragment/app/e;->markState(Landroidx/fragment/app/n;Landroidx/lifecycle/f$c;)Z
    move-result v0
    if-nez v0, :L0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/e;->mFragments:Landroidx/fragment/app/i;
    invoke-virtual { v0 }, Landroidx/fragment/app/i;->u()V
  .line 2
    invoke-super { p0, p1, p2, p3 }, Landroidx/activity/ComponentActivity;->onActivityResult(IILandroid/content/Intent;)V
    return-void
.end method

.method public onAttachFragment(Landroidx/fragment/app/Fragment;)V
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 2
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
  .registers 3
  .line 1
    invoke-super { p0, p1 }, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V
  .line 2
    iget-object v0, p0, Landroidx/fragment/app/e;->mFragments:Landroidx/fragment/app/i;
    invoke-virtual { v0 }, Landroidx/fragment/app/i;->u()V
  .line 3
    iget-object v0, p0, Landroidx/fragment/app/e;->mFragments:Landroidx/fragment/app/i;
    invoke-virtual { v0, p1 }, Landroidx/fragment/app/i;->d(Landroid/content/res/Configuration;)V
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
  .registers 3
  .line 1
    invoke-super { p0, p1 }, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V
  .line 2
    iget-object p1, p0, Landroidx/fragment/app/e;->mFragmentLifecycleRegistry:Landroidx/lifecycle/k;
    sget-object v0, Landroidx/lifecycle/f$b;->ON_CREATE:Landroidx/lifecycle/f$b;
    invoke-virtual { p1, v0 }, Landroidx/lifecycle/k;->h(Landroidx/lifecycle/f$b;)V
  .line 3
    iget-object p1, p0, Landroidx/fragment/app/e;->mFragments:Landroidx/fragment/app/i;
    invoke-virtual { p1 }, Landroidx/fragment/app/i;->f()V
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
  .registers 5
    if-nez p1, :L0
  .line 1
    invoke-super { p0, p1, p2 }, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z
    move-result p1
  .line 2
    iget-object v0, p0, Landroidx/fragment/app/e;->mFragments:Landroidx/fragment/app/i;
    invoke-virtual { p0 }, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;
    move-result-object v1
    invoke-virtual { v0, p2, v1 }, Landroidx/fragment/app/i;->g(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    move-result p2
    or-int/2addr p1, p2
    return p1
  :L0
  .line 3
    invoke-super { p0, p1, p2 }, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z
    move-result p1
    return p1
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
  .registers 6
  .line 1
    invoke-virtual { p0, p1, p2, p3, p4 }, Landroidx/fragment/app/e;->dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    move-result-object v0
    if-nez v0, :L0
  .line 2
    invoke-super { p0, p1, p2, p3, p4 }, Landroid/app/Activity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    move-result-object p1
    return-object p1
  :L0
    return-object v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
  .registers 5
    const/4 v0, 0
  .line 3
    invoke-virtual { p0, v0, p1, p2, p3 }, Landroidx/fragment/app/e;->dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    move-result-object v0
    if-nez v0, :L0
  .line 4
    invoke-super { p0, p1, p2, p3 }, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    move-result-object p1
    return-object p1
  :L0
    return-object v0
.end method

.method protected onDestroy()V
  .registers 3
  .line 1
    invoke-super { p0 }, Landroid/app/Activity;->onDestroy()V
  .line 2
    iget-object v0, p0, Landroidx/fragment/app/e;->mFragments:Landroidx/fragment/app/i;
    invoke-virtual { v0 }, Landroidx/fragment/app/i;->h()V
  .line 3
    iget-object v0, p0, Landroidx/fragment/app/e;->mFragmentLifecycleRegistry:Landroidx/lifecycle/k;
    sget-object v1, Landroidx/lifecycle/f$b;->ON_DESTROY:Landroidx/lifecycle/f$b;
    invoke-virtual { v0, v1 }, Landroidx/lifecycle/k;->h(Landroidx/lifecycle/f$b;)V
    return-void
.end method

.method public onLowMemory()V
  .registers 2
  .line 1
    invoke-super { p0 }, Landroid/app/Activity;->onLowMemory()V
  .line 2
    iget-object v0, p0, Landroidx/fragment/app/e;->mFragments:Landroidx/fragment/app/i;
    invoke-virtual { v0 }, Landroidx/fragment/app/i;->i()V
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
  .registers 4
  .line 1
    invoke-super { p0, p1, p2 }, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z
    move-result v0
    if-eqz v0, :L0
    const/4 p1, 1
    return p1
  :L0
    if-eqz p1, :L2
    const/4 v0, 6
    if-eq p1, v0, :L1
    const/4 p1, 0
    return p1
  :L1
  .line 2
    iget-object p1, p0, Landroidx/fragment/app/e;->mFragments:Landroidx/fragment/app/i;
    invoke-virtual { p1, p2 }, Landroidx/fragment/app/i;->e(Landroid/view/MenuItem;)Z
    move-result p1
    return p1
  :L2
  .line 3
    iget-object p1, p0, Landroidx/fragment/app/e;->mFragments:Landroidx/fragment/app/i;
    invoke-virtual { p1, p2 }, Landroidx/fragment/app/i;->k(Landroid/view/MenuItem;)Z
    move-result p1
    return p1
.end method

.method public onMultiWindowModeChanged(Z)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/e;->mFragments:Landroidx/fragment/app/i;
    invoke-virtual { v0, p1 }, Landroidx/fragment/app/i;->j(Z)V
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
  .parameter # Landroid/content/Intent;
    .annotation build Landroid/annotation/SuppressLint;
      value = {
        "UnknownNullness"
      }
    .end annotation
  .end parameter
  .registers 2
  .line 1
    invoke-super { p0, p1 }, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V
  .line 2
    iget-object p1, p0, Landroidx/fragment/app/e;->mFragments:Landroidx/fragment/app/i;
    invoke-virtual { p1 }, Landroidx/fragment/app/i;->u()V
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
  .registers 4
    if-nez p1, :L0
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/e;->mFragments:Landroidx/fragment/app/i;
    invoke-virtual { v0, p2 }, Landroidx/fragment/app/i;->l(Landroid/view/Menu;)V
  :L0
  .line 2
    invoke-super { p0, p1, p2 }, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V
    return-void
.end method

.method protected onPause()V
  .registers 3
  .line 1
    invoke-super { p0 }, Landroid/app/Activity;->onPause()V
    const/4 v0, 0
  .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/e;->mResumed:Z
  .line 3
    iget-object v0, p0, Landroidx/fragment/app/e;->mFragments:Landroidx/fragment/app/i;
    invoke-virtual { v0 }, Landroidx/fragment/app/i;->m()V
  .line 4
    iget-object v0, p0, Landroidx/fragment/app/e;->mFragmentLifecycleRegistry:Landroidx/lifecycle/k;
    sget-object v1, Landroidx/lifecycle/f$b;->ON_PAUSE:Landroidx/lifecycle/f$b;
    invoke-virtual { v0, v1 }, Landroidx/lifecycle/k;->h(Landroidx/lifecycle/f$b;)V
    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/e;->mFragments:Landroidx/fragment/app/i;
    invoke-virtual { v0, p1 }, Landroidx/fragment/app/i;->n(Z)V
    return-void
.end method

.method protected onPostResume()V
  .registers 1
  .line 1
    invoke-super { p0 }, Landroid/app/Activity;->onPostResume()V
  .line 2
    invoke-virtual { p0 }, Landroidx/fragment/app/e;->onResumeFragments()V
    return-void
.end method

.method protected onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 4
    const/4 v0, 0
  .line 1
    invoke-super { p0, v0, p1, p2 }, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    move-result p1
    return p1
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
  .registers 4
    if-nez p1, :L0
  .line 1
    invoke-virtual { p0, p2, p3 }, Landroidx/fragment/app/e;->onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z
    move-result p1
  .line 2
    iget-object p2, p0, Landroidx/fragment/app/e;->mFragments:Landroidx/fragment/app/i;
    invoke-virtual { p2, p3 }, Landroidx/fragment/app/i;->o(Landroid/view/Menu;)Z
    move-result p2
    or-int/2addr p1, p2
    return p1
  :L0
  .line 3
    invoke-super { p0, p1, p2, p3 }, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    move-result p1
    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/e;->mFragments:Landroidx/fragment/app/i;
    invoke-virtual { v0 }, Landroidx/fragment/app/i;->u()V
  .line 2
    invoke-super { p0, p1, p2, p3 }, Landroidx/activity/ComponentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    return-void
.end method

.method protected onResume()V
  .registers 2
  .line 1
    invoke-super { p0 }, Landroid/app/Activity;->onResume()V
    const/4 v0, 1
  .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/e;->mResumed:Z
  .line 3
    iget-object v0, p0, Landroidx/fragment/app/e;->mFragments:Landroidx/fragment/app/i;
    invoke-virtual { v0 }, Landroidx/fragment/app/i;->u()V
  .line 4
    iget-object v0, p0, Landroidx/fragment/app/e;->mFragments:Landroidx/fragment/app/i;
    invoke-virtual { v0 }, Landroidx/fragment/app/i;->s()Z
    return-void
.end method

.method protected onResumeFragments()V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/e;->mFragmentLifecycleRegistry:Landroidx/lifecycle/k;
    sget-object v1, Landroidx/lifecycle/f$b;->ON_RESUME:Landroidx/lifecycle/f$b;
    invoke-virtual { v0, v1 }, Landroidx/lifecycle/k;->h(Landroidx/lifecycle/f$b;)V
  .line 2
    iget-object v0, p0, Landroidx/fragment/app/e;->mFragments:Landroidx/fragment/app/i;
    invoke-virtual { v0 }, Landroidx/fragment/app/i;->p()V
    return-void
.end method

.method protected onStart()V
  .registers 3
  .line 1
    invoke-super { p0 }, Landroid/app/Activity;->onStart()V
    const/4 v0, 0
  .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/e;->mStopped:Z
  .line 3
    iget-boolean v0, p0, Landroidx/fragment/app/e;->mCreated:Z
    if-nez v0, :L0
    const/4 v0, 1
  .line 4
    iput-boolean v0, p0, Landroidx/fragment/app/e;->mCreated:Z
  .line 5
    iget-object v0, p0, Landroidx/fragment/app/e;->mFragments:Landroidx/fragment/app/i;
    invoke-virtual { v0 }, Landroidx/fragment/app/i;->c()V
  :L0
  .line 6
    iget-object v0, p0, Landroidx/fragment/app/e;->mFragments:Landroidx/fragment/app/i;
    invoke-virtual { v0 }, Landroidx/fragment/app/i;->u()V
  .line 7
    iget-object v0, p0, Landroidx/fragment/app/e;->mFragments:Landroidx/fragment/app/i;
    invoke-virtual { v0 }, Landroidx/fragment/app/i;->s()Z
  .line 8
    iget-object v0, p0, Landroidx/fragment/app/e;->mFragmentLifecycleRegistry:Landroidx/lifecycle/k;
    sget-object v1, Landroidx/lifecycle/f$b;->ON_START:Landroidx/lifecycle/f$b;
    invoke-virtual { v0, v1 }, Landroidx/lifecycle/k;->h(Landroidx/lifecycle/f$b;)V
  .line 9
    iget-object v0, p0, Landroidx/fragment/app/e;->mFragments:Landroidx/fragment/app/i;
    invoke-virtual { v0 }, Landroidx/fragment/app/i;->q()V
    return-void
.end method

.method public onStateNotSaved()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/e;->mFragments:Landroidx/fragment/app/i;
    invoke-virtual { v0 }, Landroidx/fragment/app/i;->u()V
    return-void
.end method

.method protected onStop()V
  .registers 3
  .line 1
    invoke-super { p0 }, Landroid/app/Activity;->onStop()V
    const/4 v0, 1
  .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/e;->mStopped:Z
  .line 3
    invoke-virtual { p0 }, Landroidx/fragment/app/e;->markFragmentsCreated()V
  .line 4
    iget-object v0, p0, Landroidx/fragment/app/e;->mFragments:Landroidx/fragment/app/i;
    invoke-virtual { v0 }, Landroidx/fragment/app/i;->r()V
  .line 5
    iget-object v0, p0, Landroidx/fragment/app/e;->mFragmentLifecycleRegistry:Landroidx/lifecycle/k;
    sget-object v1, Landroidx/lifecycle/f$b;->ON_STOP:Landroidx/lifecycle/f$b;
    invoke-virtual { v0, v1 }, Landroidx/lifecycle/k;->h(Landroidx/lifecycle/f$b;)V
    return-void
.end method

.method public setEnterSharedElementCallback(Landroidx/core/app/h;)V
  .registers 2
  .line 1
    invoke-static { p0, p1 }, Landroidx/core/app/a;->n(Landroid/app/Activity;Landroidx/core/app/h;)V
    return-void
.end method

.method public setExitSharedElementCallback(Landroidx/core/app/h;)V
  .registers 2
  .line 1
    invoke-static { p0, p1 }, Landroidx/core/app/a;->o(Landroid/app/Activity;Landroidx/core/app/h;)V
    return-void
.end method

.method public startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
  .parameter # Landroidx/fragment/app/Fragment;
  .parameter # Landroid/content/Intent;
    .annotation build Landroid/annotation/SuppressLint;
      value = {
        "UnknownNullness"
      }
    .end annotation
  .end parameter
  .registers 5
    const/4 v0, 0
  .line 1
    invoke-virtual { p0, p1, p2, p3, v0 }, Landroidx/fragment/app/e;->startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    return-void
.end method

.method public startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
  .parameter # Landroidx/fragment/app/Fragment;
  .parameter # Landroid/content/Intent;
    .annotation build Landroid/annotation/SuppressLint;
      value = {
        "UnknownNullness"
      }
    .end annotation
  .end parameter
  .registers 6
    const/4 v0, -1
    if-ne p3, v0, :L0
  .line 2
    invoke-static { p0, p2, v0, p4 }, Landroidx/core/app/a;->q(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    return-void
  :L0
  .line 3
    invoke-virtual { p1, p2, p3, p4 }, Landroidx/fragment/app/Fragment;->d2(Landroid/content/Intent;ILandroid/os/Bundle;)V
    return-void
.end method

.method public startIntentSenderFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
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
    move-object v1, p0
    move-object v2, p2
    move v3, p3
    move-object v4, p4
    move v5, p5
    move v6, p6
    move/from16 v7, p7
    move-object/from16 v8, p8
  .line 1
    invoke-static/range { v1 .. v8 }, Landroidx/core/app/a;->r(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    return-void
  :L0
  .line 2
    invoke-virtual/range { p1 .. p8 }, Landroidx/fragment/app/Fragment;->e2(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    return-void
.end method

.method public supportFinishAfterTransition()V
  .registers 1
  .line 1
    invoke-static { p0 }, Landroidx/core/app/a;->j(Landroid/app/Activity;)V
    return-void
.end method

.method public supportInvalidateOptionsMenu()V
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 1
  .line 1
    invoke-virtual { p0 }, Landroid/app/Activity;->invalidateOptionsMenu()V
    return-void
.end method

.method public supportPostponeEnterTransition()V
  .registers 1
  .line 1
    invoke-static { p0 }, Landroidx/core/app/a;->k(Landroid/app/Activity;)V
    return-void
.end method

.method public supportStartPostponedEnterTransition()V
  .registers 1
  .line 1
    invoke-static { p0 }, Landroidx/core/app/a;->s(Landroid/app/Activity;)V
    return-void
.end method

.method public final validateRequestPermissionsRequestCode(I)V
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 2
    return-void
.end method
