.class public Landroidx/media/f/a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"

.method public static a(Landroid/content/Context;)Landroid/content/ComponentName;
  .registers 4
  .line 1
    new-instance v0, Landroid/content/Intent;
    const-string v1, "android.intent.action.MEDIA_BUTTON"
    invoke-direct { v0, v1 }, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
  .line 2
    invoke-virtual { p0 }, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
  .line 3
    invoke-virtual { p0 }, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    move-result-object p0
    const/4 v1, 0
  .line 4
    invoke-virtual { p0, v0, v1 }, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;
    move-result-object p0
  .line 5
    invoke-interface { p0 }, Ljava/util/List;->size()I
    move-result v0
    const/4 v2, 1
    if-ne v0, v2, :L0
  .line 6
    invoke-interface { p0, v1 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object p0
    check-cast p0, Landroid/content/pm/ResolveInfo;
  .line 7
    new-instance v0, Landroid/content/ComponentName;
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;
    invoke-direct { v0, v1, p0 }, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    return-object v0
  :L0
  .line 8
    invoke-interface { p0 }, Ljava/util/List;->size()I
    move-result p0
    const/4 p0, 0
    return-object p0
.end method
