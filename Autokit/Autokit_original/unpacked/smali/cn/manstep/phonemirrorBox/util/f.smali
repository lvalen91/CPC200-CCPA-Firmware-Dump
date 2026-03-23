.class public Lcn/manstep/phonemirrorBox/util/f;
.super Ljava/lang/Object;
.source "SourceFile"

.method public constructor <init>()V
  .registers 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
  .registers 2
    const-string v0, "activity"
  .line 1
    invoke-virtual { p0, v0 }, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object p0
    check-cast p0, Landroid/app/ActivityManager;
    const/4 v0, 1
  .line 2
    invoke-virtual { p0, v0 }, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;
    move-result-object p0
    if-eqz p0, :L0
  .line 3
    invoke-interface { p0 }, Ljava/util/List;->size()I
    move-result v0
    if-lez v0, :L0
    const/4 v0, 0
  .line 4
    invoke-interface { p0, v0 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object p0
    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;
    invoke-virtual { p0 }, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;
    move-result-object p0
    return-object p0
  :L0
    const/4 p0, 0
    return-object p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
  .catch Ljava/lang/Exception; { :L1 .. :L2 } :L3
  .registers 8
    const-string v0, "isExistsActivity: "
    const-string v1, "ContextUtil"
  .line 1
    invoke-static { p1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v2
    const/4 v3, 0
    if-nez v2, :L4
    invoke-static { p2 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v2
    if-eqz v2, :L0
    goto :L4
  :L0
  .line 2
    invoke-virtual { p0 }, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    move-result-object p0
  .line 3
    new-instance v2, Landroid/content/ComponentName;
    invoke-direct { v2, p1, p2 }, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    const/16 v4, 128
  :L1
  .line 4
    invoke-virtual { p0, v2, v4 }, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    move-result-object p0
  .line 5
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Landroid/content/pm/ActivityInfo;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-virtual { v2, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static { v1, v2 }, Lcn/manstep/phonemirrorBox/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V
  .line 6
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;
    invoke-virtual { v2, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    invoke-static { v1, p0 }, Lcn/manstep/phonemirrorBox/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V
  :L2
    const/4 p0, 1
    return p0
  :L3
  .line 7
    new-instance p0, Ljava/lang/StringBuilder;
    invoke-direct { p0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p0, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p1, "/"
    invoke-virtual { p0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p1, " ActivityNotFound"
    invoke-virtual { p0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    invoke-static { v1, p0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  :L4
    return v3
.end method

.method public static c(Landroid/content/Context;)Z
  .catch Ljava/lang/Exception; { :L1 .. :L2 } :L14
  .catchall { :L3 .. :L4 } :L7
  .catch Ljava/lang/Exception; { :L5 .. :L6 } :L14
  .catchall { :L8 .. :L9 } :L9
  .catchall { :L10 .. :L11 } :L11
  .catch Ljava/lang/Exception; { :L11 .. :L13 } :L14
  .registers 12
  .line 1
    new-instance v0, Landroid/content/Intent;
    const-string v1, "cn.manstep.phonemirrorBox.AUTO_BOX_WEAK"
    invoke-direct { v0, v1 }, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
  .line 2
    invoke-virtual { p0 }, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    move-result-object v1
    const/4 v2, 0
    invoke-virtual { v1, v0, v2 }, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;
    move-result-object v0
  .line 3
    invoke-virtual { p0 }, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    move-result-object v1
  .line 4
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v3
    if-eqz v3, :L14
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Landroid/content/pm/ResolveInfo;
  .line 5
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;
  .line 6
    invoke-virtual { p0 }, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    move-result-object v4
    invoke-virtual { v4, v3 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v4
    if-nez v4, :L0
  .line 7
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v9, "isOtherConnected: "
    invoke-virtual { v4, v9 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v4, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    const-string v10, "ContextUtil"
    invoke-static { v10, v4 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 8
    invoke-static { }, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
    move-result-object v4
    const/4 v5, 1
    new-array v5, v5, [Ljava/lang/Object;
    aput-object v3, v5, v2
    const-string v3, "content://%s.myfileprovider/box"
    invoke-static { v4, v3, v5 }, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v3
    invoke-static { v3 }, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    move-result-object v4
    const/4 v5, 0
    const/4 v6, 0
    const/4 v7, 0
    const/4 v8, 0
    move-object v3, v1
  :L1
  .line 9
    invoke-virtual/range { v3 .. v8 }, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    move-result-object v3
  :L2
    if-eqz v3, :L12
  :L3
  .line 10
    invoke-interface { v3 }, Landroid/database/Cursor;->moveToFirst()Z
    move-result v4
    if-eqz v4, :L12
    const-string p0, "data"
  .line 11
    invoke-interface { v3, p0 }, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    move-result p0
    invoke-interface { v3, p0 }, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    move-result-object p0
  .line 12
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, v9 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v10, v0 }, Lcn/manstep/phonemirrorBox/util/s;->p(Ljava/lang/String;Ljava/lang/String;)V
    const-string v0, "1"
  .line 13
    invoke-virtual { v0, p0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p0
  :L4
    if-eqz v3, :L6
  :L5
  .line 14
    invoke-interface { v3 }, Landroid/database/Cursor;->close()V
  :L6
    return p0
  :L7
    move-exception p0
  :L8
  .line 15
    throw p0
  :L9
    move-exception p0
    if-eqz v3, :L11
  :L10
  .line 16
    invoke-interface { v3 }, Landroid/database/Cursor;->close()V
  :L11
    throw p0
  :L12
    if-eqz v3, :L0
    invoke-interface { v3 }, Landroid/database/Cursor;->close()V
  :L13
    goto/16 :L0
  :L14
    return v2
.end method

.method public static d(Landroid/content/Context;Ljava/lang/Class;Z)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroid/content/Context;",
      "Ljava/lang/Class<",
      "*>;Z)V"
    }
  .end annotation
  .registers 6
  .line 1
    new-instance v0, Landroid/content/ComponentName;
    invoke-virtual { p0 }, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
    move-result-object v1
    invoke-static/range { v1 .. v1 }, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;
    move-result-object v1
    invoke-direct { v0, v1, p1 }, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
  .line 2
    invoke-virtual { p0 }, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
    move-result-object p0
    invoke-static/range { p0 .. p0 }, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;
    move-result-object p0
    invoke-virtual { p0 }, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    move-result-object p0
  .line 3
    invoke-virtual { p0, v0 }, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I
    move-result p1
    const/4 v1, 1
    const/4 v2, 2
    if-nez p2, :L0
    if-eq p1, v2, :L1
  .line 4
    invoke-virtual { p0, v0, v2, v1 }, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    goto :L1
  :L0
    if-ne p1, v2, :L1
  .line 5
    invoke-virtual { p0, v0, v1, v1 }, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
  :L1
    return-void
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
  .registers 4
  .line 1
    new-instance v0, Landroid/content/Intent;
    invoke-direct { v0 }, Landroid/content/Intent;-><init>()V
  .line 2
    invoke-virtual { v0, p1, p2 }, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    const/high16 p1, 4128
  .line 3
    invoke-virtual { v0, p1 }, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
  .line 4
    invoke-virtual { p0, v0 }, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    return-void
.end method

.method public static f(Landroid/content/Context;Landroid/os/Bundle;)V
  .registers 9
  .line 1
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/util/f;->a(Landroid/content/Context;)Ljava/lang/String;
    move-result-object v0
  .line 2
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "startMainActivity: topName="
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v2, ", context="
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    const-string v2, "ContextUtil"
    invoke-static { v2, v1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 3
    invoke-static { }, Lcn/manstep/phonemirrorBox/q;->g()Lcn/manstep/phonemirrorBox/q;
    move-result-object v1
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/q;->h()Lcn/manstep/phonemirrorBox/MainActivity;
    move-result-object v1
    if-eqz v1, :L0
    invoke-static { }, Lcn/manstep/phonemirrorBox/q;->g()Lcn/manstep/phonemirrorBox/q;
    move-result-object v1
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/q;->h()Lcn/manstep/phonemirrorBox/MainActivity;
    move-result-object v1
    invoke-virtual { v1 }, Landroid/app/Activity;->hasWindowFocus()Z
    move-result v1
    if-eqz v1, :L0
    const-string p0, "startMainActivity: isVisible"
  .line 4
    invoke-static { v2, p0 }, Lcn/manstep/phonemirrorBox/util/s;->p(Ljava/lang/String;Ljava/lang/String;)V
    return-void
  :L0
    const-string v1, "com.hozonauto.avm"
  .line 5
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L1
    return-void
  :L1
  .line 6
    new-instance v0, Landroid/content/Intent;
    const-class v1, Lcn/manstep/phonemirrorBox/MainActivity;
    invoke-direct { v0, p0, v1 }, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    const/high16 v1, 4096
  .line 7
    invoke-virtual { v0, v1 }, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    if-eqz p1, :L2
  .line 8
    invoke-virtual { v0, p1 }, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
  :L2
    const-string p1, "activity"
  .line 9
    invoke-virtual { p0, p1 }, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroid/app/ActivityManager;
    const/16 v1, 20
  .line 10
    invoke-virtual { p1, v1 }, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;
    move-result-object v1
  .line 11
    invoke-interface { v1 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v1
  :L3
    invoke-interface { v1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v3
    if-eqz v3, :L4
    invoke-interface { v1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;
  .line 12
    iget-object v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;
    invoke-virtual { v4 }, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;
    move-result-object v4
  .line 13
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct { v5 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v6, "startMainActivity: "
    invoke-virtual { v5, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v5, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v5 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-static { v2, v5 }, Lcn/manstep/phonemirrorBox/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V
  .line 14
    invoke-virtual { p0 }, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    move-result-object v5
    invoke-virtual { v4, v5 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v4
    if-eqz v4, :L3
    const-string v1, "startMainActivity: moveTaskToFront"
  .line 15
    invoke-static { v2, v1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 16
    iget v1, v3, Landroid/app/ActivityManager$RunningTaskInfo;->id:I
    const/4 v2, 1
    invoke-virtual { p1, v1, v2 }, Landroid/app/ActivityManager;->moveTaskToFront(II)V
  :L4
  .line 17
    invoke-virtual { p0, v0 }, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    return-void
.end method
