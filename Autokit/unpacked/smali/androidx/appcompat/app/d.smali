.class public Landroidx/appcompat/app/d;
.super Landroidx/fragment/app/e;
.implements Landroidx/appcompat/app/e;
.implements Landroidx/core/app/i$a;
.source "SourceFile"

.field private final static DELEGATE_TAG:Ljava/lang/String; = "androidx:appcompat"

.field private mDelegate:Landroidx/appcompat/app/f;

.field private mResources:Landroid/content/res/Resources;

.method public constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Landroidx/fragment/app/e;-><init>()V
  .line 2
    invoke-direct { p0 }, Landroidx/appcompat/app/d;->initDelegate()V
    return-void
.end method

.method public constructor <init>(I)V
  .registers 2
  .line 3
    invoke-direct { p0, p1 }, Landroidx/fragment/app/e;-><init>(I)V
  .line 4
    invoke-direct { p0 }, Landroidx/appcompat/app/d;->initDelegate()V
    return-void
.end method

.method private initDelegate()V
  .registers 4
  .line 1
    invoke-virtual { p0 }, Landroidx/activity/ComponentActivity;->getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;
    move-result-object v0
    new-instance v1, Landroidx/appcompat/app/d$a;
    invoke-direct { v1, p0 }, Landroidx/appcompat/app/d$a;-><init>(Landroidx/appcompat/app/d;)V
    const-string v2, "androidx:appcompat"
    invoke-virtual { v0, v2, v1 }, Landroidx/savedstate/SavedStateRegistry;->d(Ljava/lang/String;Landroidx/savedstate/SavedStateRegistry$b;)V
  .line 2
    new-instance v0, Landroidx/appcompat/app/d$b;
    invoke-direct { v0, p0 }, Landroidx/appcompat/app/d$b;-><init>(Landroidx/appcompat/app/d;)V
    invoke-virtual { p0, v0 }, Landroidx/activity/ComponentActivity;->addOnContextAvailableListener(Landroidx/activity/d/b;)V
    return-void
.end method

.method private initViewTreeOwners()V
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroid/app/Activity;->getWindow()Landroid/view/Window;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/view/Window;->getDecorView()Landroid/view/View;
    move-result-object v0
    invoke-static { v0, p0 }, Landroidx/lifecycle/z;->a(Landroid/view/View;Landroidx/lifecycle/j;)V
  .line 2
    invoke-virtual { p0 }, Landroid/app/Activity;->getWindow()Landroid/view/Window;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/view/Window;->getDecorView()Landroid/view/View;
    move-result-object v0
    invoke-static { v0, p0 }, Landroidx/lifecycle/a0;->a(Landroid/view/View;Landroidx/lifecycle/y;)V
  .line 3
    invoke-virtual { p0 }, Landroid/app/Activity;->getWindow()Landroid/view/Window;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/view/Window;->getDecorView()Landroid/view/View;
    move-result-object v0
    invoke-static { v0, p0 }, Landroidx/savedstate/d;->a(Landroid/view/View;Landroidx/savedstate/c;)V
    return-void
.end method

.method private performMenuItemShortcut(Landroid/view/KeyEvent;)Z
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 26
    if-ge v0, v1, :L0
    invoke-virtual { p1 }, Landroid/view/KeyEvent;->isCtrlPressed()Z
    move-result v0
    if-nez v0, :L0
  .line 2
    invoke-virtual { p1 }, Landroid/view/KeyEvent;->getMetaState()I
    move-result v0
    invoke-static { v0 }, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z
    move-result v0
    if-nez v0, :L0
  .line 3
    invoke-virtual { p1 }, Landroid/view/KeyEvent;->getRepeatCount()I
    move-result v0
    if-nez v0, :L0
  .line 4
    invoke-virtual { p1 }, Landroid/view/KeyEvent;->getKeyCode()I
    move-result v0
    invoke-static { v0 }, Landroid/view/KeyEvent;->isModifierKey(I)Z
    move-result v0
    if-nez v0, :L0
  .line 5
    invoke-virtual { p0 }, Landroid/app/Activity;->getWindow()Landroid/view/Window;
    move-result-object v0
    if-eqz v0, :L0
  .line 6
    invoke-virtual { v0 }, Landroid/view/Window;->getDecorView()Landroid/view/View;
    move-result-object v1
    if-eqz v1, :L0
  .line 7
    invoke-virtual { v0 }, Landroid/view/Window;->getDecorView()Landroid/view/View;
    move-result-object v0
  .line 8
    invoke-virtual { v0, p1 }, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    move-result p1
    if-eqz p1, :L0
    const/4 p1, 1
    return p1
  :L0
    const/4 p1, 0
    return p1
.end method

.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  .registers 4
  .line 1
    invoke-direct { p0 }, Landroidx/appcompat/app/d;->initViewTreeOwners()V
  .line 2
    invoke-virtual { p0 }, Landroidx/appcompat/app/d;->getDelegate()Landroidx/appcompat/app/f;
    move-result-object v0
    invoke-virtual { v0, p1, p2 }, Landroidx/appcompat/app/f;->d(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/app/d;->getDelegate()Landroidx/appcompat/app/f;
    move-result-object v0
    invoke-virtual { v0, p1 }, Landroidx/appcompat/app/f;->h(Landroid/content/Context;)Landroid/content/Context;
    move-result-object p1
    invoke-super { p0, p1 }, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V
    return-void
.end method

.method public closeOptionsMenu()V
  .registers 4
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/app/d;->getSupportActionBar()Landroidx/appcompat/app/a;
    move-result-object v0
  .line 2
    invoke-virtual { p0 }, Landroid/app/Activity;->getWindow()Landroid/view/Window;
    move-result-object v1
    const/4 v2, 0
    invoke-virtual { v1, v2 }, Landroid/view/Window;->hasFeature(I)Z
    move-result v1
    if-eqz v1, :L1
    if-eqz v0, :L0
  .line 3
    invoke-virtual { v0 }, Landroidx/appcompat/app/a;->g()Z
    move-result v0
    if-nez v0, :L1
  :L0
  .line 4
    invoke-super { p0 }, Landroid/app/Activity;->closeOptionsMenu()V
  :L1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
  .registers 5
  .line 1
    invoke-virtual { p1 }, Landroid/view/KeyEvent;->getKeyCode()I
    move-result v0
  .line 2
    invoke-virtual { p0 }, Landroidx/appcompat/app/d;->getSupportActionBar()Landroidx/appcompat/app/a;
    move-result-object v1
    const/16 v2, 82
    if-ne v0, v2, :L0
    if-eqz v1, :L0
  .line 3
    invoke-virtual { v1, p1 }, Landroidx/appcompat/app/a;->q(Landroid/view/KeyEvent;)Z
    move-result v0
    if-eqz v0, :L0
    const/4 p1, 1
    return p1
  :L0
  .line 4
    invoke-super { p0, p1 }, Landroidx/core/app/f;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    move-result p1
    return p1
.end method

.method public findViewById(I)Landroid/view/View;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "<T:",
      "Landroid/view/View;",
      ">(I)TT;"
    }
  .end annotation
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/app/d;->getDelegate()Landroidx/appcompat/app/f;
    move-result-object v0
    invoke-virtual { v0, p1 }, Landroidx/appcompat/app/f;->k(I)Landroid/view/View;
    move-result-object p1
    return-object p1
.end method

.method public getDelegate()Landroidx/appcompat/app/f;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/app/d;->mDelegate:Landroidx/appcompat/app/f;
    if-nez v0, :L0
  .line 2
    invoke-static { p0, p0 }, Landroidx/appcompat/app/f;->i(Landroid/app/Activity;Landroidx/appcompat/app/e;)Landroidx/appcompat/app/f;
    move-result-object v0
    iput-object v0, p0, Landroidx/appcompat/app/d;->mDelegate:Landroidx/appcompat/app/f;
  :L0
  .line 3
    iget-object v0, p0, Landroidx/appcompat/app/d;->mDelegate:Landroidx/appcompat/app/f;
    return-object v0
.end method

.method public getDrawerToggleDelegate()Landroidx/appcompat/app/b;
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/app/d;->getDelegate()Landroidx/appcompat/app/f;
    move-result-object v0
    invoke-virtual { v0 }, Landroidx/appcompat/app/f;->m()Landroidx/appcompat/app/b;
    move-result-object v0
    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/app/d;->getDelegate()Landroidx/appcompat/app/f;
    move-result-object v0
    invoke-virtual { v0 }, Landroidx/appcompat/app/f;->o()Landroid/view/MenuInflater;
    move-result-object v0
    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/app/d;->mResources:Landroid/content/res/Resources;
    if-nez v0, :L0
    invoke-static { }, Landroidx/appcompat/widget/z0;->c()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    new-instance v0, Landroidx/appcompat/widget/z0;
    invoke-super { p0 }, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
    move-result-object v1
    invoke-direct { v0, p0, v1 }, Landroidx/appcompat/widget/z0;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    iput-object v0, p0, Landroidx/appcompat/app/d;->mResources:Landroid/content/res/Resources;
  :L0
  .line 3
    iget-object v0, p0, Landroidx/appcompat/app/d;->mResources:Landroid/content/res/Resources;
    if-nez v0, :L1
    invoke-super { p0 }, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
    move-result-object v0
  :L1
    return-object v0
.end method

.method public getSupportActionBar()Landroidx/appcompat/app/a;
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/app/d;->getDelegate()Landroidx/appcompat/app/f;
    move-result-object v0
    invoke-virtual { v0 }, Landroidx/appcompat/app/f;->p()Landroidx/appcompat/app/a;
    move-result-object v0
    return-object v0
.end method

.method public getSupportParentActivityIntent()Landroid/content/Intent;
  .registers 2
  .line 1
    invoke-static { p0 }, Landroidx/core/app/g;->a(Landroid/app/Activity;)Landroid/content/Intent;
    move-result-object v0
    return-object v0
.end method

.method public invalidateOptionsMenu()V
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/app/d;->getDelegate()Landroidx/appcompat/app/f;
    move-result-object v0
    invoke-virtual { v0 }, Landroidx/appcompat/app/f;->r()V
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
  .registers 4
  .line 1
    invoke-super { p0, p1 }, Landroidx/fragment/app/e;->onConfigurationChanged(Landroid/content/res/Configuration;)V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/app/d;->mResources:Landroid/content/res/Resources;
    if-eqz v0, :L0
  .line 3
    invoke-super { p0 }, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
    move-result-object v0
  .line 4
    iget-object v1, p0, Landroidx/appcompat/app/d;->mResources:Landroid/content/res/Resources;
    invoke-virtual { v1, p1, v0 }, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
  :L0
  .line 5
    invoke-virtual { p0 }, Landroidx/appcompat/app/d;->getDelegate()Landroidx/appcompat/app/f;
    move-result-object v0
    invoke-virtual { v0, p1 }, Landroidx/appcompat/app/f;->s(Landroid/content/res/Configuration;)V
    return-void
.end method

.method public onContentChanged()V
  .registers 1
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/app/d;->onSupportContentChanged()V
    return-void
.end method

.method public onCreateSupportNavigateUpTaskStack(Landroidx/core/app/i;)V
  .registers 2
  .line 1
    invoke-virtual { p1, p0 }, Landroidx/core/app/i;->b(Landroid/app/Activity;)Landroidx/core/app/i;
    return-void
.end method

.method protected onDestroy()V
  .registers 2
  .line 1
    invoke-super { p0 }, Landroidx/fragment/app/e;->onDestroy()V
  .line 2
    invoke-virtual { p0 }, Landroidx/appcompat/app/d;->getDelegate()Landroidx/appcompat/app/f;
    move-result-object v0
    invoke-virtual { v0 }, Landroidx/appcompat/app/f;->u()V
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
  .registers 4
  .line 1
    invoke-direct { p0, p2 }, Landroidx/appcompat/app/d;->performMenuItemShortcut(Landroid/view/KeyEvent;)Z
    move-result v0
    if-eqz v0, :L0
    const/4 p1, 1
    return p1
  :L0
  .line 2
    invoke-super { p0, p1, p2 }, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z
    move-result p1
    return p1
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
  .registers 4
  .line 1
    invoke-super { p0, p1, p2 }, Landroidx/fragment/app/e;->onMenuItemSelected(ILandroid/view/MenuItem;)Z
    move-result p1
    if-eqz p1, :L0
    const/4 p1, 1
    return p1
  :L0
  .line 2
    invoke-virtual { p0 }, Landroidx/appcompat/app/d;->getSupportActionBar()Landroidx/appcompat/app/a;
    move-result-object p1
  .line 3
    invoke-interface { p2 }, Landroid/view/MenuItem;->getItemId()I
    move-result p2
    const v0, 16908332
    if-ne p2, v0, :L1
    if-eqz p1, :L1
  .line 4
    invoke-virtual { p1 }, Landroidx/appcompat/app/a;->j()I
    move-result p1
    and-int/lit8 p1, p1, 4
    if-eqz p1, :L1
  .line 5
    invoke-virtual { p0 }, Landroidx/appcompat/app/d;->onSupportNavigateUp()Z
    move-result p1
    return p1
  :L1
    const/4 p1, 0
    return p1
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
  .registers 3
  .line 1
    invoke-super { p0, p1, p2 }, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z
    move-result p1
    return p1
.end method

.method protected onNightModeChanged(I)V
  .registers 2
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
  .registers 3
  .line 1
    invoke-super { p0, p1, p2 }, Landroidx/fragment/app/e;->onPanelClosed(ILandroid/view/Menu;)V
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
  .registers 3
  .line 1
    invoke-super { p0, p1 }, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V
  .line 2
    invoke-virtual { p0 }, Landroidx/appcompat/app/d;->getDelegate()Landroidx/appcompat/app/f;
    move-result-object v0
    invoke-virtual { v0, p1 }, Landroidx/appcompat/app/f;->v(Landroid/os/Bundle;)V
    return-void
.end method

.method protected onPostResume()V
  .registers 2
  .line 1
    invoke-super { p0 }, Landroidx/fragment/app/e;->onPostResume()V
  .line 2
    invoke-virtual { p0 }, Landroidx/appcompat/app/d;->getDelegate()Landroidx/appcompat/app/f;
    move-result-object v0
    invoke-virtual { v0 }, Landroidx/appcompat/app/f;->w()V
    return-void
.end method

.method public onPrepareSupportNavigateUpTaskStack(Landroidx/core/app/i;)V
  .registers 2
    return-void
.end method

.method protected onStart()V
  .registers 2
  .line 1
    invoke-super { p0 }, Landroidx/fragment/app/e;->onStart()V
  .line 2
    invoke-virtual { p0 }, Landroidx/appcompat/app/d;->getDelegate()Landroidx/appcompat/app/f;
    move-result-object v0
    invoke-virtual { v0 }, Landroidx/appcompat/app/f;->y()V
    return-void
.end method

.method protected onStop()V
  .registers 2
  .line 1
    invoke-super { p0 }, Landroidx/fragment/app/e;->onStop()V
  .line 2
    invoke-virtual { p0 }, Landroidx/appcompat/app/d;->getDelegate()Landroidx/appcompat/app/f;
    move-result-object v0
    invoke-virtual { v0 }, Landroidx/appcompat/app/f;->z()V
    return-void
.end method

.method public onSupportActionModeFinished(Lc/a/o/b;)V
  .registers 2
    return-void
.end method

.method public onSupportActionModeStarted(Lc/a/o/b;)V
  .registers 2
    return-void
.end method

.method public onSupportContentChanged()V
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 1
    return-void
.end method

.method public onSupportNavigateUp()Z
  .catch Ljava/lang/IllegalStateException; { :L0 .. :L1 } :L2
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/app/d;->getSupportParentActivityIntent()Landroid/content/Intent;
    move-result-object v0
    if-eqz v0, :L5
  .line 2
    invoke-virtual { p0, v0 }, Landroidx/appcompat/app/d;->supportShouldUpRecreateTask(Landroid/content/Intent;)Z
    move-result v1
    if-eqz v1, :L3
  .line 3
    invoke-static { p0 }, Landroidx/core/app/i;->d(Landroid/content/Context;)Landroidx/core/app/i;
    move-result-object v0
  .line 4
    invoke-virtual { p0, v0 }, Landroidx/appcompat/app/d;->onCreateSupportNavigateUpTaskStack(Landroidx/core/app/i;)V
  .line 5
    invoke-virtual { p0, v0 }, Landroidx/appcompat/app/d;->onPrepareSupportNavigateUpTaskStack(Landroidx/core/app/i;)V
  .line 6
    invoke-virtual { v0 }, Landroidx/core/app/i;->e()V
  :L0
  .line 7
    invoke-static { p0 }, Landroidx/core/app/a;->i(Landroid/app/Activity;)V
  :L1
    goto :L4
  :L2
  .line 8
    invoke-virtual { p0 }, Landroid/app/Activity;->finish()V
    goto :L4
  :L3
  .line 9
    invoke-virtual { p0, v0 }, Landroidx/appcompat/app/d;->supportNavigateUpTo(Landroid/content/Intent;)V
  :L4
    const/4 v0, 1
    return v0
  :L5
    const/4 v0, 0
    return v0
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
  .registers 3
  .line 1
    invoke-super { p0, p1, p2 }, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V
  .line 2
    invoke-virtual { p0 }, Landroidx/appcompat/app/d;->getDelegate()Landroidx/appcompat/app/f;
    move-result-object p2
    invoke-virtual { p2, p1 }, Landroidx/appcompat/app/f;->K(Ljava/lang/CharSequence;)V
    return-void
.end method

.method public onWindowStartingSupportActionMode(Lc/a/o/b$a;)Lc/a/o/b;
  .registers 2
    const/4 p1, 0
    return-object p1
.end method

.method public openOptionsMenu()V
  .registers 4
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/app/d;->getSupportActionBar()Landroidx/appcompat/app/a;
    move-result-object v0
  .line 2
    invoke-virtual { p0 }, Landroid/app/Activity;->getWindow()Landroid/view/Window;
    move-result-object v1
    const/4 v2, 0
    invoke-virtual { v1, v2 }, Landroid/view/Window;->hasFeature(I)Z
    move-result v1
    if-eqz v1, :L1
    if-eqz v0, :L0
  .line 3
    invoke-virtual { v0 }, Landroidx/appcompat/app/a;->r()Z
    move-result v0
    if-nez v0, :L1
  :L0
  .line 4
    invoke-super { p0 }, Landroid/app/Activity;->openOptionsMenu()V
  :L1
    return-void
.end method

.method public setContentView(I)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Landroidx/appcompat/app/d;->initViewTreeOwners()V
  .line 2
    invoke-virtual { p0 }, Landroidx/appcompat/app/d;->getDelegate()Landroidx/appcompat/app/f;
    move-result-object v0
    invoke-virtual { v0, p1 }, Landroidx/appcompat/app/f;->E(I)V
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
  .registers 3
  .line 3
    invoke-direct { p0 }, Landroidx/appcompat/app/d;->initViewTreeOwners()V
  .line 4
    invoke-virtual { p0 }, Landroidx/appcompat/app/d;->getDelegate()Landroidx/appcompat/app/f;
    move-result-object v0
    invoke-virtual { v0, p1 }, Landroidx/appcompat/app/f;->F(Landroid/view/View;)V
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  .registers 4
  .line 5
    invoke-direct { p0 }, Landroidx/appcompat/app/d;->initViewTreeOwners()V
  .line 6
    invoke-virtual { p0 }, Landroidx/appcompat/app/d;->getDelegate()Landroidx/appcompat/app/f;
    move-result-object v0
    invoke-virtual { v0, p1, p2 }, Landroidx/appcompat/app/f;->G(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    return-void
.end method

.method public setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/app/d;->getDelegate()Landroidx/appcompat/app/f;
    move-result-object v0
    invoke-virtual { v0, p1 }, Landroidx/appcompat/app/f;->I(Landroidx/appcompat/widget/Toolbar;)V
    return-void
.end method

.method public setSupportProgress(I)V
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 2
    return-void
.end method

.method public setSupportProgressBarIndeterminate(Z)V
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 2
    return-void
.end method

.method public setSupportProgressBarIndeterminateVisibility(Z)V
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 2
    return-void
.end method

.method public setSupportProgressBarVisibility(Z)V
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 2
    return-void
.end method

.method public setTheme(I)V
  .registers 3
  .line 1
    invoke-super { p0, p1 }, Landroid/app/Activity;->setTheme(I)V
  .line 2
    invoke-virtual { p0 }, Landroidx/appcompat/app/d;->getDelegate()Landroidx/appcompat/app/f;
    move-result-object v0
    invoke-virtual { v0, p1 }, Landroidx/appcompat/app/f;->J(I)V
    return-void
.end method

.method public startSupportActionMode(Lc/a/o/b$a;)Lc/a/o/b;
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/app/d;->getDelegate()Landroidx/appcompat/app/f;
    move-result-object v0
    invoke-virtual { v0, p1 }, Landroidx/appcompat/app/f;->L(Lc/a/o/b$a;)Lc/a/o/b;
    move-result-object p1
    return-object p1
.end method

.method public supportInvalidateOptionsMenu()V
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/app/d;->getDelegate()Landroidx/appcompat/app/f;
    move-result-object v0
    invoke-virtual { v0 }, Landroidx/appcompat/app/f;->r()V
    return-void
.end method

.method public supportNavigateUpTo(Landroid/content/Intent;)V
  .registers 2
  .line 1
    invoke-static { p0, p1 }, Landroidx/core/app/g;->e(Landroid/app/Activity;Landroid/content/Intent;)V
    return-void
.end method

.method public supportRequestWindowFeature(I)Z
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/app/d;->getDelegate()Landroidx/appcompat/app/f;
    move-result-object v0
    invoke-virtual { v0, p1 }, Landroidx/appcompat/app/f;->C(I)Z
    move-result p1
    return p1
.end method

.method public supportShouldUpRecreateTask(Landroid/content/Intent;)Z
  .registers 2
  .line 1
    invoke-static { p0, p1 }, Landroidx/core/app/g;->f(Landroid/app/Activity;Landroid/content/Intent;)Z
    move-result p1
    return p1
.end method
