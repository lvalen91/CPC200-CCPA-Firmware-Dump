.class public Landroidx/activity/ComponentActivity;
.super Landroidx/core/app/f;
.implements Landroidx/lifecycle/j;
.implements Landroidx/lifecycle/y;
.implements Landroidx/savedstate/c;
.implements Landroidx/activity/c;
.implements Landroidx/activity/result/d;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/activity/ComponentActivity$c;
  }
.end annotation

.field private final mActivityResultRegistry:Landroidx/activity/result/ActivityResultRegistry;

.field private mContentLayoutId:I

.field final mContextAwareHelper:Landroidx/activity/d/a;

.field private mDefaultFactory:Landroidx/lifecycle/w$b;

.field private final mLifecycleRegistry:Landroidx/lifecycle/k;

.field private final mNextLocalRequestCode:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

.field final mSavedStateRegistryController:Landroidx/savedstate/b;

.field private mViewModelStore:Landroidx/lifecycle/x;

.method public constructor <init>()V
  .registers 4
  .line 1
    invoke-direct { p0 }, Landroidx/core/app/f;-><init>()V
  .line 2
    new-instance v0, Landroidx/activity/d/a;
    invoke-direct { v0 }, Landroidx/activity/d/a;-><init>()V
    iput-object v0, p0, Landroidx/activity/ComponentActivity;->mContextAwareHelper:Landroidx/activity/d/a;
  .line 3
    new-instance v0, Landroidx/lifecycle/k;
    invoke-direct { v0, p0 }, Landroidx/lifecycle/k;-><init>(Landroidx/lifecycle/j;)V
    iput-object v0, p0, Landroidx/activity/ComponentActivity;->mLifecycleRegistry:Landroidx/lifecycle/k;
  .line 4
    invoke-static { p0 }, Landroidx/savedstate/b;->a(Landroidx/savedstate/c;)Landroidx/savedstate/b;
    move-result-object v0
    iput-object v0, p0, Landroidx/activity/ComponentActivity;->mSavedStateRegistryController:Landroidx/savedstate/b;
  .line 5
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher;
    new-instance v1, Landroidx/activity/ComponentActivity$a;
    invoke-direct { v1, p0 }, Landroidx/activity/ComponentActivity$a;-><init>(Landroidx/activity/ComponentActivity;)V
    invoke-direct { v0, v1 }, Landroidx/activity/OnBackPressedDispatcher;-><init>(Ljava/lang/Runnable;)V
    iput-object v0, p0, Landroidx/activity/ComponentActivity;->mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;
  .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-direct { v0 }, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V
    iput-object v0, p0, Landroidx/activity/ComponentActivity;->mNextLocalRequestCode:Ljava/util/concurrent/atomic/AtomicInteger;
  .line 7
    new-instance v0, Landroidx/activity/ComponentActivity$b;
    invoke-direct { v0, p0 }, Landroidx/activity/ComponentActivity$b;-><init>(Landroidx/activity/ComponentActivity;)V
    iput-object v0, p0, Landroidx/activity/ComponentActivity;->mActivityResultRegistry:Landroidx/activity/result/ActivityResultRegistry;
  .line 8
    invoke-virtual { p0 }, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/f;
    move-result-object v0
    if-eqz v0, :L2
  .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 19
    if-lt v0, v1, :L0
  .line 10
    invoke-virtual { p0 }, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/f;
    move-result-object v0
    new-instance v2, Landroidx/activity/ComponentActivity$3;
    invoke-direct { v2, p0 }, Landroidx/activity/ComponentActivity$3;-><init>(Landroidx/activity/ComponentActivity;)V
    invoke-virtual { v0, v2 }, Landroidx/lifecycle/f;->a(Landroidx/lifecycle/i;)V
  :L0
  .line 11
    invoke-virtual { p0 }, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/f;
    move-result-object v0
    new-instance v2, Landroidx/activity/ComponentActivity$4;
    invoke-direct { v2, p0 }, Landroidx/activity/ComponentActivity$4;-><init>(Landroidx/activity/ComponentActivity;)V
    invoke-virtual { v0, v2 }, Landroidx/lifecycle/f;->a(Landroidx/lifecycle/i;)V
  .line 12
    invoke-virtual { p0 }, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/f;
    move-result-object v0
    new-instance v2, Landroidx/activity/ComponentActivity$5;
    invoke-direct { v2, p0 }, Landroidx/activity/ComponentActivity$5;-><init>(Landroidx/activity/ComponentActivity;)V
    invoke-virtual { v0, v2 }, Landroidx/lifecycle/f;->a(Landroidx/lifecycle/i;)V
  .line 13
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    if-gt v1, v0, :L1
    const/16 v1, 23
    if-gt v0, v1, :L1
  .line 14
    invoke-virtual { p0 }, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/f;
    move-result-object v0
    new-instance v1, Landroidx/activity/ImmLeaksCleaner;
    invoke-direct { v1, p0 }, Landroidx/activity/ImmLeaksCleaner;-><init>(Landroid/app/Activity;)V
    invoke-virtual { v0, v1 }, Landroidx/lifecycle/f;->a(Landroidx/lifecycle/i;)V
  :L1
    return-void
  :L2
  .line 15
    new-instance v0, Ljava/lang/IllegalStateException;
    const-string v1, "getLifecycle() returned null in ComponentActivity's constructor. Please make sure you are lazily constructing your Lifecycle in the first call to getLifecycle() rather than relying on field initialization."
    invoke-direct { v0, v1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public constructor <init>(I)V
  .registers 2
  .line 16
    invoke-direct { p0 }, Landroidx/activity/ComponentActivity;-><init>()V
  .line 17
    iput p1, p0, Landroidx/activity/ComponentActivity;->mContentLayoutId:I
    return-void
.end method

.method static synthetic access$001(Landroidx/activity/ComponentActivity;)V
  .registers 1
  .line 1
    invoke-super { p0 }, Landroid/app/Activity;->onBackPressed()V
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

.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  .parameter # Landroid/view/View;
    .annotation build Landroid/annotation/SuppressLint;
      value = {
        "UnknownNullness",
        "MissingNullability"
      }
    .end annotation
  .end parameter
  .parameter # Landroid/view/ViewGroup$LayoutParams;
    .annotation build Landroid/annotation/SuppressLint;
      value = {
        "UnknownNullness",
        "MissingNullability"
      }
    .end annotation
  .end parameter
  .registers 3
  .line 1
    invoke-direct { p0 }, Landroidx/activity/ComponentActivity;->initViewTreeOwners()V
  .line 2
    invoke-super { p0, p1, p2 }, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    return-void
.end method

.method public final addOnContextAvailableListener(Landroidx/activity/d/b;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mContextAwareHelper:Landroidx/activity/d/a;
    invoke-virtual { v0, p1 }, Landroidx/activity/d/a;->a(Landroidx/activity/d/b;)V
    return-void
.end method

.method ensureViewModelStore()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mViewModelStore:Landroidx/lifecycle/x;
    if-nez v0, :L1
  .line 2
    invoke-virtual { p0 }, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroidx/activity/ComponentActivity$c;
    if-eqz v0, :L0
  .line 3
    iget-object v0, v0, Landroidx/activity/ComponentActivity$c;->b:Landroidx/lifecycle/x;
    iput-object v0, p0, Landroidx/activity/ComponentActivity;->mViewModelStore:Landroidx/lifecycle/x;
  :L0
  .line 4
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mViewModelStore:Landroidx/lifecycle/x;
    if-nez v0, :L1
  .line 5
    new-instance v0, Landroidx/lifecycle/x;
    invoke-direct { v0 }, Landroidx/lifecycle/x;-><init>()V
    iput-object v0, p0, Landroidx/activity/ComponentActivity;->mViewModelStore:Landroidx/lifecycle/x;
  :L1
    return-void
.end method

.method public final getActivityResultRegistry()Landroidx/activity/result/ActivityResultRegistry;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mActivityResultRegistry:Landroidx/activity/result/ActivityResultRegistry;
    return-object v0
.end method

.method public getDefaultViewModelProviderFactory()Landroidx/lifecycle/w$b;
  .registers 4
  .line 1
    invoke-virtual { p0 }, Landroid/app/Activity;->getApplication()Landroid/app/Application;
    move-result-object v0
    if-eqz v0, :L3
  .line 2
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mDefaultFactory:Landroidx/lifecycle/w$b;
    if-nez v0, :L2
  .line 3
    new-instance v0, Landroidx/lifecycle/u;
  .line 4
    invoke-virtual { p0 }, Landroid/app/Activity;->getApplication()Landroid/app/Application;
    move-result-object v1
  .line 5
    invoke-virtual { p0 }, Landroid/app/Activity;->getIntent()Landroid/content/Intent;
    move-result-object v2
    if-eqz v2, :L0
    invoke-virtual { p0 }, Landroid/app/Activity;->getIntent()Landroid/content/Intent;
    move-result-object v2
    invoke-virtual { v2 }, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
    move-result-object v2
    goto :L1
  :L0
    const/4 v2, 0
  :L1
    invoke-direct { v0, v1, p0, v2 }, Landroidx/lifecycle/u;-><init>(Landroid/app/Application;Landroidx/savedstate/c;Landroid/os/Bundle;)V
    iput-object v0, p0, Landroidx/activity/ComponentActivity;->mDefaultFactory:Landroidx/lifecycle/w$b;
  :L2
  .line 6
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mDefaultFactory:Landroidx/lifecycle/w$b;
    return-object v0
  :L3
  .line 7
    new-instance v0, Ljava/lang/IllegalStateException;
    const-string v1, "Your activity is not yet attached to the Application instance. You can't request ViewModel before onCreate call."
    invoke-direct { v0, v1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public getLastCustomNonConfigurationInstance()Ljava/lang/Object;
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroidx/activity/ComponentActivity$c;
    if-eqz v0, :L0
  .line 2
    iget-object v0, v0, Landroidx/activity/ComponentActivity$c;->a:Ljava/lang/Object;
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return-object v0
.end method

.method public getLifecycle()Landroidx/lifecycle/f;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mLifecycleRegistry:Landroidx/lifecycle/k;
    return-object v0
.end method

.method public final getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;
    return-object v0
.end method

.method public final getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mSavedStateRegistryController:Landroidx/savedstate/b;
    invoke-virtual { v0 }, Landroidx/savedstate/b;->b()Landroidx/savedstate/SavedStateRegistry;
    move-result-object v0
    return-object v0
.end method

.method public getViewModelStore()Landroidx/lifecycle/x;
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroid/app/Activity;->getApplication()Landroid/app/Application;
    move-result-object v0
    if-eqz v0, :L0
  .line 2
    invoke-virtual { p0 }, Landroidx/activity/ComponentActivity;->ensureViewModelStore()V
  .line 3
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mViewModelStore:Landroidx/lifecycle/x;
    return-object v0
  :L0
  .line 4
    new-instance v0, Ljava/lang/IllegalStateException;
    const-string v1, "Your activity is not yet attached to the Application instance. You can't request ViewModel before onCreate call."
    invoke-direct { v0, v1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mActivityResultRegistry:Landroidx/activity/result/ActivityResultRegistry;
    invoke-virtual { v0, p1, p2, p3 }, Landroidx/activity/result/ActivityResultRegistry;->b(IILandroid/content/Intent;)Z
    move-result v0
    if-nez v0, :L0
  .line 2
    invoke-super { p0, p1, p2, p3 }, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V
  :L0
    return-void
.end method

.method public onBackPressed()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;
    invoke-virtual { v0 }, Landroidx/activity/OnBackPressedDispatcher;->c()V
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mSavedStateRegistryController:Landroidx/savedstate/b;
    invoke-virtual { v0, p1 }, Landroidx/savedstate/b;->c(Landroid/os/Bundle;)V
  .line 2
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mContextAwareHelper:Landroidx/activity/d/a;
    invoke-virtual { v0, p0 }, Landroidx/activity/d/a;->c(Landroid/content/Context;)V
  .line 3
    invoke-super { p0, p1 }, Landroidx/core/app/f;->onCreate(Landroid/os/Bundle;)V
  .line 4
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mActivityResultRegistry:Landroidx/activity/result/ActivityResultRegistry;
    invoke-virtual { v0, p1 }, Landroidx/activity/result/ActivityResultRegistry;->g(Landroid/os/Bundle;)V
  .line 5
    invoke-static { p0 }, Landroidx/lifecycle/s;->g(Landroid/app/Activity;)V
  .line 6
    iget p1, p0, Landroidx/activity/ComponentActivity;->mContentLayoutId:I
    if-eqz p1, :L0
  .line 7
    invoke-virtual { p0, p1 }, Landroidx/activity/ComponentActivity;->setContentView(I)V
  :L0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 7
  .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mActivityResultRegistry:Landroidx/activity/result/ActivityResultRegistry;
    new-instance v1, Landroid/content/Intent;
    invoke-direct { v1 }, Landroid/content/Intent;-><init>()V
    const-string v2, "androidx.activity.result.contract.extra.PERMISSIONS"
  .line 2
    invoke-virtual { v1, v2, p2 }, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;
    move-result-object v1
    const-string v2, "androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS"
  .line 3
    invoke-virtual { v1, v2, p3 }, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;
    move-result-object v1
    const/4 v2, -1
  .line 4
    invoke-virtual { v0, p1, v2, v1 }, Landroidx/activity/result/ActivityResultRegistry;->b(IILandroid/content/Intent;)Z
    move-result v0
    if-nez v0, :L0
  .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 23
    if-lt v0, v1, :L0
  .line 6
    invoke-super { p0, p1, p2, p3 }, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
  :L0
    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 2
    const/4 v0, 0
    return-object v0
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
  .registers 4
  .line 1
    invoke-virtual { p0 }, Landroidx/activity/ComponentActivity;->onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    move-result-object v0
  .line 2
    iget-object v1, p0, Landroidx/activity/ComponentActivity;->mViewModelStore:Landroidx/lifecycle/x;
    if-nez v1, :L0
  .line 3
    invoke-virtual { p0 }, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroidx/activity/ComponentActivity$c;
    if-eqz v2, :L0
  .line 4
    iget-object v1, v2, Landroidx/activity/ComponentActivity$c;->b:Landroidx/lifecycle/x;
  :L0
    if-nez v1, :L1
    if-nez v0, :L1
    const/4 v0, 0
    return-object v0
  :L1
  .line 5
    new-instance v2, Landroidx/activity/ComponentActivity$c;
    invoke-direct { v2 }, Landroidx/activity/ComponentActivity$c;-><init>()V
  .line 6
    iput-object v0, v2, Landroidx/activity/ComponentActivity$c;->a:Ljava/lang/Object;
  .line 7
    iput-object v1, v2, Landroidx/activity/ComponentActivity$c;->b:Landroidx/lifecycle/x;
    return-object v2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
  .registers 4
  .line 1
    invoke-virtual { p0 }, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/f;
    move-result-object v0
  .line 2
    instance-of v1, v0, Landroidx/lifecycle/k;
    if-eqz v1, :L0
  .line 3
    check-cast v0, Landroidx/lifecycle/k;
    sget-object v1, Landroidx/lifecycle/f$c;->d:Landroidx/lifecycle/f$c;
    invoke-virtual { v0, v1 }, Landroidx/lifecycle/k;->o(Landroidx/lifecycle/f$c;)V
  :L0
  .line 4
    invoke-super { p0, p1 }, Landroidx/core/app/f;->onSaveInstanceState(Landroid/os/Bundle;)V
  .line 5
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mSavedStateRegistryController:Landroidx/savedstate/b;
    invoke-virtual { v0, p1 }, Landroidx/savedstate/b;->d(Landroid/os/Bundle;)V
  .line 6
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mActivityResultRegistry:Landroidx/activity/result/ActivityResultRegistry;
    invoke-virtual { v0, p1 }, Landroidx/activity/result/ActivityResultRegistry;->h(Landroid/os/Bundle;)V
    return-void
.end method

.method public peekAvailableContext()Landroid/content/Context;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mContextAwareHelper:Landroidx/activity/d/a;
    invoke-virtual { v0 }, Landroidx/activity/d/a;->d()Landroid/content/Context;
    move-result-object v0
    return-object v0
.end method

.method public final registerForActivityResult(Landroidx/activity/result/f/a;Landroidx/activity/result/ActivityResultRegistry;Landroidx/activity/result/b;)Landroidx/activity/result/c;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "<I:",
      "Ljava/lang/Object;",
      "O:",
      "Ljava/lang/Object;",
      ">(",
      "Landroidx/activity/result/f/a<",
      "TI;TO;>;",
      "Landroidx/activity/result/ActivityResultRegistry;",
      "Landroidx/activity/result/b<",
      "TO;>;)",
      "Landroidx/activity/result/c<",
      "TI;>;"
    }
  .end annotation
  .registers 6
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "activity_rq#"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroidx/activity/ComponentActivity;->mNextLocalRequestCode:Ljava/util/concurrent/atomic/AtomicInteger;
  .line 2
    invoke-virtual { v1 }, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I
    move-result v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
  .line 3
    invoke-virtual { p2, v0, p0, p1, p3 }, Landroidx/activity/result/ActivityResultRegistry;->j(Ljava/lang/String;Landroidx/lifecycle/j;Landroidx/activity/result/f/a;Landroidx/activity/result/b;)Landroidx/activity/result/c;
    move-result-object p1
    return-object p1
.end method

.method public final registerForActivityResult(Landroidx/activity/result/f/a;Landroidx/activity/result/b;)Landroidx/activity/result/c;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "<I:",
      "Ljava/lang/Object;",
      "O:",
      "Ljava/lang/Object;",
      ">(",
      "Landroidx/activity/result/f/a<",
      "TI;TO;>;",
      "Landroidx/activity/result/b<",
      "TO;>;)",
      "Landroidx/activity/result/c<",
      "TI;>;"
    }
  .end annotation
  .registers 4
  .line 4
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mActivityResultRegistry:Landroidx/activity/result/ActivityResultRegistry;
    invoke-virtual { p0, p1, v0, p2 }, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/f/a;Landroidx/activity/result/ActivityResultRegistry;Landroidx/activity/result/b;)Landroidx/activity/result/c;
    move-result-object p1
    return-object p1
.end method

.method public final removeOnContextAvailableListener(Landroidx/activity/d/b;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mContextAwareHelper:Landroidx/activity/d/a;
    invoke-virtual { v0, p1 }, Landroidx/activity/d/a;->e(Landroidx/activity/d/b;)V
    return-void
.end method

.method public reportFullyDrawn()V
  .catchall { :L0 .. :L3 } :L4
  .registers 3
  :L0
  .line 1
    invoke-static { }, Lc/o/a;->d()Z
    move-result v0
    if-eqz v0, :L1
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "reportFullyDrawn() for "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lc/o/a;->a(Ljava/lang/String;)V
  :L1
  .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 19
    if-le v0, v1, :L2
  .line 4
    invoke-super { p0 }, Landroid/app/Activity;->reportFullyDrawn()V
    goto :L3
  :L2
  .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    if-ne v0, v1, :L3
    const-string v0, "android.permission.UPDATE_DEVICE_STATS"
    invoke-static { p0, v0 }, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I
    move-result v0
    if-nez v0, :L3
  .line 6
    invoke-super { p0 }, Landroid/app/Activity;->reportFullyDrawn()V
  :L3
  .line 7
    invoke-static { }, Lc/o/a;->b()V
    return-void
  :L4
    move-exception v0
    invoke-static { }, Lc/o/a;->b()V
  .line 8
    throw v0
.end method

.method public setContentView(I)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Landroidx/activity/ComponentActivity;->initViewTreeOwners()V
  .line 2
    invoke-super { p0, p1 }, Landroid/app/Activity;->setContentView(I)V
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
  .parameter # Landroid/view/View;
    .annotation build Landroid/annotation/SuppressLint;
      value = {
        "UnknownNullness",
        "MissingNullability"
      }
    .end annotation
  .end parameter
  .registers 2
  .line 3
    invoke-direct { p0 }, Landroidx/activity/ComponentActivity;->initViewTreeOwners()V
  .line 4
    invoke-super { p0, p1 }, Landroid/app/Activity;->setContentView(Landroid/view/View;)V
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  .parameter # Landroid/view/View;
    .annotation build Landroid/annotation/SuppressLint;
      value = {
        "UnknownNullness",
        "MissingNullability"
      }
    .end annotation
  .end parameter
  .parameter # Landroid/view/ViewGroup$LayoutParams;
    .annotation build Landroid/annotation/SuppressLint;
      value = {
        "UnknownNullness",
        "MissingNullability"
      }
    .end annotation
  .end parameter
  .registers 3
  .line 5
    invoke-direct { p0 }, Landroidx/activity/ComponentActivity;->initViewTreeOwners()V
  .line 6
    invoke-super { p0, p1, p2 }, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .parameter # Landroid/content/Intent;
    .annotation build Landroid/annotation/SuppressLint;
      value = {
        "UnknownNullness"
      }
    .end annotation
  .end parameter
  .registers 3
  .line 1
    invoke-super { p0, p1, p2 }, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .parameter # Landroid/content/Intent;
    .annotation build Landroid/annotation/SuppressLint;
      value = {
        "UnknownNullness"
      }
    .end annotation
  .end parameter
  .registers 4
  .line 2
    invoke-super { p0, p1, p2, p3 }, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .parameter # Landroid/content/IntentSender;
    .annotation build Landroid/annotation/SuppressLint;
      value = {
        "UnknownNullness"
      }
    .end annotation
  .end parameter
  .registers 7
  .line 1
    invoke-super/range { p0 .. p6 }, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .parameter # Landroid/content/IntentSender;
    .annotation build Landroid/annotation/SuppressLint;
      value = {
        "UnknownNullness"
      }
    .end annotation
  .end parameter
  .registers 8
  .line 2
    invoke-super/range { p0 .. p7 }, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    return-void
.end method
