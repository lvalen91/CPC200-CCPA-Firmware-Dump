.class public Landroidx/core/app/a;
.super Landroidx/core/content/a;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/core/app/a$f;,
    Landroidx/core/app/a$e;,
    Landroidx/core/app/a$d;,
    Landroidx/core/app/a$c;
  }
.end annotation

.field private static c:Landroidx/core/app/a$d;

.method public static i(Landroid/app/Activity;)V
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 16
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/app/Activity;->finishAffinity()V
    goto :L1
  :L0
  .line 3
    invoke-virtual { p0 }, Landroid/app/Activity;->finish()V
  :L1
    return-void
.end method

.method public static j(Landroid/app/Activity;)V
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/app/Activity;->finishAfterTransition()V
    goto :L1
  :L0
  .line 3
    invoke-virtual { p0 }, Landroid/app/Activity;->finish()V
  :L1
    return-void
.end method

.method public static k(Landroid/app/Activity;)V
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/app/Activity;->postponeEnterTransition()V
  :L0
    return-void
.end method

.method public static l(Landroid/app/Activity;)V
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 28
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/app/Activity;->recreate()V
    goto :L2
  :L0
    const/16 v1, 23
    if-gt v0, v1, :L1
  .line 3
    new-instance v0, Landroid/os/Handler;
    invoke-virtual { p0 }, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;
    move-result-object v1
    invoke-direct { v0, v1 }, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
  .line 4
    new-instance v1, Landroidx/core/app/a$b;
    invoke-direct { v1, p0 }, Landroidx/core/app/a$b;-><init>(Landroid/app/Activity;)V
    invoke-virtual { v0, v1 }, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    goto :L2
  :L1
  .line 5
    invoke-static { p0 }, Landroidx/core/app/c;->i(Landroid/app/Activity;)Z
    move-result v0
    if-nez v0, :L2
  .line 6
    invoke-virtual { p0 }, Landroid/app/Activity;->recreate()V
  :L2
    return-void
.end method

.method public static m(Landroid/app/Activity;[Ljava/lang/String;I)V
  .registers 6
  .line 1
    sget-object v0, Landroidx/core/app/a;->c:Landroidx/core/app/a$d;
    if-eqz v0, :L0
  .line 2
    invoke-interface { v0, p0, p1, p2 }, Landroidx/core/app/a$d;->a(Landroid/app/Activity;[Ljava/lang/String;I)Z
    move-result v0
    if-eqz v0, :L0
    return-void
  :L0
  .line 3
    array-length v0, p1
    const/4 v1, 0
  :L1
    if-ge v1, v0, :L3
    aget-object v2, p1, v1
  .line 4
    invoke-static { v2 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v2
    if-nez v2, :L2
    add-int/lit8 v1, v1, 1
    goto :L1
  :L2
  .line 5
    new-instance p0, Ljava/lang/IllegalArgumentException;
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "Permission request for permissions "
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 6
    invoke-static { p1 }, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p1, " must not contain null or empty values"
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { p0, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p0
  :L3
  .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 23
    if-lt v0, v1, :L5
  .line 8
    instance-of v0, p0, Landroidx/core/app/a$e;
    if-eqz v0, :L4
  .line 9
    move-object v0, p0
    check-cast v0, Landroidx/core/app/a$e;
  .line 10
    invoke-interface { v0, p2 }, Landroidx/core/app/a$e;->validateRequestPermissionsRequestCode(I)V
  :L4
  .line 11
    invoke-virtual { p0, p1, p2 }, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V
    goto :L6
  :L5
  .line 12
    instance-of v0, p0, Landroidx/core/app/a$c;
    if-eqz v0, :L6
  .line 13
    new-instance v0, Landroid/os/Handler;
    invoke-static { }, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
    move-result-object v1
    invoke-direct { v0, v1 }, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
  .line 14
    new-instance v1, Landroidx/core/app/a$a;
    invoke-direct { v1, p1, p0, p2 }, Landroidx/core/app/a$a;-><init>([Ljava/lang/String;Landroid/app/Activity;I)V
    invoke-virtual { v0, v1 }, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
  :L6
    return-void
.end method

.method public static n(Landroid/app/Activity;Landroidx/core/app/h;)V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L2
    if-eqz p1, :L0
  .line 2
    new-instance v0, Landroidx/core/app/a$f;
    invoke-direct { v0, p1 }, Landroidx/core/app/a$f;-><init>(Landroidx/core/app/h;)V
    goto :L1
  :L0
    const/4 v0, 0
  :L1
  .line 3
    invoke-virtual { p0, v0 }, Landroid/app/Activity;->setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V
  :L2
    return-void
.end method

.method public static o(Landroid/app/Activity;Landroidx/core/app/h;)V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L2
    if-eqz p1, :L0
  .line 2
    new-instance v0, Landroidx/core/app/a$f;
    invoke-direct { v0, p1 }, Landroidx/core/app/a$f;-><init>(Landroidx/core/app/h;)V
    goto :L1
  :L0
    const/4 v0, 0
  :L1
  .line 3
    invoke-virtual { p0, v0 }, Landroid/app/Activity;->setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V
  :L2
    return-void
.end method

.method public static p(Landroid/app/Activity;Ljava/lang/String;)Z
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 23
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0, p1 }, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    move-result p0
    return p0
  :L0
    const/4 p0, 0
    return p0
.end method

.method public static q(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
  .registers 6
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 16
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0, p1, p2, p3 }, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    goto :L1
  :L0
  .line 3
    invoke-virtual { p0, p1, p2 }, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
  :L1
    return-void
.end method

.method public static r(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
  .registers 10
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 16
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual/range { p0 .. p7 }, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    goto :L1
  :L0
  .line 3
    invoke-virtual/range { p0 .. p6 }, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
  :L1
    return-void
.end method

.method public static s(Landroid/app/Activity;)V
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/app/Activity;->startPostponedEnterTransition()V
  :L0
    return-void
.end method
