.class public final Landroidx/core/app/g;
.super Ljava/lang/Object;
.source "SourceFile"

.method public static a(Landroid/app/Activity;)Landroid/content/Intent;
  .catch Landroid/content/pm/PackageManager$NameNotFoundException; { :L2 .. :L4 } :L5
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 16
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/app/Activity;->getParentActivityIntent()Landroid/content/Intent;
    move-result-object v0
    if-eqz v0, :L0
    return-object v0
  :L0
  .line 3
    invoke-static { p0 }, Landroidx/core/app/g;->c(Landroid/app/Activity;)Ljava/lang/String;
    move-result-object v0
    const/4 v1, 0
    if-nez v0, :L1
    return-object v1
  :L1
  .line 4
    new-instance v2, Landroid/content/ComponentName;
    invoke-direct { v2, p0, v0 }, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V
  :L2
  .line 5
    invoke-static { p0, v2 }, Landroidx/core/app/g;->d(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;
    move-result-object p0
    if-nez p0, :L3
  .line 6
    invoke-static { v2 }, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;
    move-result-object p0
    goto :L4
  :L3
  .line 7
    new-instance p0, Landroid/content/Intent;
    invoke-direct { p0 }, Landroid/content/Intent;-><init>()V
    invoke-virtual { p0, v2 }, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    move-result-object p0
  :L4
    return-object p0
  :L5
  .line 8
    new-instance p0, Ljava/lang/StringBuilder;
    invoke-direct { p0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "getParentActivityIntent: bad parentActivityName '"
    invoke-virtual { p0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, "' in manifest"
    invoke-virtual { p0, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    return-object v1
.end method

.method public static b(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;
  .registers 4
  .line 1
    invoke-static { p0, p1 }, Landroidx/core/app/g;->d(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;
    move-result-object v0
    if-nez v0, :L0
    const/4 p0, 0
    return-object p0
  :L0
  .line 2
    new-instance v1, Landroid/content/ComponentName;
  .line 3
    invoke-virtual { p1 }, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v1, p1, v0 }, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
  .line 4
    invoke-static { p0, v1 }, Landroidx/core/app/g;->d(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;
    move-result-object p0
    if-nez p0, :L1
  .line 5
    invoke-static { v1 }, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;
    move-result-object p0
    goto :L2
  :L1
  .line 6
    new-instance p0, Landroid/content/Intent;
    invoke-direct { p0 }, Landroid/content/Intent;-><init>()V
    invoke-virtual { p0, v1 }, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    move-result-object p0
  :L2
    return-object p0
.end method

.method public static c(Landroid/app/Activity;)Ljava/lang/String;
  .catch Landroid/content/pm/PackageManager$NameNotFoundException; { :L0 .. :L1 } :L2
  .registers 2
  :L0
  .line 1
    invoke-virtual { p0 }, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;
    move-result-object v0
    invoke-static { p0, v0 }, Landroidx/core/app/g;->d(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;
    move-result-object p0
  :L1
    return-object p0
  :L2
    move-exception p0
  .line 2
    new-instance v0, Ljava/lang/IllegalArgumentException;
    invoke-direct { v0, p0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V
    throw v0
.end method

.method public static d(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;
  .registers 7
  .line 1
    invoke-virtual { p0 }, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    move-result-object v0
  .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 24
    const/16 v1, 640
  .line 3
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v4, 29
    if-lt v3, v4, :L0
    const v1, 269222528
    goto :L1
  :L0
    if-lt v3, v2, :L1
    const v1, 787072
  :L1
  .line 4
    invoke-virtual { v0, p1, v1 }, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    move-result-object p1
  .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 16
    if-lt v0, v1, :L2
  .line 6
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;
    if-eqz v0, :L2
    return-object v0
  :L2
  .line 7
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;
    const/4 v0, 0
    if-nez p1, :L3
    return-object v0
  :L3
    const-string v1, "android.support.PARENT_ACTIVITY"
  .line 8
    invoke-virtual { p1, v1 }, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
    if-nez p1, :L4
    return-object v0
  :L4
    const/4 v0, 0
  .line 9
    invoke-virtual { p1, v0 }, Ljava/lang/String;->charAt(I)C
    move-result v0
    const/16 v1, 46
    if-ne v0, v1, :L5
  .line 10
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p0 }, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    move-result-object p0
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
  :L5
    return-object p1
.end method

.method public static e(Landroid/app/Activity;Landroid/content/Intent;)V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 16
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0, p1 }, Landroid/app/Activity;->navigateUpTo(Landroid/content/Intent;)Z
    goto :L1
  :L0
    const/high16 v0, 1024
  .line 3
    invoke-virtual { p1, v0 }, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
  .line 4
    invoke-virtual { p0, p1 }, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
  .line 5
    invoke-virtual { p0 }, Landroid/app/Activity;->finish()V
  :L1
    return-void
.end method

.method public static f(Landroid/app/Activity;Landroid/content/Intent;)Z
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 16
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0, p1 }, Landroid/app/Activity;->shouldUpRecreateTask(Landroid/content/Intent;)Z
    move-result p0
    return p0
  :L0
  .line 3
    invoke-virtual { p0 }, Landroid/app/Activity;->getIntent()Landroid/content/Intent;
    move-result-object p0
    invoke-virtual { p0 }, Landroid/content/Intent;->getAction()Ljava/lang/String;
    move-result-object p0
    if-eqz p0, :L1
    const-string p1, "android.intent.action.MAIN"
  .line 4
    invoke-virtual { p0, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p0
    if-nez p0, :L1
    const/4 p0, 1
    goto :L2
  :L1
    const/4 p0, 0
  :L2
    return p0
.end method
